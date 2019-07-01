(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_sqrt_householder_interval.x86_64/query.7.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_double_ackermann!0 () (_ BitVec 64))
(assert
 (let ((?x8 ((_ to_fp 11 53) symbolic_0_double_ackermann!0)))
 (fp.geq ?x8 ((_ to_fp 11 53) (_ bv4591870180066957722 64)))))
(assert
 (let ((?x8 ((_ to_fp 11 53) symbolic_0_double_ackermann!0)))
 (fp.leq ?x8 ((_ to_fp 11 53) (_ bv4626322717216342016 64)))))
(assert
 (not (fp.isNaN ((_ to_fp 11 53) symbolic_0_double_ackermann!0))))
(assert
 (not (fp.gt ((_ to_fp 11 53) symbolic_0_double_ackermann!0) ((_ to_fp 11 53) (_ bv4607182418800017408 64)))))
(assert
 (let ((?x18 ((_ to_fp 11 53) (_ bv4607182418800017408 64))))
 (let ((?x8 ((_ to_fp 11 53) symbolic_0_double_ackermann!0)))
 (let ((?x27 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ((_ to_fp 11 53) (_ bv4613937818241073152 64))) ?x18)))
 (let ((?x31 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x18 ?x27) ((_ to_fp 11 53) (_ bv13845191154443747328 64)))))
 (let ((?x23 (fp.mul roundNearestTiesToEven ?x18 (fp.mul roundNearestTiesToEven ?x8 ?x18))))
 (let ((?x35 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x23 ?x31) ((_ to_fp 11 53) (_ bv4624633867356078080 64)))))
 (let ((?x39 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x18 ?x35) ((_ to_fp 11 53) (_ bv4593671619917905920 64)))))
 (let ((?x47 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4517329193108106637 64)) (fp.add roundNearestTiesToEven ?x39 ?x39))))
 (let ((?x43 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven ?x39 ?x18) ((_ to_fp 11 53) (_ bv4611686018427387904 64)))))
 (not (fp.gt ?x43 ?x47))))))))))))
(assert
 (let ((?x18 ((_ to_fp 11 53) (_ bv4607182418800017408 64))))
 (let ((?x8 ((_ to_fp 11 53) symbolic_0_double_ackermann!0)))
 (let ((?x27 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ((_ to_fp 11 53) (_ bv4613937818241073152 64))) ?x18)))
 (let ((?x31 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x18 ?x27) ((_ to_fp 11 53) (_ bv13845191154443747328 64)))))
 (let ((?x23 (fp.mul roundNearestTiesToEven ?x18 (fp.mul roundNearestTiesToEven ?x8 ?x18))))
 (let ((?x35 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x23 ?x31) ((_ to_fp 11 53) (_ bv4624633867356078080 64)))))
 (let ((?x39 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x18 ?x35) ((_ to_fp 11 53) (_ bv4593671619917905920 64)))))
 (let ((?x47 (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) (_ bv4517329193108106637 64)) (fp.add roundNearestTiesToEven ?x39 ?x39))))
 (let ((?x43 (fp.mul roundNearestTiesToEven (fp.sub roundNearestTiesToEven ?x39 ?x18) ((_ to_fp 11 53) (_ bv4611686018427387904 64)))))
 (not (fp.lt ?x43 (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) (_ bv9223372036854775808 64)) ?x47)))))))))))))
(assert
 (not false))
(check-sat)
(exit)
