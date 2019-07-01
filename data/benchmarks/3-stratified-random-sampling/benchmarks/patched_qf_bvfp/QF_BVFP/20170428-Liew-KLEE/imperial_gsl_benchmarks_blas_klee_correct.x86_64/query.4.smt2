; Start decls (1)
(declare-fun a_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (3)
(assert (not (fp.isNaN ((_ to_fp 11 53) a_ackermann!0))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ackermann!0)
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ackermann!0)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x408f980000000000))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ackermann!0)
                                   ((_ to_fp 11 53) #x408f980000000000))
                           ((_ to_fp 11 53) #x405ea147ae147ae1))
                   ((_ to_fp 11 53) #x4060c0f5c28f5c29))))
(let ((a!3 (fp.eq (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x405ea147ae147ae1))
                          ((_ to_fp 11 53) #x4060c0f5c28f5c29))
                  a!2)))
  (not a!3))))
; End constraints
(check-sat)
(exit)
