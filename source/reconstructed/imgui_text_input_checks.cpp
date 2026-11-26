#include "imgui_text_input_internal.hpp"
#include "menu_tooltip_fixture.hpp"
namespace rust_internal_re {
void check_imgui_text_input_controller();
void check_imgui_text_input_effects();
void check_imgui_text_input_fonts();
void check_imgui_text_input_branches();
void check_imgui_text_input_events();
void check_imgui_text_input_history();
void check_imgui_text_input_reconstruction() {
    check_imgui_text_input_controller();
    check_imgui_text_input_effects();
    check_imgui_text_input_fonts();
    check_imgui_text_input_branches();
    check_imgui_text_input_events();
    check_imgui_text_input_history();
    using menu_test_detail::expect;
    {
        ReUSize consumed = 0;
        auto wide = imgui_text_input_decode_393ba4("A\xc3\xa9\xf0\x9f\x98\x80", 8, &consumed);
        expect(wide == re::ReVector<ReU16>{'A', 0xe9, 0xfffd} && consumed == 7,
               "39357c rejects scalars aboveFFFF before393ba4 stores the16bit replacement");
        wide = imgui_text_input_decode_393ba4("abc", 2, &consumed);
        expect(wide == re::ReVector<ReU16>{'a'} && consumed == 1,
               "393ba4 native capacity reserves final UTF16 NUL slot");
        const re::ReArray<ReU16, 4> units{'A', 0xe9, 0xd800, 0xdc00};
        expect(imgui_text_input_encode_393c38(units) == "A\xc3\xa9\xed\xa0\x80\xed\xb0\x80",
               "393a04 encodes raw16bit surrogate units as three bytes without repair");
    }
    {
        menu_test_detail::MenuFixture f;
        f.put(menu_test_detail::MenuFixture::c + 0x5bf8, ReI8('.'));
        auto accepts = [&](ReU32 c, ReU32 flags, ReU32 source = 2) {
            return imgui_text_input_filter_3c2a80(f.state, c, flags, {}, 0, source);
        };
        expect(!accepts('\n', 0) && accepts('\n', text_multiline) && !accepts('\t', 0) &&
                   accepts('\t', text_allow_tab),
               "filter control exceptions require native multiline/tab flags");
        expect(!accepts(127, 0) && !accepts(0xe000, 0) && accepts(127, 0, 4) &&
                   accepts(0xe000, 0, 4) && !accepts(0x10000, 0, 4),
               "filter clipboard source4 bypasses DEL/private-use but retains16bit bound");
        expect(accepts('9', text_decimal) && accepts('.', text_decimal) &&
                   accepts('-', text_decimal) && accepts('/', text_decimal) &&
                   !accepts('e', text_decimal) && accepts('e', text_scientific) &&
                   !accepts('z', text_scientific),
               "literal decimal/scientific character masks and decimal point");
        auto c = ReU32(0xff46);
        expect(imgui_text_input_filter_3c2a80(f.state, c, text_hexadecimal | text_uppercase, {}, 0,
                                              2) &&
                   c == 'F',
               "fullwidth hexadecimal conversion precedes uppercase");
        expect(!accepts(0x3000, text_no_blank) && !accepts(' ', text_no_blank),
               "blank filter includes Japanese space");
        c = 'a';
        const ImguiTextInputCallback callback = [&](ImguiTextInputCallbackData &data) {
            expect(data.event == text_callback_char_filter && data.character == 'A' &&
                       data.user == 0x1234,
                   "character callback receives postfilter value and exact event/user");
            data.character = 'Z';
            return 0;
        };
        expect(imgui_text_input_filter_3c2a80(
                   f.state, c, text_hexadecimal | text_uppercase | text_callback_char_filter,
                   callback, 0x1234, 2) &&
                   c == 'Z',
               "callback replacement is not run through hexadecimal filter again");
        bool failed = false;
        {
            (void)imgui_text_input_filter_3c2a80(f.state, c, text_callback_char_filter, {}, 0, 2);
        }
        expect(failed, "reached missing local character callback does not succeed");
    }
    {
        menu_test_detail::MenuFixture f;
        ImguiTextInputEdit edit;
        edit.text = {'a', 'b', 'c'};
        edit.cursor = edit.selection_start = edit.selection_end = 3;
        edit.length_a = 3;
        edit.capacity = 64;
        text_input_detail::key(f.state, edit, 'X', 0);
        expect(edit.text == re::ReVector<ReU16>{'a', 'b', 'c'},
               "literal dispatcher drops ordinary typed characters");
        const ReU16 inserted = 'X';
        (void)text_input_detail::replace(edit, 3, 3, re::ReSpan(&inserted, 1), 0);
        expect(edit.text == re::ReVector<ReU16>{'a', 'b', 'c', 'X'},
               "owned paste insertion primitive mutates text/cursor/byte length");
        text_input_detail::key(f.state, edit, 0x20000a, 0);
        expect(edit.text == re::ReVector<ReU16>{'a', 'b', 'c'},
               "owned bounded undo restores previous insertion");
        text_input_detail::key(f.state, edit, 0x20000b, 0);
        expect(edit.text == re::ReVector<ReU16>{'a', 'b', 'c', 'X'},
               "owned bounded redo reapplies insertion");
        const auto unchanged = edit.text;
        text_input_detail::key(f.state, edit, '-', 0);
        expect(edit.overwrite && edit.text == unchanged,
               "literal native0x2d token toggles overwrite even for typed minus");
        edit.overwrite = false;
        edit.text = {'a', 'b', 'c'};
        edit.length_a = 3;
        edit.capacity = 4;
        edit.cursor = edit.selection_start = 1;
        edit.selection_end = 2;
        (void)text_input_detail::replace(edit, 1, 2, {}, 0);
        const ReU16 euro = 0x20ac;
        (void)text_input_detail::replace(edit, 1, 1, re::ReSpan(&euro, 1), 0);
        expect(edit.text == re::ReVector<ReU16>{'a', 'c'} && edit.length_a == 2,
               "STB failed multibyte insertion retains preceding selected-text deletion");
        edit.text = {'a', 'b', ' ', 'c', 'd', ',', 'e', 'f'};
        expect(text_input_detail::word_left(edit, 8) == 6 &&
                   text_input_detail::word_right(edit, 3, false) == 5 &&
                   text_input_detail::word_right(edit, 3, true) == 6,
               "native punctuation and Mac/nonMac word boundaries differ");
        expect(text_input_detail::locate(f.state, edit, {2.49f, 0}) == 0 &&
                   text_input_detail::locate(f.state, edit, {2.5f, 0}) == 1,
               "native cursor location uses half-glyph position");
    }
    {
        menu_test_detail::MenuFixture f;
        ImguiTextInputApi api;
        f.put(0x27fa18, Address(0xabc0));
        f.put(0x27fa20, Address(0xabc8));
        f.put(0x405b68, Address(0xabc));
        Address next = 0x50000;
        api.allocation.allocate = [&](Address, Address, ReUSize bytes) {
            const auto data = next;
            next += bytes + 0x100;
            return data;
        };
        api.allocation.free = [](Address, Address, Address) {};
        ImguiTextInputEdit edit;
        edit.id = 0x1234;
        edit.text = {'A', 0xe9};
        edit.text_a = "A\xc3\xa9";
        edit.length_a = 3;
        edit.text_a_valid = true;
        edit.initial = "before";
        edit.cursor = 2;
        edit.selection_start = 1;
        edit.selection_end = 2;
        edit.capacity = 64;
        imgui_text_input_sync(f.state, api, edit);
        const auto c = menu_test_detail::MenuFixture::c;
        expect(f.get<ReU32>(c + 0x4c20) == 0x1234 && f.get<ReI32>(c + 0x4c28) == 3,
               "synchronized deactivationID/length retain exact native fields");
        const auto data = f.get<Address>(c + 0x4c48);
        expect(f.get<re::ReArray<char, 4>>(data) ==
                   re::ReArray<char, 4>{'A', char(0xc3), char(0xa9), 0},
               "deactivation pointer sees exported UTF8 including terminating byte");
        edit.text_a.clear();
        edit.text_a_valid = false;
        edit.length_a = 7;
        imgui_text_input_sync(f.state, api, edit);
        expect(f.get<Address>(c + 0x4c48) == data && f.get<char>(data) == 'A' &&
                   f.get<ReI32>(c + 0x4c40) == 0 && f.get<ReI32>(c + 0x4c28) == 7,
               "invalid empty UTF8 cache leaves previous backing bytes unmaterialized");
    }
}
} // namespace rust_internal_re
