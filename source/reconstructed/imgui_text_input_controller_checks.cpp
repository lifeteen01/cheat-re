#include "imgui_text_input_fixture.hpp"
namespace rust_internal_re {
void check_imgui_text_input_controller() {
    using namespace text_input_test;
    {
        Fixture f;
        auto q = f.request();
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && !r.return_value &&
                   f.rendered == re::ReVector<re::ReString>{"ab"},
               "inactive full editor root lays out, highlights, frames and renders owned input");
        expect(f.effects.front() == "highlight" && f.rectangles.size() == 1,
               "root rendering preserves highlight before frame before text order");
        f.cursor();
        f.input.window_api = nullptr;
        const auto missing = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(missing.result.status == UnityStatus::missing_dependency &&
                   missing.result.stopped_at == 0x3997ac,
               "missing local highlight has no successful default");
    }
    {
        Fixture f;
        auto q = f.request("a", text_uppercase | text_hexadecimal);
        f.active(q);
        f.queued({'b', 'g', '-'});
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(
            r.result.status == UnityStatus::complete && !r.changed && !r.return_value &&
                text_input_detail::buffer_text(q) == "a",
            "active root filters and consumes queue but native dispatcher drops ordinary tokens");
        expect(f.get<ReI32>(Fixture::c + 0x37c0) == 0 &&
                   !f.get<ReU16>(Fixture::c + 0x3f78) &&
                   !(f.get<ReU32>(Fixture::c + 0x47ac) & 4),
               "ordinary tokens consume queue without MarkItemEdited");
        expect(f.get<ReU8>(Fixture::c + 0x5bd8) == 1 &&
                   f.get<float>(Fixture::c + 0x5be4) == 10,
               "active render emits copied IME output without platform invocation");
    }
    {
        Fixture f;
        auto q = f.request("ab", text_read_only);
        f.active(q);
        f.queued({'X'});
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && !r.changed &&
                   text_input_detail::buffer_text(q) == "ab" &&
                   f.get<ReI32>(Fixture::c + 0x37c0) == 0 &&
                   !f.get<ReU8>(Fixture::c + 0x5bd8),
               "readonly root consumes queue, keeps caller bytes and omits IME visibility write");
    }
    {
        Fixture f;
        auto q = f.request("ab", text_callback_always | text_callback_edit);
        f.active(q);
        f.down(0x20b);
        int count = 0;
        q.callback = [&](ImguiTextInputCallbackData &d) {
            ++count;
            expect(d.event == text_callback_edit && d.text == "a" && d.cursor == 1,
                   "edit callback precedes always and sees UTF8 byte cursor");
            d.text = "A\xc3\xa9";
            d.text_length = 3;
            d.cursor = d.selection_start = d.selection_end = 3;
            d.dirty = true;
            return 0;
        };
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && r.changed && count == 1 &&
                   text_input_detail::buffer_text(q) == "A\xc3\xa9" &&
                   f.editors.editors[Fixture::c].cursor == 2,
               "dirty callback decodes text and byte cursor into UTF16 editor state");
    }
    {
        Fixture f;
        auto q = f.request("ab", text_enter_returns_true);
        f.active(q);
        f.down(0x20d);
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && r.enter_pressed && r.return_value &&
                   !r.changed && !f.get<ReU32>(Fixture::c + 0x3f68),
               "EnterReturnsTrue returns Enter independently of text changed and clears active ID");
    }
    {
        Fixture f;
        auto q = f.request("modified");
        f.active(q);
        f.editors.editors[Fixture::c].initial = "before";
        const auto identifier = f.get<ReU32>(Fixture::c + 0x3f68);
        f.route(0x20e, 0, identifier);
        f.down(0x20e);
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && r.changed &&
                   text_input_detail::buffer_text(q) == "before" &&
                   !f.get<ReU32>(Fixture::c + 0x3f68),
               "Escape restores initial text and changed result before deactivation");
    }
    {
        Fixture f;
        auto q = f.request("erase", text_escape_clears_all);
        f.active(q);
        const auto identifier = f.get<ReU32>(Fixture::c + 0x3f68);
        f.route(0x20e, 0, identifier);
        f.down(0x20e);
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && !r.changed && !r.return_value &&
                   text_input_detail::buffer_text(q).empty() &&
                   f.get<ReU32>(Fixture::c + 0x3f68) == identifier,
               "literal EscapeClearsAll clears owned text but bypasses value_changed store");
    }
}
} // namespace rust_internal_re
