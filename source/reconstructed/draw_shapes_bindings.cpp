#include "draw_shapes_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class T> T read(const Snapshot &s, Address p, Rva site) {
    const auto v = s.read<T>(p);
    if (!v)
        { __builtin_trap(); }
    return *v;
}
Address window(Snapshot &s, Address module) {
    const auto context = read<Address>(s, module + 0x405b28, 0x35d200);
    auto w = read<Address>(s, context + 0x3f08, 0x35d207);
    if (!s.write(w + 0xb8, ReU8(1)))
        { __builtin_trap(); }
    return read<Address>(s, context + 0x3f08, 0x35d215);
}
Address window_draw(const Snapshot &s, Address win, Rva site) {
    return read<Address>(s, win + 0x298, site);
}
DrawCoreList &list(DrawCoreStore &store, Address key) {
    auto i = store.lists.find(key);
    if (!i)
        { __builtin_trap(); }
    return **i;
}
const DrawShapesShared &shared(const DrawShapesResources &resources, Address key) {
    auto i = resources.find(key);
    if (!i)
        { __builtin_trap(); }
    return **i;
}
re::ReArray<float, 4> unpack(ReU32 c) {
    return {float(c & 255) / 255, float((c >> 8) & 255) / 255, float((c >> 16) & 255) / 255,
            float(c >> 24) / 255};
}
ReU32 style_color(const Snapshot &s, Address module, re::ReArray<float, 4> color) {
    const auto ctx = read<Address>(s, module + 0x405b28, 0x392268);
    color[3] *= read<float>(s, ctx + 0x37d0, 0x39227d);
    return font_text_color_2ef80c(color);
}
ReU32 wrapped_color(const Snapshot &s, Address module, ReU32 color) {
    return style_color(s, module, unpack(color));
}
template <class T> T arg(re::ReSpan<const UnityValue> values, ReUSize index, Rva role) {
    if (index >= values.size())
        { __builtin_trap(); }
    if (auto p = re::re_get_if<T>(&values[index]))
        return *p;
    { __builtin_trap(); }
}
ReU32 color_arg(re::ReSpan<const UnityValue> values, ReUSize index, Rva role) {
    return re::re_bit_cast<ReU32>(arg<ReI32>(values, index, role));
}
struct Route {
    Rva site, target;
};
Rva target(Rva site) {
    static constexpr Route routes[]{
        {0x2fc71b, 0x35c578}, {0x2fcbc9, 0x35c578}, {0x302a57, 0x35c25c}, {0x302ab8, 0x35c25c},
        {0x302b19, 0x35c25c}, {0x302b7a, 0x35c25c}, {0x302bdb, 0x35c25c}, {0x302c3c, 0x35c25c},
        {0x302c9d, 0x35c25c}, {0x302cfe, 0x35c25c}, {0x302d5f, 0x35c25c}, {0x302dc0, 0x35c25c},
        {0x302e21, 0x35c25c}, {0x302e82, 0x35c25c}, {0x305dec, 0x35b03c}, {0x305faf, 0x35c578},
        {0x3062c0, 0x3a1244}, {0x306316, 0x3a1148}, {0x30680a, 0x35c25c}, {0x306db2, 0x35b684},
        {0x306e61, 0x35b684}, {0x3099e9, 0x35af6c}, {0x309c3e, 0x35b03c}, {0x309cf2, 0x35c25c},
        {0x309d88, 0x35c25c}, {0x309e02, 0x35af6c}, {0x309e4a, 0x35af6c}, {0x309e8f, 0x35af6c},
        {0x309ed1, 0x35af6c}, {0x309f0a, 0x35af6c}, {0x309f42, 0x35b03c}, {0x30a1be, 0x35b03c},
        {0x30a7ba, 0x35b850}, {0x30ad9d, 0x35c30c}, {0x30b19b, 0x35bab8}, {0x30c47b, 0x35b0fc},
        {0x30c4b8, 0x35b0fc}, {0x30c4f8, 0x35bab8}, {0x30c539, 0x35bab8}, {0x30c582, 0x36232c},
        {0x30c5c7, 0x36232c}, {0x30c6e1, 0x36232c}, {0x30c655, 0x35b0fc}, {0x30c69a, 0x35bab8},
        {0x30c76a, 0x35b508}, {0x30c816, 0x35c938}, {0x30c8cb, 0x35ac38}, {0x30cd2b, 0x35c30c},
        {0x30d51c, 0x35a804}, {0x30d618, 0x35c25c}, {0x30db58, 0x35a804}, {0x30dc54, 0x35c25c},
        {0x30e250, 0x35a804}, {0x30e34c, 0x35c25c}, {0x30e8f2, 0x35a804}, {0x30e9ee, 0x35c25c},
        {0x30f00c, 0x35c25c}, {0x30f796, 0x35c25c}, {0x30f803, 0x35c25c}, {0x30f870, 0x35c25c},
        {0x30f8dd, 0x35c25c}, {0x30f94a, 0x35c25c}, {0x30f9b7, 0x35c25c}, {0x30fa24, 0x35c25c},
        {0x30fa91, 0x35c25c}, {0x30fafe, 0x35c25c}, {0x30fb6b, 0x35c25c}, {0x30fbd8, 0x35c25c},
        {0x30fc45, 0x35c25c}, {0x30fcb2, 0x35c25c}, {0x30fd1f, 0x35c25c}, {0x30fd8c, 0x35c25c},
        {0x30fdf9, 0x35c25c}, {0x30fe66, 0x35c25c}, {0x30fed3, 0x35c25c}, {0x310695, 0x35b684},
        {0x310e4c, 0x35c578}, {0x3112a1, 0x3a1244}, {0x3112e8, 0x3a1148}, {0x3114da, 0x3a1244},
        {0x31154d, 0x3a1244}, {0x3115bc, 0x3a1244}, {0x3117fc, 0x3a01f4}, {0x3119f8, 0x3a1244},
        {0x311a68, 0x3a1244}, {0x311acc, 0x3a1244}, {0x311f0c, 0x35b03c}, {0x311f94, 0x35c88c},
        {0x312250, 0x35b03c}, {0x31235c, 0x35c25c}, {0x313116, 0x35c25c}, {0x313297, 0x35c25c},
        {0x313303, 0x35c25c}, {0x313365, 0x35c25c}, {0x313a6e, 0x35c25c}, {0x313ad2, 0x35c25c},
        {0x313b3c, 0x35c25c}, {0x313ba6, 0x35c25c}, {0x313c10, 0x35c25c}, {0x313c7a, 0x35c25c},
        {0x313cde, 0x35c25c}, {0x313d48, 0x35c25c}, {0x313db2, 0x35c25c}, {0x313e16, 0x35c25c},
        {0x313e80, 0x35c25c}, {0x313eea, 0x35c25c}, {0x313f54, 0x35c25c}, {0x313fbe, 0x35c25c},
        {0x314022, 0x35c25c}, {0x31408c, 0x35c25c}, {0x3140f6, 0x35c25c}, {0x314160, 0x35c25c},
        {0x36450e, 0x35c738}, {0x36455b, 0x35c738}, {0x364620, 0x35c738}, {0x36466d, 0x35c738},
        {0x3646a0, 0x35b03c}, {0x364842, 0x35c25c}, {0x3648ab, 0x35c25c}, {0x364981, 0x35c738},
        {0x3649a2, 0x35c738}, {0x3649d2, 0x35c738}, {0x3649f3, 0x35c738}, {0x37b84e, 0x3a01f4},
        {0x37b8e2, 0x3a01f4}, {0x37b976, 0x3a01f4}, {0x37ba0a, 0x3a01f4}, {0x37ba9c, 0x3a01f4},
        {0x37bb2b, 0x3a01f4}, {0x37bbb9, 0x3a01f4}, {0x37bc47, 0x3a01f4},
    };
    for (const auto &route : routes)
        if (route.site == site)
            return route.target;
    return 0;
}
void float_rect(Snapshot &image, Address module, DrawCoreStore &store,
                const DrawShapesResources &resources, Vec2 p, Vec2 size, ReU32 color) {
    const auto win = window(image, module);
    if (0 > p.x || 0 > p.y || p.x > 3840 || p.y > 2160)
        return;
    const auto key = window_draw(image, win, 0x35c79a);
    const auto packed = wrapped_color(image, module, color);
    if (!(packed & 0xff000000u))
        return;
    draw_shapes_rect_filled_3a1244(list(store, key), shared(resources, key), p, p + size, packed, 0,
                                   0);
}
ReI32 add(ReI32 a, ReI32 b) {
    return re::re_bit_cast<ReI32>(ReU32(a) + ReU32(b));
}
ReU32 truncated_low32(float value) {
    ReI64 n = INT64_MIN;
    if (re::re_isfinite(value) && double(value) >= -9223372036854775808.0 &&
        double(value) < 9223372036854775808.0)
        n = ReI64(value);
    return ReU32(ReU64(n));
}
void bar(Snapshot &image, Address module, DrawCoreStore &store,
         const DrawShapesResources &resources, const WorldBarDraw &q) {
    const float quarter = q.maximum * 0.25f;
    ReU32 color = 0xff000000;
    if (quarter >= q.value)
        color = 0xff0000ff;
    else if (quarter + quarter >= q.value)
        color = 0xff00539e;
    else if (quarter * 3 >= q.value)
        color = 0xff00ffff;
    else if (q.maximum >= q.value)
        color = 0xff00ff00;
    float_rect(image, module, store, resources, {float(q.x), float(q.y)},
               {float(q.width), float(add(q.height, 1))}, 0xff000000);
    const float width = (float(add(q.width, -2)) * q.value) / q.maximum;
    float_rect(image, module, store, resources, {float(add(q.x, 1)), float(add(q.y, 1))},
               {float(truncated_low32(width)), float(add(q.height, -1))}, color);
}
} // namespace
re::ReOptional<UnityValue> draw_shapes_frame_role(DrawCoreStore &store,
                                                 const DrawShapesResources &resources, Rva role,
                                                 re::ReSpan<const UnityValue> args) {
    if (role != 0x3a01f4 && role != 0x3a1148 && role != 0x3a1244 && role != 0x3a12d8 &&
        role != 0x3a3338 && role != 0x39f7ac && role != 0x39f874)
        return {};
    // [C] Primitive alpha/radius gates precede any drawlist/shared-data reads.
    if (role == 0x3a12d8) {
        if (!((color_arg(args, 3, role) | color_arg(args, 4, role) | color_arg(args, 5, role) |
               color_arg(args, 6, role)) &
              0xff000000u))
            return UnityValue{re::ReMonostate{}};
    } else if (!(color_arg(args, role == 0x3a3338 ? 4 : 3, role) & 0xff000000u))
        return UnityValue{re::ReMonostate{}};
    if ((role == 0x39f7ac || role == 0x39f874) && 0.5f > arg<float>(args, 2, role))
        return UnityValue{re::ReMonostate{}};
    const auto key = arg<Address>(args, 0, role);
    auto &d = list(store, key);
    const auto &r = shared(resources, key);
    const auto a = arg<Vec2>(args, 1, role);
    if (role == 0x39f7ac || role == 0x39f874) {
        const auto radius = arg<float>(args, 2, role);
        const auto color = color_arg(args, 3, role);
        const auto count = arg<ReI32>(args, 4, role);
        if (role == 0x39f7ac)
            draw_shapes_circle_39f7ac(d, r, a, radius, color, count, arg<float>(args, 5, role));
        else
            draw_shapes_circle_filled_39f874(d, r, a, radius, color, count);
    } else {
        const auto b = arg<Vec2>(args, 2, role);
        if (role == 0x3a3338)
            draw_shapes_triangle_3a3338(d, r, a, b, arg<Vec2>(args, 3, role),
                                        color_arg(args, 4, role));
        else if (role == 0x3a12d8)
            draw_shapes_gradient_3a12d8(d, r, a, b,
                                        {color_arg(args, 3, role), color_arg(args, 4, role),
                                         color_arg(args, 5, role), color_arg(args, 6, role)});
        else {
            const auto color = color_arg(args, 3, role);
            if (role == 0x3a01f4)
                draw_shapes_line_3a01f4(d, r, a, b, color, arg<float>(args, 4, role));
            else if (role == 0x3a1244)
                draw_shapes_rect_filled_3a1244(d, r, a, b, color, arg<float>(args, 4, role),
                                               arg<ReI32>(args, 5, role));
            else
                draw_shapes_rect_3a1148(d, r, a, b, color, arg<float>(args, 4, role),
                                        arg<ReI32>(args, 5, role),
                                        arg<float>(args, 6, role));
        }
    }
    return UnityValue{re::ReMonostate{}};
}
UnityApi bind_draw_shapes_frame(DrawCoreStore &store, const DrawShapesResources &resources,
                                UnityApi fallback) {
    auto out = fallback;
    out.external = [&store, &resources, old = fallback.external](
                       Rva role, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (auto result = draw_shapes_frame_role(store, resources, role, args))
            return result;
        return old ? old(role, args) : re::re_nullopt;
    };
    return out;
}
void draw_shapes_glow_35c30c(Snapshot &image, Address module, DrawCoreStore &store,
                             const DrawShapesResources &resources, const WorldGlowLineDraw &q) {
    const auto win = window(image, module);
    const auto base = wrapped_color(image, module, font_text_color_2ef80c(q.color));
    const auto emit = [&](ReU32 c, float thickness, Rva site) {
        const auto key = window_draw(image, win, site);
        if (!(c & 0xff000000u))
            return;
        draw_shapes_line_3a01f4(list(store, key), shared(resources, key), q.from, q.to, c,
                                thickness);
    };
    if (q.argument30) {
        auto glow = unpack(font_text_color_2ef80c(q.glow));
        // [C] Native35c44f computes this otherwise dead color before testing radius.
        (void)style_color(image, module, glow);
        for (ReI32 i = 1; q.glow_radius >= float(i); ++i) {
            if (i > 1000000)
                __builtin_trap();
            glow[3] = re::re_bit_cast<float>(0x3e4ccccdu) / float(i);
            const auto color = style_color(image, module, glow);
            const float thickness = float(i) * q.smoothness + q.thickness;
            emit(color, thickness, 0x35c4ac);
        }
    }
    if (q.argument28)
        emit(style_color(image, module, {0, 0, 0, 1}), q.thickness + 1, 0x35c503);
    emit(base, q.thickness, 0x35c526);
}
void draw_shapes_custom_ring_35c578(Snapshot &image, Address module, DrawCoreStore &store,
                                    const DrawShapesResources &resources, Vec2 center, float radius,
                                    ReU32 color, bool direction, float yaw,
                                    const DrawShapesMath &math) {
    const auto win = window(image, module);
    const auto initial = window_draw(image, win, 0x35c5ab);
    const auto flags = list(store, initial).flags;
    list(store, initial).flags = (flags & ~2u) | 5u;
    const auto f = [](ReU32 bits) { return re::re_bit_cast<float>(bits); };
    const auto filled_key = window_draw(image, win, 0x35c5cc);
    const float filled_radius = f(0x3f5e147b) * radius;
    if ((color & 0xff000000u) && !(0.5f > filled_radius))
        draw_shapes_circle_filled_39f874(list(store, filled_key), shared(resources, filled_key),
                                         center, filled_radius, color, 0);
    const auto outline_key = window_draw(image, win, 0x35c60d);
    const float thickness = (f(0x3f7c28f6) - f(0x3f400000)) * radius;
    const float outline_radius = ((f(0x3f400000) + f(0x3f7c28f6)) * radius) * 0.5f;
    if (!(0.5f > outline_radius))
        draw_shapes_circle_39f7ac(list(store, outline_key), shared(resources, outline_key), center,
                                  outline_radius, 0xff000000, 0, thickness);
    if (direction) {
        // [C]3622c0→320cd0 uses repeated degree additions, preserving360 and NaNs.
        float angle = f(0x43430000) - yaw;
        ReUSize steps = 0;
        const auto step = [&](float delta, Rva site) {
            if (steps++ >= 1000000)
                { __builtin_trap(); }
            const float next = angle + delta;
            if (next == angle)
                { __builtin_trap(); }
            angle = next;
        };
        while (angle > 360)
            step(-360, 0x320cda);
        while (0 > angle)
            step(360, 0x320cec);
        const float radians = angle * f(0x3c8efa35);
        if (!math.sin_2e0198)
            __builtin_trap();
        const float sine = re::re_bit_cast<float>(
            re::re_bit_cast<ReU32>(math.sin_2e0198(radians)) ^ 0x80000000u);
        if (!math.cos_2dff68)
            __builtin_trap();
        const float cosine = math.cos_2dff68(radians);
        // [C]35d4c8 scales+adds each point before35aa88 subtracts center again.
        const auto transform = [&](Vec2 point) {
            const Vec2 scaled{point.x * radius + center.x, point.y * radius + center.y};
            const float x = scaled.x - center.x, y = scaled.y - center.y;
            return Vec2{(cosine * x - sine * y) + center.x, (cosine * y + sine * x) + center.y};
        };
        const re::ReArray<Vec2, 3> points{transform({f(0xbea45a1d), f(0xbddb22d1)}),
                                         transform({f(0xbd1374bc), f(0x3ea45a1d)}),
                                         transform({f(0x3ec9374c), f(0x3ddb22d1)})};
        const float marker = f(0x3d8f5c29) * radius;
        const float marker_thickness = 2 > marker ? 2 : marker; // literal MAXSS source on unordered
        const auto key = window_draw(image, win, 0x35c6da);
        draw_shapes_polyline_3a0294(list(store, key), shared(resources, key), points, 0xff000000, 0,
                                    marker_thickness);
    }
    // [C] No exception cleanup: a missing reached effect retains modified flags.
    list(store, window_draw(image, win, 0x35c709)).flags = flags;
}
void draw_shapes_world(Snapshot &image, Address module, DrawCoreStore &store,
                       const DrawShapesResources &resources, const WorldDrawCommand &command,
                       const re::ReFunction<void(const WorldDrawCommand &)> &font_image,
                       const re::ReFunction<Address(Rva)> &raw_draw_list,
                       const DrawShapesMath &math) {
    re::re_visit(
        [&](const auto &q) {
            using T = re::re_decay_t<decltype(q)>;
            if constexpr (re::re_is_same_v<T, WorldTextDraw> || re::re_is_same_v<T, WorldIconDraw> ||
                          re::re_is_same_v<T, WorldImageDraw>) {
                if (!font_image)
                    __builtin_trap();
                font_image(command);
            } else {
                const auto role = target(q.site);
                if (!role)
                    { __builtin_trap(); }
                if constexpr (re::re_is_same_v<T, WorldFloatRectangleDraw>) {
                    if (role != 0x35c738)
                        { __builtin_trap(); }
                    float_rect(image, module, store, resources, q.position, q.size,
                               font_text_color_2ef80c(q.color));
                } else if constexpr (re::re_is_same_v<T, WorldBarDraw>) {
                    if (role != 0x35b684)
                        { __builtin_trap(); }
                    bar(image, module, store, resources, q);
                } else if constexpr (re::re_is_same_v<T, WorldGlowLineDraw>) {
                    if (role != 0x35c30c)
                        { __builtin_trap(); }
                    draw_shapes_glow_35c30c(image, module, store, resources, q);
                } else if constexpr (re::re_is_same_v<T, WorldDirectionMarkerDraw>) {
                    if (role != 0x35c578)
                        { __builtin_trap(); }
                    draw_shapes_custom_ring_35c578(image, module, store, resources, q.position,
                                                   q.radius, font_text_color_2ef80c(q.color),
                                                   q.direction, q.yaw, math);
                } else if constexpr (re::re_is_same_v<T, WorldLineDraw> ||
                                     re::re_is_same_v<T, WorldCircleDraw> ||
                                     re::re_is_same_v<T, WorldTriangleDraw> ||
                                     re::re_is_same_v<T, WorldPolygonDraw> ||
                                     re::re_is_same_v<T, WorldRectangleDraw>) {
                    if (role == 0x35c578)
                        __builtin_trap();
                    const auto raw_color = [&]() {
                        if constexpr (re::re_is_same_v<T, WorldRectangleDraw>)
                            return q.color;
                        else
                            return font_text_color_2ef80c(q.color);
                    }();
                    const bool raw_role = role == 0x3a01f4 || role == 0x3a1148 || role == 0x3a1244;
                    if (raw_role && !(raw_color & 0xff000000u))
                        return;
                    Address key{};
                    if (role == 0x3a01f4 || role == 0x3a1148 || role == 0x3a1244) {
                        if (q.draw_list)
                            key = *q.draw_list;
                        else {
                            if (!raw_draw_list)
                                __builtin_trap();
                            key = raw_draw_list(q.site);
                        }
                    } else
                        key = window_draw(image, window(image, module), q.site);
                    const auto final_color =
                        raw_role ? raw_color : wrapped_color(image, module, raw_color);
                    if (!(final_color & 0xff000000u))
                        return;
                    if constexpr (re::re_is_same_v<T, WorldCircleDraw>) {
                        if (0.5f > q.radius)
                            return;
                    }
                    if constexpr (re::re_is_same_v<T, WorldPolygonDraw>) {
                        if (world_cvttss2si(q.count_argument) < 3)
                            return;
                    }
                    auto &d = list(store, key);
                    const auto &r = shared(resources, key);
                    if constexpr (re::re_is_same_v<T, WorldRectangleDraw>) {
                        if (role == 0x3a1244)
                            draw_shapes_rect_filled_3a1244(d, r, q.min, q.max, q.color, q.rounding,
                                                           0);
                        else if (role == 0x3a1148)
                            draw_shapes_rect_3a1148(d, r, q.min, q.max, q.color, q.rounding, 0,
                                                    q.thickness);
                        else
                            { __builtin_trap(); }
                    } else {
                        const auto color = final_color;
                        if constexpr (re::re_is_same_v<T, WorldLineDraw>) {
                            if (role != 0x3a01f4 && role != 0x35c25c)
                                { __builtin_trap(); }
                            draw_shapes_line_3a01f4(d, r, q.from, q.to, color, q.thickness);
                        } else if constexpr (re::re_is_same_v<T, WorldCircleDraw>) {
                            if (role == 0x35af6c)
                                draw_shapes_circle_39f7ac(d, r, q.position, q.radius, color, 0,
                                                          q.thickness);
                            else if (role == 0x35b03c)
                                draw_shapes_circle_filled_39f874(d, r, q.position, q.radius, color,
                                                                 0);
                            else
                                { __builtin_trap(); }
                        } else if constexpr (re::re_is_same_v<T, WorldTriangleDraw>) {
                            if (role != 0x35c88c)
                                { __builtin_trap(); }
                            draw_shapes_triangle_3a3338(d, r, q.first, q.second, q.third, color);
                        } else if constexpr (re::re_is_same_v<T, WorldPolygonDraw>) {
                            if (role != 0x35a804)
                                { __builtin_trap(); }
                            const auto count = world_cvttss2si(q.count_argument);
                            if (count < 0 || ReUSize(count) > q.points.size())
                                __builtin_trap();
                            draw_shapes_convex_39f928(
                                d, r, re::ReSpan<const Vec2>(q.points).subspan(0, ReUSize(count)),
                                color);
                        }
                    }
                } else
                    __builtin_trap();
            }
        },
        command);
}
} // namespace rust_internal_re
