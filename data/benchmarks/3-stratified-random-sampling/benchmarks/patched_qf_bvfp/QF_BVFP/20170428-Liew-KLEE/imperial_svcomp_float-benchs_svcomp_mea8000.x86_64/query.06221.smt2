; Start decls (1)
(declare-fun symbolic_0_double_6221_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (1)
(assert (not (not (fp.geq ((_ to_fp 11 53) symbolic_0_double_6221_ackermann!0)
                  ((_ to_fp 11 53) #x0000000000000000)))))
; End constraints
(check-sat)
(exit)
