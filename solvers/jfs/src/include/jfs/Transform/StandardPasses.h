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
#ifndef JFS_TRANSFORM_STANDARD_PASSES_H
#define JFS_TRANSFORM_STANDARD_PASSES_H
#include "jfs/Transform/QueryPassManager.h"

namespace jfs {
namespace transform {
void AddStandardPasses(QueryPassManager& pm);
}
}
#endif
