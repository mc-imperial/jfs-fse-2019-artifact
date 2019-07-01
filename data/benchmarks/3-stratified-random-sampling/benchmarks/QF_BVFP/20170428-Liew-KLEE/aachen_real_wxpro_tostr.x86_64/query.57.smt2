(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |
Generated by: Daniel Liew, Daniel Schemmel, Cristian Cadar, Alastair Donaldson, and Rafael Zähl
Generated on: 2017-4-28
Generator: KLEE
Application: Branch satisfiability check for symbolic execution of C programs
Target solver: Z3 or MathSAT5
Corresponding query: An equisatisfiable query (bitvectors replaced with reads from arrays of bitvectors) is available at QF_ABVFP/20170428-Liew-KLEE/aachen_real_wxpro_tostr.x86_64/query.57.smt2
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)
(declare-fun meters_ackermann!0 () (_ BitVec 64))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (fp.geq ?x8 ((_ to_fp 11 53) (_ bv0 64)))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (fp.leq ?x8 ((_ to_fp 11 53) (_ bv4652007308841189376 64)))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (let ((?x16 (fp.abs ?x8)))
 (let ((?x18 ((_ fp.to_sbv 32) roundTowardZero ?x16)))
 (let ((?x19 ((_ sign_extend 32) ?x18)))
 (let ((?x25 ((_ extract 31 0) (concat (_ bv0 32) ((_ extract 63 32) ?x19)))))
 (let ((?x22 (bvudiv ((_ extract 31 0) ?x19) (_ bv10 32))))
 (not (= (_ bv0 32) (bvor ?x22 ?x25))))))))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (let ((?x16 (fp.abs ?x8)))
 (let ((?x18 ((_ fp.to_sbv 32) roundTowardZero ?x16)))
 (let ((?x19 ((_ sign_extend 32) ?x18)))
 (let ((?x25 ((_ extract 31 0) (concat (_ bv0 32) ((_ extract 63 32) ?x19)))))
 (let ((?x22 (bvudiv ((_ extract 31 0) ?x19) (_ bv10 32))))
 (let ((?x29 (bvudiv ?x22 (_ bv10 32))))
 (not (= (_ bv0 32) (bvor ?x29 ?x25)))))))))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (let ((?x16 (fp.abs ?x8)))
 (let ((?x18 ((_ fp.to_sbv 32) roundTowardZero ?x16)))
 (let ((?x19 ((_ sign_extend 32) ?x18)))
 (let ((?x25 ((_ extract 31 0) (concat (_ bv0 32) ((_ extract 63 32) ?x19)))))
 (= (_ bv0 32) (bvor (bvudiv (bvudiv (bvudiv ((_ extract 31 0) ?x19) (_ bv10 32)) (_ bv10 32)) (_ bv10 32)) ?x25))))))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
 (let ((?x16 (fp.abs ?x8)))
 (let ((?x18 ((_ fp.to_sbv 32) roundTowardZero ?x16)))
 (let ((?x38 (fp.sub roundNearestTiesToEven ?x16 ((_ to_fp 11 53) roundNearestTiesToEven ?x18))))
 (let ((?x44 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x38 ((_ to_fp 11 53) (_ bv4636737291354636288 64))) ((_ to_fp 11 53) (_ bv4633641066610819072 64)))))
 (let ((?x46 ((_ fp.to_sbv 32) roundTowardZero (fp.div roundNearestTiesToEven ?x44 ((_ to_fp 11 53) (_ bv4636737291354636288 64))))))
 (let ((?x47 ((_ sign_extend 32) ?x46)))
 (let ((?x53 (bvor (bvudiv ((_ extract 31 0) ?x47) (_ bv10 32)) ((_ extract 31 0) (concat (_ bv0 32) ((_ extract 63 32) ?x47))))))
 (= (_ bv0 32) ?x53))))))))))
(assert
 (let ((?x8 ((_ to_fp 11 53) meters_ackermann!0)))
(let ((?x16 (fp.abs ?x8)))
(let ((?x18 ((_ fp.to_sbv 32) roundTowardZero ?x16)))
(let ((?x38 (fp.sub roundNearestTiesToEven ?x16 ((_ to_fp 11 53) roundNearestTiesToEven ?x18))))
(let ((?x44 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven ?x38 ((_ to_fp 11 53) (_ bv4636737291354636288 64))) ((_ to_fp 11 53) (_ bv4633641066610819072 64)))))
(let ((?x46 ((_ fp.to_sbv 32) roundTowardZero (fp.div roundNearestTiesToEven ?x44 ((_ to_fp 11 53) (_ bv4636737291354636288 64))))))
(let ((?x47 ((_ sign_extend 32) ?x46)))
(let ((?x48 ((_ extract 31 0) ?x47)))
(not (= (_ bv48 8) ((_ extract 7 0) (bvadd (_ bv48 32) (bvurem ?x48 (_ bv10 32)))))))))))))))
(check-sat)
(exit)
