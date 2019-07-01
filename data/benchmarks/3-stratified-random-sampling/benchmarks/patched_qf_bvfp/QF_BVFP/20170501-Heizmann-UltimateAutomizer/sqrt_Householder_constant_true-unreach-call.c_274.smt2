; Start decls (13)
(declare-fun |c_SqrtR_#in~Input| () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~Input () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~cond~4 () (_ BitVec 32))
(declare-fun c_SqrtR_~cond~4_primed () (_ BitVec 32))
(declare-fun c_SqrtR_~i~4 () (_ BitVec 32))
(declare-fun c_SqrtR_~i~4_primed () (_ BitVec 32))
(declare-fun c_SqrtR_~linf~4_primed () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~lsup~4_primed () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~residu~4_primed () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~xnp1~4_primed () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~xn~4 () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~xn~4_primed () (_ FloatingPoint 11 53))
(declare-fun c_~_EPS () (_ FloatingPoint 11 53))
; End decls
; Start constraints (2)
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven 3.0)
                                   c_SqrtR_~Input)
                           c_SqrtR_~xn~4)
                   c_SqrtR_~xn~4))
      (a!4 (= c_SqrtR_~cond~4_primed
              (ite (or (fp.gt c_SqrtR_~residu~4_primed c_SqrtR_~lsup~4_primed)
                       (fp.lt c_SqrtR_~residu~4_primed c_SqrtR_~linf~4_primed))
                   #x00000001
                   #x00000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   c_SqrtR_~Input
                                   c_SqrtR_~xn~4)
                           c_SqrtR_~xn~4)
                   (fp.add roundNearestTiesToEven
                           (fp.neg ((_ to_fp 11 53) roundNearestTiesToEven 10.0))
                           a!1))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           c_SqrtR_~xn~4
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven 15.0)
                                   a!2))
                   ((_ to_fp 11 53) roundNearestTiesToEven 8.0))))
  (and (not (= c_SqrtR_~cond~4 #x00000000))
       (= c_SqrtR_~xnp1~4_primed a!3)
       (= c_SqrtR_~residu~4_primed
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven 2.0)
                  (fp.sub roundNearestTiesToEven
                          c_SqrtR_~xnp1~4_primed
                          c_SqrtR_~xn~4)))
       (= c_SqrtR_~xn~4_primed c_SqrtR_~xnp1~4_primed)
       (= c_SqrtR_~lsup~4_primed
          (fp.mul roundNearestTiesToEven
                  c_~_EPS
                  (fp.add roundNearestTiesToEven
                          c_SqrtR_~xn~4_primed
                          c_SqrtR_~xnp1~4_primed)))
       (= c_SqrtR_~linf~4_primed (fp.neg c_SqrtR_~lsup~4_primed))
       a!4
       (= (bvadd c_SqrtR_~i~4_primed #xffffffff) c_SqrtR_~i~4))))))
(assert (= |c_SqrtR_#in~Input| c_SqrtR_~Input))
; End constraints
(check-sat)
(exit)
