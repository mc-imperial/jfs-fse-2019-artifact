(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.283.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_2_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!7 () (_ BitVec 32))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.geq ?x15 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.leq ?x15 ?x20))))
(assert
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x32 (fp.sub roundNearestTiesToEven ?x30 ?x31)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x15 (fp.add roundNearestTiesToEven ?x23 ?x24))))
 (or (or (fp.isNaN ?x27) (fp.isNaN ?x32)) (fp.gt ?x27 ?x32))))))))))
(assert
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x27 (fp.sub roundNearestTiesToEven ?x15 (fp.add roundNearestTiesToEven ?x23 ?x24))))
 (or (or (fp.isNaN ?x27) (fp.isNaN ?x31)) (fp.lt ?x27 ?x31))))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.geq ?x41 ?x23))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.leq ?x41 ?x44))))
(assert
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x46 ?x15)))
 (not (fp.isNaN ?x47))))))
(assert
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x30 ?x41)))
 (not (fp.isNaN ?x50))))))
(assert
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x50 (fp.sub roundNearestTiesToEven ?x30 ?x41)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x47 (fp.sub roundNearestTiesToEven ?x46 ?x15)))
 (not (fp.gt ?x47 ?x50)))))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.geq ?x55 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.leq ?x55 ?x20))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x58 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.geq ?x58 ?x23))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x58 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.leq ?x58 ?x44))))
(assert
 (let ((?x58 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x64 (fp.sub roundNearestTiesToEven ?x30 ?x58)))
 (let ((?x41 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x55 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x62 (fp.sub roundNearestTiesToEven ?x55 (fp.sub roundNearestTiesToEven ?x15 ?x41))))
 (or (or (fp.isNaN ?x62) (fp.isNaN ?x64)) (fp.gt ?x62 ?x64))))))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.geq ?x24 ?x23))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.leq ?x24 ?x44))))
(assert
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x30 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x71 (fp.sub roundNearestTiesToEven ?x30 ?x24)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x73 ?x23)))
 (or (fp.isNaN ?x71) (fp.gt ?x74 ?x71)))))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x73 ?x23)))
 (not (fp.isNaN ?x74))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6))))
(assert
 (let ((?x24 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x73 ?x23)))
 (not (fp.lt ?x74 ?x24)))))))
(assert
 (let ((?x23 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x31 ?x23))))
(assert
 (let ((?x44 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x31 ?x44))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.geq ?x46 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x46 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.leq ?x46 ?x20))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.geq ?x73 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x73 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.leq ?x73 ?x20))))
(assert
 (let ((?x58 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
(let ((?x41 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
(let ((?x15 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
(let ((?x55 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
(let ((?x62 (fp.sub roundNearestTiesToEven ?x55 (fp.sub roundNearestTiesToEven ?x15 ?x41))))
(let (($x95 (and (and (not (fp.isNaN ?x62)) (not (fp.isNaN ?x58))) (not (fp.lt ?x62 ?x58)))))
(not $x95))))))))
(check-sat)
(exit)
