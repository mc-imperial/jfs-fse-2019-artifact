; RUN: %not %smt2coral-dump %s 2>&1 | %FileCheck %s
; CHECK: CoralPrinterUnsupportedOperation: fp.max
(declare-const a Float32)
(declare-const b Float32)
(assert (fp.eq a (fp.max a b)))
