//===----------------------------------------------------------------------===//
//
//                        JFS - The JIT Fuzzing Solver
//
// Copyright 2018-2019 REDACTED
//
// This file is distributed under the MIT license.
// See LICENSE.txt for details.
//
//===----------------------------------------------------------------------===//
#ifndef JFS_TRANSFORM_DIMACS_OUTPUT_PASS_H
#define JFS_TRANSFORM_DIMACS_OUTPUT_PASS_H
#include "jfs/Core/Query.h"
#include "jfs/Transform/Z3QueryPass.h"

namespace jfs {
namespace transform {
class DIMACSOutputPass : public Z3QueryPass {
public:
  DIMACSOutputPass() {}
  ~DIMACSOutputPass() {}
  bool run(jfs::core::Query& q) override;
  virtual llvm::StringRef getName() override;
};
}
}

#endif
