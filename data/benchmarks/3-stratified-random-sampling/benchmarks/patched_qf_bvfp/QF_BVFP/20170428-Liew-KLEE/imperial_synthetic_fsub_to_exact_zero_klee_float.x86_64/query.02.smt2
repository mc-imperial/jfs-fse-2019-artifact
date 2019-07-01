; Start decls (2)
(declare-fun f_ackermann!1 () (_ BitVec 32))
(declare-fun g_ackermann!0 () (_ BitVec 32))
; End decls
; Start constraints (3)
(assert (not (fp.isNaN ((_ to_fp 8 24) f_ackermann!1))))
(assert (not (fp.isNaN ((_ to_fp 8 24) g_ackermann!0))))
(assert (not (not (fp.eq ((_ to_fp 8 24) f_ackermann!1) ((_ to_fp 8 24) g_ackermann!0)))))
; End constraints
(check-sat)
(exit)
