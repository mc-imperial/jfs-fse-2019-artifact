(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/aachen_syn_sqr_float-noflow.x86_64/query.3.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun f_ackermann!0 () (_ BitVec 32))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) f_ackermann!0))))
(assert
 (let ((?x8 ((_ to_fp 8 24) f_ackermann!0)))
 (let ((?x11 (fp.abs ?x8)))
 (let ((?x13 ((_ to_fp 11 53) roundNearestTiesToEven ?x11)))
 (let ((?x16 (fp.mul roundNearestTiesToEven ?x13 ((_ to_fp 11 53) (_ bv4607092346807469998 64)))))
 (not (fp.isNaN ?x16)))))))
(assert
 (let ((?x8 ((_ to_fp 8 24) f_ackermann!0)))
 (let ((?x20 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
 (let ((?x21 ((_ to_fp 11 53) roundNearestTiesToEven ?x20)))
 (not (fp.isNaN ?x21))))))
(assert
 (let ((?x8 ((_ to_fp 8 24) f_ackermann!0)))
 (let ((?x20 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
 (let ((?x21 ((_ to_fp 11 53) roundNearestTiesToEven ?x20)))
 (let ((?x11 (fp.abs ?x8)))
 (let ((?x13 ((_ to_fp 11 53) roundNearestTiesToEven ?x11)))
 (let ((?x16 (fp.mul roundNearestTiesToEven ?x13 ((_ to_fp 11 53) (_ bv4607092346807469998 64)))))
 (not (fp.gt ?x16 ?x21)))))))))
(assert
 (let ((?x8 ((_ to_fp 8 24) f_ackermann!0)))
 (let ((?x11 (fp.abs ?x8)))
 (let ((?x13 ((_ to_fp 11 53) roundNearestTiesToEven ?x11)))
 (not (fp.isNaN ?x13))))))
(assert
 (let ((?x8 ((_ to_fp 8 24) f_ackermann!0)))
 (let ((?x20 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
 (let ((?x21 ((_ to_fp 11 53) roundNearestTiesToEven ?x20)))
 (let ((?x28 (fp.mul roundNearestTiesToEven ?x21 ((_ to_fp 11 53) (_ bv4607092346807469998 64)))))
 (not (fp.isNaN ?x28)))))))
(assert
 (let ((?x8 ((_ to_fp 8 24) f_ackermann!0)))
 (let ((?x20 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
 (let ((?x21 ((_ to_fp 11 53) roundNearestTiesToEven ?x20)))
 (let ((?x28 (fp.mul roundNearestTiesToEven ?x21 ((_ to_fp 11 53) (_ bv4607092346807469998 64)))))
 (let ((?x11 (fp.abs ?x8)))
 (let ((?x13 ((_ to_fp 11 53) roundNearestTiesToEven ?x11)))
 (not (fp.lt ?x13 ?x28)))))))))
(assert
 (let ((?x8 ((_ to_fp 8 24) f_ackermann!0)))
(let ((?x20 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
(let ((?x11 (fp.abs ?x8)))
(not (fp.eq ?x11 ?x20))))))
(check-sat)
(exit)