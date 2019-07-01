; Start decls (1)
(declare-fun delta_ackermann!0 () (_ BitVec 32))
; End decls
; Start constraints (1)
(assert (let ((a!1 (and (not (fp.isNaN ((_ to_fp 8 24) delta_ackermann!0)))
                (not (fp.gt ((_ to_fp 8 24) delta_ackermann!0)
                            ((_ to_fp 8 24) #x367fffff))))))
  (not a!1)))
; End constraints
(check-sat)
(exit)
