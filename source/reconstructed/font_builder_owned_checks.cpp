#include "font_builder_fixture.hpp"
namespace rust_internal_re {
using font_builder_fixture::require;
void check_font_builder_owned() {
    constexpr Address font = 0x100, config = 0x400;
    for (int fail_at = 0; fail_at < 3; ++fail_at) {
        Snapshot image{0, re::ReVector<ReByte>(0x1000)};
        auto put = [&]<class T>(Address p, T v) {
            require(image.write(p, v), "owned prefix fixture write");
        };
        FontTextFont f;
        f.measure.fallback = 7;
        f.measure.nominal = 19;
        f.measure.advances = {1, 2};
        f.glyphs.resize(1);
        f.lookup = {0};
        f.fallback = 0;
        f.atlas = 999;
        f.surface = 17;
        f.ellipsis_count = 3;
        f.ellipsis_width = 9;
        f.ellipsis_step = 4;
        put(font + 0x28, ReU64(0x100000001ull));
        put(font + 0x30, Address(0x800));
        put(font, ReU64(0x200000002ull));
        put(font + 8, Address(0x900));
        put(font + 0x18, ReU64(0x100000001ull));
        put(font + 0x20, Address(0xa00));
        put(font + 0x40, Address(999));
        put(font + 0x70, ReU32(17));
        put(config + 0x14, 20.f);
        int calls = 0;
        FontBuilderSupportEffects api;
        api.free_39517c = [&](Address key) {
            require(key == Address(0x800 + 0x100 * calls),
                    "native glyph/advance/lookup free order");
            require(f.glyphs.empty() && (calls < 1 || f.measure.advances.empty()) &&
                        (calls < 2 || f.lookup.empty()) && f.fallback == 0 && f.atlas == 999 &&
                        !f.dirty && f.surface == 17 && f.measure.fallback == 0 &&
                        f.measure.nominal == 0,
                    "owned mutations before each native free");
            if (calls++ == fail_at)
                { /* FREESTANDING_TODO: was throw runtime_error("expected free failure") */ }
        };
        bool stopped = false;
        {
            font_begin_config_owned_3a5950(image, f, 0x700, font, config, 17, -5, api);
        }
        const Address descriptor = fail_at == 0 ? font + 0x28 : fail_at == 1 ? font : font + 0x18;
        require(stopped && *image.read<ReU64>(descriptor) == 0 &&
                    *image.read<Address>(descriptor + 8) == Address(0x800 + 0x100 * fail_at) &&
                    f.ellipsis_count == 3 && f.ellipsis_width == 9,
                "throwing release retains cleared descriptor and old pointer/ellipsis prefix");
    }
    FontTextGlyph g;
    g.x1 = g.y1 = 1;
    g.u1 = g.v1 = 1;
    {
        Snapshot image{0, re::ReVector<ReByte>(0x1000)};
        require(image.write(font + 0x40, Address(0x2000)), "missing padding pointer");
        FontTextFont f;
        f.surface = 17;
        bool stopped = false;
        {
            font_text_add_glyph_deferred_39ff7c(image, font, f, 65, g);
        }
        require(stopped && f.glyphs.size() == 1 && !f.dirty && f.surface == 17 &&
                    *image.read<ReU8>(font + 0x60) == 0,
                "missing atlas padding retains append before dirty");
    }
    {
        Snapshot image{0, re::ReVector<ReByte>(0x1000)};
        const Address atlas = 0xfd0;
        require(image.write(font + 0x40, atlas) && image.write(atlas + 0x14, int(1)),
                "missing height inputs");
        FontTextFont f;
        f.surface = 17;
        bool stopped = false;
        {
            font_text_add_glyph_deferred_39ff7c(image, font, f, 65, g);
        }
        require(stopped && f.glyphs.size() == 1 && f.dirty && f.surface == 17 &&
                    *image.read<ReU8>(font + 0x60) == 1,
                "missing atlas height retains append plus dirty before surface");
    }
    {
        Snapshot image{0, re::ReVector<ReByte>(0x1000)};
        const Address atlas = font + 0x4c;
        require(image.write(font + 0x40, atlas) && image.write(atlas + 0x14, int(3)) &&
                    image.write(atlas + 0x44, int(20)) && image.write(atlas + 0x40, int(10)) &&
                    image.write(font + 0x70, ReU32(17)),
                "aliased padding fixture");
        FontTextFont f;
        f.dirty = true;
        f.surface = 17;
        font_text_add_glyph_deferred_39ff7c(image, font, f, 65, g);
        require(f.surface == 316 && *image.read<int>(atlas + 0x14) == 1,
                "padding loads before aliased dirty byte while surface adds retained raw word");
    }
}
} // namespace rust_internal_re
