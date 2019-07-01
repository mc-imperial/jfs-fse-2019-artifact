; Start decls (1)
(declare-fun meters_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (6)
(assert (fp.geq ((_ to_fp 11 53) meters_ackermann!0)
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq ((_ to_fp 11 53) meters_ackermann!0)
        ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 ((_ sign_extend 32)
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.abs ((_ to_fp 11 53) meters_ackermann!0))))))
(let ((a!2 (bvor (bvudiv ((_ extract 31 0) a!1) #x0000000a)
                 ((_ extract 31 0) (concat #x00000000 ((_ extract 63 32) a!1))))))
  (not (= #x00000000 a!2)))))
(assert (let ((a!1 ((_ sign_extend 32)
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.abs ((_ to_fp 11 53) meters_ackermann!0))))))
(let ((a!2 (bvor (bvudiv (bvudiv ((_ extract 31 0) a!1) #x0000000a) #x0000000a)
                 ((_ extract 31 0) (concat #x00000000 ((_ extract 63 32) a!1))))))
  (= #x00000000 a!2))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.abs ((_ to_fp 11 53) meters_ackermann!0))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) meters_ackermann!0))
                           a!1)
                   ((_ to_fp 11 53) #x4059000000000000))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.div roundNearestTiesToEven
                     (fp.mul roundNearestTiesToEven
                             a!2
                             ((_ to_fp 11 53) #x404e000000000000))
                     ((_ to_fp 11 53) #x4059000000000000)))))
(let ((a!4 ((_ extract 31 0)
             (concat #x00000000 ((_ extract 63 32) ((_ sign_extend 32) a!3))))))
(let ((a!5 (bvor (bvudiv ((_ extract 31 0) ((_ sign_extend 32) a!3)) #x0000000a)
                 a!4)))
  (not (= #x00000000 a!5))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.abs ((_ to_fp 11 53) meters_ackermann!0))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) meters_ackermann!0))
                           a!1)
                   ((_ to_fp 11 53) #x4059000000000000))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.div roundNearestTiesToEven
                     (fp.mul roundNearestTiesToEven
                             a!2
                             ((_ to_fp 11 53) #x404e000000000000))
                     ((_ to_fp 11 53) #x4059000000000000)))))
(let ((a!4 (bvadd ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.mul roundNearestTiesToEven
                            a!2
                            ((_ to_fp 11 53) #x404e000000000000)))
                  (bvmul #xffffff9c a!3))))
(let ((a!5 ((_ extract 31 0)
             (concat #x00000000 ((_ extract 63 32) ((_ sign_extend 32) a!4))))))
(let ((a!6 (bvor (bvudiv ((_ extract 31 0) ((_ sign_extend 32) a!4)) #x0000000a)
                 a!5)))
  (not (not (= #x00000000 a!6))))))))))
; End constraints
(check-sat)
(exit)
