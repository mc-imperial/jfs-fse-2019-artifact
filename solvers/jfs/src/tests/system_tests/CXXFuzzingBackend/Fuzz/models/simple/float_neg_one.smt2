; RUN: rm -rf %t-output-dir
; RUN: %jfs %jfs_no_opt_options -seed=1 -get-model -debug-save-model -keep-output-dir -output-dir=%t-output-dir %s | %FileCheck %s
; FIXME: Make LibPureRandomFuzzer work on this example?
; REQUIRES: LibFuzzer
(declare-const a Float32)
(assert (= a (fp #b1 #x7f #b00000000000000000000000)))
(check-sat)
; CHECK: {{^sat}}
; CHECK-NEXT: (
; CHECK-NEXT: (define-fun a () (_ FloatingPoint 8 24) (fp #b1 #x7f #b00000000000000000000000))
; CHECK-NEXT: )

; RUN: base64 -i %t-output-dir/model-output | %FileCheck -check-prefix=CHECK-MODEL %s
; CHECK-MODEL: AACAvw==
