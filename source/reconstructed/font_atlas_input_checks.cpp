#include "font_atlas_input_analysis.hpp"
#include "font_builder_fixture.hpp"

namespace rust_internal_re {
namespace {
void require(bool value, re::ReStringView why) {
    if (!value)
        __builtin_trap();
}
template <class F> Rva missing(F f) {
    {
        f();
    }
    { /* FREESTANDING_TODO: was throw runtime_error("expected explicit font ingestion stop") */ }
}
struct InputFixture {
    static constexpr Address atlas = 0x1000, config = 0x2000, source = 0x3000, ranges = 0x4000;
    Snapshot image{0, re::ReVector<ReByte>(0x1000000)};
    FontTextStore store;
    FontAtlasInputState state;
    FontAtlasInputEnvironment env;
    FontAtlasInputEffects effects;
    Address next{0x500000}, temporary{0x900000};
    re::ReVector<re::RePair<Address, ReU64>> allocations;
    re::ReVector<re::RePair<Address, FontAtlasInputStorage>> marshalled;
    re::ReVector<Address> freed;
    re::ReFunction<void(ReU64)> on_allocate;
    re::ReFunction<void(Address)> on_free;
    template <class T> void set(Address p, T value) {
        require(image.write(p, value), "font input fixture store");
        font_atlas_input_mark_initialized(state, p, sizeof(T));
    }
    template <class T> T get(Address p) const {
        const auto value = image.read<T>(p);
        require(value.has_value(), "font input fixture read");
        return *value;
    }
    InputFixture() {
        auto &a = store.atlases[atlas];
        a.ready = true;
        a.flags = 6;
        a.glyph_padding = 1;
        a.radius = 3;
        a.inner = 4;
        a.exponent = 1;
        a.white_rect = a.line_rect = a.round_rect = a.circle_rect = -1;
        set(atlas, ReU32(6));
        set(atlas + 0x10, ReI32(64));
        set(atlas + 0x14, ReI32(1));
        set(atlas + 0x28, ReU8(1));
        set(atlas + 0x544, ReI32(3));
        set(atlas + 0x548, ReI32(4));
        set(atlas + 0x54c, 1.f);
        for (Address p : {0x494, 0x498, 0x49c, 0x4a0})
            set(atlas + p, ReI32(-1));
        font_config_ctor_39f550(image, config, state);
        set(config, source);
        set(config + 8, ReI32(3));
        set(config + 0x14, 20.f);
        set(config + 0x38, ranges);
        set(source, re::ReArray<ReU8, 3>{7, 8, 9});
        set(ranges, re::ReArray<ReU16, 3>{65, 66, 0});
        effects.allocate_owned = [&](ReU64 n) {
            const auto key = next;
            next += (n + 0xffu) & ~Address(0xffu);
            allocations.emplace_back(key, n);
            require(n <= 0x400000 && image.contains(key, ReUSize(n)),
                    "fixture allocation bound");
            for (ReU64 i = 0; i < n; ++i)
                require(image.write(key + i, ReU8(0xa5)), "fixture allocation backing");
            if (on_allocate)
                on_allocate(n);
            return key;
        };
        effects.marshal_owned_bytes = [&](FontAtlasInputStorage kind,
                                          re::ReSpan<const ReByte> b) {
            const auto key = temporary;
            temporary += (b.size() + 0xffu) & ~Address(0xffu);
            // [I]Even an empty blob receives distinct explicit mapped storage.
            if (b.empty())
                temporary += 0x100;
            for (ReUSize i = 0; i < b.size(); ++i)
                require(image.write(key + i, b[i]), "fixture owned marshalling");
            marshalled.emplace_back(key, kind);
            return key;
        };
        effects.support.free_39517c = [&](Address p) {
            freed.push_back(p);
            if (on_free)
                on_free(p);
        };
    }
    Address add() {
        return font_atlas_add_39fd68(image, atlas, config, store, state, env, effects);
    }
    Address stored(ReI32 i = 0) const {
        return get<Address>(atlas + 0x80) + Address(i) * 0x88;
    }
    void merge_font(Address font = 0x6000) {
        font_ctor_39f3d0(image, font, store, state);
        store.atlases[atlas].fonts = {font};
        set(atlas + 0x58, ReI32(1));
        set(atlas + 0x5c, ReI32(1));
        set(atlas + 0x60, Address(0x7000));
        set(0x7000, font);
        set(config + 0x48, ReU8(1));
    }
};
void constructor_checks() {
    InputFixture f;
    require(f.get<ReU8>(f.config + 0xc) == 1 && f.get<int>(f.config + 0x18) == 3 &&
                f.get<int>(f.config + 0x1c) == 1 &&
                f.get<ReU32>(f.config + 0x44) == 0x7f7fffff &&
                f.get<float>(f.config + 0x50) == 1 &&
                f.get<ReU16>(f.config + 0x54) == 0xffff,
            "literal config defaults");
    Snapshot partial(0x1000, re::ReVector<ReByte>(0x2c, ReByte(0xa5)));
    FontAtlasInputState state;
    require(missing([&] { font_config_ctor_39f550(partial, 0x1000, state); }) == 0x2d4870 &&
                partial.read<ReU64>(0x1024) == 0 &&
                partial.read<ReU8>(0x1000) == 0xa5,
            "Vec2 store before whole-config fill failure");
    Snapshot short_config(0x2000, re::ReVector<ReByte>(0x80));
    require(missing([&] {
                font_atlas_memory_39fe54(short_config, f.atlas, f.source, 3, 10.f, 0x2000, 0,
                                         f.store, state, f.env, f.effects);
            }) == 0x39feb9 &&
                f.allocations.empty() && f.marshalled.empty(),
            "last source-config qword failure precedes marshalling and AddFont effects");
    const auto font = f.add();
    require(f.allocations.size() == 3 && f.allocations[0].second == 0x78 &&
                f.allocations[1].second == 64 && f.allocations[2].second == 8 * 0x88 &&
                f.store.atlases[f.atlas].fonts == re::ReVector<Address>{font},
            "font and two concrete vector allocations");
    require(f.get<ReU16>(font + 0x52) == 0xffff &&
                f.get<ReU16>(font + 0x54) == 0xffff && f.get<float>(font + 0x64) == 1 &&
                f.get<ReU8>(font + 0x61) == 0xa5 &&
                f.get<ReU16>(font + 0x76) == 0xa5a5 &&
                !font_atlas_input_initialized(f.state, font + 0x61, 3) &&
                !font_atlas_input_initialized(f.state, font + 0x76, 2) &&
                font_atlas_input_initialized(f.state, font + 0x64, 8),
            "38bb6c no-fill and precisely unwritten font padding");
    require(f.get<Address>(f.stored()) == f.source && !f.store.atlases[f.atlas].ready &&
                f.get<ReU8>(f.atlas + 0x28) == 0,
            "owned input retained and ready cleared");
}
void ingestion_checks() {
    InputFixture f;
    f.set(f.config + 0xc, ReU8(0));
    f.set(f.config + 0x54, ReU16(0x2026));
    f.set(f.atlas + 0x30, Address(0x8000));
    f.store.atlases[f.atlas].alpha = re::ReVector<ReU8>{99};
    f.on_allocate = [&](auto n) {
        if (n == 3) {
            f.set(f.stored() + 8, ReI32(2));
            f.set(f.config, Address(f.source + 1));
        }
    };
    bool saw_prefix = false;
    f.on_free = [&](Address p) {
        if (p == 0x8000) {
            saw_prefix =
                !f.store.atlases[f.atlas].ready && f.store.atlases[f.atlas].alpha.has_value();
            f.set(f.stored() + 0x80, Address(0xdead));
        }
    };
    require(f.add() == 0xdead && saw_prefix, "ready-before-clear and postcallback return reload");
    const auto font = f.store.atlases[f.atlas].fonts.front();
    const auto copy = f.get<Address>(f.stored());
    require(f.get<ReU8>(copy) == 8 && f.get<ReU8>(copy + 1) == 9 &&
                !font_atlas_input_initialized(f.state, copy + 2, 1) &&
                f.get<ReU8>(f.stored() + 0xc) == 1 &&
                f.get<ReU16>(font + 0x54) == 0x2026 &&
                f.store.fonts[font].ellipsis_character == 0x2026 &&
                !f.store.atlases[f.atlas].alpha,
            "data length/source reloads, no invented tail byte, ellipsis and pixel mutation");
    InputFixture merge;
    merge.merge_font();
    merge.set(0x6000 + 0x54, ReU16(46));
    merge.store.fonts[0x6000].ellipsis_character = 46;
    merge.set(merge.config + 0x54, ReU16(0x2026));
    require(merge.add() == 0x6000 && merge.allocations.size() == 1 &&
                merge.get<ReU16>(0x6054) == 46,
            "merge reuses back font and retains existing ellipsis");
    InputFixture explicit_destination;
    explicit_destination.merge_font();
    font_ctor_39f3d0(explicit_destination.image, 0x8000, explicit_destination.store,
                     explicit_destination.state);
    explicit_destination.set(explicit_destination.config + 0x80, Address(0x8000));
    require(explicit_destination.add() == 0x8000,
            "explicit destination differs from back font without invented fallback");
    InputFixture alias;
    alias.merge_font();
    alias.set(alias.config + 0xc, ReU8(0));
    alias.set(alias.atlas + 0x78, ReI32(0));
    alias.set(alias.atlas + 0x7c, ReI32(1));
    alias.set(alias.atlas + 0x80, alias.config);
    require(alias.add() == 0x6000 && alias.allocations.size() == 1 &&
                !font_atlas_input_initialized(alias.state, alias.get<Address>(alias.config), 3),
            "source/stored config alias reloads new pointer and copies unknown bytes to self");
    require(missing([&] {
                font_atlas_input_require_font_bytes(alias.image, alias.atlas, alias.state,
                                                    alias.env);
            }) == 0x3a59bc,
            "unknown copied input cannot become invented parser bytes");
    InputFixture overlap;
    overlap.merge_font();
    overlap.set(overlap.config, Address(0x6000));
    overlap.set(overlap.atlas + 0x78, ReI32(0));
    overlap.set(overlap.atlas + 0x7c, ReI32(1));
    overlap.set(overlap.atlas + 0x80, overlap.config + 16);
    const auto first = overlap.get<re::ReArray<ReByte, 16>>(overlap.config);
    require(overlap.add() == 0x6000 && overlap.allocations.empty(),
            "SIMD config overlap retains native propagated destination");
    for (ReUSize i = 0; i < 0x80; ++i)
        require(overlap.get<ReByte>(overlap.config + 16 + i) == first[i % 16],
                "config append loads each next16byte chunk after preceding store");
    InputFixture wrapper;
    wrapper.merge_font();
    wrapper.set(wrapper.config + 0x14, 17.f);
    require(font_atlas_memory_39fe54(wrapper.image, wrapper.atlas, wrapper.source, 3, -0.f,
                                     wrapper.config, 0, wrapper.store, wrapper.state, wrapper.env,
                                     wrapper.effects) == 0x6000 &&
                wrapper.get<float>(wrapper.stored() + 0x14) == 17 &&
                wrapper.get<Address>(wrapper.stored() + 0x38) == wrapper.ranges &&
                wrapper.get<float>(wrapper.config + 0x14) == 17,
            "nonpositive size and null ranges retain copied config without mutating caller");
    font_atlas_memory_39fe54(wrapper.image, wrapper.atlas, wrapper.source, 3,
                             re::ReNumericLimits<float>::infinity(), wrapper.config,
                             wrapper.ranges + 8, wrapper.store, wrapper.state, wrapper.env,
                             wrapper.effects);
    require(re::re_isinf(wrapper.get<float>(wrapper.stored(1) + 0x14)) &&
                wrapper.get<Address>(wrapper.stored(1) + 0x38) == wrapper.ranges + 8,
            "positive infinity and nonnull ranges overwrite copied config literally");
    InputFixture failure;
    failure.set(failure.config + 0xc, ReU8(0));
    failure.on_allocate = [&](auto n) {
        if (n == 3)
            { __builtin_trap(); }
    };
    require(
        missing([&] { failure.add(); }) == 0x395158 &&
            failure.get<int>(failure.atlas + 0x58) == 1 &&
            failure.get<int>(failure.atlas + 0x78) == 1 &&
            failure.get<ReU8>(failure.stored() + 0xc) == 0 &&
            failure.get<ReU8>(failure.atlas + 0x28) == 1,
        "allocation failure retains font/config append but precedes ownership and ready stores");
    InputFixture null_font;
    null_font.effects.allocate_owned = [&](auto n) -> Address {
        if (n == 0x78)
            return 0;
        const auto p = null_font.next;
        null_font.next += n + 0x100;
        return p;
    };
    require(missing([&] { null_font.add(); }) == 0x39fe23 &&
                null_font.get<int>(null_font.atlas + 0x58) == 1 &&
                null_font.store.atlases[null_font.atlas].fonts == re::ReVector<Address>{0},
            "null allocation is appended and stops only at reached font use");
    InputFixture null_data;
    null_data.merge_font();
    null_data.set(null_data.config + 0xc, ReU8(0));
    const auto allocate_data = null_data.effects.allocate_owned;
    null_data.effects.allocate_owned = [&](auto n) -> Address {
        return n == 3 ? 0 : allocate_data(n);
    };
    require(missing([&] { null_data.add(); }) == 0x39fe12 &&
                null_data.get<Address>(null_data.stored()) == 0 &&
                null_data.get<ReU8>(null_data.stored() + 0xc) == 1 &&
                null_data.get<ReU8>(null_data.atlas + 0x28) == 1,
            "null copy allocation stops at first byte after data/ownership stores");
    InputFixture zero_copy;
    zero_copy.merge_font();
    zero_copy.set(zero_copy.config, Address(0));
    zero_copy.set(zero_copy.config + 8, ReI32(0));
    zero_copy.set(zero_copy.config + 0xc, ReU8(0));
    const auto allocate_zero = zero_copy.effects.allocate_owned;
    zero_copy.effects.allocate_owned = [&](auto n) -> Address { return n ? allocate_zero(n) : 0; };
    require(zero_copy.add() == 0x6000 && zero_copy.get<Address>(zero_copy.stored()) == 0,
            "zero-count REP MOVSB does not dereference either null pointer");
}
void vector_and_clear_checks() {
    InputFixture null_vector;
    null_vector.merge_font();
    null_vector.effects.allocate_owned = [](auto) -> Address { return 0; };
    require(missing([&] { null_vector.add(); }) == 0x3a94b9 &&
                null_vector.get<Address>(null_vector.atlas + 0x80) == 0 &&
                null_vector.get<int>(null_vector.atlas + 0x7c) == 8 &&
                null_vector.get<int>(null_vector.atlas + 0x78) == 0,
            "null vector allocation commits pointer/capacity before reached MOVUPS store failure");
    InputFixture growth;
    growth.merge_font();
    growth.set(growth.atlas + 0x78, ReI32(1));
    growth.set(growth.atlas + 0x7c, ReI32(1));
    growth.set(growth.atlas + 0x80, Address(0x8000));
    for (ReUSize i = 0; i < 0x88; ++i)
        growth.set(0x8000 + i, ReU8(i));
    growth.on_free = [&](Address p) {
        require(p == 0x8000 && growth.get<Address>(growth.atlas + 0x80) == 0x8000 &&
                    growth.get<int>(growth.atlas + 0x7c) == 1,
                "vector descriptor is old during release");
        { __builtin_trap(); }
    };
    require(missing([&] { growth.add(); }) == 0x39517c &&
                growth.allocations[0].second == 2 * 0x88 &&
                growth.get<ReU8>(growth.allocations[0].first + 0x7f) == 0x7f &&
                growth.get<Address>(growth.atlas + 0x80) == 0x8000 &&
                growth.get<int>(growth.atlas + 0x78) == 1,
            "copied reserve prefix survives throwing free before descriptor/capacity stores");
    InputFixture reload;
    reload.merge_font();
    reload.set(reload.atlas + 0x78, ReI32(1));
    reload.set(reload.atlas + 0x7c, ReI32(1));
    reload.set(reload.atlas + 0x80, Address(0x8000));
    for (ReUSize i = 0; i < 0x88; ++i)
        reload.set(0x9000 + i, ReU8(0x33));
    reload.on_allocate = [&](auto) { reload.set(reload.atlas + 0x80, Address(0x9000)); };
    require(reload.add() == 0x6000 && reload.get<ReU8>(reload.stored()) == 0x33 &&
                reload.freed == re::ReVector<Address>{0x9000} &&
                reload.get<int>(reload.atlas + 0x7c) == 2,
            "config reserve reloads old data after allocator callback before copy/free");
    InputFixture clear;
    clear.set(clear.config + 0xc, ReU8(0));
    const auto font = clear.add();
    const auto cfg = clear.stored();
    const auto owned = clear.get<Address>(cfg);
    clear.set(font + 0x48, cfg);
    clear.set(font + 0x50, ReU16(4));
    clear.set(clear.atlas + 0x28, ReU8(1));
    clear.store.atlases[clear.atlas].ready = true;
    clear.on_free = [&](Address p) {
        if (p == owned) {
            // [C]The null store reacquires the config descriptor after the callback.
            for (ReUSize i = 0; i < 0x88; ++i)
                clear.set(0x8000 + i, clear.get<ReU8>(cfg + i));
            clear.set(clear.atlas + 0x80, Address(0x8000));
        }
    };
    font_atlas_clear_input_3a3d04(clear.image, clear.atlas, clear.store, clear.state, clear.env,
                                  clear.effects);
    require(
        clear.get<Address>(0x8000) == 0 && clear.get<Address>(cfg) == owned &&
            clear.get<Address>(font + 0x48) == cfg && clear.get<ReU16>(font + 0x50) == 4 &&
            clear.store.atlases[clear.atlas].ready &&
            clear.get<ReU8>(clear.atlas + 0x28) == 1 &&
            clear.get<int>(clear.atlas + 0x78) == 0,
        "clear-input uses relocated configs and unsigned range leaves outside font config intact");
    InputFixture inside;
    const auto f = inside.add();
    inside.set(f + 0x48, inside.stored() + 0x87);
    inside.set(f + 0x50, ReU16(9));
    inside.store.fonts[f].glyphs.resize(1);
    inside.store.fonts[f].lookup = {1, 2};
    inside.store.fonts[f].measure.advances = {1, 2};
    inside.set(f + 0x30, Address(0x8100));
    inside.set(f + 0x28, ReI32(1));
    inside.set(f + 0x2c, ReI32(1));
    inside.set(f + 8, Address(0x8200));
    inside.set(f, ReI32(2));
    inside.set(f + 4, ReI32(2));
    inside.set(f + 0x20, Address(0x8300));
    inside.set(f + 0x18, ReI32(2));
    inside.set(f + 0x1c, ReI32(2));
    inside.on_free = [&](Address p) {
        if (p == 0x8100)
            require(inside.store.fonts[f].glyphs.empty() &&
                        !inside.store.fonts[f].lookup.empty(),
                    "glyph clear commits before advance/lookup clear");
        if (p == 0x8300)
            inside.set(f + 0x30, Address(0x8400));
    };
    font_atlas_clear_3a3c40(inside.image, inside.atlas, inside.store, inside.state, inside.env,
                            inside.effects);
    require(inside.get<Address>(f + 0x48) == 0 && inside.get<ReU16>(f + 0x50) == 0 &&
                inside.store.fonts.empty() && inside.store.atlases[inside.atlas].fonts.empty() &&
                inside.freed == re::ReVector<Address>{inside.source, inside.allocations[2].first,
                                                     0x8100, 0x8200, 0x8300, 0x8400, f,
                                                     inside.allocations[1].first},
            "input ownership, config detachment, destructor rereads and release order");
    InputFixture throwing;
    throwing.set(throwing.config + 0xc, ReU8(0));
    throwing.add();
    const auto data = throwing.get<Address>(throwing.stored());
    throwing.on_free = [&](Address) {
        { __builtin_trap(); }
    };
    require(missing([&] {
                font_atlas_clear_3a3c40(throwing.image, throwing.atlas, throwing.store,
                                        throwing.state, throwing.env, throwing.effects);
            }) == 0x39517c &&
                throwing.get<Address>(throwing.stored()) == data &&
                throwing.get<int>(throwing.atlas + 0x78) == 1 && throwing.store.fonts.size() == 1,
            "input free exception precedes null store, vector cleanup and font destruction");
    InputFixture destructor_failure;
    const auto doomed = destructor_failure.add();
    destructor_failure.set(destructor_failure.atlas + 0x28, ReU8(1));
    destructor_failure.store.atlases[destructor_failure.atlas].ready = true;
    destructor_failure.set(destructor_failure.atlas + 0x30, Address(0x8500));
    destructor_failure.store.atlases[destructor_failure.atlas].alpha =
        re::ReVector<ReU8>{42};
    destructor_failure.on_free = [&](Address p) {
        if (p == doomed)
            { __builtin_trap(); }
    };
    require(missing([&] {
                font_atlas_clear_3a3c40(destructor_failure.image, destructor_failure.atlas,
                                        destructor_failure.store, destructor_failure.state,
                                        destructor_failure.env, destructor_failure.effects);
            }) == 0x39f27f &&
                !destructor_failure.store.atlases[destructor_failure.atlas].alpha &&
                destructor_failure.store.atlases[destructor_failure.atlas].ready &&
                destructor_failure.get<ReU8>(destructor_failure.atlas + 0x28) == 1 &&
                destructor_failure.store.fonts[doomed].dirty &&
                destructor_failure.get<int>(destructor_failure.atlas + 0x58) == 1,
            "font release failure preserves ready/list after input/pixel cleanup and destructor "
            "stores");
}
void range_checks() {
    InputFixture f;
    const re::ReArray<re::RePair<Rva, Address>, 6> simple{{{0x3a47b4, 0x2ace30},
                                                         {0x3a4748, 0x2aa308},
                                                         {0x3a47c4, 0x2aa2e0},
                                                         {0x3a4830, 0x2aa2f0},
                                                         {0x3a4840, 0x2ace58},
                                                         {0x3a4838, 0x2ace48}}};
    for (const auto &[r, expected] : simple)
        require(font_atlas_ranges(f.image, r, f.state) == expected,
                "simple glyph getter literal address");
    f.set(0x8000, re::ReArray<ReU16, 2>{1, 2});
    font_ranges_unpack_3a8bec(f.image, 10, 0x8000, 2, 0x8000, f.state);
    require(f.get<ReU16>(0x8000) == 11 && f.get<ReU16>(0x8002) == 11 &&
                f.get<ReU16>(0x8004) == 32 && f.get<ReU16>(0x8006) == 32 &&
                f.get<ReU16>(0x8008) == 0,
            "aliased signed delta reload follows both output writes");
    f.set(0x8000, re::ReArray<ReU16, 2>{0xffff, 2});
    font_ranges_unpack_3a8bec(f.image, 0, 0x8000, 2, 0x8100, f.state);
    require(f.get<ReU16>(0x8100) == 0xffff && f.get<ReU16>(0x8104) == 1,
            "signed full accumulator and low16 emitted range");
    f.set(0x27fa40, ReU16(32));
    f.set(0x27fa42, re::ReArray<ReU16, 8>{255, 256, 383, 0x3000, 0x30ff, 0x31f0, 0x31ff, 1});
    f.set(0x27fa52, ReU16(2));
    for (ReUSize i = 0; i < 0xbb7; ++i)
        f.set(0x2ab6c0 + i * 2, ReU16(1));
    require(font_atlas_ranges(f.image, 0x3a47cc, f.state) == 0x408870 &&
                f.get<ReU16>(0x408884) == 0x4e01 &&
                f.get<ReU16>(0x408884 + (0xbb7 - 1) * 4) == 0x59b7 &&
                f.get<ReU16>(0x408884 + 0xbb7 * 4) == 0,
            "cold Chinese delta range production and terminator");
    f.env.maximum_steps = 0;
    require(font_atlas_ranges(f.image, 0x3a47cc, f.state, f.env) == 0x408870,
            "warm getter does not reacquire delta data");
    f.env.maximum_steps = 1000000;
    f.set(0x27fa28, ReU16(32));
    f.set(0x27fa2a, re::ReArray<ReU16, 8>{255, 256, 257, 258, 259, 260, 261, 262});
    f.set(0x27fa38, ReU64(0x0000000001040103));
    for (ReUSize i = 0; i < 0x9c4; ++i)
        f.set(0x2aa330 + i * 2, ReU16(1));
    require(font_atlas_ranges(f.image, 0x3a4750, f.state) == 0x406140 &&
                f.get<ReU16>(0x406150) == 259 &&
                f.get<ReU16>(0x406158 + (0x9c4 - 1) * 4) == 0x57c4 &&
                f.get<ReU16>(0x406158 + 0x9c4 * 4) == 0,
            "Japanese prefix overlap and delta expansion");
}
void binding_and_build_checks() {
    InputFixture f;
    auto api = bind_font_atlas_input(f.image, f.store, f.state, f.env, f.effects);
    const auto invoke = [&](Rva r, std::initializer_list<UnityValue> args) {
        const auto result = api.external(r, re::ReSpan<const UnityValue>(args.begin(), args.size()));
        require(result.has_value(), "bound font callback result");
        return *result;
    };
    auto cfg = font_config_value_39f550();
    const float configured = 17;
    re::re_memcpy(cfg.bytes.data() + 0x14, &configured, sizeof(configured));
    const UnityBytes data{{ReByte(4), ReByte(5), ReByte(6)}};
    const auto font = re::re_get<Address>(
        invoke(0x39fe54, {f.atlas, data, ReI32(3), re::ReNumericLimits<float>::quiet_NaN(),
                          cfg, Address(0)}));
    require(
        f.get<float>(f.stored() + 0x14) == 17 &&
            f.get<Address>(f.stored()) == f.marshalled[0].first && f.allocations.size() == 3 &&
            f.store.fonts.contains(font),
        "unordered size retains config; owned UnityBytes marshalling adds no native allocation");
    (void)invoke(0x39fe54, {f.atlas, data, ReI32(4), 12.f, cfg, Address(0)});
    require(missing([&] {
                font_atlas_input_require_font_bytes(f.image, f.atlas, f.state, f.env);
            }) == 0x3a59bc,
            "owned short blob cannot borrow adjacent Snapshot padding at parser boundary");
    InputFixture unavailable;
    unavailable.effects.marshal_owned_bytes = {};
    auto absent = bind_font_atlas_input(unavailable.image, unavailable.store, unavailable.state,
                                        unavailable.env, unavailable.effects);
    const re::ReArray<UnityValue, 6> args{unavailable.atlas, data,      ReI32(3), 10.f,
                                         Address(0),        Address(0)};
    require(missing([&] { absent.external(0x39fe54, args); }) == 0x39fe54 &&
                unavailable.allocations.empty(),
            "missing byte storage stops before native font allocation");
    InputFixture counters;
    counters.set(0x405b28, Address(0x60000));
    counters.set(0x27fa18, Address(0xabc));
    counters.set(0x27fa20, Address(0xdef));
    counters.set(0x405b68, Address(0x123));
    const auto allocate = counters.effects.allocate_owned;
    const auto release = counters.effects.support.free_39517c;
    counters.effects = bind_font_atlas_input_allocators(
        counters.image, counters.effects,
        [&](Address target, Address user, ReUSize size) {
            require(target == 0xabc && user == 0x123, "typed numeric allocator role");
            return allocate(size);
        },
        [&](Address target, Address user, Address object) {
            require(target == 0xdef && user == 0x123, "typed numeric release role");
            release(object);
        });
    auto counter_api = bind_font_atlas_input(counters.image, counters.store, counters.state,
                                             counters.env, counters.effects);
    cfg.bytes[0xc] = ReByte(0);
    const re::ReArray<UnityValue, 6> counter_args{counters.atlas, data, ReI32(3),
                                                 10.f,           cfg,  Address(0)};
    require(counter_api.external(0x39fe54, counter_args).has_value() &&
                counters.get<ReU32>(0x600f4) == 4 && counters.allocations.size() == 4 &&
                counters.marshalled.size() == 3,
            "only four genuine allocation calls increment native counter; three marshals do not");
    font_atlas_clear_3a3c40(counters.image, counters.atlas, counters.store, counters.state,
                            counters.env, counters.effects);
    require(counters.get<ReU32>(0x600f4) == 0 && counters.freed.size() == 4,
            "clear composes concrete counter decrement with typed release");
    InputFixture short_blob;
    auto short_api = bind_font_atlas_input(short_blob.image, short_blob.store, short_blob.state,
                                           short_blob.env, short_blob.effects);
    cfg.bytes[0xc] = ReByte(0);
    const re::ReArray<UnityValue, 6> short_args{short_blob.atlas, data, ReI32(4), 10.f, cfg,
                                               Address(0)};
    require(missing([&] { short_api.external(0x39fe54, short_args); }) == 0x39fe12 &&
                short_blob.get<ReU8>(short_blob.stored() + 0xc) == 1 &&
                short_blob.get<ReU8>(short_blob.get<Address>(short_blob.stored()) + 2) == 6,
            "short explicit blob stops at copy boundary after committed ownership and three bytes");

    // [I]Complete synthetic setup→AddFont→default builder. Metrics and raster
    // come from copied SFNT tables; none are supplied as invented glyph results.
    InputFixture end;
    font_builder_fixture::FontFixture sfnt;
    UnityBytes synthetic;
    for (ReUSize i = 0; i < sfnt.input.size; ++i)
        synthetic.bytes.push_back(*sfnt.image.read<ReByte>(sfnt.input.bytes + i));
    for (Address p :
         {0x2ace30, 0x2aa308, 0x2aa2e0, 0x2aa2f0, 0x2ace58, 0x2ace48, 0x408870, 0x406140})
        end.set(p, re::ReArray<ReU16, 3>{65, 66, 0});
    FrameDependencyApi base;
    base.imgui_io_3926ac = []() -> re::ReOptional<FrameImGuiIo> {
        return FrameImGuiIo{123, InputFixture::atlas, {800, 600}, 0};
    };
    base.embedded_bytes = [&](Rva, ReUSize size) -> re::ReOptional<UnityBytes> {
        UnityBytes padded = synthetic;
        padded.bytes.resize(size);
        return padded;
    };
    base.unity.external = [](Rva r, re::ReSpan<const UnityValue>) -> re::ReOptional<UnityValue> {
        if (r == 0x390864 || r == 0x398cc8)
            return re::ReMonostate{};
        return {};
    };
    base.unity.resolve_target = [](const UnityCacheSpec &) { return MetadataResult{123}; };
    base.unity.detect_context = [](const UnityCacheSpec &, Address) { return true; };
    base.read_bytes_2d61b4 =
        [](re::ReStringView) -> re::ReOptional<re::ReOptional<re::ReVector<ReByte>>> {
        return re::ReOptional<re::ReVector<ReByte>>{}; // [I]Explicit native null file result.
    };
    auto setup_api =
        bind_frame_font_atlas_input(end.image, end.store, end.state, end.env, end.effects, base);
    FrameMenuState menu;
    FrameDependencyState files;
    const auto result = setup_frame_ui_35ccf4(menu, files, setup_api);
    require(result.status == UnityStatus::complete && end.store.fonts.size() == 15 &&
                end.get<int>(end.atlas + 0x78) == 15 && menu.fonts[0] && !menu.fonts[3],
            "UI setup consumes concrete config/range/ingestion adapters");
    font_atlas_input_require_font_bytes(end.image, end.atlas, end.state, end.env);
    FontBuilderEffects builder;
    builder.allocate_owned = end.effects.allocate_owned;
    builder.support = end.effects.support;
    require(font_builder_default_3a59bc(end.image, end.atlas, end.store, {}, builder),
            "ingested configs feed concrete default atlas builder");
    const auto &a = end.store.atlases[end.atlas];
    const auto &built = end.store.fonts[menu.fonts[0]];
    const auto *glyph = font_text_find_3a4554(built, 65);
    require(a.ready && a.alpha && glyph && glyph->advance == 6.6f &&
                built.measure.nominal == 11.f && !built.glyphs.empty() &&
                end.get<Address>(menu.fonts[0] + 0x40) == end.atlas,
            "setup inputs produce byte-backed glyph metrics, UVs and raster pixels");
    // [I]Builder-owned arrays have no fabricated vector pointers. Destruction
    // clears them while releasing only actual copied/allocated numeric keys.
    font_atlas_clear_3a3c40(end.image, end.atlas, end.store, end.state, end.env, end.effects);
    require(end.store.fonts.empty() && !end.store.atlases[end.atlas].alpha &&
                end.store.atlases[end.atlas].fonts.empty() &&
                end.get<int>(end.atlas + 0x78) == 0 && end.get<ReU8>(end.atlas + 0x28) == 0,
            "generated owned atlas clears through native input/pixel/font stages");
}
} // namespace
void check_font_atlas_input_reconstruction() {
    constructor_checks();
    ingestion_checks();
    vector_and_clear_checks();
    range_checks();
    binding_and_build_checks();
}
} // namespace rust_internal_re
