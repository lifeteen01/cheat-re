#include "draw_shadows_internal.hpp"
namespace rust_internal_re {
using namespace shadow_detail;

// [C] 0x3a6554..0x3a6588: Vec2 magnitude with zero-fallback.
// [C] Computes x*x + y*y, compares against literal 0.0f at 0x28d24c.
// [C] If positive, tail-calls sample_sqrt_2e3c88 via thunk 0x3c8f34; otherwise returns fallback.
float draw_shadows_safe_length_3a6554(const Vec2 &v, float fallback) {
    const float sq = v.x * v.x + v.y * v.y;
    if (sq > 0.0f)
        return sample_sqrt_2e3c88(sq);
    return fallback;
}

// [C] 0x37ca00..0x37ca2a: Vec2 divided by scalar.
// [C] Divides both components by the scalar, stores result via vec2_store 0x2cc340.
Vec2 draw_shadows_divide_scalar_37ca00(const Vec2 &v, float divisor) {
    return {v.x / divisor, v.y / divisor};
}

// [C] 0x38bc2c..0x38bc56: Vec2 component-wise division by Vec2.
// [C] numerator.x / denominator.x, numerator.y / denominator.y via vec2_store 0x2cc340.
Vec2 draw_shadows_divide_component_38bc2c(const Vec2 &numerator, const Vec2 &denominator) {
    return {numerator.x / denominator.x, numerator.y / denominator.y};
}

// [C] 0x39f728..0x39f73a: in-place Vec2 scale by broadcast scalar.
// [C] Uses movsd load, shufps broadcast, mulps packed multiply, movsd store.
Vec2 &draw_shadows_scale_inplace_39f728(Vec2 &v, float scalar) {
    v.x *= scalar;
    v.y *= scalar;
    return v;
}

void draw_shadows_convex_3a1564(DrawCoreList &d, const DrawShadowsShared &shared,
                                re::ReSpan<const Vec2> points, ReU32 color, float thickness,
                                Vec2 offset, ReI32 flags) {
    if (points.size() < 3)
        { __builtin_trap(); }
    extent(points.size() * 11, 0x3a16e4);
    const bool cutout = (flags & 0x200) != 0;
    const bool inset = (d.flags & 4) && cutout;
    const float direction = area(points[0], points[1], points[2]) < 0 ? -1.0f : 1.0f;
    const auto &uv = shared.uv[9];
    const Vec2 inner_uv{uv[2], uv[3]}, outer_uv{uv[0], uv[3]};
    const Vec2 texel{1.0f / float(shared.atlas_width), 1.0f / float(shared.atlas_height)};
    const Vec2 span_pixels =
        multiply(outer_uv - inner_uv, {float(shared.atlas_width), float(shared.atlas_height)});
    const auto count = points.size();
    re::ReVector<Vec2> normals(count);
    re::ReVector<float> joins(count);
    for (ReUSize i = 0; i < count; ++i) {
        const auto delta = points[(i + 1) % count] - points[i];
        const Vec2 normal{delta.y, -delta.x};
        normals[i] = divide(normal, length(normal, bits(0x3a83126f))) * direction;
    }
    auto previous_normal = normals.back();
    for (ReUSize i = 0; i < count; ++i) {
        const auto cosine = dot(normals[i], previous_normal);
        float stretch = 1;
        if (bits(0x3f7fffef) > cosine) {
            auto angle = draw_shapes_acos_3c852c(cosine);
            if (0 >= cosine)
                angle *= 0.5f;
            angle *= 0.5f;
            stretch = 1 / font_text_cosine_3c899c(angle);
        }
        joins[i] = stretch;
        previous_normal = normals[i];
    }
    const auto maximum_vertices = ReI32(count * (cutout ? 10 : 11));
    const auto maximum_indices = ReI32(cutout ? count * 12 : count * 15 - 6);
    draw_core_reserve_3a719c(d, maximum_indices, maximum_vertices);
    const auto base = d.current_vertex;
    re::ReVector<DrawVertex> vertices;
    re::ReVector<ReU16> indices;
    vertices.reserve(ReUSize(maximum_vertices));
    indices.reserve(ReUSize(maximum_indices));
    const auto triangle = [&](DrawVertex a, DrawVertex b, DrawVertex c) {
        const auto first = ReU16(vertices.size());
        vertices.insert(vertices.end(), {a, b, c});
        indices.insert(indices.end(), {first, ReU16(first + 1), ReU16(first + 2)});
    };
    const auto position = [&](ReUSize i) {
        auto p = points[i] + offset;
        if (inset) {
            const auto sum = normals[i] + normals[(i + count - 1) % count];
            p = p - divide(sum, length(sum, bits(0x3a83126f))) * 0.5f;
        }
        return p;
    };
    auto current_position = position(0);
    previous_normal = normals.back();
    for (ReUSize i = 0; i < count; ++i) {
        const auto next_index = (i + 1) % count;
        const auto next_position = position(next_index);
        const auto current_normal = normals[i];
        auto corner_normal = current_normal;
        auto cosine = dot(corner_normal, previous_normal);
        if (bits(0x3f7fffef) > cosine) {
            const auto split = 1 + int(0 >= cosine);
            const auto stretch = joins[i];
            for (int part = 0; part < split; ++part) {
                if (split > 1) {
                    if (part == 0) {
                        const auto sum = current_normal + previous_normal;
                        corner_normal = divide(sum, length(sum, bits(0x3a83126f)));
                    } else
                        corner_normal = current_normal;
                    cosine = dot(corner_normal, previous_normal);
                }
                const auto sine = draw_shapes_sine_3c8e6c(draw_shapes_acos_3c852c(cosine));
                const auto stretched = span_pixels * stretch;
                const Vec2 rotated{stretched.y * sine + stretched.x * cosine,
                                   stretched.x * sine + stretched.y * cosine};
                const auto first_uv = inner_uv + multiply(stretched, texel);
                const auto second_uv = inner_uv + multiply(rotated, texel);
                const auto first = current_position + corner_normal * (stretch * thickness);
                const auto second = current_position + previous_normal * (stretch * thickness);
                triangle(vertex(current_position, inner_uv, color), vertex(first, first_uv, color),
                         vertex(second, second_uv, color));
                previous_normal = corner_normal;
            }
        }
        if (length(next_position - current_position, 0) > bits(0x3727c5ac)) {
            const auto first = ReU16(vertices.size());
            const auto next_outer =
                next_position + (current_normal * thickness) * joins[next_index];
            const auto current_outer = current_position + (current_normal * thickness) * joins[i];
            const auto next_uv = inner_uv + (outer_uv - inner_uv) * joins[next_index];
            const auto current_uv = inner_uv + (outer_uv - inner_uv) * joins[i];
            vertices.insert(vertices.end(), {vertex(current_position, inner_uv, color),
                                             vertex(next_position, inner_uv, color),
                                             vertex(next_outer, next_uv, color),
                                             vertex(current_outer, current_uv, color)});
            indices.insert(indices.end(),
                           {first, ReU16(first + 1), ReU16(first + 2), first,
                            ReU16(first + 2), ReU16(first + 3)});
        }
        current_position = next_position;
    }
    if (!cutout) {
        const auto first = ReU16(vertices.size());
        for (const auto point : points)
            vertices.push_back(vertex(point + offset, inner_uv, color));
        for (ReUSize i = 2; i < count; ++i)
            indices.insert(indices.end(),
                           {first, ReU16(first + i - 1), ReU16(first + i)});
    }
    draw_core_write_relative(d, vertices, indices);
    // [C] The native final cursor store zero-extends BX, even without vertex-offset rollover.
    d.current_vertex = ReU16(base + vertices.size());
    draw_core_unreserve(d, maximum_indices - ReI32(indices.size()),
                        maximum_vertices - ReI32(vertices.size()));
}
} // namespace rust_internal_re
