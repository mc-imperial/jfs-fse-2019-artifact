(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_synthetic_sqrt_klee_bug.x86_64/query.30.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun x_ackermann!0 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!1 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!2 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!3 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!4 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!5 () (_ BitVec 32))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) x_ackermann!0))))
(assert
 (not (fp.lt ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv0 32)))))
(assert
 (not (fp.gt ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv1120403456 32)))))
(assert
 (let ((?x27 ((_ to_fp 8 24) (_ bv869711765 32))))
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
 (not (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x23 ?x8)) ?x27)))))))
(assert
 (let ((?x27 ((_ to_fp 8 24) (_ bv869711765 32))))
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
 (let ((?x12 ((_ to_fp 8 24) (_ bv0 32))))
 (let (($x31 (fp.gt (fp.mul roundNearestTiesToEven ?x23 ?x23) ?x8)))
 (let ((?x37 (ite $x31 ?x12 ?x23)))
 (let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)) ?x37)))
 (let ((?x39 (fp.mul roundNearestTiesToEven ?x38 ?x22)))
 (not (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x39 ?x8)) ?x27))))))))))))
(assert
 (let ((?x27 ((_ to_fp 8 24) (_ bv869711765 32))))
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
 (let ((?x12 ((_ to_fp 8 24) (_ bv0 32))))
 (let (($x31 (fp.gt (fp.mul roundNearestTiesToEven ?x23 ?x23) ?x8)))
 (let ((?x37 (ite $x31 ?x12 ?x23)))
 (let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)) ?x37)))
 (let ((?x39 (fp.mul roundNearestTiesToEven ?x38 ?x22)))
 (let (($x45 (fp.gt (fp.mul roundNearestTiesToEven ?x39 ?x39) ?x8)))
 (let ((?x51 (ite $x45 ?x37 ?x39)))
 (let ((?x35 (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)))
 (let ((?x49 (ite $x45 fresh_to_ieee_bv_!2 ?x35)))
 (let ((?x53 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x49) ?x51) ?x22)))
 (not (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x53 ?x8)) ?x27)))))))))))))))))
(assert
 (let ((?x27 ((_ to_fp 8 24) (_ bv869711765 32))))
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
 (let ((?x12 ((_ to_fp 8 24) (_ bv0 32))))
 (let (($x31 (fp.gt (fp.mul roundNearestTiesToEven ?x23 ?x23) ?x8)))
 (let ((?x37 (ite $x31 ?x12 ?x23)))
 (let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)) ?x37)))
 (let ((?x39 (fp.mul roundNearestTiesToEven ?x38 ?x22)))
 (let (($x45 (fp.gt (fp.mul roundNearestTiesToEven ?x39 ?x39) ?x8)))
 (let ((?x51 (ite $x45 ?x37 ?x39)))
 (let ((?x35 (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)))
 (let ((?x49 (ite $x45 fresh_to_ieee_bv_!2 ?x35)))
 (let ((?x53 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x49) ?x51) ?x22)))
 (let (($x59 (fp.gt (fp.mul roundNearestTiesToEven ?x53 ?x53) ?x8)))
 (let ((?x65 (ite $x59 ?x51 ?x53)))
 (let ((?x66 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x59 fresh_to_ieee_bv_!3 ?x49)) ?x65)))
 (let ((?x67 (fp.mul roundNearestTiesToEven ?x66 ?x22)))
 (not (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x67 ?x8)) ?x27)))))))))))))))))))))
(assert
 (let ((?x27 ((_ to_fp 8 24) (_ bv869711765 32))))
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
 (let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
 (let ((?x12 ((_ to_fp 8 24) (_ bv0 32))))
 (let (($x31 (fp.gt (fp.mul roundNearestTiesToEven ?x23 ?x23) ?x8)))
 (let ((?x37 (ite $x31 ?x12 ?x23)))
 (let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)) ?x37)))
 (let ((?x39 (fp.mul roundNearestTiesToEven ?x38 ?x22)))
 (let (($x45 (fp.gt (fp.mul roundNearestTiesToEven ?x39 ?x39) ?x8)))
 (let ((?x51 (ite $x45 ?x37 ?x39)))
 (let ((?x35 (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)))
 (let ((?x49 (ite $x45 fresh_to_ieee_bv_!2 ?x35)))
 (let ((?x53 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x49) ?x51) ?x22)))
 (let (($x59 (fp.gt (fp.mul roundNearestTiesToEven ?x53 ?x53) ?x8)))
 (let ((?x65 (ite $x59 ?x51 ?x53)))
 (let ((?x66 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x59 fresh_to_ieee_bv_!3 ?x49)) ?x65)))
 (let ((?x67 (fp.mul roundNearestTiesToEven ?x66 ?x22)))
 (let (($x73 (fp.gt (fp.mul roundNearestTiesToEven ?x67 ?x67) ?x8)))
 (let ((?x79 (ite $x73 ?x65 ?x67)))
 (let ((?x63 (ite $x59 fresh_to_ieee_bv_!3 ?x49)))
 (let ((?x77 (ite $x73 fresh_to_ieee_bv_!4 ?x63)))
 (let ((?x81 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x77) ?x79) ?x22)))
 (not (fp.lt (fp.abs (fp.sub roundNearestTiesToEven ?x81 ?x8)) ?x27))))))))))))))))))))))))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
 (= ?x23 ((_ to_fp 8 24) fresh_to_ieee_bv_!1)))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
 (let ((?x12 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
 (let (($x31 (fp.gt (fp.mul roundNearestTiesToEven ?x23 ?x23) ?x8)))
 (let ((?x37 (ite $x31 ?x12 ?x23)))
 (let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)) ?x37)))
 (let ((?x39 (fp.mul roundNearestTiesToEven ?x38 ?x22)))
 (= ?x39 ((_ to_fp 8 24) fresh_to_ieee_bv_!2)))))))))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
 (let ((?x12 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
 (let (($x31 (fp.gt (fp.mul roundNearestTiesToEven ?x23 ?x23) ?x8)))
 (let ((?x37 (ite $x31 ?x12 ?x23)))
 (let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)) ?x37)))
 (let ((?x39 (fp.mul roundNearestTiesToEven ?x38 ?x22)))
 (let (($x45 (fp.gt (fp.mul roundNearestTiesToEven ?x39 ?x39) ?x8)))
 (let ((?x51 (ite $x45 ?x37 ?x39)))
 (let ((?x35 (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)))
 (let ((?x49 (ite $x45 fresh_to_ieee_bv_!2 ?x35)))
 (let ((?x53 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x49) ?x51) ?x22)))
 (= ?x53 ((_ to_fp 8 24) fresh_to_ieee_bv_!3))))))))))))))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
 (let ((?x12 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
 (let (($x31 (fp.gt (fp.mul roundNearestTiesToEven ?x23 ?x23) ?x8)))
 (let ((?x37 (ite $x31 ?x12 ?x23)))
 (let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)) ?x37)))
 (let ((?x39 (fp.mul roundNearestTiesToEven ?x38 ?x22)))
 (let (($x45 (fp.gt (fp.mul roundNearestTiesToEven ?x39 ?x39) ?x8)))
 (let ((?x51 (ite $x45 ?x37 ?x39)))
 (let ((?x35 (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)))
 (let ((?x49 (ite $x45 fresh_to_ieee_bv_!2 ?x35)))
 (let ((?x53 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x49) ?x51) ?x22)))
 (let (($x59 (fp.gt (fp.mul roundNearestTiesToEven ?x53 ?x53) ?x8)))
 (let ((?x65 (ite $x59 ?x51 ?x53)))
 (let ((?x66 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x59 fresh_to_ieee_bv_!3 ?x49)) ?x65)))
 (let ((?x67 (fp.mul roundNearestTiesToEven ?x66 ?x22)))
 (= ?x67 ((_ to_fp 8 24) fresh_to_ieee_bv_!4))))))))))))))))))))
(assert
 (let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
 (let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
 (let ((?x12 ((_ to_fp 8 24) (_ bv0 32))))
 (let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
 (let (($x31 (fp.gt (fp.mul roundNearestTiesToEven ?x23 ?x23) ?x8)))
 (let ((?x37 (ite $x31 ?x12 ?x23)))
 (let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)) ?x37)))
 (let ((?x39 (fp.mul roundNearestTiesToEven ?x38 ?x22)))
 (let (($x45 (fp.gt (fp.mul roundNearestTiesToEven ?x39 ?x39) ?x8)))
 (let ((?x51 (ite $x45 ?x37 ?x39)))
 (let ((?x35 (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)))
 (let ((?x49 (ite $x45 fresh_to_ieee_bv_!2 ?x35)))
 (let ((?x53 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x49) ?x51) ?x22)))
 (let (($x59 (fp.gt (fp.mul roundNearestTiesToEven ?x53 ?x53) ?x8)))
 (let ((?x65 (ite $x59 ?x51 ?x53)))
 (let ((?x66 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x59 fresh_to_ieee_bv_!3 ?x49)) ?x65)))
 (let ((?x67 (fp.mul roundNearestTiesToEven ?x66 ?x22)))
 (let (($x73 (fp.gt (fp.mul roundNearestTiesToEven ?x67 ?x67) ?x8)))
 (let ((?x79 (ite $x73 ?x65 ?x67)))
 (let ((?x63 (ite $x59 fresh_to_ieee_bv_!3 ?x49)))
 (let ((?x77 (ite $x73 fresh_to_ieee_bv_!4 ?x63)))
 (let ((?x81 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x77) ?x79) ?x22)))
 (= ?x81 ((_ to_fp 8 24) fresh_to_ieee_bv_!5)))))))))))))))))))))))))
(assert
 (let ((?x27 ((_ to_fp 8 24) (_ bv869711765 32))))
(let ((?x8 ((_ to_fp 8 24) x_ackermann!0)))
(let ((?x22 ((_ to_fp 8 24) (_ bv1056964608 32))))
(let ((?x23 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ?x8 ((_ to_fp 8 24) (_ bv0 32))) ?x22)))
(let ((?x12 ((_ to_fp 8 24) (_ bv0 32))))
(let (($x31 (fp.gt (fp.mul roundNearestTiesToEven ?x23 ?x23) ?x8)))
(let ((?x37 (ite $x31 ?x12 ?x23)))
(let ((?x38 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)) ?x37)))
(let ((?x39 (fp.mul roundNearestTiesToEven ?x38 ?x22)))
(let (($x45 (fp.gt (fp.mul roundNearestTiesToEven ?x39 ?x39) ?x8)))
(let ((?x51 (ite $x45 ?x37 ?x39)))
(let ((?x35 (ite $x31 fresh_to_ieee_bv_!1 x_ackermann!0)))
(let ((?x49 (ite $x45 fresh_to_ieee_bv_!2 ?x35)))
(let ((?x53 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x49) ?x51) ?x22)))
(let (($x59 (fp.gt (fp.mul roundNearestTiesToEven ?x53 ?x53) ?x8)))
(let ((?x65 (ite $x59 ?x51 ?x53)))
(let ((?x66 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x59 fresh_to_ieee_bv_!3 ?x49)) ?x65)))
(let ((?x67 (fp.mul roundNearestTiesToEven ?x66 ?x22)))
(let (($x73 (fp.gt (fp.mul roundNearestTiesToEven ?x67 ?x67) ?x8)))
(let ((?x79 (ite $x73 ?x65 ?x67)))
(let ((?x63 (ite $x59 fresh_to_ieee_bv_!3 ?x49)))
(let ((?x77 (ite $x73 fresh_to_ieee_bv_!4 ?x63)))
(let ((?x81 (fp.mul roundNearestTiesToEven (fp.add roundNearestTiesToEven ((_ to_fp 8 24) ?x77) ?x79) ?x22)))
(let (($x87 (fp.gt (fp.mul roundNearestTiesToEven ?x81 ?x81) ?x8)))
(let ((?x94 (fp.add roundNearestTiesToEven ((_ to_fp 8 24) (ite $x87 fresh_to_ieee_bv_!5 ?x77)) (ite $x87 ?x79 ?x81))))
(let ((?x96 (fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x94 ?x22) ?x8)))
(not (not (fp.lt (fp.abs ?x96) ?x27))))))))))))))))))))))))))))))
(check-sat)
(exit)
