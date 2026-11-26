#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
namespace {
float clamp(float x, float lo, float hi) {
    return lo > x ? lo : minss(hi, x);
}
ClipRect relative(MenuControlsState &s, Address w, ClipRect b) {
    const auto d = read<Vec2>(s, w + 0x110, 0x39e1e6);
    b.x -= d.x;
    b.z -= d.x;
    b.y -= d.y;
    b.w -= d.y;
    return b;
}
} // namespace
void nav_process(MenuControlsState &s, const MenuControlsApi &api) {
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x395980);
    const auto value = read<ReU32>(s, c + 0x47a4, 0x395987),
               flags = read<ReU32>(s, c + 0x47a8, 0x39598d);
    if (!read<ReU8>(s, w + 0x160, 0x395993)) {
        const auto lo = read<float>(s, w + 0x238, 0x3959a4),
                   hi = read<float>(s, w + 0x240, 0x39599c);
        write(s, c + 0x47c0, clamp(read<float>(s, c + 0x47c0, 0x3959ac), lo, hi), 0x3959b9);
        write(s, c + 0x47c8, clamp(read<float>(s, c + 0x47c8, 0x3959d1), lo, hi), 0x3959de);
    }
    const auto b = read<ClipRect>(s, c + 0x47c0, 0x3959ed);
    if (read<ReU8>(s, c + 0x4929, 0x3959e6) &&
        read<ReU32>(s, c + 0x4920, 0x395a02) ==
            read<ReU32>(s, w + 0x158, 0x3959fc) &&
        !(flags & 4) && (!(flags & 0x10) || !read<ReU32>(s, c + 0x492c, 0x395a19))) {
        write(s, c + 0x492c, value, 0x395a27);
        write(s, c + 0x4930, relative(s, w, b), 0x395a3d);
        if (!(flags & 0x10)) {
            write(s, c + 0x4929, ReU8(0), 0x395a4a);
            write(s, c + 0x4928,
                  ReU8(read<ReU8>(s, c + 0x4941, 0x396775) ||
                               read<ReU8>(s, c + 0x4929, 0x39677d)),
                  0x396787);
        }
    }
    if (read<ReU8>(s, c + 0x4941, 0x395a56) && !(flags & 4)) {
        const auto move = read<ReU32>(s, c + 0x4944, 0x395a6d);
        if (move & 0x400) {
            if (!api.nav_tab_395bc4)
                __builtin_trap();
            api.nav_tab_395bc4(value, flags, move);
        } else if (read<ReU32>(s, c + 0x48f0, 0x395a8a) != value || (move & 0x10)) {
            const auto result = c + (read<Address>(s, c + 0x48e8, 0x395a9a) == w ? 0x4988 : 0x49e8);
            if (!api.nav_score_395db8)
                { __builtin_trap(); }
            if (api.nav_score_395db8(result)) {
                if (!api.nav_result_395258)
                    { __builtin_trap(); }
                api.nav_result_395258(result);
            }
            if (move & 0x20) {
                const auto clip = read<ClipRect>(s, w + 0x238, 0x395acc);
                if (overlaps(clip, b)) {
                    const auto visible = clamp(b.w, clip.y, clip.w) - clamp(b.y, clip.y, clip.w);
                    if (visible >= (b.w - b.y) * 0.7f) {
                        if (api.nav_score_395db8(c + 0x49b8)) {
                            if (!api.nav_result_395258)
                                __builtin_trap();
                            api.nav_result_395258(c + 0x49b8);
                        }
                    }
                }
            }
        }
    }
    if (read<ReU32>(s, c + 0x48f0, 0x395b4b) == value) {
        nav_window(s, w);
        const auto layer = read<ReI32>(s, w + 0x158, 0x395b64);
        write(s, c + 0x4920, layer, 0x395b6f);
        write(s, c + 0x48f4, read<ReU32>(s, c + 0x4784, 0x395b7a), 0x395b83);
        write(s, c + 0x4924, ReU8(1), 0x395b89);
        write(s, w + 0x3a8 + Address(ReI64(layer)) * 16, relative(s, w, b), 0x395ba3);
    }
}
} // namespace rust_internal_re::menu_detail
