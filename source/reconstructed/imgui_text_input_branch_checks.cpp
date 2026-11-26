#include "imgui_text_input_fixture.hpp"
namespace rust_internal_re {
void check_imgui_text_input_branches() {
    using namespace text_input_test;
    {
        Fixture f;
        auto q = f.request("ab", text_callback_always);
        f.active(q);
        q.callback = [](ImguiTextInputCallbackData &d) {
            d.text[0] = 'X';
            return 0;
        };
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && r.changed &&
                   text_input_detail::buffer_text(q) == "Xb" &&
                   f.editors.editors[Fixture::c].text.front() == 'a',
               "callback Buf writes without Dirty alter UTF8 cache but retain native stale UTF16 "
               "text");
    }
    {
        Fixture f;
        auto q = f.request("ab", text_callback_always);
        f.active(q);
        q.callback = [](ImguiTextInputCallbackData &d) {
            d.text = "XYZ";
            return 0;
        };
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(
            r.result.status == UnityStatus::complete && r.changed &&
                text_input_detail::buffer_text(q) == "XY" &&
                f.editors.editors[Fixture::c].text_a == "XYZ" &&
                f.editors.editors[Fixture::c].length_a == 2 &&
                f.rendered == re::ReVector<re::ReString>{"XY"},
            "nondirty callback changing byte length retains stale CurLenA for copy and draw end");
    }
    {
        Fixture f;
        auto q = f.request("ab", text_callback_always | text_read_only);
        f.active(q);
        q.callback = [](ImguiTextInputCallbackData &d) {
            d.text[0] = 'X';
            return 0;
        };
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && !r.changed &&
                   text_input_detail::buffer_text(q) == "Xb",
               "readonly callback still borrows caller Buf and preserves callback writes");
    }
    {
        Fixture f;
        auto q = f.request("a");
        f.active(q);
        const auto identifier = f.editors.editors[Fixture::c].id;
        f.put(Fixture::c + 0xb8, Address(0x111));
        bool called = false;
        f.input.clipboard_set = [&](Address, Address, re::ReStringView) { called = true; };
        f.route(0x224, 0x1000, identifier);
        f.put(Fixture::c + 0xe28, 0x1000u);
        f.down(0x224);
        const auto allocation = f.input.allocation.allocate;
        f.input.allocation.allocate = [&](Address target, Address user, ReUSize n) {
            const auto p = allocation(target, user, n);
            f.put(Fixture::c + 0xb8, Address(0));
            return p;
        };
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && !called,
               "clipboard setter marker is reread after owned temporary allocation callback");
    }
    {
        Fixture f;
        auto q = f.request("a");
        f.active(q);
        const auto identifier = f.editors.editors[Fixture::c].id;
        f.route(0x237, 0x1000, identifier);
        f.put(Fixture::c + 0xe28, 0x1000u);
        f.down(0x237);
        Address temporary = 0;
        bool freed = false;
        const auto allocate = f.input.allocation.allocate;
        const auto free = f.input.allocation.free;
        f.input.allocation.allocate = [&](Address target, Address user, ReUSize n) {
            const auto p = allocate(target, user, n);
            if (n == 2)
                temporary = p;
            return p;
        };
        f.input.allocation.free = [&](Address target, Address user, Address object) {
            freed |= temporary && object == temporary;
            free(target, user, object);
        };
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(
            r.result.status == UnityStatus::complete && !r.changed && temporary && freed,
            "absent getter yields nonnull empty literal and still allocates/frees paste temporary");
    }
    {
        Fixture f;
        auto q = f.request("12");
        f.active(q);
        f.queued({'A', '-', 'B'});
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        const auto &edit = f.editors.editors[Fixture::c];
        expect(r.result.status == UnityStatus::complete && !r.changed && edit.overwrite &&
                   text_input_detail::buffer_text(q) == "12",
               "full root consumes ordinary tokens while literal minus toggles overwrite only");
    }
    {
        Fixture f;
        auto q = f.request("11223344");
        q.label = "##Input";
        f.active(q);
        const auto identifier = f.editors.editors[Fixture::c].id;
        f.route(0x237, 0x1000, identifier);
        f.down(0x237);
        f.put(Fixture::c + 0xe28, 0x1000u);
        f.put(Fixture::c + 0xb0, Address(0xc11f));
        f.input.clipboard_get = [](Address, Address) { return re::ReOptional<re::ReString>("FF"); };
        MenuColorPickerHexInput hex;
        re::re_copy(q.buffer.begin(), q.buffer.end(), hex.buffer.begin());
        hex.size = q.size;
        auto picker = bind_imgui_text_input_picker(f.state, f.editors, f.input);
        expect(picker.hex_input_3c0538(hex) && re::ReString(hex.buffer.data()) == "11223344FF",
               "picker hex binder runs concrete editor and returns owned fixed-buffer mutation");
    }
    {
        Fixture f;
        auto q = f.request("a\nb\nc", text_multiline);
        f.active(q);
        auto &e = f.editors.editors[Fixture::c];
        e.edited = true;
        ImguiTextInputResult out;
        text_input_detail::Frame frame{f.state, f.editors, f.input, q, out};
        frame.controls = f.api;
        frame.c = Fixture::c;
        frame.inner = frame.parent = Fixture::w;
        frame.flags = q.flags;
        frame.multiline = true;
        frame.edit = &e;
        frame.render_cursor = true;
        frame.box = {0, 0, 30, 20};
        frame.size = {30, 20};
        frame.scroll_y = 0;
        frame.use_cached = true;
        text_input_detail::render(frame);
        expect(
            f.get<float>(Fixture::w + 0x88) == 16 && f.get<Vec2>(Fixture::c + 0x5bdc).y == 4 &&
                !e.edited,
            "multiline caret follow clamps scroll and updates text origin and copied IME position");
    }
    {
        Fixture f;
        auto q = f.request("abc");
        f.put(Fixture::c + 0x3748, ReU8(1));
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete &&
                   f.get<ReU32>(Fixture::c + 0x3f68) == r.id &&
                   f.editors.editors[Fixture::c].initial == "abc",
               "inactive clicked root concretely initializes editor, deactivates prior state and "
               "activates ID");
    }
}
} // namespace rust_internal_re
