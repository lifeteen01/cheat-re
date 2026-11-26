#include "font_builder_internal.hpp"
namespace rust_internal_re {
using namespace font_builder_detail;
namespace {
bool is_font(const Reader &r) {
    const auto a = r.byte(0, 0x3ac1d8);
    if (a == '1')
        return r.byte(1, 0x3ac1df) == 0 && r.byte(2, 0x3ac1e4) == 0 && r.byte(3, 0x3ac1e9) == 0;
    if (a == 't') {
        if (r.byte(1, 0x3ac1f3) == 'y')
            return r.byte(2, 0x3ac1f9) == 'p' && r.byte(3, 0x3ac1ff) == '1';
        return r.byte(1, 0x3ac205) == 'r' && r.byte(2, 0x3ac20b) == 'u' &&
               r.byte(3, 0x3ac213) == 'e';
    }
    if (a == 'O')
        return r.byte(1, 0x3ac220) == 'T' && r.byte(2, 0x3ac226) == 'T' &&
               r.byte(3, 0x3ac22c) == 'O';
    return a == 0 && r.byte(1, 0x3ac23b) == 1 && r.byte(2, 0x3ac241) == 0 &&
           r.byte(3, 0x3ac246) == 0;
}
ReI32 find_table(const Reader &r, ReI32 start, re::ReStringView tag) {
    const auto count = r.word(ReU64(ReU32(start)) + 4, 0x3abbf9);
    const auto base = ReU32(start) + 12;
    for (ReU32 i = 0; i < count; ++i) {
        const auto record = base + i * 16;
        bool match = true;
        for (ReUSize k = 0; k < 4; ++k) {
            if (r.byte(ReU64(record) + k, 0x3abc1f) != ReU8(tag[k])) {
                match = false;
                break;
            }
        }
        if (match)
            return integer(r.dword(ReU64(record) + 8, 0x3abc71));
    }
    return 0;
}
} // namespace
ReI32 font_builder_offset_3a9fdc(const Snapshot &image, FontBuilderInput input,
                                        ReI32 index) {
    const Reader r{image, input};
    if (is_font(r))
        return index == 0 ? 0 : -1;
    if (r.byte(0, 0x3a9ff6) != 't' || r.byte(1, 0x3a9ffb) != 't' || r.byte(2, 0x3aa001) != 'c' ||
        r.byte(3, 0x3aa007) != 'f')
        return -1;
    const auto version = r.dword(4, 0x3aa011);
    if (version != 0x10000 && r.dword(4, 0x3aa021) != 0x20000)
        return -1;
    const auto count = integer(r.dword(8, 0x3aa031));
    if (index >= count)
        return -1;
    const auto offset = integer(ReU32(index) * 4);
    return integer(r.dword(ReI64(offset) + 12, 0x3aa051));
}
bool font_builder_init_3aa060(const Snapshot &image, FontBuilderInfo &info, FontBuilderInput input,
                              ReI32 start, const FontBuilderLimits &limits) {
    if (input.size > limits.maximum_font_bytes)
        { __builtin_trap(); }
    info.input = input;
    info.font_start = start;
    info.cff = false;
    info.cff_buffers = {};
    const Reader r{image, input};
    const auto cmap = find_table(r, start, "cmap");
    info.loca = find_table(r, start, "loca");
    info.head = find_table(r, start, "head");
    info.glyf = find_table(r, start, "glyf");
    info.hhea = find_table(r, start, "hhea");
    info.hmtx = find_table(r, start, "hmtx");
    info.kern = find_table(r, start, "kern");
    info.gpos = find_table(r, start, "GPOS");
    if (!cmap || !info.head || !info.hhea || !info.hmtx)
        return false;
    if (info.glyf) {
        if (!info.loca)
            return false;
    } else {
        const auto cff = find_table(r, start, "CFF ");
        if (!cff)
            return false;
        info.cff = true;
        if (!cff_init(image, info, cff, limits))
            return false;
    }
    const auto maximum = find_table(r, start, "maxp");
    info.glyph_count = maximum ? r.word(ReI64(maximum) + 4, 0x3aa43e) : 0xffff;
    info.svg = -1;
    info.index_map = 0;
    const auto tables = r.word(ReU64(ReU32(cmap)) + 2, 0x3aa45e);
    for (ReU32 i = 0; i < tables; ++i) {
        const auto record = ReU32(cmap) + 4 + i * 8;
        const auto platform = r.word(record, 0x3aa483);
        if (platform == 0 || (platform == 3 && (r.word(ReU64(record) + 2, 0x3aa49a) == 1 ||
                                                r.word(ReU64(record) + 2, 0x3aa49a) == 10)))
            info.index_map =
                integer(ReU32(cmap) + r.dword(ReU64(record) + 4, 0x3aa4b3));
    }
    if (!info.index_map)
        return false;
    info.loca_format = r.word(ReI64(info.head) + 50, 0x3aa4db);
    return true;
}
ReI32 font_builder_glyph_3adf78(const Snapshot &image, const FontBuilderInfo &info,
                                       ReI32 cp, const FontBuilderLimits &limits) {
    const Reader r{image, info.input};
    const ReU32 map = ReU32(info.index_map);
    const auto format = r.word(map, 0x3adf9a);
    if (format == 0) {
        const auto count = ReI32(r.word(ReU64(map) + 2, 0x3adfaf)) - 6;
        if (cp >= count)
            return 0;
        return r.byte(ReI64(map) + 6 + cp, 0x3adfc7);
    }
    if (format == 6) {
        const auto first = r.word(ReU64(map) + 6, 0x3adfe1),
                   count = r.word(ReU64(map) + 8, 0x3adff7);
        if (ReU32(cp) < first || ReU32(cp) >= ReU32(first) + count)
            return 0;
        return r.word(ReU64(map) + 10 + 2ULL * (ReU32(cp) - first), 0x3ae01c);
    }
    if (format == 2)
        return 0;
    if (format == 4) {
        const auto count = ReU16(r.word(ReU64(map) + 6, 0x3ae048) >> 1);
        auto search = ReU16(r.word(ReU64(map) + 8, 0x3ae055) >> 1);
        auto selector = r.word(ReU64(map) + 10, 0x3ae061);
        if (cp > 0xffff)
            return 0;
        const auto shift = ReU16(r.word(ReU64(map) + 12, 0x3ae087) >> 1);
        ReU32 end = map + 14;
        const auto shifted = end + ReU32(shift) * 2;
        if (cp >= r.word(shifted, 0x3ae09e))
            end = shifted;
        end -= 2;
        while (selector) {
            search = ReU16(search >> 1);
            const auto address = end + 2u * search;
            if (cp > r.word(address, 0x3ae0dc))
                end = address;
            --selector;
        }
        const auto item = ReU16((end - (map + 14) + 2) >> 1);
        const auto lo = r.word(ReU64(map) + 16 + 2ULL * count + 2ULL * item, 0x3ae123),
                   hi = r.word(ReU64(map) + 14 + 2ULL * item, 0x3ae13b);
        if (cp < lo || cp > hi)
            return 0;
        const auto offset = r.word(ReU64(map) + 16 + 6ULL * count + 2ULL * item, 0x3ae15f);
        if (!offset)
            return ReU16(
                r.word(ReU64(map) + 16 + 4ULL * count + 2ULL * item, 0x3ae182) +
                ReU32(cp));
        return r.word(ReU64(map) + 16 + 6ULL * count + 2ULL * item + offset +
                          2ULL * (ReU32(cp) - lo),
                      0x3ae019);
    }
    if (format == 12 || format == 13) {
        const auto groups = integer(r.dword(ReU64(map) + 12, 0x3ae1c0));
        if (groups <= 0)
            return 0;
        if (ReUSize(groups) > limits.maximum_glyphs)
            { __builtin_trap(); }
        ReI32 low = 0, high = groups;
        while (low < high) {
            const auto middle = low + (high - low) / 2;
            const auto record = ReU64(map) + 16 + 12ULL * ReU32(middle);
            const auto first = r.dword(record, 0x3ae1ec);
            if (ReU32(cp) < first)
                high = middle;
            else if (ReU32(cp) > r.dword(record + 4, 0x3ae204))
                low = middle + 1;
            else {
                const auto glyph = r.dword(record + 8, 0x3ae230);
                return integer(format == 12 ? glyph - first + ReU32(cp) : glyph);
            }
        }
    }
    return 0;
}
re::ReArray<ReI32, 3> font_builder_vertical_3ae24c(const Snapshot &image,
                                                         const FontBuilderInfo &info) {
    const Reader r{image, info.input};
    return {r.signed_word(ReI64(info.hhea) + 4, 0x3ae267),
            r.signed_word(ReI64(info.hhea) + 6, 0x3ae287),
            r.signed_word(ReI64(info.hhea) + 8, 0x3ae2a6)};
}
float font_builder_scale_3aefdc(const Snapshot &image, const FontBuilderInfo &info, float pixels) {
    const Reader r{image, info.input};
    const auto descent = r.signed_word(ReI64(info.hhea) + 6, 0x3aefef),
               ascent = r.signed_word(ReI64(info.hhea) + 4, 0x3aeffe);
    return pixels / float(ReI32(ascent) - descent);
}
float font_builder_em_scale_3aefac(const Snapshot &image, const FontBuilderInfo &info,
                                   float pixels) {
    const Reader r{image, info.input};
    return pixels / float(r.word(ReI64(info.head) + 18, 0x3aefbf));
}
} // namespace rust_internal_re
namespace rust_internal_re::font_builder_detail {
ReI32 glyph_offset(const Snapshot &image, const FontBuilderInfo &info, ReI32 glyph) {
    if (glyph >= info.glyph_count || info.loca_format >= 2)
        return -1;
    const Reader r{image, info.input};
    ReU32 first, last;
    if (info.loca_format == 0) {
        const auto offset = integer(ReU32(glyph) * 2);
        const auto entry = ReI64(info.loca) + offset;
        first = ReU32(r.word(entry, 0x3aa51f)) * 2;
        last = ReU32(r.word(entry + 2, 0x3aa52f)) * 2;
    } else {
        const auto offset = integer(ReU32(glyph) * 4);
        const auto entry = ReI64(info.loca) + offset;
        first = r.dword(entry, 0x3aa54d);
        last = r.dword(entry + 4, 0x3aa559);
    }
    return first == last ? -1 : integer(ReU32(info.glyf) + first);
}
} // namespace rust_internal_re::font_builder_detail
namespace rust_internal_re {
using namespace font_builder_detail;
re::ReOptional<FontBuilderBox>
font_builder_box_3ae484(const Snapshot &image, const FontBuilderInfo &info, ReI32 glyph) {
    if (info.cff)
        return cff_box(image, info, glyph);
    const auto offset = glyph_offset(image, info, glyph);
    if (offset < 0)
        return {};
    const Reader r{image, info.input};
    return FontBuilderBox{r.signed_word(ReI64(offset) + 2, 0x3ae4db),
                          r.signed_word(ReI64(offset) + 4, 0x3ae4f8),
                          r.signed_word(ReI64(offset) + 6, 0x3ae517),
                          r.signed_word(ReI64(offset) + 8, 0x3ae536)};
}
FontBuilderBox font_builder_bitmap_box_3ae308(const Snapshot &image, const FontBuilderInfo &info,
                                              ReI32 glyph, float sx, float sy, float shift_x,
                                              float shift_y) {
    const auto box = font_builder_box_3ae484(image, info, glyph);
    if (!box)
        return {};
    const auto x0 = cvtt(floor_native(float(box->x0) * sx + shift_x));
    const auto y0 = cvtt(floor_native(shift_y - float(box->y1) * sy));
    const auto x1 = cvtt(ceil_native(float(box->x1) * sx + shift_x));
    const auto y1 = cvtt(ceil_native(shift_y - float(box->y0) * sy));
    return {x0, y0, x1, y1};
}
re::ReArray<ReI32, 2> font_builder_horizontal_3ae550(const Snapshot &image,
                                                           const FontBuilderInfo &info,
                                                           ReI32 glyph) {
    const Reader r{image, info.input};
    const auto count = r.word(ReI64(info.hhea) + 34, 0x3ae56f);
    ReI64 advance, bearing;
    if (glyph < count) {
        const auto offset = integer(ReU32(glyph) * 4);
        advance = ReI64(info.hmtx) + offset;
        bearing = ReI64(info.hmtx) + (ReI64(offset) | 2);
    } else {
        const auto bytes = ReU32(count) * 4;
        advance = ReI64(info.hmtx) - 4 + bytes;
        const auto delta = integer((ReU32(glyph) - count) * 2);
        bearing = ReI64(info.hmtx) + delta + bytes;
    }
    return {r.signed_word(advance, 0x3ae594), r.signed_word(bearing, 0x3ae5fb)};
}
} // namespace rust_internal_re
