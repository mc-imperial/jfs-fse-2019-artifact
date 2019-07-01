(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_sort_smallest_klee_bug.x86_64/query.1371.smt2
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
 (let ((?x13 ((_ to_fp 11 53) x_ackermann!0)))
 (let (($x14 (fp.isNaN ?x13)))
 (or (or $x14 (fp.isNaN ((_ to_fp 11 53) x_ackermann!1))) (fp.lt ?x13 ((_ to_fp 11 53) x_ackermann!1))))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!2))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!3))))
(assert
 (let ((?x23 ((_ to_fp 11 53) x_ackermann!3)))
 (fp.isNaN ?x23)))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!2) ((_ to_fp 11 53) x_ackermann!1))))
(assert
 (let ((?x15 ((_ to_fp 11 53) x_ackermann!1)))
 (let ((?x29 ((_ to_fp 11 53) x_ackermann!4)))
 (fp.gt ?x29 ?x15))))
(assert
 (let ((?x31 ((_ to_fp 11 53) x_ackermann!5)))
 (let (($x32 (fp.isNaN ?x31)))
 (or (or $x32 (fp.isNaN ((_ to_fp 11 53) x_ackermann!4))) (fp.lt ?x31 ((_ to_fp 11 53) x_ackermann!4))))))
(assert
 (let ((?x15 ((_ to_fp 11 53) x_ackermann!1)))
 (let ((?x31 ((_ to_fp 11 53) x_ackermann!5)))
 (fp.gt ?x31 ?x15))))
(assert
 (let ((?x31 ((_ to_fp 11 53) x_ackermann!5)))
 (let (($x32 (fp.isNaN ?x31)))
 (let ((?x23 ((_ to_fp 11 53) x_ackermann!3)))
 (let (($x26 (fp.isNaN ?x23)))
 (or (or $x26 $x32) (fp.lt ?x23 ?x31)))))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!1))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!2))))
(assert
 (not (not (fp.isNaN ((_ to_fp 11 53) x_ackermann!0)))))
(check-sat)
(exit)
