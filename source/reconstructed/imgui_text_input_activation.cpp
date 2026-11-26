#include "imgui_text_input_internal.hpp"
namespace rust_internal_re::text_input_detail {
namespace {
void raw_color(Frame &f, ReU32 index, re::ReArray<float, 4> value) {
    // [I] Reuse the owned stack import/backup controller, then retain the raw
    // float payload of398b84. No external effect observes the temporary pack.
    f.controls.push_color_398bec(index, pack_color(value));
    write(f.s, context(f.s) + 0x38b8 + Address(index) * 16, value, 0x398bd8);
}
ReU32 scrollbar_id(MenuControlsState &s, Address w) {
    // [C]3bff14 selects the decoded scrollbar-Y label and calls392614 on w.
    const auto n = read<ReI32>(s, w + 0xf0, 0x39262b);
    const auto data = read<Address>(s, w + 0xf8, 0x39262b);
    const auto seed = read<ReU32>(s, data + Address(ReI64(n) - 1) * 4, 0x392639);
    return menu_controls_hash_39334c("#SCROLLY", seed);
}
} // namespace
bool layout(Frame &f) {
    f.parent = window(f.s);
    if (read<ReU8>(f.s, f.parent + 0xbb, 0x3c05b0))
        return false;
    f.c = context(f.s);
    f.flags = f.request.flags;
    f.multiline = (f.flags & text_multiline) != 0;
    f.read_only = (f.flags & text_read_only) != 0;
    f.password = (f.flags & text_password) != 0;
    f.resize = (f.flags & text_callback_resize) != 0;
    if (f.multiline)
        f.controls.local_layout(0x38ec90);
    f.id = id(f.s, f.request.label);
    f.out.id = f.id;
    f.label = renderer_measure_38f79c(*f.s.image, f.c, f.request.label, {}, true, -1).size;
    const auto font_size = read<float>(f.s, f.c + 0x3c30, 0x3c0620);
    const auto padding_y = read<float>(f.s, f.c + 0x3810, 0x3c0638);
    f.size = calculate_size(
        f.s, f.request.size,
        {item_width(f.s), (f.multiline ? font_size * 8 : f.label.y) + padding_y + padding_y});
    f.position = read<Vec2>(f.s, f.parent + 0x100, 0x3c0697);
    f.box = {f.position.x, f.position.y, f.position.x + f.size.x, f.position.y + f.size.y};
    const auto extra = f.label.x > 0 ? f.label.x + read<float>(f.s, f.c + 0x3824, 0x3c0676) : 0;
    f.total = f.box;
    f.total.z += extra;
    f.inner = f.parent;
    if (f.multiline) {
        item_size(f.s, {f.total.z - f.total.x, f.total.w - f.total.y}, padding_y);
        if (!item_add(f.s, f.controls, f.total, f.id, f.box, 0x400)) {
            f.controls.local_layout(0x390efc);
            return false;
        }
        f.saved_item = read<re::ReArray<ReByte, 60>>(f.s, f.c + 0x47a4, 0x3c0788);
        write(f.s, f.parent + 0x100, f.position, 0x3c07c4);
        raw_color(f, 4, read<re::ReArray<float, 4>>(f.s, f.c + 0x3938, 0x3c0797));
        f.controls.push_float_398cc8(7, read<float>(f.s, f.c + 0x3814, 0x3c07ea));
        f.controls.push_float_398cc8(8, read<float>(f.s, f.c + 0x3818, 0x3c07fb));
        f.controls.push_vec2_398c60(2, {});
        if (!f.api.windows || !f.api.window_api)
            { __builtin_trap(); }
        const auto child = imgui_window_child_id_38e9c4(*f.api.windows, *f.api.window_api,
                                                        f.request.label, f.id, f.size, true, 4);
        if (child.result.status != UnityStatus::complete)
            __builtin_trap();
        f.controls.pop_style_39896c(3);
        f.controls.pop_color_39890c(1);
        if (!child.visible) {
            const auto ended = imgui_window_end_child_390a88(*f.api.windows, *f.api.window_api);
            if (ended.status != UnityStatus::complete)
                __builtin_trap();
            f.controls.local_layout(0x390efc);
            return false;
        }
        f.inner = read<Address>(f.s, f.c + 0x3f08, 0x3c086f);
        const auto layer = read<ReU32>(f.s, f.inner + 0x158, 0x3c0889);
        const auto mask = read<ReU16>(f.s, f.inner + 0x15e, 0x3c0881);
        write(f.s, f.inner + 0x15e, ReU16(mask | (1u << (layer & 31))), 0x3c0893);
        auto cursor = read<Vec2>(f.s, f.inner + 0x100, 0x3c089b);
        cursor = cursor + read<Vec2>(f.s, f.c + 0x380c, 0x3c0876);
        write(f.s, f.inner + 0x100, cursor, 0x38cc48);
        f.size.x -= read<float>(f.s, f.inner + 0xac, 0x3c08a7);
    } else {
        item_size(f.s, {f.total.z - f.total.x, f.total.w - f.total.y}, padding_y);
        if (!(f.flags & text_merged_item) &&
            !item_add(f.s, f.controls, f.total, f.id, f.box, 0x400))
            return false;
    }
    f.item_status = read<ReU32>(f.s, f.c + 0x47ac, 0x3c08db);
    f.hovered = hoverable(f.s, f.controls, f.box, f.id);
    if (f.hovered)
        write(f.s, f.c + 0x4a88, ReI32(1), 0x3c091d);
    f.original = buffer_text(f.request);
    return true;
}
void activate(Frame &f) {
    const auto c = f.c;
    const auto global_id = read<ReU32>(f.s, c + 0x4c20, 0x3bfef4);
    if (!f.state.editors.contains(c))
        f.state.editors.insert(c, import_edit(f.s, f.api));
    auto &edit = f.state.editors[c];
    f.edit = global_id == f.id ? &edit : nullptr;
    const auto active = read<ReU32>(f.s, c + 0x3f68, 0x3c0936);
    f.from_tab = (f.item_status & 0x100) != 0;
    f.from_nav = active != f.id && read<ReU32>(f.s, c + 0x48f8, 0x3c0948) == f.id &&
                 ((read<ReU32>(f.s, c + 0x4904, 0x3c0951) & 1) ||
                  read<ReU32>(f.s, c + 0x491c, 0x3c095b) == 2);
    f.clicked = f.hovered && read<ReU8>(f.s, c + 0x3748, 0x3c097e);
    const auto scroll_id = f.multiline && f.edit ? scrollbar_id(f.s, f.inner) : 0;
    const bool scroll_finished = f.multiline && f.edit && !active &&
                                 read<ReU32>(f.s, c + 0x3f98, 0x3c09a7) == scroll_id;
    f.scrolling = f.multiline && f.edit && active == scroll_id;
    f.scroll_y = f.multiline && f.edit ? read<float>(f.s, f.inner + 0x88, 0x3c09fb)
                                       : re::ReNumericLimits<float>::max();
    f.init = f.from_tab || f.from_nav || f.clicked || scroll_finished;
    const bool switch_mode = f.edit && f.edit->single_line != !f.multiline;
    if (((f.init || f.scrolling) && active != f.id) || switch_mode) {
        const auto old_id = read<ReU32>(f.s, c + 0x4c20, 0x3c0a86);
        edit.cursor_animation = -0.3f;
        if (f.controls.deactivate_text_3c04d0)
            f.controls.deactivate_text_3c04d0(old_id);
        else
            imgui_navigation_deactivate_3c04d0(f.s, f.api.allocation, old_id);
        f.original = buffer_text(f.request);
        const auto bytes = f.original;
        const bool recycle = global_id == f.id && !switch_mode &&
                             edit.length_a == ReI32(bytes.size()) &&
                             (!edit.text_a_valid || edit.text_a == bytes);
        ReUSize consumed = 0;
        edit.text = imgui_text_input_decode_393ba4(bytes, f.request.buffer.size() + 1, &consumed);
        edit.initial = bytes;
        edit.length_a = ReI32(consumed);
        edit.id = f.id;
        edit.capacity = ReI32(f.request.buffer.size());
        edit.text_a_valid = false;
        edit.text_a.clear();
        if (recycle)
            clamp_cursor(edit);
        else {
            edit.scroll_x = 0;
            edit.cursor = edit.selection_start = edit.selection_end = 0;
            edit.overwrite = false;
            edit.undo.clear();
            edit.redo.clear();
            edit.single_line = !f.multiline;
            edit.has_preferred_x = false;
        }
        f.edit = &edit;
        if (!f.multiline) {
            f.select_everything = (f.flags & text_auto_select_all) != 0;
            if (f.from_nav && (!recycle || !(read<ReU32>(f.s, c + 0x4904, 0x3c0bdb) & 4)))
                f.select_everything = true;
            if (f.from_tab || (f.clicked && read<ReU8>(f.s, c + 0xe24, 0x3c0bf5)))
                f.select_everything = true;
        }
        if (f.flags & text_always_overwrite)
            edit.overwrite = true;
        imgui_text_input_sync(f.s, f.api, edit);
    }
    if (f.init && read<ReU32>(f.s, c + 0x3f68, 0x3c0c2d) != f.id) {
        set_active(f.s, f.controls, f.id, f.parent);
        set_focus(f.s, f.controls, f.id, f.parent);
        focus_window(f.s, f.controls, f.parent, 0);
    }
    f.active = read<ReU32>(f.s, c + 0x3f68, 0x3c0c5f) == f.id;
    if (f.active) {
        if (f.hovered)
            set_key_owner(f.s, 0x281, f.id, 0);
        const auto use = read<ReU32>(f.s, c + 0x4778, 0x3c0c7f);
        write(f.s, c + 0x4778, use | 3u, 0x3c0c8f);
        if (f.multiline || (f.flags & text_callback_history))
            write(f.s, c + 0x4778, use | 15u, 0x3c0ca6);
        for (auto key : {0x207, 0x208})
            set_key_owner(f.s, key, f.id, 0);
        if (f.multiline)
            for (auto key : {0x205, 0x206})
                set_key_owner(f.s, key, f.id, 0);
        if (read<ReU8>(f.s, c + 0x79, 0x3c0ced))
            set_key_owner(f.s, 0x4000, f.id, 0);
        if (f.flags & 0x440u)
            (void)route_shortcut(f.s, f.api, 0x200, f.id, 0);
        if (!f.edit)
            set_active(f.s, f.controls, 0, 0);
    }
    f.active = read<ReU32>(f.s, c + 0x3f68, 0x3c0d35) == f.id;
    f.deactivate =
        f.active && read<ReU8>(f.s, c + 0x3748, 0x3c0d43) && !f.init && !f.hovered;
    f.render_cursor = f.active || (f.edit && f.scrolling);
    f.render_selection = f.edit && has_selection(*f.edit) && f.render_cursor;
    if (f.read_only && f.edit && (f.render_cursor || f.render_selection)) {
        ReUSize consumed = 0;
        f.edit->text =
            imgui_text_input_decode_393ba4(f.original, f.request.buffer.size() + 1, &consumed);
        f.edit->length_a = ReI32(consumed);
        clamp_cursor(*f.edit);
        f.render_selection &= has_selection(*f.edit);
    }
    f.use_cached = (f.render_cursor || f.render_selection || f.active) && f.edit && !f.read_only &&
                   f.edit->text_a_valid;
    const auto current =
        f.active && f.edit && !f.read_only && f.edit->text_a_valid ? f.edit->text_a : f.original;
    f.hint = !f.request.hint.empty() && current.empty();
}
} // namespace rust_internal_re::text_input_detail
