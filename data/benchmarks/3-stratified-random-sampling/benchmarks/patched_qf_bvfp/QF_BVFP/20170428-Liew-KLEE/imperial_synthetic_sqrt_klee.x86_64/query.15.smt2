; Start decls (3)
(declare-fun fresh_to_ieee_bv_!1 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!2 () (_ BitVec 32))
(declare-fun x_ackermann!0 () (_ BitVec 32))
; End decls
; Start constraints (8)
(assert (not (fp.isNaN ((_ to_fp 8 24) x_ackermann!0))))
(assert (not (fp.lt ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) #x00000000))))
(assert (not (fp.gt ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) #x42c80000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 8 24) x_ackermann!0)
                           ((_ to_fp 8 24) #x00000000))
                   ((_ to_fp 8 24) #x3f000000))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  (fp.mul roundNearestTiesToEven a!1 a!1)
                                  ((_ to_fp 8 24) x_ackermann!0)))
                  ((_ to_fp 8 24) #x33d6bf95))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 8 24) x_ackermann!0)
                           ((_ to_fp 8 24) #x00000000))
                   ((_ to_fp 8 24) #x3f000000))))
(let ((a!2 ((_ to_fp 8 24)
             (ite (fp.gt (fp.mul roundNearestTiesToEven a!1 a!1)
                         ((_ to_fp 8 24) x_ackermann!0))
                  fresh_to_ieee_bv_!1
                  x_ackermann!0))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (ite (fp.gt (fp.mul roundNearestTiesToEven a!1 a!1)
                               ((_ to_fp 8 24) x_ackermann!0))
                        ((_ to_fp 8 24) #x00000000)
                        a!1))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 8 24) #x3f000000))
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 8 24) #x3f000000)))
                   ((_ to_fp 8 24) x_ackermann!0))))
  (not (fp.lt (fp.abs a!4) ((_ to_fp 8 24) #x33d6bf95))))))))
(assert (= (fp.mul roundNearestTiesToEven
           (fp.add roundNearestTiesToEven
                   ((_ to_fp 8 24) x_ackermann!0)
                   ((_ to_fp 8 24) #x00000000))
           ((_ to_fp 8 24) #x3f000000))
   ((_ to_fp 8 24) fresh_to_ieee_bv_!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 8 24) x_ackermann!0)
                           ((_ to_fp 8 24) #x00000000))
                   ((_ to_fp 8 24) #x3f000000))))
(let ((a!2 ((_ to_fp 8 24)
             (ite (fp.gt (fp.mul roundNearestTiesToEven a!1 a!1)
                         ((_ to_fp 8 24) x_ackermann!0))
                  fresh_to_ieee_bv_!1
                  x_ackermann!0))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (ite (fp.gt (fp.mul roundNearestTiesToEven a!1 a!1)
                               ((_ to_fp 8 24) x_ackermann!0))
                        ((_ to_fp 8 24) #x00000000)
                        a!1))))
  (= (fp.mul roundNearestTiesToEven a!3 ((_ to_fp 8 24) #x3f000000))
     ((_ to_fp 8 24) fresh_to_ieee_bv_!2))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 8 24) x_ackermann!0)
                           ((_ to_fp 8 24) #x00000000))
                   ((_ to_fp 8 24) #x3f000000))))
(let ((a!2 (ite (fp.gt (fp.mul roundNearestTiesToEven a!1 a!1)
                       ((_ to_fp 8 24) x_ackermann!0))
                fresh_to_ieee_bv_!1
                x_ackermann!0))
      (a!3 (ite (fp.gt (fp.mul roundNearestTiesToEven a!1 a!1)
                       ((_ to_fp 8 24) x_ackermann!0))
                ((_ to_fp 8 24) #x00000000)
                a!1)))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 8 24) a!2)
                                   a!3)
                           ((_ to_fp 8 24) #x3f000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 8 24) a!2)
                                   a!3)
                           ((_ to_fp 8 24) #x3f000000)))))
(let ((a!5 ((_ to_fp 8 24)
             (ite (fp.gt a!4 ((_ to_fp 8 24) x_ackermann!0))
                  fresh_to_ieee_bv_!2
                  a!2)))
      (a!6 (ite (fp.gt a!4 ((_ to_fp 8 24) x_ackermann!0))
                a!3
                (fp.mul roundNearestTiesToEven
                        (fp.add roundNearestTiesToEven ((_ to_fp 8 24) a!2) a!3)
                        ((_ to_fp 8 24) #x3f000000)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!5 a!6)
                                   ((_ to_fp 8 24) #x3f000000))
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!5 a!6)
                                   ((_ to_fp 8 24) #x3f000000)))
                   ((_ to_fp 8 24) x_ackermann!0))))
  (not (not (fp.lt (fp.abs a!7) ((_ to_fp 8 24) #x33d6bf95))))))))))
; End constraints
(check-sat)
(exit)
