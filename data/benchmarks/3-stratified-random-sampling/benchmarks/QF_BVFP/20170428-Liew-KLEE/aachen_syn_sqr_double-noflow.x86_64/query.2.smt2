(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/aachen_syn_sqr_double-noflow.x86_64/query.2.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun f_ackermann!0 () (_ BitVec 64))
(assert
 (not (fp.isNaN ((_ to_fp 11 53) f_ackermann!0))))
(assert
 (let ((?x8 ((_ to_fp 11 53) f_ackermann!0)))
 (let ((?x11 (fp.abs ?x8)))
 (let ((?x15 (fp.mul roundNearestTiesToEven ?x11 ((_ to_fp 11 53) (_ bv4607092346807469998 64)))))
 (not (fp.isNaN ?x15))))))
(assert
 (let ((?x8 ((_ to_fp 11 53) f_ackermann!0)))
 (let ((?x19 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
 (not (fp.isNaN ?x19)))))
(assert
 (let ((?x8 ((_ to_fp 11 53) f_ackermann!0)))
 (let ((?x19 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
 (let ((?x11 (fp.abs ?x8)))
 (let ((?x15 (fp.mul roundNearestTiesToEven ?x11 ((_ to_fp 11 53) (_ bv4607092346807469998 64)))))
 (not (fp.gt ?x15 ?x19)))))))
(assert
 (not (fp.isNaN (fp.abs ((_ to_fp 11 53) f_ackermann!0)))))
(assert
 (let ((?x8 ((_ to_fp 11 53) f_ackermann!0)))
 (let ((?x19 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
 (let ((?x26 (fp.mul roundNearestTiesToEven ?x19 ((_ to_fp 11 53) (_ bv4607092346807469998 64)))))
 (not (fp.isNaN ?x26))))))
(assert
 (let ((?x8 ((_ to_fp 11 53) f_ackermann!0)))
 (let ((?x19 (fp.sqrt roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x8 ?x8))))
 (let ((?x26 (fp.mul roundNearestTiesToEven ?x19 ((_ to_fp 11 53) (_ bv4607092346807469998 64)))))
 (let ((?x11 (fp.abs ?x8)))
 (not (fp.lt ?x11 ?x26)))))))
(assert
 (not false))
(check-sat)
(exit)
