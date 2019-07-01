; RUN: %jfs -z3 %s | %FileCheck %s
(set-info :smt-lib-version 2.5)
(set-logic QF_FPBV)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun x_ackermann!0 () (_ BitVec 32))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) x_ackermann!0))))
(assert
 (not (fp.lt ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv0 32)))))
(assert
 (not (fp.gt ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv1120403456 32)))))
(assert
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
(let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv0 32))) ((_ to_fp 8 24) (_ bv1056964608 32)))))
(let (($x28 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x23 ?x8)) ((_ to_fp 8 24) (_ bv869711765 32)))))
(not $x28)))))

; CHECK: {{^sat$}}
(check-sat)
