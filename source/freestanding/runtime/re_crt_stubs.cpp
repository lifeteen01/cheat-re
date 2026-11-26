/* Freestanding CRT stubs — provides the symbols GCC's freestanding mode
 * requires (memcpy, memmove, memset, memcmp) and math functions that
 * __builtin_* lowers to external calls (roundf, round).
 *
 * These are linked into the final DLL to achieve zero CRT imports.
 * On Linux testing, they shadow the libc versions with no harm.
 * Compile: -ffreestanding -fno-builtin -O2 */

#include "re_types.h"

extern "C" {

void *memcpy(void *dst, const void *src, ReUSize n) {
    auto *d = static_cast<unsigned char *>(dst);
    auto *s = static_cast<const unsigned char *>(src);
    for (ReUSize i = 0; i < n; ++i)
        d[i] = s[i];
    return dst;
}

void *memmove(void *dst, const void *src, ReUSize n) {
    auto *d = static_cast<unsigned char *>(dst);
    auto *s = static_cast<const unsigned char *>(src);
    if (d < s || d >= s + n) {
        for (ReUSize i = 0; i < n; ++i)
            d[i] = s[i];
    } else {
        for (ReUSize i = n; i > 0; --i)
            d[i - 1] = s[i - 1];
    }
    return dst;
}

void *memset(void *dst, int val, ReUSize n) {
    auto *d = static_cast<unsigned char *>(dst);
    for (ReUSize i = 0; i < n; ++i)
        d[i] = static_cast<unsigned char>(val);
    return dst;
}

int memcmp(const void *a, const void *b, ReUSize n) {
    auto *p = static_cast<const unsigned char *>(a);
    auto *q = static_cast<const unsigned char *>(b);
    for (ReUSize i = 0; i < n; ++i) {
        if (p[i] != q[i])
            return p[i] < q[i] ? -1 : 1;
    }
    return 0;
}

float roundf(float x) {
    /* SSE4.1 roundss with mode 0 = round-to-nearest */
    float result;
    __asm__ volatile("roundss $0, %1, %0" : "=x"(result) : "x"(x));
    return result;
}

double round(double x) {
    double result;
    __asm__ volatile("roundsd $0, %1, %0" : "=x"(result) : "x"(x));
    return result;
}

} /* extern "C" */
