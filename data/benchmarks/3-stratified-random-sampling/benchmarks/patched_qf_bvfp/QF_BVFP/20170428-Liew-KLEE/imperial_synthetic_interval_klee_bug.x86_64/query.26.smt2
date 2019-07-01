; Start decls (1)
(declare-fun initial_ackermann!0 () (_ BitVec 32))
; End decls
; Start constraints (6)
(assert (not (fp.isNaN ((_ to_fp 8 24) initial_ackermann!0))))
(assert (let ((a!1 (ite (fp.isInfinite ((_ to_fp 8 24) initial_ackermann!0))
                (ite (fp.gt ((_ to_fp 8 24) initial_ackermann!0)
                            ((_ to_fp 8 24) #x00000000))
                     #x00000001
                     #xffffffff)
                #x00000000)))
  (= #x00000000 a!1)))
(assert (fp.geq ((_ to_fp 11 53)
          roundNearestTiesToEven
          (fp.add roundTowardNegative
                  ((_ to_fp 8 24) initial_ackermann!0)
                  ((_ to_fp 8 24) #x4a989680)))
        (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53)
                  roundNearestTiesToEven
                  ((_ to_fp 8 24) initial_ackermann!0))
                ((_ to_fp 11 53) #x415312d000000000))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (fp.add roundTowardNegative
                     (fp.add roundTowardNegative
                             ((_ to_fp 8 24) initial_ackermann!0)
                             ((_ to_fp 8 24) #x4a989680))
                     ((_ to_fp 8 24) #x4a989680))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ to_fp 8 24) initial_ackermann!0))
                           ((_ to_fp 11 53) #x415312d000000000))
                   ((_ to_fp 11 53) #x415312d000000000))))
  (fp.geq a!1 a!2)))
(assert (let ((a!1 (fp.add roundTowardNegative
                   (fp.add roundTowardNegative
                           (fp.add roundTowardNegative
                                   ((_ to_fp 8 24) initial_ackermann!0)
                                   ((_ to_fp 8 24) #x4a989680))
                           ((_ to_fp 8 24) #x4a989680))
                   ((_ to_fp 8 24) #x4a989680)))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ to_fp 8 24) initial_ackermann!0))
                           ((_ to_fp 11 53) #x415312d000000000))
                   ((_ to_fp 11 53) #x415312d000000000))))
  (fp.geq ((_ to_fp 11 53) roundNearestTiesToEven a!1)
          (fp.add roundNearestTiesToEven
                  a!2
                  ((_ to_fp 11 53) #x415312d000000000)))))
(assert (let ((a!1 (fp.add roundTowardNegative
                   (fp.add roundTowardNegative
                           (fp.add roundTowardNegative
                                   ((_ to_fp 8 24) initial_ackermann!0)
                                   ((_ to_fp 8 24) #x4a989680))
                           ((_ to_fp 8 24) #x4a989680))
                   ((_ to_fp 8 24) #x4a989680)))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ to_fp 8 24) initial_ackermann!0))
                           ((_ to_fp 11 53) #x415312d000000000))
                   ((_ to_fp 11 53) #x415312d000000000))))
(let ((a!3 (fp.geq ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (fp.add roundTowardNegative
                             a!1
                             ((_ to_fp 8 24) #x4a989680)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x415312d000000000))
                           ((_ to_fp 11 53) #x415312d000000000)))))
  (not a!3))))
; End constraints
(check-sat)
(exit)
