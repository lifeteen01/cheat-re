#include "imgui_text_input_fixture.hpp"
namespace rust_internal_re {
void check_imgui_text_input_history() {
    using namespace text_input_test;
    {
        Fixture f;
        auto q = f.request("ac");
        f.active(q);
        const auto e = Fixture::c + 0x4c18;
        f.put(e + 0xe72, ReI16(1));
        f.put(e + 0xe74, ReI16(99));
        f.put(e + 0x74, re::ReArray<ReI32, 4>{1, 1, 0, 0});
        f.put(e + 0x6a4, ReU16('b'));
        auto imported = text_input_detail::import_edit(f.state, f.input);
        text_input_detail::key(f.state, imported, 0x20000a, 0);
        expect(imported.text == re::ReVector<ReU16>{'a', 'b', 'c'},
               "native undo descriptor/payload import restores retained deletion");
        text_input_detail::key(f.state, imported, 0x20000b, 0);
        expect(imported.text == re::ReVector<ReU16>{'a', 'c'},
               "imported deletion undo creates matching redo record");
    }
    {
        Fixture f;
        ImguiTextInputEdit e;
        e.text = {'x'};
        e.length_a = 1;
        e.capacity = 2000;
        e.undo.push_back({0, 1, re::ReVector<ReU16>(998, 'A')});
        text_input_detail::key(f.state, e, 0x20000a, 0);
        expect(
            e.text.size() == 998 && e.redo.back().removed.empty() && e.redo.back().inserted == 998,
            "literal undo room test rejects equality999 while retaining inverse deletion length");
        text_input_detail::key(f.state, e, 0x20000b, 0);
        expect(e.text.empty(),
               "native insufficient inverse payload makes subsequent redo delete only");
    }
    {
        Fixture f;
        ImguiTextInputEdit e;
        e.text = {'a', 'b'};
        e.length_a = 2;
        e.capacity = 64;
        e.cursor = e.selection_start = e.selection_end = 2;
        text_input_detail::key(f.state, e, 0x200009, text_no_undo_redo);
        expect(e.text.size() == 1 && e.undo.size() == 1,
               "NoUndoRedo gates root shortcuts but native editing still records history");
        text_input_detail::key(f.state, e, 0x20000a, 0);
        expect(e.text == re::ReVector<ReU16>{'a', 'b'},
               "record retained while NoUndoRedo can be consumed after flag changes");
        e.cursor = 1;
        text_input_detail::key(f.state, e, 0x200007, 0);
        expect(e.cursor == 2 && e.selection_start == 0 && e.selection_end == 0,
               "literal text-end command leaves both selection endpoints atzero");
    }
}
} // namespace rust_internal_re
