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
(define-fun _t_10 () (_ FloatingPoint 8 24) (fp #b0 #b10000001 #b01000000000000000000000))
(define-fun _t_12 () (_ FloatingPoint 8 24) (fp #b1 #b10000001 #b01000000000000000000000))
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
(define-fun _t_44 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b10110010001011010000111))
(define-fun _t_46 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10010111100011010101000))
(define-fun _t_47 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_46))
(define-fun _t_48 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_47))
(define-fun _t_50 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b01101110100101111000111))
(define-fun _t_51 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_50))
(define-fun _t_52 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_48 _t_51))
(define-fun _t_55 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11001110110110010001011))
(define-fun _t_56 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_55))
(define-fun _t_57 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_52 _t_56))
(define-fun _t_60 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11000010100011110101101))
(define-fun _t_61 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_60))
(define-fun _t_62 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_57 _t_61))
(define-fun _t_64 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b11110011101101100100011))
(define-fun _t_65 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_64))
(define-fun _t_66 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_62 _t_65))
(define-fun _t_69 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11110110110010001011001))
(define-fun _t_70 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_69))
(define-fun _t_71 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_66 _t_70))
(define-fun _t_74 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b10100101111000110101010))
(define-fun _t_75 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_74))
(define-fun _t_76 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_71 _t_75))
(define-fun _t_77 () Bool (fp.leq _t_76 _t_44))
(assert _t_77)
(define-fun _t_80 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11110110110010001011001))
(define-fun _t_82 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101010011111101111100))
(define-fun _t_83 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_82))
(define-fun _t_84 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_83))
(define-fun _t_87 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b00001010001111010111000))
(define-fun _t_88 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_87))
(define-fun _t_89 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_84 _t_88))
(define-fun _t_91 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11000001100010010011100))
(define-fun _t_92 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_91))
(define-fun _t_93 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_89 _t_92))
(define-fun _t_96 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10000101101000011100100))
(define-fun _t_97 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_96))
(define-fun _t_98 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_93 _t_97))
(define-fun _t_100 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11011111001110110110010))
(define-fun _t_101 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_100))
(define-fun _t_102 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_98 _t_101))
(define-fun _t_104 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01101111000110101010000))
(define-fun _t_105 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_104))
(define-fun _t_106 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_102 _t_105))
(define-fun _t_109 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11100001010001111010110))
(define-fun _t_110 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_109))
(define-fun _t_111 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_106 _t_110))
(define-fun _t_112 () Bool (fp.leq _t_80 _t_111))
(assert _t_112)
(define-fun _t_114 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b11111011111001110110101))
(define-fun _t_116 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b10011001100110011001101))
(define-fun _t_117 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_116))
(define-fun _t_118 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_117))
(define-fun _t_120 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b11001010110000001000001))
(define-fun _t_121 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_120))
(define-fun _t_122 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_118 _t_121))
(define-fun _t_125 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01101110000101000111100))
(define-fun _t_126 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_125))
(define-fun _t_127 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_122 _t_126))
(define-fun _t_129 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01010010111100011010101))
(define-fun _t_130 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_129))
(define-fun _t_131 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_127 _t_130))
(define-fun _t_133 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10100100010110100001110))
(define-fun _t_134 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_133))
(define-fun _t_135 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_131 _t_134))
(define-fun _t_137 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01001000101101000011100))
(define-fun _t_138 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_137))
(define-fun _t_139 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_135 _t_138))
(define-fun _t_141 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b10010001011010000111000))
(define-fun _t_142 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_141))
(define-fun _t_143 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_139 _t_142))
(define-fun _t_144 () Bool (fp.leq _t_143 _t_114))
(assert _t_144)
(define-fun _t_147 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11110110010001011010001))
(define-fun _t_150 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10111010010111100011010))
(define-fun _t_151 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_150))
(define-fun _t_152 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_151))
(define-fun _t_155 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011101101100100010110))
(define-fun _t_156 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_155))
(define-fun _t_157 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_152 _t_156))
(define-fun _t_160 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11111010111000010100100))
(define-fun _t_161 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_160))
(define-fun _t_162 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_157 _t_161))
(define-fun _t_164 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10100010010011011101001))
(define-fun _t_165 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_164))
(define-fun _t_166 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_162 _t_165))
(define-fun _t_169 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01011011001000101101000))
(define-fun _t_170 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_169))
(define-fun _t_171 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_166 _t_170))
(define-fun _t_173 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b11001110110110010001010))
(define-fun _t_174 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_173))
(define-fun _t_175 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_171 _t_174))
(define-fun _t_178 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00000110001001001101110))
(define-fun _t_179 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_178))
(define-fun _t_180 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_175 _t_179))
(define-fun _t_181 () Bool (fp.leq _t_147 _t_180))
(assert _t_181)
(define-fun _t_182 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00000110001001001101110))
(define-fun _t_184 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b11000100100110111010010))
(define-fun _t_187 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b11111011111001110110110))
(define-fun _t_188 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_187))
(define-fun _t_189 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_188))
(define-fun _t_190 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_182))
(define-fun _t_191 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_189 _t_190))
(define-fun _t_194 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01110110110010001011001))
(define-fun _t_195 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_194))
(define-fun _t_196 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_191 _t_195))
(define-fun _t_198 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10001000001100010010011))
(define-fun _t_199 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_198))
(define-fun _t_200 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_196 _t_199))
(define-fun _t_203 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10111001010110000001000))
(define-fun _t_204 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_203))
(define-fun _t_205 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_200 _t_204))
(define-fun _t_207 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b10101100000010000011000))
(define-fun _t_208 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_207))
(define-fun _t_209 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_205 _t_208))
(define-fun _t_211 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10110000101000111101100))
(define-fun _t_212 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_211))
(define-fun _t_213 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_209 _t_212))
(define-fun _t_214 () Bool (fp.leq _t_184 _t_213))
(assert _t_214)
(define-fun _t_217 () (_ FloatingPoint 8 24) (fp #b1 #b01111111 #b00000000000000000000000))
(define-fun _t_220 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10011110101110000101001))
(define-fun _t_221 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_220))
(define-fun _t_222 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_221))
(define-fun _t_225 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01010111100011010101000))
(define-fun _t_226 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_225))
(define-fun _t_227 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_222 _t_226))
(define-fun _t_229 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01111000010100011110110))
(define-fun _t_230 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_229))
(define-fun _t_231 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_227 _t_230))
(define-fun _t_233 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00011000100100110111001))
(define-fun _t_234 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_233))
(define-fun _t_235 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_231 _t_234))
(define-fun _t_238 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01101101100100010110100))
(define-fun _t_239 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_238))
(define-fun _t_240 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_235 _t_239))
(define-fun _t_243 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11101111100111011011001))
(define-fun _t_244 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_243))
(define-fun _t_245 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_240 _t_244))
(define-fun _t_248 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00000111101011100001001))
(define-fun _t_249 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_248))
(define-fun _t_250 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_245 _t_249))
(define-fun _t_251 () Bool (fp.leq _t_250 _t_217))
(assert _t_251)
(define-fun _t_254 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00111011011001000101100))
(define-fun _t_255 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_42))
(define-fun _t_256 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_255))
(define-fun _t_258 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01001010110000001000010))
(define-fun _t_259 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_258))
(define-fun _t_260 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_256 _t_259))
(define-fun _t_263 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00110011001100110011001))
(define-fun _t_264 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_263))
(define-fun _t_265 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_260 _t_264))
(define-fun _t_267 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00100000010000011000100))
(define-fun _t_268 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_267))
(define-fun _t_269 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_265 _t_268))
(define-fun _t_271 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00110100101111000110100))
(define-fun _t_272 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_271))
(define-fun _t_273 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_269 _t_272))
(define-fun _t_276 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01011001000101101000011))
(define-fun _t_277 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_276))
(define-fun _t_278 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_273 _t_277))
(define-fun _t_279 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_129))
(define-fun _t_280 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_278 _t_279))
(define-fun _t_281 () Bool (fp.leq _t_254 _t_280))
(assert _t_281)
(define-fun _t_284 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10000110001001001101110))
(define-fun _t_287 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11001101010011111110000))
(define-fun _t_288 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_287))
(define-fun _t_289 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_288))
(define-fun _t_292 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b00010110100001110010101))
(define-fun _t_293 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_292))
(define-fun _t_294 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_289 _t_293))
(define-fun _t_297 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00110110010001011010000))
(define-fun _t_298 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_297))
(define-fun _t_299 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_294 _t_298))
(define-fun _t_301 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11011100101011000000100))
(define-fun _t_302 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_301))
(define-fun _t_303 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_299 _t_302))
(define-fun _t_305 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b00000110001001001101111))
(define-fun _t_306 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_305))
(define-fun _t_307 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_303 _t_306))
(define-fun _t_310 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11100011110101110000100))
(define-fun _t_311 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_310))
(define-fun _t_312 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_307 _t_311))
(define-fun _t_314 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b10111010010111100011011))
(define-fun _t_315 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_314))
(define-fun _t_316 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_312 _t_315))
(define-fun _t_317 () Bool (fp.leq _t_316 _t_284))
(assert _t_317)
(define-fun _t_320 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10101100000010000011001))
(define-fun _t_322 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10001100010010011011100))
(define-fun _t_323 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_322))
(define-fun _t_324 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_323))
(define-fun _t_327 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11101111000110101010000))
(define-fun _t_328 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_327))
(define-fun _t_329 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_324 _t_328))
(define-fun _t_331 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00111111011111001110110))
(define-fun _t_332 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_331))
(define-fun _t_333 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_329 _t_332))
(define-fun _t_335 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11001100010010011011100))
(define-fun _t_336 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_335))
(define-fun _t_337 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_333 _t_336))
(define-fun _t_339 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01011101001011110001100))
(define-fun _t_340 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_339))
(define-fun _t_341 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_337 _t_340))
(define-fun _t_342 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_100))
(define-fun _t_343 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_341 _t_342))
(define-fun _t_344 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_179 _t_343))
(define-fun _t_345 () Bool (fp.leq _t_320 _t_344))
(assert _t_345)
(define-fun _t_348 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11100010110100001110011))
(define-fun _t_350 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11000100000110001001001))
(define-fun _t_351 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_350))
(define-fun _t_352 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_351))
(define-fun _t_354 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10111111011111001110110))
(define-fun _t_355 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_354))
(define-fun _t_356 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_352 _t_355))
(define-fun _t_359 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00110100001110010101100))
(define-fun _t_360 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_359))
(define-fun _t_361 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_356 _t_360))
(define-fun _t_364 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10001000001100010010011))
(define-fun _t_365 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_364))
(define-fun _t_366 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_361 _t_365))
(define-fun _t_368 () (_ FloatingPoint 8 24) (fp #b0 #b01111000 #b10101001111110111110100))
(define-fun _t_369 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_368))
(define-fun _t_370 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_366 _t_369))
(define-fun _t_372 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b10110110010001011010000))
(define-fun _t_373 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_372))
(define-fun _t_374 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_370 _t_373))
(define-fun _t_377 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01010011111101111100111))
(define-fun _t_378 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_377))
(define-fun _t_379 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_374 _t_378))
(define-fun _t_380 () Bool (fp.leq _t_348 _t_379))
(assert _t_380)
(define-fun _t_381 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11100001010001111010110))
(define-fun _t_384 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11011010000111001010110))
(define-fun _t_385 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_384))
(define-fun _t_386 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_385))
(define-fun _t_389 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00101010011111101111100))
(define-fun _t_390 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_389))
(define-fun _t_391 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_386 _t_390))
(define-fun _t_394 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100110011001100110011))
(define-fun _t_395 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_394))
(define-fun _t_396 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_391 _t_395))
(define-fun _t_399 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10011001000101101000100))
(define-fun _t_400 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_399))
(define-fun _t_401 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_396 _t_400))
(define-fun _t_403 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010110100001110010110))
(define-fun _t_404 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_403))
(define-fun _t_405 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_401 _t_404))
(define-fun _t_407 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10011100001010001111011))
(define-fun _t_408 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_407))
(define-fun _t_409 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_405 _t_408))
(define-fun _t_410 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_381))
(define-fun _t_411 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_409 _t_410))
(define-fun _t_412 () Bool (fp.leq _t_411 _t_141))
(assert _t_412)
(define-fun _t_413 () (_ FloatingPoint 8 24) (fp #b0 #b01111111 #b00000000000000000000000))
(define-fun _t_415 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01000011100101011000000))
(define-fun _t_417 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11001011110001101010011))
(define-fun _t_418 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_417))
(define-fun _t_419 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_418))
(define-fun _t_422 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01100111111011111001110))
(define-fun _t_423 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_422))
(define-fun _t_424 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_419 _t_423))
(define-fun _t_426 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11001110010101100000001))
(define-fun _t_427 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_426))
(define-fun _t_428 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_424 _t_427))
(define-fun _t_431 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00001011110001101010100))
(define-fun _t_432 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_431))
(define-fun _t_433 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_428 _t_432))
(define-fun _t_435 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01010011011101001011110))
(define-fun _t_436 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_435))
(define-fun _t_437 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_433 _t_436))
(define-fun _t_438 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_413))
(define-fun _t_439 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_437 _t_438))
(define-fun _t_441 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01110010101100000010000))
(define-fun _t_442 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_441))
(define-fun _t_443 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_439 _t_442))
(define-fun _t_444 () Bool (fp.leq _t_443 _t_415))
(assert _t_444)
(define-fun _t_446 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10001111010111000010011))
(define-fun _t_449 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10100010110100001110011))
(define-fun _t_450 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_449))
(define-fun _t_451 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_450))
(define-fun _t_452 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_156 _t_451))
(define-fun _t_454 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00000011000100100110110))
(define-fun _t_455 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_454))
(define-fun _t_456 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_452 _t_455))
(define-fun _t_458 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b01000101101000011100100))
(define-fun _t_459 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_458))
(define-fun _t_460 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_456 _t_459))
(define-fun _t_461 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_187))
(define-fun _t_462 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_460 _t_461))
(define-fun _t_464 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00110100001110010101100))
(define-fun _t_465 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_464))
(define-fun _t_466 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_462 _t_465))
(define-fun _t_469 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00000110101001111111000))
(define-fun _t_470 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_469))
(define-fun _t_471 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_466 _t_470))
(define-fun _t_472 () Bool (fp.leq _t_446 _t_471))
(assert _t_472)
(define-fun _t_473 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b00010110100001110010101))
(define-fun _t_474 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10001000001100010010011))
(define-fun _t_476 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01011001000101101000100))
(define-fun _t_477 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_473))
(define-fun _t_478 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_477))
(define-fun _t_480 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b11010010111100011010101))
(define-fun _t_481 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_480))
(define-fun _t_482 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_478 _t_481))
(define-fun _t_484 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10110001001001101110101))
(define-fun _t_485 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_484))
(define-fun _t_486 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_482 _t_485))
(define-fun _t_489 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11001111010111000010100))
(define-fun _t_490 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_489))
(define-fun _t_491 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_486 _t_490))
(define-fun _t_492 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_474))
(define-fun _t_493 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_491 _t_492))
(define-fun _t_496 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00111010111000010100100))
(define-fun _t_497 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_496))
(define-fun _t_498 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_493 _t_497))
(define-fun _t_500 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01010100011110101110001))
(define-fun _t_501 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_500))
(define-fun _t_502 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_498 _t_501))
(define-fun _t_503 () Bool (fp.leq _t_476 _t_502))
(assert _t_503)
(define-fun _t_505 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01101111100111011011001))
(define-fun _t_507 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b11101011100001010001110))
(define-fun _t_508 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_507))
(define-fun _t_509 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_508))
(define-fun _t_512 () (_ FloatingPoint 8 24) (fp #b1 #b01111010 #b00101111000110101001111))
(define-fun _t_513 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_512))
(define-fun _t_514 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_509 _t_513))
(define-fun _t_517 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00011010000111001010110))
(define-fun _t_518 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_517))
(define-fun _t_519 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_514 _t_518))
(define-fun _t_521 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11001011110001101010011))
(define-fun _t_522 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_521))
(define-fun _t_523 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_519 _t_522))
(define-fun _t_525 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010100011110101110001))
(define-fun _t_526 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_525))
(define-fun _t_527 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_523 _t_526))
(define-fun _t_528 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_480))
(define-fun _t_529 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_527 _t_528))
(define-fun _t_532 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10111101011100001010010))
(define-fun _t_533 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_532))
(define-fun _t_534 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_529 _t_533))
(define-fun _t_535 () Bool (fp.leq _t_505 _t_534))
(assert _t_535)
(define-fun _t_537 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00110000001000001100010))
(define-fun _t_539 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00100010110100001110011))
(define-fun _t_540 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_539))
(define-fun _t_541 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_540))
(define-fun _t_543 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b10100001110010101100000))
(define-fun _t_544 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_543))
(define-fun _t_545 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_541 _t_544))
(define-fun _t_547 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11101000011100101011000))
(define-fun _t_548 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_547))
(define-fun _t_549 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_545 _t_548))
(define-fun _t_551 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00010001011010000111001))
(define-fun _t_552 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_551))
(define-fun _t_553 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_549 _t_552))
(define-fun _t_555 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01001111010111000010100))
(define-fun _t_556 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_555))
(define-fun _t_557 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_553 _t_556))
(define-fun _t_560 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100111111011111001110))
(define-fun _t_561 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_560))
(define-fun _t_562 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_557 _t_561))
(define-fun _t_565 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01100100110111010011000))
(define-fun _t_566 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_565))
(define-fun _t_567 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_562 _t_566))
(define-fun _t_568 () Bool (fp.leq _t_567 _t_537))
(assert _t_568)
(define-fun _t_570 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11110001101010011111101))
(define-fun _t_573 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00010010011011101001100))
(define-fun _t_574 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_573))
(define-fun _t_575 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_574))
(define-fun _t_578 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10000101000111101011100))
(define-fun _t_579 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_578))
(define-fun _t_580 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_575 _t_579))
(define-fun _t_583 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011010100111111011110))
(define-fun _t_584 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_583))
(define-fun _t_585 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_580 _t_584))
(define-fun _t_588 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10100100110111010011000))
(define-fun _t_589 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_588))
(define-fun _t_590 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_585 _t_589))
(define-fun _t_593 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b10100111111011111001111))
(define-fun _t_594 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_593))
(define-fun _t_595 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_590 _t_594))
(define-fun _t_598 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10101011000000100000110))
(define-fun _t_599 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_598))
(define-fun _t_600 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_595 _t_599))
(define-fun _t_603 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b11000000100000110001001))
(define-fun _t_604 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_603))
(define-fun _t_605 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_600 _t_604))
(define-fun _t_606 () Bool (fp.leq _t_605 _t_570))
(assert _t_606)
(check-sat)
(exit)
