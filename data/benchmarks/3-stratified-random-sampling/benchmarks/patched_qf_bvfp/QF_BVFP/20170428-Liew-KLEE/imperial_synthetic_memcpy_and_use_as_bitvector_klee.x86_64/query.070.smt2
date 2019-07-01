; Start decls (2)
(declare-fun f_ackermann!0 () (_ BitVec 32))
(declare-fun fresh_to_ieee_bv_!1 () (_ BitVec 32))
; End decls
; Start constraints (2)
(assert (= (fp.add roundNearestTiesToEven
           ((_ to_fp 8 24) f_ackermann!0)
           ((_ to_fp 8 24) #x3f800000))
   ((_ to_fp 8 24) fresh_to_ieee_bv_!1)))
(assert (not (not (bvslt #x00000000 (bvxor #xffffffff fresh_to_ieee_bv_!1)))))
; End constraints
(check-sat)
(exit)
