; Start decls (17)
(declare-fun |v_main_#t~nondet8_2_const_1421505057| () (_ FloatingPoint 11 53))
(declare-fun v_main_~A1~6_3_const_-1920998903 () (_ FloatingPoint 11 53))
(declare-fun v_main_~A2~6_3_const_-1922434422 () (_ FloatingPoint 11 53))
(declare-fun v_main_~A3~6_3_const_-1919167733 () (_ FloatingPoint 11 53))
(declare-fun v_main_~B1~6_3_const_-217891416 () (_ FloatingPoint 11 53))
(declare-fun v_main_~B2~6_3_const_-214101463 () (_ FloatingPoint 11 53))
(declare-fun v_main_~E0~6_3_const_-198136052 () (_ FloatingPoint 11 53))
(declare-fun v_main_~E0~6_4_const_-198136051 () (_ FloatingPoint 11 53))
(declare-fun v_main_~E1~6_2_const_-199063668 () (_ FloatingPoint 11 53))
(declare-fun v_main_~E~6_3_const_499897828 () (_ FloatingPoint 11 53))
(declare-fun v_main_~E~6_4_const_499897829 () (_ FloatingPoint 11 53))
(declare-fun v_main_~S0~6_3_const_-334182818 () (_ FloatingPoint 11 53))
(declare-fun v_main_~S0~6_4_const_-334182817 () (_ FloatingPoint 11 53))
(declare-fun v_main_~S1~6_2_const_-335094050 () (_ FloatingPoint 11 53))
(declare-fun v_main_~S~6_3_const_42769642 () (_ FloatingPoint 11 53))
(declare-fun v_main_~S~6_4_const_42769643 () (_ FloatingPoint 11 53))
(declare-fun v_main_~i~6_6_const_-2080320852 () (_ BitVec 32))
; End decls
; Start constraints (9)
(assert (bvsle v_main_~i~6_6_const_-2080320852 #x000f4240))
(assert (= v_main_~E1~6_2_const_-199063668 v_main_~E0~6_4_const_-198136051))
(assert (= v_main_~E0~6_3_const_-198136052 v_main_~E~6_4_const_499897829))
(assert (= v_main_~E~6_3_const_499897828 |v_main_#t~nondet8_2_const_1421505057|))
(assert (fp.geq v_main_~E~6_3_const_499897828 (_ +zero 11 53)))
(assert (fp.leq v_main_~E~6_3_const_499897828
        ((_ to_fp 11 53) roundNearestTiesToEven 1.0)))
(assert (= v_main_~S1~6_2_const_-335094050 v_main_~S0~6_4_const_-334182817))
(assert (= v_main_~S0~6_3_const_-334182818 v_main_~S~6_4_const_42769643))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven
                                           v_main_~A1~6_3_const_-1920998903
                                           v_main_~E~6_3_const_499897828)
                                   (fp.mul roundNearestTiesToEven
                                           v_main_~E0~6_3_const_-198136052
                                           v_main_~A2~6_3_const_-1922434422))
                           (fp.mul roundNearestTiesToEven
                                   v_main_~E1~6_2_const_-199063668
                                   v_main_~A3~6_3_const_-1919167733))
                   (fp.mul roundNearestTiesToEven
                           v_main_~S0~6_3_const_-334182818
                           v_main_~B1~6_3_const_-217891416))))
  (= v_main_~S~6_3_const_42769642
     (fp.add roundNearestTiesToEven
             a!1
             (fp.mul roundNearestTiesToEven
                     v_main_~S1~6_2_const_-335094050
                     v_main_~B2~6_3_const_-214101463)))))
; End constraints
(check-sat)
(exit)
