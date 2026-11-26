#include "imgui_window_details_internal.hpp"
namespace rust_internal_re {

// [C] 0x2e3ef0: float absolute value via andps sign-clear mask.
float fabs_2e3ef0(float v) {
    return re::re_fabsf(v);
}

// [C] 0x38a3fc: swap two float values in place.
void float_swap_38a3fc(float &a, float &b) {
    re::re_swap(a, b);
}

// [C] 0x3b5b74: signed maximum of two 64-bit integers (cmovge).
ReI64 signed_max_3b5b74(ReI64 a, ReI64 b) {
    return a >= b ? a : b;
}

// [C] 0x3bfebc: ClipRect area = (w - y) * (z - x).
// Native: subss xmm0,[+0x4]; subss xmm1,[+0x0]; mulss xmm0,xmm1.
float rect_area_3bfebc(ClipRect r) {
    return (r.w - r.y) * (r.z - r.x);
}

// [C] 0x39c044: translate ClipRect by Vec2 delta (add delta to both min and max).
void rect_translate_39c044(ClipRect &r, Vec2 d) {
    r.x += d.x;
    r.y += d.y;
    r.z += d.x;
    r.w += d.y;
}

// [C] 0x3911cc: subtract Vec2 from min corner, add to max corner (expand).
void rect_expand_inplace_3911cc(ClipRect &r, Vec2 d) {
    r.x -= d.x;
    r.y -= d.y;
    r.z += d.x;
    r.w += d.y;
}

// [C] 0x390790: test whether outer ClipRect fully contains inner.
bool rect_contains_390790(ClipRect outer, ClipRect inner) {
    return inner.x >= outer.x && inner.y >= outer.y &&
           outer.z >= inner.z && outer.w >= inner.w;
}

// [C] 0x38bbdc: component-wise Vec2 multiply.
Vec2 vec2_mul_38bbdc(Vec2 a, Vec2 b) {
    return {a.x * b.x, a.y * b.y};
}

// [C] 0x383070: component-wise Vec2 minimum.
Vec2 vec2_min_383070(Vec2 a, Vec2 b) {
    return {menu_detail::minss(a.x, b.x), menu_detail::minss(a.y, b.y)};
}

// [C] 0x383044: component-wise Vec2 maximum.
Vec2 vec2_max_383044(Vec2 a, Vec2 b) {
    return {menu_detail::maxss(a.x, b.x), menu_detail::maxss(a.y, b.y)};
}

// [C] 0x38bc08: scale a Vec2 by a scalar (s * {v.x, v.y}).
Vec2 vec2_scale_38bc08(float s, Vec2 v) {
    return {s * v.x, s * v.y};
}

// [C] 0x38bab4: copy a ClipRect into two Vec2 destinations (min corner, max corner).
void rect_split_38bab4(ClipRect r, Vec2 &min_out, Vec2 &max_out) {
    min_out = {r.x, r.y};
    max_out = {r.z, r.w};
}

// [C] 0x38baf4: construct a ClipRect from four float arguments.
// Native stores two Vec2 at consecutive addresses via two 2cc340 calls.
ClipRect rect_build_38baf4(float x1, float y1, float x2, float y2) {
    return {x1, y1, x2, y2};
}

// [C] 0x39340c: Vec2 linear interpolation: result = (b - a) * t + a, component-wise.
Vec2 vec2_lerp_39340c(Vec2 a, Vec2 b, Vec2 t) {
    return {(b.x - a.x) * t.x + a.x, (b.y - a.y) * t.y + a.y};
}

// [C] 0x392130: extract Vec2{r.x, r.w} from a ClipRect (first and last float).
Vec2 rect_xw_392130(ClipRect r) {
    return {r.x, r.w};
}

// [C] 0x3788f4: center point of a ClipRect: {(x+z)*0.5, (y+w)*0.5}.
Vec2 rect_center_3788f4(ClipRect r) {
    const float half = 0.5f;
    return {(r.x + r.z) * half, (r.y + r.w) * half};
}

// [C] 0x393018: per-axis clamp of Vec2: if low > val, use low; else min(high, val).
// Native: comiss low,[val]; ja use_low; minss high,[val].
Vec2 vec2_clamp_rect_393018(Vec2 low, Vec2 val, Vec2 high) {
    const float x = low.x > val.x ? low.x : menu_detail::minss(high.x, val.x);
    const float y = low.y > val.y ? low.y : menu_detail::minss(high.y, val.y);
    return {x, y};
}

} // namespace rust_internal_re
