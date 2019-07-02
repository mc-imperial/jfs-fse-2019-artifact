//===----------------------------------------------------------------------===//
//
//                        JFS - The JIT Fuzzing Solver
//
// Copyright 2017-2019 REDACTED
//
// This file is distributed under the MIT license.
// See LICENSE.txt for details.
//
//===----------------------------------------------------------------------===//
// This is the implemenation of the runtime for SMTLIB Floats that
// uses native machine operations. It is written with a C compatible interface
// so that in the future we can easily use LLVM's JIT.
#pragma STDC FENV_ACCESS ON
#include "SMTLIB/NativeFloat.h"
#include "SMTLIB/NativeBitVector.h"
#include "SMTLIB/jassert.h"
#include <fenv.h>
#include <math.h>
#include <string.h>

namespace {

// Generic version
template <typename T>
T jfs_nr_internal_make_float_from_buffer(const uint8_t* bufferData,
                                         const uint64_t bufferSize,
                                         const uint64_t lowBit) {
  // Just re-use bitvector method for now.
  // This assume little-endian which might things on other architectures.
  uint64_t highBit = lowBit + (sizeof(T) * 8) - 1;
  jassert((((highBit - lowBit) + 1) % 8) == 0 &&
          "Width requested should be whole bytes");
  jfs_nr_bitvector_ty rawBits =
      jfs_nr_make_bitvector(bufferData, bufferSize, lowBit, highBit);
  T result;
  // Copy into result
  memcpy(&result, &rawBits, sizeof(T));
  return result;
}

// Generic version
template <typename RetTy, typename ArgTy>
RetTy jfs_nr_internal_float_get_raw_bits(const ArgTy value) {
  static_assert(sizeof(RetTy) == sizeof(ArgTy), "Size mismatch");
  RetTy data = 0;
  memcpy(&data, &value, sizeof(RetTy));
  return data;
}
}

#ifdef __cplusplus
extern "C" {
#endif

uint32_t jfs_nr_float32_get_raw_bits(const jfs_nr_float32 value) {
  return jfs_nr_internal_float_get_raw_bits<uint32_t, jfs_nr_float32>(value);
}

uint64_t jfs_nr_float64_get_raw_bits(const jfs_nr_float64 value) {
  return jfs_nr_internal_float_get_raw_bits<uint64_t, jfs_nr_float64>(value);
}

jfs_nr_float32 jfs_nr_float32_get_infinity(bool positive) {
  if (positive)
    return INFINITY;
  return -INFINITY;
}

jfs_nr_float64 jfs_nr_float64_get_infinity(bool positive) {
  if (positive)
    return INFINITY;
  return -INFINITY;
}

jfs_nr_float32 jfs_nr_float32_get_zero(bool positive) {
  if (positive)
    return jfs_nr_bitcast_bv_to_float32(0x0);
  return jfs_nr_bitcast_bv_to_float32(UINT32_C(0x80000000));
}

jfs_nr_float64 jfs_nr_float64_get_zero(bool positive) {
  if (positive)
    return jfs_nr_bitcast_bv_to_float64(0x0);
  return jfs_nr_bitcast_bv_to_float64(UINT64_C(0x8000000000000000));
}

jfs_nr_float32 jfs_nr_float32_get_nan(bool quiet) {
  if (quiet)
    return jfs_nr_bitcast_bv_to_float32(UINT64_C(0x7fc00000));
  return jfs_nr_bitcast_bv_to_float32(UINT64_C(0x7f800001));
}

jfs_nr_float64 jfs_nr_float64_get_nan(bool quiet) {
  if (quiet)
    return jfs_nr_bitcast_bv_to_float64(UINT64_C(0x7ff8000000000000));
  return jfs_nr_bitcast_bv_to_float64(UINT64_C(0x7ff0000000000001));
}

bool jfs_nr_float32_is_normal(const jfs_nr_float32 value) {
  return isnormal(value) != 0;
}
bool jfs_nr_float64_is_normal(const jfs_nr_float64 value) {
  return isnormal(value) != 0;
}

bool jfs_nr_float32_is_subnormal(const jfs_nr_float32 value) {
  return fpclassify(value) == FP_SUBNORMAL;
}

bool jfs_nr_float64_is_subnormal(const jfs_nr_float64 value) {
  return fpclassify(value) == FP_SUBNORMAL;
}

bool jfs_nr_float32_is_zero(const jfs_nr_float32 value) {
  return fpclassify(value) == FP_ZERO;
}

bool jfs_nr_float64_is_zero(const jfs_nr_float64 value) {
  return fpclassify(value) == FP_ZERO;
}

bool jfs_nr_float32_is_infinite(const jfs_nr_float32 value) {
  return fpclassify(value) == FP_INFINITE;
}

bool jfs_nr_float64_is_infinite(const jfs_nr_float64 value) {
  return fpclassify(value) == FP_INFINITE;
}

bool jfs_nr_float32_is_positive(const jfs_nr_float32 value) {
  // +zero is treated as positive
  if (jfs_nr_float32_get_raw_bits(value) == UINT64_C(0x0))
    return true;
  return jfs_nr_float32_get_zero(/*positive=*/true) < value;
}

bool jfs_nr_float64_is_positive(const jfs_nr_float64 value) {
  // +zero is treated as positive
  if (jfs_nr_float64_get_raw_bits(value) == UINT64_C(0x0))
    return true;
  return jfs_nr_float64_get_zero(/*positive=*/true) < value;
}

bool jfs_nr_float32_is_negative(const jfs_nr_float32 value) {
  // -zero is treated as negative
  if (jfs_nr_float32_get_raw_bits(value) == UINT32_C(0x80000000))
    return true;
  return value < jfs_nr_float32_get_zero(/*positive=*/false);
}

bool jfs_nr_float64_is_negative(const jfs_nr_float64 value) {
  // -zero is treated as negative
  if (jfs_nr_float64_get_raw_bits(value) == UINT64_C(0x8000000000000000))
    return true;
  return value < jfs_nr_float64_get_zero(/*positive=*/false);
}

bool jfs_nr_float32_is_nan(const jfs_nr_float32 value) { return isnan(value); }

bool jfs_nr_float64_is_nan(const jfs_nr_float64 value) { return isnan(value); }

bool jfs_nr_float32_ieee_equals(const jfs_nr_float32 lhs,
                                const jfs_nr_float32 rhs) {
  return lhs == rhs;
}

bool jfs_nr_float64_ieee_equals(const jfs_nr_float64 lhs,
                                const jfs_nr_float64 rhs) {
  return lhs == rhs;
}

bool jfs_nr_float32_smtlib_equals(const jfs_nr_float32 lhs,
                                  const jfs_nr_float32 rhs) {
  // In SMT-LIBv2 no distinction is made between the different types of NaN
  /*
   *  (set-logic QF_FPBV)
      (declare-const x (_ BitVec 32))
      (declare-const y (_ BitVec 32))
      (assert (not (= x y)))
      (assert (fp.isNaN ((_ to_fp 8 24) x)))
      (assert (fp.isNaN ((_ to_fp 8 24) y)))
      (assert
        (not
          (=
            ((_ to_fp 8 24) x)
            ((_ to_fp 8 24) y)
          )
        )
      )
      (check-sat)
      unsat
  */
  bool lhsIsNaN = isnan(lhs);
  bool rhsIsNaN = isnan(rhs);
  if (lhsIsNaN && rhsIsNaN) {
    return true;
  }
  // Positive and negative 0 are distinct but C's `==` operator considers them
  // equal so just do bit comparison.
  return jfs_nr_float32_get_raw_bits(lhs) == jfs_nr_float32_get_raw_bits(rhs);
}

bool jfs_nr_float64_smtlib_equals(const jfs_nr_float64 lhs,
                                  const jfs_nr_float64 rhs) {
  // In SMT-LIBv2 no distinction is made between the different types of NaN
  bool lhsIsNaN = isnan(lhs);
  bool rhsIsNaN = isnan(rhs);
  if (lhsIsNaN && rhsIsNaN) {
    return true;
  }
  // Positive and negative 0 are distinct but C's `==` operator considers them
  // equal so just do bit comparison.
  return jfs_nr_float64_get_raw_bits(lhs) == jfs_nr_float64_get_raw_bits(rhs);
}

jfs_nr_float32 jfs_nr_float32_abs(const jfs_nr_float32 value) {
  return ::fabsf(value);
}

jfs_nr_float64 jfs_nr_float64_abs(const jfs_nr_float64 value) {
  return ::fabs(value);
}

jfs_nr_float32 jfs_nr_float32_neg(const jfs_nr_float32 value) {
  uint32_t rawBits = jfs_nr_float32_get_raw_bits(value);
  // Flip sign bit
  rawBits ^= UINT32_C(0x80000000);
  return jfs_nr_bitcast_bv_to_float32(rawBits);
}

// FIXME: We are assuming that FE_TONEAREST is RNE but it could be
// RNA which would be wrong. We should build a target specific version
#ifndef __x86_64
#error FIXME UNSUPPORTED PLATFORM
#endif
// FIXME: Do we need a barrier here to prevent Clang moving around the calls?
#define JFS_NR_SET_RM(X)                                                       \
  {                                                                            \
    switch (X) {                                                               \
    case JFS_RM_RNE: {                                                         \
      /* This is the default so do nothing */                                  \
      break;                                                                   \
    }                                                                          \
    case JFS_RM_RNA: {                                                         \
      /* FIXME: Not supported by C */                                          \
      JFS_RUNTIME_FAIL()                                                       \
      break;                                                                   \
    }                                                                          \
    case JFS_RM_RTP: {                                                         \
      int failed = fesetround(FE_UPWARD);                                      \
      jassert(failed == 0);                                                    \
      break;                                                                   \
    }                                                                          \
    case JFS_RM_RTN: {                                                         \
      int failed = fesetround(FE_DOWNWARD);                                    \
      jassert(failed == 0);                                                    \
      break;                                                                   \
    }                                                                          \
    case JFS_RM_RTZ: {                                                         \
      int failed = fesetround(FE_TOWARDZERO);                                  \
      jassert(failed == 0);                                                    \
      break;                                                                   \
    }                                                                          \
    default:                                                                   \
      JFS_RUNTIME_FAIL()                                                       \
    }                                                                          \
  }
#define JFS_NR_RESET_RM(PREVIOUS)                                              \
  {                                                                            \
    switch (PREVIOUS) {                                                        \
    case JFS_RM_RNE: {                                                         \
      /* The rounding mode switched was the default so do nothing */           \
      break;                                                                   \
    }                                                                          \
    case JFS_RM_RTP:                                                           \
    case JFS_RM_RTN:                                                           \
    case JFS_RM_RTZ: {                                                         \
      int failed = fesetround(FE_TONEAREST);                                   \
      jassert(failed == 0);                                                    \
      break;                                                                   \
    }                                                                          \
    default:                                                                   \
      JFS_RUNTIME_FAIL();                                                      \
    }                                                                          \
  }

// FIXME: This is a hack. Clang doesn't support the FENV_ACCESS pragma
// and so incorrectly optimizes the code so the rounding mode change and
// floating point operation get re-ordered. Using `asm volatile ("" : : :
// "memory")`
// didn't seem to work unfortunately so for now put this attribute on all
// functions
// that might change the rounding mode.
// See https://bugs.llvm.org/show_bug.cgi?id=8100
#define NO_OPT __attribute__((optnone))

NO_OPT jfs_nr_float32 jfs_nr_float32_add(JFS_NR_RM rm, const jfs_nr_float32 lhs,
                                         const jfs_nr_float32 rhs) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float32 result = lhs + rhs;
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float64 jfs_nr_float64_add(JFS_NR_RM rm, const jfs_nr_float64 lhs,
                                         const jfs_nr_float64 rhs) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float64 result = lhs + rhs;
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float32 jfs_nr_float32_sub(JFS_NR_RM rm, const jfs_nr_float32 lhs,
                                         const jfs_nr_float32 rhs) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float32 result = lhs - rhs;
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float64 jfs_nr_float64_sub(JFS_NR_RM rm, const jfs_nr_float64 lhs,
                                         const jfs_nr_float64 rhs) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float64 result = lhs - rhs;
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float32 jfs_nr_float32_mul(JFS_NR_RM rm, const jfs_nr_float32 lhs,
                                         const jfs_nr_float32 rhs) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float32 result = lhs * rhs;
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float64 jfs_nr_float64_mul(JFS_NR_RM rm, const jfs_nr_float64 lhs,
                                         const jfs_nr_float64 rhs) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float64 result = lhs * rhs;
  JFS_NR_RESET_RM(rm)
  return result;
}

// Use the attribute to prevent UBSan from raising errors when doing floating
// point division by zero.
#define ALLOW_DIV_BY_ZERO __attribute__((no_sanitize("float-divide-by-zero")))
NO_OPT ALLOW_DIV_BY_ZERO jfs_nr_float32 jfs_nr_float32_div(
    JFS_NR_RM rm, const jfs_nr_float32 lhs, const jfs_nr_float32 rhs) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float32 result = lhs / rhs;
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT ALLOW_DIV_BY_ZERO jfs_nr_float64 jfs_nr_float64_div(
    JFS_NR_RM rm, const jfs_nr_float64 lhs, const jfs_nr_float64 rhs) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float64 result = lhs / rhs;
  JFS_NR_RESET_RM(rm)
  return result;
}
#undef ALLOW_DIV_BY_ZERO

NO_OPT jfs_nr_float32 jfs_nr_float32_fma(JFS_NR_RM rm, const jfs_nr_float32 a,
                                         const jfs_nr_float32 b,
                                         const jfs_nr_float32 c) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float32 result = fmaf(a, b, c);
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float64 jfs_nr_float64_fma(JFS_NR_RM rm, const jfs_nr_float64 a,
                                         const jfs_nr_float64 b,
                                         const jfs_nr_float64 c) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float64 result = fma(a, b, c);
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float32 jfs_nr_float32_sqrt(JFS_NR_RM rm,
                                          const jfs_nr_float32 value) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float32 result = sqrtf(value);
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float64 jfs_nr_float64_sqrt(JFS_NR_RM rm,
                                          const jfs_nr_float64 value) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float64 result = sqrt(value);
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float32
jfs_nr_float32_round_to_integral(JFS_NR_RM rm, const jfs_nr_float32 value) {
  // FIXME: We can use the `round()` C math library function to support
  // JFS_RM_RNA
  JFS_NR_SET_RM(rm)
  jfs_nr_float32 result = nearbyintf(value);
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float64
jfs_nr_float64_round_to_integral(JFS_NR_RM rm, const jfs_nr_float64 value) {
  // FIXME: We can use the `round()` C math library function to support
  // JFS_RM_RNA
  JFS_NR_SET_RM(rm)
  jfs_nr_float64 result = nearbyint(value);
  JFS_NR_RESET_RM(rm)
  return result;
}

// Use this attribute to prevent UBSan from raising errors when doing float
// casts.
#define ALLOW_OVERFLOW __attribute__((no_sanitize("float-cast-overflow")))

NO_OPT ALLOW_OVERFLOW jfs_nr_float32
jfs_nr_convert_float64_to_float32(JFS_NR_RM rm, const jfs_nr_float64 value) {
  JFS_NR_SET_RM(rm)
  jfs_nr_float32 result = (jfs_nr_float32)value;
  JFS_NR_RESET_RM(rm)
  return result;
}

jfs_nr_float64 jfs_nr_convert_float32_to_float64(const jfs_nr_float32 value) {
  // No rounding mode is required because every jfs_nr_float32 value can be
  // precisely represented as a jfs_nr_float64.
  return (jfs_nr_float64)value;
}

NO_OPT jfs_nr_float32 jfs_nr_convert_from_unsigned_bv_to_float32(
    JFS_NR_RM rm, const jfs_nr_bitvector_ty value,
    const jfs_nr_width_ty bitWidth) {
  jassert(jfs_nr_is_valid(value, bitWidth));
  JFS_NR_SET_RM(rm)
  jfs_nr_float32 result = (jfs_nr_float32)value;
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float64 jfs_nr_convert_from_unsigned_bv_to_float64(
    JFS_NR_RM rm, const jfs_nr_bitvector_ty value,
    const jfs_nr_width_ty bitWidth) {
  jassert(jfs_nr_is_valid(value, bitWidth));
  JFS_NR_SET_RM(rm)
  jfs_nr_float64 result = (jfs_nr_float64)value;
  JFS_NR_RESET_RM(rm)
  return result;
}

NO_OPT jfs_nr_float32 jfs_nr_convert_from_signed_bv_to_float32(
    JFS_NR_RM rm, const jfs_nr_bitvector_ty value,
    const jfs_nr_width_ty bitWidth) {
  jassert(jfs_nr_is_valid(value, bitWidth));
  // If the bitvector is negative turn it into a positive value and negate
  // the float afterwards.
  bool shouldNegateFloat = false;
  jfs_nr_bitvector_ty positiveBv = value;
  if (jfs_nr_bvslt(positiveBv, 0, bitWidth)) {
    shouldNegateFloat = true;
    positiveBv = jfs_nr_bvneg(value, bitWidth);
  }
  jassert(jfs_nr_bvsge(positiveBv, 0, bitWidth));
  JFS_NR_SET_RM(rm)
  jfs_nr_float32 result = (jfs_nr_float32)positiveBv;
  JFS_NR_RESET_RM(rm)
  if (shouldNegateFloat) {
    result = jfs_nr_float32_neg(result);
  }
  return result;
}

NO_OPT jfs_nr_float64 jfs_nr_convert_from_signed_bv_to_float64(
    JFS_NR_RM rm, const jfs_nr_bitvector_ty value,
    const jfs_nr_width_ty bitWidth) {
  jassert(jfs_nr_is_valid(value, bitWidth));
  // If the bitvector is negative turn it into a positive value and negate
  // the float afterwards.
  bool shouldNegateFloat = false;
  jfs_nr_bitvector_ty positiveBv = value;
  if (jfs_nr_bvslt(positiveBv, 0, bitWidth)) {
    shouldNegateFloat = true;
    positiveBv = jfs_nr_bvneg(value, bitWidth);
  }
  jassert(jfs_nr_bvsge(positiveBv, 0, bitWidth));
  JFS_NR_SET_RM(rm)
  jfs_nr_float64 result = (jfs_nr_float64)positiveBv;
  JFS_NR_RESET_RM(rm)
  if (shouldNegateFloat) {
    result = jfs_nr_float64_neg(result);
  }
  return result;
}

// FIXME: We should probably pick a single value to represent the
// undefined case so we can test for it.
NO_OPT ALLOW_OVERFLOW jfs_nr_bitvector_ty jfs_nr_float32_convert_to_unsigned_bv(
    JFS_NR_RM rm, jfs_nr_float32 value, const jfs_nr_width_ty bitWidth) {
  JFS_NR_SET_RM(rm)
  jfs_nr_bitvector_ty result = (jfs_nr_bitvector_ty)value;
  JFS_NR_RESET_RM(rm)
  // Mask off result
  result = jfs_nr_get_bitvector_mod(result, bitWidth);
  jassert(jfs_nr_is_valid(result, bitWidth));
  return result;
}

// FIXME: We should probably pick a single value to represent the
// undefined case so we can test for it.
NO_OPT ALLOW_OVERFLOW jfs_nr_bitvector_ty jfs_nr_float64_convert_to_unsigned_bv(
    JFS_NR_RM rm, jfs_nr_float64 value, const jfs_nr_width_ty bitWidth) {
  JFS_NR_SET_RM(rm)
  jfs_nr_bitvector_ty result = (jfs_nr_bitvector_ty)value;
  JFS_NR_RESET_RM(rm)
  // Mask off result
  result = jfs_nr_get_bitvector_mod(result, bitWidth);
  jassert(jfs_nr_is_valid(result, bitWidth));
  return result;
}

// FIXME: We should probably pick a single value to represent the
// undefined case so we can test for it.
NO_OPT ALLOW_OVERFLOW jfs_nr_bitvector_ty jfs_nr_float32_convert_to_signed_bv(
    JFS_NR_RM rm, jfs_nr_float32 value, const jfs_nr_width_ty bitWidth) {
  bool shouldNegateResult = false;
  jfs_nr_float32 positiveFloat = value;
  // if float is negative turn it into a positive value and negate the
  // bitvector afterwards.
  if (jfs_nr_float32_is_negative(value)) {
    positiveFloat = jfs_nr_float32_neg(value);
    shouldNegateResult = true;
  }
  jassert(jfs_nr_float32_is_positive(positiveFloat));
  JFS_NR_SET_RM(rm)
  jfs_nr_bitvector_ty result = (jfs_nr_bitvector_ty)positiveFloat;
  JFS_NR_RESET_RM(rm)
  // Mask off result
  result = jfs_nr_get_bitvector_mod(result, bitWidth);
  if (shouldNegateResult) {
    result = jfs_nr_bvneg(result, bitWidth);
  }
  jassert(jfs_nr_is_valid(result, bitWidth));
  return result;
}

// FIXME: We should probably pick a single value to represent the
// undefined case so we can test for it.
NO_OPT ALLOW_OVERFLOW jfs_nr_bitvector_ty jfs_nr_float64_convert_to_signed_bv(
    JFS_NR_RM rm, jfs_nr_float64 value, const jfs_nr_width_ty bitWidth) {
  bool shouldNegateResult = false;
  jfs_nr_float64 positiveFloat = value;
  // if float is negative turn it into a positive value and negate the
  // bitvector afterwards.
  if (jfs_nr_float64_is_negative(value)) {
    positiveFloat = jfs_nr_float64_neg(value);
    shouldNegateResult = true;
  }
  jassert(jfs_nr_float64_is_positive(positiveFloat));
  JFS_NR_SET_RM(rm)
  jfs_nr_bitvector_ty result = (jfs_nr_bitvector_ty)positiveFloat;
  JFS_NR_RESET_RM(rm)
  // Mask off result
  result = jfs_nr_get_bitvector_mod(result, bitWidth);
  if (shouldNegateResult) {
    result = jfs_nr_bvneg(result, bitWidth);
  }
  jassert(jfs_nr_is_valid(result, bitWidth));
  return result;
}

#undef JFS_NR_SET_RM
#undef JFS_NR_RESET_RM
#undef ALLOW_OVERFLOW

jfs_nr_float32 jfs_nr_float32_rem(const jfs_nr_float32 lhs,
                                  const jfs_nr_float32 rhs) {
  return remainderf(lhs, rhs);
}

jfs_nr_float64 jfs_nr_float64_rem(const jfs_nr_float64 lhs,
                                  const jfs_nr_float64 rhs) {
  return remainder(lhs, rhs);
}

jfs_nr_float64 jfs_nr_float64_neg(const jfs_nr_float64 value) {
  uint64_t rawBits = jfs_nr_float64_get_raw_bits(value);
  // Flip sign bit
  rawBits ^= UINT64_C(0x8000000000000000);
  return jfs_nr_bitcast_bv_to_float64(rawBits);
}

jfs_nr_float32 jfs_nr_float32_min(const jfs_nr_float32 lhs,
                                  const jfs_nr_float32 rhs) {
  return ::fminf(lhs, rhs);
}

jfs_nr_float64 jfs_nr_float64_min(const jfs_nr_float64 lhs,
                                  const jfs_nr_float64 rhs) {
  return ::fmin(lhs, rhs);
}

jfs_nr_float32 jfs_nr_float32_max(const jfs_nr_float32 lhs,
                                  const jfs_nr_float32 rhs) {
  return ::fmaxf(lhs, rhs);
}

jfs_nr_float64 jfs_nr_float64_max(const jfs_nr_float64 lhs,
                                  const jfs_nr_float64 rhs) {
  return ::fmax(lhs, rhs);
}

bool jfs_nr_float32_leq(const jfs_nr_float32 lhs, const jfs_nr_float32 rhs) {
  return lhs <= rhs;
}

bool jfs_nr_float64_leq(const jfs_nr_float64 lhs, const jfs_nr_float64 rhs) {
  return lhs <= rhs;
}

bool jfs_nr_float32_lt(const jfs_nr_float32 lhs, const jfs_nr_float32 rhs) {
  return lhs < rhs;
}

bool jfs_nr_float64_lt(const jfs_nr_float64 lhs, const jfs_nr_float64 rhs) {
  return lhs < rhs;
}

bool jfs_nr_float32_gt(const jfs_nr_float32 lhs, const jfs_nr_float32 rhs) {
  return lhs > rhs;
}

bool jfs_nr_float64_gt(const jfs_nr_float64 lhs, const jfs_nr_float64 rhs) {
  return lhs > rhs;
}

bool jfs_nr_float32_geq(const jfs_nr_float32 lhs, const jfs_nr_float32 rhs) {
  return lhs >= rhs;
}

bool jfs_nr_float64_geq(const jfs_nr_float64 lhs, const jfs_nr_float64 rhs) {
  return lhs >= rhs;
}

jfs_nr_float32 jfs_nr_bitcast_bv_to_float32(const jfs_nr_bitvector_ty value) {
  jassert((value & UINT64_C(0xffffffff00000000)) == 0);
  jfs_nr_float32 data = 0.0;
  memcpy(&data, &value, sizeof(data));
  return data;
}

jfs_nr_float64 jfs_nr_bitcast_bv_to_float64(const jfs_nr_bitvector_ty value) {
  jfs_nr_float64 data = 0.0;
  memcpy(&data, &value, sizeof(data));
  return data;
}

// Note significand does not contain implicit bit
jfs_nr_float32
jfs_nr_make_float32_from_triple(const jfs_nr_bitvector_ty sign,
                                const jfs_nr_bitvector_ty exponent,
                                const jfs_nr_bitvector_ty significand) {
  static_assert((sizeof(jfs_nr_bitvector_ty) * 8) >= 32, "not enough bits");
  jassert((sign & (~(UINT64_C(0x1)))) == 0);             // only 1 bit
  jassert((exponent & (~(UINT64_C(0xff)))) == 0);        // only 8-bits
  jassert((significand & (~(UINT64_C(0x7fffff)))) == 0); // only 23-bits
  jfs_nr_bitvector_ty rawBits = significand;
  rawBits |= (exponent << 23);
  rawBits |= (sign << 31);
  return jfs_nr_bitcast_bv_to_float32(rawBits);
}

jfs_nr_float64
jfs_nr_make_float64_from_triple(const jfs_nr_bitvector_ty sign,
                                const jfs_nr_bitvector_ty exponent,
                                const jfs_nr_bitvector_ty significand) {
  // TODO: Finish!
  static_assert((sizeof(jfs_nr_bitvector_ty) * 8) >= 64, "not enough bits");
  jassert((sign & (~(UINT64_C(0x1)))) == 0);       // only 1 bit
  jassert((exponent & (~(UINT64_C(0x7ff)))) == 0); // only 11-bits
  jassert((significand & (~(UINT64_C(0x000fffffffffffff)))) ==
          0); // only 52-bits
  jfs_nr_bitvector_ty rawBits = significand;
  rawBits |= (exponent << 52);
  rawBits |= (sign << 63);
  return jfs_nr_bitcast_bv_to_float64(rawBits);
}

jfs_nr_float32 jfs_nr_make_float32_from_buffer(const uint8_t* bufferData,
                                               const uint64_t bufferSize,
                                               const uint64_t lowBit) {
  return jfs_nr_internal_make_float_from_buffer<jfs_nr_float32>(
      bufferData, bufferSize, lowBit);
}

jfs_nr_float64 jfs_nr_make_float64_from_buffer(const uint8_t* bufferData,
                                               const uint64_t bufferSize,
                                               const uint64_t lowBit) {
  return jfs_nr_internal_make_float_from_buffer<jfs_nr_float64>(
      bufferData, bufferSize, lowBit);
}

#ifdef __cplusplus
}
#endif
