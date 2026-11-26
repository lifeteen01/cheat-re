#include "imgui_text_input_internal.hpp"
namespace rust_internal_re::text_input_detail {
namespace {
void command(Frame &f, ReU32 value) {
    key(f.s, *f.edit, value, f.flags);
    imgui_text_input_sync(f.s, f.api, *f.edit);
}
bool filtered(Frame &f, ReU32 &value, ReU32 source = 2) {
    return imgui_text_input_filter_3c2a80(f.s, value, f.flags, f.request.callback,
                                          f.request.callback_user, source);
}
void erase_selection(Frame &f) {
    const auto [begin, end] = selection(*f.edit);
    if (begin != end)
        (void)replace(*f.edit, begin, end, {}, f.flags);
}
void copy(Frame &f, bool cut) {
    auto &edit = *f.edit;
    // [C] Clipboard setter's numeric presence is read independently of the leaf.
    if (read<Address>(f.s, f.c + 0xb8, 0x3c19c3)) {
        const auto selected = has_selection(edit);
        const auto [begin, end] =
            selected ? selection(edit) : re::RePair{0, ReI32(edit.text.size())};
        const auto text = imgui_text_input_encode_393c38(
            re::ReSpan(edit.text).subspan(ReUSize(begin), ReUSize(end - begin)));
        const auto temporary =
            draw_core_allocate_395158(*f.s.image, text.size() + 1, f.api.allocation.allocate);
        if (!temporary)
            { __builtin_trap(); }
        for (ReUSize i = 0; i < text.size(); ++i)
            write(f.s, temporary + i, text[i], 0x393c38);
        write(f.s, temporary + text.size(), char(0), 0x393ca6);
        const auto clipboard_context = context(f.s);
        const auto target = read<Address>(f.s, clipboard_context + 0xb8, 0x39b206);
        if (target)
            need(f.api.clipboard_set, 0x39b219, 0x39b1f8, target,
                 read<Address>(f.s, clipboard_context + 0xc0, 0x39b212), re::ReStringView(text));
        draw_core_free_39517c(*f.s.image, temporary, f.api.allocation.free);
    }
    if (cut) {
        if (!has_selection(edit))
            select_all(edit);
        erase_selection(f);
        edit.edited = true;
        imgui_text_input_sync(f.s, f.api, edit);
    }
}
void paste(Frame &f) {
    // [C]392208 returns the actual copied empty literal when no getter is
    // configured. That is nonnull: native still allocates/frees a2-byte temporary.
    const auto clipboard_context = context(f.s);
    const auto target = read<Address>(f.s, clipboard_context + 0xb0, 0x39220f);
    const auto copied = target ? need(f.api.clipboard_get, 0x392222, 0x392208, target,
                                      read<Address>(f.s, clipboard_context + 0xc0, 0x39221b))
                               : re::ReOptional<re::ReString>(raw_text(f.s, 0x28d328));
    if (!copied)
        return;
    const auto nul = copied->find('\0');
    const auto bytes = re::ReStringView(*copied).substr(0, nul);
    const auto temporary =
        draw_core_allocate_395158(*f.s.image, bytes.size() * 2 + 2, f.api.allocation.allocate);
    if (!temporary)
        { __builtin_trap(); }
    re::ReVector<ReU16> accepted;
    for (ReUSize at = 0; at < bytes.size();) {
        const auto decoded = renderer_utf8_39357c(bytes, at);
        if (!decoded.consumed)
            break;
        at += decoded.consumed;
        auto value = decoded.codepoint;
        if (filtered(f, value, 4)) {
            write(f.s, temporary + accepted.size() * 2, ReU16(value), 0x3c197d);
            accepted.push_back(ReU16(value));
        }
        if (accepted.size() > f.api.maximum_characters)
            __builtin_trap();
    }
    write(f.s, temporary + accepted.size() * 2, ReU16(0), 0x3c1994);
    if (!accepted.empty()) {
        // [C]3c7ab4 first deletes selection; failed capacity insertion retains it.
        erase_selection(f);
        (void)replace(*f.edit, f.edit->cursor, f.edit->cursor, accepted, f.flags);
        f.edit->edited = true;
        imgui_text_input_sync(f.s, f.api, *f.edit);
    }
    draw_core_free_39517c(*f.s.image, temporary, f.api.allocation.free);
}
} // namespace
void process(Frame &f) {
    if (!f.active || !f.edit)
        return;
    auto &edit = *f.edit;
    edit.capacity = ReI32(f.request.buffer.size());
    edit.value_edited = false;
    write(f.s, f.c + 0x5aa0, f.flags, 0x3c0f50);
    write(f.s, f.c + 0x3f75, ReU8(!read<ReU8>(f.s, f.c + 0xe10, 0x3c0f57)),
          0x3c0f63);
    const bool shift = read<ReU8>(f.s, f.c + 0xe25, 0x3c0fe6) != 0;
    const auto padding_x = read<float>(f.s, f.c + 0x380c, 0x3c0fc1);
    const auto mouse_x =
        read<float>(f.s, f.c + 0xe08, 0x3c0faf) - f.box.x - padding_x + edit.scroll_x;
    const auto mouse_y = f.multiline ? read<float>(f.s, f.c + 0xe0c, 0x3c0f72) -
                                           read<float>(f.s, f.inner + 0x104, 0x3c0f7b)
                                     : read<float>(f.s, f.c + 0x3c30, 0x3c0f85) * 0.5f;
    const Vec2 mouse{mouse_x, mouse_y};
    if (f.select_everything) {
        select_all(edit);
        edit.mouse_lock = true;
    } else if (f.hovered && read<ReU16>(f.s, f.c + 0x3752, 0x3c0fd8) >= 2 && !shift) {
        click(f.s, edit, mouse, false);
        const auto count = read<ReU16>(f.s, f.c + 0x3752, 0x3c1002);
        if (!(count & 1)) {
            const auto previous = edit.cursor > 0 ? edit.text[ReUSize(edit.cursor - 1)] : 0;
            if (has_selection(edit) || (edit.cursor > 0 && previous != '\n'))
                command(f, 0x20000c);
            edit.selection_end =
                f.password ? ReI32(edit.text.size()) : word_right(edit, edit.cursor, true);
            edit.cursor = edit.selection_end;
            clamp_cursor(edit);
        } else {
            const auto current = ReUSize(edit.cursor) < edit.text.size()
                                     ? edit.text[ReUSize(edit.cursor)]
                                     : 0;
            command(f, 0x200004);
            command(f, 0x600005);
            command(f, 0x600001);
            if (current != '\n' && f.multiline) {
                re::re_swap(edit.selection_start, edit.selection_end);
                edit.cursor = edit.selection_end;
            }
        }
        edit.edited = false;
        edit.cursor_animation = -0.3f;
    } else if (read<ReU8>(f.s, f.c + 0x3748, 0x3c10ee) && !edit.mouse_lock) {
        if (f.hovered) {
            click(f.s, edit, mouse, shift);
            edit.cursor_animation = -0.3f;
        }
    } else if (read<ReU8>(f.s, f.c + 0xe10, 0x3c1125) && !edit.mouse_lock &&
               (read<float>(f.s, f.c + 0xf8, 0x3c112d) != 0 ||
                read<float>(f.s, f.c + 0xfc, 0x3c113e) != 0)) {
        click(f.s, edit, mouse, true);
        edit.cursor_animation = -0.3f;
        edit.edited = true;
    }
    if (edit.mouse_lock && !read<ReU8>(f.s, f.c + 0xe10, 0x3c117a))
        edit.mouse_lock = false;
    imgui_text_input_sync(f.s, f.api, edit);
    if ((f.flags & text_allow_tab) && shortcut(f.s, f.api, 0x200, f.id, false) && !f.read_only) {
        ReU32 value = '\t';
        if (filtered(f, value))
            command(f, value);
    }
    const bool mac = read<ReU8>(f.s, f.c + 0x79, 0x3c0c1b) != 0;
    const bool ctrl = read<ReU8>(f.s, f.c + 0xe24, 0x3c11fc) != 0;
    const bool alt = read<ReU8>(f.s, f.c + 0xe26, 0x3c1205) != 0;
    const bool super = read<ReU8>(f.s, f.c + 0xe27, 0x3c1213) != 0;
    const auto queue = f.c + 0x37c0;
    if (read<ReI32>(f.s, queue, 0x3c122a) > 0) {
        if (!((ctrl && !alt) || (mac && super)) && !f.from_nav && !f.read_only) {
            for (ReI32 i = 0; i < read<ReI32>(f.s, queue, 0x3c128f); ++i) {
                if (i < 0 || ReUSize(i) >= f.api.maximum_characters)
                    __builtin_trap();
                const auto data = read<Address>(f.s, queue + 8, 0x39f604);
                auto value =
                    ReU32(read<ReU16>(f.s, data + Address(i) * 2, 0x3c1255));
                if (value != '\t' && filtered(f, value))
                    command(f, value);
            }
        }
        write(f.s, queue, ReI32(0), 0x3c12a1);
    }
    if (f.deactivate || read<ReU8>(f.s, f.c + 0x3f74, 0x3c12c6))
        return;
    edit.rows_per_page = re::re_max(1, cvtt((f.size.y - read<float>(f.s, f.c + 0x3810, 0x3c12dd)) /
                                          read<float>(f.s, f.c + 0x3c30, 0x3c12f5)));
    const auto selection_mask = shift ? 0x400000u : 0u;
    const bool word_mod = mac ? alt : ctrl;
    const bool start_end = mac && super && !ctrl && !alt;
    // [C] All shortcut registrations occur before the priority key dispatch.
    bool cut = shortcut(f.s, f.api, 0xa39, f.id, true) || shortcut(f.s, f.api, 0x220a, f.id, true);
    cut = cut && !f.read_only && !f.password && (!f.multiline || has_selection(edit));
    bool copied =
        shortcut(f.s, f.api, 0xa24, f.id, false) || shortcut(f.s, f.api, 0x1209, f.id, false);
    copied = copied && !f.password && (!f.multiline || has_selection(edit));
    bool pasted =
        shortcut(f.s, f.api, 0xa37, f.id, true) || shortcut(f.s, f.api, 0x2209, f.id, true);
    pasted = pasted && !f.read_only;
    bool undo = shortcut(f.s, f.api, 0xa3b, f.id, true);
    undo = undo && !f.read_only && !(f.flags & text_no_undo_redo);
    bool redo = shortcut(f.s, f.api, 0xa3a, f.id, true) ||
                (mac && shortcut(f.s, f.api, 0x2a3b, f.id, true));
    redo = redo && !f.read_only && !(f.flags & text_no_undo_redo);
    const bool all = shortcut(f.s, f.api, 0xa22, f.id, false);
    const bool gamepad = (read<ReU8>(f.s, f.c + 8, 0x3c14eb) & 2) &&
                         (read<ReU8>(f.s, f.c + 0xc, 0x3c14f5) & 1);
    const bool enter = key_pressed(f.s, 0x20d, 0, true) || key_pressed(f.s, 0x267, 0, true);
    const bool gamepad_enter =
        gamepad && (key_pressed(f.s, 0x26e, 0, false) || key_pressed(f.s, 0x26d, 0, false));
    const bool escape = shortcut(f.s, f.api, 0x20e, f.id, true) ||
                        (gamepad && shortcut(f.s, f.api, 0x26c, f.id, true));
    auto pressed = [&](ReU32 k) { return key_pressed(f.s, k, 0, true); };
    if (pressed(0x201))
        command(f, (start_end ? 0x200004u : word_mod ? 0x20000cu : 0x200000u) | selection_mask);
    else if (pressed(0x202))
        command(f, (start_end ? 0x200005u : word_mod ? 0x20000du : 0x200001u) | selection_mask);
    else if (pressed(0x203) && f.multiline) {
        if (ctrl) {
            const auto target_y = maxss(0, read<float>(f.s, f.inner + 0x88, 0x3c1616) -
                                               read<float>(f.s, f.c + 0x3c30, 0x3c161e));
            write(f.s, f.inner + 0x98, target_y, 0x39b88c);
            write(f.s, f.inner + 0xa0, 0.0f, 0x39b894);
            write(f.s, f.inner + 0xa8, 0.0f, 0x39b89e);
        } else
            command(f, (start_end ? 0x200006u : 0x200002u) | selection_mask);
    } else if (pressed(0x204) && f.multiline) {
        if (ctrl) {
            const auto target_y = minss(read<float>(f.s, f.inner + 0x90, 0x392be2),
                                        read<float>(f.s, f.inner + 0x88, 0x3c167a) +
                                            read<float>(f.s, f.c + 0x3c30, 0x3c166a));
            write(f.s, f.inner + 0x98, target_y, 0x39b88c);
            write(f.s, f.inner + 0xa0, 0.0f, 0x39b894);
            write(f.s, f.inner + 0xa8, 0.0f, 0x39b89e);
        } else
            command(f, (start_end ? 0x200007u : 0x200003u) | selection_mask);
    } else if (pressed(0x205) && f.multiline) {
        command(f, 0x20000eu | selection_mask);
        f.scroll_y -= float(edit.rows_per_page) * read<float>(f.s, f.c + 0x3c30, 0x3c16d3);
    } else if (pressed(0x206) && f.multiline) {
        command(f, 0x20000fu | selection_mask);
        f.scroll_y += float(edit.rows_per_page) * read<float>(f.s, f.c + 0x3c30, 0x3c1722);
    } else if (pressed(0x207))
        command(f, (ctrl ? 0x200006u : 0x200004u) | selection_mask);
    else if (pressed(0x208))
        command(f, (ctrl ? 0x200007u : 0x200005u) | selection_mask);
    else if (pressed(0x20a) && !cut && !f.read_only) {
        if (!has_selection(edit) && word_mod)
            command(f, 0x60000d);
        command(f, 0x200008u | selection_mask);
    } else if (pressed(0x20b) && !f.read_only) {
        if (!has_selection(edit) && word_mod)
            command(f, 0x60000c);
        else if (!has_selection(edit) && mac && super && !alt && !ctrl)
            command(f, 0x600004);
        command(f, 0x200009u | selection_mask);
    } else if (enter || gamepad_enter) {
        const bool ctrl_newline = (f.flags & text_ctrl_enter_newline) != 0;
        if (!f.multiline || gamepad_enter || (ctrl_newline ? !ctrl : ctrl)) {
            f.enter = true;
            if (!f.multiline && read<ReU8>(f.s, f.c + 0x7c, 0x3c1ae4))
                select_all(edit);
            else
                f.deactivate = true;
        } else if (!f.read_only) {
            ReU32 value = '\n';
            if (filtered(f, value))
                command(f, value);
        }
    } else if (escape) {
        if ((f.flags & text_escape_clears_all) && edit.length_a > 0)
            f.escape = true;
        else {
            f.deactivate = true;
            f.escape = !(f.flags & text_escape_clears_all);
            f.render_cursor = f.render_selection = false;
        }
    } else if (undo || redo) {
        command(f, undo ? 0x20000a : 0x20000b);
        edit.selection_start = edit.selection_end = edit.cursor;
    } else if (all) {
        select_all(edit);
        edit.edited = true;
    } else if (cut || copied)
        copy(f, cut);
    else if (pasted)
        paste(f);
    f.render_selection |= has_selection(edit) && f.render_cursor;
    imgui_text_input_sync(f.s, f.api, edit);
}
} // namespace rust_internal_re::text_input_detail
