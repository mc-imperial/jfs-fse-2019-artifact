; Start decls (10)
(declare-fun symbolic_0_float_1_ackermann!7 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_8_ackermann!9 () (_ BitVec 32))
(declare-fun symbolic_0_float_9_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!8 () (_ BitVec 32))
; End decls
; Start constraints (31)
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)
        ((_ to_fp 8 24) #x43000000)))
(assert (or (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)
                      ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
    (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) #x80000000)
                      ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))
    (fp.gt (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)
                   ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5))
           (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) #x80000000)
                   ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)))))
(assert (or (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)
                      ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)))
    (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6))
    (fp.lt (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)
                   ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5))
           ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)
        ((_ to_fp 8 24) #x43000000)))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)
        ((_ to_fp 8 24) #x41800000)))
(assert (or (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)
                      ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2)))
    (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) #x80000000)
                      ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))
    (fp.gt (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_8_ackermann!9)
                   ((_ to_fp 8 24) symbolic_0_float_6_ackermann!2))
           (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) #x80000000)
                   ((_ to_fp 8 24) symbolic_0_float_9_ackermann!1)))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)
        ((_ to_fp 8 24) #x43000000)))
(assert (or (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)
                      ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
    (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) #x80000000)
                      ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))
    (fp.gt (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)
                   ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3))
           (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) #x80000000)
                   ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)))))
(assert (or (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)
                      ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)))
    (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4))
    (fp.lt (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_4_ackermann!5)
                   ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3))
           ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_7_ackermann!6)
        ((_ to_fp 8 24) #x41800000)))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)
        ((_ to_fp 8 24) #x43000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 8 24) #x00000000)
                           ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))))
  (or (fp.isNaN a!1)
      (fp.isNaN (fp.sub roundNearestTiesToEven
                        ((_ to_fp 8 24) #x80000000)
                        ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
      (fp.gt a!1
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 8 24) #x80000000)
                     ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_2_ackermann!3)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 8 24) #x00000000)
                           ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))))
  (or (fp.isNaN a!1)
      (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0))
      (fp.lt a!1 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_5_ackermann!4)
        ((_ to_fp 8 24) #x41800000)))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)
        ((_ to_fp 8 24) #x41800000)))
(assert (not (fp.isNaN (fp.sub roundNearestTiesToEven
                       ((_ to_fp 8 24) #x80000000)
                       ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 8 24) symbolic_0_float_ackermann!8)
                    ((_ to_fp 8 24) #x00000000))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 8 24) #x80000000)
                    ((_ to_fp 8 24) symbolic_0_float_1_ackermann!7)))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)
        ((_ to_fp 8 24) #x41800000)))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_ackermann!8)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_ackermann!8)
        ((_ to_fp 8 24) #x43000000)))
(assert (not (fp.isNaN (fp.sub roundNearestTiesToEven
                       ((_ to_fp 8 24) symbolic_0_float_ackermann!8)
                       ((_ to_fp 8 24) #x00000000)))))
(assert (not false))
; End constraints
(check-sat)
(exit)
