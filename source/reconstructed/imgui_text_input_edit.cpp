#include "imgui_text_input_internal.hpp"
namespace rust_internal_re::text_input_detail {
namespace {
ReU16 at(const ImguiTextInputEdit &edit, ReI32 index) {
    return index >= 0 && ReUSize(index) < edit.text.size() ? edit.text[ReUSize(index)] : 0;
}
bool separator(ReU16 c) {
    if (c <= 59 && (0x800530200002400ULL & (1ULL << (c & 63))))
        return true;
    const auto index = ReU32(c) - 91;
    return index <= 34 && (0x700000005ULL & (1ULL << (index & 63)));
}
bool boundary(const ImguiTextInputEdit &edit, ReI32 index, bool right) {
    if (index <= 0)
        return false;
    const auto previous = at(edit, index - 1), current = at(edit, index);
    const auto p = separator(previous), c = separator(current);
    const auto pb = renderer_blank_3a4b10(previous), cb = renderer_blank_3a4b10(current);
    // [C]3c5d14 is the right-boundary variant;3c5db0 is left.
    return right ? ((!p && !pb && cb) || (p && !c)) : (((pb || p) && !c && !cb) || (c && !p));
}
ReI32 byte_count(re::ReSpan<const ReU16> text) {
    ReI32 count = 0;
    for (auto c : text)
        count += c < 0x80 ? 1 : c < 0x800 ? 2 : 3;
    return count;
}
void trim_history(re::ReVector<ImguiTextInputUndo> &history) {
    // [I] Owned STB undo-storage adaptation: native99 records /999 saved ImWchar slots.
    auto count = [&]() {
        ReUSize size = 0;
        for (const auto &record : history)
            size += record.removed.size();
        return size;
    };
    while (history.size() > 99 || count() > 999)
        history.erase(history.begin());
}
void remember(ImguiTextInputEdit &edit, ReI32 begin, ReI32 end,
              ReI32 inserted) {
    edit.redo.clear();
    if (end - begin > 999) {
        edit.undo.clear();
        return;
    }
    ImguiTextInputUndo record;
    record.position = begin;
    record.inserted = inserted;
    record.removed= re::ReVector<ReU16>(edit.text.data() + begin, edit.text.data() + end);
    edit.undo.push_back(re::re_move(record));
    trim_history(edit.undo);
}
void reset_after_key(ImguiTextInputEdit &edit) {
    edit.has_preferred_x = false;
    edit.edited = true; // [C]3c2e94 sets cursor-follow even for movement-only commands.
    edit.cursor_animation = -0.3f;
}
ReI32 line_begin(const ImguiTextInputEdit &edit, ReI32 cursor) {
    while (cursor > 0 && at(edit, cursor - 1) != '\n')
        --cursor;
    return cursor;
}
ReI32 line_end(const ImguiTextInputEdit &edit, ReI32 cursor) {
    while (ReUSize(cursor) < edit.text.size() && at(edit, cursor) != '\n')
        ++cursor;
    return cursor;
}
void move(ImguiTextInputEdit &edit, ReI32 next, bool shift) {
    if (shift) {
        if (!has_selection(edit))
            edit.selection_start = edit.cursor;
        edit.selection_end = next;
    } else
        edit.selection_start = edit.selection_end = next;
    edit.cursor = next;
}
ReUSize saved_units(const re::ReVector<ImguiTextInputUndo> &records) {
    ReUSize count = 0;
    for (const auto &r : records)
        count += r.removed.size();
    return count;
}
void history(ImguiTextInputEdit &edit, bool redo, ReU32 flags) {
    auto &from = redo ? edit.redo : edit.undo;
    auto &to = redo ? edit.undo : edit.redo;
    if (from.empty())
        return;
    const auto record = from.back();
    if (record.position < 0 || record.inserted < 0 ||
        ReUSize(record.position) > edit.text.size() ||
        ReUSize(record.inserted) > edit.text.size() - ReUSize(record.position))
        __builtin_trap();
    const auto begin = record.position, end = begin + record.inserted;
    ImguiTextInputUndo inverse;
    inverse.position = begin;
    inverse.inserted = ReI32(record.removed.size());
    bool save = true;
    if (record.inserted) {
        if (redo) {
            // [C]3c6210 uses the still-live redo character pool in its room test;
            // failed room clears both lengths in the new undo record.
            if (saved_units(edit.undo) + ReUSize(record.inserted) + saved_units(edit.redo) >
                999) {
                save = false;
                inverse.inserted = 0;
            }
        } else {
            // [C]3c6338 rejects equality999; otherwise evict oldest redo records
            // until the current undo pool and new inverse payload fit together.
            const auto occupied = saved_units(edit.undo) + ReUSize(record.inserted);
            if (occupied >= 999)
                save = false;
            else
                while (occupied + saved_units(edit.redo) > 999 && !edit.redo.empty())
                    edit.redo.erase(edit.redo.begin());
        }
    }
    if (save)
        inverse.removed= re::ReVector<ReU16>(edit.text.data() + begin, edit.text.data() + end);
    from.resize(from.size()-1);
    // [C] Native undo/redo delete before attempting reinsertion. A capacity
    // failure retains deletion and still advances cursor by the saved length.
    if (record.inserted)
        (void)replace(edit, begin, end, {}, flags, false);
    if (!record.removed.empty())
        (void)replace(edit, begin, begin, record.removed, flags, false);
    edit.cursor = begin + ReI32(record.removed.size());
    to.push_back(re::re_move(inverse));
}

} // namespace
void clamp_cursor(ImguiTextInputEdit &edit) {
    const auto count = ReI32(edit.text.size());
    if (has_selection(edit)) {
        edit.selection_start = re::re_min(edit.selection_start, count);
        edit.selection_end = re::re_min(edit.selection_end, count);
        if (!has_selection(edit))
            edit.cursor = edit.selection_start;
    }
    edit.cursor = re::re_min(edit.cursor, count);
}
bool has_selection(const ImguiTextInputEdit &edit) {
    return edit.selection_start != edit.selection_end;
}
re::RePair<ReI32, ReI32> selection(const ImguiTextInputEdit &edit) {
    return re::re_make_pair(re::re_min(edit.selection_start, edit.selection_end), re::re_max(edit.selection_start, edit.selection_end));
}
void select_all(ImguiTextInputEdit &edit) {
    edit.cursor = edit.selection_end = ReI32(edit.text.size());
    edit.selection_start = 0;
    edit.has_preferred_x = false;
}
ReI32 word_left(const ImguiTextInputEdit &edit, ReI32 cursor) {
    while (--cursor >= 0)
        if (boundary(edit, cursor, false))
            return cursor;
    return 0;
}
ReI32 word_right(const ImguiTextInputEdit &edit, ReI32 cursor, bool mac) {
    const auto size = ReI32(edit.text.size());
    for (++cursor; cursor < size; ++cursor)
        if (boundary(edit, cursor, mac))
            break;
    return re::re_min(cursor, size);
}
bool replace(ImguiTextInputEdit &edit, ReI32 begin, ReI32 end,
             re::ReSpan<const ReU16> input, ReU32 flags, bool record) {
    begin = re::re_clamp(begin, 0, ReI32(edit.text.size()));
    end = re::re_clamp(end, begin, ReI32(edit.text.size()));
    const auto removed_bytes =
        byte_count(re::ReSpan(edit.text).subspan(ReUSize(begin), ReUSize(end - begin)));
    const auto inserted_bytes = byte_count(input);
    if (!(flags & text_callback_resize) &&
        edit.length_a - removed_bytes + inserted_bytes + 1 > edit.capacity)
        return false;
    if (record)
        remember(edit, begin, end, ReI32(input.size()));
    // [I] Input may borrow the same owned vector. Preserve native move source first.
    const re::ReVector<ReU16> copied(input.begin(), input.end());
    edit.text.erase(edit.text.begin() + begin, edit.text.begin() + end);
    edit.text.insert(edit.text.begin() + begin, copied.begin(), copied.end());
    edit.length_a += inserted_bytes - removed_bytes;
    edit.cursor = begin + ReI32(copied.size());
    edit.selection_start = edit.selection_end = edit.cursor;
    edit.text_a_valid = false;
    edit.value_edited = true;
    reset_after_key(edit);
    return true;
}
void key(MenuControlsState &state, ImguiTextInputEdit &edit, ReU32 code,
         ReU32 flags) {
    const auto shift = (code & 0x400000u) != 0;
    code &= ~0x400000u;
    clamp_cursor(edit);
    // [C] Literal native INSERT token is0x2d, overlapping typed '-'.
    if (code == 0x2d) {
        edit.overwrite = !edit.overwrite;
        reset_after_key(edit);
        return;
    }
    if (code < 0x200000u) {
        // [C] Full3c690c has no KEYTOTEXT/default insertion case. Ordinary
        // character tokens fall through to3c7a40; wrapper3c2e94 still follows
        // cursor and resets animation. Clipboard3c7ab4 inserts separately.
        reset_after_key(edit);
        return;
    }
    const auto [begin, end] = selection(edit);
    auto next = edit.cursor;
    switch (code) {
    case 0x200000:
        next = has_selection(edit) && !shift ? begin : re::re_max(edit.cursor - 1, 0);
        break;
    case 0x200001:
        next = has_selection(edit) && !shift
                   ? end
                   : re::re_min(edit.cursor + 1, ReI32(edit.text.size()));
        break;
    case 0x200002:
    case 0x200003:
    case 0x20000e:
    case 0x20000f: {
        const bool down = code == 0x200003 || code == 0x20000f;
        const auto rows = code == 0x20000e || code == 0x20000f ? edit.rows_per_page : 1;
        auto start = line_begin(edit, edit.cursor);
        float preferred = 0;
        if (edit.has_preferred_x)
            preferred = edit.preferred_x;
        else
            for (auto index = start; index < edit.cursor; ++index)
                preferred += advance(state, at(edit, index));
        for (ReI32 row = 0; row < rows; ++row) {
            if (down) {
                const auto end_of_row = line_end(edit, start);
                if (ReUSize(end_of_row) >= edit.text.size())
                    break;
                start = end_of_row + 1;
            } else {
                if (!start)
                    break;
                start = line_begin(edit, start - 1);
            }
        }
        next = start;
        float x = 0;
        while (ReUSize(next) < edit.text.size() && at(edit, next) != '\n') {
            const auto width = advance(state, at(edit, next));
            if (x + width > preferred)
                break;
            x += width;
            ++next;
        }
        move(edit, next, shift);
        reset_after_key(edit);
        edit.has_preferred_x = true;
        edit.preferred_x = preferred;
        return;
    }
    case 0x200004:
        next = edit.single_line
                   ? 0
                   : line_begin(edit, has_selection(edit) && !shift ? begin : edit.cursor);
        break;
    case 0x200005:
        next = edit.single_line
                   ? ReI32(edit.text.size())
                   : line_end(edit, has_selection(edit) && !shift ? begin : edit.cursor);
        break;
    case 0x200006:
    case 0x200007:
        next = code == 0x200006 ? 0 : ReI32(edit.text.size());
        if (shift)
            move(edit, next, true);
        else {
            edit.cursor = next;
            edit.selection_start = edit.selection_end = 0;
        }
        reset_after_key(edit);
        return;
    case 0x20000c:
        next = has_selection(edit) && !shift ? begin
               : flags & text_password       ? 0
                                             : word_left(edit, edit.cursor);
        break;
    case 0x20000d:
        next = has_selection(edit) && !shift ? end
               : flags & text_password
                   ? ReI32(edit.text.size())
                   : word_right(edit, edit.cursor,
                                read<ReU8>(state, context(state) + 0x79, 0x3c318f) != 0);
        break;
    case 0x200008:
        if (has_selection(edit))
            (void)replace(edit, begin, end, {}, flags);
        else if (ReUSize(edit.cursor) < edit.text.size())
            (void)replace(edit, edit.cursor, edit.cursor + 1, {}, flags);
        return;
    case 0x200009:
        if (has_selection(edit))
            (void)replace(edit, begin, end, {}, flags);
        else if (edit.cursor > 0)
            (void)replace(edit, edit.cursor - 1, edit.cursor, {}, flags);
        return;
    case 0x20000a:
        history(edit, false, flags);
        reset_after_key(edit);
        return;
    case 0x20000b:
        history(edit, true, flags);
        reset_after_key(edit);
        return;
    default:
        reset_after_key(edit);
        return;
    }
    move(edit, next, shift);
    reset_after_key(edit);
}
} // namespace rust_internal_re::text_input_detail
