; Start decls (12)
(declare-fun c_SqrtR_~Input () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~cond~6 () (_ BitVec 32))
(declare-fun c_SqrtR_~cond~6_primed () (_ BitVec 32))
(declare-fun c_SqrtR_~i~6 () (_ BitVec 32))
(declare-fun c_SqrtR_~i~6_primed () (_ BitVec 32))
(declare-fun c_SqrtR_~linf~6_primed () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~lsup~6_primed () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~residu~6_primed () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~xnp1~6_primed () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~xn~6 () (_ FloatingPoint 11 53))
(declare-fun c_SqrtR_~xn~6_primed () (_ FloatingPoint 11 53))
(declare-fun c_~_EPS () (_ FloatingPoint 11 53))
; End decls
; Start constraints (2)
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   c_SqrtR_~xn~6
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven #x00000001)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven
                                           c_SqrtR_~Input
                                           c_SqrtR_~xn~6)
                                   c_SqrtR_~xn~6))))
      (a!3 (= c_SqrtR_~cond~6_primed
              (ite (or (fp.gt c_SqrtR_~residu~6_primed c_SqrtR_~lsup~6_primed)
                       (fp.lt c_SqrtR_~residu~6_primed c_SqrtR_~linf~6_primed))
                   #x00000001
                   #x00000000))))
(let ((a!2 (= c_SqrtR_~xnp1~6_primed
              (fp.add roundNearestTiesToEven
                      c_SqrtR_~xn~6
                      (fp.div roundNearestTiesToEven
                              a!1
                              ((_ to_fp 11 53) roundNearestTiesToEven 2.0))))))
  (and (not (= c_SqrtR_~cond~6 #x00000000))
       a!2
       (= c_SqrtR_~residu~6_primed
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) roundNearestTiesToEven 2.0)
                  (fp.sub roundNearestTiesToEven
                          c_SqrtR_~xnp1~6_primed
                          c_SqrtR_~xn~6)))
       (= c_SqrtR_~xn~6_primed c_SqrtR_~xnp1~6_primed)
       (= c_SqrtR_~lsup~6_primed
          (fp.mul roundNearestTiesToEven
                  c_~_EPS
                  (fp.add roundNearestTiesToEven
                          c_SqrtR_~xn~6_primed
                          c_SqrtR_~xnp1~6_primed)))
       (= c_SqrtR_~linf~6_primed (fp.neg c_SqrtR_~lsup~6_primed))
       a!3
       (= (bvadd c_SqrtR_~i~6_primed #xffffffff) c_SqrtR_~i~6)))))
(assert (not (= ((_ to_fp 11 53) roundNearestTiesToEven 1.0) c_SqrtR_~xnp1~6_primed)))
; End constraints
(check-sat)
(exit)
