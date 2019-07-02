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
#ifndef JFS_FUZZING_COMMON_LIBFUZZER_OPTIONS_H
#define JFS_FUZZING_COMMON_LIBFUZZER_OPTIONS_H
#include <stdint.h>
#include <string>

namespace jfs {
namespace fuzzingCommon {

// FIXME: This design is broken. Some of these options are used internally and
// will get overwritten and others are public and can be changed. We need
// to separate these two concerns.
struct LibFuzzerOptions {
  // NOTE: `runs` value of `0` means an infinite number of runs.
  size_t runs; // Approximately corresponds to `-runs=<N>` option.
  uint64_t mutationDepth; // Corresponds to `-mutate_depth=<N>`
  bool crossOver;         // Corresponds to `-cross_over` option
  uint64_t maxLength;     // Corresponds to `-max_len=<N>` option (bytes).
  bool useCmp;            // Corresponds to `-use_cmp` option
  bool printFinalStats;   // Corresponds to `-print_final_stats=1`
  bool reduceInputs;      // Corresponds to `-reduce_inputs=1`
  bool defaultMutationsResizeInput; // Corresponds to `default_mutators_resize_input=1`
  bool handleSIGABRT;
  bool handleSIGBUS;
  bool handleSIGFPE;
  bool handleSIGILL;
  bool handleSIGINT;
  bool handleSIGSEGV;
  bool handleSIGTERM;
  bool handleSIGXFSZ;

  std::string targetBinary;
  std::string artifactDir;
  std::string corpusDir;
  std::string jfsRuntimeLogFile;

  // TODO: We should support LibFuzzer jobs/workers. This
  // will require a vector of seeds rather than a single seed
  LibFuzzerOptions();
};
} // namespace fuzzingCommon
} // namespace jfs
#endif
