; Start decls (1)
(declare-fun symbolic_0_double_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (4)
(assert (fp.geq ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
        ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.leq ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
        ((_ to_fp 11 53) #x4034000000000000)))
(assert (or (fp.isNaN ((_ to_fp 11 53) symbolic_0_double_ackermann!0))
    (fp.gt ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
           ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) symbolic_0_double_ackermann!0))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53)
                                     symbolic_0_double_ackermann!0)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) symbolic_0_double_ackermann!0))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     symbolic_0_double_ackermann!0)
                                   ((_ to_fp 11 53) #x4008000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53)
                                     symbolic_0_double_ackermann!0))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xc024000000000000)))
                   ((_ to_fp 11 53) #x402e000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53)
                                     symbolic_0_double_ackermann!0))
                           a!3)
                   ((_ to_fp 11 53) #x3fc0000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53)
                                     symbolic_0_double_ackermann!0)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!6 (fp.lt a!5
                  (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x8000000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
                                  (fp.add roundNearestTiesToEven a!4 a!4))))))
(let ((a!7 (or (fp.gt a!5
                      (fp.mul roundNearestTiesToEven
                              ((_ to_fp 11 53) #x3eb0c6f7a0b5ed8d)
                              (fp.add roundNearestTiesToEven a!4 a!4)))
               a!6)))
  (not a!7))))))))
; End constraints
(check-sat)
(exit)
