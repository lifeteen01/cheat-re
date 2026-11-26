#include "base_frame.hpp"

namespace re_base {
using namespace rust_internal_re;
namespace {
Vec2 position(const DrawVertex &v) {
    Vec2 p;
    re::re_memcpy(&p, v.data(), sizeof(p));
    return p;
}
double edge(Vec2 a, Vec2 b, double x, double y) {
    return (double(b.x) - a.x) * (y - a.y) - (double(b.y) - a.y) * (x - a.x);
}
void triangle(Frame &f, const DrawVertex &a, const DrawVertex &b, const DrawVertex &c) {
    const auto p = position(a), q = position(b), r = position(c);
    const double area = edge(p, q, r.x, r.y);
    if (area == 0) return;
    ReU32 rgba;
    re::re_memcpy(&rgba, a.data() + 16, sizeof(rgba));
    const auto bgrx = ((rgba & 0xffu) << 16) | (rgba & 0xff00u) | ((rgba >> 16) & 0xffu);
    const int x0 = re::re_max(0, int(re::re_floor(re::re_min(re::re_min(p.x, q.x), r.x))));
    const int y0 = re::re_max(0, int(re::re_floor(re::re_min(re::re_min(p.y, q.y), r.y))));
    const int x1 = re::re_min(int(f.width), int(re::re_ceil(re::re_max(re::re_max(p.x, q.x), r.x))));
    const int y1 = re::re_min(int(f.height), int(re::re_ceil(re::re_max(re::re_max(p.y, q.y), r.y))));
    for (int y = y0; y < y1; ++y) for (int x = x0; x < x1; ++x) {
        const auto e0 = edge(p, q, x + .5, y + .5);
        const auto e1 = edge(q, r, x + .5, y + .5);
        const auto e2 = edge(r, p, x + .5, y + .5);
        if ((e0 >= 0 && e1 >= 0 && e2 >= 0) || (e0 <= 0 && e1 <= 0 && e2 <= 0))
            f.pixels[ReUSize(y) * f.width + ReUSize(x)] = bgrx;
    }
}
}
void build_frame(Frame &f, ReU32 width, ReU32 height,
                 ReU32 maximum_pixels, FrameInput input) {
    if (!width || !height || width > 16384 || height > 16384 ||
        ReU64(width) * height > maximum_pixels)
        __builtin_trap();
    f.width = width; f.height = height;
    f.pixels.assign(ReUSize(width) * height, 0x00182028u);
    draw_core_reset_3a9258(f.geometry);
    draw_core_push_clip_3a7268(f.geometry, {0, 0}, {float(width), float(height)}, false);
    if (input.visible) {
        const float x = float(re::re_clamp(input.x, 0, int(width) - 1));
        const float y = float(re::re_clamp(input.y, 0, int(height) - 1));
        const float half = float(re::re_clamp(input.marker_size, 8, 96)) * .5f;
        draw_core_reserve_3a719c(f.geometry, 6, 4);
        draw_core_rectangle_3a7020(f.geometry, {x - half, y - half}, {x + half, y + half},
                                  {}, {}, input.down ? 0xff4090f0u : input.accent);
    }
    // This sink supports precisely the geometry above: opaque, flat, untextured.
    // No successful texture/callback/Unity-operation placeholders exist here.
    for (int i = 0; i + 2 < f.geometry.indices.size; i += 3) {
        const auto a = f.geometry.indices.at(i), b = f.geometry.indices.at(i + 1);
        const auto c = f.geometry.indices.at(i + 2);
        triangle(f, f.geometry.vertices.at(a), f.geometry.vertices.at(b), f.geometry.vertices.at(c));
    }
}
}
