(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_svcomp_float-benchs_svcomp_rlim_invariant.x86_64/query.327.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.geq ?x17 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (fp.leq ?x17 ?x22))))
(assert
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x36 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x36 ?x37)))
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 (fp.add roundNearestTiesToEven ?x25 ?x26)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x29)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x33 (fp.sub roundNearestTiesToEven ?x17 (fp.sub roundNearestTiesToEven ?x30 ?x31))))
 (or (or (fp.isNaN ?x33) (fp.isNaN ?x38)) (fp.gt ?x33 ?x38))))))))))))))
(assert
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 (fp.add roundNearestTiesToEven ?x25 ?x26)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x29)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x33 (fp.sub roundNearestTiesToEven ?x17 (fp.sub roundNearestTiesToEven ?x30 ?x31))))
 (or (or (fp.isNaN ?x33) (fp.isNaN ?x37)) (fp.lt ?x33 ?x37))))))))))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.geq ?x47 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (fp.leq ?x47 ?x22))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.geq ?x50 ?x25))))
(assert
 (let ((?x53 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (fp.leq ?x50 ?x53))))
(assert
 (let ((?x50 ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
 (let ((?x36 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x57 (fp.sub roundNearestTiesToEven ?x36 ?x50)))
 (let ((?x17 ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
 (let ((?x47 ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)))
 (let ((?x55 (fp.sub roundNearestTiesToEven ?x47 ?x17)))
 (or (or (fp.isNaN ?x55) (fp.isNaN ?x57)) (fp.gt ?x55 ?x57)))))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.geq ?x26 ?x25))))
(assert
 (let ((?x53 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (fp.leq ?x26 ?x53))))
(assert
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x36 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x64 (fp.sub roundNearestTiesToEven ?x36 ?x26)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x66 ?x25)))
 (or (fp.isNaN ?x64) (fp.gt ?x67 ?x64)))))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x66 ?x25)))
 (not (fp.isNaN ?x67))))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7))))
(assert
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (let ((?x67 (fp.sub roundNearestTiesToEven ?x66 ?x25)))
 (not (fp.lt ?x67 ?x26)))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.geq ?x29 ?x25))))
(assert
 (let ((?x53 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (fp.leq ?x29 ?x53))))
(assert
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 (fp.add roundNearestTiesToEven ?x25 ?x26)))
 (let ((?x78 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x79 (fp.sub roundNearestTiesToEven ?x78 ?x28)))
 (not (fp.isNaN ?x79))))))))
(assert
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x36 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x82 (fp.sub roundNearestTiesToEven ?x36 ?x29)))
 (not (fp.isNaN ?x82))))))
(assert
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x36 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x82 (fp.sub roundNearestTiesToEven ?x36 ?x29)))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 (fp.add roundNearestTiesToEven ?x25 ?x26)))
 (let ((?x78 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (let ((?x79 (fp.sub roundNearestTiesToEven ?x78 ?x28)))
 (not (fp.gt ?x79 ?x82)))))))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.geq ?x31 ?x25))))
(assert
 (let ((?x53 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (fp.leq ?x31 ?x53))))
(assert
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 (fp.add roundNearestTiesToEven ?x25 ?x26)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x29)))
 (let ((?x89 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x90 (fp.sub roundNearestTiesToEven ?x89 ?x30)))
 (not (fp.isNaN ?x90))))))))))
(assert
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x36 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x93 (fp.sub roundNearestTiesToEven ?x36 ?x31)))
 (not (fp.isNaN ?x93))))))
(assert
 (let ((?x31 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
 (let ((?x36 ((_ to_fp 8 24) (_ bv2147483648 32))))
 (let ((?x93 (fp.sub roundNearestTiesToEven ?x36 ?x31)))
 (let ((?x29 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
 (let ((?x26 ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x28 (fp.add roundNearestTiesToEven ?x25 ?x26)))
 (let ((?x30 (fp.sub roundNearestTiesToEven ?x28 ?x29)))
 (let ((?x89 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (let ((?x90 (fp.sub roundNearestTiesToEven ?x89 ?x30)))
 (not (fp.gt ?x90 ?x93)))))))))))))
(assert
 (let ((?x25 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.geq ?x37 ?x25))))
(assert
 (let ((?x53 ((_ to_fp 8 24) (_ bv1098907648 32))))
 (let ((?x37 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
 (fp.leq ?x37 ?x53))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.geq ?x66 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x66 ((_ to_fp 8 24) symbolic_0_float_ackermann!8)))
 (fp.leq ?x66 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x78 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.geq ?x78 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x78 ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
 (fp.leq ?x78 ?x22))))
(assert
 (let ((?x19 ((_ to_fp 8 24) (_ bv3271557120 32))))
 (let ((?x89 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.geq ?x89 ?x19))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1124073472 32))))
 (let ((?x89 ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
 (fp.leq ?x89 ?x22))))
(assert
 (not false))
(check-sat)
(exit)
