; Start decls (1)
(declare-fun symbolic_0_double_3_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (3)
(assert (fp.geq ((_ to_fp 11 53) symbolic_0_double_3_ackermann!0)
        ((_ to_fp 11 53) #x3ff63d70a3d70a3d)))
(assert (fp.leq ((_ to_fp 11 53) symbolic_0_double_3_ackermann!0)
        ((_ to_fp 11 53) #x3ff68f5c28f5c28f)))
(assert (not false))
; End constraints
(check-sat)
(exit)
