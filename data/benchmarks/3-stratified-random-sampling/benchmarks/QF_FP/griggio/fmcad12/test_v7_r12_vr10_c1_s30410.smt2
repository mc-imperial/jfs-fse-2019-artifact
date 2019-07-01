(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status unknown)
;; MathSAT API call trace
;; generated on 05/20/15 17:24:56

(declare-fun x0 () (_ FloatingPoint 8 24))
(declare-fun x1 () (_ FloatingPoint 8 24))
(declare-fun x2 () (_ FloatingPoint 8 24))
(declare-fun x3 () (_ FloatingPoint 8 24))
(declare-fun x4 () (_ FloatingPoint 8 24))
(declare-fun x5 () (_ FloatingPoint 8 24))
(declare-fun x6 () (_ FloatingPoint 8 24))
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
(define-fun _t_44 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11110011101101100100011))
(define-fun _t_46 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11001100110011001100110))
(define-fun _t_47 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_46))
(define-fun _t_48 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_47))
(define-fun _t_51 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00110110010001011010000))
(define-fun _t_52 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_51))
(define-fun _t_53 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_48 _t_52))
(define-fun _t_56 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00100110111010010111100))
(define-fun _t_57 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_56))
(define-fun _t_58 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_53 _t_57))
(define-fun _t_60 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01011010100111111011110))
(define-fun _t_61 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_60))
(define-fun _t_62 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_58 _t_61))
(define-fun _t_65 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10000101000111101011100))
(define-fun _t_66 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_65))
(define-fun _t_67 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_62 _t_66))
(define-fun _t_69 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b01001011110001101010100))
(define-fun _t_70 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_69))
(define-fun _t_71 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_67 _t_70))
(define-fun _t_74 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00010011011101001011110))
(define-fun _t_75 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_74))
(define-fun _t_76 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_71 _t_75))
(define-fun _t_77 () Bool (fp.leq _t_44 _t_76))
(assert _t_77)
(define-fun _t_79 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11010011111101111100110))
(define-fun _t_82 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00101010011111101111100))
(define-fun _t_83 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_82))
(define-fun _t_84 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_83))
(define-fun _t_86 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10100111111011111001111))
(define-fun _t_87 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_86))
(define-fun _t_88 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_84 _t_87))
(define-fun _t_91 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10011010100111111011111))
(define-fun _t_92 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_91))
(define-fun _t_93 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_88 _t_92))
(define-fun _t_96 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01010001111010111000011))
(define-fun _t_97 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_96))
(define-fun _t_98 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_93 _t_97))
(define-fun _t_100 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11111110111110011101110))
(define-fun _t_101 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_100))
(define-fun _t_102 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_98 _t_101))
(define-fun _t_104 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01110001101010011111101))
(define-fun _t_105 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_104))
(define-fun _t_106 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_102 _t_105))
(define-fun _t_109 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10010100111111011111001))
(define-fun _t_110 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_109))
(define-fun _t_111 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_106 _t_110))
(define-fun _t_112 () Bool (fp.leq _t_111 _t_79))
(assert _t_112)
(define-fun _t_114 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00110000101000111101100))
(define-fun _t_117 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01001100110011001100110))
(define-fun _t_118 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_117))
(define-fun _t_119 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_118))
(define-fun _t_122 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10010100011110101110000))
(define-fun _t_123 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_122))
(define-fun _t_124 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_119 _t_123))
(define-fun _t_127 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00011100101011000000011))
(define-fun _t_128 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_127))
(define-fun _t_129 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_124 _t_128))
(define-fun _t_131 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11000111001010110000001))
(define-fun _t_132 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_131))
(define-fun _t_133 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_129 _t_132))
(define-fun _t_136 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10110101110000101001000))
(define-fun _t_137 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_136))
(define-fun _t_138 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_133 _t_137))
(define-fun _t_141 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011111001110110110001))
(define-fun _t_142 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_141))
(define-fun _t_143 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_138 _t_142))
(define-fun _t_145 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b00100110111010010111011))
(define-fun _t_146 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_145))
(define-fun _t_147 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_143 _t_146))
(define-fun _t_148 () Bool (fp.leq _t_114 _t_147))
(assert _t_148)
(define-fun _t_150 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00111011011001000101100))
(define-fun _t_152 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10000011100101011000001))
(define-fun _t_153 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_152))
(define-fun _t_154 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_153))
(define-fun _t_156 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b10001101010011111110000))
(define-fun _t_157 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_156))
(define-fun _t_158 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_154 _t_157))
(define-fun _t_161 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01111110011101101100100))
(define-fun _t_162 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_161))
(define-fun _t_163 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_158 _t_162))
(define-fun _t_165 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10001011010000111001010))
(define-fun _t_166 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_165))
(define-fun _t_167 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_163 _t_166))
(define-fun _t_169 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101111000110101010000))
(define-fun _t_170 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_169))
(define-fun _t_171 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_167 _t_170))
(define-fun _t_174 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01110101001111110111110))
(define-fun _t_175 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_174))
(define-fun _t_176 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_171 _t_175))
(define-fun _t_179 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10001011010000111001011))
(define-fun _t_180 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_179))
(define-fun _t_181 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_176 _t_180))
(define-fun _t_182 () Bool (fp.leq _t_181 _t_150))
(assert _t_182)
(define-fun _t_185 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01101101100100010110011))
(define-fun _t_188 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00001100110011001100110))
(define-fun _t_189 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_188))
(define-fun _t_190 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_189))
(define-fun _t_193 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11011101001011110001100))
(define-fun _t_194 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_193))
(define-fun _t_195 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_190 _t_194))
(define-fun _t_198 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b01001111110111110011101))
(define-fun _t_199 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_198))
(define-fun _t_200 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_195 _t_199))
(define-fun _t_202 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01011011001000101101000))
(define-fun _t_203 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_202))
(define-fun _t_204 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_200 _t_203))
(define-fun _t_206 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01101100100010110100010))
(define-fun _t_207 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_206))
(define-fun _t_208 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_204 _t_207))
(define-fun _t_211 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011011101001011110001))
(define-fun _t_212 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_211))
(define-fun _t_213 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_208 _t_212))
(define-fun _t_216 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10010000011000100100110))
(define-fun _t_217 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_216))
(define-fun _t_218 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_213 _t_217))
(define-fun _t_219 () Bool (fp.leq _t_185 _t_218))
(assert _t_219)
(define-fun _t_222 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00101000111101011100000))
(define-fun _t_225 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10001101110100101111001))
(define-fun _t_226 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_225))
(define-fun _t_227 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_226))
(define-fun _t_230 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11101101100100010110100))
(define-fun _t_231 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_230))
(define-fun _t_232 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_227 _t_231))
(define-fun _t_235 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b10011111101111100111011))
(define-fun _t_236 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_235))
(define-fun _t_237 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_232 _t_236))
(define-fun _t_239 () (_ FloatingPoint 8 24) (fp #b0 #b01110110 #b10001001001101110100101))
(define-fun _t_240 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_239))
(define-fun _t_241 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_237 _t_240))
(define-fun _t_244 () (_ FloatingPoint 8 24) (fp #b1 #b01111000 #b01000111101011100001010))
(define-fun _t_245 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_244))
(define-fun _t_246 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_241 _t_245))
(define-fun _t_248 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11000100000110001001001))
(define-fun _t_249 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_248))
(define-fun _t_250 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_246 _t_249))
(define-fun _t_252 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01111111011111001110110))
(define-fun _t_253 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_252))
(define-fun _t_254 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_250 _t_253))
(define-fun _t_255 () Bool (fp.leq _t_254 _t_222))
(assert _t_255)
(define-fun _t_257 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101000011100101011000))
(define-fun _t_260 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10110010001011010000110))
(define-fun _t_261 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_260))
(define-fun _t_262 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_261))
(define-fun _t_264 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01010010111100011010101))
(define-fun _t_265 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_264))
(define-fun _t_266 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_262 _t_265))
(define-fun _t_269 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01111010111000010100100))
(define-fun _t_270 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_269))
(define-fun _t_271 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_266 _t_270))
(define-fun _t_274 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10001111010111000010011))
(define-fun _t_275 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_274))
(define-fun _t_276 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_271 _t_275))
(define-fun _t_279 () (_ FloatingPoint 8 24) (fp #b1 #b01111010 #b01001111110111110011101))
(define-fun _t_280 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_279))
(define-fun _t_281 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_276 _t_280))
(define-fun _t_283 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00110001001001101110100))
(define-fun _t_284 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_283))
(define-fun _t_285 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_281 _t_284))
(define-fun _t_288 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00011110101110000101001))
(define-fun _t_289 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_288))
(define-fun _t_290 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_285 _t_289))
(define-fun _t_291 () Bool (fp.leq _t_290 _t_257))
(assert _t_291)
(define-fun _t_293 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00111101011100001010010))
(define-fun _t_294 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_279))
(define-fun _t_295 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_294))
(define-fun _t_298 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11111110111110011101101))
(define-fun _t_299 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_298))
(define-fun _t_300 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_295 _t_299))
(define-fun _t_302 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00000101000111101011100))
(define-fun _t_303 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_302))
(define-fun _t_304 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_300 _t_303))
(define-fun _t_307 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01000101101000011100100))
(define-fun _t_308 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_307))
(define-fun _t_309 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_304 _t_308))
(define-fun _t_311 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b01110000101000111101100))
(define-fun _t_312 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_311))
(define-fun _t_313 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_309 _t_312))
(define-fun _t_315 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b11001010110000001000010))
(define-fun _t_316 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_315))
(define-fun _t_317 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_313 _t_316))
(define-fun _t_318 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_60))
(define-fun _t_319 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_317 _t_318))
(define-fun _t_320 () Bool (fp.leq _t_293 _t_319))
(assert _t_320)
(define-fun _t_323 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11110100101111000110101))
(define-fun _t_325 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b11011001000101101000100))
(define-fun _t_326 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_325))
(define-fun _t_327 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_326))
(define-fun _t_330 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b10101110000101000111101))
(define-fun _t_331 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_330))
(define-fun _t_332 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_327 _t_331))
(define-fun _t_335 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11001000101101000011100))
(define-fun _t_336 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_335))
(define-fun _t_337 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_332 _t_336))
(define-fun _t_340 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11011000000100000110000))
(define-fun _t_341 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_340))
(define-fun _t_342 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_337 _t_341))
(define-fun _t_344 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10010101100000010000011))
(define-fun _t_345 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_344))
(define-fun _t_346 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_342 _t_345))
(define-fun _t_349 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00101101000011100101011))
(define-fun _t_350 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_349))
(define-fun _t_351 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_346 _t_350))
(define-fun _t_353 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00000111001010110000000))
(define-fun _t_354 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_353))
(define-fun _t_355 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_351 _t_354))
(define-fun _t_356 () Bool (fp.leq _t_355 _t_323))
(assert _t_356)
(define-fun _t_359 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10010001111010111000011))
(define-fun _t_360 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_174))
(define-fun _t_361 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_360))
(define-fun _t_364 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10011100101011000000100))
(define-fun _t_365 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_364))
(define-fun _t_366 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_361 _t_365))
(define-fun _t_368 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10111011011001000101100))
(define-fun _t_369 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_368))
(define-fun _t_370 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_366 _t_369))
(define-fun _t_373 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10101000111101011100000))
(define-fun _t_374 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_373))
(define-fun _t_375 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_370 _t_374))
(define-fun _t_377 () (_ FloatingPoint 8 24) (fp #b0 #b01111000 #b10001001001101110100101))
(define-fun _t_378 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_377))
(define-fun _t_379 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_375 _t_378))
(define-fun _t_381 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101011000000100000110))
(define-fun _t_382 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_381))
(define-fun _t_383 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_379 _t_382))
(define-fun _t_385 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11100101011000000100000))
(define-fun _t_386 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_385))
(define-fun _t_387 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_383 _t_386))
(define-fun _t_388 () Bool (fp.leq _t_387 _t_359))
(assert _t_388)
(define-fun _t_391 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01111100111011011001001))
(define-fun _t_394 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11111100111011011001001))
(define-fun _t_395 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_394))
(define-fun _t_396 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_395))
(define-fun _t_398 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10000000000000000000000))
(define-fun _t_399 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_398))
(define-fun _t_400 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_396 _t_399))
(define-fun _t_403 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00111111011111001110110))
(define-fun _t_404 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_403))
(define-fun _t_405 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_400 _t_404))
(define-fun _t_408 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011100101011000000100))
(define-fun _t_409 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_408))
(define-fun _t_410 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_405 _t_409))
(define-fun _t_412 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b00100010110100001110010))
(define-fun _t_413 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_412))
(define-fun _t_414 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_410 _t_413))
(define-fun _t_416 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11001001001101110100110))
(define-fun _t_417 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_416))
(define-fun _t_418 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_414 _t_417))
(define-fun _t_419 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_368))
(define-fun _t_420 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_418 _t_419))
(define-fun _t_421 () Bool (fp.leq _t_391 _t_420))
(assert _t_421)
(define-fun _t_424 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01001000101101000011100))
(define-fun _t_426 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11101101100100010110011))
(define-fun _t_427 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_426))
(define-fun _t_428 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_427))
(define-fun _t_430 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101101100100010110100))
(define-fun _t_431 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_430))
(define-fun _t_432 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_428 _t_431))
(define-fun _t_434 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11110011101101100100011))
(define-fun _t_435 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_434))
(define-fun _t_436 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_432 _t_435))
(define-fun _t_439 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b00100110111010010111100))
(define-fun _t_440 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_439))
(define-fun _t_441 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_436 _t_440))
(define-fun _t_443 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01110010001011010000110))
(define-fun _t_444 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_443))
(define-fun _t_445 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_441 _t_444))
(define-fun _t_448 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100000110001001001110))
(define-fun _t_449 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_448))
(define-fun _t_450 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_445 _t_449))
(define-fun _t_453 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10011110001101010100000))
(define-fun _t_454 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_453))
(define-fun _t_455 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_450 _t_454))
(define-fun _t_456 () Bool (fp.leq _t_424 _t_455))
(assert _t_456)
(check-sat)
(exit)