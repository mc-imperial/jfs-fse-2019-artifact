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
(declare-fun c_main_~x0~4 () (_ FloatingPoint 11 53))
(declare-fun c_main_~x0~4_primed () (_ FloatingPoint 11 53))
(declare-fun c_main_~x1~4 () (_ FloatingPoint 11 53))
(declare-fun c_main_~x1~4_primed () (_ FloatingPoint 11 53))
(declare-fun c_main_~x2~4_primed () (_ FloatingPoint 11 53))
(declare-fun c_main_~i~4 () (_ BitVec 32))
(assert (and (bvslt c_main_~i~4 (_ bv100 32)) (= c_main_~x2~4_primed (fp.sub RNE ((_ to_fp 11 53) RNE 111.0) (fp.div RNE (fp.sub RNE ((_ to_fp 11 53) RNE 1130.0) (fp.div RNE ((_ to_fp 11 53) RNE 3000.0) c_main_~x0~4)) c_main_~x1~4))) (= c_main_~x0~4_primed c_main_~x1~4) (= c_main_~x1~4_primed c_main_~x2~4_primed)))
(assert (= (bvadd c_main_~i~4 (_ bv4294967292 32)) (_ bv0 32)))
(check-sat)
(exit)
