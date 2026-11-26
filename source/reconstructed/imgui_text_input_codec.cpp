#include "imgui_text_input_analysis.hpp"
#include "menu_controls_internal.hpp"
namespace rust_internal_re {
re::ReVector<ReU16> imgui_text_input_decode_393ba4(re::ReStringView text,
                                                          ReUSize maximum_units,
                                                          ReUSize *consumed) {
    re::ReVector<ReU16> units;
    ReUSize at = 0;
    while (at < text.size() && text[at] && units.size() + 1 < maximum_units) {
        const auto decoded = renderer_utf8_39357c(text, at);
        if (!decoded.consumed)
            break;
        // [C]393bf4/393bfc store16bits;39357c first rejects scalars aboveFFFF.
        units.push_back(ReU16(decoded.codepoint));
        at += decoded.consumed;
    }
    if (consumed)
        *consumed = at;
    return units;
}
re::ReString imgui_text_input_encode_393c38(re::ReSpan<const ReU16> text) {
    re::ReString bytes;
    for (const auto c : text) {
        if (!c)
            break;
        if (c < 0x80)
            bytes.push_back(char(c));
        else if (c < 0x800) {
            bytes.push_back(char(0xc0 | (c >> 6)));
            bytes.push_back(char(0x80 | (c & 63)));
        } else {
            bytes.push_back(char(0xe0 | (c >> 12)));
            bytes.push_back(char(0x80 | ((c >> 6) & 63)));
            bytes.push_back(char(0x80 | (c & 63)));
        }
    }
    return bytes;
}
bool imgui_text_input_filter_3c2a80(MenuControlsState &s, ReU32 &character,
                                    ReU32 flags, const ImguiTextInputCallback &callback,
                                    Address user, ReU32 source) {
    auto c = character;
    bool printable = true;
    if (c < 32) {
        const bool newline = c == '\n' && (flags & text_multiline);
        const bool tab = c == '\t' && (flags & text_allow_tab);
        if (!newline && !tab)
            return false;
        printable = false;
    }
    if (source != 4 && (c == 127 || c - 0xe000u <= 0x18ffu))
        return false;
    if (c > 0xffffu)
        return false;
    if (printable && (flags & 0x2000fu)) {
        const auto decimal = ReI32(
            menu_detail::read<ReI8>(s, menu_detail::context(s) + 0x5bf8, 0x3c2b17));
        if ((flags & 0x20003u) && c - 0xff01u <= 0x5du)
            c -= 0xfee0u;
        if ((flags & text_decimal) && c - '0' > 9 && c != ReU32(decimal)) {
            if (c > 47 || !(0xac0000000000ULL & (1ULL << (c & 63))))
                return false;
        }
        if ((flags & text_scientific) && c - '0' > 9 && c != ReU32(decimal)) {
            const auto index = c - 42;
            if (index > 59 || !(0x80000000800002bULL & (1ULL << (index & 63))))
                return false;
        }
        if (flags & text_hexadecimal) {
            const auto index = c - 48;
            if (index > 54 || !(0x7e0000007e03ffULL & (1ULL << (index & 63))))
                return false;
        }
        if ((flags & text_uppercase) && c - 'a' <= 25)
            c -= 32;
        if ((flags & text_no_blank) && renderer_blank_3a4b10(c))
            return false;
        character = c;
    }
    if (flags & text_callback_char_filter) {
        if (!callback)
            __builtin_trap();
        ImguiTextInputCallbackData data;
        data.event = text_callback_char_filter;
        data.flags = flags;
        data.user = user;
        data.character = ReU16(c);
        if (callback(data))
            return false;
        character = ReU16(data.character);
        return character != 0;
    }
    return true;
}
} // namespace rust_internal_re
