#include "frame_preview_detail.hpp"
#include "frame_dependencies_ui_setup.hpp"

namespace rust_internal_re {
using namespace frame_preview_detail;
FrameDependencyResult frame_preview_365038(FramePreviewState &preview, FrameMenuState &state,
                                           const FrameMainMenuApi &api) {
    return protect([&] {
        (void)get<bool>(api, 0x38cfa4, {re::ReString("preview"), Address(0), ReI32(47)});
        call(api, 0x39bc6c, {Vec2{300, 580}, ReI32(0)});
        const auto draw = get<Address>(api, 0x392ecc);
        const float alpha = read<float>(api, api.context + 0x37d0, 0x3650c3);
        const float rounding = read<float>(api, api.context + 0x37e0, 0x3650cf);
        const auto bg = packed(api, frame_color_2db318(17, 19, 16, truncate(alpha * 255.0f)));
        const float right = position(api).x + get<float>(api, 0x392f34);
        const float bottom = position(api).y + get<float>(api, 0x392ee4);
        const float left = position(api).x;
        const float top = position(api).y + 57.0f;
        rect(api, draw, {left, top}, {right, bottom}, bg, rounding, 0xc0);
        const auto icon_draw = get<Address>(api, 0x392ecc);
        const auto icon_color = color(api, 0);
        const float icon_x = position(api).x + 20.0f;
        const float icon_y = position(api).y + 20.0f;
        const float icon_size = number(state, 0x248ee8) * 16.0f;
        auto &bucket = state.font_buckets[2];
        Address font{};
        if (const auto found = bucket.fonts.find(16.0f); bool(found))
            font = **found;
        else if (re::re_find(bucket.requested.begin(), bucket.requested.end(), 16.0f) ==
                 bucket.requested.end())
            bucket.requested.push_back(16.0f);
        call(api, 0x3a31f8,
             {icon_draw, font, icon_size, Vec2{icon_x, icon_y}, icon_color, re::ReString("F"),
              Address(0), 0.0f, Address(0)});
        const auto title_draw = get<Address>(api, 0x392ecc);
        const auto title_color = color(api, 1);
        const float title_x = position(api).x + 50.0f;
        const float title_y = position(api).y + 21.0f;
        text(api, title_draw, {title_x, title_y}, title_color, "ESP PREVIEW");
        const Vec2 shape_center{150.0f - number(state, 0x248f20) * .5f,
                                number(state, 0x248f0c) * .5f - number(state, 0x248f24) * .5f};
        store(state, 0x248f18, shape_center.x);
        store(state, 0x248f1c, shape_center.y);
        const float panel_top = get<float>(api, 0x392ee4) - 65.0f;
        const auto window_size = get<Vec2>(api, 0x392f14);
        preview.regions_3fc130[0] = {0, panel_top, window_size.x, window_size.y};
        const auto c = center(state);
        const auto size = pair(state, 0x248f20);
        const float right_x = c.x + size.x;
        const float bottom_y = c.y + size.y;
        preview.regions_3fc130[3] = {c.x, c.y - 50.0f, right_x, c.y};
        preview.regions_3fc130[2] = {right_x, c.y, right_x + 50.0f, bottom_y};
        preview.regions_3fc130[4] = {c.x, bottom_y, right_x, bottom_y + 50.0f};
        preview.regions_3fc130[1] = {c.x - 50.0f, c.y, c.x, bottom_y};
        auto result = frame_preview_corners_37d7b0(state, api);
        if (result.status != UnityStatus::complete)
            stop(result.status, result.stopped_at);
        result = frame_preview_skeleton_37db8c(state, api);
        if (result.status != UnityStatus::complete)
            stop(result.status, result.stopped_at);
        state.values[0x248f10] = 5;
        for (ReUSize i = 0; i < preview.regions_3fc130.size(); ++i) {
            const auto region = preview.regions_3fc130[i];
            const Vec2 maximum{position(api).x + region.z, position(api).y + region.w};
            const Vec2 minimum{position(api).x + region.x, position(api).y + region.y};
            const bool hovered = get<bool>(api, 0x3944ac, {minimum, maximum, true});
            preview.hovered_3fc120[i] = hovered;
            if (hovered)
                state.values[0x248f10] = static_cast<ReU32>(i); // [C] Last overlap wins.
        }
        const auto drag_draw = get<Address>(api, 0x392ecc);
        const auto drag_color = color(api, 2);
        const auto region = preview.regions_3fc130[0];
        const float drag_x = region.x + position(api).x + 20.0f;
        const float drag_y = region.y + position(api).y;
        text(api, drag_draw, {drag_x, drag_y}, drag_color, "DRAG & DROP");
        preview.counters_3e5cc8.fill(0); // [C]2edae8 end is+18: SIX counters.
        call(api, 0x39b3b8, {Vec2{region.x + 20.0f, region.y + 25.0f}});
        call(api, 0x38ec90);
        for (ReUSize i = 0; i < 6; ++i) {
            const auto tint = unpack(color(api, 1));
            const auto drawn = frame_preview_widget_37df58(preview, i, state, api, tint);
            if (drawn.status != UnityStatus::complete)
                stop(drawn.status, drawn.stopped_at);
        }
        call(api, 0x390efc);
        call(api, 0x390994); // [C]365810 tail jump, not an omitted exit.
    });
}
FrameMainMenuApi bind_frame_preview(FramePreviewState &state, FrameMainMenuApi api) {
    const auto supplied = api;
    api.preview_365038 = [&state, supplied](FrameMenuState &config, FrameMainMenuState &) {
        return frame_preview_365038(state, config, supplied);
    };
    return api;
}
} // namespace rust_internal_re
