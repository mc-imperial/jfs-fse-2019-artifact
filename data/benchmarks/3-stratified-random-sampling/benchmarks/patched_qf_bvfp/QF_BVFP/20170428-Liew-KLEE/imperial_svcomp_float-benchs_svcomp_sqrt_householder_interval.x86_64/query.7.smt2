; Start decls (1)
(declare-fun symbolic_0_double_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (7)
(assert (fp.geq ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
        ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.leq ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
        ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.isNaN ((_ to_fp 11 53) symbolic_0_double_ackermann!0))))
(assert (not (fp.gt ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     symbolic_0_double_ackermann!0)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     symbolic_0_double_ackermann!0)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc024000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x402e000000000000)))
                   ((_ to_fp 11 53) #x3fc0000000000000))))
(let ((a!4 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  a!3
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          ((_ to_fp 11 53) #x4000000000000000))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
                          (fp.add roundNearestTiesToEven a!3 a!3)))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     symbolic_0_double_ackermann!0)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     symbolic_0_double_ackermann!0)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #xc024000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x402e000000000000)))
                   ((_ to_fp 11 53) #x3fc0000000000000))))
(let ((a!4 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  a!3
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          ((_ to_fp 11 53) #x4000000000000000))
                  (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x8000000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
                                  (fp.add roundNearestTiesToEven a!3 a!3))))))
  (not a!4))))))
(assert (not false))
; End constraints
(check-sat)
(exit)
