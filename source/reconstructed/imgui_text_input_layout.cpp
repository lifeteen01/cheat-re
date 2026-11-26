#include "imgui_text_input_internal.hpp"
namespace rust_internal_re::text_input_detail {
float advance(MenuControlsState &s, ReU16 codepoint) {
    const auto c = context(s);
    const auto font = read<Address>(s, c + 0x3c28, 0x3c2f77);
    const auto count = read<ReI32>(s, font, 0x3bfedb);
    float value;
    if (ReI32(codepoint) < count) {
        const auto data = read<Address>(s, font + 8, 0x38bb78);
        value = read<float>(s, data + Address(codepoint) * 4, 0x3bfeea);
    } else
        value = read<float>(s, font + 0x10, 0x3bfee6);
    return value * (read<float>(s, c + 0x3c30, 0x3c2f86) / read<float>(s, font + 0x14, 0x3c2f8e));
}
Vec2 measure_wide(MenuControlsState &s, re::ReSpan<const ReU16> text) {
    // [C]3c03a8 line maximum, CR skip and final-line-height conditions.
    const auto line_height = read<float>(s, context(s) + 0x3c30, 0x3c03cb);
    Vec2 measured{};
    float current = 0;
    for (const auto c : text) {
        if (c == '\n') {
            measured.x = maxss(measured.x, current);
            measured.y += line_height;
            current = 0;
        } else if (c != '\r')
            current += advance(s, c);
    }
    measured.x = maxss(measured.x, current);
    if (current > 0 || measured.y == 0)
        measured.y += line_height;
    return measured;
}
ReI32 locate(MenuControlsState &s, const ImguiTextInputEdit &edit, Vec2 p) {
    // [C]3c5fb4 row search and half-glyph horizontal selection.
    const auto line_height = read<float>(s, context(s) + 0x3c30, 0x3c30b8);
    if (p.y < 0)
        return 0;
    ReUSize begin = 0;
    float y = 0;
    for (;;) {
        auto end = begin;
        while (end < edit.text.size() && edit.text[end] != '\n')
            ++end;
        if (edit.single_line || p.y < y + line_height) {
            if (p.x < 0)
                return ReI32(begin);
            float x = 0;
            for (auto index = begin; index < end; ++index) {
                const auto width = advance(s, edit.text[index]);
                if (p.x < x + width)
                    return ReI32(index + (p.x < x + width * 0.5f ? 0 : 1));
                x += width;
            }
            return ReI32(end);
        }
        if (end == edit.text.size())
            return ReI32(end);
        begin = end + 1;
        y += line_height;
    }
}
void click(MenuControlsState &s, ImguiTextInputEdit &edit, Vec2 p, bool drag) {
    const auto cursor = locate(s, edit, p);
    if (drag) {
        if (!has_selection(edit))
            edit.selection_start = edit.cursor;
        edit.selection_end = edit.cursor = cursor;
    } else {
        edit.cursor = edit.selection_start = edit.selection_end = cursor;
    }
    edit.has_preferred_x = false;
}
} // namespace rust_internal_re::text_input_detail
