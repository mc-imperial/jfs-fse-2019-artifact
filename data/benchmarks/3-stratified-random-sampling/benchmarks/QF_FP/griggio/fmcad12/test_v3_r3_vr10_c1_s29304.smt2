(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status unknown)
;; MathSAT API call trace
;; generated on 05/20/15 17:24:54

(declare-fun x0 () (_ FloatingPoint 8 24))
(declare-fun x1 () (_ FloatingPoint 8 24))
(declare-fun x2 () (_ FloatingPoint 8 24))
(define-fun _t_10 () (_ FloatingPoint 8 24) (fp #b0 #b10000010 #b01000000000000000000000))
(define-fun _t_12 () (_ FloatingPoint 8 24) (fp #b1 #b10000010 #b01000000000000000000000))
(define-fun _t_13 () (_ FloatingPoint 8 24) x0)
(define-fun _t_14 () Bool (fp.leq _t_12 _t_13))
(define-fun _t_15 () Bool (fp.leq _t_13 _t_10))
(define-fun _t_16 () Bool (and _t_14 _t_15))
(assert _t_16)
(define-fun _t_17 () (_ FloatingPoint 8 24) x1)
(define-fun _t_18 () Bool (fp.leq _t_12 _t_17))
(define-fun _t_19 () Bool (fp.leq _t_17 _t_10))
(define-fun _t_20 () Bool (and _t_18 _t_19))
(assert _t_20)
(define-fun _t_21 () (_ FloatingPoint 8 24) x2)
(define-fun _t_22 () Bool (fp.leq _t_12 _t_21))
(define-fun _t_23 () Bool (fp.leq _t_21 _t_10))
(define-fun _t_24 () Bool (and _t_22 _t_23))
(assert _t_24)
(define-fun _t_3 () RoundingMode RNE)
(define-fun _t_26 () (_ FloatingPoint 8 24) (fp #b0 #b00000000 #b00000000000000000000000))
(define-fun _t_29 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10000101101000011100100))
(define-fun _t_32 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01110001101010011111101))
(define-fun _t_33 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_32))
(define-fun _t_34 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_33))
(define-fun _t_36 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b01111110111110011101101))
(define-fun _t_37 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_36))
(define-fun _t_38 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_37))
(define-fun _t_41 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b10010111100011010100111))
(define-fun _t_42 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_41))
(define-fun _t_43 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_38 _t_42))
(define-fun _t_44 () Bool (fp.leq _t_29 _t_43))
(assert _t_44)
(define-fun _t_46 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01110101110000101001000))
(define-fun _t_49 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01100000010000011000100))
(define-fun _t_50 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_49))
(define-fun _t_51 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_50))
(define-fun _t_53 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11111011111001110110110))
(define-fun _t_54 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_53))
(define-fun _t_55 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_51 _t_54))
(define-fun _t_57 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10011000100100110111001))
(define-fun _t_58 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_57))
(define-fun _t_59 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_55 _t_58))
(define-fun _t_60 () Bool (fp.leq _t_46 _t_59))
(assert _t_60)
(define-fun _t_63 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11110001001001101110100))
(define-fun _t_66 () (_ FloatingPoint 8 24) (fp #b1 #b01110111 #b00000110001001001101111))
(define-fun _t_67 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_66))
(define-fun _t_68 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_26 _t_67))
(define-fun _t_71 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01101001011110001101001))
(define-fun _t_72 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_71))
(define-fun _t_73 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_68 _t_72))
(define-fun _t_75 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01000001100010010011100))
(define-fun _t_76 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_75))
(define-fun _t_77 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_73 _t_76))
(define-fun _t_78 () Bool (fp.leq _t_77 _t_63))
(assert _t_78)
(check-sat)
(exit)
