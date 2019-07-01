; Start decls (6)
(declare-fun c_main_~i~4 () (_ BitVec 32))
(declare-fun c_main_~x0~4 () (_ FloatingPoint 11 53))
(declare-fun c_main_~x0~4_primed () (_ FloatingPoint 11 53))
(declare-fun c_main_~x1~4 () (_ FloatingPoint 11 53))
(declare-fun c_main_~x1~4_primed () (_ FloatingPoint 11 53))
(declare-fun c_main_~x2~4_primed () (_ FloatingPoint 11 53))
; End decls
; Start constraints (2)
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven 1130.0)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     3000.0)
                                   c_main_~x0~4))
                   c_main_~x1~4)))
  (and (bvslt c_main_~i~4 #x00000064)
       (= c_main_~x2~4_primed
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven 111.0)
                  a!1))
       (= c_main_~x0~4_primed c_main_~x1~4)
       (= c_main_~x1~4_primed c_main_~x2~4_primed))))
(assert (= (bvadd c_main_~i~4 #xffffffff) #x00000000))
; End constraints
(check-sat)
(exit)
