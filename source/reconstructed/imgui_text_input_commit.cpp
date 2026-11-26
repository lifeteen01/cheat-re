#include "imgui_text_input_internal.hpp"
namespace rust_internal_re::text_input_detail {
namespace {
ReI32 byte_position(const ImguiTextInputEdit &e, ReI32 position) {
    if (position < 0 || ReUSize(position) > e.text.size())
        __builtin_trap();
    return ReI32(imgui_text_input_encode_393c38(re::ReSpan<const ReU16>(e.text).subspan(0, position)).size());
}
ReI32 wide_position(re::ReStringView bytes, ReI32 position) {
    if (position < 0 || ReUSize(position) > bytes.size())
        __builtin_trap();
    return ReI32(
        imgui_text_input_decode_393ba4(bytes.substr(0, position), bytes.size() + 1).size());
}
bool deactivated_after_edit(Frame &f) {
    // [C]394014/394050 reload the live global context, independently of root c.
    const auto c = context(f.s);
    const auto status = read<ReU32>(f.s, c + 0x47ac, 0x39401b);
    bool deactivated;
    if (status & 0x20)
        deactivated = (status & 0x40) != 0;
    else {
        const auto item = read<ReU32>(f.s, c + 0x47a4, 0x39402b);
        const auto previous = read<ReU32>(f.s, c + 0x3f98, 0x394031);
        deactivated =
            previous == item && previous && read<ReU32>(f.s, c + 0x3f68, 0x39403f) != item;
    }
    if (!deactivated)
        return false;
    const auto live = context(f.s);
    return read<ReU8>(f.s, live + 0x3f9d, 0x394066) ||
           (!read<ReU32>(f.s, live + 0x3f68, 0x39406e) &&
            read<ReU8>(f.s, live + 0x3f78, 0x394076));
}
void cache(Frame &f) {
    f.edit->text_a_valid = true;
    f.edit->text_a = imgui_text_input_encode_393c38(f.edit->text);
    imgui_text_input_sync(f.s, f.api, *f.edit);
}
void callback(Frame &f) {
    if (!(f.flags & 0x801c0))
        return;
    ReU32 event = 0;
    ReI32 key = 0;
    if ((f.flags & text_callback_completion) && shortcut(f.s, f.api, 0x200, f.id, false)) {
        event = text_callback_completion;
        key = 0x200;
    } else if ((f.flags & text_callback_history) && key_pressed(f.s, 0x203, 0, true)) {
        event = text_callback_history;
        key = 0x203;
    } else if ((f.flags & text_callback_history) && key_pressed(f.s, 0x204, 0, true)) {
        event = text_callback_history;
        key = 0x204;
    } else if ((f.flags & text_callback_edit) && f.edit->value_edited)
        event = text_callback_edit;
    else if (f.flags & text_callback_always)
        event = text_callback_always;
    if (!event)
        return;
    auto &e = *f.edit;
    ImguiTextInputCallbackData d;
    d.event = event;
    d.flags = f.flags;
    d.user = f.request.callback_user;
    d.key = key;
    d.text = f.read_only ? buffer_text(f.request) : e.text_a;
    d.text_length = e.length_a;
    d.capacity = e.capacity;
    const auto cursor = d.cursor = byte_position(e, e.cursor);
    const auto start = d.selection_start = byte_position(e, e.selection_start);
    const auto end = d.selection_end = byte_position(e, e.selection_end);
    (void)need(f.request.callback, 0x3c1f1e, 0x3c1f1e, d);
    if (d.cursor != cursor || d.dirty) {
        e.cursor = wide_position(d.text, d.cursor);
        e.edited = true;
    }
    if (d.selection_start != start || d.dirty)
        e.selection_start =
            d.selection_start == d.cursor ? e.cursor : wide_position(d.text, d.selection_start);
    if (d.selection_end != end || d.dirty)
        e.selection_end = d.selection_end == d.selection_start
                              ? e.selection_start
                              : wide_position(d.text, d.selection_end);
    // [I] d.text owns the synchronous native Buf borrow. Writes to that
    // payload remain visible even if the callback leaves BufDirty false.
    if (f.read_only) {
        if (d.text.size() >= f.request.buffer.size())
            __builtin_trap();
        re::re_copy(d.text.begin(), d.text.end(), f.request.buffer.begin());
        f.request.buffer[d.text.size()] = 0;
    } else
        e.text_a = d.text;
    if (d.dirty) {
        if (d.text_length < 0 || ReUSize(d.text_length) > d.text.size() ||
            ReUSize(d.text_length) > f.api.maximum_characters)
            __builtin_trap();
        auto wide = imgui_text_input_decode_393ba4(
            re::ReStringView(d.text).substr(0, d.text_length), f.api.maximum_characters + 1);
        // [C]3c2c44 records the minimal changed interval before importing callback text.
        ReUSize begin = 0, old_end = e.text.size(), new_end = wide.size();
        while (begin < re::re_min(old_end, new_end) && e.text[begin] == wide[begin])
            ++begin;
        while (old_end > begin && new_end > begin && e.text[old_end - 1] == wide[new_end - 1]) {
            --old_end;
            --new_end;
        }
        if (old_end > begin || new_end > begin) {
            ImguiTextInputUndo record;
            record.position = ReI32(begin);
            record.inserted = ReI32(new_end - begin);
            record.removed= re::ReVector<ReU16>(e.text.data() + begin, e.text.data() + old_end);
            e.redo.clear();
            if (record.removed.size() <= 999)
                e.undo.push_back(re::re_move(record));
            else
                e.undo.clear();
            auto saved = [&] {
                ReUSize total = 0;
                for (const auto &r : e.undo)
                    total += r.removed.size();
                return total;
            };
            while (e.undo.size() > 99 || saved() > 999)
                e.undo.erase(e.undo.begin());
        }
        e.text = re::re_move(wide);
        e.length_a = d.text_length;
        e.text_a = re::re_move(d.text);
        e.cursor_animation = -0.3f;
    }
    imgui_text_input_sync(f.s, f.api, e);
}
} // namespace
void commit(Frame &f) {
    re::ReOptional<re::ReString> apply;
    ReI32 length = 0;
    if (read<ReU32>(f.s, f.c + 0x3f68, 0x3c1b75) == f.id && f.edit) {
        auto &e = *f.edit;
        if (f.escape) {
            if (!f.read_only) {
                if (f.flags & text_escape_clears_all) {
                    apply = re::ReString{};
                    (void)replace(e, 0, ReI32(e.text.size()), {}, f.flags);
                    // [C]3c1ba5 bypasses the value_changed store at3c1bf4.
                } else if (buffer_text(f.request) != e.initial) {
                    apply = e.initial;
                    length = ReI32(e.initial.size());
                    f.out.changed = true;
                    const auto wide =
                        imgui_text_input_decode_393ba4(e.initial, e.initial.size() + 1);
                    (void)replace(e, 0, ReI32(e.text.size()), wide, f.flags);
                }
                cache(f);
            }
            if (f.enter && (f.flags & text_enter_returns_true))
                callback(f);
        } else {
            f.out.changed = false;
            if (!f.read_only)
                cache(f);
            callback(f);
            if (!f.read_only && e.text_a != buffer_text(f.request)) {
                apply = e.text_a;
                length = e.length_a;
                f.out.changed = true;
            }
        }
    }
    if (read<ReU32>(f.s, f.c + 0x5aa8, 0x3c1cda) == f.id) {
        if (read<ReU32>(f.s, f.c + 0x3f68, 0x3c1ce3) != f.id && deactivated_after_edit(f) &&
            !f.read_only) {
            const auto data = read<Address>(f.s, f.c + 0x5ab8, 0x3c1cff);
            length = read<ReI32>(f.s, f.c + 0x5ab0, 0x3c1d06) - 1;
            apply = raw_text(f.s, data, f.api.maximum_characters);
            f.out.changed |= *apply != buffer_text(f.request);
        }
        write(f.s, f.c + 0x5aa8, ReU32(0), 0x3c1d2a);
    }
    if (apply) {
        if (f.resize) {
            ImguiTextInputCallbackData d;
            d.event = text_callback_resize;
            d.flags = f.flags;
            d.user = f.request.callback_user;
            d.text = buffer_text(f.request);
            d.text_length = length;
            d.capacity = re::re_max(ReI32(f.request.buffer.size()), length + 1);
            (void)need(f.request.callback, 0x3c1d84, 0x3c1d84, d);
            if (d.capacity < 0 || ReUSize(d.capacity) > f.api.maximum_characters + 1)
                __builtin_trap();
            // [I] Callback buffer replacement is an owned string/capacity contract.
            f.request.buffer.resize(ReUSize(d.capacity));
            const auto supplied = re::re_min(d.text.size(), f.request.buffer.size());
            re::re_copy_n(d.text.begin(), supplied, f.request.buffer.begin());
            length = re::re_min(d.text_length, d.capacity - 1);
        }
        const auto count =
            re::re_min(ReI64(length) + 1, ReI64(f.request.buffer.size()));
        // [C]39354c→3ca940 stops before source NUL, does not pad, and only
        // forces destination[count-1]=0. Preserve all intermediate owned bytes.
        if (count > 0) {
            for (ReUSize i = 0; i < ReUSize(count - 1) && i < apply->size() && (*apply)[i];
                 ++i)
                f.request.buffer[i] = (*apply)[i];
            f.request.buffer[ReUSize(count - 1)] = 0;
        }
    }
    if (read<ReU32>(f.s, f.c + 0x3f68, 0x3c1dca) == f.id) {
        if (f.deactivate)
            set_active(f.s, f.controls, 0, 0);
        else
            write(f.s, f.c + 0x5e4c, ReI32(1), 0x3c206a);
    }
}
} // namespace rust_internal_re::text_input_detail
