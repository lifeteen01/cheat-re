#pragma once
#include "draw_meters_analysis.hpp"
namespace rust_internal_re::draw_meters_detail {
template <class T> T read(const Snapshot &s, Address p, Rva site) {
    const auto v = s.read<T>(p);
    if (!v)
        { __builtin_trap(); }
    return *v;
}
template <class T> void write(Snapshot &s, Address p, T v, Rva site) {
    if (!s.write(p, v))
        { __builtin_trap(); }
}
inline float f(ReU32 bits) {
    return re::re_bit_cast<float>(bits);
}
inline ReI32 add(ReI32 a, ReI32 b) {
    return re::re_bit_cast<ReI32>(ReU32(a) + ReU32(b));
}
inline float minss(float a, float b) {
    return a < b ? a : b;
}
inline float clamp(float x, float low, float high) {
    return low > x ? low : minss(high, x);
}
inline ReU32 cvtt64low(float v) {
    ReI64 n = INT64_MIN;
    if (re::re_isfinite(v) && double(v) >= -9223372036854775808.0 &&
        double(v) < 9223372036854775808.0)
        n = ReI64(v);
    return ReU32(ReU64(n));
}
inline Address window(DrawMetersContext &c) {
    const auto ctx = read<Address>(c.image, 0x405b28, 0x35d200);
    const auto w = read<Address>(c.image, ctx + 0x3f08, 0x35d207);
    write(c.image, w + 0xb8, ReU8(1), 0x35d20e);
    return read<Address>(c.image, ctx + 0x3f08, 0x35d215);
}
inline Address window_list(DrawMetersContext &c, Address w, Rva site) {
    return read<Address>(c.image, w + 0x298, site);
}
inline Address current_list(DrawMetersContext &c) {
    return window_list(c, window(c), 0x392ed5);
}
inline DrawCoreList &list(DrawMetersContext &c, Address key) {
    auto i = c.store.lists.find(key);
    if (!i)
        { __builtin_trap(); }
    return **i;
}
inline const DrawShapesShared &shared(DrawMetersContext &c, Address key) {
    auto i = c.resources.find(key);
    if (!i)
        { __builtin_trap(); }
    return **i;
}
inline auto color(DrawMetersContext &c, const DrawMetersColor &input, Rva site) {
    return input.source ? read<re::ReArray<float, 4>>(c.image, *input.source, site) : input.value;
}
inline ReU32 style(DrawMetersContext &c, ReU32 packed) {
    re::ReArray<float, 4> v{float(packed & 255) / 255, float((packed >> 8) & 255) / 255,
                           float((packed >> 16) & 255) / 255, float(packed >> 24) / 255};
    const auto ctx = read<Address>(c.image, 0x405b28, 0x392268);
    v[3] *= read<float>(c.image, ctx + 0x37d0, 0x39227d);
    return font_text_color_2ef80c(v);
}
inline void filled(DrawMetersContext &c, Address key, Vec2 a, Vec2 b, ReU32 col,
                   float rounding) {
    if (!(col & 0xff000000u))
        return;
    draw_shapes_rect_filled_3a1244(list(c, key), shared(c, key), a, b, col, rounding, 0);
}
inline void outlined(DrawMetersContext &c, Address key, Vec2 a, Vec2 b, ReU32 col,
                     float rounding, ReI32 flags, float thickness) {
    if (!(col & 0xff000000u))
        return;
    draw_shapes_rect_3a1148(list(c, key), shared(c, key), a, b, col, rounding, flags, thickness);
}
inline void line(DrawMetersContext &c, Address key, Vec2 a, Vec2 b, ReU32 col) {
    if (!(col & 0xff000000u))
        return;
    draw_shapes_line_3a01f4(list(c, key), shared(c, key), a, b, col, 1);
}
inline void float_rect(DrawMetersContext &c, Vec2 p, Vec2 size, ReU32 col) {
    const auto w = window(c);
    if (0 > p.x || 0 > p.y || p.x > 3840 || p.y > 2160)
        return;
    const auto key = window_list(c, w, 0x35c79a);
    filled(c, key, p, p + size, style(c, col), 0);
}
inline ReU32 thresholds(float value, float maximum, bool tension) {
    const float q = maximum * 0.25f;
    if (q >= value)
        return tension ? 0xff00aa14 : 0xff00ff00;
    if (q + q >= value)
        return tension ? 0xff005186 : 0xff00ffff;
    if (q * 3 >= value)
        return tension ? 0xff003e9b : 0xff00539e;
    if (maximum >= value)
        return tension ? 0xff0024c3 : 0xff0000ff;
    return 0xff000000;
}
inline float scalar(DrawMetersContext &c, Rva wrapper, float x, Rva site) {
    const auto &fn = wrapper == 0x2e0198 ? c.backend.math.sin_2e0198 : c.backend.math.cos_2dff68;
    if (!fn)
        { __builtin_trap(); }
    return fn(x);
}
inline float ceil_literal(float x) {
    auto bits = re::re_bit_cast<ReU32>(x), absolute = bits & 0x7fffffff;
    const bool negative = bits != absolute;
    if (absolute >= 0x4b800000) {
        if (absolute > 0x7f800000)
            bits |= 0x400000;
        return f(bits);
    }
    if (absolute < 0x3f800000) {
        if (!absolute)
            return x;
        return negative ? f(0x80000000) : 1;
    }
    const auto shift = 150 - (bits >> 23);
    const auto masked = bits & (0xffffffffu << (shift & 31));
    if (!negative && bits != masked)
        return f(masked) + 1;
    return f(masked);
}
inline void bound(DrawMetersContext &c, ReUSize n, Rva site) {
    if (n > c.backend.maximum_segments)
        { __builtin_trap(); }
}
} // namespace rust_internal_re::draw_meters_detail
