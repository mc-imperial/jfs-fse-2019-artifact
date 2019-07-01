; Start decls (8)
(declare-fun symbolic_0_float_1_ackermann!6 () (_ BitVec 32))
(declare-fun symbolic_0_float_2_ackermann!2 () (_ BitVec 32))
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
(declare-fun symbolic_0_float_4_ackermann!4 () (_ BitVec 32))
(declare-fun symbolic_0_float_5_ackermann!3 () (_ BitVec 32))
(declare-fun symbolic_0_float_6_ackermann!1 () (_ BitVec 32))
(declare-fun symbolic_0_float_7_ackermann!5 () (_ BitVec 32))
(declare-fun symbolic_0_float_ackermann!7 () (_ BitVec 32))
; End decls
; Start constraints (27)
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)
        ((_ to_fp 8 24) #x43000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 8 24) #x00000000)
                           ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))))
  (or (fp.isNaN a!1)
      (fp.isNaN (fp.sub roundNearestTiesToEven
                        ((_ to_fp 8 24) #x80000000)
                        ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))
      (fp.gt a!1
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 8 24) #x80000000)
                     ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 8 24) #x00000000)
                           ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))))
  (or (fp.isNaN a!1)
      (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0))
      (fp.lt a!1 ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)
        ((_ to_fp 8 24) #x41800000)))
(assert (not (fp.isNaN (fp.sub roundNearestTiesToEven
                       ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)
                       ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)))))
(assert (not (fp.isNaN (fp.sub roundNearestTiesToEven
                       ((_ to_fp 8 24) #x80000000)
                       ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)
                    ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 8 24) #x80000000)
                    ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)
        ((_ to_fp 8 24) #x43000000)))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)
        ((_ to_fp 8 24) #x41800000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)
                           ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))))
  (or (fp.isNaN a!1)
      (fp.isNaN (fp.sub roundNearestTiesToEven
                        ((_ to_fp 8 24) #x80000000)
                        ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
      (fp.gt a!1
             (fp.sub roundNearestTiesToEven
                     ((_ to_fp 8 24) #x80000000)
                     ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5))))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)
        ((_ to_fp 8 24) #x41800000)))
(assert (or (fp.isNaN (fp.sub roundNearestTiesToEven
                      ((_ to_fp 8 24) #x80000000)
                      ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))
    (fp.gt (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_ackermann!7)
                   ((_ to_fp 8 24) #x00000000))
           (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) #x80000000)
                   ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6)))))
(assert (not (fp.isNaN (fp.sub roundNearestTiesToEven
                       ((_ to_fp 8 24) symbolic_0_float_ackermann!7)
                       ((_ to_fp 8 24) #x00000000)))))
(assert (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 8 24) symbolic_0_float_ackermann!7)
                    ((_ to_fp 8 24) #x00000000))
            ((_ to_fp 8 24) symbolic_0_float_1_ackermann!6))))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)
        ((_ to_fp 8 24) #x00000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)
        ((_ to_fp 8 24) #x41800000)))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_4_ackermann!4)
        ((_ to_fp 8 24) #x43000000)))
(assert (fp.geq ((_ to_fp 8 24) symbolic_0_float_ackermann!7)
        ((_ to_fp 8 24) #xc3000000)))
(assert (fp.leq ((_ to_fp 8 24) symbolic_0_float_ackermann!7)
        ((_ to_fp 8 24) #x43000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 8 24) symbolic_0_float_6_ackermann!1)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 8 24) symbolic_0_float_2_ackermann!2)
                           ((_ to_fp 8 24) symbolic_0_float_5_ackermann!3)))))
(let ((a!2 (and (not (fp.isNaN a!1))
                (not (fp.isNaN ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5)))
                (not (fp.lt a!1 ((_ to_fp 8 24) symbolic_0_float_7_ackermann!5))))))
  (not a!2))))
; End constraints
(check-sat)
(exit)
