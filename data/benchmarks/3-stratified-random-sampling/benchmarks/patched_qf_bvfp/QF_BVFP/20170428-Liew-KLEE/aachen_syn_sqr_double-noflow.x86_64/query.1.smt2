; Start decls (1)
(declare-fun f_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (2)
(assert (not (fp.isNaN ((_ to_fp 11 53) f_ackermann!0))))
(assert (let ((a!1 (fp.isNaN (fp.mul roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) f_ackermann!0))
                             ((_ to_fp 11 53) #x3fefae147ae147ae))))
      (a!2 (fp.isNaN (fp.sqrt roundNearestTiesToEven
                              (fp.mul roundNearestTiesToEven
                                      ((_ to_fp 11 53) f_ackermann!0)
                                      ((_ to_fp 11 53) f_ackermann!0)))))
      (a!3 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) f_ackermann!0))
                          ((_ to_fp 11 53) #x3fefae147ae147ae))
                  (fp.sqrt roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) f_ackermann!0)
                                   ((_ to_fp 11 53) f_ackermann!0)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.sqrt roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) f_ackermann!0)
                                    ((_ to_fp 11 53) f_ackermann!0)))
                   ((_ to_fp 11 53) #x3fefae147ae147ae))))
(let ((a!5 (or a!1
               a!2
               a!3
               (fp.isNaN (fp.abs ((_ to_fp 11 53) f_ackermann!0)))
               (fp.isNaN a!4)
               (fp.lt (fp.abs ((_ to_fp 11 53) f_ackermann!0)) a!4))))
  (not a!5))))
; End constraints
(check-sat)
(exit)
