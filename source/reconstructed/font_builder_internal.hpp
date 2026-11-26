#pragma once
#include "font_builder_analysis.hpp"
namespace rust_internal_re::font_builder_detail {
template <class T> T read(const Snapshot &image, Address p, Rva site) {
    const auto value = image.read<T>(p);
    if (!value)
        { __builtin_trap(); }
    return *value;
}
template <class T> void write(Snapshot &image, Address p, const T &value, Rva site) {
    if (!image.write(p, value))
        { __builtin_trap(); }
}
inline ReI32 integer(ReU32 x) { return re::re_bit_cast<ReI32>(x); }
inline ReI32 add(ReI32 a, ReI32 b) {
    return integer(ReU32(a) + ReU32(b));
}
inline ReI32 sub(ReI32 a, ReI32 b) {
    return integer(ReU32(a) - ReU32(b));
}
inline ReI32 cvtt(float x) {
    if (!re::re_isfinite(x) || x >= 2147483648.0f || x < -2147483648.0f)
        return INT32_MIN;
    return ReI32(x);
}
struct Reader {
    const Snapshot &image;
    FontBuilderInput input;
    Address address(ReI64 offset, ReUSize count, Rva site) const {
        if (offset < 0 || ReU64(offset) > input.size ||
            count > input.size - ReUSize(offset))
            { __builtin_trap(); }
        return input.bytes + ReU64(offset);
    }
    ReU8 byte(ReI64 offset, Rva site) const {
        return read<ReU8>(image, address(offset, 1, site), site);
    }
    ReU16 word(ReI64 offset, Rva site = 0x3add94) const {
        return ReU16(ReU16(byte(offset, site)) << 8 | byte(offset + 1, site));
    }
    ReI16 signed_word(ReI64 offset, Rva site = 0x3add94) const {
        return re::re_bit_cast<ReI16>(word(offset, site));
    }
    ReU32 dword(ReI64 offset, Rva site = 0x3add74) const {
        return (ReU32(word(offset, site)) << 16) | word(offset + 2, site);
    }
};
inline float floor_native(float x) {
    auto n = cvtt(x);
    if (!(x >= 0) && float(n) != x)
        n = add(n, -1);
    return float(n);
}
inline float ceil_native(float x) {
    auto bits = re::re_bit_cast<ReU32>(x);
    const auto absolute = bits & 0x7fffffff;
    const bool negative = bits != absolute;
    if (absolute >= 0x4b800000) {
        if (absolute > 0x7f800000)
            bits |= 0x400000;
        return re::re_bit_cast<float>(bits);
    }
    if (absolute < 0x3f800000) {
        if (!absolute)
            return x;
        return negative ? re::re_bit_cast<float>(0x80000000u) : 1;
    }
    const auto mask = bits & (0xffffffffu << ((150 - (bits >> 23)) & 31));
    return !negative && bits != mask ? re::re_bit_cast<float>(mask) + 1 : re::re_bit_cast<float>(mask);
}
ReI32 glyph_offset(const Snapshot &, const FontBuilderInfo &, ReI32);
bool cff_init(const Snapshot &, FontBuilderInfo &, ReI32, const FontBuilderLimits &);
FontBuilderBox cff_box(const Snapshot &, const FontBuilderInfo &, ReI32);
re::ReVector<FontBuilderVertex> cff_shape(const Snapshot &, const FontBuilderInfo &, ReI32,
                                         const FontBuilderLimits &);
} // namespace rust_internal_re::font_builder_detail
