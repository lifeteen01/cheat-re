#include "imgui_text_input_internal.hpp"
namespace rust_internal_re {
namespace {
using namespace text_input_detail;
template <class T>
void export_vector(MenuControlsState &s, const ImguiTextInputApi &api, Address descriptor,
                   re::ReSpan<const T> bytes) {
    const auto old_capacity = read<ReI32>(s, descriptor + 4, 0x37a69c);
    auto data = read<Address>(s, descriptor + 8, 0x37a69c);
    const auto required = ReI32(bytes.size());
    if (old_capacity < 0 || bytes.size() > api.maximum_characters + 1)
        __builtin_trap();
    if (required > old_capacity) {
        const auto capacity = draw_core_growth_362efc(old_capacity, required);
        const auto allocation = draw_core_allocate_395158(
            *s.image, ReUSize(capacity) * sizeof(T), api.allocation.allocate);
        if (!allocation)
            { __builtin_trap(); }
        // [I] Owned-state exporter copies known payload, not uninitialized capacity.
        // The old numerical backing store is released through the supplied data effect.
        const auto old_data = read<Address>(s, descriptor + 8, 0x37a69c);
        if (old_data)
            draw_core_free_39517c(*s.image, old_data, api.allocation.free);
        write(s, descriptor + 8, allocation, 0x37a69c);
        write(s, descriptor + 4, capacity, 0x37a69c);
        data = allocation;
    }
    write(s, descriptor, required, 0x37ad04);
    for (ReUSize i = 0; i < bytes.size(); ++i)
        write(s, data + i * sizeof(T), bytes[i], 0x3c8d4c);
}
} // namespace
void imgui_text_input_sync(MenuControlsState &s, const ImguiTextInputApi &api,
                           const ImguiTextInputEdit &edit) {
    using namespace text_input_detail;
    const auto c = context(s), e = c + 0x4c18;
    auto wide = edit.text;
    wide.push_back(0);
    auto utf8 = edit.text_a;
    utf8.push_back(0);
    auto initial = edit.initial;
    initial.push_back(0);
    export_vector<ReU16>(s, api, e + 0x18, wide);
    if (edit.text_a_valid || !edit.text_a.empty())
        export_vector<char>(s, api, e + 0x28, re::ReSpan<const char>(utf8.data(), utf8.size()));
    else
        write(s, e + 0x28, ReI32(0), 0x37acd4);
    export_vector<char>(s, api, e + 0x38, re::ReSpan<const char>(initial.data(), initial.size()));
    write(s, e + 8, edit.id, 0x3c0b24);
    write(s, e + 0xc, ReI32(edit.text.size()), 0x3c0b6f);
    write(s, e + 0x10, edit.length_a, 0x3c0b7e);
    write(s, e + 0x48, ReU8(edit.text_a_valid), 0x3c0b62);
    write(s, e + 0x4c, edit.capacity, 0x3c0f45);
    write(s, e + 0x50, edit.scroll_x, 0x3c0bb1);
    write(s, e + 0x54, edit.cursor, 0x3bfd7e);
    write(s, e + 0x58, edit.selection_start, 0x3bfd8f);
    write(s, e + 0x5c, edit.selection_end, 0x3bfd98);
    write(s, e + 0x60, ReU8(edit.overwrite), 0x3c0c0d);
    write(s, e + 0x64, edit.rows_per_page, 0x3c130a);
    write(s, e + 0x6a, ReU8(edit.has_preferred_x), 0x3c38a0);
    write(s, e + 0x6b, ReU8(edit.single_line), 0x3c6492);
    write(s, e + 0xe80, edit.cursor_animation, 0x3bfd58);
    write(s, e + 0xe84, ReU8(edit.edited), 0x3c2eac);
    write(s, e + 0xe85, ReU8(edit.mouse_lock), 0x3c0fa7);
    write(s, e + 0xe86, ReU8(edit.value_edited), 0x3c0f49);
}
} // namespace rust_internal_re
namespace rust_internal_re::text_input_detail {
re::ReString buffer_text(const ImguiTextInputRequest &request) {
    const auto end = re::re_find(request.buffer.begin(), request.buffer.end(), '\0');
    if (!end)
        { __builtin_trap(); }
    return re::ReString(request.buffer.begin(), static_cast<ReUSize>(end - request.buffer.begin()));
}
ImguiTextInputEdit import_edit(MenuControlsState &s, const ImguiTextInputApi &api) {
    const auto e = context(s) + 0x4c18;
    ImguiTextInputEdit edit;
    edit.id = read<ReU32>(s, e + 8, 0x3bfef4);
    if (!edit.id)
        return edit;
    const auto count = read<ReI32>(s, e + 0xc, 0x3bfd68);
    if (count < 0 || ReUSize(count) > api.maximum_characters)
        __builtin_trap();
    const auto data = read<Address>(s, e + 0x20, 0x3c2f30);
    for (ReI32 i = 0; i < count; ++i)
        edit.text.push_back(read<ReU16>(s, data + Address(i) * 2, 0x3c2f30));
    const auto initial = read<Address>(s, e + 0x40, 0x3c1bca);
    edit.initial = initial ? raw_text(s, initial, api.maximum_characters) : re::ReString{};
    edit.length_a = read<ReI32>(s, e + 0x10, 0x3c0b7e);
    const auto cached_count = read<ReI32>(s, e + 0x28, 0x393c38);
    if (cached_count < 0 || ReUSize(cached_count) > api.maximum_characters + 1)
        __builtin_trap();
    const auto cached = read<Address>(s, e + 0x30, 0x393c38);
    for (ReI32 i = 0; i + 1 < cached_count; ++i)
        edit.text_a.push_back(char(read<ReU8>(s, cached + Address(i), 0x393c38)));
    edit.text_a_valid = read<ReU8>(s, e + 0x48, 0x3c0e53);
    edit.capacity = read<ReI32>(s, e + 0x4c, 0x3c0f45);
    edit.scroll_x = read<float>(s, e + 0x50, 0x3c0fca);
    edit.cursor = read<ReI32>(s, e + 0x54, 0x3bfd6e);
    edit.selection_start = read<ReI32>(s, e + 0x58, 0x3bfd7a);
    edit.selection_end = read<ReI32>(s, e + 0x5c, 0x3bfd8b);
    edit.overwrite = read<ReU8>(s, e + 0x60, 0x3c0c0d);
    edit.rows_per_page = read<ReI32>(s, e + 0x64, 0x3c130a);
    edit.has_preferred_x = read<ReU8>(s, e + 0x6a, 0x3c38a0);
    edit.single_line = read<ReU8>(s, e + 0x6b, 0x3c0a18);
    edit.cursor_animation = read<float>(s, e + 0xe80, 0x3bfd58);
    edit.edited = read<ReU8>(s, e + 0xe84, 0x3c2eac);
    edit.mouse_lock = read<ReU8>(s, e + 0xe85, 0x3c0fa7);
    edit.value_edited = read<ReU8>(s, e + 0xe86, 0x3c0f49);
    // [I] Import the native99-record/999-unit STB pool once. Subsequent calls
    // share the owned editor and history rather than reimport stale pool bytes.
    const auto undo_count = read<ReI16>(s, e + 0xe72, 0x3c5ed4);
    const auto redo_begin = read<ReI16>(s, e + 0xe74, 0x3c619c);
    if (undo_count < 0 || undo_count > 99 || redo_begin < undo_count || redo_begin > 99)
        __builtin_trap();
    const auto record = [&](ReI32 index) {
        const auto at = e + 0x74 + Address(index) * 16;
        ImguiTextInputUndo result;
        result.position = read<ReI32>(s, at, 0x3c5f78);
        const auto saved = read<ReI32>(s, at + 4, 0x3c5f7a);
        result.inserted = read<ReI32>(s, at + 8, 0x3c5f7d);
        const auto offset = read<ReI32>(s, at + 12, 0x3c5f93);
        if (saved < 0 || result.inserted < 0 || result.position < 0 || saved > 999 ||
            (saved && (offset < 0 || offset > 999 - saved)))
            __builtin_trap();
        for (ReI32 i = 0; i < saved; ++i)
            result.removed.push_back(
                read<ReU16>(s, e + 0x6a4 + Address(offset + i) * 2, 0x3c5fa7));
        return result;
    };
    for (ReI32 i = 0; i < undo_count; ++i)
        edit.undo.push_back(record(i));
    for (ReI32 i = 98; i >= redo_begin; --i)
        edit.redo.push_back(record(i));
    return edit;
}
} // namespace rust_internal_re::text_input_detail
