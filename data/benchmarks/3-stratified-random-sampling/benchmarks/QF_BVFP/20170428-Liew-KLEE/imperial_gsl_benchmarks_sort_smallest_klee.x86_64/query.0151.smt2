(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_sort_smallest_klee.x86_64/query.0151.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun x_ackermann!1 () (_ BitVec 64))
(declare-fun x_ackermann!0 () (_ BitVec 64))
(declare-fun x_ackermann!2 () (_ BitVec 64))
(declare-fun x_ackermann!3 () (_ BitVec 64))
(declare-fun x_ackermann!4 () (_ BitVec 64))
(declare-fun x_ackermann!5 () (_ BitVec 64))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!1))))
(assert
 (let ((?x13 ((_ to_fp 11 53) x_ackermann!0)))
 (fp.gt ?x13 ((_ to_fp 11 53) x_ackermann!2))))
(assert
 (not (fp.isNaN ((_ to_fp 11 53) x_ackermann!1))))
(assert
 (not (fp.lt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!1))))
(assert
 (let ((?x24 ((_ to_fp 11 53) x_ackermann!4)))
 (let (($x25 (fp.isNaN ?x24)))
 (or $x25 (fp.lt ?x24 ((_ to_fp 11 53) x_ackermann!1))))))
(assert
 (let ((?x13 ((_ to_fp 11 53) x_ackermann!0)))
 (let ((?x24 ((_ to_fp 11 53) x_ackermann!4)))
 (fp.gt ?x24 ?x13))))
(assert
 (let ((?x24 ((_ to_fp 11 53) x_ackermann!4)))
 (let (($x25 (fp.isNaN ?x24)))
 (or (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!5)) $x25) (fp.lt ((_ to_fp 11 53) x_ackermann!5) ?x24)))))
(assert
 (let ((?x14 ((_ to_fp 11 53) x_ackermann!1)))
 (fp.gt ?x14 ((_ to_fp 11 53) x_ackermann!2))))
(assert
 (not (fp.isNaN ((_ to_fp 11 53) x_ackermann!3))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!5) ((_ to_fp 11 53) x_ackermann!0))))
(check-sat)
(exit)
