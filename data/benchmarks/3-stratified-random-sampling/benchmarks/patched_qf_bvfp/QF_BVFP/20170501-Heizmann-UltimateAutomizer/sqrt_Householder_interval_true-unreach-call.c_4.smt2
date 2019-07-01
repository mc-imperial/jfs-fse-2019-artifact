; Start decls (12)
(declare-fun v_SqrtR_~Input_2_const_1153083841 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~cond~6_3_const_-1357616147 () (_ BitVec 32))
(declare-fun v_SqrtR_~cond~6_4_const_-1357616148 () (_ BitVec 32))
(declare-fun v_SqrtR_~i~6_2_const_-1484974409 () (_ BitVec 32))
(declare-fun v_SqrtR_~i~6_3_const_-1484974410 () (_ BitVec 32))
(declare-fun v_SqrtR_~linf~6_2_const_-1234994244 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~lsup~6_2_const_-1813240959 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~residu~6_2_const_8321497 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~xnp1~6_2_const_1579110782 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~xn~6_2_const_1850999613 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~xn~6_3_const_1850999614 () (_ FloatingPoint 11 53))
(declare-fun v_~_EPS_2_const_559985957 () (_ FloatingPoint 11 53))
; End decls
; Start constraints (8)
(assert (not (= v_SqrtR_~cond~6_4_const_-1357616148 #x00000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven 3.0)
                                   v_SqrtR_~Input_2_const_1153083841)
                           v_SqrtR_~xn~6_3_const_1850999614)
                   v_SqrtR_~xn~6_3_const_1850999614)))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   v_SqrtR_~Input_2_const_1153083841
                                   v_SqrtR_~xn~6_3_const_1850999614)
                           v_SqrtR_~xn~6_3_const_1850999614)
                   (fp.add roundNearestTiesToEven
                           (fp.neg ((_ to_fp 11 53) roundNearestTiesToEven 10.0))
                           a!1))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           v_SqrtR_~xn~6_3_const_1850999614
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven 15.0)
                                   a!2))
                   ((_ to_fp 11 53) roundNearestTiesToEven 8.0))))
  (= v_SqrtR_~xnp1~6_2_const_1579110782 a!3)))))
(assert (= v_SqrtR_~residu~6_2_const_8321497
   (fp.mul roundNearestTiesToEven
           ((_ to_fp 11 53) roundNearestTiesToEven 2.0)
           (fp.sub roundNearestTiesToEven
                   v_SqrtR_~xnp1~6_2_const_1579110782
                   v_SqrtR_~xn~6_3_const_1850999614))))
(assert (= v_SqrtR_~xn~6_2_const_1850999613 v_SqrtR_~xnp1~6_2_const_1579110782))
(assert (= v_SqrtR_~lsup~6_2_const_-1813240959
   (fp.mul roundNearestTiesToEven
           v_~_EPS_2_const_559985957
           (fp.add roundNearestTiesToEven
                   v_SqrtR_~xn~6_2_const_1850999613
                   v_SqrtR_~xnp1~6_2_const_1579110782))))
(assert (= v_SqrtR_~linf~6_2_const_-1234994244
   (fp.neg v_SqrtR_~lsup~6_2_const_-1813240959)))
(assert (= v_SqrtR_~cond~6_3_const_-1357616147
   (ite (or (fp.gt v_SqrtR_~residu~6_2_const_8321497
                   v_SqrtR_~lsup~6_2_const_-1813240959)
            (fp.lt v_SqrtR_~residu~6_2_const_8321497
                   v_SqrtR_~linf~6_2_const_-1234994244))
        #x00000001
        #x00000000)))
(assert (= (bvadd v_SqrtR_~i~6_2_const_-1484974409 #xffffffff)
   v_SqrtR_~i~6_3_const_-1484974410))
; End constraints
(check-sat)
(exit)
