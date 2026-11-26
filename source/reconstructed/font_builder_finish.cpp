#include "font_builder_internal.hpp"
namespace rust_internal_re {
using namespace font_builder_detail;
namespace {
void pixels_out(Snapshot &image, Address key, const FontTextAtlas &a) {
    const auto pixels = read<Address>(image, key + 0x30, 0x3a4f38);
    if (a.alpha)
        for (ReUSize i = 0; i < a.alpha->size(); ++i)
            write(image, pixels + i, (*a.alpha)[i], 0x3a4f38);
}
void font_scalars_out(Snapshot &image, Address key, const FontTextFont &f) {
    write(image, key + 0x10, f.measure.fallback, 0x3a33c0);
    write(image, key + 0x52, f.fallback_character, 0x3a33c0);
    write(image, key + 0x54, f.ellipsis_character, 0x3a33c0);
    write(image, key + 0x56, f.ellipsis_count, 0x3a33c0);
    write(image, key + 0x58, f.ellipsis_width, 0x3a33c0);
    write(image, key + 0x5c, f.ellipsis_step, 0x3a33c0);
    write(image, key + 0x60, ReU8(f.dirty), 0x3a33c0);
    write(image, key + 0x70, f.surface, 0x39ff7c);
    write(image, key + 0x74, f.used_pages, 0x3a33c0);
}
} // namespace
void font_builder_finish_atlas_3a4b40(Snapshot &image, Address key, FontTextStore &store) {
    auto found = store.atlases.find(key);
    if (!found)
        { __builtin_trap(); }
    auto &a = **found;
    // [I]Owned pure-pixel helpers share the native geometry; synchronize each controller stage.
    {
        font_text_white_3a4f38(a);
    }
    pixels_out(image, key, a);
    write(image, key + 0x50, a.white_uv, 0x3a4fce);
    {
        font_text_lines_3a5008(a);
    }
    pixels_out(image, key, a);
    if (!(a.flags & 4))
        write(image, key + 0x88, a.lines, 0x3a5008);
    {
        font_text_shapes_3a5204(a);
    }
    pixels_out(image, key, a);
    write(image, key + 0x4a4, a.rounded, 0x3a5204);
    write(image, key + 0x534, a.circle, 0x3a5204);
    for (const auto &r : a.rectangles)
        if (r.font && r.glyph_id) {
            const auto font = store.fonts.find(r.font);
            if (!font)
                { __builtin_trap(); }
            const auto uv = font_text_rect_uv_3a37c8(a, r);
            FontTextGlyph g;
            g.advance = r.advance;
            g.x0 = r.offset.x;
            g.y0 = r.offset.y;
            g.x1 = float(r.width) + r.offset.x;
            g.y1 = float(r.height) + r.offset.y;
            g.u0 = uv[0];
            g.v0 = uv[1];
            g.u1 = uv[2];
            g.v1 = uv[3];
            font_text_add_glyph_deferred_39ff7c(image, r.font, **font,
                                                ReU16(r.glyph_id), g);
        }
    for (auto id : a.fonts) {
        auto font = store.fonts.find(id);
        if (!font)
            { __builtin_trap(); }
        (**font).dirty = read<ReU8>(image, id + 0x60, 0x3a4c81) != 0;
        if ((**font).dirty) {
            {
                font_text_build_lookup_3a33c0(**font);
            }
            font_scalars_out(image, id, **font);
        }
    }
    write(image, key + 0x28, ReU8(1), 0x3a4cab);
    a.ready = true;
}
} // namespace rust_internal_re
