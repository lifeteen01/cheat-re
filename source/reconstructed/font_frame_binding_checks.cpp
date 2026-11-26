#include "font_frame_bindings.hpp"
namespace rust_internal_re {
namespace {
void font_frame_expect(bool value) {
    if (!value)
        { /* FREESTANDING_TODO: was throw runtime_error("font frame binding fixture") */ }
}
FontTextGlyph frame_glyph(char c) {
    return {(ReU32(ReU8(c)) << 2) | 2, 4, 0, 0, 4, 8, 0, 0, 1, 1};
}
} // namespace
void check_font_frame_bindings() {
    Snapshot image(0, re::ReVector<ReByte>(0x406000));
    font_frame_expect(image.write<Address>(0x405b28, 0x1000) &&
                      image.write<Address>(0x4f08, 0x6000) && image.write<Address>(0x6298, 10));
    font_frame_expect(image.write<ReI32>(0x3eed38, 4) &&
                      image.write<ReI32>(0x3fcd78, 0) &&
                      image.write<ReI32>(0x3ee7e8, 0));
    FrameMenuState frame;
    frame.fonts[1] = 20;
    frame.fonts[2] = 20;
    FontTextFont font;
    font.measure.nominal = 8;
    font.fallback_character = '?';
    font.glyphs = {frame_glyph(' '), frame_glyph('?'), frame_glyph('A'), frame_glyph('.')};
    font_text_build_lookup_3a33c0(font);
    FontTextStore fonts;
    fonts.fonts[20] = font;
    DrawCoreStore draws;
    auto &draw = draws.lists[10];
    draw.header.clip = {-100, -100, 100, 100};
    draw_core_add_command_39fd18(draw);
    re::ReMap<Address, FontTextShared> shared{{10, {20, 8}}};
    auto sink = bind_font_text_draw_core(draws, shared);
    FontFrameStorage env{0, 0x7000, 0x7100, 0x7300, 0x7310, 256};
    auto api = bind_font_frame(image, frame, fonts, sink, env);
    const auto invoke = [&](Rva role, std::initializer_list<UnityValue> args) {
        return api.external(role, re::ReSpan(args.begin(), args.size()));
    };
    auto result = invoke(0x36135c, {Address(0x8100), Address(20), re::ReString("A"), Vec2{40, 40},
                                    ClipRect{1, 0, 0, 1}, ReI32(1)});
    font_frame_expect(result && re::re_holds_alternative<re::ReMonostate>(*result) &&
                      draw.vertices.size == 36 &&
                      re::re_bit_cast<float>(frame.values[0x248ed8]) == 13);
    result = invoke(0x361bcc, {Address(0x8100), Address(20), re::ReString("A"), Vec2{40, 40},
                               ClipRect{0, 1, 0, 1}, ReI32(4)});
    font_frame_expect(result && draw.vertices.size == 72 &&
                      re::re_bit_cast<float>(frame.values[0x248ed0]) == 10);
    result = invoke(0x391c50, {re::ReString("##hidden"), false});
    font_frame_expect(bool(result));
    const auto empty_end = re::re_get<Address>(*result);
    font_frame_expect(empty_end == env.string_bytes);
    (void)invoke(0x3a31bc,
                 {Address(10), Vec2{}, ReI32(-1), re::ReString("##hidden"), empty_end});
    font_frame_expect(draw.vertices.size == 72);
    result = invoke(0x391c50, {re::ReString("A##hidden"), false});
    const auto end = re::re_get<Address>(*result);
    (void)invoke(0x3a31bc, {Address(10), Vec2{}, ReI32(-1), re::ReString("A##hidden"), end});
    font_frame_expect(draw.vertices.size == 76);
    result = invoke(0x3a3874, {Address(20), 8.0f, re::ReNumericLimits<float>::max(), 0.0f,
                               re::ReString("A"), Address(0), Address(0)});
    font_frame_expect(result && re::re_get<Vec2>(*result).x == 4 && re::re_get<Vec2>(*result).y == 8);
    font_frame_expect(image.write<Address>(0x4c28, 20) && image.write<float>(0x4c30, 8));
    result = invoke(0x38f79c, {re::ReString("A##hidden"), env.string_bytes + 2, true, -1.0f});
    font_frame_expect(result && re::re_get<Vec2>(*result).x == 4);
    result = invoke(0x38f79c, {re::ReString("A##hidden"), Address(0), true, -1.0f});
    font_frame_expect(result && re::re_get<Vec2>(*result).x == 4 && re::re_get<Vec2>(*result).y == 8);
    const auto world = bind_world_font_measurements(image, 0x1000, fonts);
    font_frame_expect(world.measure_font_3a3874({20, "A", 8, 100, 0}).x == 4 &&
                      world.draw.measure_38f79c("A").y == 8);
    fonts.fonts.erase(20);
    frame.values[0x248ed0] = re::re_bit_cast<ReU32>(999.0f);
    bool missing = false;
    {
        (void)invoke(0x361bcc, {Address(0x8100), Address(20), re::ReString("A"), Vec2{},
                                ClipRect{1, 1, 1, 1}, ReI32(4)});
    }
    font_frame_expect(missing && re::re_bit_cast<float>(frame.values[0x248ed0]) == 10 &&
                      draw.vertices.size == 76);
}
} // namespace rust_internal_re
