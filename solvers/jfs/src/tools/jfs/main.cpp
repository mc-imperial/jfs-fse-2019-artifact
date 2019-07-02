//===----------------------------------------------------------------------===//
//
//                        JFS - The JIT Fuzzing Solver
//
// Copyright 2017-2019 REDACTED
//
// This file is distributed under the MIT license.
// See LICENSE.txt for details.
//
//===----------------------------------------------------------------------===//
#include "jfs/CXXFuzzingBackend/CXXFuzzingSolver.h"
#include "jfs/CXXFuzzingBackend/CXXFuzzingSolverOptions.h"
#include "jfs/CXXFuzzingBackend/ClangOptions.h"
#include "jfs/CXXFuzzingBackend/CmdLine/CXXProgramBuilderOptionsBuilder.h"
#include "jfs/CXXFuzzingBackend/CmdLine/ClangOptionsBuilder.h"
#include "jfs/CXXFuzzingBackend/CmdLine/CommandLineCategory.h"
#include "jfs/Core/IfVerbose.h"
#include "jfs/Core/JFSContext.h"
#include "jfs/Core/JFSTimerMacros.h"
#include "jfs/Core/Model.h"
#include "jfs/Core/ModelValidator.h"
#include "jfs/Core/SMTLIB2Parser.h"
#include "jfs/Core/ScopedJFSContextErrorHandler.h"
#include "jfs/Core/ToolErrorHandler.h"
#include "jfs/FuzzingCommon/CmdLine/FreeVariableToBufferAssignmentPassOptionsBuilder.h"
#include "jfs/FuzzingCommon/CmdLine/LibFuzzerOptionsBuilder.h"
#include "jfs/FuzzingCommon/CmdLine/SeedManagerOptionsBuilder.h"
#include "jfs/FuzzingCommon/DummyFuzzingSolver.h"
#include "jfs/Support/ErrorMessages.h"
#include "jfs/Support/ScopedTimer.h"
#include "jfs/Support/StatisticsManager.h"
#include "jfs/Support/version.h"
#include "jfs/Transform/QueryPassManager.h"
#include "jfs/Transform/StandardPasses.h"
#include "jfs/Z3Backend/Z3Solver.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/Signals.h"
#include "llvm/Support/raw_ostream.h"
#include <string>

using namespace jfs;
using namespace jfs::core;
using namespace jfs::transform;

namespace {
llvm::cl::opt<std::string> InputFilename(llvm::cl::Positional,
                                         llvm::cl::desc("<input file>"),
                                         llvm::cl::init("-"));
llvm::cl::opt<unsigned> Verbosity("v", llvm::cl::desc("Verbosity level"),
                                  llvm::cl::init(0),
                                  llvm::cl::ZeroOrMore);

llvm::cl::opt<unsigned>
    MaxTime("max-time", llvm::cl::desc("Max allowed solver time (seconds). "
                                       "Default is 0 which means no maximum"),
            llvm::cl::init(0));

llvm::cl::opt<std::string> OutputDirectory(
    "output-dir", llvm::cl::init(""),
    llvm::cl::desc("Output directory. If not set automatically create one"));

llvm::cl::opt<bool>
    KeepOutputDirectory("keep-output-dir", llvm::cl::init(false),
                        llvm::cl::desc("Keep output directory (default false)"),
                        llvm::cl::ZeroOrMore);

llvm::cl::opt<std::string>
    StatsFilename("stats-file",
                  llvm::cl::desc("Location to write stats file. `-` writes to "
                                 "stdout. (default don't write file)"),
                  llvm::cl::init(""));

// FIXME: Remove this when we provide a cleaner way to specify passes.
llvm::cl::opt<bool> DisableStandardPasses(
    "disable-standard-passes", llvm::cl::init(false),
    llvm::cl::desc("Do not run standard passes (default false)"),
    llvm::cl::Hidden);

// FIXME: llvm::cl::opt<uint64_t> doesn't work it acts like a bool
// option.
llvm::cl::opt<unsigned long long>
    Seed("seed", llvm::cl::init(1),
         llvm::cl::desc("Seed for random number generator (default: 1)"));

enum RedirectOutputTy {
  WHEN_NOT_VERBOSE, // Legacy
  REDIRECT,
  NO_REDIRECT,
};

// FIXME: These don't really belong here
llvm::cl::opt<RedirectOutputTy> ClangOutputRedirect(
    "redirect-clang-output",
    llvm::cl::values(
        clEnumValN(WHEN_NOT_VERBOSE, "nv",
                   "Redirect when not in verbose output mode (default)"),
        clEnumValN(REDIRECT, "1", "Redirect Clang output"),
        clEnumValN(NO_REDIRECT, "0", "Do not redirect Clang output")),
    llvm::cl::init(WHEN_NOT_VERBOSE),
    llvm::cl::cat(jfs::cxxfb::cl::CommandLineCategory));
llvm::cl::opt<RedirectOutputTy> LibFuzzerOutputRedirect(
    "redirect-libfuzzer-output",
    llvm::cl::values(
        clEnumValN(WHEN_NOT_VERBOSE, "nv",
                   "Redirect when not in verbose output mode (default)"),
        clEnumValN(REDIRECT, "1", "Redirect LibFuzzer output"),
        clEnumValN(NO_REDIRECT, "0", "Do not redirect LibFuzzer output")),
    llvm::cl::init(WHEN_NOT_VERBOSE),
    llvm::cl::cat(jfs::cxxfb::cl::CommandLineCategory));

enum BackendTy {
  DUMMY_FUZZING_SOLVER,
  Z3_SOLVER,
  CXX_FUZZING_SOLVER,
};

llvm::cl::opt<BackendTy> SolverBackend(
    llvm::cl::desc("Solver backend"),
    llvm::cl::values(clEnumValN(DUMMY_FUZZING_SOLVER, "dummy", "dummy solver"),
                     clEnumValN(Z3_SOLVER, "z3", "Z3 backend"),
                     clEnumValN(CXX_FUZZING_SOLVER, "cxx",
                                "CXX fuzzing backend (default)")),
    llvm::cl::init(CXX_FUZZING_SOLVER));

llvm::cl::opt<bool>
    GetModel("get-model", llvm::cl::init(false),
             llvm::cl::desc("If sat report the found model (default false)"));

llvm::cl::opt<bool> ValidateModel(
    "validate-model", llvm::cl::init(false),
    llvm::cl::desc(
        "Validate model if one is found (default false). Implies -get-model"),
    llvm::cl::ZeroOrMore);

// This is a hidden option meant for testing the model saving functionality by
// ensuring that loading and saving models round trips as expected.
llvm::cl::opt<bool>
    DebugSaveModel("debug-save-model", llvm::cl::init(false),
                   llvm::cl::desc("Save model to disk if one is found (default "
                                  "false). Implies -get-model"),
                   llvm::cl::Hidden);
} // namespace

bool shouldRequestModel() {
  return GetModel || ValidateModel || DebugSaveModel;
}

void printVersion(llvm::raw_ostream& os) {
  os << support::getVersionString() << "\n";
  os << "\n";
  llvm::cl::PrintVersionMessage();
  return;
}

std::unique_ptr<jfs::fuzzingCommon::WorkingDirectoryManager>
makeWorkingDirectory(JFSContext& ctx) {
  if (OutputDirectory.size() > 0) {
    // Use user specified path for working directory
    return jfs::fuzzingCommon::WorkingDirectoryManager::makeAtPath(
        OutputDirectory, ctx, !KeepOutputDirectory);
  }
  // Use the current working directory as the base directory
  // and use as a prefix the name of the query.
  llvm::SmallVector<char, 256> currentDir;
  if (auto ec = llvm::sys::fs::current_path(currentDir)) {
    ctx.getErrorStream()
        << "(error failed to get current working directory because "
        << ec.message() << ")\n";
    exit(1);
  }
  llvm::StringRef currentDirAsStringRef(currentDir.data(), currentDir.size());
  llvm::StringRef prefix;
  if (InputFilename == "-") {
    prefix = "stdin";
  } else {
    // Not on standard input so get the name
    prefix = llvm::sys::path::filename(InputFilename);
  }
  return jfs::fuzzingCommon::WorkingDirectoryManager::makeInDirectory(
      /*directory=*/currentDirAsStringRef, /*prefix=*/prefix, ctx,
      !KeepOutputDirectory);
}

bool shouldRedirectOutput(RedirectOutputTy rot, JFSContext& ctx) {
  switch (rot) {
  case WHEN_NOT_VERBOSE: {
    if (ctx.getVerbosity() > 0) {
      return false;
    }
    return true;
  }
  case REDIRECT:
    return true;
  case NO_REDIRECT:
    return false;
  default:
    llvm_unreachable("Unhandled RedirectOutputTy");
  }
}

std::unique_ptr<Solver>
makeSolver(JFSContext& ctx,
           std::unique_ptr<jfs::fuzzingCommon::WorkingDirectoryManager> wdm,
           llvm::StringRef pathToExecutable) {
  std::unique_ptr<Solver> solver;
  switch (SolverBackend) {
  case DUMMY_FUZZING_SOLVER: {
    std::unique_ptr<SolverOptions> solverOptions(new SolverOptions());
    solver.reset(new jfs::fuzzingCommon::DummyFuzzingSolver(
        std::move(solverOptions), std::move(wdm), ctx));
    break;
  }
  case Z3_SOLVER: {
    std::unique_ptr<SolverOptions> solverOptions(new SolverOptions());
    solver.reset(new jfs::z3Backend::Z3Solver(std::move(solverOptions), ctx));
    break;
  }
  case CXX_FUZZING_SOLVER: {
    // Tell ClangOptions to try and infer all paths
    auto clangOptions =
        jfs::cxxfb::cl::buildClangOptionsFromCmdLine(pathToExecutable);
    IF_VERB(ctx, clangOptions->print(ctx.getDebugStream()));

    auto seedManagerOpts =
        jfs::fuzzingCommon::cl::buildSeedManagerOptionsFromCmdLine();

    auto libFuzzerOptions =
        jfs::fuzzingCommon::cl::buildLibFuzzerOptionsFromCmdLine();

    auto cxxProgramBuilderOptions =
        jfs::cxxfb::cl::buildCXXProgramBuilderOptionsFromCmdLine();

    auto freeVariableToBufferAssignmentPassOptions =
        jfs::fuzzingCommon::cl::buildFVTBAPOptionsFromCmdLine();

    std::unique_ptr<jfs::cxxfb::CXXFuzzingSolverOptions> solverOptions(
        new jfs::cxxfb::CXXFuzzingSolverOptions(
            std::move(freeVariableToBufferAssignmentPassOptions),
            std::move(clangOptions), std::move(libFuzzerOptions),
            std::move(cxxProgramBuilderOptions), std::move(seedManagerOpts),
            DebugSaveModel));
    // Decide if the clang/LibFuzzer stdout/stderr should be redirected
    solverOptions->redirectClangOutput =
        shouldRedirectOutput(ClangOutputRedirect, ctx);
    solverOptions->redirectLibFuzzerOutput =
        shouldRedirectOutput(LibFuzzerOutputRedirect, ctx);

    solver.reset(new jfs::cxxfb::CXXFuzzingSolver(std::move(solverOptions),
                                                  std::move(wdm), ctx));
    break;
  }
  default:
    llvm_unreachable("unknown solver backend");
  }
  return solver;
}

std::function<void(void)> cancelFn;

void handleInterrupt() {
  if (cancelFn)
    cancelFn();
}

int main(int argc, char** argv) {
  llvm::cl::SetVersionPrinter(printVersion);
  llvm::cl::ParseCommandLineOptions(argc, argv);

  // Create context
  JFSContextConfig ctxCfg;
  ctxCfg.verbosity = Verbosity;
  ctxCfg.gathericStatistics = (StatsFilename != "");
  ctxCfg.seed = Seed;

  JFSContext ctx(ctxCfg);
  ToolErrorHandler toolHandler(/*ignoreCanceled*/ true);
  ScopedJFSContextErrorHandler errorHandler(ctx, &toolHandler);

  std::unique_ptr<llvm::raw_fd_ostream> sfStorage;
  llvm::raw_ostream* sf = nullptr;
  if (StatsFilename != "") {
    // Open stats file early so we fail early if it can't be opened
    std::error_code ec;
    if (StatsFilename == "-") {
      // We have to handle stdout specially. We use `outs()` which means
      // we can't also create a separate llvm::raw_fd_ostream() otherwise
      // we'll close the file twice.
      sf = &(llvm::outs());
    } else {
      sfStorage.reset(
          new llvm::raw_fd_ostream(StatsFilename, ec, llvm::sys::fs::F_Excl));
      if (ec) {
        ctx.getErrorStream()
            << jfs::support::getMessageForFailedOpenFileForWriting(
                   StatsFilename, ec);
        return 1;
      }
      sf = sfStorage.get();
    }
  }

  // Create parser
  SMTLIB2Parser parser(ctx);

  // Create pass manager
  QueryPassManager pm;

  // Create working directory and solver
  std::string pathToExecutable = llvm::sys::fs::getMainExecutable(
      argv[0], reinterpret_cast<void*>(reinterpret_cast<intptr_t>(main)));
  std::unique_ptr<Solver> solver(
      makeSolver(ctx, makeWorkingDirectory(ctx), pathToExecutable));

  // Now set up cancel/interrupt handlers. We do this now so that all the
  // objects we need to interact with at cancellation time can be captured in
  // lambda.
  std::atomic<bool> parsingDone(false);
  cancelFn = [&parsingDone, &solver, &pm, &ctx]() {
    // Actions to perform if cancellation is requested
    IF_VERB(ctx, ctx.getDebugStream() << "(cancelling)\n");
    if (!parsingDone) {
      // HACK: We can't interrupt parsing so we have to just
      // do a best effort here and try to exit cleanly.
      // FIXME: We need to clean up the empty working directory.
      llvm::outs() << "unknown\n";
      exit(0);
    }
    pm.cancel();
    solver->cancel();
  };

  // Setup interrupt handler. This basically just calls
  // cancelFn.
  llvm::sys::SetInterruptFunction(handleInterrupt);

  // Apply timeout
  jfs::support::ScopedTimer timer(MaxTime, [&ctx]() {
    IF_VERB(ctx, ctx.getDebugStream() << "(timeout)\n");
    cancelFn();
  });

  // Parse query
  std::shared_ptr<Query> query;
  IF_VERB(ctx, ctx.getDebugStream() << "(Parser starting)\n");
  {
    JFS_SM_TIMER(parse_query, ctx);
    auto bufferOrError = llvm::MemoryBuffer::getFileOrSTDIN(InputFilename);
    if (auto error = bufferOrError.getError()) {
      ctx.getErrorStream() << jfs::support::getMessageForFailedOpenFileOrSTDIN(
          InputFilename, error);
      return 1;
    }
    auto buffer(std::move(bufferOrError.get()));
    // NOTE: the ToolErrorHandler will deal with parsing errors.
    query = parser.parseMemoryBuffer(std::move(buffer));
  }
  parsingDone = true;
  IF_VERB(ctx, ctx.getDebugStream() << "(Parser finished)\n");
  std::unique_ptr<Query> originalQuery;
  if (ValidateModel) {
    // When we perform model validation we should do so with respect
    // to the original query. The query gets modified in place by the
    // passes so we have to make a copy.
    originalQuery.reset(new Query(*query));
  }
  if (Verbosity > 10)
    ctx.getDebugStream() << *query;

  // FIXME: We need a better way to control this on the command line, like
  // we can do with `jfs-opt`.
  // Run standard transformations
  if (!DisableStandardPasses) {
    AddStandardPasses(pm);
    pm.run(*query);
    if (Verbosity > 10)
      ctx.getDebugStream() << *query;
  }

  if (Verbosity > 0)
    ctx.getDebugStream() << "(using solver \"" << solver->getName() << "\")\n";

  int toolExitCode = 0;
  auto response = solver->solve(*query, /*produceModel=*/shouldRequestModel());
  llvm::outs() << SolverResponse::getSatString(response->sat) << "\n";
  if (Verbosity > 0) {
    ctx.getDebugStream() << "(" << solver->getName() << " responded with "
                         << SolverResponse::getSatString(response->sat)
                         << ")\n";
  }

  if (response->sat == SolverResponse::SAT && shouldRequestModel()) {
    // Print the found model
    auto model = response->getModel();
    if (model) {
      // Convert the model if necessary so it satifies the constraints
      // originally given.
      bool convertModelSuccess = pm.convertModel(model);
      if (!convertModelSuccess) {
        ctx.raiseFatalError("Failed to convert model");
      }
      ModelPrintOptions mpo;
      // Sort the declarations so they are listed in a deterministic order.
      mpo.sortDecls = true;
      llvm::outs() << model->getSMTLIBString(&mpo) << "\n";

      // Validate model if requested
      if (ValidateModel) {
        assert(originalQuery.get() != nullptr);
        ModelValidator validator;
        ModelValidationOptions mvo;
        mvo.warnOnVariablesMissingAssignment = true;
        validator.validate(*originalQuery, model, &mvo);
        if (validator.getNumberOfFailures() > 0) {
          ctx.getErrorStream() << "(error model validation failed:\n"
                               << validator.toStr() << "\n)";
          toolExitCode = 1;
        } else {
          IF_VERB(ctx, ctx.getDebugStream()
                           << "(model validation succeeded)\n");
        }
      }
    } else {
      // Don't bail out here because we may want to still record stats.
      ctx.getErrorStream() << "(error Failed to get model)\n";
      toolExitCode = 1;
    }
  }

  // Write statistics out
  if (StatsFilename != "") {
    assert(sf != nullptr);
    if (Verbosity > 0) {
      ctx.getDebugStream() << "(writing stats to \"" << StatsFilename
                           << "\")\n";
    }
    ctx.getStats()->printYAML(*sf);
    sf->flush();
  }
  return toolExitCode;
}
