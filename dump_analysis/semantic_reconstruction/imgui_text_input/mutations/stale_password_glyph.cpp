#include "imgui_text_input_internal.hpp"
#include "imgui_windows_internal.hpp"
namespace rust_internal_re {
namespace {
using namespace text_input_detail;
Address default_font(MenuControlsState &s) {
    const auto c = context(s);
    auto font = read<Address>(s, c + 0x68, 0x39249b);
    if (!font) {
        const auto atlas = read<Address>(s, c + 0x58, 0x3924a4);
        const auto data = read<Address>(s, atlas + 0x60, 0x38bb84);
        font = read<Address>(s, data, 0x3924b3);
    }
    return font;
}
DrawCoreList &draw_list(MenuControlsState &s) {
    const auto draw = read<Address>(s, window(s) + 0x298, 0x398aeb);
    if (!s.draw || !s.draw->lists.contains(draw))
        throw RendererMissing(0x3a73c4, 0, "owned font texture draw list absent");
    return s.draw->lists.at(draw);
}
Address glyph(MenuControlsState &s, Address font, std::uint16_t character) {
    const auto count = read<std::int32_t>(s, font + 0x18, 0x3a4520);
    if (std::int64_t(character) < count) {
        const auto lookup = read<Address>(s, font + 0x20, 0x3a452d);
        const auto index = read<std::uint16_t>(s, lookup + Address(character) * 2, 0x3a4536);
        if (index != 0xffff)
            return read<Address>(s, font + 0x30, 0x3a4546) + Address(index) * 40;
    }
    return read<Address>(s, font + 0x38, 0x3a454f);
}
} // namespace
void imgui_text_input_set_font_39b290(MenuControlsState &s, Address font) {
    using namespace text_input_detail;
    const auto c = context(s);
    const auto unit = read<float>(s, 0x28d254, 0x39b2a4);
    auto base = read<float>(s, c + 0x60, 0x39b2ac);
    write(s, c + 0x3c28, font, 0x39b2b1);
    base *= read<float>(s, font + 0x14, 0x39b2b8);
    base *= read<float>(s, font + 0x64, 0x39b2bd);
    write(s, c + 0x3c34, maxss(unit, base), 0x39b2ce);
    const auto w = read<Address>(s, c + 0x3f08, 0x39b2c7);
    ImguiWindowsState windows;
    windows.controls = &s;
    const auto size = w ? window_detail::font_size(windows, w) : 0.0f;
    write(s, c + 0x3c30, size, 0x39b2e8);
    const auto atlas = read<Address>(s, font + 0x40, 0x39b2f0);
    const auto uv = read<Vec2>(s, atlas + 0x50, 0x39b2f4);
    write(s, c + 0x3e40, atlas + 0x88, 0x39b300);
    write(s, c + 0x3e48, atlas + 0x49c, 0x39b30e);
    write(s, c + 0x3e50, atlas + 0x4a4, 0x39b31c);
    write(s, c + 0x3c48, size, 0x39b323);
    write(s, c + 0x3c38, uv, 0x39b32b);
    write(s, c + 0x3c40, font, 0x39b333);
}
void imgui_text_input_push_font_398a98(MenuControlsState &s, const ImguiTextInputApi &api,
                                       Address font) {
    using namespace text_input_detail;
    const auto c = context(s);
    if (!font)
        font = default_font(s);
    imgui_text_input_set_font_39b290(s, font);
    const auto descriptor = c + 0x4870;
    const auto count = read<std::int32_t>(s, descriptor, 0x37a658);
    if (count < 0 || std::size_t(count) >= api.maximum_characters)
        throw Stop{UnityStatus::analysis_limit, 0x37a658};
    const auto data = reserve_vector(s, api, descriptor, count + 1, 8);
    write(s, data + Address(count) * 8, font, 0x37a658);
    write(s, descriptor, count + 1, 0x37a658);
    const auto atlas = read<Address>(s, font + 0x40, 0x398adc);
    const auto texture = read<Address>(s, atlas + 8, 0x398ae7);
    draw_core_push_texture_3a73c4(draw_list(s), texture);
}
void imgui_text_input_pop_font_39881c(MenuControlsState &s, const ImguiTextInputApi &) {
    using namespace text_input_detail;
    const auto c = context(s);
    draw_core_pop_texture_3a6e84(draw_list(s));
    const auto descriptor = c + 0x4870;
    const auto count = read<std::int32_t>(s, descriptor, 0x39eea0);
    if (count <= 0)
        throw Stop{UnityStatus::unreadable_snapshot, 0x39eea0};
    write(s, descriptor, count - 1, 0x39eea0);
    Address font;
    if (count == 1)
        font = default_font(s);
    else {
        const auto data = read<Address>(s, descriptor + 8, 0x39e314);
        font = read<Address>(s, data + Address(count - 2) * 8, 0x398866);
    }
    imgui_text_input_set_font_39b290(s, font);
}
} // namespace rust_internal_re
namespace rust_internal_re::text_input_detail {
void password_font(Frame &f) {
    if (!f.password || f.hint)
        return;
    const auto font = read<Address>(f.s, f.c + 0x3c28, 0x3c0ea8);
    Address star;
    float nominal, fallback_advance;
    if (false) {
        const auto it = f.api.fonts->fonts.find(font);
        if (it == f.api.fonts->fonts.end())
            throw RendererMissing(0x3a4520, 0, "password font absent from owned font store");
        const auto fallback = font_text_find_3a4520(it->second, '*');
        if (!fallback || !f.api.password_glyph_alias)
            throw RendererMissing(0x3a4520, 0x3a4520,
                                  "owned password glyph or its numeric alias absent");
        star = *f.api.password_glyph_alias;
        nominal = it->second.measure.nominal;
        fallback_advance = fallback->advance;
        FontTextFont masked;
        masked.measure.nominal = nominal;
        masked.measure.fallback = fallback_advance;
        masked.glyphs.push_back(*fallback);
        masked.fallback = 0;
        masked.atlas = it->second.atlas;
        f.api.fonts->fonts[f.c + 0x5ac0] = std::move(masked);
    } else {
        star = glyph(f.s, font, '*');
        nominal = read<float>(f.s, font + 0x14, 0x3c0ec0);
        fallback_advance = read<float>(f.s, star + 4, 0x3c0f01);
    }
    write(f.s, f.c + 0x5ad4, nominal, 0x3c0ec3);
    // [C] Scalar fields remain copied native records. Only lookup/glyph vectors
    // may be owned and stale in Snapshot after a font builder operation.
    for (const auto offset : {0x64u, 0x68u, 0x6cu})
        write(f.s, f.c + 0x5ac0 + offset, read<std::uint32_t>(f.s, font + offset, 0x3c0eca),
              0x3c0ecd);
    const auto atlas =
        f.api.fonts ? f.api.fonts->fonts.at(font).atlas : read<Address>(f.s, font + 0x40, 0x3c0ee8);
    write(f.s, f.c + 0x5b00, atlas, 0x3c0eec);
    write(f.s, f.c + 0x5af8, star, 0x3c0efa);
    write(f.s, f.c + 0x5ad0, fallback_advance, 0x3c0f04);
    imgui_text_input_push_font_398a98(f.s, f.api, f.c + 0x5ac0);
    f.password_pushed = true;
}
} // namespace rust_internal_re::text_input_detail
