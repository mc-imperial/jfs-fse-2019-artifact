(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_synthetic_sqrt_klee.x86_64/query.10.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun x_ackermann!0 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!1 () (_ BitVec 32))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) x_ackermann!0))))
(assert
 (not (fp.lt ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv0 32)))))
(assert
 (not (fp.gt ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv1120403456 32)))))
(assert
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv0 32))) ((_ to_fp 8 24) (_ bv1056964608 32)))))
 (let ((?x24 (fp.mul roundNearestTiesToEven ?x23 ?x23)))
 (let (($x29 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x24 ?x8)) ((_ to_fp 8 24) (_ bv869711765 32)))))
 (not $x29))))))
(assert
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv0 32))) ((_ to_fp 8 24) (_ bv1056964608 32)))))
 (= ?x23 ((_ to_fp 8 24) fresh_to_ieee_bv_!1))))
(assert
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
(let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv0 32))) ((_ to_fp 8 24) (_ bv1056964608 32)))))
(let ((?x12 ((_ to_fp 8 24) (_ bv0 32))))
(let ((?x24 (fp.mul roundNearestTiesToEven ?x23 ?x23)))
(let (($x31 (fp.gt ?x24 ?x8)))
(let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)) (ite $x31 ?x12 ?x23))))
(let ((?x39 (fp.mul roundNearestTiesToEven ?x38 ((_ to_fp 8 24) (_ bv1056964608 32)))))
(let ((?x41 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x39 ?x39) ?x8)))
(not (not (fp.lt (fp.abs ?x41) ((_ to_fp 8 24) (_ bv869711765 32))))))))))))))
(check-sat)
(exit)
