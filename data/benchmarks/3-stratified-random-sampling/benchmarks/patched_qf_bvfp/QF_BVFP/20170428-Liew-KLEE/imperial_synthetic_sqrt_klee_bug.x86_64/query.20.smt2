; Start decls (4)
(declare-fun fresh_to_ieee_bv_!1 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!2 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!3 () (_ BitVec 32))
(declare-fun x_ackermann!0 () (_ BitVec 32))
; End decls
; Start constraints (10)
(assert (not (fp.isNaN ((_ to_fp 8 24) x_ackermann!0))))
(assert (not (fp.lt ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) #x00000000))))
(assert (not (fp.gt ((_ to_fp 8 24) x_ackermann!0) ((_ to_fp 8 24) #x42c80000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 8 24) x_ackermann!0)
                                   ((_ to_fp 8 24) #x00000000))
                           ((_ to_fp 8 24) #x3f000000))
                   ((_ to_fp 8 24) x_ackermann!0))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 8 24) #x33d6bf95)))))
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
(let ((a!4 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 8 24) #x3f000000))
                           ((_ to_fp 8 24) x_ackermann!0)))))
  (not (fp.lt a!4 ((_ to_fp 8 24) #x33d6bf95))))))))
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
(let ((a!7 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!5 a!6)
                                   ((_ to_fp 8 24) #x3f000000))
                           ((_ to_fp 8 24) x_ackermann!0)))))
  (not (fp.lt a!7 ((_ to_fp 8 24) #x33d6bf95)))))))))
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
  (= (fp.mul roundNearestTiesToEven
             (fp.add roundNearestTiesToEven a!5 a!6)
             ((_ to_fp 8 24) #x3f000000))
     ((_ to_fp 8 24) fresh_to_ieee_bv_!3)))))))
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
(let ((a!7 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.mul roundNearestTiesToEven
                                  (fp.add roundNearestTiesToEven a!5 a!6)
                                  ((_ to_fp 8 24) #x3f000000))
                          (fp.mul roundNearestTiesToEven
                                  (fp.add roundNearestTiesToEven a!5 a!6)
                                  ((_ to_fp 8 24) #x3f000000)))
                  ((_ to_fp 8 24) x_ackermann!0))))
(let ((a!8 (ite a!7
                fresh_to_ieee_bv_!3
                (ite (fp.gt a!4 ((_ to_fp 8 24) x_ackermann!0))
                     fresh_to_ieee_bv_!2
                     a!2))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 8 24) a!8)
                   (ite a!7
                        a!6
                        (fp.mul roundNearestTiesToEven
                                (fp.add roundNearestTiesToEven a!5 a!6)
                                ((_ to_fp 8 24) #x3f000000))))))
(let ((a!10 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 8 24) #x3f000000))
                            ((_ to_fp 8 24) x_ackermann!0)))))
  (not (not (fp.lt a!10 ((_ to_fp 8 24) #x33d6bf95)))))))))))))
; End constraints
(check-sat)
(exit)
