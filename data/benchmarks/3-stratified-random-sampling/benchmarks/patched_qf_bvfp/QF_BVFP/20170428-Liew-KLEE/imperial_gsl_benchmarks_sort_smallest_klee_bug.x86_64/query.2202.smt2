; Start decls (6)
(declare-fun x_ackermann!0 () (_ BitVec 64))
(declare-fun x_ackermann!1 () (_ BitVec 64))
(declare-fun x_ackermann!2 () (_ BitVec 64))
(declare-fun x_ackermann!3 () (_ BitVec 64))
(declare-fun x_ackermann!4 () (_ BitVec 64))
(declare-fun x_ackermann!5 () (_ BitVec 64))
; End decls
; Start constraints (15)
(assert (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!0))
    (fp.isNaN ((_ to_fp 11 53) x_ackermann!1))
    (fp.lt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!1))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!2))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!0) ((_ to_fp 11 53) x_ackermann!3))))
(assert (not (fp.isNaN ((_ to_fp 11 53) x_ackermann!3))))
(assert (let ((a!1 (and (not (fp.isNaN ((_ to_fp 11 53) x_ackermann!0)))
                (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!0))
                    (fp.gt ((_ to_fp 11 53) x_ackermann!3)
                           ((_ to_fp 11 53) x_ackermann!0))))))
  (not a!1)))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!1) ((_ to_fp 11 53) x_ackermann!4))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!1) ((_ to_fp 11 53) x_ackermann!5))))
(assert (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!2))
    (fp.isNaN ((_ to_fp 11 53) x_ackermann!4))
    (fp.lt ((_ to_fp 11 53) x_ackermann!2) ((_ to_fp 11 53) x_ackermann!4))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!2) ((_ to_fp 11 53) x_ackermann!5))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!2) ((_ to_fp 11 53) x_ackermann!1))))
(assert (or (fp.isNaN ((_ to_fp 11 53) x_ackermann!5))
    (fp.lt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!5))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!1))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!3) ((_ to_fp 11 53) x_ackermann!2))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ackermann!5) ((_ to_fp 11 53) x_ackermann!4))))
(assert (not (not (fp.isNaN ((_ to_fp 11 53) x_ackermann!0)))))
; End constraints
(check-sat)
(exit)
