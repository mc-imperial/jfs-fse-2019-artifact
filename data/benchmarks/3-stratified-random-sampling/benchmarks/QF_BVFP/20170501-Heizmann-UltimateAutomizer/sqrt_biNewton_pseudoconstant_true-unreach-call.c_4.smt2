(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by the tool Ultimate Automizer [1,2] which implements 
an automata theoretic approach [3] to software verification.

This SMT script belongs to a set of SMT scripts that was generated by 
applying Ultimate Automizer to benchmarks [4] from the SV-COMP 2017 [5,6].

This script might _not_ contain all SMT commands that are used by 
Ultimate Automizer. In order to satisfy the restrictions of
the SMT-COMP we have to drop e.g., the commands for getting
values (resp. models), unsatisfiable cores and interpolants.

2017-05-01, Matthias Heizmann (heizmann@informatik.uni-freiburg.de)


[1] https://ultimate.informatik.uni-freiburg.de/automizer/
[2] Matthias Heizmann, Yu-Wen Chen, Daniel Dietsch, Marius Greitschus, 
Alexander Nutz, Betim Musa, Claus Schätzle, Christian Schilling, 
Frank Schüssele, Andreas Podelski:
Ultimate Automizer with an On-Demand Construction of Floyd-Hoare 
Automata - (Competition Contribution). TACAS (2) 2017: 394-398
[3] Matthias Heizmann, Jochen Hoenicke, Andreas Podelski: Software Model 
Checking for People Who Love Automata. CAV 2013:36-52
[4] https://github.com/sosy-lab/sv-benchmarks
[5] Dirk Beyer: Software Verification with Validation of Results - 
(Report on SV-COMP 2017). TACAS (2) 2017: 331-349
[6] https://sv-comp.sosy-lab.org/2017/
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)
(declare-fun v_SqrtR_~xn~6_2_const_1850999613 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~xnp1~6_2_const_1579110782 () (_ FloatingPoint 11 53))
(declare-fun v_~_EPS_2_const_559985957 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~lsup~6_2_const_-1813240959 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~cond~6_4_const_-1357616148 () (_ BitVec 32))
(declare-fun v_SqrtR_~Input_2_const_1153083841 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~xn~6_3_const_1850999614 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~hn~7_1_const_1931197805 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~residu~6_2_const_8321497 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~linf~6_2_const_-1234994244 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~cond~6_3_const_-1357616147 () (_ BitVec 32))
(declare-fun v_SqrtR_~i~6_2_const_-1484974409 () (_ BitVec 32))
(declare-fun v_SqrtR_~i~6_3_const_-1484974410 () (_ BitVec 32))
(assert (let ((v_SqrtR_~xn~6_2 v_SqrtR_~xn~6_2_const_1850999613) (v_SqrtR_~xnp1~6_2 v_SqrtR_~xnp1~6_2_const_1579110782) (v_~_EPS_2 v_~_EPS_2_const_559985957) (v_SqrtR_~lsup~6_2 v_SqrtR_~lsup~6_2_const_-1813240959) (v_SqrtR_~cond~6_4 v_SqrtR_~cond~6_4_const_-1357616148) (v_SqrtR_~Input_2 v_SqrtR_~Input_2_const_1153083841) (v_SqrtR_~xn~6_3 v_SqrtR_~xn~6_3_const_1850999614) (v_SqrtR_~hn~7_1 v_SqrtR_~hn~7_1_const_1931197805) (v_SqrtR_~residu~6_2 v_SqrtR_~residu~6_2_const_8321497) (v_SqrtR_~linf~6_2 v_SqrtR_~linf~6_2_const_-1234994244) (v_SqrtR_~cond~6_3 v_SqrtR_~cond~6_3_const_-1357616147) (v_SqrtR_~i~6_2 v_SqrtR_~i~6_2_const_-1484974409) (v_SqrtR_~i~6_3 v_SqrtR_~i~6_3_const_-1484974410)) (and (not (= v_SqrtR_~cond~6_4 (_ bv0 32))) (= v_SqrtR_~hn~7_1 (fp.sub RNE ((_ to_fp 11 53) RNE 1.0) (fp.mul RNE (fp.mul RNE v_SqrtR_~Input_2 v_SqrtR_~xn~6_3) v_SqrtR_~xn~6_3))) (= v_SqrtR_~xnp1~6_2 (fp.add RNE v_SqrtR_~xn~6_3 (fp.div RNE (fp.mul RNE v_SqrtR_~xn~6_3 (fp.add RNE (fp.add RNE (fp.mul RNE ((_ to_fp 11 53) RNE 8.0) v_SqrtR_~hn~7_1) (fp.mul RNE (fp.mul RNE ((_ to_fp 11 53) RNE 6.0) v_SqrtR_~hn~7_1) v_SqrtR_~hn~7_1)) (fp.mul RNE (fp.mul RNE (fp.mul RNE ((_ to_fp 11 53) RNE 5.0) v_SqrtR_~hn~7_1) v_SqrtR_~hn~7_1) v_SqrtR_~hn~7_1))) ((_ to_fp 11 53) RNE 16.0)))) (= v_SqrtR_~residu~6_2 (fp.mul RNE ((_ to_fp 11 53) RNE 2.0) (fp.sub RNE v_SqrtR_~xnp1~6_2 v_SqrtR_~xn~6_3))) (= v_SqrtR_~xn~6_2 v_SqrtR_~xnp1~6_2) (= v_SqrtR_~lsup~6_2 (fp.mul RNE v_~_EPS_2 (fp.add RNE v_SqrtR_~xn~6_2 v_SqrtR_~xnp1~6_2))) (= v_SqrtR_~linf~6_2 (fp.neg v_SqrtR_~lsup~6_2)) (= v_SqrtR_~cond~6_3 (ite (or (fp.gt v_SqrtR_~residu~6_2 v_SqrtR_~lsup~6_2) (fp.lt v_SqrtR_~residu~6_2 v_SqrtR_~linf~6_2)) (_ bv1 32) (_ bv0 32))) (= (bvadd v_SqrtR_~i~6_2 (_ bv4294967295 32)) v_SqrtR_~i~6_3))))
(check-sat)
(exit)
