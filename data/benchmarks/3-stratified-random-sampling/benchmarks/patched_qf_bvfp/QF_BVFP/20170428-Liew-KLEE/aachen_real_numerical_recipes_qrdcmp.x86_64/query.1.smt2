; Start decls (1)
(declare-fun sym_f_ackermann!0 () (_ BitVec 32))
; End decls
; Start constraints (3)
(assert (fp.geq ((_ to_fp 8 24) sym_f_ackermann!0) ((_ to_fp 8 24) #x3f800000)))
(assert (fp.leq ((_ to_fp 8 24) sym_f_ackermann!0) ((_ to_fp 8 24) #x41a00000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 8 24) #xc0ed5b8a)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 8 24) #xbe800000)
                                   ((_ to_fp 8 24) sym_f_ackermann!0)))
                   ((_ to_fp 8 24) #x401d523b))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 8 24) #x40078dde)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 8 24) #xc2000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 8 24) #x3f000000)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 8 24) #xbf000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 8 24) sym_f_ackermann!0)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 8 24) #xbe800000))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 8 24) #x00000000)
                                   a!2)
                           a!3)
                   ((_ to_fp 8 24) #x40178dde))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 8 24) sym_f_ackermann!0)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 8 24) #xbe800000)))
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 8 24) #xbf000000)))))
  (not (not (fp.eq a!5 ((_ to_fp 8 24) #x00000000)))))))))
; End constraints
(check-sat)
(exit)
