; Start decls (1)
(declare-fun symbolic_0_double_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (5)
(assert (fp.geq ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
        ((_ to_fp 11 53) #xc202a05f20000000)))
(assert (fp.leq ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
        ((_ to_fp 11 53) #x4202a05f20000000)))
(assert (fp.lt ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) symbolic_0_double_ackermann!0))
       ((_ to_fp 11 53) #x4066800000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53)
                                     symbolic_0_double_ackermann!0))
                           ((_ to_fp 11 53) #x4066800000000000))
                   ((_ to_fp 11 53) #x4076800000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) symbolic_0_double_ackermann!0))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             ((_ fp.to_sbv 32) roundTowardZero a!1))
                           ((_ to_fp 11 53) #x4076800000000000)))))
  (not (not (fp.lt a!2 ((_ to_fp 11 53) #x0000000000000000)))))))
; End constraints
(check-sat)
(exit)
