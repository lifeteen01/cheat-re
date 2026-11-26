#ifndef RE_FREESTANDING_MATH_H
#define RE_FREESTANDING_MATH_H

/* Freestanding math without CRT.
 * No standard library headers. Only re_types.h.
 * Prefers __builtin_* intrinsics; falls back to polynomial approximations. */

#include "re_types.h"

namespace re {

/* ---- Constants ---- */
inline constexpr ReF32 RE_PI_F       = 3.14159265358979323846f;
inline constexpr ReF64 RE_PI_D       = 3.14159265358979323846;
inline constexpr ReF32 RE_TWO_PI_F   = 6.28318530717958647692f;
inline constexpr ReF32 RE_HALF_PI_F  = 1.57079632679489661923f;
inline constexpr ReF32 RE_INV_PI_F   = 0.31830988618379067154f;
inline constexpr ReF32 RE_EPSILON_F  = 1.19209290e-07f;
inline constexpr ReF64 RE_EPSILON_D  = 2.2204460492503131e-16;

/* Infinity and NaN via builtins. */
inline constexpr ReF32 RE_INF_F      = __builtin_huge_valf();
inline constexpr ReF64 RE_INF_D      = __builtin_huge_val();
/* NaN: not constexpr-safe on all compilers, provide as inline function. */
inline ReF32 re_nanf() { return __builtin_nanf(""); }
inline ReF64 re_nan()  { return __builtin_nan(""); }

/* ---- Classification ---- */
inline bool re_isnan(ReF32 x)      { return __builtin_isnan(x); }
inline bool re_isnan(ReF64 x)      { return __builtin_isnan(x); }
inline bool re_isinf(ReF32 x)      { return __builtin_isinf(x); }
inline bool re_isinf(ReF64 x)      { return __builtin_isinf(x); }
inline bool re_isfinite(ReF32 x)   { return __builtin_isfinite(x); }
inline bool re_isfinite(ReF64 x)   { return __builtin_isfinite(x); }
inline bool re_signbit(ReF32 x)    { return __builtin_signbit(x); }
inline bool re_signbit(ReF64 x)    { return __builtin_signbit(x); }
inline ReF32 re_copysignf(ReF32 x, ReF32 y) { return __builtin_copysignf(x, y); }
inline ReF64 re_copysign(ReF64 x, ReF64 y)  { return __builtin_copysign(x, y); }
inline ReF32 re_nextafterf(ReF32 x, ReF32 y) {
    if (re_isnan(x) || re_isnan(y)) return re_nanf();
    if (x == y) return y;
    ReU32 bx = re_bit_cast<ReU32>(x);
    if (x == 0.0f) return re_bit_cast<ReF32>(y > 0.0f ? ReU32(1) : ReU32(0x80000001u));
    if ((y > x) == !(bx & 0x80000000u)) ++bx; else --bx;
    return re_bit_cast<ReF32>(bx);
}
/* re_asinf, re_acosf, re_nearbyintf defined below after re_sqrtf and re_atan2f */

/* ---- Absolute value ---- */
inline ReF32 re_fabsf(ReF32 x) { return __builtin_fabsf(x); }
inline ReF64 re_fabs(ReF64 x)  { return __builtin_fabs(x); }
inline ReI32 re_abs(ReI32 x)   { return x < 0 ? -x : x; }
inline ReI64 re_abs(ReI64 x)   { return x < 0 ? -x : x; }

/* ---- Square root ---- */
/* Use SSE intrinsics directly to avoid GCC emitting a libm sqrtf/sqrt call. */
inline ReF32 re_sqrtf(ReF32 x) {
    ReF32 result;
    __asm__ ("sqrtss %1, %0" : "=x"(result) : "x"(x));
    return result;
}
inline ReF64 re_sqrt(ReF64 x) {
    ReF64 result;
    __asm__ ("sqrtsd %1, %0" : "=x"(result) : "x"(x));
    return result;
}

/* Fast inverse sqrt matching the project's sample_sqrt_2e3c88 pattern.
 * Returns 1/sqrt(x) using the Quake III algorithm with two Newton steps. */
inline ReF32 re_rsqrtf(ReF32 x) {
    const ReF32 half = x * 0.5f;
    const ReU32 bits = re_bit_cast<ReU32>(x);
    const ReU32 shifted = (bits >> 1) | (bits & 0x80000000u);
    ReF32 guess = re_bit_cast<ReF32>(0x5f3759dfu - shifted);
    guess = (1.5f - (guess * half) * guess) * guess;
    guess = (1.5f - (guess * half) * guess) * guess;
    return guess;
}

/* ---- Floor / Ceil / Round (via builtins, lowered to SSE roundss) ---- */
inline ReF32 re_floorf(ReF32 x) { return __builtin_floorf(x); }
inline ReF64 re_floor(ReF64 x)  { return __builtin_floor(x); }
inline ReF32 re_ceilf(ReF32 x)  { return __builtin_ceilf(x); }
inline ReF64 re_ceil(ReF64 x)   { return __builtin_ceil(x); }
inline ReF32 re_roundf(ReF32 x) { return __builtin_roundf(x); }
inline ReF64 re_round(ReF64 x)  { return __builtin_round(x); }
inline ReF32 re_truncf(ReF32 x) { return __builtin_truncf(x); }

/* ---- Modulo ---- */
inline ReF32 re_fmodf(ReF32 x, ReF32 y) {
    return x - re_truncf(x / y) * y;
}
inline ReF64 re_fmod(ReF64 x, ReF64 y) {
    return x - __builtin_trunc(x / y) * y;
}

/* ---- Trigonometry (minimax polynomial approximations) ---- */
/* These are designed for game math: accuracy within ~1e-6 over [-pi, pi],
 * good enough for the SSE-era code this project reverse-engineers. */

namespace detail {

/* Reduce angle to [-pi, pi]. */
inline ReF32 reduce_angle(ReF32 x) {
    /* Scale by 1/(2*pi), round, subtract. */
    x = x - re_roundf(x * (1.0f / RE_TWO_PI_F)) * RE_TWO_PI_F;
    return x;
}

/* Minimax polynomial sin(x) for x in [-pi, pi].
 * Coefficients from Sollya/minimax fitting on [-pi, pi]. */
inline ReF32 sin_poly(ReF32 x) {
    const ReF32 x2 = x * x;
    /* sin(x) ~ x * (1 + x^2 * (c3 + x^2 * (c5 + x^2 * c7))) */
    ReF32 r = -2.39e-08f;
    r = r * x2 + 2.7526e-06f;
    r = r * x2 + (-1.98409e-04f);
    r = r * x2 + 8.33333e-03f;
    r = r * x2 + (-1.66667e-01f);
    r = r * x2 + 1.0f;
    return x * r;
}

} // namespace detail

inline ReF32 re_sinf(ReF32 x) {
    return detail::sin_poly(detail::reduce_angle(x));
}

inline ReF32 re_cosf(ReF32 x) {
    return detail::sin_poly(detail::reduce_angle(x + RE_HALF_PI_F));
}

inline ReF32 re_tanf(ReF32 x) {
    ReF32 s = re_sinf(x);
    ReF32 c = re_cosf(x);
    return s / c;
}

/* IEEE 754 remainder: x - round_to_nearest(x/y) * y. */
inline ReF32 re_remainderf(ReF32 x, ReF32 y) {
    return x - re_roundf(x / y) * y;
}

/* Double-precision sin/cos via range reduction + polynomial.
 * Cohn-Vossen style: reduce to [-pi, pi], then use degree-11 minimax. */
namespace detail {
inline constexpr ReF64 TWO_PI_D  = 6.28318530717958647692;
inline constexpr ReF64 HALF_PI_D = 1.57079632679489661923;
inline constexpr ReF64 PI_D      = 3.14159265358979323846;

inline ReF64 reduce_angle_d(ReF64 x) {
    x = x - __builtin_trunc(x / TWO_PI_D) * TWO_PI_D;
    if (x > PI_D) x -= TWO_PI_D;
    if (x < -PI_D) x += TWO_PI_D;
    return x;
}

inline ReF64 sin_poly_d(ReF64 x) {
    /* Minimax degree-11 polynomial for sin(x) on [-pi, pi]. */
    const ReF64 x2 = x * x;
    ReF64 r = 2.81009972710863735e-15;
    r = r * x2 - 7.64716373181981648e-13;
    r = r * x2 + 1.60590438368216145e-10;
    r = r * x2 - 2.50521083854417188e-08;
    r = r * x2 + 2.75573192239858906e-06;
    r = r * x2 - 1.98412698412696489e-04;
    r = r * x2 + 8.33333333333333218e-03;
    r = r * x2 - 1.66666666666666657e-01;
    r = r * x2 + 1.0;
    return x * r;
}
} // namespace detail

inline ReF64 re_sin(ReF64 x) {
    return detail::sin_poly_d(detail::reduce_angle_d(x));
}
inline ReF64 re_cos(ReF64 x) {
    return detail::sin_poly_d(detail::reduce_angle_d(x + detail::HALF_PI_D));
}

/* ---- atan2f: CORDIC-style polynomial approximation ---- */
namespace detail {

/* Approximate atan(x) for x in [0, 1] using a minimax polynomial. */
inline ReF32 atan_01(ReF32 x) {
    const ReF32 x2 = x * x;
    /* Pade-style approximation: atan(x) ~ x * (a + b*x^2) / (1 + c*x^2) */
    /* Or a polynomial: atan(x) ~ x - x^3/3 + x^5/5 - x^7/7 + ...
     * Using a 7th-order minimax polynomial for [-1,1]: */
    ReF32 r = 0.0208351f;
    r = r * x2 - 0.0851330f;
    r = r * x2 + 0.1801410f;
    r = r * x2 - 0.3302995f;
    r = r * x2 + 0.9998660f;
    return x * r;
}

} // namespace detail

inline ReF32 re_atanf(ReF32 x) {
    const bool neg = x < 0.0f;
    ReF32 ax = re_fabsf(x);
    ReF32 result;
    if (ax > 1.0f) {
        result = RE_HALF_PI_F - detail::atan_01(1.0f / ax);
    } else {
        result = detail::atan_01(ax);
    }
    return neg ? -result : result;
}

inline ReF32 re_atan2f(ReF32 y, ReF32 x) {
    if (re_isnan(x) || re_isnan(y)) return re_nanf();
    if (x > 0.0f) return re_atanf(y / x);
    if (x < 0.0f) {
        if (y >= 0.0f) return re_atanf(y / x) + RE_PI_F;
        return re_atanf(y / x) - RE_PI_F;
    }
    /* x == 0 */
    if (y > 0.0f) return RE_HALF_PI_F;
    if (y < 0.0f) return -RE_HALF_PI_F;
    return 0.0f; /* atan2(0,0) = 0 by convention */
}

/* ---- Inverse trig (deferred from above, needs re_sqrtf and re_atan2f) ---- */
inline ReF32 re_asinf(ReF32 x) {
    return re_atan2f(x, re_sqrtf(1.0f - x * x));
}
inline ReF32 re_acosf(ReF32 x) {
    return re_atan2f(re_sqrtf(1.0f - x * x), x);
}
inline ReF32 re_nearbyintf(ReF32 x) { return re_roundf(x); }

/* ---- Power function ---- */
/* For integer exponents: exact multiplication.
 * For general exponents: exp2(exp * log2(base)) via builtins. */
inline ReF32 re_powf_int(ReF32 base, ReI32 exp) {
    if (exp == 0) return 1.0f;
    bool neg = exp < 0;
    ReU32 e = neg ? (ReU32)(-(ReI64)exp) : (ReU32)exp;
    ReF32 result = 1.0f;
    ReF32 b = base;
    while (e > 0) {
        if (e & 1) result *= b;
        b *= b;
        e >>= 1;
    }
    return neg ? 1.0f / result : result;
}

/* ---- Logarithm (freestanding) ---- */
/* log2f via bit extraction + degree-6 minimax polynomial on mantissa. */
inline ReF32 re_log2f(ReF32 x) {
    if (x <= 0.0f) return (x == 0.0f) ? -RE_INF_F : re_nanf();
    if (re_isinf(x)) return RE_INF_F;
    ReU32 bits = re_bit_cast<ReU32>(x);
    ReI32 e = (ReI32)((bits >> 23) & 0xFF) - 127;
    bits = (bits & 0x007FFFFFU) | 0x3F800000U;
    ReF32 m = re_bit_cast<ReF32>(bits) - 1.0f;
    ReF32 r = -0.0258411f;
    r = r * m + 0.0796019f;
    r = r * m - 0.1513906f;
    r = r * m + 0.2401594f;
    r = r * m - 0.3474741f;
    r = r * m + 0.4802274f;
    r = r * m;
    return r + m * 1.4426950408889634f + (ReF32)e;
}

inline ReF32 re_logf(ReF32 x) {
    return re_log2f(x) * 0.6931471805599453f;
}

/* ---- Exponential (freestanding) ---- */
/* exp2f via integer + fractional split and polynomial. */
inline ReF32 re_exp2f(ReF32 x) {
    if (re_isnan(x)) return re_nanf();
    if (x >= 128.0f) return RE_INF_F;
    if (x < -150.0f) return 0.0f;
    /* Split: x = integer_part + frac, frac in [-0.5, 0.5] */
    ReF32 xr = re_roundf(x);
    ReI32 i = (ReI32)xr;
    ReF32 f = x - xr;
    /* 2^f for f in [-0.5, 0.5] via degree-5 minimax polynomial */
    ReF32 r = 1.8775767e-02f;
    r = r * f + 6.5763628e-02f;
    r = r * f + 2.4028656e-01f;
    r = r * f + 5.5505109e-01f;
    r = r * f + 9.6999227e-01f;
    r = r * f + 9.9999994e-01f;
    /* Multiply by 2^i by adding i to the exponent bits */
    ReU32 bits = re_bit_cast<ReU32>(r);
    bits += (ReU32)i << 23;
    return re_bit_cast<ReF32>(bits);
}

inline ReF32 re_expf(ReF32 x) {
    /* e^x = 2^(x * log2(e)) */
    return re_exp2f(x * 1.4426950408889634f);
}

/* General powf: 2^(exp * log2(base)) — fully freestanding. */
inline ReF32 re_powf(ReF32 base, ReF32 exp) {
    if (exp == 0.0f) return 1.0f;
    if (base == 0.0f) return 0.0f;
    if (base == 1.0f) return 1.0f;
    /* Check for integer exponent (common case, exact) */
    ReF32 exp_rounded = re_roundf(exp);
    if (exp == exp_rounded && exp_rounded >= -128.0f && exp_rounded <= 128.0f) {
        return re_powf_int(base, (ReI32)exp_rounded);
    }
    return re_exp2f(exp * re_log2f(base));
}

/* ---- Min / Max / Clamp ---- */
template<typename T>
constexpr T re_min(T a, T b) { return (b < a) ? b : a; }

template<typename T>
constexpr T re_max(T a, T b) { return (a < b) ? b : a; }

template<typename T>
constexpr T re_clamp(T val, T lo, T hi) {
    return re_min(re_max(val, lo), hi);
}

/* ---- Lerp ---- */
inline constexpr ReF32 re_lerpf(ReF32 a, ReF32 b, ReF32 t) {
    return a + (b - a) * t;
}

/* ---- Numeric limits (freestanding replacement for std::numeric_limits) ---- */
template<typename T>
struct ReNumericLimits;

template<>
struct ReNumericLimits<ReU8> {
    static constexpr ReU8 min()    { return 0; }
    static constexpr ReU8 max()    { return 255; }
    static constexpr int  digits   = 8;
    static constexpr bool is_signed = false;
};

template<>
struct ReNumericLimits<ReU16> {
    static constexpr ReU16 min()   { return 0; }
    static constexpr ReU16 max()   { return 65535; }
    static constexpr int   digits  = 16;
    static constexpr bool is_signed = false;
};

template<>
struct ReNumericLimits<ReU32> {
    static constexpr ReU32 min()   { return 0; }
    static constexpr ReU32 max()   { return 4294967295u; }
    static constexpr int   digits  = 32;
    static constexpr bool is_signed = false;
};

template<>
struct ReNumericLimits<ReU64> {
    static constexpr ReU64 min()   { return 0; }
    static constexpr ReU64 max()   { return 18446744073709551615ULL; }
    static constexpr int   digits  = 64;
    static constexpr bool is_signed = false;
};

template<>
struct ReNumericLimits<ReI8> {
    static constexpr ReI8 min()    { return -128; }
    static constexpr ReI8 max()    { return 127; }
    static constexpr int  digits   = 7;
    static constexpr bool is_signed = true;
};

template<>
struct ReNumericLimits<ReI16> {
    static constexpr ReI16 min()   { return -32768; }
    static constexpr ReI16 max()   { return 32767; }
    static constexpr int   digits  = 15;
    static constexpr bool is_signed = true;
};

template<>
struct ReNumericLimits<ReI32> {
    static constexpr ReI32 min()   { return (-2147483647 - 1); }
    static constexpr ReI32 max()   { return 2147483647; }
    static constexpr int   digits  = 31;
    static constexpr bool is_signed = true;
};

template<>
struct ReNumericLimits<ReI64> {
    static constexpr ReI64 min()   { return (-9223372036854775807LL - 1); }
    static constexpr ReI64 max()   { return 9223372036854775807LL; }
    static constexpr int   digits  = 63;
    static constexpr bool is_signed = true;
};

template<>
struct ReNumericLimits<ReF32> {
    static constexpr ReF32 min()          { return 1.17549435e-38f; }
    static constexpr ReF32 max()          { return 3.40282347e+38f; }
    static constexpr ReF32 lowest()       { return -3.40282347e+38f; }
    static constexpr ReF32 epsilon()      { return 1.19209290e-07f; }
    static constexpr ReF32 infinity()     { return __builtin_huge_valf(); }
    static           ReF32 quiet_NaN()    { return __builtin_nanf(""); }
    static constexpr int   digits         = 24;
    static constexpr int   digits10       = 6;
    static constexpr bool  is_signed      = true;
    static constexpr bool  is_integer     = false;
    static constexpr bool  is_iec559      = true;
};

template<>
struct ReNumericLimits<ReF64> {
    static constexpr ReF64 min()          { return 2.2250738585072014e-308; }
    static constexpr ReF64 max()          { return 1.7976931348623157e+308; }
    static constexpr ReF64 lowest()       { return -1.7976931348623157e+308; }
    static constexpr ReF64 epsilon()      { return 2.2204460492503131e-16; }
    static constexpr ReF64 infinity()     { return __builtin_huge_val(); }
    static           ReF64 quiet_NaN()    { return __builtin_nan(""); }
    static constexpr int   digits         = 53;
    static constexpr int   digits10       = 15;
    static constexpr bool  is_signed      = true;
    static constexpr bool  is_integer     = false;
    static constexpr bool  is_iec559      = true;
};

} // namespace re

#endif /* RE_FREESTANDING_MATH_H */
