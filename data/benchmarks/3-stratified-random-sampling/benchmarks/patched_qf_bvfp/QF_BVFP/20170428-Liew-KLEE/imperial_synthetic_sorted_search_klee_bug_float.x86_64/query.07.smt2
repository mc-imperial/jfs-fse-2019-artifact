; Start decls (4)
(declare-fun data_ackermann!0 () (_ BitVec 32))
(declare-fun data_ackermann!1 () (_ BitVec 32))
(declare-fun data_ackermann!2 () (_ BitVec 32))
(declare-fun data_ackermann!3 () (_ BitVec 32))
; End decls
; Start constraints (7)
(assert (not (fp.isNaN ((_ to_fp 8 24) data_ackermann!0))))
(assert (not (fp.lt ((_ to_fp 8 24) data_ackermann!0) ((_ to_fp 8 24) data_ackermann!1))))
(assert (not (fp.isNaN ((_ to_fp 8 24) data_ackermann!2))))
(assert (not (fp.isNaN ((_ to_fp 8 24) data_ackermann!1))))
(assert (not (fp.lt ((_ to_fp 8 24) data_ackermann!1) ((_ to_fp 8 24) data_ackermann!3))))
(assert (not (fp.isNaN ((_ to_fp 8 24) data_ackermann!3))))
(assert (not (not (fp.lt ((_ to_fp 8 24) data_ackermann!2)
                 ((_ to_fp 8 24) data_ackermann!0)))))
; End constraints
(check-sat)
(exit)
