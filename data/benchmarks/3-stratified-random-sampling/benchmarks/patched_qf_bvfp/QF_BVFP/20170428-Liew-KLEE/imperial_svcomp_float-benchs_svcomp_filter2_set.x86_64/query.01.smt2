; Start decls (1)
(declare-fun symbolic_0_double_1_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (1)
(assert (let ((a!1 (not (and (fp.geq ((_ to_fp 11 53) symbolic_0_double_1_ackermann!0)
                             ((_ to_fp 11 53) #xbff4f5c28f5c28f6))
                     (fp.leq ((_ to_fp 11 53) symbolic_0_double_1_ackermann!0)
                             ((_ to_fp 11 53) #xbff4a3d70a3d70a4))))))
  (not a!1)))
; End constraints
(check-sat)
(exit)
