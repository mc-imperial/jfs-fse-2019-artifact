; Start decls (1)
(declare-fun sym_f_ackermann!0 () (_ BitVec 32))
; End decls
; Start constraints (3)
(assert (fp.gt ((_ to_fp 8 24) sym_f_ackermann!0) ((_ to_fp 8 24) #x3f800000)))
(assert (fp.lt ((_ to_fp 8 24) sym_f_ackermann!0) ((_ to_fp 8 24) #x42c80000)))
(assert (let ((a!1 (or (fp.isNaN (fp.abs ((_ to_fp 8 24) sym_f_ackermann!0)))
               (fp.lt (fp.abs ((_ to_fp 8 24) sym_f_ackermann!0))
                      ((_ to_fp 8 24) #x40800000)))))
  (not a!1)))
; End constraints
(check-sat)
(exit)
