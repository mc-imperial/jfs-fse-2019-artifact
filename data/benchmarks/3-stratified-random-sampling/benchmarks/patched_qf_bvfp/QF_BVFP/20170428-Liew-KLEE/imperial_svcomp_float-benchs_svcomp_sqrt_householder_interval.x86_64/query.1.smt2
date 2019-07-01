; Start decls (1)
(declare-fun symbolic_0_double_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (3)
(assert (fp.geq ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
        ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.leq ((_ to_fp 11 53) symbolic_0_double_ackermann!0)
        ((_ to_fp 11 53) #x4034000000000000)))
(assert (not false))
; End constraints
(check-sat)
(exit)
