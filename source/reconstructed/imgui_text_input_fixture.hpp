#pragma once
#include "imgui_text_input_internal.hpp"
#include "menu_tooltip_fixture.hpp"
namespace rust_internal_re::text_input_test {
using menu_test_detail::expect;
struct Fixture : menu_test_detail::MenuFixture {
    ImguiTextInputState editors;
    ImguiTextInputApi input;
    ImguiWindowsApi windows;
    Address next{0x50000};
    re::ReVector<re::ReString> rendered;
    re::ReVector<re::ReString> effects;
    Fixture() {
        input.controls = re::re_move(api);
        input.window_api = &windows;
        windows.nav_highlight_3997ac = [&](ClipRect, ReU32, ReU32 flags) {
            expect(flags == 1, "editor highlight keeps native flags");
            effects.push_back("highlight");
        };
        input.text = [&](const FontTextRequest &q) {
            expect(q.wrap_width == 0, "editor draws unwrapped text");
            rendered.emplace_back(q.bytes.substr(0, q.end.value_or(q.bytes.size())));
            effects.push_back("text");
        };
        put(0x27fa18, Address(0xa110c));
        put(0x27fa20, Address(0xf4ee));
        input.allocation.allocate = [&](Address target, Address, ReUSize n) {
            expect(target == 0xa110c, "owned numeric allocator target");
            const auto p = next;
            next += n + 0x100;
            expect(next < 0x100000, "fixture owned allocator extent");
            return p;
        };
        input.allocation.free = [&](Address target, Address, Address) {
            expect(target == 0xf4ee, "owned numeric free target");
        };
        for (ReU32 key = 0x200; key <= 0x28b; ++key) {
            put(c + 0x4240 + Address(key) * 2, ReU16(0xffff));
            put(c + 0x3fb0 + Address(key - 0x200) * 12, 0xffffffffu);
            put(c + 0x3fb0 + Address(key - 0x200) * 12 + 8, ReU16(0));
            put(c + 0xe2c + Address(key) * 16 + 4, -1.0f);
        }
        put(0x28d24c, 0.0f);
        put(0x28d254, 1.0f);
        put(0x28d250, 0.5f);
        put(0x293260, -1.0f);
        put(0x293134, 2.0f);
        put(0x2930ac, 0.25f);
        put(0x2941b0, 0.6f);
        put(w, c);
        put(w + 0x290, 1.0f);
        put(c + 0x60, 1.0f);
        put(c + 0x68, font);
        put(font + 0x64, 1.0f);
        cursor();
    }
    ImguiTextInputRequest request(re::ReString text = "ab", ReU32 flags = 0) {
        ImguiTextInputRequest q;
        q.label = "##Hex";
        q.size = {100, 20};
        q.buffer.resize(64, char(0x5a));
        re::re_copy(text.begin(), text.end(), q.buffer.begin());
        q.buffer[text.size()] = 0;
        q.flags = flags;
        return q;
    }
    void active(ImguiTextInputRequest &q) {
        const auto identifier = menu_detail::id(state, q.label);
        ImguiTextInputEdit edit;
        edit.id = identifier;
        edit.text = imgui_text_input_decode_393ba4(text_input_detail::buffer_text(q), 65);
        edit.text_a = edit.initial = text_input_detail::buffer_text(q);
        edit.length_a = ReI32(edit.text_a.size());
        edit.text_a_valid = true;
        edit.single_line = !(q.flags & text_multiline);
        edit.capacity = ReI32(q.buffer.size());
        edit.cursor = edit.selection_start = edit.selection_end = ReI32(edit.text.size());
        editors.editors[c] = edit;
        imgui_text_input_sync(state, input, edit);
        put(c + 0x3f68, identifier);
        put(c + 0x3f74, ReU8(0));
    }
    void queued(std::initializer_list<ReU16> chars) {
        put(c + 0x37c0, ReI32(chars.size()));
        put(c + 0x37c8, Address(0x48000));
        ReUSize i = 0;
        for (auto ch : chars)
            put(0x48000 + Address(i++) * 2, ch);
    }
    void down(ReU32 key) {
        put(c + 0xe2c + Address(key) * 16, ReU8(1));
        put(c + 0xe2c + Address(key) * 16 + 4, 0.0f);
    }
    void route(ReU32 key, ReU32 modifiers, ReU32 owner) {
        (void)text_input_detail::route_shortcut(state, input, key | modifiers, owner, 0x100);
        const auto index = get<ReU16>(c + 0x4240 + Address(key) * 2);
        const auto data = get<Address>(c + 0x4760);
        put(data + Address(index) * 16 + 8, owner);
    }
};
} // namespace rust_internal_re::text_input_test
