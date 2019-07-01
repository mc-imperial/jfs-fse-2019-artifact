; Start decls (1)
(declare-fun symbolic_0_double_7713_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (1)
(assert (let ((a!1 (not (and (fp.geq ((_ to_fp 11 53)
                               symbolic_0_double_7713_ackermann!0)
                             ((_ to_fp 11 53) #xbff199999999999a))
                     (fp.leq ((_ to_fp 11 53)
                               symbolic_0_double_7713_ackermann!0)
                             ((_ to_fp 11 53) #x3ff199999999999a))))))
  (not a!1)))
; End constraints
(check-sat)
(exit)
