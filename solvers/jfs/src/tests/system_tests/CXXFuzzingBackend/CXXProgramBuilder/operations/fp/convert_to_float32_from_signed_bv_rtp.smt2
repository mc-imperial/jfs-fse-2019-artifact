; RUN: %jfs-smt2cxx %s > %t.cpp
; RUN: %cxx-rt-syntax %t.cpp
; RUN: %FileCheck -input-file=%t.cpp %s
(declare-fun a () (_ BitVec 64))
; CHECK: Float<8,24> [[SSA0:[a-z_0-9]+]] = Float<8,24>::convertFromSignedBV<64>(JFS_RM_RTP, a)
; CHECK: bool [[SSA1:[a-z_0-9]+]] = [[SSA0]].isNaN()
; CHECK-NEXT: if ([[SSA1]]) {}
(assert
  (fp.isNaN ((_ to_fp 8 24) RTP a))
)
(check-sat)
