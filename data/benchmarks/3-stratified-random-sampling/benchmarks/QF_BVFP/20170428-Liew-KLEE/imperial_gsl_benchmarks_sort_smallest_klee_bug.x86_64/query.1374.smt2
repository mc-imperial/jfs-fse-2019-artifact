(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/imperial_gsl_benchmarks_sort_smallest_klee_bug.x86_64/query.1374.smt2
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
 (or $x14 (fp.lt ?x13 ((_ to_fp 11 53) x_ackermann!1))))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!2))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!3))))
(assert
 (let ((?x13 ((_ to_fp 11 53) x_ackermann!0)))
 (let (($x14 (fp.isNaN ?x13)))
 (let (($x28 (or (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!3)) $x14) (fp.gt ((_ to_fp 11 53) x_ackermann!3) ?x13))))
 (let (($x24 (not $x14)))
 (not (and $x24 $x28)))))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!1) ((_ to_fp 11 53) x_ackermann!4))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!4))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!1))))
(assert
 (let (($x40 (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!2)) (fp.isNaN ((_ to_fp 11 53) x_ackermann!4)))))
 (or $x40 (fp.lt ((_ to_fp 11 53) x_ackermann!2) ((_ to_fp 11 53) x_ackermann!4)))))
(assert
 (not (fp.gt ((_ to_fp 11 53) x_ackermann!2) ((_ to_fp 11 53) x_ackermann!1))))
(assert
 (let ((?x21 ((_ to_fp 11 53) x_ackermann!3)))
 (let ((?x18 ((_ to_fp 11 53) x_ackermann!2)))
 (fp.gt ?x18 ?x21))))
(assert
 (not (fp.isNaN ((_ to_fp 11 53) x_ackermann!1))))
(assert
 (not (fp.lt ((_ to_fp 11 53) x_ackermann!5) ((_ to_fp 11 53) x_ackermann!1))))
(assert
 (not (fp.isNaN ((_ to_fp 11 53) x_ackermann!5))))
(assert
 (let ((?x13 ((_ to_fp 11 53) x_ackermann!0)))
(let (($x14 (fp.isNaN ?x13)))
(not $x14))))
(check-sat)
(exit)
