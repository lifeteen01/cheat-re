#include "font_builder_fixture.hpp"
namespace rust_internal_re {
using namespace font_builder_fixture;
namespace {
using Bytes = re::ReVector<ReU8>;
void number(Bytes &p, int value) {
    if (value >= -107 && value <= 107)
        p.push_back(ReU8(value + 139));
    else if (value >= 108 && value <= 1131) {
        p.push_back(ReU8((value - 108) / 256 + 247));
        p.push_back(ReU8((value - 108) % 256));
    } else if (value <= -108 && value >= -1131) {
        const auto positive = -value - 108;
        p.push_back(ReU8(positive / 256 + 251));
        p.push_back(ReU8(positive % 256));
    } else {
        p.push_back(28);
        p.push_back(ReU8(ReU32(value) >> 8));
        p.push_back(ReU8(value));
    }
}
void op(Bytes &p, std::initializer_list<int> values, int code) {
    for (auto v : values)
        number(p, v);
    p.push_back(ReU8(code));
}
void index(FontFixture &f, unsigned offset, const re::ReVector<Bytes> &entries) {
    f.word(offset, ReU16(entries.size()));
    if (entries.empty())
        return;
    f.byte(offset + 2, 2);
    unsigned cursor = 1;
    for (ReUSize i = 0; i < entries.size(); ++i) {
        f.word(offset + 3 + unsigned(i) * 2, ReU16(cursor));
        cursor += unsigned(entries[i].size());
    }
    f.word(offset + 3 + unsigned(entries.size()) * 2, ReU16(cursor));
    cursor = offset + 3 + unsigned(entries.size() + 1) * 2;
    for (const auto &e : entries)
        for (auto v : e)
            f.byte(cursor++, v);
}
FontBuilderInfo cff(FontFixture &f, const Bytes &program, const re::ReVector<Bytes> &globals = {},
                    const re::ReVector<Bytes> &locals = {}, int cid = -1) {
    constexpr unsigned c = 0x600;
    f.table(3, "CFF ", c);
    f.dword(0, 0x4f54544f);
    f.byte(c, 1);
    f.byte(c + 1, 0);
    f.byte(c + 2, 4);
    f.byte(c + 3, 4);
    index(f, c + 4, {});
    Bytes top;
    op(top, {256}, 17);
    if (cid >= 0) {
        op(top, {512}, 12);
        top.push_back(36);
        op(top, {768}, 12);
        top.push_back(37);
    } else if (!locals.empty())
        op(top, {2, 384}, 18);
    index(f, c + 6, {top});
    const auto following = c + 6 + 3 + 4 + unsigned(top.size());
    index(f, following, {});
    index(f, following + 2, globals);
    index(f, c + 256, {Bytes{14}, program, Bytes{14}});
    if (cid >= 0) {
        Bytes dict;
        op(dict, {2, 1024}, 18);
        index(f, c + 512, {dict});
        if (cid == 0) {
            f.byte(c + 768, 0);
            f.byte(c + 769, 0);
            f.byte(c + 770, 0);
            f.byte(c + 771, 0);
        } else if (cid == 3) {
            f.byte(c + 768, 3);
            f.word(c + 769, 1);
            f.word(c + 771, 0);
            f.byte(c + 773, 0);
            f.word(c + 774, 3);
        } else
            f.byte(c + 768, ReU8(cid));
        f.byte(c + 1024, 171);
        f.byte(c + 1025, 19);
        index(f, c + 1056, locals);
    } else if (!locals.empty()) {
        f.byte(c + 384, 171);
        f.byte(c + 385, 19);
        index(f, c + 416, locals);
    }
    FontBuilderInfo info;
    require(font_builder_init_3aa060(f.image, info, f.input, 0) && info.cff,
            "CFF init from copied SFNT/table/index/dictionary bytes");
    return info;
}
} // namespace
void check_font_builder_cff() {
    Bytes square;
    op(square, {0, 0}, 21);
    op(square, {20, 0, 0, 20, -20, 0}, 5);
    square.push_back(14);
    FontFixture f;
    const auto info = cff(f, square);
    auto shape = font_builder_shape_3aa6cc(f.image, info, 1);
    const auto box = font_builder_box_3ae484(f.image, info, 1);
    require(shape.size() == 5 && shape[0].type == 1 && shape[1].x == 20 && shape[2].y == 20 &&
                shape.back().x == 0 && shape.back().y == 0 && box && box->x1 == 20 && box->y1 == 20,
            "CFF relative line accumulation and final contour close");
    Bytes bezier;
    op(bezier, {0, 0}, 21);
    op(bezier, {10, 0, 10, 10, 10, 0}, 8);
    bezier.push_back(14);
    FontFixture curve_font;
    const auto curve_info = cff(curve_font, bezier);
    shape = font_builder_shape_3aa6cc(curve_font.image, curve_info, 1);
    require(shape.size() == 3 && shape[1].type == 4 && shape[1].x == 30 && shape[1].y == 10 &&
                shape[1].cx == 10 && shape[1].cy == 0 &&
                shape[1].second_control == re::ReOptional<re::ReArray<ReI16, 2>>{{20, 10}},
            "CFF cubic controls are written and consumed");
    Bytes sub;
    op(sub, {5, 6}, 21);
    op(sub, {7, 8}, 5);
    sub.push_back(11);
    Bytes call;
    op(call, {-107}, 29);
    call.push_back(14);
    FontFixture global;
    const auto global_info = cff(global, call, {sub});
    shape = font_builder_shape_3aa6cc(global.image, global_info, 1);
    require(shape.size() == 3 && shape[0].x == 5 && shape[1].x == 12 && shape[1].y == 14,
            "global subroutine bias/return and retained operand stack");
    call[1] = 10;
    for (int cid : {-1, 0, 3}) {
        FontFixture local;
        const auto local_info = cff(local, call, {}, {sub}, cid);
        shape = font_builder_shape_3aa6cc(local.image, local_info, 1);
        require(shape.size() == 3 && shape[1].x == 12 && shape[1].y == 14,
                "private/CID0/CID3 subroutine resolution");
    }
    FontFixture bad_cid;
    const auto bad_cid_info = cff(bad_cid, call, {}, {sub}, 1);
    require(font_builder_shape_3aa6cc(bad_cid.image, bad_cid_info, 1).empty(),
            "unsupported FDSelect returns empty buffer before subroutine lookup");
    for (const Bytes &malformed :
         re::ReVector<Bytes>{{0}, {11}, {12, 0}, {139, 21}, {139, 139, 21}}) {
        FontFixture bad;
        const auto bad_info = cff(bad, malformed);
        const auto bad_box = font_builder_box_3ae484(bad.image, bad_info, 1);
        require(font_builder_shape_3aa6cc(bad.image, bad_info, 1).empty() && bad_box &&
                    bad_box->x0 == 0 && bad_box->x1 == 0,
                "malformed Type2 returns zero shape and a successful zero bounding box");
    }
    Bytes full(49, 139);
    full.push_back(14);
    FontFixture overflow;
    const auto overflow_info = cff(overflow, full);
    require(font_builder_shape_3aa6cc(overflow.image, overflow_info, 1).empty(),
            "native 48-slot operand stack rejects 49th immediate");
    Bytes fixed{255, 0, 1, 128, 0, 255, 0, 2, 128, 0, 21, 14};
    FontFixture fp;
    const auto fp_info = cff(fp, fixed);
    shape = font_builder_shape_3aa6cc(fp.image, fp_info, 1);
    require(shape.size() == 1 && shape[0].x == 1 && shape[0].y == 2,
            "Type2 signed16.16 conversion truncates vertex coordinates");
    for (auto [code, args] :
         re::ReVector<re::RePair<int, re::ReVector<int>>>{{6, {3, 4, 5}},
                                                       {7, {3, 4, 5}},
                                                       {30, {1, 2, 3, 4, 5}},
                                                       {31, {1, 2, 3, 4, 5}},
                                                       {24, {1, 2, 3, 4, 5, 6, 7, 8}},
                                                       {25, {1, 2, 3, 4, 5, 6, 7, 8}},
                                                       {26, {1, 2, 3, 4, 5}},
                                                       {27, {1, 2, 3, 4, 5}}}) {
        Bytes program;
        op(program, {0, 0}, 21);
        for (auto v : args)
            number(program, v);
        program.push_back(ReU8(code));
        program.push_back(14);
        FontFixture branch;
        const auto branch_info = cff(branch, program);
        shape = font_builder_shape_3aa6cc(branch.image, branch_info, 1);
        require(shape.size() >= 3 && shape.front().type == 1 && shape.back().type == 2,
                "alternating line/curve operator produces actual closed geometry");
    }
    for (auto [code, count] :
         re::ReArray<re::RePair<int, int>, 4>{{{34, 7}, {35, 13}, {36, 9}, {37, 11}}}) {
        Bytes program;
        op(program, {0, 0}, 21);
        for (int i = 0; i < count; ++i)
            number(program, i + 1);
        program.push_back(12);
        program.push_back(ReU8(code));
        program.push_back(14);
        FontFixture branch;
        const auto branch_info = cff(branch, program);
        shape = font_builder_shape_3aa6cc(branch.image, branch_info, 1);
        require(shape.size() == 4 && shape[1].type == 4 && shape[2].type == 4 &&
                    shape[2].second_control.has_value(),
                "all four native flex escape operators produce two cubic segments");
    }
    Bytes mask;
    op(mask, {1, 2}, 1);
    op(mask, {3, 4}, 3);
    mask.push_back(19);
    mask.push_back(255);
    op(mask, {3, 4}, 21);
    op(mask, {2, 0}, 5);
    mask.push_back(14);
    FontFixture hints;
    const auto hints_info = cff(hints, mask);
    shape = font_builder_shape_3aa6cc(hints.image, hints_info, 1);
    require(shape.size() == 3 && shape[0].x == 3 && shape[0].y == 4,
            "stem counts and mask bytes are skipped before geometry");
    FontBuilderLimits limit;
    limit.maximum_parser_steps = 1;
    bool stopped = false;
    {
        (void)font_builder_shape_3aa6cc(f.image, info, 1, limit);
    }
    require(stopped, "bounded parser limit is missing analysis, not native false");
    FontFixture atlas_font;
    auto atlas_info = cff(atlas_font, square);
    (void)atlas_info;
    constexpr Address atlas = 0x1000, font = 0x2000, config = 0x5000, ranges = 0x6000;
    auto put = [&]<class T>(Address p, T value) {
        require(atlas_font.image.write(p, value), "CFF atlas fixture write");
    };
    put(atlas, ReU32(6));
    put(atlas + 0x10, 64);
    put(atlas + 0x14, 1);
    put(atlas + 0x494, -1);
    put(atlas + 0x498, -1);
    put(atlas + 0x49c, -1);
    put(atlas + 0x4a0, -1);
    put(atlas + 0x544, 3);
    put(atlas + 0x548, 4);
    put(atlas + 0x54c, 1.f);
    put(atlas + 0x78, 1);
    put(atlas + 0x80, config);
    put(config, atlas_font.data);
    put(config + 8, int(atlas_font.input.size));
    put(config + 0x14, 20.f);
    put(config + 0x18, 1);
    put(config + 0x1c, 1);
    put(config + 0x38, ranges);
    put(config + 0x44, re::ReNumericLimits<float>::max());
    put(config + 0x50, 1.f);
    put(config + 0x80, font);
    put(ranges, ReU16(65));
    put(ranges + 2, ReU16(65));
    FontTextStore store;
    auto &a = store.atlases[atlas];
    a.flags = 6;
    a.glyph_padding = 1;
    a.fonts = {font};
    a.white_rect = a.line_rect = a.round_rect = a.circle_rect = -1;
    a.radius = 3;
    a.inner = 4;
    a.exponent = 1;
    store.fonts[font].ellipsis_character = 0xffff;
    unsigned allocations = 0;
    FontBuilderEffects effects;
    effects.allocate_owned = [&](ReU64) {
        return ++allocations == 1 ? Address(0x20000)
               : allocations == 2 ? Address(0x21000)
                                  : Address(0x30000);
    };
    effects.support.free_39517c = [](Address) {};
    require(font_builder_default_3a59bc(atlas_font.image, atlas, store, {}, effects) && a.ready &&
                allocations == 3,
            "CFF font reaches complete concrete atlas builder and finalization");
    const auto *built = font_text_find_3a4554(store.fonts[font], 65);
    require(built && built->advance == 12 && built->x1 - built->x0 == 1 && built->y0 == 16 &&
                built->y1 == 17,
            "Type2 bounds/metrics/raster packing feed actual final glyph geometry");
}
} // namespace rust_internal_re
