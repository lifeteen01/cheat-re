#include "imgui_windows_internal.hpp"
namespace rust_internal_re::window_detail {
namespace {
float trunc(float v) {
    return float(menu_detail::cvtt(v));
}
float maximum(float a, float b) {
    return menu_detail::maxss(a, b);
}
float minimum(float a, float b) {
    return menu_detail::minss(a, b);
}
float clamp(float value, float low, float high) {
    return low > value ? low : minimum(high, value);
}
} // namespace
// [C]38f1fc,39bf80,3951a4,39bfb8: copied font scaling and title/menu rectangles.
float font_size(ImguiWindowsState &s, Address w) {
    const auto c = read<Address>(s, w, 0x38f1fc);
    const auto base = read<float>(s, c + 0x3c34, 0x38f1ff);
    const auto parent = read<Address>(s, w + 0x368, 0x38f207);
    auto value = base * read<float>(s, w + 0x290, 0x38f20e);
    if (parent)
        value *= read<float>(s, parent + 0x290, 0x38f21b);
    return value;
}
float title_height(ImguiWindowsState &s, Address w) {
    if (read<ReU8>(s, w + 0x14, 0x39bf84) & 1)
        return 0;
    const auto c = read<Address>(s, w, 0x39bf94);
    const auto padding = read<float>(s, c + 0x3810, 0x39bf97);
    return font_size(s, w) + (padding + padding);
}
float menu_height(ImguiWindowsState &s, Address w) {
    if (!(read<ReU32>(s, w + 0x14, 0x3951aa) & 0x400))
        return 0;
    const auto c = read<Address>(s, w, 0x3951bb);
    const auto padding = read<float>(s, c + 0x3810, 0x3951be);
    return (font_size(s, w) + read<float>(s, w + 0x168, 0x3951cb)) + (padding + padding);
}
ClipRect title_rect(ImguiWindowsState &s, Address w) {
    const auto height = title_height(s, w);
    const auto p = read<Vec2>(s, w + 0x20, 0x39bfd2);
    return {p.x, p.y, p.x + read<float>(s, w + 0x30, 0x39bfd7), p.y + height};
}
// [C]38fac8..38fbe8. Collapsed/hidden paths preserve previous content measurements.
void content_sizes(ImguiWindowsState &s, Address w) {
    const bool collapsed_window = read<ReU8>(s, w + 0xb9, 0x38face);
    if (collapsed_window && read<ReI8>(s, w + 0xd0, 0x38fad6) <= 0 &&
        read<ReI8>(s, w + 0xd1, 0x38fade) <= 0) {
        (void)read<Vec2>(s, w + 0x38, 0x38fafe);
        (void)read<Vec2>(s, w + 0x40, 0x38fb07);
        return;
    }
    if (read<ReU8>(s, w + 0xbd, 0x38fae6) &&
        read<ReU8>(s, w + 0xd9, 0x38faee) == 0 &&
        read<ReI8>(s, w + 0xd8, 0x38faf6) > 0) {
        (void)read<Vec2>(s, w + 0x38, 0x38fafe);
        (void)read<Vec2>(s, w + 0x40, 0x38fb07);
        return;
    }
    for (unsigned axis = 0; axis < 2; ++axis) {
        const auto offset = axis * 4;
        auto value = read<float>(s, w + 0x48 + offset, 0x38fb16);
        if (value == 0)
            value = trunc(read<float>(s, w + 0x118 + offset, 0x38fb25) -
                          read<float>(s, w + 0x110 + offset, 0x38fb2d));
        write(s, w + 0x38 + offset, value, 0x38fb40);
    }
    for (unsigned axis = 0; axis < 2; ++axis) {
        const auto offset = axis * 4;
        auto value = read<float>(s, w + 0x48 + offset, 0x38fb70);
        if (value == 0)
            value = trunc(maximum(read<float>(s, w + 0x118 + offset, 0x38fb84),
                                  read<float>(s, w + 0x120 + offset, 0x38fb7c)) -
                          read<float>(s, w + 0x110 + offset, 0x38fb91));
        write(s, w + 0x40 + offset, value, 0x38fba4);
    }
}
// [C]38fbe8..38fd8c; native indirect size callback is a typed, consumed data boundary.
Vec2 constrain_size(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w, Vec2 desired) {
    const auto c = context(s);
    if (read<ReU8>(s, c + 0x47e0, 0x38fc0f) & 0x10) {
        const auto low = read<Vec2>(s, c + 0x481c, 0x38fc24),
                   high = read<Vec2>(s, c + 0x4824, 0x38fc37);
        desired.x = low.x >= 0 && high.x >= 0 ? clamp(desired.x, low.x, high.x)
                                              : read<float>(s, w + 0x30, 0x38fc59);
        desired.y = low.y >= 0 && high.y >= 0 ? clamp(desired.y, low.y, high.y)
                                              : read<float>(s, w + 0x34, 0x38fc7e);
        const auto callback = read<Address>(s, c + 0x4830, 0x38fc88);
        if (callback) {
            ImguiWindowConstraint input;
            input.user = read<Address>(s, c + 0x4838, 0x38fca9);
            input.position = read<Vec2>(s, w + 0x20, 0x38fc9b);
            input.current = read<Vec2>(s, w + 0x30, 0x38fcb5);
            input.desired = desired;
            if (!api.size_constraint_leaf)
                { __builtin_trap(); }
            desired = api.size_constraint_leaf(callback, input);
        }
        desired = {trunc(desired.x), trunc(desired.y)};
    }
    if (!(read<ReU32>(s, w + 0x14, 0x38fd0d) & 0x1000040)) {
        const auto min_size = read<Vec2>(s, c + 0x37e8, 0x38fd16);
        desired = {maximum(desired.x, min_size.x), maximum(desired.y, min_size.y)};
        const auto menu = menu_height(s, w), title = title_height(s, w);
        const auto rounding =
            maximum(0, read<float>(s, c + 0x37e0, 0x38fd44) - read<float>(s, 0x28d254, 0x38fd50));
        desired.y = maximum(desired.y, (menu + title) + rounding);
    }
    return desired;
}
// [C]38f8b4..38fac7: content+padding/decorations, viewport limits and scrollbar cross-coupling.
Vec2 auto_fit_size(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w, Vec2 content) {
    const auto c = context(s);
    const auto twice = read<float>(s, 0x293134, 0x38f8c7);
    const auto padding = read<Vec2>(s, w + 0x50, 0x38f911);
    const Vec2 extra{padding.x * twice, padding.y * twice};
    const Vec2 decor{(read<float>(s, w + 0x60, 0x38f8fc) + read<float>(s, w + 0x68, 0x38f8f7)) -
                         read<float>(s, w + 0xac, 0x38f909),
                     (read<float>(s, w + 0x64, 0x38f8ed) + read<float>(s, w + 0x6c, 0x38f8e5)) -
                         read<float>(s, w + 0xb0, 0x38f901)};
    Vec2 desired{(content.x + extra.x) + decor.x, (content.y + extra.y) + decor.y};
    const auto flags = read<ReU32>(s, w + 0x14, 0x38f94b);
    if (flags & 0x2000000)
        return desired;
    auto low = read<Vec2>(s, c + 0x37e8, 0x38f965);
    if (flags & 0x14000000) {
        const auto cap = read<float>(s, 0x293178, 0x38f975);
        low = {minimum(low.x, cap), minimum(low.y, cap)};
    }
    const auto vp = viewport(s);
    const auto vp_size = read<Vec2>(s, vp + 0x1c, 0x38f9ba);
    const auto safe = read<Vec2>(s, c + 0x3894, 0x38f9af);
    const Vec2 high{maximum(low.x, vp_size.x - safe.x * twice),
                    maximum(low.y, vp_size.y - safe.y * twice)};
    desired = {clamp(desired.x, low.x, high.x), clamp(desired.y, low.y, high.y)};
    const auto constrained = constrain_size(s, api, w, desired);
    const bool horizontal =
        (((content.x > (constrained.x - extra.x) - decor.x) && !(flags & 8) && (flags & 0x800)) ||
         (flags & 0x8000));
    const bool vertical =
        (((content.y > (constrained.y - extra.y) - decor.y) && !(flags & 8)) || (flags & 0x4000));
    if (horizontal)
        desired.y += read<float>(s, c + 0x3844, 0x38fa78);
    if (vertical)
        desired.x += read<float>(s, c + 0x3844, 0x38fa8f);
    return desired;
}
// [C]38f744..38f79b used by38f3ec. Preserve strict comparisons and float operation order.
namespace {
float edge_snap(float target, float high, float distance, float ratio) {
    if (distance >= target)
        return target + (0 - target) * ratio;
    if (target >= high - distance)
        return target + (high - target) * ratio;
    return target;
}
} // namespace
Vec2 scroll_target(ImguiWindowsState &s, Address w) {
    auto out = read<Vec2>(s, w + 0x84, 0x38f3fe);
    const auto maximum_float = read<float>(s, 0x28db54, 0x38f44f);
    for (unsigned axis = 0; axis < 2; ++axis) {
        const auto offset = axis * 4;
        const auto decor = (read<float>(s, w + 0x60 + offset, 0x38f41e) +
                            read<float>(s, w + 0x70 + offset, 0x38f410)) +
                           read<float>(s, w + 0x68 + offset, 0x38f435);
        const auto target = read<float>(s, w + 0x94 + offset, 0x38f46a);
        auto &value = axis ? out.y : out.x;
        if (maximum_float > target) {
            const auto ratio = read<float>(s, w + 0x9c + offset, 0x38f486);
            const auto distance = read<float>(s, w + 0xa4 + offset, 0x38f499);
            auto v = target;
            if (distance > read<float>(s, 0x28d24c, 0x38f49e))
                v = edge_snap(v,
                              (read<float>(s, w + 0x8c + offset, 0x38f4c4) +
                               read<float>(s, w + 0x30 + offset, 0x38f4d2)) -
                                  decor,
                              distance, ratio);
            value = v - (read<float>(s, w + 0x30 + offset, 0x38f51a) - decor) * ratio;
        }
        value = trunc(maximum(value, 0));
        if (!read<ReU8>(s, w + 0xb9, 0x38f563) &&
            !read<ReU8>(s, w + 0xbb, 0x38f56c))
            value = minimum(value, read<float>(s, w + 0x8c + offset, 0x38f587));
    }
    return out;
}
// [C]3c5384..3c53bf and3bd06c..3bd113: uint16 column widths/offsets, including wrap.
void menu_columns(ImguiWindowsState &s, Address p, float spacing, bool appearing) {
    if (appearing)
        write(s, p + 0x12, ReU64(0), 0x3c5394);
    const auto gap = ReU16(menu_detail::cvtt(spacing));
    write(s, p + 8, gap, 0x3c539e);
    ReU16 total = 0;
    bool any = false;
    for (unsigned i = 0; i < 4; ++i) {
        const auto value = read<ReU16>(s, p + 0x12 + i * 2, 0x3bd0b1);
        if (any && value)
            total = ReU16(total + gap);
        any = any || value != 0;
        if (i)
            write(s, p + 0xa + i * 2, total, 0x3bd0d5);
        total = ReU16(total + value);
    }
    write(s, p + 4, ReU32(total), 0x3bd10e);
    write(s, p + 0x12, ReU64(0), 0x3c53a9);
    write(s, p, ReU32(total), 0x3c53b0);
    write(s, p + 4, 0u, 0x3c53b2);
}
} // namespace rust_internal_re::window_detail
