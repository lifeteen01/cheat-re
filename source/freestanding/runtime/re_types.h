#ifndef RE_FREESTANDING_TYPES_H
#define RE_FREESTANDING_TYPES_H

/* Freestanding base types via compiler builtins only.
 * No standard library headers. Compile with:
 * -ffreestanding -fno-builtin -fno-exceptions -fno-rtti */

/* ---- Fixed-width integer types ---- */
typedef __UINT8_TYPE__   ReU8;
typedef __UINT16_TYPE__  ReU16;
typedef __UINT32_TYPE__  ReU32;
typedef __UINT64_TYPE__  ReU64;
typedef __INT8_TYPE__    ReI8;
typedef __INT16_TYPE__   ReI16;
typedef __INT32_TYPE__   ReI32;
typedef __INT64_TYPE__   ReI64;

/* ---- Size types ---- */
typedef __SIZE_TYPE__    ReUSize;
typedef __PTRDIFF_TYPE__ ReISize;

/* ---- Boolean (ReU8 to avoid C++ bool ABI surprises) ---- */
typedef ReU8 ReBool;
#define RE_TRUE  ((ReBool)1)
#define RE_FALSE ((ReBool)0)

/* ---- Floating point (built-in types, just typedef) ---- */
typedef float  ReF32;
typedef double ReF64;

/* ---- Limits macros (replacing <climits>/<cstdint> macros) ---- */
#ifndef INT8_MIN
#define INT8_MIN   (-128)
#define INT8_MAX   127
#define UINT8_MAX  255
#define INT16_MIN  (-32768)
#define INT16_MAX  32767
#define UINT16_MAX 65535
#define INT32_MIN  (-2147483647 - 1)
#define INT32_MAX  2147483647
#define UINT32_MAX 0xFFFFFFFFU
#define INT64_MIN  (-9223372036854775807LL - 1)
#define INT64_MAX  9223372036854775807LL
#define UINT64_MAX 0xFFFFFFFFFFFFFFFFULL
#define SIZE_MAX   UINT64_MAX
#endif

/* ---- Raw memory byte ---- */
typedef unsigned char ReByte;

/* ---- Project-specific address types ---- */
typedef ReU64 ReAddress;
typedef ReU32 ReRva;

/* ---- Null pointer ---- */
#ifdef __cplusplus
#define re_nullptr nullptr
#else
#define re_nullptr ((void*)0)
#endif

/* ---- offsetof (freestanding-mandated, via compiler builtin) ---- */
#ifndef offsetof
#define offsetof(type, member) __builtin_offsetof(type, member)
#endif

/* ---- Assert macro (trap on failure, no <cassert>) ---- */
#define RE_ASSERT(x) do { if (!(x)) __builtin_trap(); } while(0)
#ifndef assert
#define assert RE_ASSERT
#endif

/* ---- SSE intrinsics (compiler-provided, not CRT) ----
   mm_malloc.h requires CRT (stdlib.h), so define its guard to skip it. */
#ifdef __SSE__
#define _MM_MALLOC_H_INCLUDED
#include <xmmintrin.h>
#endif
#ifdef __SSE2__
#include <emmintrin.h>
#endif

#ifdef __cplusplus

/* ---- Static asserts for platform assumptions ---- */
static_assert(sizeof(ReU8)  == 1, "ReU8 must be 1 byte");
static_assert(sizeof(ReU16) == 2, "ReU16 must be 2 bytes");
static_assert(sizeof(ReU32) == 4, "ReU32 must be 4 bytes");
static_assert(sizeof(ReU64) == 8, "ReU64 must be 8 bytes");
static_assert(sizeof(ReI8)  == 1, "ReI8 must be 1 byte");
static_assert(sizeof(ReI16) == 2, "ReI16 must be 2 bytes");
static_assert(sizeof(ReI32) == 4, "ReI32 must be 4 bytes");
static_assert(sizeof(ReI64) == 8, "ReI64 must be 8 bytes");
static_assert(sizeof(ReUSize) == sizeof(void*), "ReUSize must match pointer size");
static_assert(sizeof(ReISize) == sizeof(void*), "ReISize must match pointer size");
static_assert(sizeof(ReF32) == 4, "ReF32 must be 4 bytes");
static_assert(sizeof(ReF64) == 8, "ReF64 must be 8 bytes");
static_assert(sizeof(ReAddress) == 8, "ReAddress must be 8 bytes");
static_assert(sizeof(ReRva) == 4, "ReRva must be 4 bytes");

/* IEEE 754 float check: 1.0f has known bit pattern 0x3f800000 */
static_assert(__builtin_bit_cast(ReU32, (ReF32)1.0f) == 0x3f800000u,
              "analysis requires IEEE binary32 float");
static_assert(__builtin_bit_cast(ReU64, (ReF64)1.0) == 0x3ff0000000000000ULL,
              "analysis requires IEEE binary64 double");

/* Little-endian check */
static_assert(__BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__,
              "freestanding runtime requires a little-endian host");

/* ---- Placement new (needed for containers, no <new> header) ---- */
#if !defined(__STDC_HOSTED__) || !__STDC_HOSTED__
inline void* operator new(ReUSize, void* p) noexcept { return p; }
inline void operator delete(void*, void*) noexcept {}
#endif
/* In hosted mode, <new> is included at the end of this header. */

namespace re {

/* ---- NullOpt sentinel for ReOptional ---- */
struct ReNullOpt {
    struct Tag {};
    explicit constexpr ReNullOpt(Tag) {}
};
inline constexpr ReNullOpt re_nullopt{ReNullOpt::Tag{}};

/* ---- re_move (std::move equivalent) ---- */
namespace detail {
template<typename T> struct RemoveReference      { using type = T; };
template<typename T> struct RemoveReference<T&>  { using type = T; };
template<typename T> struct RemoveReference<T&&> { using type = T; };
} // namespace detail

template<typename T>
constexpr typename detail::RemoveReference<T>::type&& re_move(T&& t) noexcept {
    return static_cast<typename detail::RemoveReference<T>::type&&>(t);
}

/* ---- re_forward (std::forward equivalent) ---- */
template<typename T>
constexpr T&& re_forward(typename detail::RemoveReference<T>::type& t) noexcept {
    return static_cast<T&&>(t);
}
template<typename T>
constexpr T&& re_forward(typename detail::RemoveReference<T>::type&& t) noexcept {
    return static_cast<T&&>(t);
}

/* ---- Memory intrinsics (CRT-free) ---- */
inline void* re_memcpy(void* dst, const void* src, ReUSize n) {
    return __builtin_memcpy(dst, src, n);
}
inline void* re_memset(void* dst, int val, ReUSize n) {
    return __builtin_memset(dst, val, n);
}
inline void* re_memmove(void* dst, const void* src, ReUSize n) {
    return __builtin_memmove(dst, src, n);
}
inline int re_memcmp(const void* a, const void* b, ReUSize n) {
    return __builtin_memcmp(a, b, n);
}

/* ---- re_bit_cast (std::bit_cast equivalent, GCC 11+) ---- */
template<typename To, typename From>
constexpr To re_bit_cast(const From& from) noexcept {
    static_assert(sizeof(To) == sizeof(From), "re_bit_cast requires equal sizes");
    static_assert(__is_trivially_copyable(To), "re_bit_cast target must be trivially copyable");
    static_assert(__is_trivially_copyable(From), "re_bit_cast source must be trivially copyable");
    return __builtin_bit_cast(To, from);
}

/* ---- Type traits using compiler builtins ---- */
template<typename T>
struct re_is_trivially_copyable {
    static constexpr bool value = __is_trivially_copyable(T);
};
template<typename T>
inline constexpr bool re_is_trivially_copyable_v = __is_trivially_copyable(T);

template<typename T>
struct re_is_trivially_destructible {
    static constexpr bool value = __has_trivial_destructor(T);
};
template<typename T>
inline constexpr bool re_is_trivially_destructible_v = __has_trivial_destructor(T);

template<bool Cond, typename T = void> struct re_enable_if {};
template<typename T> struct re_enable_if<true, T> { using type = T; };
template<bool Cond, typename T = void>
using re_enable_if_t = typename re_enable_if<Cond, T>::type;

template<typename T, typename U> struct re_is_same       { static constexpr bool value = false; };
template<typename T>             struct re_is_same<T, T>  { static constexpr bool value = true; };
template<typename T, typename U>
inline constexpr bool re_is_same_v = re_is_same<T, U>::value;

/* ---- Integral constant (minimal) ---- */
template<typename T, T V>
struct re_integral_constant {
    static constexpr T value = V;
    using value_type = T;
    constexpr operator value_type() const noexcept { return value; }
};
using re_true_type  = re_integral_constant<bool, true>;
using re_false_type = re_integral_constant<bool, false>;

/* ---- Addressof without <memory> ---- */
template<typename T>
constexpr T* re_addressof(T& obj) noexcept {
    return __builtin_addressof(obj);
}

/* ---- Swap without <utility> ---- */
template<typename T>
constexpr void re_swap(T& a, T& b) noexcept {
    T tmp = re_move(a);
    a = re_move(b);
    b = re_move(tmp);
}

/* ---- Bit rotation ---- */
constexpr ReU32 re_rotr(ReU32 x, int n) { return (x >> (n & 31)) | (x << ((-n) & 31)); }
constexpr ReU32 re_rotl(ReU32 x, int n) { return (x << (n & 31)) | (x >> ((-n) & 31)); }
constexpr ReU64 re_rotr(ReU64 x, int n) { return (x >> (n & 63)) | (x << ((-n) & 63)); }
constexpr ReU64 re_rotl(ReU64 x, int n) { return (x << (n & 63)) | (x >> ((-n) & 63)); }

/* ---- Bit ceil (round up to power of 2) ---- */
constexpr ReU32 re_bit_ceil(ReU32 x) {
    if (x <= 1) return 1;
    return ReU32(1) << (32 - __builtin_clz(x - 1));
}

/* ---- Decay (strip references and cv-qualifiers) ---- */
template<typename T> struct re_remove_reference      { using type = T; };
template<typename T> struct re_remove_reference<T&>   { using type = T; };
template<typename T> struct re_remove_reference<T&&>  { using type = T; };
template<typename T> struct re_remove_cv              { using type = T; };
template<typename T> struct re_remove_cv<const T>     { using type = T; };
template<typename T> struct re_remove_cv<volatile T>  { using type = T; };
template<typename T> struct re_remove_cv<const volatile T> { using type = T; };
template<typename T> using re_decay_t = typename re_remove_cv<typename re_remove_reference<T>::type>::type;

/* ---- is_integral ---- */
template<typename T> inline constexpr bool re_is_integral_v = false;
template<> inline constexpr bool re_is_integral_v<bool> = true;
template<> inline constexpr bool re_is_integral_v<char> = true;
template<> inline constexpr bool re_is_integral_v<signed char> = true;
template<> inline constexpr bool re_is_integral_v<unsigned char> = true;
template<> inline constexpr bool re_is_integral_v<short> = true;
template<> inline constexpr bool re_is_integral_v<unsigned short> = true;
template<> inline constexpr bool re_is_integral_v<int> = true;
template<> inline constexpr bool re_is_integral_v<unsigned int> = true;
template<> inline constexpr bool re_is_integral_v<long> = true;
template<> inline constexpr bool re_is_integral_v<unsigned long> = true;
template<> inline constexpr bool re_is_integral_v<long long> = true;
template<> inline constexpr bool re_is_integral_v<unsigned long long> = true;

/* ---- Fill/copy N ---- */
template<typename It, typename T>
It re_fill_n(It first, ReUSize count, const T& value) {
    for (ReUSize i = 0; i < count; ++i) *first++ = value;
    return first;
}
template<typename InputIt, typename OutputIt>
OutputIt re_copy_n(InputIt first, ReUSize count, OutputIt dest) {
    for (ReUSize i = 0; i < count; ++i) *dest++ = *first++;
    return dest;
}

/* ---- as_bytes span adapter ---- */
inline const ReByte* re_as_bytes(const void* data, ReUSize) {
    return reinterpret_cast<const ReByte*>(data);
}

} // namespace re

/* ---- std::initializer_list (compiler-magic type, must be in namespace std) ----
   Defined here so containers (re_vector.h) can use brace-init-list syntax
   without depending on re_utility.h.  Guard prevents double-definition. */
#if defined(__STDC_HOSTED__) && __STDC_HOSTED__
#include <initializer_list>
#include <new>
#else
#ifndef RE_INITIALIZER_LIST_DEFINED
#define RE_INITIALIZER_LIST_DEFINED
namespace std {
template<typename T>
class initializer_list {
    const T*            array_;
    decltype(sizeof(0)) len_;
    constexpr initializer_list(const T* a, decltype(sizeof(0)) l)
        : array_(a), len_(l) {}
public:
    constexpr initializer_list() : array_(nullptr), len_(0) {}
    constexpr decltype(sizeof(0)) size()  const { return len_; }
    constexpr const T*            begin() const { return array_; }
    constexpr const T*            end()   const { return array_ + len_; }
};
} // namespace std
#endif /* RE_INITIALIZER_LIST_DEFINED */
#endif /* !__STDC_HOSTED__ */

#endif /* __cplusplus */
#endif /* RE_FREESTANDING_TYPES_H */
