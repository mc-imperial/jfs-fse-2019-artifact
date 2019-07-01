(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_sort_smallest_klee.x86_64/query.0671.smt2
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
 (let (($x17 (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!0)) (fp.isNaN ((_ to_fp 11 53) x_ackermann!1)))))
 (or $x17 (fp.lt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!1)))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!2))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!3))))
(assert
 (let (($x29 (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!4)) (fp.isNaN ((_ to_fp 11 53) x_ackermann!2)))))
 (or $x29 (fp.lt ((_ to_fp 11 53) x_ackermann!4) ((_ to_fp 11 53) x_ackermann!2)))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!4) ((_ to_fp 11 53) x_ackermann!3))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!2) ((_ to_fp 11 53) x_ackermann!5))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!1) ((_ to_fp 11 53) x_ackermann!5))))
(assert
 (let ((?x20 ((_ to_fp 11 53) x_ackermann!2)))
 (let ((?x15 ((_ to_fp 11 53) x_ackermann!1)))
 (fp.gt ?x15 ?x20))))
(assert
 (let (($x42 (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!3)) (fp.isNaN ((_ to_fp 11 53) x_ackermann!5)))))
 (or $x42 (fp.lt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!5)))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!1))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!2))))
(assert
 (not (not (fp.gt ((_ to_fp 11 53) x_ackermann!4) ((_ to_fp 11 53) x_ackermann!0)))))
(check-sat)
(exit)
