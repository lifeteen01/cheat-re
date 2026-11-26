#include "font_builder_internal.hpp"
namespace rust_internal_re {
using namespace font_builder_detail;
namespace {
ReI16 short_value(ReI32 value) {
    return re::re_bit_cast<ReI16>(ReU16(ReU32(value)));
}
void emit(re::ReVector<FontBuilderVertex> &out, ReU8 type, ReI32 x, ReI32 y,
          ReI32 cx, ReI32 cy, const FontBuilderLimits &limits) {
    if (out.size() >= limits.maximum_vertices)
        { __builtin_trap(); }
    out.push_back({short_value(x), short_value(y), short_value(cx), short_value(cy), {}, type});
}
void close_shape(re::ReVector<FontBuilderVertex> &out, bool was_off, bool start_off, ReI32 sx,
                 ReI32 sy, ReI32 scx, ReI32 scy, ReI32 cx,
                 ReI32 cy, const FontBuilderLimits &limits) {
    if (start_off) {
        if (was_off)
            emit(out, 3, (cx + scx) >> 1, (cy + scy) >> 1, cx, cy, limits);
        emit(out, 3, sx, sy, scx, scy, limits);
    } else if (was_off)
        emit(out, 3, sx, sy, cx, cy, limits);
    else
        emit(out, 2, sx, sy, 0, 0, limits);
}
} // namespace
re::ReVector<FontBuilderVertex>
font_builder_shape_3aa6cc(const Snapshot &image, const FontBuilderInfo &info, ReI32 glyph,
                          const FontBuilderLimits &limits, ReUSize depth) {
    if (depth >= limits.maximum_recursion)
        { __builtin_trap(); }
    if (info.cff)
        return cff_shape(image, info, glyph, limits);
    re::ReVector<FontBuilderVertex> out;
    const auto g = glyph_offset(image, info, glyph);
    if (g < 0)
        return out;
    const Reader r{image, info.input};
    const auto contours = r.signed_word(g, 0x3aa756);
    if (contours > 0) {
        const auto end_points = ReI64(g) + 10;
        const auto instruction_count = r.word(end_points + ReI64(contours) * 2, 0x3aa77a);
        auto cursor = end_points + ReI64(contours) * 2 + 2 + instruction_count;
        const auto n =
            ReUSize(r.word(end_points + ReI64(contours) * 2 - 2, 0x3aa78f)) + 1;
        if (n > limits.maximum_vertices)
            { __builtin_trap(); }
        struct Point {
            ReI16 x{}, y{};
            ReU8 flags{};
        };
        re::ReVector<Point> points(n);
        ReU8 flags = 0, repeat = 0;
        for (auto &point : points) {
            if (!repeat) {
                flags = r.byte(cursor++, 0x3aa807);
                if (flags & 8)
                    repeat = r.byte(cursor++, 0x3aa811);
            } else
                --repeat;
            point.flags = flags;
        }
        ReI32 x = 0, y = 0;
        for (auto &point : points) {
            if (point.flags & 2) {
                const auto delta = r.byte(cursor++, 0x3aa863);
                x = add(x, point.flags & 16 ? delta : -ReI32(delta));
            } else if (!(point.flags & 16)) {
                x = add(x, r.signed_word(cursor, 0x3aa87d));
                cursor += 2;
            }
            point.x = short_value(x);
        }
        for (auto &point : points) {
            if (point.flags & 4) {
                const auto delta = r.byte(cursor++, 0x3aa8c3);
                y = add(y, point.flags & 32 ? delta : -ReI32(delta));
            } else if (!(point.flags & 32)) {
                y = add(y, r.signed_word(cursor, 0x3aa8dd));
                cursor += 2;
            }
            point.y = short_value(y);
        }
        ReI32 sx = 0, sy = 0, cx = 0, cy = 0, scx = 0, scy = 0;
        ReUSize next_move = 0, contour = 0;
        bool was_off = false, start_off = false;
        for (ReUSize i = 0; i < n; ++i) {
            const auto p = points[i];
            x = p.x;
            y = p.y;
            if (i == next_move) {
                if (i)
                    close_shape(out, was_off, start_off, sx, sy, scx, scy, cx, cy, limits);
                start_off = !(p.flags & 1);
                if (start_off) {
                    scx = x;
                    scy = y;
                    if (i + 1 >= n)
                        __builtin_trap();
                    const auto next = points[i + 1];
                    if (!(next.flags & 1)) {
                        sx = (x + next.x) >> 1;
                        sy = (y + next.y) >> 1;
                    } else {
                        sx = next.x;
                        sy = next.y;
                        ++i;
                    }
                } else {
                    sx = x;
                    sy = y;
                }
                emit(out, 1, sx, sy, 0, 0, limits);
                was_off = false;
                next_move =
                    ReUSize(r.word(end_points + ReI64(contour) * 2, 0x3aaa0d)) + 1;
                ++contour;
            } else if (!(p.flags & 1)) {
                if (was_off)
                    emit(out, 3, (cx + x) >> 1, (cy + y) >> 1, cx, cy, limits);
                cx = x;
                cy = y;
                was_off = true;
            } else {
                emit(out, was_off ? 3 : 2, x, y, was_off ? cx : 0, was_off ? cy : 0, limits);
                was_off = false;
            }
        }
        close_shape(out, was_off, start_off, sx, sy, scx, scy, cx, cy, limits);
        return out;
    }
    if (!contours)
        return out;
    ReI64 cursor = ReI64(g) + 10;
    ReUSize components = 0;
    bool more = true;
    while (more) {
        if (components++ >= limits.maximum_vertices)
            { __builtin_trap(); }
        const auto flags = r.word(cursor, 0x3aab53), index = r.word(cursor + 2, 0x3aab60);
        cursor += 4;
        re::ReArray<float, 6> matrix{1, 0, 0, 1, 0, 0};
        if (flags & 2) {
            if (flags & 1) {
                matrix[4] = float(r.signed_word(cursor, 0x3aab78));
                matrix[5] = float(r.signed_word(cursor + 2, 0x3aab8d));
                cursor += 4;
            } else {
                matrix[4] = float(re::re_bit_cast<ReI8>(r.byte(cursor, 0x3aabb0)));
                matrix[5] = float(re::re_bit_cast<ReI8>(r.byte(cursor + 1, 0x3aabc1)));
                cursor += 2;
            }
        }
        // [C] Matching-point branch has no emitted assertion or argument skip in this build.
        const auto scale = [&](Rva site) {
            const auto value =
                float(r.signed_word(cursor, site)) * re::re_bit_cast<float>(0x38800000u);
            cursor += 2;
            return value;
        };
        if (flags & 8) {
            matrix[0] = matrix[3] = scale(0x3aabfa);
        } else if (flags & 64) {
            matrix[0] = scale(0x3aac1c);
            matrix[3] = scale(0x3aac3c);
        } else if (flags & 128) {
            matrix[0] = scale(0x3aac5a);
            matrix[1] = scale(0x3aac72);
            matrix[2] = scale(0x3aac8c);
            matrix[3] = scale(0x3aaca6);
        }
        const float m = sample_sqrt_2e3c88(matrix[1] * matrix[1] + matrix[0] * matrix[0]),
                    n = sample_sqrt_2e3c88(matrix[3] * matrix[3] + matrix[2] * matrix[2]);
        auto vertices = font_builder_shape_3aa6cc(image, info, index, limits, depth + 1);
        if (out.size() + vertices.size() > limits.maximum_vertices)
            { __builtin_trap(); }
        for (auto &v : vertices) {
            const float x = float(v.x), y = float(v.y);
            v.x = short_value(cvtt(m * ((matrix[0] * x + matrix[2] * y) + matrix[4])));
            v.y = short_value(cvtt(n * ((matrix[1] * x + matrix[3] * y) + matrix[5])));
            const float cx = float(v.cx), cy = float(v.cy);
            v.cx = short_value(cvtt(m * ((matrix[0] * cx + matrix[2] * cy) + matrix[4])));
            v.cy = short_value(cvtt(n * ((matrix[1] * cx + matrix[3] * cy) + matrix[5])));
        }
        out.insert(out.end(), vertices.begin(), vertices.end());
        more = (flags & 32) != 0;
    }
    return out;
}
} // namespace rust_internal_re
