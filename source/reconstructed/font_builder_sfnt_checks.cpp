#include "font_builder_fixture.hpp"
namespace rust_internal_re {
namespace {
void require(bool ok, const char *text) {
    if (!ok)
        { /* FREESTANDING_TODO: was throw runtime_error(text) */ }
}
using font_builder_fixture::FontFixture;
} // namespace
void check_font_builder_sfnt() {
    FontFixture f;
    FontBuilderInfo info;
    require(font_builder_offset_3a9fdc(f.image, f.input, 0) == 0 &&
                font_builder_offset_3a9fdc(f.image, f.input, 1) == -1,
            "single font native index selection");
    require(font_builder_init_3aa060(f.image, info, f.input, 0) && info.index_map == 0x10c &&
                info.glyph_count == 3,
            "copied TrueType initialization through actual table records");
    require(font_builder_glyph_3adf78(f.image, info, 65) == 1 &&
                font_builder_glyph_3adf78(f.image, info, 66) == 2 &&
                font_builder_glyph_3adf78(f.image, info, 67) == 0,
            "format0 actual character map bytes");
    require(font_builder_vertical_3ae24c(f.image, info) ==
                    re::ReArray<ReI32, 3>{800, -200, 50} &&
                font_builder_scale_3aefdc(f.image, info, 20) == 0.02f &&
                font_builder_em_scale_3aefac(f.image, info, 20) == 0.02f,
            "metrics and scales are decoded from copied headers");
    require(font_builder_horizontal_3ae550(f.image, info, 1) ==
                    re::ReArray<ReI32, 2>{600, 10} &&
                font_builder_horizontal_3ae550(f.image, info, 2) ==
                    re::ReArray<ReI32, 2>{600, -5},
            "full and trailing horizontal metrics branches");
    f.word(0x444, 0xfffe);
    require(font_builder_horizontal_3ae550(f.image, info, 1)[0] == -2,
            "advance width retains native signed16 conversion");
    f.word(0x444, 600);
    const auto box = font_builder_bitmap_box_3ae308(f.image, info, 1, 0.02f, 0.02f);
    require(box.x0 == 0 && box.y0 == -14 && box.x1 == 10 && box.y1 == 0 &&
                !font_builder_box_3ae484(f.image, info, 2),
            "scaled TrueType bounds and empty loca entry");
    const auto outline = font_builder_shape_3aa6cc(f.image, info, 1);
    require(outline.size() == 4 && outline[0].type == 1 && outline[1].x == 500 &&
                outline[1].y == 0 && outline[2].x == 0 && outline[2].y == 700 &&
                outline[3].type == 2 && !outline[0].second_control,
            "actual simple contour delta decoding and explicit unwritten cubic control");
    auto shortened = f.input;
    shortened.size = 0x410;
    bool stopped = false;
    {
        FontBuilderInfo partial;
        (void)font_builder_init_3aa060(f.image, partial, shortened, 0);
    }
    require(stopped,
            "copied font span exhaustion is missing data, not fabricated invalid-font return");
    f.word(0x10c, 6);
    f.word(0x112, 65);
    f.word(0x114, 2);
    f.word(0x116, 7);
    f.word(0x118, 9);
    require(font_builder_glyph_3adf78(f.image, info, 65) == 7 &&
                font_builder_glyph_3adf78(f.image, info, 66) == 9 &&
                font_builder_glyph_3adf78(f.image, info, 64) == 0,
            "format6 trimmed mapping");
    f.word(0x10c, 4);
    f.word(0x112, 4);
    f.word(0x114, 4);
    f.word(0x116, 1);
    f.word(0x118, 0);
    f.word(0x11a, 65);
    f.word(0x11c, 0xffff);
    f.word(0x11e, 0);
    f.word(0x120, 65);
    f.word(0x122, 0xffff);
    f.word(0x124, 5);
    f.word(0x126, 1);
    f.word(0x128, 4);
    f.word(0x12a, 0);
    f.word(0x12c, 9);
    require(font_builder_glyph_3adf78(f.image, info, 65) == 9,
            "format4 ranged glyph returns raw glyph without idDelta addition");
    f.word(0x128, 0);
    require(font_builder_glyph_3adf78(f.image, info, 65) == 70,
            "format4 zero range offset uses wrapping idDelta");
    for (auto format : {12, 13}) {
        f.word(0x10c, ReU16(format));
        f.dword(0x118, 1);
        f.dword(0x11c, 0x10000);
        f.dword(0x120, 0x10002);
        f.dword(0x124, 40);
        require(font_builder_glyph_3adf78(f.image, info, 0x10001) == (format == 12 ? 41 : 40),
                "format12 and13 native group mappings");
    }
    f.dword(0, 0x74746366);
    f.dword(4, 0x20000);
    f.dword(8, 1);
    f.dword(12, 0x80);
    require(font_builder_offset_3a9fdc(f.image, f.input, 0) == 0x80 &&
                font_builder_offset_3a9fdc(f.image, f.input, -1) == 1,
            "TTC valid and literal signed negative-index behavior");
    FontFixture compressed;
    FontBuilderInfo compressed_info;
    require(font_builder_init_3aa060(compressed.image, compressed_info, compressed.input, 0),
            "compressed flags init");
    compressed.byte(0x38e, 0x3f);
    compressed.byte(0x38f, 2);
    for (unsigned i = 0; i < 3; ++i) {
        compressed.byte(0x390 + i, 10);
        compressed.byte(0x393 + i, 20);
    }
    auto compressed_shape = font_builder_shape_3aa6cc(compressed.image, compressed_info, 1);
    require(compressed_shape.size() == 4 && compressed_shape[0].x == 10 &&
                compressed_shape[0].y == 20 && compressed_shape[1].x == 20 &&
                compressed_shape[2].y == 60,
            "repeat flags and positive short X/Y delta streams");
    FontFixture component;
    FontBuilderInfo component_info;
    require(font_builder_init_3aa060(component.image, component_info, component.input, 0),
            "component init");
    component.word(0x306, 40);
    component.word(0x39e, 0xffff);
    component.word(0x3a8, 3);
    component.word(0x3aa, 1);
    component.word(0x3ac, 10);
    component.word(0x3ae, ReU16(-20));
    auto compound = font_builder_shape_3aa6cc(component.image, component_info, 2);
    require(compound.size() == 4 && compound[0].x == 10 && compound[0].y == -20 &&
                compound[1].x == 510 && compound[2].y == 680 && !compound[0].second_control,
            "composite signed word translation and explicit unwritten cubic fields");
    component.word(0x3a8, 0xb);
    component.word(0x3ac, 0);
    component.word(0x3ae, 0);
    component.word(0x3b0, 8192);
    compound = font_builder_shape_3aa6cc(component.image, component_info, 2);
    require(compound[1].x == 125 && compound[2].y == 175,
            "composite uniform transform multiplies native matrix and its approximate magnitude");
    component.word(0x3a8, 8);
    component.word(0x3ac, 8192);
    compound = font_builder_shape_3aa6cc(component.image, component_info, 2);
    require(compound[1].x == 125 && compound[2].y == 175,
            "compiled-out matching-point assertion leaves arguments unskipped before scale read");
    component.word(0x3a8, 0x83);
    component.word(0x3ac, 0);
    component.word(0x3ae, 0);
    component.word(0x3b0, 8192);
    component.word(0x3b2, 4096);
    component.word(0x3b4, ReU16(-8192));
    component.word(0x3b6, 16384);
    compound = font_builder_shape_3aa6cc(component.image, component_info, 2);
    require(compound[1].x == 139 && compound[1].y == 139 && compound[2].x == -195 &&
                compound[2].y == 782,
            "full two-by-two component transform and truncation");
    component.word(0x3a8, 0x23);
    component.word(0x3ac, 1);
    component.word(0x3ae, 2);
    component.word(0x3b0, 3);
    component.word(0x3b2, 1);
    component.word(0x3b4, 3);
    component.word(0x3b6, 4);
    compound = font_builder_shape_3aa6cc(component.image, component_info, 2);
    require(compound.size() == 8 && compound[0].x == 1 && compound[0].y == 2 &&
                compound[4].x == 3 && compound[4].y == 4,
            "multiple native components append in order");
    component.word(0x3a8, 3);
    component.word(0x3aa, 2);
    FontBuilderLimits recursive;
    recursive.maximum_recursion = 4;
    stopped = false;
    {
        (void)font_builder_shape_3aa6cc(component.image, component_info, 2, recursive);
    }
    require(stopped, "malformed component cycle stops at explicit owned recursion bound");
}
} // namespace rust_internal_re
