#include "frame_preview_detail.hpp"

namespace rust_internal_re {
namespace frame_preview_detail {
void preview_palette(FramePreviewState &state, RendererWidget &widget, FrameMenuState &config,
                     const FrameMainMenuApi &api) {
    const auto window = get<Address>(api, 0x35d200);
    const auto cursor = read<Vec2>(api, window + 0x100, 0x37d3db);
    const auto extent = current_measure(api, widget.key);
    const auto end = add(cursor, extent);
    const ClipRect bounds{cursor.x, cursor.y, end.x, end.y};
    call(api, 0x394b40, {extent, -1.0f});
    (void)get<bool>(api, 0x3948dc, {bounds, ReI32(0), Address(0), ReI32(0)});
    auto &animation = state.palette_402d70[menu_controls_hash_39334c(widget.key, 0x456)];
    const bool hovered = hover(api, bounds);
    animation.hover =
        frame_interpolate_33565c(animation.hover, hovered ? 1.0f : 0.0f, 14.0f * delta(api));
    const auto idle = unpack(color(api, 1));
    const auto active = unpack(color(api, 2));
    const ClipRect blended{frame_interpolate_33565c(active.x, idle.x, animation.hover),
                           frame_interpolate_33565c(active.y, idle.y, animation.hover),
                           frame_interpolate_33565c(active.z, idle.z, animation.hover),
                           frame_interpolate_33565c(active.w, idle.w, animation.hover)};
    animation.color = unpack(packed(api, blended)); // [C]3795a4 quantizes each update.
    if (hover(api, bounds) && get<bool>(api, 0x3943e4, {ReI32(0), ReI32(0)}))
        widget.byte_2c = 1;
    if (widget.byte_2c) {
        const auto background = get<Address>(api, 0x3925a4);
        const auto rounding = read<float>(api, api.context + 0x3814, 0x37d578);
        const auto bg = color(api, 8, .5f);
        const auto half_extent = current_measure(api, widget.key);
        const auto io = get<Address>(api, 0x3926ac);
        const auto mouse = read<Vec2>(api, io + 0xe00, 0x37d5d2);
        const auto padding = read<Vec2>(api, api.context + 0x380c, 0x37d5e1);
        const Vec2 half{half_extent.x / 2, half_extent.y / 2};
        rect(api, background, sub(sub(mouse, half), padding), add(add(mouse, half), padding), bg,
             rounding);
        const auto overlay = get<Address>(api, 0x3925a4);
        const bool valid = integer(config, 0x248f10) != 5;
        const auto foreground = color(api, valid ? 0 : 1, valid ? 1.0f : .5f);
        const auto measured = current_measure(api, widget.key);
        const auto next_io = get<Address>(api, 0x3926ac);
        text(api, overlay,
             sub(read<Vec2>(api, next_io + 0xe00, 0x37d6fb), {measured.x / 2, measured.y / 2}),
             foreground, widget.key);
        if (get<bool>(api, 0x394588, {ReI32(0)})) {
            const auto selected = integer(config, 0x248f10);
            if (selected != 5)
                widget.side = selected;
            widget.byte_2c = 0;
        }
    }
    const auto draw = read<Address>(api, window + 0x298, 0x37d749);
    text(api, draw, cursor, packed(api, animation.color), widget.key);
}
} // namespace frame_preview_detail
FrameDependencyResult frame_preview_widget_37df58(FramePreviewState &state, ReUSize index,
                                                  FrameMenuState &config,
                                                  const FrameMainMenuApi &api, ClipRect tint) {
    using namespace frame_preview_detail;
    return protect([&] {
        if (index >= state.widgets.size())
            stop(UnityStatus::malformed_input, 0x2ef7c8);
        auto &widget = state.widgets[index];
        if (widget.side == 0) {
            preview_palette(state, widget, config, api);
            call(api, 0x39ac04, {0.0f, 10.0f});
            return;
        }
        const auto saved_font = read<Address>(api, api.context + 0x3c28, 0x37e009);
        const auto nominal = read<float>(api, saved_font + 0x14, 0x37e017);
        const bool indicator =
            widget.key == "Indicator0" || widget.key == "Indicator2" || widget.key == "Indicator3";
        const bool special = indicator && integer(config, 0x3eed38) == 2;
        const float font_size = special ? 10.0f : number(config, 0x248ed0);
        const auto kind = special ? 4 : 0;
        write(api, api.context + 0x3c28, saved_font, 0x37e0ce);
        write(api, saved_font + 0x64, font_size / nominal, 0x37e0d5);
        if (widget.side < 0 ||
            widget.side >= static_cast<ReI32>(state.counters_3e5cc8.size()))
            stop(UnityStatus::malformed_input, 0x37e0f6);
        const auto side = static_cast<ReUSize>(widget.side);
        const auto count = state.counters_3e5cc8[side];
        const float spacing = static_cast<float>(count) * font_size;
        state.counters_3e5cc8[side] =
            re::re_bit_cast<ReI32>(re::re_bit_cast<ReU32>(count) + 1u);
        const auto measure_text = [&] { return measure(api, saved_font, font_size, widget.text); };
        const auto origin = center(config);
        const auto size = pair(config, 0x248f20);
        re::ReArray<Vec2, 5> targets{};
        auto extent = measure_text();
        targets[1] = add({origin.x - 10.0f - extent.x, origin.y}, {0, spacing});
        targets[2] = add({origin.x + size.x + 10.0f, origin.y}, {0, spacing});
        extent = measure_text();
        const float above_x = (size.x * .5f + origin.x) - extent.x * .5f;
        const float above_y = origin.y - 10.0f;
        extent = measure_text();
        targets[3] =
            add({above_x, above_y - extent.y}, {0, -font_size * static_cast<float>(count)});
        extent = measure_text();
        targets[4] = add({(size.x * .5f + origin.x) - extent.x * .5f, origin.y + size.y + 10.0f},
                         {0, spacing});
        if (side >= targets.size())
            stop(UnityStatus::indeterminate_native_data, 0x37e39f);
        auto current = offset(widget);
        current.x = frame_interpolate_33565c(
            current.x, static_cast<float>(truncate(targets[side].x)), 15.0f * delta(api));
        set_offset(widget, current);
        current.y = frame_interpolate_33565c(
            current.y, static_cast<float>(truncate(targets[side].y)), 15.0f * delta(api));
        set_offset(widget, current);
        if (widget.byte_60 && 1.0f > re::re_fabs(current.x - targets[side].x) &&
            1.0f > re::re_fabs(current.y - targets[side].y))
            widget.byte_60 = 0;
        const auto minimum = add(position(api), offset(widget));
        (void)measure_text(); // [C]37e479 intentionally computes an unused extent.
        const auto next_origin = add(position(api), offset(widget));
        extent = measure_text();
        const auto maximum = add(next_origin, extent);
        const ClipRect box{minimum.x, minimum.y, maximum.x, maximum.y};
        widget.bytes_50 = re::re_bit_cast<re::ReArray<ReByte, 16>>(box);
        if (hover(api, box) && get<bool>(api, 0x3943e4, {ReI32(0), ReI32(0)}))
            widget.byte_2c = 1;
        if (widget.byte_2c) {
            const auto background = get<Address>(api, 0x3925a4);
            const auto rounding = read<float>(api, api.context + 0x3814, 0x37e509);
            const auto bg = color(api, 8, .5f);
            auto measured = measure_text();
            auto io = get<Address>(api, 0x3926ac);
            auto mouse = read<Vec2>(api, io + 0xe00, 0x37e585);
            const auto padding = read<Vec2>(api, api.context + 0x380c, 0x37e594);
            const Vec2 half{measured.x / 2, measured.y / 2};
            rect(api, background, sub(sub(mouse, half), padding), add(add(mouse, half), padding),
                 bg, rounding);
            const auto overlay = get<Address>(api, 0x3925a4);
            const bool valid = integer(config, 0x248f10) != 5;
            const auto foreground = color(api, valid ? 0 : 1, valid ? 1.0f : .5f);
            measured = measure_text();
            io = get<Address>(api, 0x3926ac);
            mouse = read<Vec2>(api, io + 0xe00, 0x37e6ef);
            text(api, overlay, sub(mouse, {measured.x / 2, measured.y / 2}), foreground,
                 widget.text);
            // [C]37e738 traverses the entire vector; swaps do not break the loop.
            for (ReUSize other_index = 0; other_index < state.widgets.size(); ++other_index) {
                auto &other = state.widgets[other_index];
                // [C]2cef30 compares the first owned strings, not record pointers.
                // Distinct records with equal keys are skipped too.
                if (other.key == widget.key)
                    continue;
                if (other.side != widget.side || other.byte_60 || !hover(api, bounds(other)))
                    continue;
                const auto old = widget;
                widget = other;
                widget.byte_2c = 0;
                widget.byte_60 = 1;
                widget.icon_64 = 0;
                other = old;
                other.byte_2c = 1;
                other.byte_60 = 1;
                other.icon_64 = 0;
            }
            if (get<bool>(api, 0x394588, {ReI32(0)})) {
                const auto selected = integer(config, 0x248f10);
                if (selected != 5)
                    widget.side = selected;
                widget.byte_2c = 0;
            }
        }
        const auto renderer = get<Address>(api, 0x35d31c);
        const auto initial_font = read<Address>(api, renderer + 0x10, 0x37e8a6);
        call(api, 0x361bcc,
             {renderer, initial_font, widget.text, Vec2{box.x, box.y}, tint, ReI32(kind)});
        // [C] Restore after drawing, including renderer callbacks changing font.
        const auto restored_nominal = read<float>(api, saved_font + 0x14, 0x37e8cf);
        write(api, api.context + 0x3c28, saved_font, 0x37e8e0);
        write(api, saved_font + 0x64, restored_nominal / nominal, 0x37e8e7);
    });
}
} // namespace rust_internal_re
