; Start decls (12)
(declare-fun v_SqrtR_~Input_2_const_1153083841 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~cond~4_3_const_-1357618321 () (_ BitVec 32))
(declare-fun v_SqrtR_~cond~4_4_const_-1357618322 () (_ BitVec 32))
(declare-fun v_SqrtR_~i~4_2_const_-1484952015 () (_ BitVec 32))
(declare-fun v_SqrtR_~i~4_3_const_-1484952016 () (_ BitVec 32))
(declare-fun v_SqrtR_~linf~4_2_const_-1234996430 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~lsup~4_2_const_-1813226745 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~residu~4_2_const_8319327 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~xnp1~4_2_const_1579108604 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~xn~4_2_const_1851013811 () (_ FloatingPoint 11 53))
(declare-fun v_SqrtR_~xn~4_3_const_1851013820 () (_ FloatingPoint 11 53))
(declare-fun v_~_EPS_2_const_559985957 () (_ FloatingPoint 11 53))
; End decls
; Start constraints (8)
(assert (not (= v_SqrtR_~cond~4_4_const_-1357618322 #x00000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven 3.0)
                                   v_SqrtR_~Input_2_const_1153083841)
                           v_SqrtR_~xn~4_3_const_1851013820)
                   v_SqrtR_~xn~4_3_const_1851013820)))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   v_SqrtR_~Input_2_const_1153083841
                                   v_SqrtR_~xn~4_3_const_1851013820)
                           v_SqrtR_~xn~4_3_const_1851013820)
                   (fp.add roundNearestTiesToEven
                           (fp.neg ((_ to_fp 11 53) roundNearestTiesToEven 10.0))
                           a!1))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           v_SqrtR_~xn~4_3_const_1851013820
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven 15.0)
                                   a!2))
                   ((_ to_fp 11 53) roundNearestTiesToEven 8.0))))
  (= v_SqrtR_~xnp1~4_2_const_1579108604 a!3)))))
(assert (= v_SqrtR_~residu~4_2_const_8319327
   (fp.mul roundNearestTiesToEven
           ((_ to_fp 11 53) roundNearestTiesToEven 2.0)
           (fp.sub roundNearestTiesToEven
                   v_SqrtR_~xnp1~4_2_const_1579108604
                   v_SqrtR_~xn~4_3_const_1851013820))))
(assert (= v_SqrtR_~xn~4_2_const_1851013811 v_SqrtR_~xnp1~4_2_const_1579108604))
(assert (= v_SqrtR_~lsup~4_2_const_-1813226745
   (fp.mul roundNearestTiesToEven
           v_~_EPS_2_const_559985957
           (fp.add roundNearestTiesToEven
                   v_SqrtR_~xn~4_2_const_1851013811
                   v_SqrtR_~xnp1~4_2_const_1579108604))))
(assert (= v_SqrtR_~linf~4_2_const_-1234996430
   (fp.neg v_SqrtR_~lsup~4_2_const_-1813226745)))
(assert (= v_SqrtR_~cond~4_3_const_-1357618321
   (ite (or (fp.gt v_SqrtR_~residu~4_2_const_8319327
                   v_SqrtR_~lsup~4_2_const_-1813226745)
            (fp.lt v_SqrtR_~residu~4_2_const_8319327
                   v_SqrtR_~linf~4_2_const_-1234996430))
        #x00000001
        #x00000000)))
(assert (= (bvadd v_SqrtR_~i~4_2_const_-1484952015 #xffffffff)
   v_SqrtR_~i~4_3_const_-1484952016))
; End constraints
(check-sat)
(exit)
