; Start decls (1)
(declare-fun f_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (8)
(assert (not (fp.isNaN ((_ to_fp 11 53) f_ackermann!0))))
(assert (let ((a!1 (fp.isNaN (fp.mul roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) f_ackermann!0))
                             ((_ to_fp 11 53) #x3fefae147ae147ae)))))
  (not a!1)))
(assert (let ((a!1 (fp.isNaN (fp.sqrt roundNearestTiesToEven
                              (fp.mul roundNearestTiesToEven
                                      ((_ to_fp 11 53) f_ackermann!0)
                                      ((_ to_fp 11 53) f_ackermann!0))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) f_ackermann!0))
                          ((_ to_fp 11 53) #x3fefae147ae147ae))
                  (fp.sqrt roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) f_ackermann!0)
                                   ((_ to_fp 11 53) f_ackermann!0))))))
  (not a!1)))
(assert (not (fp.isNaN (fp.abs ((_ to_fp 11 53) f_ackermann!0)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sqrt roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) f_ackermann!0)
                                    ((_ to_fp 11 53) f_ackermann!0)))
                   ((_ to_fp 11 53) #x3fefae147ae147ae))))
  (not (fp.isNaN a!1))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sqrt roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) f_ackermann!0)
                                    ((_ to_fp 11 53) f_ackermann!0)))
                   ((_ to_fp 11 53) #x3fefae147ae147ae))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) f_ackermann!0)) a!1))))
(assert (not false))
; End constraints
(check-sat)
(exit)
