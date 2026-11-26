#include "draw_shapes_analysis.hpp"
namespace rust_internal_re {
namespace {
float f(ReU32 bits) {
    return re::re_bit_cast<float>(bits);
}
float minss(float a, float b) {
    return a < b ? a : b;
}
ReI32 cvtt(float v) {
    return world_cvttss2si(v);
}
ReI32 wrap_sub(ReI32 a, ReI32 b) {
    return re::re_bit_cast<ReI32>(ReU32(a) - ReU32(b));
}
float floor_3930e8(float x) {
    auto n = cvtt(x);
    if (!(x >= 0) && float(n) != x)
        n = wrap_sub(n, 1);
    return float(n);
}
float ceil_3c8918(float x) {
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
ReI32 segments(const DrawShapesShared &shared, float radius) {
    const auto index = cvtt(radius + f(0x3f7fffef));
    if (index < 64) {
        if (index < 0)
            { __builtin_trap(); }
        return shared.circle_segments[ReUSize(index)];
    }
    const auto selected = minss(shared.circle_error, radius);
    const auto angle = draw_shapes_acos_3c852c(1 - selected / radius);
    const auto count = cvtt(ceil_3c8918(f(0x40490fdb) / angle));
    const auto incremented = re::re_bit_cast<ReI32>(ReU32(count) + 1);
    return re::re_clamp((incremented / 2) * 2, 4, 512);
}
void bounded(ReI64 n, Rva site) {
    if (n < 0 || n > 1000000)
        { __builtin_trap(); }
}
Vec2 radial(Vec2 c, float radius, float a) {
    const float y = draw_shapes_sine_3c8e6c(a) * radius + c.y;
    const float x = font_text_cosine_3c899c(a) * radius + c.x;
    return {x, y};
}
void arc_n(DrawCoreList &d, Vec2 center, float radius, float minimum, float maximum,
           ReI32 count) {
    if (0.5f > radius) {
        d.path.push(center);
        return;
    }
    bounded(ReI64(d.path.size) + count + 1, 0x3a9176);
    d.path.reserve(d.path.size + count + 1);
    if (count < 0)
        return;
    const float denominator = float(count), width = maximum - minimum;
    for (ReI32 i = 0; i <= count; ++i) {
        const float a = (float(i) / denominator) * width + minimum;
        d.path.push(radial(center, radius, a));
    }
}
ReI32 corner_flags(ReI32 flags) {
    if (flags == -1)
        return 0xf0;
    const auto reduced = ReU32(flags) - 1;
    if (reduced <= 14)
        return ReI32(ReU32(flags) << 4);
    return flags & 0x1f0 ? flags : flags | 0xf0;
}
DrawVertex vertex(Vec2 p, Vec2 uv, ReU32 color) {
    DrawVertex v;
    re::re_memcpy(v.data(), &p, 8);
    re::re_memcpy(v.data() + 8, &uv, 8);
    re::re_memcpy(v.data() + 16, &color, 4);
    return v;
}
void quad(DrawCoreList &d, const DrawShapesShared &shared, Vec2 a, Vec2 b,
          re::ReArray<ReU32, 4> colors) {
    const auto uv = shared.white_uv;
    draw_core_reserve_3a719c(d, 6, 4);
    const re::ReArray<DrawVertex, 4> vertices{
        vertex(a, uv, colors[0]), vertex({b.x, a.y}, uv, colors[1]), vertex(b, uv, colors[2]),
        vertex({a.x, b.y}, uv, colors[3])};
    constexpr re::ReArray<ReU16, 6> indices{0, 1, 2, 0, 2, 3};
    draw_core_write_relative(d, vertices, indices);
}
} // namespace
void draw_shapes_arc_fixed_3a9110(DrawCoreList &d, Vec2 center, float radius, float minimum,
                                  float maximum, ReI32 count) {
    arc_n(d, center, radius, minimum, maximum, count);
}
float draw_shapes_sine_3c8e6c(float x) {
    float t = x * f(0x3e22f983);
    t = x >= 0 ? t + 0.5f : t - 0.5f;
    const float reduced = x - float(cvtt(t)) * f(0x40c90fdb);
    float z = reduced;
    if (reduced > f(0x3fc90fdb))
        z = f(0x40490fdb) - reduced;
    else if (f(0xbfc90fdb) > reduced)
        z = f(0xc0490fdb) - reduced;
    const float sq = z * z;
    float p = f(0x3638b88e) - sq * f(0x32cd365b);
    p = p * sq - f(0x39500bf1);
    p = p * sq + f(0x3c088886);
    p = p * sq - f(0x3e2aaaab);
    p = p * sq + 1;
    return p * z;
}
float draw_shapes_acos_3c852c(float x) {
    const auto a = re::re_fabs(x);
    const auto v = 1 - a;
    const auto nonnegative = 0 > v ? 0 : v;
    const auto root = sample_sqrt_2e3c88(nonnegative);
    float p = f(0x3bda90c5) - a * f(0x3aa57a2c);
    p = p * a - f(0x3c8bfc66);
    p = p * a + f(0x3cfd10f8);
    p = p * a - f(0x3d4d8392);
    p = p * a + f(0x3db63a9e);
    p = p * a - f(0x3e5bbfca);
    p = p * a + f(0x3fc90fda);
    const float result = root * p;
    return x >= 0 ? result : f(0x40490fdb) - result;
}
void draw_shapes_arc_fast_3a8eec(DrawCoreList &d, const DrawShapesShared &shared, Vec2 center,
                                 float radius, ReI32 minimum, ReI32 maximum,
                                 ReI32 step) {
    if (0.5f > radius) {
        d.path.push(center);
        return;
    }
    if (step <= 0) {
        const auto count = segments(shared, radius);
        if (!count)
            __builtin_trap();
        step = 48 / count;
    }
    step = re::re_clamp(step, 1, 12);
    const auto difference = ReI64(maximum) - minimum;
    bounded(re::re_fabsf(difference), 0x3a8f65);
    const auto range = ReI32(re::re_fabsf(difference));
    const auto remainder = range % step;
    const bool extra = step > 1 && remainder > 0;
    const auto count = range / step + 1 + (extra ? 1 : 0);
    bounded(ReI64(d.path.size) + count, 0x3a8fa9);
    if (d.path.size + count > d.path.capacity)
        d.path.reserve(draw_core_growth_362efc(d.path.capacity, d.path.size + count));
    const auto original = step;
    if (extra && range > 0)
        step -= (step - remainder) / 2;
    auto sample = [&](ReI32 a) {
        auto index = a % 48;
        if (index < 0)
            index += 48;
        const auto p = shared.arc_fast[ReUSize(index)];
        d.path.push({radius * p.x + center.x, p.y * radius + center.y});
    };
    if (maximum >= minimum) {
        for (ReI64 a = minimum; a <= maximum;) {
            sample(ReI32(a));
            a += step;
            step = original;
        }
    } else
        for (ReI64 a = minimum; a >= maximum;) {
            sample(ReI32(a));
            a -= step;
            step = original;
        }
    if (extra)
        sample(maximum);
}
void draw_shapes_arc_3a684c(DrawCoreList &d, const DrawShapesShared &shared, Vec2 center,
                            float radius, float minimum, float maximum, ReI32 count) {
    if (0.5f > radius) {
        d.path.push(center);
        return;
    }
    if (count > 0) {
        arc_n(d, center, radius, minimum, maximum, count);
        return;
    }
    if (shared.arc_fast_radius_cutoff >= radius) {
        const float start_scaled = (minimum * 48) / f(0x40c90fdb),
                    end_scaled = (maximum * 48) / f(0x40c90fdb);
        const bool reverse = minimum > maximum;
        const auto start = cvtt(reverse ? floor_3930e8(start_scaled) : ceil_3c8918(start_scaled));
        const auto finish = cvtt(reverse ? ceil_3c8918(end_scaled) : floor_3930e8(end_scaled));
        const ReI64 steps =
            reverse ? ReI64(start) - finish : ReI64(finish) - start;
        bounded(re::re_max<ReI64>(0, steps), 0x3a6953);
        const float start_angle = ((float(start) * f(0x40490fdb)) * 2) / 48,
                    end_angle = ((float(finish) * f(0x40490fdb)) * 2) / 48;
        const float start_difference = re::re_fabs(start_angle - minimum),
                    end_difference = re::re_fabs(maximum - end_angle);
        constexpr float epsilon = 0.00001f;
        if (start_difference >= epsilon)
            d.path.push(radial(center, radius, minimum));
        if (steps > 0)
            draw_shapes_arc_fast_3a8eec(d, shared, center, radius, start, finish);
        if (end_difference >= epsilon)
            d.path.push(radial(center, radius, maximum));
    } else {
        const float width = re::re_fabs(maximum - minimum);
        const auto minimum_segments = cvtt(f(0x40c90fdb) / width);
        const auto recommended = segments(shared, radius);
        const auto partial = cvtt(ceil_3c8918((float(recommended) * width) / f(0x40c90fdb)));
        arc_n(d, center, radius, minimum, maximum, re::re_max(partial, minimum_segments));
    }
}
void draw_shapes_path_rect_lazy_3a6b78(DrawCoreList &d,
                                       const re::ReFunction<const DrawShapesShared &()> &provider,
                                       Vec2 a, Vec2 b, float rounding, ReI32 flags) {
    flags = corner_flags(flags);
    const auto bits = ReU32(flags);
    const float width_scale = ((bits & 0x30) == 0x30 || (bits & 0xc0) == 0xc0) ? 0.5f : 1;
    const float height_scale = ((bits & 0x50) == 0x50 || (bits & 0xa0) == 0xa0) ? 0.5f : 1;
    rounding = minss(rounding, re::re_fabs(b.x - a.x) * width_scale - 1);
    rounding = minss(rounding, re::re_fabs(b.y - a.y) * height_scale - 1);
    if (0.5f > rounding || (bits & 0x1f0) == 0x100) {
        d.path.push(a);
        d.path.push({b.x, a.y});
        d.path.push(b);
        d.path.push({a.x, b.y});
        return;
    }
    const float tl = (bits & 0x10) ? rounding : 0, tr = (bits & 0x20) ? rounding : 0,
                br = (bits & 0x80) ? rounding : 0, bl = (bits & 0x40) ? rounding : 0;
    const auto arc = [&](Vec2 center, float radius, int minimum, int maximum) {
        // [C] Native small/disabled corner returns before reading shared data.
        if (0.5f > radius) {
            d.path.push(center);
            return;
        }
        if (!provider)
            { __builtin_trap(); }
        draw_shapes_arc_fast_3a8eec(d, provider(), center, radius, minimum, maximum);
    };
    arc({a.x + tl, a.y + tl}, tl, 24, 36);
    arc({b.x - tr, a.y + tr}, tr, 36, 48);
    arc({b.x - br, b.y - br}, br, 0, 12);
    arc({a.x + bl, b.y - bl}, bl, 12, 24);
}
void draw_shapes_path_rect_3a6b78(DrawCoreList &d, const DrawShapesShared &shared, Vec2 a, Vec2 b,
                                  float rounding, ReI32 flags) {
    draw_shapes_path_rect_lazy_3a6b78(
        d, [&shared]() -> const DrawShapesShared & { return shared; }, a, b, rounding, flags);
}
void draw_shapes_line_3a01f4(DrawCoreList &d, const DrawShapesShared &shared, Vec2 a, Vec2 b,
                             ReU32 color, float thickness) {
    if (!(color & 0xff000000))
        return;
    d.path.push(a + Vec2{0.5f, 0.5f});
    d.path.push(b + Vec2{0.5f, 0.5f});
    draw_shapes_path_stroke_398758(d, shared, color, 0, thickness);
}
void draw_shapes_rect_3a1148(DrawCoreList &d, const DrawShapesShared &shared, Vec2 a, Vec2 b,
                             ReU32 color, float rounding, ReI32 flags,
                             float thickness) {
    if (!(color & 0xff000000))
        return;
    const float adjustment = (d.flags & 1) ? 0.5f : re::re_bit_cast<float>(0x3efae148u);
    draw_shapes_path_rect_3a6b78(d, shared, a + Vec2{0.5f, 0.5f}, b - Vec2{adjustment, adjustment},
                                 rounding, flags);
    draw_shapes_path_stroke_398758(d, shared, color, 1, thickness);
}
void draw_shapes_rect_filled_3a1244(DrawCoreList &d, const DrawShapesShared &shared, Vec2 a, Vec2 b,
                                    ReU32 color, float rounding, ReI32 flags) {
    if (!(color & 0xff000000))
        return;
    if (0.5f > rounding || (flags & 0x1f0) == 0x100) {
        quad(d, shared, a, b, {color, color, color, color});
        return;
    }
    draw_shapes_path_rect_3a6b78(d, shared, a, b, rounding, flags);
    draw_shapes_path_fill_378a14(d, shared, color);
}
void draw_shapes_gradient_3a12d8(DrawCoreList &d, const DrawShapesShared &shared, Vec2 a, Vec2 b,
                                 re::ReArray<ReU32, 4> colors) {
    if (!((colors[0] | colors[1] | colors[2] | colors[3]) & 0xff000000))
        return;
    quad(d, shared, a, b, colors);
}
void draw_shapes_triangle_3a3338(DrawCoreList &d, const DrawShapesShared &shared, Vec2 a, Vec2 b,
                                 Vec2 c, ReU32 color) {
    if (!(color & 0xff000000))
        return;
    d.path.push(a);
    d.path.push(b);
    d.path.push(c);
    draw_shapes_path_fill_378a14(d, shared, color);
}
namespace {
void circle_path(DrawCoreList &d, const DrawShapesShared &shared, Vec2 center, float radius,
                 ReI32 count) {
    if (count <= 0) {
        draw_shapes_arc_fast_3a8eec(d, shared, center, radius, 0, 48);
        d.path.pop();
    } else {
        count = re::re_clamp(count, 3, 512);
        const float maximum =
            ((float(count) - 1) * re::re_bit_cast<float>(0x40c90fdbu)) / float(count);
        draw_shapes_arc_3a684c(d, shared, center, radius, 0, maximum, count - 1);
    }
}
} // namespace
void draw_shapes_circle_39f7ac(DrawCoreList &d, const DrawShapesShared &shared, Vec2 center,
                               float radius, ReU32 color, ReI32 count,
                               float thickness) {
    if (!(color & 0xff000000) || 0.5f > radius)
        return;
    circle_path(d, shared, center, radius - 0.5f, count);
    draw_shapes_path_stroke_398758(d, shared, color, 1, thickness);
}
void draw_shapes_circle_filled_39f874(DrawCoreList &d, const DrawShapesShared &shared, Vec2 center,
                                      float radius, ReU32 color, ReI32 count) {
    if (!(color & 0xff000000) || 0.5f > radius)
        return;
    circle_path(d, shared, center, radius, count);
    draw_shapes_path_fill_378a14(d, shared, color);
}
} // namespace rust_internal_re
