(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_synthetic_vanishing_klee_bug.x86_64/query.4.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun x_ackermann!0 () (_ BitVec 32))
(declare-fun y_ackermann!1 () (_ BitVec 32))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) x_ackermann!0))))
(assert
 (not (fp.isNaN ((_ to_fp 8 24) y_ackermann!1))))
(assert
 (let ((?x9 ((_ to_fp 8 24) x_ackermann!0)))
 (let ((?x12 ((_ to_fp 8 24) y_ackermann!1)))
 (let ((?x16 (fp.add roundNearestTiesToEven ?x9 ?x12)))
 (not (fp.eq ?x16 ?x9))))))
(assert
 (let ((?x12 ((_ to_fp 8 24) y_ackermann!1)))
(let ((?x9 ((_ to_fp 8 24) x_ackermann!0)))
(let ((?x16 (fp.add roundNearestTiesToEven ?x9 ?x12)))
(not (not (fp.eq (fp.add roundNearestTiesToEven ?x16 ?x12) ?x16)))))))
(check-sat)
(exit)
