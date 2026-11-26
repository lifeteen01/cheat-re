#ifndef RE_FREESTANDING_FORMAT_H
#define RE_FREESTANDING_FORMAT_H

/*  Freestanding formatting utilities — replaces <sstream> / <iostream>.
 *  Integer, hex, and basic float formatting with no CRT printf.
 *  Zero CRT / STL dependencies.  Header-only, namespace re.
 *  Compile: -ffreestanding -fno-builtin -fno-exceptions -fno-rtti -std=c++20 */

#include "re_types.h"
#include "re_string.h"

namespace re {

/* ================================================================
   Integer / hex / float → ReString
   ================================================================ */

inline ReString re_to_string(ReU64 value) {
    if (value == 0) return ReString("0", 1);

    char buf[20]; /* max 20 digits for uint64 */
    int n = 0;
    while (value) {
        buf[n++] = static_cast<char>('0' + value % 10);
        value /= 10;
    }
    /* Reverse into result */
    char res[20];
    for (int i = 0; i < n; ++i) res[i] = buf[n - 1 - i];
    return ReString(res, static_cast<ReUSize>(n));
}

inline ReString re_to_string(ReI64 value) {
    if (value == 0) return ReString("0", 1);

    bool neg = value < 0;
    ReU64 abs;
    if (neg) {
        /* Handle INT64_MIN without UB: -(value+1)+1 */
        abs = static_cast<ReU64>(-(value + 1)) + 1;
    } else {
        abs = static_cast<ReU64>(value);
    }

    char buf[21]; /* 19 digits + possible sign + spare */
    int n = 0;
    while (abs) {
        buf[n++] = static_cast<char>('0' + abs % 10);
        abs /= 10;
    }
    if (neg) buf[n++] = '-';

    char res[21];
    for (int i = 0; i < n; ++i) res[i] = buf[n - 1 - i];
    return ReString(res, static_cast<ReUSize>(n));
}

/* Convenience overloads for narrower integer types.
   Note: on x86_64 GCC/MinGW, ReI32 IS int and ReU32 IS unsigned int. */
inline ReString re_to_string(ReI32 value) { return re_to_string(static_cast<ReI64>(value)); }
inline ReString re_to_string(ReU32 value) { return re_to_string(static_cast<ReU64>(value)); }

/* ---- Hex formatting ---- */
inline ReString re_to_hex(ReU64 value, bool uppercase = true) {
    constexpr char upper[] = "0123456789ABCDEF";
    constexpr char lower[] = "0123456789abcdef";
    const char* tbl = uppercase ? upper : lower;

    if (value == 0) return ReString("0", 1);

    char buf[16];
    int n = 0;
    while (value && n < 16) {
        buf[n++] = tbl[value & 0xF];
        value >>= 4;
    }
    char res[16];
    for (int i = 0; i < n; ++i) res[i] = buf[n - 1 - i];
    return ReString(res, static_cast<ReUSize>(n));
}

inline ReString re_to_hex(ReU32 value, bool uppercase = true) {
    return re_to_hex(static_cast<ReU64>(value), uppercase);
}

/* ---- Float formatting (basic, not printf-exact) ----
   Handles NaN, Inf, negative values, and up to 20 digits of
   fractional precision.  Acceptable for RE diagnostics / logging. */
inline ReString re_to_string(ReF64 value, int precision = 6) {
    if (__builtin_isnan(value))
        return ReString("NaN", 3);
    if (__builtin_isinf(value))
        return value < 0 ? ReString("-Inf", 4) : ReString("Inf", 3);

    if (precision < 0)  precision = 0;
    if (precision > 20) precision = 20;

    char out[64];
    int  pos = 0;

    if (value < 0.0) {
        out[pos++] = '-';
        value = -value;
    }

    /* ---- Integer part via repeated division ---- */
    if (value < 1.0) {
        out[pos++] = '0';
    } else {
        char idigits[24];
        int  ic = 0;
        ReF64 tmp = value;

        /* Find highest power of 10 */
        ReF64 p = 1.0;
        while (p * 10.0 <= tmp && ic < 22) { p *= 10.0; ++ic; }
        ++ic; /* number of digits */

        for (int i = 0; i < ic; ++i) {
            int d = static_cast<int>(tmp / p);
            if (d > 9) d = 9;
            if (d < 0) d = 0;
            idigits[i] = static_cast<char>('0' + d);
            tmp -= d * p;
            p /= 10.0;
        }
        for (int i = 0; i < ic; ++i)
            out[pos++] = idigits[i];

        /* tmp now holds the fractional remainder (approximately) */
        value = tmp;
        if (value < 0.0) value = 0.0;
    }

    /* ---- Fractional part ---- */
    if (precision > 0) {
        out[pos++] = '.';

        /* For values whose integer part was 0, fractional is the whole thing */
        ReF64 frac = value;
        /* If integer part consumed via the digit-extraction above, frac = tmp */
        for (int i = 0; i < precision; ++i) {
            frac *= 10.0;
            int d = static_cast<int>(frac);
            if (d > 9) d = 9;
            if (d < 0) d = 0;
            out[pos++] = static_cast<char>('0' + d);
            frac -= d;
        }
    }

    return ReString(out, static_cast<ReUSize>(pos));
}


/* ================================================================
   ReStringBuilder  —  append-only string accumulator
   ================================================================ */
class ReStringBuilder {
    ReString buf_;
public:
    ReStringBuilder() = default;
    explicit ReStringBuilder(ReUSize initial_cap) { buf_.reserve(initial_cap); }

    ReStringBuilder& append(ReStringView sv) { buf_.append(sv); return *this; }
    ReStringBuilder& append(char c)          { buf_.push_back(c); return *this; }

    ReStringBuilder& append(const char* s, ReUSize len) {
        buf_.append(s, len);
        return *this;
    }

    ReStringBuilder& append_int(ReI64 value) {
        ReString s = re_to_string(value);
        buf_.append(s.view());
        return *this;
    }

    ReStringBuilder& append_uint(ReU64 value) {
        ReString s = re_to_string(value);
        buf_.append(s.view());
        return *this;
    }

    ReStringBuilder& append_hex(ReU64 value) {
        ReString s = re_to_hex(value);
        buf_.append(s.view());
        return *this;
    }

    ReStringBuilder& append_float(ReF64 value, int precision = 6) {
        ReString s = re_to_string(value, precision);
        buf_.append(s.view());
        return *this;
    }

    ReStringBuilder& append_hex_padded(ReU64 value, int width, bool uppercase = true) {
        ReString h = re_to_hex(value, uppercase);
        /* Pad with leading zeros */
        int need = width - static_cast<int>(h.size());
        for (int i = 0; i < need; ++i) buf_.push_back('0');
        buf_.append(h.view());
        return *this;
    }

    ReString build()       { return re_move(buf_); }
    ReStringView view() const { return buf_.view(); }
    ReUSize size() const      { return buf_.size(); }
    bool    empty() const     { return buf_.empty(); }
};

/* ---- Convenience: format an address as 0x<hex16> ---- */
inline ReString re_format_address(ReU64 addr) {
    ReStringBuilder sb(20);
    sb.append(ReStringView("0x", 2));
    sb.append_hex_padded(addr, 16, true);
    return sb.build();
}

/* ================================================================
   re_snprintf — minimal snprintf replacement (no CRT)
   Supports: %d %i %u %x %X %f %s %c %p %% and optional field width,
   zero-pad, left-align, precision, and l/ll/z length modifiers.
   Returns: number of chars that would be written (excluding null),
            matching standard snprintf semantics.
   ================================================================ */
namespace detail {

inline int fmt_write(char* buf, ReUSize buf_size, int pos, char c) {
    if (static_cast<ReUSize>(pos) < buf_size) buf[pos] = c;
    return pos + 1;
}

inline int fmt_write_str(char* buf, ReUSize buf_size, int pos, const char* s) {
    while (*s) {
        if (static_cast<ReUSize>(pos) < buf_size) buf[pos] = *s;
        ++pos; ++s;
    }
    return pos;
}

inline int fmt_pad(char* buf, ReUSize buf_size, int pos, int count, char fill) {
    for (int i = 0; i < count; ++i) {
        if (static_cast<ReUSize>(pos) < buf_size) buf[pos] = fill;
        ++pos;
    }
    return pos;
}

} // namespace detail

inline int re_vsnprintf(char* buf, ReUSize buf_size, const char* fmt, __builtin_va_list ap) {
    int pos = 0;

    while (*fmt) {
        if (*fmt != '%') {
            pos = detail::fmt_write(buf, buf_size, pos, *fmt++);
            continue;
        }
        ++fmt; /* skip '%' */

        /* Parse flags */
        bool zero_pad = false;
        bool left_align = false;
        while (*fmt == '0' || *fmt == '-') {
            if (*fmt == '0') zero_pad = true;
            if (*fmt == '-') left_align = true;
            ++fmt;
        }

        /* Parse width */
        int width = 0;
        if (*fmt == '*') {
            width = __builtin_va_arg(ap, int);
            if (width < 0) { left_align = true; width = -width; }
            ++fmt;
        } else {
            while (*fmt >= '0' && *fmt <= '9') {
                width = width * 10 + (*fmt - '0');
                ++fmt;
            }
        }

        /* Parse precision */
        int precision = -1;
        if (*fmt == '.') {
            ++fmt;
            precision = 0;
            if (*fmt == '*') {
                precision = __builtin_va_arg(ap, int);
                ++fmt;
            } else {
                while (*fmt >= '0' && *fmt <= '9') {
                    precision = precision * 10 + (*fmt - '0');
                    ++fmt;
                }
            }
        }

        /* Parse length modifiers */
        bool is_long = false;
        bool is_longlong = false;
        bool is_size = false;
        if (*fmt == 'l') {
            is_long = true;
            ++fmt;
            if (*fmt == 'l') { is_longlong = true; ++fmt; }
        } else if (*fmt == 'z') {
            is_size = true;
            ++fmt;
        }

        char conv = *fmt;
        if (conv == '\0') break;
        ++fmt;

        char tmp[80];
        int  tmp_len = 0;
        bool negative = false;

        switch (conv) {
        case '%':
            pos = detail::fmt_write(buf, buf_size, pos, '%');
            continue;

        case 'c': {
            char c = static_cast<char>(__builtin_va_arg(ap, int));
            tmp[0] = c;
            tmp_len = 1;
            break;
        }

        case 's': {
            const char* s = __builtin_va_arg(ap, const char*);
            if (!s) s = "(null)";
            int slen = 0;
            while (s[slen]) ++slen;
            if (precision >= 0 && slen > precision) slen = precision;
            int pad_needed = (width > slen) ? (width - slen) : 0;
            if (!left_align) pos = detail::fmt_pad(buf, buf_size, pos, pad_needed, ' ');
            for (int i = 0; i < slen; ++i)
                pos = detail::fmt_write(buf, buf_size, pos, s[i]);
            if (left_align) pos = detail::fmt_pad(buf, buf_size, pos, pad_needed, ' ');
            continue;
        }

        case 'd': case 'i': {
            ReI64 val;
            if (is_longlong) val = __builtin_va_arg(ap, long long);
            else if (is_long || is_size) val = __builtin_va_arg(ap, long);
            else val = __builtin_va_arg(ap, int);
            ReU64 uval;
            if (val < 0) {
                negative = true;
                uval = static_cast<ReU64>(-(val + 1)) + 1; /* safe for INT64_MIN */
            } else {
                uval = static_cast<ReU64>(val);
            }
            if (uval == 0) { tmp[0] = '0'; tmp_len = 1; }
            else {
                while (uval) { tmp[tmp_len++] = static_cast<char>('0' + uval % 10); uval /= 10; }
                for (int i = 0; i < tmp_len / 2; ++i) {
                    char t = tmp[i]; tmp[i] = tmp[tmp_len - 1 - i]; tmp[tmp_len - 1 - i] = t;
                }
            }
            break;
        }

        case 'u': {
            ReU64 val;
            if (is_longlong) val = __builtin_va_arg(ap, unsigned long long);
            else if (is_long || is_size) val = __builtin_va_arg(ap, unsigned long);
            else val = __builtin_va_arg(ap, unsigned int);
            if (val == 0) { tmp[0] = '0'; tmp_len = 1; }
            else {
                while (val) { tmp[tmp_len++] = static_cast<char>('0' + val % 10); val /= 10; }
                for (int i = 0; i < tmp_len / 2; ++i) {
                    char t = tmp[i]; tmp[i] = tmp[tmp_len - 1 - i]; tmp[tmp_len - 1 - i] = t;
                }
            }
            break;
        }

        case 'x': case 'X': {
            const char* hex = (conv == 'X') ? "0123456789ABCDEF" : "0123456789abcdef";
            ReU64 val;
            if (is_longlong) val = __builtin_va_arg(ap, unsigned long long);
            else if (is_long || is_size) val = __builtin_va_arg(ap, unsigned long);
            else val = __builtin_va_arg(ap, unsigned int);
            if (val == 0) { tmp[0] = '0'; tmp_len = 1; }
            else {
                while (val) { tmp[tmp_len++] = hex[val & 0xF]; val >>= 4; }
                for (int i = 0; i < tmp_len / 2; ++i) {
                    char t = tmp[i]; tmp[i] = tmp[tmp_len - 1 - i]; tmp[tmp_len - 1 - i] = t;
                }
            }
            break;
        }

        case 'p': {
            const void* ptr = __builtin_va_arg(ap, const void*);
            ReU64 val = reinterpret_cast<ReU64>(ptr);
            pos = detail::fmt_write(buf, buf_size, pos, '0');
            pos = detail::fmt_write(buf, buf_size, pos, 'x');
            const char* hex = "0123456789abcdef";
            /* Skip leading zeros but always print at least one digit */
            bool started = false;
            for (int i = 60; i >= 0; i -= 4) {
                int d = (val >> i) & 0xF;
                if (d != 0 || started || i == 0) {
                    pos = detail::fmt_write(buf, buf_size, pos, hex[d]);
                    started = true;
                }
            }
            continue;
        }

        case 'f': {
            double val = __builtin_va_arg(ap, double);
            if (precision < 0) precision = 6;
            if (__builtin_isnan(val)) {
                pos = detail::fmt_write_str(buf, buf_size, pos, "nan");
                continue;
            }
            if (__builtin_isinf(val)) {
                if (val < 0) pos = detail::fmt_write(buf, buf_size, pos, '-');
                pos = detail::fmt_write_str(buf, buf_size, pos, "inf");
                continue;
            }
            if (val < 0) { negative = true; val = -val; }
            ReU64 int_part = static_cast<ReU64>(val);
            double frac = val - static_cast<double>(int_part);

            /* Round the last fractional digit */
            double rounder = 0.5;
            for (int i = 0; i < precision; ++i) rounder /= 10.0;
            frac += rounder;
            if (frac >= 1.0) { int_part += 1; frac -= 1.0; }

            /* Format integer part */
            if (int_part == 0) { tmp[tmp_len++] = '0'; }
            else {
                int start = tmp_len;
                while (int_part) {
                    tmp[tmp_len++] = static_cast<char>('0' + int_part % 10);
                    int_part /= 10;
                }
                for (int i = start; i < start + (tmp_len - start) / 2; ++i) {
                    int j = tmp_len - 1 - (i - start);
                    char t = tmp[i]; tmp[i] = tmp[j]; tmp[j] = t;
                }
            }
            /* Decimal point and fractional digits */
            if (precision > 0) {
                tmp[tmp_len++] = '.';
                for (int i = 0; i < precision && tmp_len < 78; ++i) {
                    frac *= 10.0;
                    int digit = static_cast<int>(frac);
                    if (digit > 9) digit = 9;
                    tmp[tmp_len++] = static_cast<char>('0' + digit);
                    frac -= digit;
                }
            }
            break;
        }

        default:
            pos = detail::fmt_write(buf, buf_size, pos, '%');
            pos = detail::fmt_write(buf, buf_size, pos, conv);
            continue;
        }

        /* Apply width, padding, sign for numeric/char conversions */
        int content_len = tmp_len + (negative ? 1 : 0);
        int pad_needed = (width > content_len) ? (width - content_len) : 0;

        if (!left_align && !zero_pad)
            pos = detail::fmt_pad(buf, buf_size, pos, pad_needed, ' ');
        if (negative)
            pos = detail::fmt_write(buf, buf_size, pos, '-');
        if (!left_align && zero_pad)
            pos = detail::fmt_pad(buf, buf_size, pos, pad_needed, '0');
        for (int i = 0; i < tmp_len; ++i)
            pos = detail::fmt_write(buf, buf_size, pos, tmp[i]);
        if (left_align)
            pos = detail::fmt_pad(buf, buf_size, pos, pad_needed, ' ');
    }

    /* Null-terminate */
    if (buf_size > 0) {
        ReUSize term_pos = (static_cast<ReUSize>(pos) < buf_size)
                            ? static_cast<ReUSize>(pos) : buf_size - 1;
        buf[term_pos] = '\0';
    }
    return pos;
}

inline int re_snprintf(char* buf, ReUSize buf_size, const char* fmt, ...) {
    __builtin_va_list ap;
    __builtin_va_start(ap, fmt);
    int result = re_vsnprintf(buf, buf_size, fmt, ap);
    __builtin_va_end(ap);
    return result;
}

} /* namespace re */

#endif /* RE_FREESTANDING_FORMAT_H */
