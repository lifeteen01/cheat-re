#include "imgui_text_input_fixture.hpp"
namespace rust_internal_re {
void check_imgui_text_input_effects() {
    using namespace text_input_test;
    {
        Fixture f;
        auto q = f.request("abcd");
        f.active(q);
        auto &e = f.editors.editors[Fixture::c];
        e.selection_start = 1;
        e.selection_end = e.cursor = 3;
        f.put(Fixture::c + 0xb0, Address(0xc11f));
        f.input.clipboard_get = [&](Address target, Address) {
            expect(target == 0xc11f, "paste uses configured numeric getter");
            return re::ReOptional<re::ReString>("\xc3\xa9");
        };
        f.route(0x237, 0x1000, e.id);
        f.put(Fixture::c + 0xe28, 0x1000u);
        f.put(Fixture::c + 0xe24, ReU8(1));
        f.down(0x237);
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && r.changed &&
                   text_input_detail::buffer_text(q) == "a\xc3\xa9"
                                                        "d",
               "root paste decodes UTF8 and replaces selected UTF16 through owned clipboard leaf");
    }
    {
        Fixture f;
        auto q = f.request("abc");
        f.active(q);
        auto &e = f.editors.editors[Fixture::c];
        e.selection_start = 1;
        e.selection_end = e.cursor = 2;
        f.put(Fixture::c + 0xb8, Address(0xc11f));
        bool called = false;
        f.input.clipboard_set = [&](Address target, Address, re::ReStringView value) {
            expect(target == 0xc11f && value == "b", "copy selected text is exact UTF8");
            called = true;
        };
        f.route(0x224, 0x1000, e.id);
        f.put(Fixture::c + 0xe28, 0x1000u);
        f.down(0x224);
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && !r.changed && called,
               "copy leaves editor value unchanged after supplied owned clipboard effect");
    }
    {
        Fixture f;
        auto q = f.request("abcdef", text_no_horizontal_scroll);
        f.active(q);
        auto &e = f.editors.editors[Fixture::c];
        e.selection_start = 1;
        e.selection_end = 4;
        e.edited = true;
        e.scroll_x = 99;
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && e.scroll_x == 0 && !e.edited &&
                   f.rectangles.size() == 2,
               "selection adds concrete clipped background and NoHorizontalScroll resets scrollX");
        const auto selected = f.rectangles.back();
        expect(selected.minimum.x == 9 && selected.maximum.x == 24 && selected.minimum.y == 2 &&
                   selected.maximum.y == 15,
               "single-line selection literal top-minus1 and bottom-plus2 geometry");
    }
    {
        Fixture f;
        auto q = f.request("old");
        const auto identifier = menu_detail::id(f.state, q.label);
        f.put(Fixture::c + 0x5aa8, identifier);
        f.put(Fixture::c + 0x5ab0, 4);
        f.put(Fixture::c + 0x5ab8, Address(0x49000));
        f.put(0x49000, re::ReArray<char, 4>{'n', 'e', 'w', 0});
        f.put(Fixture::c + 0x3f98, identifier);
        f.put(Fixture::c + 0x3f9d, ReU8(1));
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(
            r.result.status == UnityStatus::complete && r.changed &&
                text_input_detail::buffer_text(q) == "new" &&
                !f.get<ReU32>(Fixture::c + 0x5aa8),
            "inactive matching DeactivatedAfterEdit consumes retained text and clears pending ID");
    }
    {
        Fixture f;
        auto q = f.request("a", text_callback_resize | text_callback_edit);
        f.active(q);
        f.down(0x20b);
        re::ReVector<ReU32> events;
        q.callback = [&](ImguiTextInputCallbackData &d) {
            events.push_back(d.event);
            if (d.event == text_callback_edit) {
                d.text = "changed";
                d.text_length = 7;
                d.cursor = d.selection_start = d.selection_end = 7;
                d.dirty = true;
            } else {
                expect(d.event == text_callback_resize && d.text_length == 7,
                       "resize callback observes edited desired length");
                d.capacity = 4;
            }
            return 0;
        };
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && r.changed &&
                   events == re::ReVector<ReU32>{text_callback_edit, text_callback_resize} &&
                   q.buffer.size() == 4 && text_input_detail::buffer_text(q) == "cha",
               "resize runs after edit and honors callback capacity before bounded copy");
    }
}
} // namespace rust_internal_re
