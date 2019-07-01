; RUN: %smt2coral-dump %s | %FileCheck %s
; FIXME: Coral crashes on boolean variables, so there isn't a test for this right now
; CHECK: BOR(BAND(BVAR(ID_0),BVAR(ID_1)),BCONST(FALSE))
(declare-const a Bool)
(declare-const b Bool)
; HACK: Use or to avoid folding of boolean and into separate constraints.
(assert (or (and a b) false))
