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
#include "jfs/FuzzingCommon/LibFuzzerOptions.h"

namespace jfs {
namespace fuzzingCommon {

LibFuzzerOptions::LibFuzzerOptions()
    : runs(-1L), mutationDepth(5), crossOver(true), maxLength(0), useCmp(false),
      printFinalStats(true), reduceInputs(false),
      defaultMutationsResizeInput(true), handleSIGABRT(true),
      handleSIGBUS(true), handleSIGFPE(true), handleSIGILL(true),
      handleSIGINT(true), handleSIGSEGV(true), handleSIGXFSZ(true) {}
} // namespace fuzzingCommon
} // namespace jfs
