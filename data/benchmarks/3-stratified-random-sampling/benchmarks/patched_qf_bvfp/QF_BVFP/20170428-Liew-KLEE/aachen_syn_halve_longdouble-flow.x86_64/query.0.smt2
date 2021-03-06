; Start decls (1)
(declare-fun f_ackermann!0 () (_ BitVec 80))
; End decls
; Start constraints (2)
(assert (let ((a!1 ((_ to_fp 15 64)
             (concat (concat ((_ extract 79 79) f_ackermann!0)
                             ((_ extract 78 64) f_ackermann!0))
                     ((_ extract 62 0) f_ackermann!0)))))
  (= ((_ extract 63 63) f_ackermann!0)
     (ite (or (fp.isSubnormal a!1) (fp.isZero a!1)) #b0 #b1))))
(assert (let ((a!1 ((_ to_fp 15 64)
             (concat (concat ((_ extract 79 79) f_ackermann!0)
                             ((_ extract 78 64) f_ackermann!0))
                     ((_ extract 62 0) f_ackermann!0)))))
  (not (not (not (fp.isNaN a!1))))))
; End constraints
(check-sat)
(exit)
