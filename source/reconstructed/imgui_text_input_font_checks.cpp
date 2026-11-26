#include "imgui_text_input_fixture.hpp"
namespace rust_internal_re {
void check_imgui_text_input_fonts() {
    using namespace text_input_test;
    {
        Fixture f;
        constexpr Address atlas = 0x34000;
        f.put(Fixture::font + 0x40, atlas);
        f.put(atlas + 8, Address(0x777));
        f.put(atlas + 0x50, Vec2{0.1f, 0.2f});
        auto &draw = f.draw.lists[Fixture::drawlist];
        draw_core_add_command_39fd18(draw);
        draw_core_push_texture_3a73c4(draw, 0x111);
        FrameDependencyResult last;
        auto bound = bind_imgui_text_input_frame(f.state, f.input, last);
        const re::ReArray<UnityValue, 1> args{Fixture::font};
        expect(bool(bound.external(0x398a98, args)) && last.status == UnityStatus::complete,
               "font push frame binder accepts typed numeric font");
        expect(f.get<Address>(Fixture::c + 0x3c28) == Fixture::font &&
                   f.get<float>(Fixture::c + 0x3c30) == 10 &&
                   f.get<Address>(Fixture::c + 0x3e40) == atlas + 0x88 &&
                   draw.header.texture == 0x777 && draw.texture_stack.size == 2,
               "font push updates context/shared UV/table fields and draw texture stack");
        expect(bool(bound.external(0x39881c, {})) &&
                   f.get<ReI32>(Fixture::c + 0x4870) == 0 && draw.header.texture == 0x111,
               "font pop restores default font and prior draw texture");
        const re::ReArray<UnityValue, 1> wrong{ReI32(4)};
        expect(!bound.external(0x398a98, wrong) &&
                   last.status == UnityStatus::callback_type_mismatch,
               "font frame binder rejects mismatched typed arguments");
    }
    {
        Fixture f;
        constexpr Address atlas = 0x34000;
        f.put(Fixture::font + 0x40, atlas);
        f.put(atlas + 8, Address(0x777));
        auto &draw = f.draw.lists[Fixture::drawlist];
        draw_core_add_command_39fd18(draw);
        draw_core_push_texture_3a73c4(draw, 0x111);
        FontTextStore fonts;
        FontTextFont original;
        original.measure.nominal = 10;
        original.measure.fallback = 7;
        original.atlas = atlas;
        FontTextGlyph star;
        star.packed = ReU32('*') << 2;
        star.advance = 7;
        original.glyphs.push_back(star);
        original.fallback = 0;
        fonts.fonts.insert(Fixture::font, original);
        // [I] Raw glyph vectors are deliberately stale/unreadable. Owned builder
        // data must be authoritative when supplied; no raw array import occurs.
        f.put(Fixture::font + 0x18, ReI32(0));
        f.put(Fixture::font + 0x38, Address(0xfffffffffffffff0ULL));
        f.input.fonts = &fonts;
        f.input.password_glyph_alias = 0x49000;
        auto q = f.request("secret", text_password);
        f.active(q);
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete && f.get<float>(Fixture::c + 0x5ad0) == 7 &&
                   f.get<Address>(Fixture::c + 0x5af8) == 0x49000 &&
                   fonts.fonts[Fixture::c + 0x5ac0].measure.fallback == 7 &&
                   draw.texture_stack.size == 1 &&
                   f.get<Address>(Fixture::c + 0x3c28) == Fixture::font,
               "password uses owned glyph scalar/alias and concrete push/pop despite stale raw "
               "glyph array");
        f.cursor();
        f.input.password_glyph_alias.reset();
        const auto missing = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(missing.result.status == UnityStatus::missing_dependency &&
                   missing.result.stopped_at == 0x3a4520,
               "owned password glyph missing numeric alias is an explicit failure");
    }
    {
        Fixture f;
        auto q = f.request("", text_password);
        q.hint = "placeholder";
        const auto r = replay_imgui_text_input_3c0538(f.state, f.editors, f.input, q);
        expect(r.result.status == UnityStatus::complete &&
                   f.rendered == re::ReVector<re::ReString>{"placeholder"} &&
                   !f.get<ReI32>(Fixture::c + 0x4870),
               "password hint bypasses glyph lookup and font stack entirely");
    }
}
} // namespace rust_internal_re
