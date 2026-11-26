#include "draw_shadows_internal.hpp"
namespace rust_internal_re {
namespace {
using namespace shadow_detail;
ReU8 outcode(Vec2 p, Vec2 a, Vec2 b) {
    return ReU8((a.x > p.x ? 1 : 0) | (p.x > b.x ? 2 : 0) | (a.y > p.y ? 4 : 0) |
                        (p.y > b.y ? 8 : 0));
}
void plain(DrawCoreList &d, Vec2 a, Vec2 b, Vec2 u, Vec2 v, ReU32 color) {
    draw_core_reserve_3a719c(d, 6, 4);
    draw_core_rectangle_3a7020(d, a, b, u, v, color);
}
void write_vertices(DrawCoreList &d, re::ReSpan<const DrawVertex> vertices) {
    if (!d.vertex_write_valid)
        { __builtin_trap(); }
    for (const auto &v : vertices)
        d.vertices.write(d.vertex_write++, v);
    d.current_vertex += ReU32(vertices.size());
}
void write_indices(DrawCoreList &d, re::ReSpan<const ReU16> indices, ReU32 base) {
    if (!d.index_write_valid)
        { __builtin_trap(); }
    for (const auto index : indices)
        d.indices.write(d.index_write++, ReU16(base + index));
}
} // namespace
ReI32 draw_shadows_clip_3a3ea4(re::ReSpan<const Vec2> input, Vec2 a, Vec2 b,
                                      re::ReSpan<Vec2> output) {
    if (a.x >= b.x || a.y >= b.y || input.size() < 3)
        return 0;
    extent(re::re_max(input.size(), output.size()), 0x3a3f1f);
    ReU8 common = 0xff, united = 0;
    for (const auto point : input) {
        const auto code = outcode(point, a, b);
        common &= code;
        united |= code;
    }
    if (common)
        return 0;
    if (!united) {
        if (output.size() < input.size())
            return -1;
        re::re_copy(input.begin(), input.end(), output.begin());
        return ReI32(input.size());
    }
    re::ReVector<Vec2> current(input.begin(), input.end()), next;
    for (unsigned axis = 0; axis < 4; ++axis) {
        const auto mask = ReU8(1u << axis);
        if (!(united & mask))
            continue;
        next.clear();
        if (!current.empty()) {
            auto previous = current.back();
            bool previous_outside = (outcode(previous, a, b) & mask) != 0;
            for (const auto point : current) {
                const bool outside = (outcode(point, a, b) & mask) != 0;
                if (outside != previous_outside) {
                    Vec2 intersection;
                    if (axis < 2) {
                        const auto x = axis == 0 ? a.x : b.x;
                        intersection = {x, ((x - previous.x) / (point.x - previous.x)) *
                                                   (point.y - previous.y) +
                                               previous.y};
                    } else {
                        const auto y = axis == 2 ? a.y : b.y;
                        intersection = {((y - previous.y) / (point.y - previous.y)) *
                                                (point.x - previous.x) +
                                            previous.x,
                                        y};
                    }
                    if (next.size() == output.size())
                        return -1;
                    next.push_back(intersection);
                }
                if (!outside) {
                    if (next.size() == output.size())
                        return -1;
                    next.push_back(point);
                }
                previous = point;
                previous_outside = outside;
            }
        }
        current.swap(next);
    }
    if (current.size() < 3)
        return 0;
    auto previous = current.back();
    ReI32 count = 0;
    for (const auto point : current) {
        const auto delta = point - previous;
        const float square = delta.x * delta.x + delta.y * delta.y;
        // [C] Unordered COMISS does not take the JAE that suppresses a duplicate.
        if (!(bits(0x3727c5ac) >= square)) {
            output[ReUSize(count++)] = point;
            previous = point;
        }
    }
    return count > 2 ? count : 0;
}
void draw_shadows_subtract_rect_3a2b34(DrawCoreList &d, Vec2 a, Vec2 b, Vec2 u, Vec2 v, Vec2 hole_a,
                                       Vec2 hole_b, ReU32 color) {
    if (a.x >= b.x || a.y >= b.y)
        return;
    if (a.x >= hole_a.x && hole_b.x >= b.x && a.y >= hole_a.y && hole_b.y >= b.y)
        return;
    hole_a = {maxss(hole_a.x, a.x), maxss(hole_a.y, a.y)};
    hole_b = {minss(hole_b.x, b.x), minss(hole_b.y, b.y)};
    if (hole_a.x >= hole_b.x || hole_a.y >= hole_b.y) {
        plain(d, a, b, u, v, color);
        return;
    }
    draw_core_reserve_3a719c(d, 24, 12);
    const auto base = d.current_vertex;
    const auto slope = divide(v - u, b - a);
    const auto offset = divide(u, slope) - a;
    const auto outer = corners(a, b), inner = corners(hole_a, hole_b);
    re::ReArray<DrawVertex, 12> vertices;
    for (ReUSize i = 0; i < 4; ++i)
        vertices[i] = vertex(outer[i], corners(u, v)[i], color);
    for (ReUSize i = 0; i < 4; ++i)
        vertices[4 + i] = vertex(inner[i], mapped(inner[i], offset, slope), color);
    const re::ReArray<Vec2, 4> edge_points{
        {{hole_a.x, a.y}, {hole_b.x, a.y}, {hole_b.x, b.y}, {hole_a.x, b.y}}};
    for (ReUSize i = 0; i < 4; ++i)
        vertices[8 + i] = vertex(edge_points[i], mapped(edge_points[i], offset, slope), color);
    write_vertices(d, vertices);
    re::ReVector<ReU16> indices;
    const auto add = [&](re::ReArray<ReU16, 6> values) {
        indices.insert(indices.end(), values.begin(), values.end());
    };
    if (hole_a.x > a.x)
        add({0, 8, 11, 0, 11, 3});
    if (hole_a.y > a.y)
        add({8, 9, 5, 8, 5, 4});
    if (b.x > hole_b.x)
        add({9, 1, 2, 9, 2, 10});
    if (b.y > hole_b.y)
        add({7, 6, 10, 7, 10, 11});
    write_indices(d, indices, base);
    draw_core_unreserve(d, 24 - ReI32(indices.size()), 0);
}
void draw_shadows_subtract_polygon_3a2374(DrawCoreList &d, Vec2 a, Vec2 b, Vec2 u, Vec2 v,
                                          re::ReSpan<const Vec2> hole, ReU32 color) {
    if (a.x >= b.x || a.y >= b.y)
        return;
    extent(hole.size() + 4, 0x3a240b);
    re::ReVector<Vec2> clipped(hole.size() + 4);
    const auto count = draw_shadows_clip_3a3ea4(hole, a, b, clipped);
    if (!count) {
        plain(d, a, b, u, v, color);
        return;
    }
    if (count < 3)
        { __builtin_trap(); }
    clipped.resize(ReUSize(count));
    const auto maximum_indices = (count + 4) * 3;
    draw_core_reserve_3a719c(d, maximum_indices, count + 4);
    const auto base = d.current_vertex;
    const auto slope = divide(v - u, b - a);
    const auto offset = divide(u, slope) - a;
    re::ReVector<DrawVertex> vertices;
    for (const auto point : clipped)
        vertices.push_back(vertex(point, mapped(point, offset, slope), color));
    const auto outer = corners(a, b), texture = corners(u, v);
    for (ReUSize i = 0; i < 4; ++i)
        vertices.push_back(vertex(outer[i], texture[i], color));
    write_vertices(d, vertices);
    const auto step = area(clipped[0], clipped[1], clipped[2]) < 0 ? -1 : 1;
    re::ReVector<ReU16> indices;
    auto triangle = [&](int x, int y, int z, Vec2 p, Vec2 q, Vec2 r) {
        if (!(bits(0x3e4ccccd) > re::re_fabs(area(p, q, r)))) {
            indices.push_back(ReU16(x));
            indices.push_back(ReU16(y));
            indices.push_back(ReU16(z));
        }
    };
    int first_corner = -1, last_corner = -1, previous_index = count - 1;
    auto previous = clipped.back();
    for (int i = 0; i < count; ++i) {
        const auto point = clipped[ReUSize(i)];
        const Vec2 normal{point.y - previous.y, -(point.x - previous.x)};
        const int horizontal = normal.x >= 0 ? 1 + int(normal.y > 0) : (normal.y > 0 ? 3 : 0);
        int corner = normal.y >= 0 ? 2 + int(!(normal.x > 0)) : int(normal.x > 0);
        if (re::re_fabs(normal.x) > re::re_fabs(normal.y))
            corner = horizontal;
        triangle(previous_index, i, count + corner, previous, point, outer[ReUSize(corner)]);
        if (first_corner == -1)
            first_corner = last_corner = corner;
        else {
            while (last_corner != corner) {
                const auto next_corner = (last_corner + step) & 3;
                triangle(count + last_corner, count + next_corner, previous_index,
                         outer[ReUSize(next_corner)], outer[ReUSize(last_corner)],
                         previous);
                last_corner = next_corner;
            }
        }
        previous = point;
        previous_index = i;
    }
    while (last_corner != first_corner) {
        const auto next_corner = (last_corner + step) & 3;
        triangle(count + last_corner, count + next_corner, previous_index,
                 outer[ReUSize(next_corner)], outer[ReUSize(last_corner)], previous);
        last_corner = next_corner;
    }
    write_indices(d, indices, base);
    draw_core_unreserve(d, maximum_indices - ReI32(indices.size()), 0);
}
} // namespace rust_internal_re
