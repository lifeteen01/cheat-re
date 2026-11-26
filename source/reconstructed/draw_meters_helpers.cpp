#include "draw_meters_internal.hpp"
namespace rust_internal_re {
using namespace draw_meters_detail;
float draw_meters_remainder_3c8a6c(float x, float y) {
    auto ux = re::re_bit_cast<ReU32>(x), uy = re::re_bit_cast<ReU32>(y);
    const auto sign = ux & 0x80000000u;
    ux &= 0x7fffffff;
    uy &= 0x7fffffff;
    if (!uy || ux >= 0x7f800000 || uy > 0x7f800000) {
        const float product = x * y;
        return product / product;
    }
    if (ux < uy)
        return x;
    if (ux == uy)
        return f(sign);
    auto normalize = [](ReU32 &bits) {
        ReI32 exponent = ReI32(bits >> 23) - 127;
        if (bits < 0x800000) {
            exponent = -126;
            while (bits < 0x800000) {
                bits <<= 1;
                --exponent;
            }
        } else
            bits = (bits & 0x7fffff) | 0x800000;
        return exponent;
    };
    auto ex = normalize(ux), ey = normalize(uy);
    for (auto difference = ex - ey; difference > 0; --difference) {
        if (ux >= uy) {
            ux -= uy;
            if (!ux)
                return f(sign);
        }
        ux <<= 1;
    }
    if (ux >= uy)
        ux -= uy;
    if (!ux)
        return f(sign);
    while (ux < 0x800000) {
        ux <<= 1;
        --ey;
    }
    if (ey >= -126)
        ux = (ux - 0x800000) | ((ReU32(ey) + 127) << 23);
    else
        ux >>= ReU32(-126 - ey) & 31;
    return f(ux | sign);
}
re::ReArray<float, 4> draw_meters_hsv_3612f8(float hue, float saturation, float value, float alpha) {
    if (saturation == 0)
        return {value, value, value, alpha};
    const float scaled = draw_meters_remainder_3c8a6c(hue, 1) / f(0x3e2aaaab);
    const auto sector = world_cvttss2si(scaled);
    const float fraction = scaled - float(sector);
    const float p = (1 - saturation) * value, q = (1 - fraction * saturation) * value,
                t = (1 - (1 - fraction) * saturation) * value;
    switch (sector) {
    case 0:
        return {value, t, p, alpha};
    case 1:
        return {q, value, p, alpha};
    case 2:
        return {p, value, t, alpha};
    case 3:
        return {p, q, value, alpha};
    case 4:
        return {t, p, value, alpha};
    default:
        return {value, p, q, alpha};
    }
}
re::ReArray<float, 4> draw_meters_interpolate_362200(re::ReArray<float, 4> a, re::ReArray<float, 4> b,
                                                    float t) {
    for (ReUSize i = 0; i < 4; ++i)
        a[i] = (b[i] - a[i]) * t + a[i];
    return a;
}
re::ReArray<char, 13> draw_meters_decode_name_39eb2c(re::ReArray<ReU8, 13> bytes) {
    const bool encrypted = bytes[12] != 0;
    re::ReArray<char, 13> decoded;
    for (ReUSize i = 0; i < bytes.size(); ++i)
        decoded[i] = char(encrypted ? bytes[i] ^ ReU8(i % 49 + 55) : bytes[i]);
    return decoded;
}
Address draw_meters_foreground_3925a4(DrawMetersContext &c) {
    const auto ctx = read<Address>(c.image, 0x405b28, 0x3925a8);
    const auto slot = renderer_vector_index_38bb84(c.image, ctx + 0x48d8, 0);
    const auto viewport = read<Address>(c.image, slot, 0x3925bd);
    // [C]38c6f0 copies13 literal bytes;39eb2c/39e77c XOR with(i%49)+55.
    constexpr re::ReArray<ReU8, 13> encrypted{0x14, 0x1b, 0x7f, 0x55, 0x49, 0x59, 0x5a,
                                                     0x4c, 0x50, 0x35, 0x2f, 0x26, 0x43};
    const auto decoded = draw_meters_decode_name_39eb2c(encrypted);
    if (!c.backend.foreground.intern_name)
        { __builtin_trap(); }
    const auto name = c.backend.foreground.intern_name(re::ReStringView(decoded.data(), 12));
    return renderer_background_392dcc(c.image, viewport, 1, name, c.backend.foreground);
}
void draw_meters_ring_35ac38(DrawMetersContext &c, const DrawMetersRing &q) {
    float portion = minss(q.value, q.maximum);
    if (0 > portion)
        portion = 0;
    portion /= q.maximum;
    const float inset = (q.outer - q.inner) * f(0x3d4ccccd), outer = q.outer - inset,
                inner = inset + q.inner;
    const float step = (((portion + portion) * f(0x40490fdb)) - 0.0f) / 100;
    const auto point = [&](float angle, float radius, Rva sin_site, Rva cos_site) {
        const float y = scalar(c, 0x2e0198, angle, sin_site) * radius + q.center.y;
        const float x = scalar(c, 0x2dff68, angle, cos_site) * radius + q.center.x;
        return Vec2{x, y};
    };
    for (ReI32 i = 0; i < 100; ++i) {
        bound(c, ReUSize(i) + 1, 0x35acf8);
        const float a = float(i) * step + 0.0f, b = float(i + 1) * step + 0.0f;
        const auto first = point(a, outer, 0x35ad27, 0x35ad3c),
                   second = point(b, outer, 0x35ad5f, 0x35ad75),
                   third = point(a, inner, 0x35ad97, 0x35adac),
                   fourth = point(b, inner, 0x35add3, 0x35ade9);
        auto rgba = color(c, q.color, 0x35ae0b);
        if (q.rainbow) {
            const float hue = (1 - (float(i) + 0.5f) / 100) * f(0x3eaaaaab);
            rgba = draw_meters_hsv_3612f8(hue, 1, 1, 1);
        }
        const auto key = current_list(c);
        const auto col = font_text_color_2ef80c(rgba);
        if (col & 0xff000000u) {
            auto &d = list(c, key);
            d.path.push(first);
            d.path.push(second);
            d.path.push(fourth);
            d.path.push(third);
            draw_shapes_path_fill_378a14(d, shared(c, key), col);
        }
        rgba[3] *= 0.5f;
        const auto half = font_text_color_2ef80c(rgba);
        const auto edge_one = current_list(c);
        line(c, edge_one, first, second, half);
        const auto edge_two = current_list(c);
        line(c, edge_two, third, fourth, half);
    }
}
} // namespace rust_internal_re
