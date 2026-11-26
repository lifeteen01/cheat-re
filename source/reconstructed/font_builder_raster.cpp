#include "font_builder_internal.hpp"
// [I] Area formulas cross-checked against the native ranges in the audit ledger.
// Reference: stb_truetype, public-domain alternative license by Sean Barrett.
namespace rust_internal_re {
using namespace font_builder_detail;
namespace {
struct Edge {
    float x0{}, y0{}, x1{}, y1{};
    bool invert{};
};
struct Active {
    Active *next{};
    float fx{}, fdx{}, fdy{}, direction{}, sy{}, ey{};
};
static void clipped_3abfd4(float *scanline, int x, Active *e, float x0, float y0, float x1,
                           float y1) {
    if (y0 == y1)
        return;
    if (y0 > e->ey)
        return;
    if (y1 < e->sy)
        return;
    if (y0 < e->sy) {
        x0 += (x1 - x0) * (e->sy - y0) / (y1 - y0);
        y0 = e->sy;
    }
    if (y1 > e->ey) {
        x1 += (x1 - x0) * (e->ey - y1) / (y1 - y0);
        y1 = e->ey;
    }
    if (x0 <= x && x1 <= x)
        scanline[x] += e->direction * (y1 - y0);
    else if (x0 >= x + 1 && x1 >= x + 1) {
    } else {
        scanline[x] += e->direction * (y1 - y0) * (1 - ((x0 - x) + (x1 - x)) / 2);
    }
}
static float trapezoid_3ad2ac(float height, float top_width, float bottom_width) {
    return (top_width + bottom_width) / 2.0f * height;
}
static float position_area_3ac354(float height, float tx0, float tx1, float bx0, float bx1) {
    return trapezoid_3ad2ac(height, tx1 - tx0, bx1 - bx0);
}
static float triangle_area_3ad2c0(float height, float width) { return height * width / 2; }
static void fill_3ab6e0(float *scanline, float *scanline_fill, int len, Active *e, float y_top) {
    float y_bottom = y_top + 1;
    while (e) {
        if (e->fdx == 0) {
            float x0 = e->fx;
            if (x0 < len) {
                if (x0 >= 0) {
                    clipped_3abfd4(scanline, cvtt(x0), e, x0, y_top, x0, y_bottom);
                    clipped_3abfd4(scanline_fill - 1, cvtt(x0) + 1, e, x0, y_top, x0, y_bottom);
                } else {
                    clipped_3abfd4(scanline_fill - 1, 0, e, x0, y_top, x0, y_bottom);
                }
            }
        } else {
            float x0 = e->fx;
            float dx = e->fdx;
            float xb = x0 + dx;
            float x_top, x_bottom;
            float sy0, sy1;
            float dy = e->fdy;
            if (e->sy > y_top) {
                x_top = x0 + dx * (e->sy - y_top);
                sy0 = e->sy;
            } else {
                x_top = x0;
                sy0 = y_top;
            }
            if (e->ey < y_bottom) {
                x_bottom = x0 + dx * (e->ey - y_top);
                sy1 = e->ey;
            } else {
                x_bottom = xb;
                sy1 = y_bottom;
            }
            if (x_top >= 0 && x_bottom >= 0 && x_top < len && x_bottom < len) {
                if (cvtt(x_top) == cvtt(x_bottom)) {
                    float height;
                    int x = cvtt(x_top);
                    height = (sy1 - sy0) * e->direction;
                    scanline[x] +=
                        position_area_3ac354(height, x_top, x + 1.0f, x_bottom, x + 1.0f);
                    scanline_fill[x] += height;
                } else {
                    int x, x1, x2;
                    float y_crossing, y_final, step, sign, area;
                    if (x_top > x_bottom) {
                        float t;
                        sy0 = y_bottom - (sy0 - y_top);
                        sy1 = y_bottom - (sy1 - y_top);
                        t = sy0, sy0 = sy1, sy1 = t;
                        t = x_bottom, x_bottom = x_top, x_top = t;
                        dx = -dx;
                        dy = -dy;
                        t = x0, x0 = xb, xb = t;
                    }
                    x1 = cvtt(x_top);
                    x2 = cvtt(x_bottom);
                    y_crossing = y_top + dy * (x1 + 1 - x0);
                    y_final = y_top + dy * (x2 - x0);
                    if (y_crossing > y_bottom)
                        y_crossing = y_bottom;
                    sign = e->direction;
                    area = sign * (y_crossing - sy0);
                    scanline[x1] += triangle_area_3ad2c0(area, x1 + 1 - x_top);
                    if (y_final > y_bottom) {
                        y_final = y_bottom;
                        if (x2 != x1 + 1)
                            dy = (y_final - y_crossing) / (x2 - (x1 + 1));
                    }
                    step = sign * dy * 1;
                    for (x = x1 + 1; x < x2; ++x) {
                        scanline[x] += area + step / 2;
                        area += step;
                    }
                    scanline[x2] +=
                        area + sign * position_area_3ac354(sy1 - y_final, (float)x2, x2 + 1.0f,
                                                           x_bottom, x2 + 1.0f);
                    scanline_fill[x2] += sign * (sy1 - sy0);
                }
            } else {
                int x;
                for (x = 0; x < len; ++x) {
                    float y0 = y_top;
                    float x1 = (float)(x);
                    float x2 = (float)(x + 1);
                    float x3 = xb;
                    float y3 = y_bottom;
                    float y1 = (x - x0) / dx + y_top;
                    float y2 = (x + 1 - x0) / dx + y_top;
                    if (x0 < x1 && x3 > x2) {
                        clipped_3abfd4(scanline, x, e, x0, y0, x1, y1);
                        clipped_3abfd4(scanline, x, e, x1, y1, x2, y2);
                        clipped_3abfd4(scanline, x, e, x2, y2, x3, y3);
                    } else if (x3 < x1 && x0 > x2) {
                        clipped_3abfd4(scanline, x, e, x0, y0, x2, y2);
                        clipped_3abfd4(scanline, x, e, x2, y2, x1, y1);
                        clipped_3abfd4(scanline, x, e, x1, y1, x3, y3);
                    } else if (x0 < x1 && x3 > x1) {
                        clipped_3abfd4(scanline, x, e, x0, y0, x1, y1);
                        clipped_3abfd4(scanline, x, e, x1, y1, x3, y3);
                    } else if (x3 < x1 && x0 > x1) {
                        clipped_3abfd4(scanline, x, e, x0, y0, x1, y1);
                        clipped_3abfd4(scanline, x, e, x1, y1, x3, y3);
                    } else if (x0 < x2 && x3 > x2) {
                        clipped_3abfd4(scanline, x, e, x0, y0, x2, y2);
                        clipped_3abfd4(scanline, x, e, x2, y2, x3, y3);
                    } else if (x3 < x2 && x0 > x2) {
                        clipped_3abfd4(scanline, x, e, x0, y0, x2, y2);
                        clipped_3abfd4(scanline, x, e, x2, y2, x3, y3);
                    } else {
                        clipped_3abfd4(scanline, x, e, x0, y0, x3, y3);
                    }
                }
            }
        }
        e = e->next;
    }
}

static bool compare(const Edge *a, const Edge *b) { return a->y0 < b->y0; }
static void insertion_sort_3ad2f4(Edge *p, int n) {
    int i, j;
    for (i = 1; i < n; ++i) {
        Edge t = p[i], *a = &t;
        j = i;
        while (j > 0) {
            Edge *b = &p[j - 1];
            int c = compare(a, b);
            if (!c)
                break;
            p[j] = p[j - 1];
            --j;
        }
        if (i != j)
            p[j] = t;
    }
}

static void quick_sort_3ad394(Edge *p, int n) {

    while (n > 12) {
        Edge t;
        int c01, c12, c, m, i, j;

        m = n >> 1;
        c01 = compare(&p[0], &p[m]);
        c12 = compare(&p[m], &p[n - 1]);

        if (c01 != c12) {

            int z;
            c = compare(&p[0], &p[n - 1]);

            z = (c == c12) ? 0 : n - 1;
            t = p[z];
            p[z] = p[m];
            p[m] = t;
        }

        t = p[0];
        p[0] = p[m];
        p[m] = t;

        i = 1;
        j = n - 1;
        for (;;) {

            for (;; ++i) {
                if (!compare(&p[i], &p[0]))
                    break;
            }
            for (;; --j) {
                if (!compare(&p[0], &p[j]))
                    break;
            }

            if (i >= j)
                break;
            t = p[i];
            p[i] = p[j];
            p[j] = t;

            ++i;
            --j;
        }

        if (j < (n - i)) {
            quick_sort_3ad394(p, j);
            p = p + i;
            n = n - i;
        } else {
            quick_sort_3ad394(p + i, n - i);
            n = j;
        }
    }
}

static void sort_edges_3ad2d0(Edge *p, int n) {
    quick_sort_3ad394(p, n);
    insertion_sort_3ad2f4(p, n);
}

using Contour = re::ReVector<Vec2>;
void point(Contour &out, Vec2 p, const FontBuilderLimits &lim) {
    if (out.size() >= lim.maximum_vertices)
        { __builtin_trap(); }
    out.push_back(p);
}
void quadratic(Contour &out, Vec2 a, Vec2 b, Vec2 c, float flat, int depth,
               const FontBuilderLimits &lim) {
    if (depth > 16)
        return;
    const Vec2 mid{((b.x + b.x) + a.x + c.x) * 0.25f, ((b.y + b.y) + a.y + c.y) * 0.25f};
    const Vec2 d{(a.x + c.x) * 0.5f - mid.x, (a.y + c.y) * 0.5f - mid.y};
    if (d.y * d.y + d.x * d.x > flat) {
        quadratic(out, a, (a + b) * 0.5f, mid, flat, depth + 1, lim);
        quadratic(out, mid, (b + c) * 0.5f, c, flat, depth + 1, lim);
    } else
        point(out, c, lim);
}
void cubic(Contour &out, Vec2 a, Vec2 b, Vec2 c, Vec2 d, float flat, int depth,
           const FontBuilderLimits &lim) {
    const auto ab = b - a, bc = c - b, cd = d - c, ad = d - a;
    const float length = sample_sqrt_2e3c88(ab.x * ab.x + ab.y * ab.y) +
                         sample_sqrt_2e3c88(bc.x * bc.x + bc.y * bc.y) +
                         sample_sqrt_2e3c88(cd.x * cd.x + cd.y * cd.y);
    const float chord = sample_sqrt_2e3c88(ad.x * ad.x + ad.y * ad.y);
    if (depth > 16)
        return;
    if (length * length - chord * chord > flat) {
        const auto abm = (a + b) * 0.5f, bcm = (b + c) * 0.5f, cdm = (c + d) * 0.5f;
        const auto left = (abm + bcm) * 0.5f, right = (bcm + cdm) * 0.5f,
                   mid = (left + right) * 0.5f;
        cubic(out, a, abm, left, mid, flat, depth + 1, lim);
        cubic(out, mid, right, cdm, d, flat, depth + 1, lim);
    } else
        point(out, d, lim);
}
re::ReVector<Contour> flatten(re::ReSpan<const FontBuilderVertex> vertices, float flat,
                             const FontBuilderLimits &lim) {
    re::ReVector<Contour> result;
    Vec2 current{};
    ReUSize total_points = 0;
    for (const auto &v : vertices) {
        const auto before = result.empty() ? 0 : result.back().size();
        const bool move = v.type == 1;
        const Vec2 endpoint{float(v.x), float(v.y)};
        if (v.type == 1) {
            result.emplace_back();
            point(result.back(), endpoint, lim);
        } else if (v.type >= 2 && v.type <= 4) {
            if (result.empty())
                { __builtin_trap(); }
            if (v.type == 2)
                point(result.back(), endpoint, lim);
            else if (v.type == 3)
                quadratic(result.back(), current, {float(v.cx), float(v.cy)}, endpoint, flat * flat,
                          0, lim);
            else {
                if (!v.second_control)
                    { __builtin_trap(); }
                cubic(result.back(), current, {float(v.cx), float(v.cy)},
                      {float((*v.second_control)[0]), float((*v.second_control)[1])}, endpoint,
                      flat * flat, 0, lim);
            }
        }
        if (v.type < 1 || v.type > 4)
            continue;
        const auto added = result.back().size() - (move ? 0 : before);
        if (added > lim.maximum_vertices - total_points)
            { __builtin_trap(); }
        total_points += added;
        current = endpoint;
    }
    return result;
}
void raster(Snapshot &image, Address pixels, int width, int height, int stride,
            re::ReSpan<const FontBuilderVertex> vertices, float sx, float sy, int offx, int offy,
            const FontBuilderLimits &lim) {
    const float minimum = sy < sx ? sy : sx;
    const auto contours = flatten(vertices, re::re_bit_cast<float>(0x3eb33333u) / minimum, lim);
    if (contours.empty())
        return;
    re::ReVector<Edge> edges;
    for (const auto &contour : contours) {
        if (contour.empty())
            continue;
        ReUSize j = contour.size() - 1;
        for (ReUSize k = 0; k < contour.size(); j = k++) {
            if (contour[j].y == contour[k].y)
                continue;
            auto a = k, b = j;
            bool invert = false;
            if (contour[j].y > contour[k].y) {
                invert = true;
                a = j;
                b = k;
            }
            if (edges.size() >= lim.maximum_vertices)
                { __builtin_trap(); }
            edges.push_back({contour[a].x * sx, contour[a].y * (-sy), contour[b].x * sx,
                             contour[b].y * (-sy), invert});
        }
    }
    sort_edges_3ad2d0(edges.data(), int(edges.size()));
    re::ReVector<Active> storage;
    storage.reserve(edges.size());
    Active *active = nullptr;
    ReUSize cursor = 0;
    re::ReVector<float> scan(ReUSize(width) * 2 + 1);
    for (int row = 0; row < height; ++row) {
        const float top = float(add(offy, row)) + 0.0f, bottom = float(add(offy, row)) + 1.0f;
        re::re_fill(scan.begin(), scan.end(), 0);
        auto step = &active;
        while (*step) {
            if ((*step)->ey <= top)
                *step = (*step)->next;
            else
                step = &(*step)->next;
        }
        while (cursor < edges.size() && edges[cursor].y0 <= bottom) {
            const auto &e = edges[cursor++];
            if (e.y0 == e.y1)
                continue;
            const float dx = (e.x1 - e.x0) / (e.y1 - e.y0);
            const float x = e.x0 + (top - e.y0) * dx - float(offx);
            storage.push_back(
                {active, x, dx, dx != 0 ? 1 / dx : 0, e.invert ? 1.f : -1.f, e.y0, e.y1});
            active = &storage.back();
            if (row == 0 && offy != 0 && active->ey < top)
                active->ey = top;
        }
        if (active)
            fill_3ab6e0(scan.data(), scan.data() + width + 1, width, active, top);
        float sum = 0;
        for (int x = 0; x < width; ++x) {
            sum += scan[ReUSize(width + x)];
            const float value = scan[ReUSize(x)] + sum;
            const float absolute =
                re::re_bit_cast<float>(re::re_bit_cast<ReU32>(value) & 0x7fffffffu);
            auto alpha = cvtt(absolute * 255 + 0.5f);
            if (alpha > 255)
                alpha = 255;
            const auto offset =
                integer(ReU32(row) * ReU32(stride) + ReU32(x));
            write(image, pixels + ReU64(ReI64(offset)), ReU8(alpha),
                  0x3ac7b0);
        }
        for (auto *z = active; z; z = z->next)
            z->fx += z->fdx;
    }
}
} // namespace
void font_builder_bitmap_3ae788(Snapshot &image, const FontBuilderInfo &info, Address pixels,
                                int width, int height, int stride, float sx, float sy, int glyph,
                                const FontBuilderLimits &lim) {
    const auto shape = font_builder_shape_3aa6cc(image, info, glyph, lim);
    const auto box = font_builder_bitmap_box_3ae308(image, info, glyph, sx, sy);
    if (width && height) {
        if (width < 0 || height < 0 ||
            ReU64(width) * ReU64(height) > lim.maximum_pixels)
            { __builtin_trap(); }
        raster(image, pixels, width, height, stride, shape, sx, sy, box.x0, box.y0, lim);
    }
}
void font_builder_filter(Snapshot &image, Address pixels, int width, int height, int stride,
                         ReU32 kernel, bool vertical, const FontBuilderLimits &lim) {
    if (kernel == 0 || kernel > 8)
        __builtin_trap();
    const int outer = vertical ? width : height, inner = vertical ? height : width;
    const int safe = add(inner, -int(kernel));
    if (outer <= 0)
        return;
    if (inner < 0 || ReU64(outer) * ReU64(inner) > lim.maximum_pixels)
        { __builtin_trap(); }
    re::ReArray<ReU8, 8> buffer{};
    for (int j = 0; j < outer; ++j) {
        re::re_fill_n(buffer.begin(), kernel, 0);
        ReU32 total = 0;
        for (int i = 0; i < inner; ++i) {
            const auto offset =
                vertical ? integer(ReU32(i) * ReU32(stride) + ReU32(j))
                         : integer(ReU32(j) * ReU32(stride) + ReU32(i));
            const auto p = pixels + ReU64(ReI64(offset));
            if (i <= safe) {
                const auto old = read<ReU8>(image, p, vertical ? 0x3adb1c : 0x3abdc8);
                total += ReU32(old) - buffer[ReUSize(i) & 7];
                buffer[(ReU32(i) + kernel) & 7] = old;
            } else
                total -= buffer[ReUSize(i) & 7];
            write(image, p, ReU8(total / kernel), vertical ? 0x3adb1c : 0x3abdc8);
        }
    }
}
} // namespace rust_internal_re
