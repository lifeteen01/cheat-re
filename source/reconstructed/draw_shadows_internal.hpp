#pragma once
#include "draw_shadows_analysis.hpp"
namespace rust_internal_re::shadow_detail {
inline float bits(ReU32 v) {
    return re::re_bit_cast<float>(v);
}
inline float minss(float a, float b) {
    return a < b ? a : b;
}
inline float maxss(float a, float b) {
    return a > b ? a : b;
}
inline Vec2 divide(Vec2 a, float b) {
    return {a.x / b, a.y / b};
}
inline Vec2 divide(Vec2 a, Vec2 b) {
    return {a.x / b.x, a.y / b.y};
}
inline Vec2 multiply(Vec2 a, Vec2 b) {
    return {a.x * b.x, a.y * b.y};
}
inline float dot(Vec2 a, Vec2 b) {
    return a.y * b.y + a.x * b.x;
}
inline float length(Vec2 a, float fallback) {
    const float square = a.x * a.x + a.y * a.y;
    return square > 0 ? sample_sqrt_2e3c88(square) : fallback;
}
inline float area(Vec2 a, Vec2 b, Vec2 c) {
    float v = (c.y - a.y) * b.x + (b.y - c.y) * a.x;
    return v + (a.y - b.y) * c.x;
}
inline DrawVertex vertex(Vec2 p, Vec2 uv, ReU32 color) {
    DrawVertex out;
    re::re_memcpy(out.data(), &p, 8);
    re::re_memcpy(out.data() + 8, &uv, 8);
    re::re_memcpy(out.data() + 16, &color, 4);
    return out;
}
inline void extent(ReUSize n, Rva site) {
    if (n > 1000000)
        { __builtin_trap(); }
}
inline Vec2 mapped(Vec2 p, Vec2 offset, Vec2 slope) {
    return multiply(p + offset, slope);
}
inline re::ReArray<Vec2, 4> corners(Vec2 a, Vec2 b) {
    return {a, Vec2{b.x, a.y}, b, Vec2{a.x, b.y}};
}
} // namespace rust_internal_re::shadow_detail
