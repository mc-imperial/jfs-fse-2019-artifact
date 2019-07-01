; Start decls (1)
(declare-fun f_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (1)
(assert (not (fp.isNaN ((_ to_fp 11 53) f_ackermann!0))))
; End constraints
(check-sat)
(exit)
