#include "imgui_text_input_internal.hpp"
namespace rust_internal_re::text_input_detail {
namespace {
void rectangle(Frame &f, ClipRect box, ReU32 color, bool filled, float rounding = 0,
               float thickness = 1, re::ReOptional<Address> captured_draw = {}) {
    const auto draw = captured_draw.value_or(0);
    const auto target = captured_draw ? draw : read<Address>(f.s, f.inner + 0x298, 0x3c2764);
    need(f.controls.rectangle, 0x399307, filled ? 0x3a1244 : 0x3a1148,
         MenuControlRectangle{
             target, {box.x, box.y}, {box.z, box.w}, color, rounding, thickness, 0, filled});
}
void frame_rectangle(Frame &f) {
    const auto rounding = read<float>(f.s, f.c + 0x3814, 0x3c2099);
    const auto color = style_color(f.s, 8);
    const auto c = context(f.s);
    const auto w = read<Address>(f.s, c + 0x3f08, 0x3992db);
    const auto draw = read<Address>(f.s, w + 0x298, 0x3992f1);
    rectangle(f, f.box, color, true, rounding, 1, draw);
    // [C]3992a0 reloads global context, draws fill before border thickness test.
    const auto thickness = read<float>(f.s, c + 0x3818, 0x399314);
    if (thickness > read<float>(f.s, 0x28d24c, 0x39931c)) {
        const auto one = read<float>(f.s, 0x28d254, 0x399329);
        rectangle(f, {f.box.x + one, f.box.y + one, f.box.z + one, f.box.w + one},
                  style_color(f.s, 7), false, rounding, thickness, draw);
        rectangle(f, f.box, style_color(f.s, 6), false, rounding, thickness, draw);
    }
}
Vec2 offset(Frame &f, ReI32 index) {
    auto &e = *f.edit;
    if (index < 0 || ReUSize(index) > e.text.size())
        __builtin_trap();
    ReI32 start = index, rows = 1;
    while (start > 0 && e.text[ReUSize(start - 1)] != '\n')
        --start;
    for (ReI32 i = 0; i < index; ++i)
        rows += e.text[ReUSize(i)] == '\n';
    return {measure_wide(f.s, re::ReSpan<const ReU16>(e.text).subspan(start, index - start)).x,
            float(rows) * read<float>(f.s, f.c + 0x3c30, 0x3c238d)};
}
void draw_text(Frame &f, Vec2 position, re::ReStringView text, ReU32 color,
               re::ReOptional<re::ReArray<float, 4>> clip, bool current = false) {
    const auto c = current ? context(f.s) : f.c;
    const auto w = current ? read<Address>(f.s, c + 0x3f08, 0x3999f2) : f.inner;
    const auto draw = read<Address>(f.s, w + 0x298, 0x3c2251);
    const auto font = read<Address>(f.s, c + 0x3c28, 0x3c221f);
    const auto size = read<float>(f.s, c + 0x3c30, 0x3c2212);
    need(f.api.text, 0x3c2258, 0x3a31f8,
         FontTextRequest{draw, font, size, position, color, text, text.size(), 0, clip});
}
void scroll(Frame &f, Vec2 cursor) {
    auto &e = *f.edit;
    if (!f.render_cursor || !e.edited)
        return;
    if (!(f.flags & text_no_horizontal_scroll)) {
        const auto quantum = f.size.x * read<float>(f.s, 0x2930ac, 0x3c2457);
        if (e.scroll_x > cursor.x)
            e.scroll_x = float(cvtt(maxss(0, cursor.x - quantum)));
        else {
            const auto available = f.size.x - read<float>(f.s, f.c + 0x380c, 0x3c2483);
            const auto right = cursor.x - available;
            if (right >= e.scroll_x)
                e.scroll_x = float(cvtt(quantum + right));
        }
    } else
        e.scroll_x = 0;
    if (f.multiline) {
        const auto size = read<float>(f.s, f.c + 0x3c30, 0x3c24c2);
        const auto padding = read<float>(f.s, f.c + 0x3810, 0x3c24de);
        float target;
        if (f.scroll_y > cursor.y - size)
            target = maxss(0, cursor.y - size);
        else if (cursor.y - (f.size.y - (padding + padding)) >= f.scroll_y)
            target = cursor.y - f.size.y + (padding + padding);
        else
            target = f.scroll_y;
        const auto maximum = maxss(0, (padding + padding) + f.text_extent.y - f.size.y);
        target = minss(maxss(target, 0), maximum);
        const auto previous = read<float>(f.s, f.inner + 0x88, 0x3c2545);
        f.text_position.y += previous - target;
        write(f.s, f.inner + 0x88, target, 0x3c255a);
    }
    e.edited = false;
    imgui_text_input_sync(f.s, f.api, e);
}
void selected_background(Frame &f) {
    if (!f.render_selection)
        return;
    auto &e = *f.edit;
    const auto [begin, end] = selection(e);
    auto p = offset(f, begin) + f.text_position;
    p.x -= e.scroll_x;
    const auto font_size = read<float>(f.s, f.c + 0x3c30, 0x3c2626);
    const auto alpha = f.render_cursor ? 1.0f : read<float>(f.s, 0x2941b0, 0x3c25bb);
    const auto color = style_color(f.s, 48, alpha);
    const auto top = f.multiline ? 0.0f : read<float>(f.s, 0x293260, 0x3c05f3);
    const auto bottom = f.multiline ? 0.0f : read<float>(f.s, 0x293134, 0x3c25de);
    auto at = begin;
    while (at < end) {
        if (p.y > f.clip.w + font_size)
            break;
        auto next = at;
        while (next < end && e.text[ReUSize(next)] != '\n')
            ++next;
        if (p.y >= f.clip.y) {
            auto width = measure_wide(f.s, re::ReSpan<const ReU16>(e.text).subspan(at, next - at)).x;
            if (!(0 < width))
                width = float(cvtt(advance(f.s, ' ') * read<float>(f.s, 0x28d250, 0x3c26b1)));
            ClipRect box{p.x, p.y + top - font_size, p.x + width, p.y + bottom};
            box.x = maxss(box.x, f.clip.x);
            box.y = maxss(box.y, f.clip.y);
            box.z = minss(box.z, f.clip.z);
            box.w = minss(box.w, f.clip.w);
            if (box.x < box.z && box.y < box.w)
                rectangle(f, box, color, true);
        }
        at = next < end ? next + 1 : next;
        p.x = f.text_position.x - e.scroll_x;
        p.y += font_size;
    }
}
} // namespace
void render(Frame &f) {
    if (!f.multiline) {
        if (!f.api.window_api)
            { __builtin_trap(); }
        need(f.api.window_api->nav_highlight_3997ac, 0x3c2094, 0x3997ac, f.box, f.id, 1u);
        frame_rectangle(f);
    }
    f.clip = {f.box.x, f.box.y, f.box.x + f.size.x, f.box.y + f.size.y};
    f.text_position = f.multiline
                          ? read<Vec2>(f.s, f.inner + 0x100, 0x3c20ff)
                          : Vec2{f.box.x, f.box.y} + read<Vec2>(f.s, f.c + 0x380c, 0x3c2112);
    f.display = f.use_cached && f.edit ? f.edit->text_a : buffer_text(f.request);
    if (f.hint)
        f.display = f.request.hint;
    else if (f.edit && (f.render_cursor || f.render_selection ||
                        read<ReU32>(f.s, f.c + 0x3f68, 0x3c21d6) == f.id)) {
        if (f.edit->length_a < 0)
            __builtin_trap();
        // [C] Explicit native text_end uses CurLenA even when a nondirty
        // callback changed TextA's bytes without updating its logical length.
        f.display.resize(re::re_min(f.display.size(), ReUSize(f.edit->length_a)));
    }
    const auto font_size = read<float>(f.s, f.c + 0x3c30, 0x3c21b5);
    const auto fine = f.multiline
                          ? re::ReOptional<re::ReArray<float, 4>>{}
                          : re::ReOptional<re::ReArray<float, 4>>(re::ReArray<float, 4>{f.clip.x, f.clip.y, f.clip.z, f.clip.w});
    if ((!f.render_cursor && !f.render_selection) || !f.edit) {
        if (f.multiline)
            f.text_extent = {f.size.x,
                             float(1 + re::re_count(f.display.begin(), f.display.end(), '\n')) *
                                 font_size};
        if (f.multiline || f.display.size() < 0x200000)
            draw_text(f, f.text_position, f.display, style_color(f.s, f.hint ? 2 : 1), fine);
    } else {
        auto &e = *f.edit;
        const auto cursor = offset(f, e.cursor);
        if (f.multiline)
            f.text_extent = {f.size.x,
                             float(1 + re::re_count(e.text.begin(), e.text.end(), '\n')) * font_size};
        scroll(f, cursor);
        selected_background(f);
        if (f.multiline || f.display.size() < 0x200000)
            draw_text(f, {f.text_position.x - e.scroll_x, f.text_position.y}, f.display,
                      style_color(f.s, f.hint ? 2 : 1), fine);
        if (f.render_cursor) {
            e.cursor_animation += read<float>(f.s, f.c + 0x18, 0x3c2850);
            Vec2 p = cursor + f.text_position;
            p.x -= e.scroll_x;
            p = {float(cvtt(p.x)), float(cvtt(p.y))};
            // [C]3c28d9 constructs a temporary caret rectangle only; no draw call
            // or blink gate follows. The native observable output here is IME data.
            if (!f.read_only) {
                write(f.s, f.c + 0x5bd8, ReU8(1), 0x3c28f6);
                write(f.s, f.c + 0x5bdc, Vec2{p.x - 1, p.y - font_size}, 0x3c2912);
                write(f.s, f.c + 0x5be4, font_size, 0x3c291b);
            }
            imgui_text_input_sync(f.s, f.api, e);
        }
    }
    if (f.password_pushed)
        imgui_text_input_pop_font_39881c(f.s, f.api);
}
void finish(Frame &f) {
    if (f.multiline) {
        const auto padding = read<float>(f.s, f.c + 0x3810, 0x3c294f);
        const Vec2 dummy{f.text_extent.x, f.text_extent.y + padding};
        const auto w = window(f.s);
        if (!read<ReU8>(f.s, w + 0xbb, 0x3bfe5e)) {
            const auto p = read<Vec2>(f.s, w + 0x100, 0x3bfe67);
            item_size(f.s, dummy, read<float>(f.s, 0x293260, 0x3bfe8e));
            (void)item_add(f.s, f.controls, {p.x, p.y, p.x + dummy.x, p.y + dummy.y}, 0, {}, 0);
        }
        const auto flags = read<ReU32>(f.s, f.c + 0x4788, 0x3c296e);
        write(f.s, f.c + 0x4788, flags | 0x401u, 0x3c297c);
        const auto ended = imgui_window_end_child_390a88(*f.api.windows, *f.api.window_api);
        if (ended.status != UnityStatus::complete)
            __builtin_trap();
        ReU32 saved_status;
        re::re_memcpy(&saved_status, f.saved_item.data() + 8, 4);
        saved_status |= read<ReU32>(f.s, f.c + 0x47ac, 0x3c2988) & 0x80;
        write(f.s, f.c + 0x4788, flags, 0x3c299c);
        f.controls.local_layout(0x390efc);
        if (!read<ReU32>(f.s, f.c + 0x47a4, 0x3c29a8)) {
            ReU32 saved_flags;
            re::re_memcpy(&saved_flags, f.saved_item.data() + 4, 4);
            write(f.s, f.c + 0x47a8, saved_flags, 0x3c29bb);
            write(f.s, f.c + 0x47a4, f.id, 0x3c29c2);
            write(f.s, f.c + 0x47ac, saved_status, 0x3c29c9);
        }
    }
    MenuColorPickerApi logging;
    logging.logs = f.api.logs;
    if (read<ReU8>(f.s, f.c + 0x5c90, 0x3c29d2) && (!f.password || f.hint)) {
        const auto live = context(f.s);
        write(f.s, live + 0x5cb0, 0x2ad8d0, 0x395027);
        write(f.s, live + 0x5cb8, 0x2ad8cc, 0x39502e);
        menu_color_picker_log_text_394e5c(f.s, logging, f.text_position, f.display);
    }
    if (f.label.x > 0) {
        const Vec2 p{f.box.z + read<float>(f.s, f.c + 0x3824, 0x3c2a2c),
                     f.box.y + read<float>(f.s, f.c + 0x3810, 0x3c2a23)};
        const auto end = re::re_min(f.request.label.find("##"), f.request.label.find('\0'));
        const auto text = re::ReStringView(f.request.label).substr(0, end);
        if (!text.empty()) {
            draw_text(f, p, text, style_color(f.s, 1), {}, true);
            const auto live = context(f.s);
            if (read<ReU8>(f.s, live + 0x5c90, 0x399a39))
                menu_color_picker_log_text_394e5c(f.s, logging, p, text);
        }
    }
    if (f.out.changed && !(f.flags & text_no_mark_edited)) {
        const auto c = context(f.s);
        const auto active = read<ReU32>(f.s, c + 0x3f68, 0x395137);
        if (active == f.id || !active)
            write(f.s, c + 0x3f78, ReU16(0x101), 0x395145);
        write(f.s, c + 0x47ac, read<ReU32>(f.s, c + 0x47ac, 0x39514e) | 4u, 0x39514e);
    }
    f.out.enter_pressed = f.enter;
    f.out.return_value = (f.flags & text_enter_returns_true) ? f.enter : f.out.changed;
}
} // namespace rust_internal_re::text_input_detail
