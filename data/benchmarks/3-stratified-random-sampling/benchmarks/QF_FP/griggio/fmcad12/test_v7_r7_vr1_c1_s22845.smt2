(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status unknown)
;; MathSAT API call trace
;; generated on 05/20/15 17:24:57

(declare-fun x0 () (_ FloatingPoint 8 24))
(declare-fun x1 () (_ FloatingPoint 8 24))
(declare-fun x2 () (_ FloatingPoint 8 24))
(declare-fun x3 () (_ FloatingPoint 8 24))
(declare-fun x4 () (_ FloatingPoint 8 24))
(declare-fun x5 () (_ FloatingPoint 8 24))
(declare-fun x6 () (_ FloatingPoint 8 24))
(define-fun _t_10 () (_ FloatingPoint 8 24) (fp #b0 #b01111111 #b00000000000000000000000))
(define-fun _t_12 () (_ FloatingPoint 8 24) (fp #b1 #b01111111 #b00000000000000000000000))
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
(define-fun _t_25 () (_ FloatingPoint 8 24) x3)
(define-fun _t_26 () Bool (fp.leq _t_12 _t_25))
(define-fun _t_27 () Bool (fp.leq _t_25 _t_10))
(define-fun _t_28 () Bool (and _t_26 _t_27))
(assert _t_28)
(define-fun _t_29 () (_ FloatingPoint 8 24) x4)
(define-fun _t_30 () Bool (fp.leq _t_12 _t_29))
(define-fun _t_31 () Bool (fp.leq _t_29 _t_10))
(define-fun _t_32 () Bool (and _t_30 _t_31))
(assert _t_32)
(define-fun _t_33 () (_ FloatingPoint 8 24) x5)
(define-fun _t_34 () Bool (fp.leq _t_12 _t_33))
(define-fun _t_35 () Bool (fp.leq _t_33 _t_10))
(define-fun _t_36 () Bool (and _t_34 _t_35))
(assert _t_36)
(define-fun _t_37 () (_ FloatingPoint 8 24) x6)
(define-fun _t_38 () Bool (fp.leq _t_12 _t_37))
(define-fun _t_39 () Bool (fp.leq _t_37 _t_10))
(define-fun _t_40 () Bool (and _t_38 _t_39))
(assert _t_40)
(define-fun _t_3 () RoundingMode RNE)
(define-fun _t_42 () (_ FloatingPoint 8 24) (fp #b0 #b00000000 #b00000000000000000000000))
(define-fun _t_45 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10000010000011000100100))
(define-fun _t_47 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010111000010100011110))
(define-fun _t_48 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_47))
(define-fun _t_49 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_48))
(define-fun _t_52 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00101111100111011011001))
(define-fun _t_53 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_52))
(define-fun _t_54 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_49 _t_53))
(define-fun _t_56 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10100011010100111111100))
(define-fun _t_57 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_56))
(define-fun _t_58 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_54 _t_57))
(define-fun _t_60 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01011010000111001010110))
(define-fun _t_61 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_60))
(define-fun _t_62 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_58 _t_61))
(define-fun _t_65 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11010011111101111100110))
(define-fun _t_66 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_65))
(define-fun _t_67 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_62 _t_66))
(define-fun _t_69 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10110111010010111100011))
(define-fun _t_70 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_69))
(define-fun _t_71 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_67 _t_70))
(define-fun _t_73 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10100001010001111010110))
(define-fun _t_74 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_73))
(define-fun _t_75 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_71 _t_74))
(define-fun _t_76 () Bool (fp.leq _t_45 _t_75))
(assert _t_76)
(define-fun _t_78 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00001111010111000010011))
(define-fun _t_80 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00110100001110010101100))
(define-fun _t_81 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_80))
(define-fun _t_82 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_81))
(define-fun _t_84 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010101100000010000011))
(define-fun _t_85 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_84))
(define-fun _t_86 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_82 _t_85))
(define-fun _t_89 () (_ FloatingPoint 8 24) (fp #b1 #b01111000 #b00000110001001001101111))
(define-fun _t_90 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_89))
(define-fun _t_91 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_86 _t_90))
(define-fun _t_93 () (_ FloatingPoint 8 24) (fp #b0 #b01111001 #b00010110100001110010110))
(define-fun _t_94 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_93))
(define-fun _t_95 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_91 _t_94))
(define-fun _t_98 () (_ FloatingPoint 8 24) (fp #b1 #b01111000 #b01101000011100101010111))
(define-fun _t_99 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_98))
(define-fun _t_100 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_95 _t_99))
(define-fun _t_103 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11011110001101010100000))
(define-fun _t_104 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_103))
(define-fun _t_105 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_100 _t_104))
(define-fun _t_108 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01111000110101001111111))
(define-fun _t_109 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_108))
(define-fun _t_110 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_105 _t_109))
(define-fun _t_111 () Bool (fp.leq _t_78 _t_110))
(assert _t_111)
(define-fun _t_113 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01000100100110111010011))
(define-fun _t_116 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10110101110000101001000))
(define-fun _t_117 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_116))
(define-fun _t_118 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_117))
(define-fun _t_120 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11000100100110111010011))
(define-fun _t_121 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_120))
(define-fun _t_122 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_118 _t_121))
(define-fun _t_125 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00101011000000100000110))
(define-fun _t_126 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_125))
(define-fun _t_127 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_122 _t_126))
(define-fun _t_129 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10110111010010111100011))
(define-fun _t_130 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_129))
(define-fun _t_131 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_127 _t_130))
(define-fun _t_133 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11010001111010111000011))
(define-fun _t_134 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_133))
(define-fun _t_135 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_131 _t_134))
(define-fun _t_137 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01001010110000001000010))
(define-fun _t_138 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_137))
(define-fun _t_139 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_135 _t_138))
(define-fun _t_141 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11111100111011011001001))
(define-fun _t_142 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_141))
(define-fun _t_143 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_139 _t_142))
(define-fun _t_144 () Bool (fp.leq _t_143 _t_113))
(assert _t_144)
(define-fun _t_147 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01110000001000001100001))
(define-fun _t_149 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10100001110010101100000))
(define-fun _t_150 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_149))
(define-fun _t_151 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_150))
(define-fun _t_153 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10001111110111110011110))
(define-fun _t_154 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_153))
(define-fun _t_155 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_151 _t_154))
(define-fun _t_157 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010110000001000001100))
(define-fun _t_158 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_157))
(define-fun _t_159 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_155 _t_158))
(define-fun _t_161 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01101000111101011100001))
(define-fun _t_162 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_161))
(define-fun _t_163 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_159 _t_162))
(define-fun _t_165 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101110100101111000110))
(define-fun _t_166 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_165))
(define-fun _t_167 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_163 _t_166))
(define-fun _t_169 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10101001111110111110011))
(define-fun _t_170 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_169))
(define-fun _t_171 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_167 _t_170))
(define-fun _t_173 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01111100111011011001001))
(define-fun _t_174 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_173))
(define-fun _t_175 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_171 _t_174))
(define-fun _t_176 () Bool (fp.leq _t_175 _t_147))
(assert _t_176)
(define-fun _t_179 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01000111001010110000001))
(define-fun _t_182 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00010001011010000111001))
(define-fun _t_183 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_182))
(define-fun _t_184 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_183))
(define-fun _t_186 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b11011111001110110110001))
(define-fun _t_187 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_186))
(define-fun _t_188 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_184 _t_187))
(define-fun _t_191 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01001001101110100101111))
(define-fun _t_192 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_191))
(define-fun _t_193 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_188 _t_192))
(define-fun _t_195 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10001110110110010001011))
(define-fun _t_196 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_195))
(define-fun _t_197 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_193 _t_196))
(define-fun _t_199 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10010110000001000001100))
(define-fun _t_200 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_199))
(define-fun _t_201 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_197 _t_200))
(define-fun _t_203 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10011111101111100111010))
(define-fun _t_204 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_203))
(define-fun _t_205 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_201 _t_204))
(define-fun _t_208 () (_ FloatingPoint 8 24) (fp #b1 #b01110111 #b11001010110000001000001))
(define-fun _t_209 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_208))
(define-fun _t_210 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_205 _t_209))
(define-fun _t_211 () Bool (fp.leq _t_210 _t_179))
(assert _t_211)
(define-fun _t_213 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b01010011111101111100111))
(define-fun _t_215 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10010001011010000111001))
(define-fun _t_216 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_215))
(define-fun _t_217 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_216))
(define-fun _t_220 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00011010100111111011111))
(define-fun _t_221 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_220))
(define-fun _t_222 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_217 _t_221))
(define-fun _t_225 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10010011011101001011110))
(define-fun _t_226 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_225))
(define-fun _t_227 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_222 _t_226))
(define-fun _t_229 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10011111001110110110001))
(define-fun _t_230 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_229))
(define-fun _t_231 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_227 _t_230))
(define-fun _t_233 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b11000110101001111111000))
(define-fun _t_234 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_233))
(define-fun _t_235 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_231 _t_234))
(define-fun _t_238 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00000000000000000000000))
(define-fun _t_239 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_238))
(define-fun _t_240 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_235 _t_239))
(define-fun _t_242 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b01011000000100000110001))
(define-fun _t_243 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_242))
(define-fun _t_244 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_240 _t_243))
(define-fun _t_245 () Bool (fp.leq _t_244 _t_213))
(assert _t_245)
(define-fun _t_247 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00100011110101110000100))
(define-fun _t_249 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10111010010111100011010))
(define-fun _t_250 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_249))
(define-fun _t_251 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_250))
(define-fun _t_254 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01011000000100000110000))
(define-fun _t_255 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_254))
(define-fun _t_256 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_251 _t_255))
(define-fun _t_258 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b01111110111110011101101))
(define-fun _t_259 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_258))
(define-fun _t_260 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_256 _t_259))
(define-fun _t_262 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01100101011000000100001))
(define-fun _t_263 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_262))
(define-fun _t_264 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_260 _t_263))
(define-fun _t_266 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01110100101111000110100))
(define-fun _t_267 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_266))
(define-fun _t_268 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_264 _t_267))
(define-fun _t_271 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01010001111010111000011))
(define-fun _t_272 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_271))
(define-fun _t_273 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_268 _t_272))
(define-fun _t_276 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10100110111010010111100))
(define-fun _t_277 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_276))
(define-fun _t_278 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_273 _t_277))
(define-fun _t_279 () Bool (fp.leq _t_278 _t_247))
(assert _t_279)
(check-sat)
(exit)
