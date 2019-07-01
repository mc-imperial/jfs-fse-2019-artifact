; Start decls (2)
(declare-fun increment_ackermann!1 () (_ BitVec 32))
(declare-fun initial_ackermann!0 () (_ BitVec 32))
; End decls
; Start constraints (6)
(assert (not (fp.isNaN ((_ to_fp 8 24) initial_ackermann!0))))
(assert (not (fp.isNaN ((_ to_fp 8 24) increment_ackermann!1))))
(assert (let ((a!1 (ite (fp.isInfinite ((_ to_fp 8 24) initial_ackermann!0))
                (ite (fp.gt ((_ to_fp 8 24) initial_ackermann!0)
                            ((_ to_fp 8 24) #x00000000))
                     #x00000001
                     #xffffffff)
                #x00000000)))
  (= #x00000000 a!1)))
(assert (let ((a!1 (ite (fp.isInfinite ((_ to_fp 8 24) increment_ackermann!1))
                (ite (fp.gt ((_ to_fp 8 24) increment_ackermann!1)
                            ((_ to_fp 8 24) #x00000000))
                     #x00000001
                     #xffffffff)
                #x00000000)))
  (= #x00000000 a!1)))
(assert (fp.geq ((_ to_fp 11 53)
          roundNearestTiesToEven
          (fp.add roundTowardNegative
                  ((_ to_fp 8 24) initial_ackermann!0)
                  ((_ to_fp 8 24) increment_ackermann!1)))
        (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53)
                  roundNearestTiesToEven
                  ((_ to_fp 8 24) initial_ackermann!0))
                ((_ to_fp 11 53)
                  roundNearestTiesToEven
                  ((_ to_fp 8 24) increment_ackermann!1)))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (fp.add roundTowardNegative
                     (fp.add roundTowardNegative
                             ((_ to_fp 8 24) initial_ackermann!0)
                             ((_ to_fp 8 24) increment_ackermann!1))
                     ((_ to_fp 8 24) increment_ackermann!1))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ to_fp 8 24) initial_ackermann!0))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ to_fp 8 24) increment_ackermann!1)))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ to_fp 8 24) increment_ackermann!1)))))
  (not (and (not (fp.isNaN a!1)) (not (fp.isNaN a!2)) (not (fp.gt a!1 a!2))))))
; End constraints
(check-sat)
(exit)
