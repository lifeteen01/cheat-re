#include "draw_shapes_analysis.hpp"
#if defined(__SSE__)
#endif
namespace rust_internal_re {
namespace {
template <class T> T read(const Snapshot &s, Address a, Rva site) {
    auto v = s.read<T>(a);
    if (!v)
        { __builtin_trap(); }
    return *v;
}
DrawVertex vertex(Vec2 p, Vec2 uv, ReU32 color) {
    DrawVertex v;
    re::re_memcpy(v.data(), &p, 8);
    re::re_memcpy(v.data() + 8, &uv, 8);
    re::re_memcpy(v.data() + 16, &color, 4);
    return v;
}
float minss(float a, float b) {
    return a < b ? a : b;
}
Vec2 normal(Vec2 a, Vec2 b) {
    float x = b.x - a.x, y = b.y - a.y;
    const float yy = y * y, xx = x * x;
    const float sq = yy + xx;
    if (sq > 0) {
        const float inverse = draw_shapes_inverse_length_3a6594(sq);
        x = inverse * x;
        y = inverse * y;
    }
    return {y, -x};
}
Vec2 miter(Vec2 a, Vec2 b) {
    float x = (b.x + a.x) * 0.5f, y = (b.y + a.y) * 0.5f;
    const float xx = x * x, yy = y * y, sq = yy + xx;
    if (sq > re::re_bit_cast<float>(0x358637bdu)) {
        const float factor = minss(100, 1 / sq);
        x = factor * x;
        y = factor * y;
    }
    return {x, y};
}
void bounded(ReUSize n, Rva site) {
    if (n > 1000000)
        { __builtin_trap(); }
}
ReU16 ix(ReUSize n) {
    return ReU16(n);
}
} // namespace
float draw_shapes_inverse_length_3a6594(float value) {
#if defined(__SSE__)
    return _mm_cvtss_f32(_mm_rsqrt_ss(_mm_set_ss(value)));
#else
    (void)value;
    { __builtin_trap(); }
#endif
}
DrawShapesShared copy_draw_shapes_shared(const Snapshot &s, Address p) {
    DrawShapesShared out;
    out.white_uv = read<Vec2>(s, p, 0x3a0320);
    out.circle_error = read<float>(s, p + 0x18, 0x3a8cdf);
    out.arc_fast = read<decltype(out.arc_fast)>(s, p + 0x40, 0x3a901e);
    out.arc_fast_radius_cutoff = read<float>(s, p + 0x1c0, 0x3a68ce);
    out.circle_segments = read<decltype(out.circle_segments)>(s, p + 0x1c4, 0x3a8cd2);
    const auto uv = read<Address>(s, p + 0x208, 0x3a0cfe);
    if (uv)
        out.line_uv = read<re::ReArray<re::ReArray<float, 4>, 64>>(s, uv, 0x3a0d05);
    return out;
}
void draw_shapes_polyline_3a0294(DrawCoreList &d, const DrawShapesShared &shared,
                                 re::ReSpan<const Vec2> input, ReU32 color,
                                 ReI32 flags, float thickness) {
    if (input.size() < 2 || !(color & 0xff000000))
        return;
    bounded(input.size(), 0x3a0294);
    // [I] A stable copy preserves aliases into owned path/shared temporary allocations.
    const re::ReVector<Vec2> p(input.begin(), input.end());
    const auto n = p.size(), segments = (flags & 1) ? n : n - 1;
    const bool closed = (flags & 1) != 0;
    re::ReVector<DrawVertex> vertices;
    re::ReVector<ReU16> indices;
    const auto transparent = color & 0xffffff;
    if (!(d.flags & 1)) {
        vertices.reserve(segments * 4);
        indices.reserve(segments * 6);
        draw_core_reserve_3a719c(d, ReI32(segments * 6), ReI32(segments * 4));
        const float half = thickness * 0.5f;
        for (ReUSize i = 0; i < segments; ++i) {
            const auto j = (i + 1) % n;
            const auto offset = normal(p[i], p[j]) * half;
            const auto base = vertices.size();
            vertices.push_back(vertex(p[i] + offset, shared.white_uv, color));
            vertices.push_back(vertex(p[j] + offset, shared.white_uv, color));
            vertices.push_back(vertex(p[j] - offset, shared.white_uv, color));
            vertices.push_back(vertex(p[i] - offset, shared.white_uv, color));
            for (auto q : {0u, 1u, 2u, 0u, 2u, 3u})
                indices.push_back(ix(base + q));
        }
        draw_core_write_relative(d, vertices, indices);
        return;
    }
    const float fringe = d.fringe_scale;
    const bool thick = thickness > fringe;
    thickness = thickness > 1 ? thickness : 1;
    const auto integer = world_cvttss2si(thickness);
    const float fraction = thickness - float(integer);
    const bool texture = (d.flags & 2) && integer < 63 &&
                         re::re_bit_cast<float>(0x3727c5acu) >= fraction && fringe == 1;
    const ReUSize stride = texture ? 2 : thick ? 4 : 3;
    const ReUSize per_segment = texture ? 6 : thick ? 18 : 12;
    draw_core_reserve_3a719c(d, ReI32(segments * per_segment), ReI32(n * stride));
    re::ReVector<Vec2> normals(n);
    for (ReUSize i = 0; i < segments; ++i)
        normals[i] = normal(p[i], p[(i + 1) % n]);
    if (!closed)
        normals[n - 1] = normals[n - 2];
    re::ReVector<Vec2> generated(n * (thick && !texture ? 4 : 2));
    if (thick && !texture) {
        const float inner = (thickness - fringe) * 0.5f, outer = inner + fringe;
        const auto put = [&](ReUSize i, Vec2 m) {
            generated[4 * i] = p[i] + m * outer;
            generated[4 * i + 1] = p[i] + m * inner;
            generated[4 * i + 2] = p[i] - m * inner;
            generated[4 * i + 3] = p[i] - m * outer;
        };
        if (!closed) {
            put(0, normals[0]);
            put(n - 1, normals[n - 1]);
        }
        for (ReUSize i = 0; i < segments; ++i) {
            auto j = (i + 1) % n;
            put(j, miter(normals[i], normals[j]));
            const auto a = i * 4, b = j * 4;
            for (auto q : {b + 1, a + 1, a + 2, a + 2, b + 2, b + 1, b + 1, a + 1, a, a, b, b + 1,
                           b + 2, a + 2, a + 3, a + 3, b + 3, b + 2})
                indices.push_back(ix(q));
        }
        for (ReUSize i = 0; i < n; ++i) {
            vertices.push_back(vertex(generated[4 * i], shared.white_uv, transparent));
            vertices.push_back(vertex(generated[4 * i + 1], shared.white_uv, color));
            vertices.push_back(vertex(generated[4 * i + 2], shared.white_uv, color));
            vertices.push_back(vertex(generated[4 * i + 3], shared.white_uv, transparent));
        }
    } else {
        const float half = texture ? thickness * 0.5f + 1 : fringe;
        const auto put = [&](ReUSize i, Vec2 m) {
            generated[2 * i] = p[i] + m * half;
            generated[2 * i + 1] = p[i] - m * half;
        };
        if (!closed) {
            put(0, normals[0]);
            put(n - 1, normals[n - 1]);
        }
        for (ReUSize i = 0; i < segments; ++i) {
            auto j = (i + 1) % n;
            put(j, miter(normals[i], normals[j]));
            const auto a = i * stride, b = j * stride;
            if (texture) {
                for (auto q : {b, a, a + 1, b + 1, a + 1, b})
                    indices.push_back(ix(q));
            } else {
                for (auto q : {b, a, a + 2, a + 2, b + 2, b, b + 1, a + 1, a, a, b, b + 1})
                    indices.push_back(ix(q));
            }
        }
        if (texture) {
            draw_core_write_relative(d, {}, indices);
            if (integer < 0 || !shared.line_uv)
                __builtin_trap();
            const auto uv = (*shared.line_uv)[ReUSize(integer)];
            for (ReUSize i = 0; i < n; ++i) {
                vertices.push_back(vertex(generated[2 * i], {uv[0], uv[1]}, color));
                vertices.push_back(vertex(generated[2 * i + 1], {uv[2], uv[3]}, color));
            }
        } else
            for (ReUSize i = 0; i < n; ++i) {
                vertices.push_back(vertex(p[i], shared.white_uv, color));
                vertices.push_back(vertex(generated[2 * i], shared.white_uv, transparent));
                vertices.push_back(vertex(generated[2 * i + 1], shared.white_uv, transparent));
            }
    }
    const auto start = d.current_vertex;
    draw_core_write_relative(d, vertices,
                             texture ? re::ReSpan<const ReU16>{}
                                     : re::ReSpan<const ReU16>(indices));
    d.current_vertex = start + ReU16(n * stride); // [C]3a0e2e lowWORD increment.
}
void draw_shapes_convex_39f928(DrawCoreList &d, const DrawShapesShared &shared,
                               re::ReSpan<const Vec2> input, ReU32 color) {
    if (input.size() < 3 || !(color & 0xff000000))
        return;
    bounded(input.size(), 0x39f928);
    const re::ReVector<Vec2> p(input.begin(), input.end());
    const auto n = p.size();
    re::ReVector<DrawVertex> vertices;
    re::ReVector<ReU16> indices;
    if (d.flags & 4) {
        draw_core_reserve_3a719c(d, ReI32(n * 9 - 6), ReI32(n * 2));
        for (ReUSize i = 2; i < n; ++i) {
            indices.push_back(0);
            indices.push_back(ix((i - 1) * 2));
            indices.push_back(ix(i * 2));
        }
        re::ReVector<Vec2> normals(n);
        for (ReUSize i = 0; i < n; ++i)
            normals[i] = normal(p[i], p[(i + 1) % n]);
        const float half = d.fringe_scale * 0.5f;
        for (ReUSize i = 0, previous = n - 1; i < n; previous = i++) {
            const auto offset = miter(normals[previous], normals[i]) * half;
            vertices.push_back(vertex(p[i] - offset, shared.white_uv, color));
            vertices.push_back(vertex(p[i] + offset, shared.white_uv, color & 0xffffff));
            for (auto q :
                 {i * 2, previous * 2, previous * 2 + 1, previous * 2 + 1, i * 2 + 1, i * 2})
                indices.push_back(ix(q));
        }
    } else {
        draw_core_reserve_3a719c(d, ReI32((n - 2) * 3), ReI32(n));
        for (auto point : p)
            vertices.push_back(vertex(point, shared.white_uv, color));
        for (ReUSize i = 2; i < n; ++i) {
            indices.push_back(0);
            indices.push_back(ix(i - 1));
            indices.push_back(ix(i));
        }
    }
    const auto start = d.current_vertex;
    draw_core_write_relative(d, vertices, indices);
    d.current_vertex = start + ReU16(vertices.size());
}
void draw_shapes_path_stroke_398758(DrawCoreList &d, const DrawShapesShared &shared,
                                    ReU32 color, ReI32 flags, float thickness) {
    re::ReVector<Vec2> points;
    for (ReI32 i = 0; i < d.path.size; ++i)
        points.push_back(d.path.at(i));
    draw_shapes_polyline_3a0294(d, shared, points, color, flags, thickness);
    d.path.resize_existing(0);
}
void draw_shapes_path_fill_378a14(DrawCoreList &d, const DrawShapesShared &shared,
                                  ReU32 color) {
    re::ReVector<Vec2> points;
    for (ReI32 i = 0; i < d.path.size; ++i)
        points.push_back(d.path.at(i));
    draw_shapes_convex_39f928(d, shared, points, color);
    d.path.resize_existing(0);
}
} // namespace rust_internal_re
