; Start decls (1)
(declare-fun symbolic_0_float_3_ackermann!0 () (_ BitVec 32))
; End decls
; Start constraints (1)
(assert (let ((a!1 (not (and (fp.geq ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)
                             ((_ to_fp 8 24) #xbf800000))
                     (fp.leq ((_ to_fp 8 24) symbolic_0_float_3_ackermann!0)
                             ((_ to_fp 8 24) #x3f800000))))))
  (not a!1)))
; End constraints
(check-sat)
(exit)
