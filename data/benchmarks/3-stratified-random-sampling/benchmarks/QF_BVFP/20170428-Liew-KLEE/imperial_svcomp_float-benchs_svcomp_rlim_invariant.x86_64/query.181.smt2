(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.181.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_1_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!5 () (_ BitVec 32))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.geq ?x15 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (fp.leq ?x15 ?x20))))
(assert
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x25 (fp.sub roundNearestTiesToEven ?x23 ?x15)))
 (not (fp.isNaN ?x25))))))
(assert
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x25 (fp.sub roundNearestTiesToEven ?x23 ?x15)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x28 ?x17)))
 (not (fp.gt ?x29 ?x25)))))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x32 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x32 ?x20))))
(assert
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x35 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x37 (fp.sub roundNearestTiesToEven ?x35 ?x36)))
 (not (fp.isNaN ?x37))))))))
(assert
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x40 (fp.sub roundNearestTiesToEven ?x23 ?x32)))
 (not (fp.isNaN ?x40))))))
(assert
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x40 (fp.sub roundNearestTiesToEven ?x23 ?x32)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x35 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (let ((?x37 (fp.sub roundNearestTiesToEven ?x35 ?x36)))
 (not (fp.gt ?x37 ?x40)))))))))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.geq ?x45 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (fp.leq ?x45 ?x20))))
(assert
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x48 (fp.sub roundNearestTiesToEven ?x23 ?x45)))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x36 ?x32)))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x52 (fp.sub roundNearestTiesToEven ?x50 ?x51)))
 (or (fp.isNaN ?x48) (fp.gt ?x52 ?x48)))))))))))))
(assert
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x36 ?x32)))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x52 (fp.sub roundNearestTiesToEven ?x50 ?x51)))
 (not (fp.isNaN ?x52))))))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3))))
(assert
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x36 ?x32)))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (let ((?x52 (fp.sub roundNearestTiesToEven ?x50 ?x51)))
 (not (fp.lt ?x52 ?x45)))))))))))
(assert
 (let ((?x63 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.geq ?x61 ?x63))))
(assert
 (let ((?x66 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (fp.leq ?x61 ?x66))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.geq ?x68 ?x17))))
(assert
 (let ((?x20 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (fp.leq ?x68 ?x20))))
(assert
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
 (let ((?x23 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x74 (fp.sub roundNearestTiesToEven ?x23 ?x68)))
 (let ((?x45 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
 (let ((?x32 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x36 (fp.sub roundNearestTiesToEven ?x17 ?x15)))
 (let ((?x51 (fp.sub roundNearestTiesToEven ?x36 ?x32)))
 (let ((?x61 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
 (let ((?x72 (fp.sub roundNearestTiesToEven ?x61 (fp.add roundNearestTiesToEven ?x51 ?x45))))
 (or (or (fp.isNaN ?x72) (fp.isNaN ?x74)) (fp.gt ?x72 ?x74))))))))))))))
(assert
 (let ((?x63 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.geq ?x28 ?x63))))
(assert
 (let ((?x66 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (fp.leq ?x28 ?x66))))
(assert
 (let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 ((_ to_fp 8 24) symbolic_0_float_ackermann!7)))
 (let ((?x29 (fp.sub roundNearestTiesToEven ?x28 ?x17)))
 (not (fp.isNaN ?x29))))))
(assert
 (let ((?x63 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x35 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.geq ?x35 ?x63))))
(assert
 (let ((?x66 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x35 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))
 (fp.leq ?x35 ?x66))))
(assert
 (let ((?x63 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.geq ?x50 ?x63))))
(assert
 (let ((?x66 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)))
 (fp.leq ?x50 ?x66))))
(assert
 (let ((?x68 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
(let ((?x45 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))
(let ((?x32 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
(let ((?x15 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
(let ((?x17 ((_ to_fp 8 24) (_ bv0 32))))
(let ((?x36 (fp.sub roundNearestTiesToEven ?x17 ?x15)))
(let ((?x51 (fp.sub roundNearestTiesToEven ?x36 ?x32)))
(let ((?x61 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)))
(let ((?x72 (fp.sub roundNearestTiesToEven ?x61 (fp.add roundNearestTiesToEven ?x51 ?x45))))
(let (($x93 (and (and (not (fp.isNaN ?x72)) (not (fp.isNaN ?x68))) (not (fp.lt ?x72 ?x68)))))
(not $x93))))))))))))
(check-sat)
(exit)
