; Start decls (2)
(declare-fun x_ackermann!0 () (_ BitVec 32))
(declare-fun y_ackermann!1 () (_ BitVec 32))
; End decls
; Start constraints (4)
(assert (not (fp.isNaN ((_ to_fp 8 24) x_ackermann!0))))
(assert (not (fp.isNaN ((_ to_fp 8 24) y_ackermann!1))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 8 24) x_ackermann!0)
                    ((_ to_fp 8 24) y_ackermann!1))
            ((_ to_fp 8 24) x_ackermann!0))))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 8 24) x_ackermann!0)
                                  ((_ to_fp 8 24) y_ackermann!1))
                          ((_ to_fp 8 24) y_ackermann!1))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 8 24) x_ackermann!0)
                          ((_ to_fp 8 24) y_ackermann!1)))))
  (not (not a!1))))
; End constraints
(check-sat)
(exit)
