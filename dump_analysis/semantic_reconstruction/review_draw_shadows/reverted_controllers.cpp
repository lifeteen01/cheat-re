#include "draw_shadows_internal.hpp"
namespace rust_internal_re {
using namespace shadow_detail;
namespace {
template <class T> T copied(const Snapshot &image, Address address, Rva site) {
    const auto value = image.read<T>(address);
    if (!value)
        throw RendererMissing(site, 0, "copied shadow shared/atlas data absent");
    return *value;
}
float ceil_native(float x) {
    auto raw = std::bit_cast<std::uint32_t>(x);
    const auto absolute = raw & 0x7fffffffu;
    if (absolute >= 0x4b800000u) {
        if (absolute > 0x7f800000u)
            raw |= 0x400000u;
        return bits(raw);
    }
    if (absolute < 0x3f800000u) {
        if (!absolute)
            return x;
        return (raw & 0x80000000u) ? bits(0x80000000u) : 1;
    }
    const auto shift = 150u - (raw >> 23 & 0xffu);
    const auto truncated = raw & (0xffffffffu << shift);
    return !(raw & 0x80000000u) && raw != truncated ? bits(truncated) + 1 : bits(truncated);
}
} // namespace
DrawShadowsShared copy_draw_shadows_shared(const Snapshot &image, Address address) {
    DrawShadowsShared result;
    const auto table = copied<Address>(image, address + 0x218, 0x3a1666);
    for (std::size_t i = 0; i < result.uv.size(); ++i)
        result.uv[i] = copied<std::array<float, 4>>(image, table + i * 16, 0x3a1680);
    const auto font = copied<Address>(image, address + 8, 0x3a166d);
    const auto atlas = copied<Address>(image, font + 0x40, 0x3a1679);
    result.atlas_width = copied<std::int32_t>(image, atlas + 0x40, 0x3a1688);
    result.atlas_height = copied<std::int32_t>(image, atlas + 0x44, 0x3a168e);
    result.circle_zero_radius_count = image.read<std::uint8_t>(address + 0x1c3);
    return result;
}
namespace {
using ShapeProvider = std::function<const DrawShapesShared &(Rva)>;
void rectangle(DrawCoreList &d, const ShapeProvider &shapes,
               const std::function<const DrawShadowsShared &()> &resource, Vec2 a, Vec2 b,
               std::uint32_t color, float thickness, Vec2 offset, std::int32_t flags,
               float rounding) {
    if (!(color & 0xff000000u))
        return;
    const bool cutout = (flags & 0x200) != 0;
    const bool rounded = rounding > 0 && (flags & 0x1f0) != 0x100;
    std::vector<Vec2> hole;
    if (rounded && cutout) {
        draw_shapes_path_rect_lazy_3a6b78(
            d, [&]() -> const DrawShapesShared & { return shapes(0x3a8f37); }, a, b, rounding,
            flags);
        hole.reserve(std::size_t(d.path.size));
        for (int i = 0; i < d.path.size; ++i)
            hole.push_back(d.path.at(i));
        d.path.resize_existing(0);
    } else if (!cutout)
        draw_core_reserve_3a719c(d, 54, 36);
    // [C] X is the outer loop and Y the inner loop; texture cell index is x+3*y.
    for (int x = 0; x < 3; ++x) {
        for (int y = 0; y < 3; ++y) {
            const auto &uv = resource().uv[std::size_t(x + y * 3)];
            Vec2 minimum{}, maximum{};
            if (x == 0) {
                minimum.x = a.x - thickness;
                maximum.x = a.x;
            } else if (x == 1) {
                minimum.x = a.x;
                maximum.x = b.x;
            } else {
                minimum.x = b.x;
                maximum.x = b.x + thickness;
            }
            if (y == 0) {
                minimum.y = a.y - thickness;
                maximum.y = a.y;
            } else if (y == 1) {
                minimum.y = a.y;
                maximum.y = b.y;
            } else {
                minimum.y = b.y;
                maximum.y = b.y + thickness;
            }
            minimum = minimum + offset;
            maximum = maximum + offset;
            const Vec2 uv_a{uv[0], uv[1]}, uv_b{uv[2], uv[3]};
            if (!cutout)
                draw_core_rectangle_3a7020(d, minimum, maximum, uv_a, uv_b, color);
            else if (rounded)
                draw_shadows_subtract_polygon_3a2374(d, minimum, maximum, uv_a, uv_b, hole, color);
            else
                draw_shadows_subtract_rect_3a2b34(d, minimum, maximum, uv_a, uv_b, a, b, color);
        }
    }
}
void circle_path(DrawCoreList &d, const ShapeProvider &shapes, std::optional<std::uint8_t> prefix,
                 Vec2 center, float radius, std::int32_t count) {
    if (count <= 0) {
        const auto index = world_cvttss2si(radius);
        const auto previous = std::bit_cast<std::int32_t>(std::uint32_t(index) - 1);
        if (previous < 64) {
            if (index == 0 && prefix)
                count = *prefix;
            else if (index >= 1 && index <= 64)
                count = shapes(0x3a143b).circle_segments[std::size_t(index - 1)];
            else
                throw RendererMissing(0x3a144e, 0,
                                      "native shadow segment read outside copied count table");
        } else {
            const auto error = minss(shapes(0x3a143b).circle_error, radius);
            const auto angle = draw_shapes_acos_3c852c(1 - error / radius);
            const auto recommendation = world_cvttss2si(ceil_native(bits(0x40490fdb) / angle));
            const auto incremented = std::bit_cast<std::int32_t>(std::uint32_t(recommendation) + 1);
            count = std::clamp((incremented / 2) * 2, 4, 512);
        }
    } else
        count = std::clamp(count, 3, 512);
    if (count == 12) {
        // [C]3a6b38/3a8eec append a center before any shared-data read for small radii.
        if (0.5f > radius)
            d.path.push(center);
        else
            draw_shapes_arc_fast_3a8eec(d, shapes(0x3a8f37), center, radius, 0, 44, 0);
    } else {
        const auto maximum = ((float(count) - 1) * bits(0x40c90fdb)) / float(count);
        const auto fixed_count = std::bit_cast<std::int32_t>(std::uint32_t(count) - 1);
        // [C]3a689d..3a68bb→3a6b03 call3a9110 without acquiring shared fields.
        if (fixed_count > 0 || 0.5f > radius)
            draw_shapes_arc_fixed_3a9110(d, center, radius, 0, maximum, fixed_count);
        else
            draw_shapes_arc_3a684c(d, shapes(0x3a68c0), center, radius, 0, maximum, fixed_count);
    }
}
void circle_finish(DrawCoreList &d, const DrawShadowsShared &shared, std::uint32_t color,
                   float thickness, Vec2 offset, std::int32_t flags) {
    std::vector<Vec2> path;
    path.reserve(std::size_t(d.path.size));
    for (int i = 0; i < d.path.size; ++i)
        path.push_back(d.path.at(i));
    draw_shadows_convex_3a1564(d, shared, path, color, thickness, offset, flags);
    d.path.resize_existing(0);
}
} // namespace
void draw_shadows_rect_3a2010(DrawCoreList &d, const DrawShapesShared &shapes,
                              const DrawShadowsShared &shared, Vec2 a, Vec2 b, std::uint32_t color,
                              float thickness, Vec2 offset, std::int32_t flags, float rounding) {
    rectangle(
        d, [&shapes](Rva) -> const DrawShapesShared & { return shapes; },
        [&shared]() -> const DrawShadowsShared & { return shared; }, a, b, color, thickness, offset,
        flags, rounding);
}
void draw_shadows_circle_3a1410(DrawCoreList &d, const DrawShapesShared &shapes,
                                const DrawShadowsShared &shared, Vec2 center, float radius,
                                std::uint32_t color, float thickness, Vec2 offset,
                                std::int32_t flags, std::int32_t count) {
    circle_path(
        d, [&shapes](Rva) -> const DrawShapesShared & { return shapes; },
        shared.circle_zero_radius_count, center, radius, count);
    circle_finish(d, shared, color, thickness, offset, flags);
}
MenuControlsApi bind_menu_shadows(DrawCoreStore &store, const DrawShapesResources &shapes,
                                  const DrawShadowsResources &shadows, MenuControlsApi api) {
    const auto previous_circle = api.circle;
    api.circle = [&store, &shapes, &shadows, previous_circle](const MenuControlCircle &q) {
        if (q.filled) {
            if (!previous_circle)
                throw RendererMissing(0x39f874, 0x39f874, "filled-circle geometry binder absent");
            previous_circle(q);
            return;
        }
        const auto list = store.lists.find(q.draw_list);
        const auto shape = shapes.find(q.draw_list);
        const auto shadow = shadows.find(q.draw_list);
        if (list == store.lists.end() || shape == shapes.end())
            throw RendererMissing(0x3a143b, 0, "copied shadow-circle geometry absent");
        const ShapeProvider require_shapes = [&](Rva site) -> const DrawShapesShared & {
            if (shape == shapes.end())
                throw RendererMissing(site, 0, "reached shadow-circle shared data absent");
            return shape->second;
        };
        circle_path(list->second, require_shapes,
                    shadow == shadows.end() ? std::nullopt
                                            : shadow->second.circle_zero_radius_count,
                    q.center, q.radius, q.segments);
        if (shadow == shadows.end())
            throw RendererMissing(0x3a1666, 0, "copied convex shadow atlas absent");
        circle_finish(list->second, shadow->second, q.color, q.shadow_size, q.offset,
                      std::bit_cast<std::int32_t>(q.flags));
    };
    api.glow_rectangle_3a2010 = [&store, &shapes, &shadows](const MenuControlGlowRectangle &q) {
        if (!(q.color & 0xff000000u))
            return;
        const auto list = store.lists.find(q.draw_list);
        const auto shape = shapes.find(q.draw_list);
        const auto shadow = shadows.find(q.draw_list);
        if (list == store.lists.end() || shape == shapes.end())
            throw RendererMissing(0x3a2010, 0, "copied rectangle shadow geometry absent");
        const ShapeProvider require_shapes = [&](Rva site) -> const DrawShapesShared & {
            if (shape == shapes.end())
                throw RendererMissing(site, 0, "reached rounded-shadow shared data absent");
            return shape->second;
        };
        rectangle(
            list->second, require_shapes,
            [&]() -> const DrawShadowsShared & {
                if (shadow == shadows.end())
                    throw RendererMissing(0x3a2129, 0, "copied rectangle shadow atlas absent");
                return shadow->second;
            },
            q.minimum, q.maximum, q.color, q.shadow_size, q.offset,
            std::bit_cast<std::int32_t>(q.flags), q.rounding);
    };
    return api;
}
} // namespace rust_internal_re
