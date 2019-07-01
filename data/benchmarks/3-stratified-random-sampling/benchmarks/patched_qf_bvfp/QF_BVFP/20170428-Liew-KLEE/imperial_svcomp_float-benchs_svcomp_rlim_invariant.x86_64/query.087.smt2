; Start decls (6)
(declare-fun symbolic_0_float_1_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!5 () (_ BitVec 32))
; End decls
; Start constraints (20)
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_ackermann!5)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_ackermann!5)
        ((_ to_fp 8 24) #x43000000)))
(assert (or (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) symbolic_0_float_ackermann!5)
                      ((_ to_fp 8 24) #x00000000)))
    (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) #x80000000)
                      ((_ to_fp 8 24) symbolic_0_float_1_ackermann!4)))
    (fp.gt (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_ackermann!5)
                   ((_ to_fp 8 24) #x00000000))
           (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) #x80000000)
                   ((_ to_fp 8 24) symbolic_0_float_1_ackermann!4)))))
(assert (or (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) symbolic_0_float_ackermann!5)
                      ((_ to_fp 8 24) #x00000000)))
    (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_1_ackermann!4))
    (fp.lt (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_ackermann!5)
                   ((_ to_fp 8 24) #x00000000))
           ((_ to_fp 8 24) symbolic_0_float_1_ackermann!4))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)
        ((_ to_fp 8 24) #x41800000)))
(assert (or (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) #x80000000)
                      ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
    (fp.gt (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_2_ackermann!1)
                   ((_ to_fp 8 24) symbolic_0_float_ackermann!5))
           (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) #x80000000)
                   ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))))
(assert (not (fp.isNaN (fp.sub roundNearestTiesToEven
                       ((_ to_fp 8 24) symbolic_0_float_2_ackermann!1)
                       ((_ to_fp 8 24) symbolic_0_float_ackermann!5)))))
(assert (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 8 24) symbolic_0_float_2_ackermann!1)
                    ((_ to_fp 8 24) symbolic_0_float_ackermann!5))
            ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_4_ackermann!3)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_4_ackermann!3)
        ((_ to_fp 8 24) #x43000000)))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_5_ackermann!2)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_5_ackermann!2)
        ((_ to_fp 8 24) #x41800000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_4_ackermann!3)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 8 24) symbolic_0_float_ackermann!5)
                           ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))))
  (or (fp.isNaN a!1)
      (fp.isNaN (fp.sub roundNearestTiesToEven
                        ((_ to_fp 8 24) #x80000000)
                        ((_ to_fp 8 24) symbolic_0_float_5_ackermann!2)))
      (fp.gt a!1
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 8 24) #x80000000)
                     ((_ to_fp 8 24) symbolic_0_float_5_ackermann!2))))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_1_ackermann!4)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_1_ackermann!4)
        ((_ to_fp 8 24) #x41800000)))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_2_ackermann!1)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_2_ackermann!1)
        ((_ to_fp 8 24) #x43000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_4_ackermann!3)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 8 24) symbolic_0_float_ackermann!5)
                           ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))))
  (not (or (fp.isNaN a!1)
           (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_5_ackermann!2))
           (fp.lt a!1 ((_ to_fp 8 24) symbolic_0_float_5_ackermann!2))))))
; End constraints
(check-sat)
(exit)
