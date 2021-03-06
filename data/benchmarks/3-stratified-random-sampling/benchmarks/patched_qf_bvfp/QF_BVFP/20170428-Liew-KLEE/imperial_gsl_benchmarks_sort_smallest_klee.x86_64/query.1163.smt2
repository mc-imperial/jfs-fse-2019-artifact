; Start decls (6)
(declare-fun x_ackermann!0 () (_ BitVec 64))
(declare-fun x_ackermann!1 () (_ BitVec 64))
(declare-fun x_ackermann!2 () (_ BitVec 64))
(declare-fun x_ackermann!3 () (_ BitVec 64))
(declare-fun x_ackermann!4 () (_ BitVec 64))
(declare-fun x_ackermann!5 () (_ BitVec 64))
; End decls
; Start constraints (13)
(assert (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!0))
    (fp.isNaN ((_ to_fp 11 53) x_ackermann!1))
    (fp.lt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!1))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!2))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!3))))
(assert (not (fp.isNaN ((_ to_fp 11 53) x_ackermann!2))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ackermann!4) ((_ to_fp 11 53) x_ackermann!2))))
(assert (fp.gt ((_ to_fp 11 53) x_ackermann!5) ((_ to_fp 11 53) x_ackermann!1)))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!5))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!1))))
(assert (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!5))
    (fp.lt ((_ to_fp 11 53) x_ackermann!2) ((_ to_fp 11 53) x_ackermann!5))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!2) ((_ to_fp 11 53) x_ackermann!1))))
(assert (fp.gt ((_ to_fp 11 53) x_ackermann!2) ((_ to_fp 11 53) x_ackermann!3)))
(assert (not (fp.isNaN ((_ to_fp 11 53) x_ackermann!4))))
(assert (not false))
; End constraints
(check-sat)
(exit)
