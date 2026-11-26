#include "font_builder_internal.hpp"
namespace rust_internal_re {
using namespace font_builder_detail;
namespace {
void release(const FontBuilderSupportEffects &api, Address pointer) {
    if (!api.free_39517c)
        { __builtin_trap(); }
    api.free_39517c(pointer);
}
template <class Clear>
void clear_vector(Snapshot &image, Address descriptor, const FontBuilderSupportEffects &api,
                  Clear clear) {
    const auto pointer = read<Address>(image, descriptor + 8, 0x379581);
    if (pointer) {
        write(image, descriptor, ReU64(0), 0x37958a);
        clear();
        release(api, pointer);
        write(image, descriptor + 8, Address(0), 0x379596);
    } else
        clear(); // [I] Generated owned vectors have no fabricated native descriptor pointers.
}
} // namespace
void font_begin_config_owned_3a5950(Snapshot &image, FontTextFont &f, Address atlas, Address font,
                                    Address config, float ascent, float descent,
                                    const FontBuilderSupportEffects &api) {
    if (!read<ReU8>(image, config + 0x48, 0x3a595f)) {
        write(image, font + 0x10, ReU64(0), 0x3a3e19);
        f.measure.fallback = 0;
        f.measure.nominal = 0;
        clear_vector(image, font + 0x28, api, [&] { f.glyphs.clear(); });
        clear_vector(image, font, api, [&] { f.measure.advances.clear(); });
        clear_vector(image, font + 0x18, api, [&] { f.lookup.clear(); });
        write(image, font + 0x38, Address(0), 0x3a3e3b);
        f.fallback.reset();
        write(image, font + 0x40, Address(0), 0x3a3e43);
        f.atlas = 0;
        write(image, font + 0x60, ReU8(1), 0x3a3e4b);
        f.dirty = true;
        write(image, font + 0x68, ReU64(0), 0x3a3e4f);
        write(image, font + 0x70, ReU32(0), 0x3a3e57);
        f.surface = 0;
        const auto size = read<ReU32>(image, config + 0x14, 0x3a597f);
        write(image, font + 0x14, size, 0x3a5988);
        f.measure.nominal = re::re_bit_cast<float>(size);
        write(image, font + 0x50, ReU16(0), 0x3a598d);
        write(image, font + 0x68, ascent, 0x3a5991);
        write(image, font + 0x6c, descent, 0x3a5996);
        write(image, font + 0x48, config, 0x3a599b);
        write(image, font + 0x40, atlas, 0x3a599f);
        f.atlas = atlas;
    }
    const auto count = read<ReU16>(image, font + 0x50, 0x3a59a3);
    write(image, font + 0x50, ReU16(count + 1u), 0x3a59a3);
}
void font_text_add_glyph_deferred_39ff7c(Snapshot &image, Address font, FontTextFont &f,
                                         ReU16 cp, FontTextGlyph glyph,
                                         re::ReOptional<FontTextGlyphConfig> config) {
    if (config) {
        const auto &c = *config;
        float advance =
            c.minimum_advance > glyph.advance
                ? c.minimum_advance
                : (c.maximum_advance < glyph.advance ? c.maximum_advance : glyph.advance);
        if (advance != glyph.advance) {
            float delta = (advance - glyph.advance) * 0.5f;
            if (c.pixel_snap)
                delta = float(cvtt(delta));
            glyph.x0 += delta;
            glyph.x1 += delta;
        }
        if (c.pixel_snap)
            advance = float(cvtt(advance + 0.5f));
        glyph.advance = advance + c.extra_spacing;
    }
    glyph.packed =
        (ReU32(cp) << 2) | ((glyph.x0 != glyph.x1 && glyph.y0 != glyph.y1) ? 2u : 0u);
    f.glyphs.push_back(glyph);
    // [C]The two reads below precede the dirty byte; height and width follow it.
    const auto atlas = read<Address>(image, font + 0x40, 0x3a00ff);
    f.atlas = atlas;
    const auto padding = read<ReI32>(image, atlas + 0x14, 0x3a0108);
    write(image, font + 0x60, ReU8(1), 0x3a010d);
    f.dirty = true;
    const auto height = read<ReI32>(image, atlas + 0x44, 0x3a0111);
    const float pad = float(padding) + re::re_bit_cast<float>(0x3f7d70a4u);
    const auto rows = ReU32(cvtt((glyph.v1 - glyph.v0) * float(height) + pad));
    const auto width = read<ReI32>(image, atlas + 0x40, 0x3a0148);
    const auto columns = ReU32(cvtt(float(width) * (glyph.u1 - glyph.u0) + pad));
    // [C]Native ADD reads the retained surface only at this final store, after atlas reads.
    const auto total = read<ReU32>(image, font + 0x70, 0x3a015f) + rows * columns;
    write(image, font + 0x70, total, 0x3a015f);
    f.surface = total;
}
} // namespace rust_internal_re
