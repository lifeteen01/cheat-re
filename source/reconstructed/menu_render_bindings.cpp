#include "menu_render_bindings.hpp"
namespace rust_internal_re {
void menu_shape_arrow_3a7400(const Snapshot &image, DrawCoreStore &store,
                             const DrawShapesResources &resources, Address key, Vec2 position,
                             ReU32 color, ReI32 direction, float scale) {
    const auto shared_key = image.read<Address>(key + 0x38);
    if (!shared_key)
        { __builtin_trap(); }
    const auto font = image.read<float>(*shared_key + 0x10);
    if (!font)
        { __builtin_trap(); }
    const float half = *font * 0.5f;
    const Vec2 center = position + Vec2{half, half * scale};
    float radius = (*font * re::re_bit_cast<float>(0x3ecccccdu)) * scale;
    Vec2 a{}, b{}, c{};
    constexpr float positive = re::re_bit_cast<float>(0x3f5db22du),
                    negative = re::re_bit_cast<float>(0xbf5db22du);
    if (direction == 2 || direction == 3) {
        if (direction == 2)
            radius = re::re_bit_cast<float>(re::re_bit_cast<ReU32>(radius) ^ 0x80000000u);
        a = Vec2{0, 0.75f} * radius;
        b = Vec2{negative, -0.75f} * radius;
        c = Vec2{positive, -0.75f} * radius;
    } else if (direction == 0 || direction == 1) {
        if (direction == 0)
            radius = re::re_bit_cast<float>(re::re_bit_cast<ReU32>(radius) ^ 0x80000000u);
        a = Vec2{0.75f, 0} * radius;
        b = Vec2{-0.75f, positive} * radius;
        c = Vec2{-0.75f, negative} * radius;
    }
    // [C] The shared font read above precedes the triangle's alpha early return.
    if (!(color & 0xff000000u))
        return;
    const auto list = store.lists.find(key);
    if (!list)
        { __builtin_trap(); }
    const auto shared = resources.find(key);
    if (!shared)
        { __builtin_trap(); }
    draw_shapes_triangle_3a3338(**list, **shared, center + a, center + b, center + c,
                                color);
}
MenuControlsApi bind_menu_shape_primitives(const Snapshot &image, DrawCoreStore &store,
                                           const DrawShapesResources &resources,
                                           MenuControlsApi api) {
    api = bind_menu_shape_primitives(store, resources, re::re_move(api));
    api.arrow_3a7400 = [&image, &store, &resources](Address key, Vec2 position, ReU32 color,
                                                    ReI32 direction, float scale) {
        menu_shape_arrow_3a7400(image, store, resources, key, position, color, direction, scale);
    };
    return api;
}
MenuControlsApi bind_menu_shape_primitives(DrawCoreStore &store,
                                           const DrawShapesResources &resources,
                                           MenuControlsApi api) {
    api.rectangle = [&store, &resources](const MenuControlRectangle &q) {
        const re::ReArray<UnityValue, 7> args{q.draw_list, q.minimum,
                                             q.maximum,   re::re_bit_cast<ReI32>(q.color),
                                             q.rounding,  re::re_bit_cast<ReI32>(q.flags),
                                             q.thickness};
        (void)draw_shapes_frame_role(store, resources, q.filled ? 0x3a1244 : 0x3a1148, args);
    };
    api.line = [&store, &resources](const MenuControlLine &q) {
        const re::ReArray<UnityValue, 5> args{q.draw_list, q.begin, q.end,
                                             re::re_bit_cast<ReI32>(q.color), q.thickness};
        (void)draw_shapes_frame_role(store, resources, 0x3a01f4, args);
    };
    const auto prior_circle = api.circle;
    api.circle = [&store, &resources, prior_circle](const MenuControlCircle &q) {
        // [C] The unfilled role is3a1410 shadow geometry, not39f7ac outline.
        if (!q.filled) {
            if (!prior_circle)
                __builtin_trap();
            prior_circle(q);
            return;
        }
        const re::ReArray<UnityValue, 5> args{q.draw_list, q.center, q.radius,
                                             re::re_bit_cast<ReI32>(q.color), q.segments};
        (void)draw_shapes_frame_role(store, resources, 0x39f874, args);
    };
    return api;
}
void check_menu_render_bindings() {
    DrawCoreStore store;
    auto &list = store.lists[10];
    list.header.clip = {0, 0, 100, 100};
    list.fringe_scale = 1;
    draw_core_add_command_39fd18(list);
    DrawShapesShared shared;
    shared.white_uv = {0.25f, 0.75f};
    DrawShapesResources resources{{10, shared}};
    auto api = bind_menu_shape_primitives(store, resources);
    api.rectangle({10, {1, 2}, {3, 4}, 0xff112233, 0, 1, 0, true});
    api.line({10, {0, 0}, {10, 0}, 0xffffffff, 1});
    api.circle({10, {10, 10}, 3, 0, {}, 0, 0xffffffff, 4, true});
    if (list.vertices.size != 12 || list.indices.size != 18)
        { /* FREESTANDING_TODO: was throw runtime_error("menu primitive geometry composition") */ }
    bool stopped = false;
    {
        api.circle({10, {}, {}, 10, {}, 0, 0xffffffff, 12, false});
    }
    if (!stopped || list.vertices.size != 12)
        { __builtin_trap(); }
    // [FREESTANDING] image write operations require hosted I/O
#if __STDC_HOSTED__
    if (!image.write<Address>(10 + 0x38, 0x400) || !image.write<float>(0x410, 10))
        { __builtin_trap(); }
#endif
    const auto xy = [](const DrawVertex &v) {
        Vec2 p;
        re::re_memcpy(&p, v.data(), 8);
        return p;
    };
    for (ReI32 direction = 0; direction < 4; ++direction) {
        const auto first = list.vertices.size;
        api.arrow_3a7400(10, {0, 0}, 0xffffffff, direction, 1);
        const auto tip = xy(list.vertices.at(first));
        const re::ReArray<Vec2, 4> expected{{{2, 5}, {8, 5}, {5, 2}, {5, 8}}};
        if (tip.x != expected[ReUSize(direction)].x ||
            tip.y != expected[ReUSize(direction)].y || list.vertices.size != first + 3)
            { /* FREESTANDING_TODO: was throw runtime_error("arrow native direction triangle and copied font size") */ }
    }
    const auto first = list.vertices.size;
    api.arrow_3a7400(10, {0, 0}, 0xffffffff, 7, 2);
    for (int i = 0; i < 3; ++i) {
        const auto p = xy(list.vertices.at(first + i));
        if (p.x != 5 || p.y != 10)
            { /* FREESTANDING_TODO: was throw runtime_error("invalid arrow direction keeps zero local points") */ }
    }
    bool missing = false;
    {
        menu_shape_arrow_3a7400(Snapshot(0, {}), store, resources, 10, {}, 0, 0, 1);
    }
    if (!missing)
        { /* FREESTANDING_TODO: was throw runtime_error("transparent arrow still reads shared font state first") */ }
}
} // namespace rust_internal_re
