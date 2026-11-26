#include "font_atlas_input_internal.hpp"

namespace rust_internal_re {
using namespace font_atlas_input_detail;
void Context::clear_vector(Address descriptor, const re::ReFunction<void()> &clear) {
    const auto p = read<Address>(descriptor + 8, 0x379581);
    if (p) {
        write(descriptor, ReU64(0), 0x37958a);
        clear();
        release(p, 0x379591);
        write(descriptor + 8, Address(0), 0x379596);
    } else
        clear(); // [I]Generated owned vectors have no fabricated native backing address.
}
void Context::clear_pixels(Address key) {
    // [C]Shared body3a3e64; owned pixel arrays change at their corresponding
    // copied pointer stores, preserving callback throws and missing-store prefixes.
    auto p = read<Address>(key + 0x30, 0x3a3e6d);
    if (p)
        release(p, 0x3a3e76);
    p = read<Address>(key + 0x38, 0x3a3e7b);
    if (p)
        release(p, 0x3a3e84);
    write(key + 0x30, Address(0), 0x3a3e89);
    atlas(key, 0x3a3e89).alpha.reset();
    write(key + 0x38, Address(0), 0x3a3e91);
    atlas(key, 0x3a3e91).rgba.reset();
    write(key + 0x29, ReU8(0), 0x3a3e99);
}
void Context::destroy_font(Address key) {
    if (!key)
        return; // [C]39f268 null branch, before destructor and allocation release.
    // [C]39f73c is specialized here to its reachable deleting-flag0 branch.
    // 39f5ac calls the shared3a3e10 body, then three336624 descriptor destructors.
    write(key + 0x10, ReU64(0), 0x3a3e19);
    font(key, 0x3a3e19).measure.fallback = 0;
    font(key, 0x3a3e19).measure.nominal = 0;
    clear_vector(key + 0x28, [&] { font(key, 0x37958a).glyphs.clear(); });
    clear_vector(key, [&] { font(key, 0x37958a).measure.advances.clear(); });
    clear_vector(key + 0x18, [&] { font(key, 0x37958a).lookup.clear(); });
    write(key + 0x38, Address(0), 0x3a3e3b);
    font(key, 0x3a3e3b).fallback.reset();
    write(key + 0x40, Address(0), 0x3a3e43);
    font(key, 0x3a3e43).atlas = 0;
    write(key + 0x60, ReU8(1), 0x3a3e4b);
    font(key, 0x3a3e4b).dirty = true;
    write(key + 0x68, ReU64(0), 0x3a3e4f);
    write(key + 0x70, ReU32(0), 0x3a3e57);
    font(key, 0x3a3e57).surface = 0;
    for (const auto displacement : {0x28u, 0x18u, 0u}) {
        const auto p = read<Address>(key + displacement + 8, 0x336628);
        if (p)
            release(p, 0x336631);
    }
    release(key, 0x39f27f);
    store.fonts.erase(key);
}
void font_atlas_clear_input_3a3d04(Snapshot &image, Address key, FontTextStore &store,
                                   FontAtlasInputState &state, const FontAtlasInputEnvironment &env,
                                   const FontAtlasInputEffects &effects) {
    Context c{image, store, state, env, effects};
    ReUSize steps = 0;
    const auto step = [&](Rva site) {
        if (steps++ >= env.maximum_steps)
            { __builtin_trap(); }
    };
    for (ReI32 i = 0; i < c.read<ReI32>(key + 0x78, i ? 0x3a3d61 : 0x3a3d18); ++i) {
        step(0x3a3d1c);
        auto config = c.element(key + 0x78, i, 0x88, 0x39f62a);
        if (!c.read<Address>(config, 0x3a3d26))
            continue;
        config = c.element(key + 0x78, i, 0x88, 0x39f62a);
        if (!c.read<ReU8>(config + 0xc, 0x3a3d36))
            continue;
        config = c.element(key + 0x78, i, 0x88, 0x39f62a);
        c.release(c.read<Address>(config, 0x3a3d46), 0x3a3d49);
        config = c.element(key + 0x78, i, 0x88, 0x39f62a);
        c.write(config, Address(0), 0x3a3d58);
    }
    for (ReI32 i = 0; i < c.read<ReI32>(key + 0x58, i ? 0x3a3dd4 : 0x3a3d6b); ++i) {
        step(0x3a3d70);
        const auto base = c.read<Address>(key + 0x80, 0x3a3d70);
        const auto font_key = [&](Rva site) {
            return c.read<Address>(c.element(key + 0x58, i, 8, 0x38bb84), site);
        };
        auto f = font_key(0x3a3d81);
        (void)c.font(f, 0x3a3d84);
        if (c.read<Address>(f + 0x48, 0x3a3d84) < base)
            continue;
        const auto slot = c.element(key + 0x58, i, 8, 0x38bb84);
        const auto count = c.read<ReI32>(key + 0x78, 0x3a3d94);
        const auto end = base + offset(count) * 0x88;
        f = c.read<Address>(slot, 0x3a3d9e);
        if (c.read<Address>(f + 0x48, 0x3a3da4) >= end)
            continue;
        c.write(font_key(0x3a3db6) + 0x48, Address(0), 0x3a3db9);
        c.write(font_key(0x3a3dc9) + 0x50, ReU16(0), 0x3a3dce);
    }
    c.clear_vector(key + 0x78, [] {});
    c.clear_vector(key + 0x68, [&] { c.atlas(key, 0x37958a).rectangles.clear(); });
    c.write(key + 0x498, ReI32(-1), 0x3a3ded);
    c.atlas(key, 0x3a3ded).line_rect = -1;
    c.write(key + 0x494, ReI32(-1), 0x3a3df3);
    c.atlas(key, 0x3a3df3).white_rect = -1;
    c.write(key + 0x4a0, ReI32(-1), 0x3a3df9);
    c.atlas(key, 0x3a3df9).circle_rect = -1;
    c.write(key + 0x49c, ReI32(-1), 0x3a3dff);
    c.atlas(key, 0x3a3dff).round_rect = -1;
}
void font_atlas_clear_fonts_3a3c64(Snapshot &image, Address key, FontTextStore &store,
                                   FontAtlasInputState &state, const FontAtlasInputEnvironment &env,
                                   const FontAtlasInputEffects &effects) {
    Context c{image, store, state, env, effects};
    ReUSize steps = 0;
    for (ReI32 i = 0; i < c.read<ReI32>(key + 0x58, i ? 0x3a9369 : 0x3a9353); ++i) {
        if (steps++ >= env.maximum_steps)
            { __builtin_trap(); }
        c.destroy_font(c.read<Address>(c.element(key + 0x58, i, 8, 0x3a9357), 0x3a935e));
    }
    c.clear_vector(key + 0x58, [&] { c.atlas(key, 0x37958a).fonts.clear(); });
    c.write(key + 0x28, ReU8(0), 0x3a3c76);
    c.atlas(key, 0x3a3c76).ready = false;
}
void font_atlas_clear_3a3c40(Snapshot &image, Address key, FontTextStore &store,
                             FontAtlasInputState &state, const FontAtlasInputEnvironment &env,
                             const FontAtlasInputEffects &effects) {
    font_atlas_clear_input_3a3d04(image, key, store, state, env, effects);
    Context c{image, store, state, env, effects};
    c.clear_pixels(key);
    font_atlas_clear_fonts_3a3c64(image, key, store, state, env, effects);
}
} // namespace rust_internal_re
