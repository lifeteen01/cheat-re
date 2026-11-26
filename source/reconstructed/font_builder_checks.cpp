#include "font_builder_fixture.hpp"
namespace rust_internal_re {
using namespace font_builder_fixture;
namespace {
struct BuilderFixture : FontFixture {
    static constexpr Address atlas = 0x1000, font = 0x2000, configs = 0x5000, ranges = 0x6000;
    FontTextStore store;
    FontBuilderEnvironment env;
    re::ReVector<ReU64> allocations;
    re::ReVector<Address> frees;
    FontBuilderEffects effects;
    template <class T> void set(Address p, T value) {
        require(image.write(p, value), "builder fixture store");
    }
    template <class T> T get(Address p) {
        auto v = image.read<T>(p);
        require(v.has_value(), "builder fixture load");
        return *v;
    }
    BuilderFixture() {
        set(atlas, ReU32(6));
        set(atlas + 0x10, int(64));
        set(atlas + 0x14, int(1));
        set(atlas + 0x494, int(-1));
        set(atlas + 0x498, int(-1));
        set(atlas + 0x49c, int(-1));
        set(atlas + 0x4a0, int(-1));
        set(atlas + 0x544, int(3));
        set(atlas + 0x548, int(4));
        set(atlas + 0x54c, 1.f);
        set(atlas + 0x78, int(1));
        set(atlas + 0x80, configs);
        set(configs, data);
        set(configs + 8, int(input.size));
        set(configs + 0x14, 20.f);
        set(configs + 0x18, int(1));
        set(configs + 0x1c, int(1));
        set(configs + 0x38, ranges);
        set(configs + 0x44, re::ReNumericLimits<float>::max());
        set(configs + 0x50, 1.f);
        set(configs + 0x80, font);
        set(ranges, ReU16(65));
        set(ranges + 2, ReU16(66));
        set(ranges + 4, ReU16(0));
        auto &a = store.atlases[atlas];
        a.flags = 6;
        a.glyph_padding = 1;
        a.fonts = {font};
        a.white_rect = a.line_rect = a.round_rect = a.circle_rect = -1;
        a.radius = 3;
        a.inner = 4;
        a.exponent = 1;
        auto &f = store.fonts[font];
        f.fallback_character = 63;
        f.ellipsis_character = 0xffff;
        effects.allocate_owned = [this](ReU64 n) {
            allocations.push_back(n);
            return allocations.size() % 3 == 1   ? Address(0x20000)
                   : allocations.size() % 3 == 2 ? Address(0x21000)
                                                 : Address(0x30000);
        };
        effects.support.free_39517c = [this](Address p) { frees.push_back(p); };
    }
    bool build() { return font_builder_default_3a59bc(image, atlas, store, env, effects); }
};
void raster_checks() {
    FontFixture f;
    FontBuilderInfo info;
    require(font_builder_init_3aa060(f.image, info, f.input, 0), "raster init");
    constexpr Address pixels = 0x80000;
    font_builder_bitmap_3ae788(f.image, info, pixels, 10, 14, 10, 0.02f, 0.02f, 1);
    require(*f.image.read<ReU8>(pixels) == 91 &&
                *f.image.read<ReU8>(pixels + 1) == 0 &&
                *f.image.read<ReU8>(pixels + 130) == 255 &&
                *f.image.read<ReU8>(pixels + 139) == 164,
            "analytic triangle edge coverage");
    unsigned sum = 0;
    for (unsigned i = 0; i < 140; ++i)
        sum += *f.image.read<ReU8>(pixels + i);
    require(sum >= 17848 && sum <= 17852, "triangle area coverage conservation");
    require(f.image.write(pixels, ReU8(37)), "empty raster marker");
    font_builder_bitmap_3ae788(f.image, info, pixels, 3, 3, 3, 0.02f, 0.02f, 2);
    require(*f.image.read<ReU8>(pixels) == 37,
            "empty outline returns without clearing supplied pixels");
    re::ReArray<ReU8, 6> input_pixels{100, 100, 0, 0, 0, 0};
    require(f.image.write(pixels, input_pixels), "prefilter input");
    font_builder_filter(f.image, pixels, 4, 1, 6, 2, false);
    require(*f.image.read<re::ReArray<ReU8, 6>>(pixels) ==
                re::ReArray<ReU8, 6>{50, 100, 50, 0, 0, 0},
            "horizontal box filter with zero tail");
    font_builder_bitmap_3ae788(f.image, info, pixels, 10, 14, 10,
                               re::ReNumericLimits<float>::quiet_NaN(),
                               re::ReNumericLimits<float>::quiet_NaN(), 1);
    for (unsigned i = 0; i < 140; ++i)
        require(*f.image.read<ReU8>(pixels + i) == 0,
                "unordered scaled edge heights never enter native active list");
    require(f.image.write(pixels, input_pixels), "vertical prefilter input");
    font_builder_filter(f.image, pixels, 1, 4, 1, 2, true);
    require(*f.image.read<re::ReArray<ReU8, 6>>(pixels) ==
                re::ReArray<ReU8, 6>{50, 100, 50, 0, 0, 0},
            "vertical box filter order");
}
} // namespace
void check_font_builder_reconstruction() {
    require(font_builder_coverage().size() == 102, "exact font builder range ledger");
    check_font_builder_sfnt();
    check_font_builder_packing();
    check_font_builder_cff();
    check_font_builder_owned();
    raster_checks();
    BuilderFixture b;
    require(b.build(), "default builder returns true");
    const auto &a = b.store.atlases[b.atlas];
    const auto &f = b.store.fonts[b.font];
    const auto *ga = font_text_find_3a4554(f, 65);
    const auto *gb = font_text_find_3a4554(f, 66);
    require(a.ready && a.alpha && a.width == 64 && a.height == 32 &&
                b.allocations == re::ReVector<ReU64>{72, 1008, 2048} &&
                b.frees == re::ReVector<Address>{0x21000, 0x20000},
            ("literal pack allocations: dims=" + re::re_to_string(a.width) + "," +
             re::re_to_string(a.height) + " sizes=" + re::re_to_string(b.allocations[0]) + "," +
             re::re_to_string(b.allocations[1]) + "," + re::re_to_string(b.allocations[2]))
                .c_str());
    require(ga && gb && ga->advance == 12 && ga->x1 - ga->x0 == 10 && ga->y0 == 3 && ga->y1 == 17 &&
                gb->advance == 12 && gb->x0 == gb->x1 && f.measure.nominal == 20 &&
                f.measure.fallback == 12 && b.get<float>(b.font + 0x68) == 17 &&
                b.get<float>(b.font + 0x6c) == -5,
            "copied metrics feed actual glyph outputs and empty glyph advance");
    require(b.get<Vec2>(b.atlas + 0x50).x == a.white_uv.x &&
                b.get<ReU8>(b.atlas + 0x28) == 1 && b.get<Address>(b.font + 0x30) == 0 &&
                b.get<int>(b.font + 0x28) == 0,
            "owned generated vectors and copied scalar/pixel outputs");
    for (ReUSize i = 0; i < a.alpha->size(); ++i)
        require(b.get<ReU8>(0x30000 + i) == (*a.alpha)[i],
                "owned atlas pixel synchronization");
    BuilderFixture duplicate;
    duplicate.set(duplicate.atlas + 0x78, 2);
    for (ReUSize i = 0; i < 0x88; ++i)
        duplicate.set(duplicate.configs + 0x88 + i,
                      duplicate.get<ReU8>(duplicate.configs + i));
    duplicate.set(duplicate.configs + 0x88 + 0x48, ReU8(1));
    duplicate.set(duplicate.configs + 0x88 + 0x14, 30.f);
    duplicate.set(duplicate.configs + 0x38, duplicate.ranges + 8);
    duplicate.set(duplicate.ranges + 8, ReU16(65));
    duplicate.set(duplicate.ranges + 10, ReU16(65));
    duplicate.set(duplicate.ranges + 12, ReU16(0));
    require(
        duplicate.build() && duplicate.store.fonts[duplicate.font].glyphs.size() == 2 &&
            font_text_find_3a4554(duplicate.store.fonts[duplicate.font], 65)->advance == 12 &&
            font_text_find_3a4554(duplicate.store.fonts[duplicate.font], 66)->advance == 18 &&
            duplicate.get<ReU16>(duplicate.font + 0x50) == 2,
        "destination bitset dedup and merge config metrics");
    BuilderFixture reload;
    auto allocator = reload.effects.allocate_owned;
    reload.effects.allocate_owned = [&](ReU64 n) {
        auto p = allocator(n);
        if (reload.allocations.size() == 3)
            reload.set(reload.configs + 0x14, 30.f);
        return p;
    };
    require(reload.build() && reload.store.fonts[reload.font].measure.nominal == 30 &&
                font_text_find_3a4554(reload.store.fonts[reload.font], 65)->advance == 12 &&
                reload.get<float>(reload.font + 0x68) == 25,
            "saved raster range size versus postallocation config metric reload");
    BuilderFixture no_destination;
    no_destination.set(no_destination.configs + 0x80, Address(99));
    require(!no_destination.build() && no_destination.allocations.empty() &&
                no_destination.store.atlases[no_destination.atlas].rectangles.size() == 3 &&
                no_destination.get<Address>(no_destination.atlas + 8) == 0,
            "early native false retains custom rectangles and reset prefix");
    BuilderFixture failure;
    failure.effects.allocate_owned = [&](ReU64 n) {
        failure.allocations.push_back(n);
        return failure.allocations.size() == 1 ? Address(0) : Address(0x21000);
    };
    bool stopped = false;
    {
        (void)failure.build();
    }
    require(
        stopped && failure.allocations == re::ReVector<ReU64>{72, 1008} &&
            failure.frees == re::ReVector<Address>{0x21000},
        "ignored pack failure preserves second allocation and free before missing context stop");
    BuilderFixture bound;
    bound.env.limits.maximum_pixels = 1;
    stopped = false;
    {
        (void)bound.build();
    }
    require(stopped && bound.get<Address>(bound.atlas + 0x30) == 0x30000 && bound.frees.empty(),
            "pixel bound stops after allocated pointer store and before pack release");
    BuilderFixture rebuilt;
    require(
        rebuilt.build() && rebuilt.build() &&
            rebuilt.store.atlases[rebuilt.atlas].rectangles.size() == 3 &&
            rebuilt.store.fonts[rebuilt.font].glyphs.size() == 2 && rebuilt.frees[2] == 0x30000,
        "repeat build frees previous alpha, reuses owned rectangles and replaces glyph vectors");
    BuilderFixture nan;
    nan.set(nan.configs + 0x14, re::ReNumericLimits<float>::quiet_NaN());
    require(nan.build() && re::re_isnan(nan.store.fonts[nan.font].measure.nominal) &&
                nan.get<float>(nan.font + 0x68) == float(INT32_MIN),
            "unordered font size takes negative/em raster branch and preserves native indefinite "
            "metric conversion");
    BuilderFixture dimensions;
    auto dimensions_allocator = dimensions.effects.allocate_owned;
    dimensions.effects.allocate_owned = [&](ReU64 n) {
        auto p = dimensions_allocator(n);
        if (dimensions.allocations.size() == 3) {
            dimensions.set(dimensions.atlas + 0x40, 32);
            dimensions.set(dimensions.atlas + 0x44, 64);
        }
        return p;
    };
    require(dimensions.build() && dimensions.store.atlases[dimensions.atlas].width == 32 &&
                dimensions.store.atlases[dimensions.atlas].height == 64 &&
                dimensions.get<Vec2>(dimensions.atlas + 0x48).x == 1.f / 64 &&
                dimensions.get<Vec2>(dimensions.atlas + 0x48).y == 1.f / 32 &&
                dimensions.allocations.back() == 2048,
            "allocation observer dimensions reload changes zero extent and final UV denominators "
            "without recomputing earlier UV scale");
    BuilderFixture changed_config;
    for (ReUSize i = 0; i < 0x88; ++i)
        changed_config.set(Address(0x7000) + i,
                           changed_config.get<ReU8>(changed_config.configs + i));
    changed_config.set(Address(0x7000) + 0x14, 30.f);
    auto config_allocator = changed_config.effects.allocate_owned;
    changed_config.effects.allocate_owned = [&](ReU64 n) {
        auto p = config_allocator(n);
        if (changed_config.allocations.size() == 3)
            changed_config.set(changed_config.atlas + 0x80, Address(0x7000));
        return p;
    };
    require(changed_config.build() &&
                changed_config.store.fonts[changed_config.font].measure.nominal == 30 &&
                font_text_find_3a4554(changed_config.store.fonts[changed_config.font], 65)
                        ->advance == 12,
            "config descriptor pointer reload after allocation with retained raster range");
    BuilderFixture binder;
    bool alternate = false;
    FontProducerEffects fallback;
    fallback.build = [&](Address target, Address key) {
        alternate = target == 77 && key == binder.atlas;
        return false;
    };
    auto bound_effects =
        bind_font_builder(binder.image, binder.store, binder.env, binder.effects, fallback);
    require(!bound_effects.build(77, binder.atlas) && alternate &&
                bound_effects.build(0x3a59bc, binder.atlas),
            "default builder numeric key binding and explicit alternate callback");
    BuilderFixture defaults;
    defaults.set(defaults.configs + 0x38, Address(0));
    defaults.env.module = Address(defaults.ranges) - Address(0x2aa2d8);
    defaults.set(defaults.ranges, ReU16(32));
    defaults.set(defaults.ranges + 2, ReU16(255));
    require(defaults.build() && defaults.store.fonts[defaults.font].glyphs.size() == 2,
            "literal relocated default ranges20..ff select only present copied glyphs");
    BuilderFixture empty_over;
    empty_over.set(empty_over.configs + 0x18, 0);
    require(empty_over.build() &&
                font_text_find_3a4554(empty_over.store.fonts[empty_over.font], 65)->advance == 0,
            "zero horizontal oversampling retains native skipped-render zero packed data");
    BuilderFixture negative_size;
    negative_size.set(negative_size.configs + 0x14, -20.f);
    require(
        negative_size.build() &&
            negative_size.store.fonts[negative_size.font].measure.nominal == -20 &&
            font_text_find_3a4554(negative_size.store.fonts[negative_size.font], 65)->advance ==
                12 &&
            negative_size.get<float>(negative_size.font + 0x68) == -15 &&
            negative_size.get<float>(negative_size.font + 0x6c) == 3,
        "negative size selects positive EM raster scale but final height metrics retain signed raw "
        "size");
    BuilderFixture free_reload;
    free_reload.set(free_reload.font + 0x28, ReU64(0x100000001ull));
    free_reload.set(free_reload.font + 0x30, Address(0x90000));
    free_reload.store.fonts[free_reload.font].glyphs.resize(1);
    free_reload.effects.support.free_39517c = [&](Address key) {
        free_reload.frees.push_back(key);
        if (key == 0x90000)
            free_reload.set(free_reload.configs + 0x14, 40.f);
    };
    require(free_reload.build() &&
                free_reload.store.fonts[free_reload.font].glyphs.size() == 2 &&
                free_reload.store.fonts[free_reload.font].measure.nominal == 40 &&
                free_reload.get<float>(free_reload.font + 0x68) == 17,
            "begin reloads config size after free while retaining root-computed ascent and "
            "clearing old owned glyphs");
}
} // namespace rust_internal_re
