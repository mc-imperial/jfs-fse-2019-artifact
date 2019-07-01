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
#include "jfs/FuzzingCommon/FuzzingSolverOptions.h"

using namespace jfs::core;

namespace jfs {
namespace fuzzingCommon {

FuzzingSolverOptions::FuzzingSolverOptions(
    std::unique_ptr<FreeVariableToBufferAssignmentPassOptions> fvtbapOptions,
    bool debugSaveModel,
    SolverOptions::SolverOptionKind thisKind)
    : SolverOptions(thisKind), fvtbapOptions(std::move(fvtbapOptions)),
      debugSaveModel(debugSaveModel) {}
FuzzingSolverOptions::FuzzingSolverOptions(
    std::unique_ptr<FreeVariableToBufferAssignmentPassOptions> fvtbapOptions,
    bool debugSaveModel)
    : FuzzingSolverOptions(std::move(fvtbapOptions),
                           debugSaveModel,
                           SolverOptions::FUZZING_SOLVER_KIND) {}

FreeVariableToBufferAssignmentPassOptions*
FuzzingSolverOptions::getFreeVariableToBufferAssignmentOptions() const {
  return fvtbapOptions.get();
}

} // namespace fuzzingCommon
} // namespace jfs
