; Start decls (1)
(declare-fun a_ackermann!0 () (_ BitVec 64))
; End decls
; Start constraints (2)
(assert (fp.gt ((_ to_fp 11 53) a_ackermann!0) ((_ to_fp 11 53) #xbff0000000000005)))
(assert (not (not (fp.lt ((_ to_fp 11 53) a_ackermann!0)
                 ((_ to_fp 11 53) #xbfeffffffffffff7)))))
; End constraints
(check-sat)
(exit)
