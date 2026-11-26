#include "font_builder_internal.hpp"
namespace rust_internal_re {
using namespace font_builder_detail;
namespace {
ReI32 mul(ReI32 a, ReI32 b) {
    return integer(ReU32(a) * ReU32(b));
}
ReUSize bounded_count(ReI32 n, ReUSize maximum, Rva site) {
    if (n < 0 || ReUSize(n) > maximum)
        { __builtin_trap(); }
    return ReUSize(n);
}
Address allocated(const FontBuilderEffects &api, ReU64 size, Rva site) {
    if (!api.allocate_owned)
        { __builtin_trap(); }
    return api.allocate_owned(size);
}
void released(const FontBuilderEffects &api, Address key, Rva site) {
    if (!api.support.free_39517c)
        { __builtin_trap(); }
    api.support.free_39517c(key);
}
ReI32 add_rect(FontTextAtlas &a, int width, int height, const FontBuilderLimits &lim) {
    if (a.rectangles.size() >= lim.maximum_glyphs)
        { __builtin_trap(); }
    // [C]39f4fc zeroes all fields except the initial x/y pair, which is0xffffffff.
    a.rectangles.push_back(
        {ReU16(width), ReU16(height), 0xffff, 0xffff, 0, 0, {}, 0});
    return ReI32(a.rectangles.size() - 1);
}
void ensure_rectangles(Snapshot &image, Address key, FontTextAtlas &a,
                       const FontBuilderLimits &lim) {
    if (read<ReI32>(image, key + 0x494, 0x3a4cb6) < 0) {
        const bool tiny = (read<ReU8>(image, key, 0x3a4cc7) & 2) != 0;
        a.white_rect = add_rect(a, tiny ? 2 : 245, tiny ? 2 : 27, lim);
        write(image, key + 0x494, a.white_rect, 0x3a4ce0);
    }
    if (read<ReI32>(image, key + 0x498, 0x3a4ce6) < 0 &&
        !(read<ReU8>(image, key, 0x3a4cef) & 4)) {
        a.line_rect = add_rect(a, 65, 64, lim);
        write(image, key + 0x498, a.line_rect, 0x3a4d05);
    }
    if (read<ReI32>(image, key + 0x49c, 0x3a4ec5) >= 0)
        return;
    auto extent = add(
        add(read<int>(image, key + 0x544, 0x3a3858), read<int>(image, key + 0x548, 0x3a3858)), 4);
    a.round_rect = add_rect(a, extent, extent, lim);
    write(image, key + 0x49c, a.round_rect, 0x3a4efb);
    auto circle_extent = [&]() {
        const auto radius = read<int>(image, key + 0x544, 0x3a3783);
        const float cosine = font_text_cosine_3c899c(re::re_bit_cast<float>(0x3f490fdbu));
        return add(8, cvtt(16 + float(radius) / cosine));
    };
    const auto height = circle_extent();
    const auto width = circle_extent();
    a.circle_rect = add_rect(a, width, height, lim);
    write(image, key + 0x4a0, a.circle_rect, 0x3a4f29);
}
struct Source {
    Address config{}, font{};
    FontBuilderInfo info;
    ReUSize destination{};
    re::ReVector<re::RePair<ReU16, ReU16>> ranges;
    re::ReVector<ReU32> glyphs;
    re::ReVector<FontBuilderRect> rectangles;
    struct Packed {
        ReU16 x0{}, y0{}, x1{}, y1{};
        float xoff{}, yoff{}, advance{}, xoff2{}, yoff2{};
    };
    re::ReVector<Packed> packed;
    ReU8 horizontal{}, vertical{};
    float raster_size{};
};
static_assert(sizeof(Source::Packed) == 28);
void atlas_pixels_from_image(const Snapshot &image, Address key, FontTextAtlas &a,
                             const FontBuilderLimits &limits) {
    a.width = read<int>(image, key + 0x40, 0x3a61b6);
    a.height = read<int>(image, key + 0x44, 0x3a61b6);
    const auto count = bounded_count(mul(a.width, a.height), limits.maximum_pixels, 0x3a6198);
    a.uv_scale = read<Vec2>(image, key + 0x48, 0x3a6186);
    const auto pixels = read<Address>(image, key + 0x30, 0x3a61ab);
    a.alpha.emplace(count);
    for (ReUSize i = 0; i < count; ++i)
        (*a.alpha)[i] = read<ReU8>(image, pixels + i, 0x3a61ab);
}
void render_source(Snapshot &image, Source &s, Address pixels, int stride, int padding,
                   const FontBuilderLimits &lim) {
    const float size = s.raster_size;
    const float scale = size > 0 ? font_builder_scale_3aefdc(image, s.info, size)
                                 : font_builder_em_scale_3aefac(image, s.info, -size);
    const auto h = ReU32(s.horizontal), v = ReU32(s.vertical);
    const float rh = 1 / float(h), rv = 1 / float(v);
    const float shift_h = h ? -float(h - 1) / (2 * float(h)) : 0;
    const float shift_v = v ? -float(v - 1) / (2 * float(v)) : 0;
    int missing = -1;
    for (ReUSize i = 0; i < s.glyphs.size(); ++i) {
        auto &r = s.rectangles[i];
        if (r.packed && r.width && r.height) {
            const auto glyph = font_builder_glyph_3adf78(image, s.info, int(s.glyphs[i]), lim);
            r.width = sub(r.width, padding);
            r.height = sub(r.height, padding);
            r.x = add(r.x, padding);
            r.y = add(r.y, padding);
            const auto metrics = font_builder_horizontal_3ae550(image, s.info, glyph);
            const auto box = font_builder_bitmap_box_3ae308(image, s.info, glyph, float(h) * scale,
                                                            float(v) * scale);
            const auto offset = add(mul(stride, r.y), r.x);
            const auto output = pixels + ReU64(ReI64(offset));
            font_builder_bitmap_3ae788(image, s.info, output, add(add(r.width, -int(h)), 1),
                                       add(add(r.height, -int(v)), 1), stride, float(h) * scale,
                                       float(v) * scale, glyph, lim);
            if (h > 1)
                font_builder_filter(image, output, r.width, r.height, stride, h, false, lim);
            if (v > 1)
                font_builder_filter(image, output, r.width, r.height, stride, v, true, lim);
            s.packed[i] = {ReU16(r.x),
                           ReU16(r.y),
                           ReU16(add(r.x, r.width)),
                           ReU16(add(r.y, r.height)),
                           float(box.x0) * rh + shift_h,
                           float(box.y0) * rv + shift_v,
                           float(metrics[0]) * scale,
                           float(add(box.x0, r.width)) * rh + shift_h,
                           float(add(box.y0, r.height)) * rv + shift_v};
            if (!glyph)
                missing = int(i);
        } else if (r.packed && !r.width && !r.height && missing >= 0) {
            s.packed[i] = s.packed[ReUSize(missing)];
        }
        // [C]3ae9d4's success flag is ignored by3a620e; zero-initialized packed data survives
        // failures.
    }
}
} // namespace
bool font_builder_default_3a59bc(Snapshot &image, Address key, FontTextStore &store,
                                 const FontBuilderEnvironment &env, const FontBuilderEffects &api) {
    auto found = store.atlases.find(key);
    if (!found)
        { __builtin_trap(); }
    auto &atlas = **found;
    ensure_rectangles(image, key, atlas, env.limits);
    write(image, key + 8, Address(0), 0x3a59ff);
    write(image, key + 0x40, ReU64(0), 0x3a5a06);
    atlas.width = atlas.height = 0;
    write(image, key + 0x48, Vec2{}, 0x3a5a24);
    atlas.uv_scale = {};
    write(image, key + 0x50, Vec2{}, 0x3a5a35);
    atlas.white_uv = {};
    font_clear_pixels_3a3e64(image, key, api.support);
    atlas.alpha.reset();
    atlas.rgba.reset();
    const auto config_count =
        bounded_count(read<int>(image, key + 0x78, 0x3a5a56), env.limits.maximum_configs, 0x3a5a66);
    const auto config_data = read<Address>(image, key + 0x80, 0x39f620);
    if (atlas.fonts.size() > env.limits.maximum_fonts)
        { __builtin_trap(); }
    re::ReVector<Source> sources(config_count);
    for (ReUSize index = 0; index < config_count; ++index) {
        auto &s = sources[index];
        s.config = config_data + index * 0x88;
        s.font = read<Address>(image, s.config + 0x80, 0x3a5b10);
        const auto destination = re::re_find(atlas.fonts.begin(), atlas.fonts.end(), s.font);
        if (!destination)
            return false;
        s.destination = ReUSize(destination - atlas.fonts.begin());
        const FontBuilderInput input{read<Address>(image, s.config, 0x3a5b4e),
                                     bounded_count(read<int>(image, s.config + 8, 0x3a5b59),
                                                   env.limits.maximum_font_bytes, 0x3a5b59)};
        const auto start =
            font_builder_offset_3a9fdc(image, input, read<int>(image, s.config + 0x10, 0x3a5b4a));
        if (!font_builder_init_3aa060(image, s.info, input, start, env.limits))
            return false;
        auto ranges = read<Address>(image, s.config + 0x38, 0x3a5b7d);
        if (!ranges) {
            // [C]3a47bc returns the module's literal default range array.
            ranges = env.module + 0x2aa2d8;
        }
        for (ReUSize n = 0;; ++n) {
            if (n >= env.limits.maximum_glyphs)
                { __builtin_trap(); }
            const auto first = read<ReU16>(image, ranges + n * 4, 0x3a5bc1);
            if (!first)
                break;
            const auto last = read<ReU16>(image, ranges + n * 4 + 2, 0x3a5ba0);
            if (!last)
                break;
            s.ranges.emplace_back(first, last);
        }
    }
    re::ReVector<re::ReVector<bool>> used(atlas.fonts.size(), re::ReVector<bool>(65536));
    ReUSize total = 0;
    for (auto &s : sources) {
        for (auto [first, last] : s.ranges)
            for (ReU32 cp = first; cp <= last; ++cp)
                if (!used[s.destination][cp] &&
                    font_builder_glyph_3adf78(image, s.info, int(cp), env.limits)) {
                    used[s.destination][cp] = true;
                    s.glyphs.push_back(cp);
                    if (++total > env.limits.maximum_glyphs)
                        __builtin_trap();
                }
        // [C]3a8c20 emits source bitset members in ascending codepoint order.
        re::re_sort(s.glyphs.begin(), s.glyphs.end());
        s.rectangles.resize(s.glyphs.size());
        s.packed.resize(s.glyphs.size());
    }
    int area = 0;
    for (auto &s : sources) {
        if (s.glyphs.empty())
            continue;
        const float size = read<float>(image, s.config + 0x14, 0x3a5e9d);
        s.raster_size = size;
        s.horizontal = read<ReU8>(image, s.config + 0x18, 0x3a5ecc);
        s.vertical = read<ReU8>(image, s.config + 0x1c, 0x3a5ed5);
        const float scale = size > 0 ? font_builder_scale_3aefdc(image, s.info, size)
                                     : font_builder_em_scale_3aefac(image, s.info, -size);
        const auto padding = add(read<int>(image, key + 0x14, 0x3a5f06), -1);
        for (ReUSize i = 0; i < s.glyphs.size(); ++i) {
            const auto glyph =
                font_builder_glyph_3adf78(image, s.info, int(s.glyphs[i]), env.limits);
            const auto h = read<int>(image, s.config + 0x18, 0x3a5f45);
            const auto v = read<int>(image, s.config + 0x1c, 0x3a5f3d);
            const auto box = font_builder_bitmap_box_3ae308(image, s.info, glyph, float(h) * scale,
                                                            float(v) * scale);
            auto &r = s.rectangles[i];
            r.width = add(add(sub(h, box.x0), box.x1), padding);
            r.height = add(add(sub(v, box.y0), box.y1), padding);
            area = add(area, mul(r.width, r.height));
        }
    }
    int width = read<int>(image, key + 0x10, 0x3a6020);
    write(image, key + 0x44, int(0), 0x3a6023);
    atlas.height = 0;
    if (width <= 0) {
        const float extent = float(add(cvtt(sample_sqrt_2e3c88(float(area))), 1));
        width = 512;
        if (extent >= re::re_bit_cast<float>(0x44333333u))
            width = 1024;
        if (extent >= re::re_bit_cast<float>(0x44b33333u))
            width = 2048;
        if (extent >= re::re_bit_cast<float>(0x45333333u))
            width = 4096;
    }
    write(image, key + 0x40, width, 0x3a6079);
    atlas.width = width;
    const int padding = read<int>(image, key + 0x14, 0x3a6089);
    const auto pack_key = allocated(api, 0x48, 0x3ae8e4);
    const auto node_count = sub(width, padding);
    const auto nodes_key = allocated(api, ReU64(ReI64(node_count)) << 4, 0x3ae901);
    if (!pack_key || !nodes_key) {
        if (pack_key)
            released(api, pack_key, 0x3ae99d);
        else if (nodes_key)
            released(api, nodes_key, 0x3ae99d);
        // [C]Root ignores PackBegin false and next passes a null context to3a4db0.
        __builtin_trap();
    }
    FontBuilderPack pack;
    font_builder_pack_init_3adda4(pack, node_count, sub(0x8000, padding), node_count, env.limits);
    re::ReVector<FontBuilderRect> custom(atlas.rectangles.size());
    for (ReUSize i = 0; i < custom.size(); ++i) {
        custom[i].width = atlas.rectangles[i].width;
        custom[i].height = atlas.rectangles[i].height;
    }
    (void)font_builder_pack_rects_3ade50(pack, custom, env.limits);
    int height = 0;
    for (ReUSize i = 0; i < custom.size(); ++i)
        if (custom[i].packed) {
            atlas.rectangles[i].x = ReU16(custom[i].x);
            atlas.rectangles[i].y = ReU16(custom[i].y);
            height = re::re_max(read<int>(image, key + 0x44, 0x3a4e96),
                              add(custom[i].y, custom[i].height));
            write(image, key + 0x44, height, 0x3a4e9e);
        }
    for (auto &s : sources) {
        if (s.glyphs.empty())
            continue;
        (void)font_builder_pack_rects_3ade50(pack, s.rectangles, env.limits);
        for (const auto &r : s.rectangles)
            if (r.packed) {
                height = re::re_max(read<int>(image, key + 0x44, 0x3a6116), add(r.y, r.height));
                write(image, key + 0x44, height, 0x3a611e);
            }
    }
    height = read<int>(image, key + 0x44, 0x3a6135);
    if (read<ReU8>(image, key, 0x3a6138) & 1)
        height = add(height, 1);
    else {
        auto h = ReU32(height) - 1;
        h |= h >> 1;
        h |= h >> 2;
        h |= h >> 4;
        h |= h >> 8;
        h |= h >> 16;
        height = integer(h + 1);
    }
    width = read<int>(image, key + 0x40, 0x3a6158);
    write(image, key + 0x44, height, 0x3a6168);
    write(image, key + 0x48, Vec2{1 / float(width), 1 / float(height)}, 0x3a6186);
    const auto alpha = allocated(api, ReU64(ReI64(mul(width, height))), 0x3a618e);
    const auto zero_count =
        mul(read<int>(image, key + 0x44, 0x3a6193), read<int>(image, key + 0x40, 0x3a6198));
    write(image, key + 0x30, alpha, 0x3a619c);
    const auto count = bounded_count(zero_count, env.limits.maximum_pixels, 0x3a61a6);
    for (ReUSize i = 0; i < count; ++i)
        write(image, alpha + i, ReU8(0), 0x3a61a6);
    const auto render_pixels = read<Address>(image, key + 0x30, 0x3a61ab);
    for (ReUSize source_index = 0; source_index < sources.size(); ++source_index) {
        auto &s = sources[source_index];
        s.config = read<Address>(image, key + 0x80, 0x39f620) + source_index * 0x88;
        if (s.glyphs.empty())
            continue;
        render_source(image, s, render_pixels, add(pack.width, padding), padding, env.limits);
        const float multiplier = read<float>(image, s.config + 0x50, 0x3a6213);
        if (multiplier != 1) {
            Snapshot table{0, re::ReVector<ReByte>(256)};
            font_opacity_table_3a4d18(table, 0, multiplier);
            ReUSize operations = 0;
            for (const auto &r : s.rectangles) {
                if (!r.packed)
                    continue;
                const auto stride = read<int>(image, key + 0x40, 0x3a623e);
                auto cursor = read<Address>(image, key + 0x30, 0x3a624d) +
                              ReU64(ReI64(add(mul(r.y, stride), r.x)));
                const auto step = sub(stride, r.width);
                for (int y = 0; y < r.height; ++y) {
                    if (ReUSize(y) >= env.limits.maximum_pixels)
                        { __builtin_trap(); }
                    for (int x = 0; x < r.width; ++x) {
                        if (operations++ >= env.limits.maximum_pixels)
                            { __builtin_trap(); }
                        const auto value = read<ReU8>(image, cursor, 0x3a4d8a);
                        write(image, cursor, read<ReU8>(table, value, 0x3a4d90), 0x3a4d93);
                        ++cursor;
                    }
                    cursor += ReU64(ReI64(step));
                }
            }
        }
    }
    // [C]3ae9b4 frees nodes before packinfo.
    released(api, nodes_key, 0x3ae9bd);
    released(api, pack_key, 0x3ae9c6);
    for (ReUSize source_index = 0; source_index < sources.size(); ++source_index) {
        auto &s = sources[source_index];
        if (s.glyphs.empty())
            continue;
        s.config = read<Address>(image, key + 0x80, 0x39f620) + source_index * 0x88;
        s.font = read<Address>(image, s.config + 0x80, 0x3a62df);
        const float size = read<float>(image, s.config + 0x14, 0x3a62e6);
        const float scale = font_builder_scale_3aefdc(image, s.info, size);
        const auto metrics = font_builder_vertical_3ae24c(image, s.info);
        const float descent =
            float(cvtt(float(metrics[1] > 0 ? 1 : -1) + float(metrics[1]) * scale));
        const float ascent =
            float(cvtt(float(metrics[0] > 0 ? 1 : -1) + float(metrics[0]) * scale));
        auto font = store.fonts.find(s.font);
        if (!font) {
            font_begin_config_3a5950(image, key, s.font, s.config, ascent, descent, api.support);
            __builtin_trap();
        }
        font_begin_config_owned_3a5950(image, **font, key, s.font, s.config, ascent, descent,
                                       api.support);
        const float baseline = float(cvtt(read<float>(image, s.font + 0x68, 0x3a6384) + 0.5f)) +
                               read<float>(image, s.config + 0x30, 0x3a63a9);
        const float offset = read<float>(image, s.config + 0x2c, 0x3a6393);
        for (ReUSize i = 0; i < s.glyphs.size(); ++i) {
            const auto &p = s.packed[i];
            const float inv_width = 1 / float(read<int>(image, key + 0x40, 0x3a63e0));
            const float inv_height = 1 / float(read<int>(image, key + 0x44, 0x3a63d9));
            FontTextGlyph g;
            g.advance = p.advance;
            g.x0 = p.xoff + offset;
            g.y0 = p.yoff + baseline;
            g.x1 = p.xoff2 + offset;
            g.y1 = p.yoff2 + baseline;
            g.u0 = float(p.x0) * inv_width;
            g.v0 = float(p.y0) * inv_height;
            g.u1 = float(p.x1) * inv_width;
            g.v1 = float(p.y1) * inv_height;
            const FontTextGlyphConfig cfg{read<ReU8>(image, s.config + 0x20, 0x39ff7c) != 0,
                                          read<float>(image, s.config + 0x24, 0x39ff7c),
                                          read<float>(image, s.config + 0x40, 0x39ff7c),
                                          read<float>(image, s.config + 0x44, 0x39ff7c)};
            font_text_add_glyph_deferred_39ff7c(image, s.font, **font,
                                                ReU16(s.glyphs[i]), g, cfg);
        }
    }
    atlas_pixels_from_image(image, key, atlas, env.limits);
    atlas.flags = read<ReU32>(image, key, 0x3a5008);
    atlas.glyph_padding = read<int>(image, key + 0x14, 0x39ff7c);
    atlas.white_rect = read<int>(image, key + 0x494, 0x3a4f38);
    atlas.line_rect = read<int>(image, key + 0x498, 0x3a5008);
    atlas.round_rect = read<int>(image, key + 0x49c, 0x3a5204);
    atlas.circle_rect = read<int>(image, key + 0x4a0, 0x3a5204);
    atlas.radius = read<int>(image, key + 0x544, 0x3a5204);
    atlas.inner = read<int>(image, key + 0x548, 0x3a5204);
    atlas.exponent = read<float>(image, key + 0x54c, 0x3a5204);
    atlas.offset = read<float>(image, key + 0x550, 0x3a5204);
    atlas.blur = read<ReU8>(image, key + 0x554, 0x3a5204) != 0;
    font_builder_finish_atlas_3a4b40(image, key, store);
    return true;
}
FontProducerEffects bind_font_builder(Snapshot &image, FontTextStore &store,
                                      const FontBuilderEnvironment &env,
                                      const FontBuilderEffects &effects,
                                      FontProducerEffects fallback) {
    const auto previous = fallback.build;
    fallback.build = [&image, &store, env, effects, previous](Address target, Address atlas) {
        if (target == env.module + 0x3a59bc)
            return font_builder_default_3a59bc(image, atlas, store, env, effects);
        if (previous)
            return previous(target, atlas);
        { __builtin_trap(); }
    };
    if (!fallback.allocate_owned)
        fallback.allocate_owned = effects.allocate_owned;
    return fallback;
}
} // namespace rust_internal_re
