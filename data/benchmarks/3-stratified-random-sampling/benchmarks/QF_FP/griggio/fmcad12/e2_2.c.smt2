(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status unknown)
;; MathSAT API call trace
;; generated on 05/20/15 17:24:51

(declare-fun b20 () (_ FloatingPoint 11 53))
(declare-fun b28 () (_ FloatingPoint 11 53))
(declare-fun b42 () (_ FloatingPoint 11 53))
(declare-fun b45 () (_ FloatingPoint 11 53))
(declare-fun b23 () (_ FloatingPoint 11 53))
(declare-fun b32 () (_ FloatingPoint 11 53))
(declare-fun b35 () (_ FloatingPoint 11 53))
(declare-fun b10 () (_ FloatingPoint 11 53))
(declare-fun b22 () (_ FloatingPoint 11 53))
(declare-fun b25 () (_ FloatingPoint 11 53))
(declare-fun b16 () (_ FloatingPoint 11 53))
(declare-fun b12 () (_ FloatingPoint 11 53))
(define-fun _t_3 () RoundingMode RNE)
(define-fun _t_9 () (_ FloatingPoint 11 53) b10)
(define-fun _t_10 () (_ FloatingPoint 11 53) b16)
(define-fun _t_11 () (_ FloatingPoint 11 53) (fp.add _t_3 _t_9 _t_10))
(define-fun _t_12 () (_ FloatingPoint 11 53) b12)
(define-fun _t_13 () Bool (fp.lt _t_12 _t_11))
(define-fun _t_14 () Bool (fp.leq _t_9 _t_12))
(define-fun _t_15 () Bool (and _t_13 _t_14))
(define-fun _t_16 () (_ FloatingPoint 11 53) b20)
(define-fun _t_17 () (_ FloatingPoint 11 53) b25)
(define-fun _t_18 () Bool (fp.leq _t_16 _t_17))
(define-fun _t_19 () Bool (and _t_15 _t_18))
(define-fun _t_20 () (_ FloatingPoint 11 53) b28)
(define-fun _t_21 () Bool (fp.leq _t_20 _t_16))
(define-fun _t_22 () Bool (and _t_19 _t_21))
(define-fun _t_23 () (_ FloatingPoint 11 53) b32)
(define-fun _t_24 () Bool (fp.leq _t_9 _t_23))
(define-fun _t_25 () Bool (and _t_22 _t_24))
(define-fun _t_26 () (_ FloatingPoint 11 53) b35)
(define-fun _t_27 () Bool (fp.leq _t_26 _t_9))
(define-fun _t_28 () Bool (and _t_25 _t_27))
(define-fun _t_29 () (_ FloatingPoint 11 53) b22)
(define-fun _t_30 () Bool (fp.leq _t_29 _t_23))
(define-fun _t_31 () Bool (and _t_28 _t_30))
(define-fun _t_32 () Bool (fp.leq _t_26 _t_29))
(define-fun _t_33 () Bool (and _t_31 _t_32))
(define-fun _t_34 () (_ FloatingPoint 11 53) b23)
(define-fun _t_35 () (_ FloatingPoint 11 53) b42)
(define-fun _t_36 () Bool (fp.leq _t_34 _t_35))
(define-fun _t_37 () Bool (and _t_33 _t_36))
(define-fun _t_38 () (_ FloatingPoint 11 53) b45)
(define-fun _t_39 () Bool (fp.leq _t_38 _t_34))
(define-fun _t_40 () Bool (and _t_37 _t_39))
(assert _t_40)
(check-sat)
(exit)
