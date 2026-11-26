#pragma once
#include "imgui_window_details_analysis.hpp"
#include "imgui_windows_internal.hpp"
namespace rust_internal_re::window_details {
inline ImguiWindowsState &windows(ImguiWindowDetailsState &s) {
    if (!s.windows)
        { __builtin_trap(); }
    return *s.windows;
}
inline MenuControlsState &controls(ImguiWindowDetailsState &s) {
    return window_detail::control(windows(s));
}
template <class T> T read(ImguiWindowDetailsState &s, Address p, Rva at) {
    return window_detail::read<T>(windows(s), p, at);
}
template <class T> void write(ImguiWindowDetailsState &s, Address p, T v, Rva at) {
    window_detail::write(windows(s), p, v, at);
}
inline Address context(ImguiWindowDetailsState &s) {
    return window_detail::context(windows(s));
}
inline Address current(ImguiWindowDetailsState &s) {
    return window_detail::current(windows(s));
}
inline ReI32 sub(ReI32 a, ReI32 b) {
    return window_detail::sub(a, b);
}
inline float trunc(float x) {
    return float(menu_detail::cvtt(x));
}
inline ReI64 cvtt64(float x) {
    return !re::re_isfinite(x) || double(x) >= 9223372036854775808.0 ||
                   double(x) < -9223372036854775808.0
               ? INT64_MIN
               : ReI64(x);
}
inline float clamp(float v, float low, float high) {
    return low > v ? low : menu_detail::minss(high, v);
}
inline ClipRect expand(ClipRect b, Vec2 d) {
    return {b.x - d.x, b.y - d.y, b.z + d.x, b.w + d.y};
}
inline ClipRect intersect(ClipRect a, ClipRect b) {
    return {menu_detail::maxss(a.x, b.x), menu_detail::maxss(a.y, b.y),
            menu_detail::minss(a.z, b.z), menu_detail::minss(a.w, b.w)};
}
inline bool contains(ClipRect outer, ClipRect inner) {
    return inner.x >= outer.x && inner.y >= outer.y && outer.z >= inner.z && outer.w >= inner.w;
}
inline DrawCoreList &draw(ImguiWindowDetailsState &s, Address key, Rva site) {
    auto &owner = controls(s);
    auto found = owner.draw ? owner.draw->lists.find(key) : re::ReOptional<DrawCoreList*>{};
    if (!found)
        { __builtin_trap(); }
    return **found;
}
inline Address draw_key(ImguiWindowDetailsState &s, Address w, Rva at) {
    return read<Address>(s, w + 0x298, at);
}
void rect(ImguiWindowDetailsState &, const ImguiWindowsApi &, Address, ClipRect, ReU32,
          float, float, ReU32 = 0, bool = false);
void line(ImguiWindowDetailsState &, const ImguiWindowsApi &, Address, Vec2, Vec2, ReU32,
          float);
void circle(ImguiWindowDetailsState &, const ImguiWindowsApi &, Address, Vec2, float,
            ReU32);
void refresh_nav(ImguiWindowDetailsState &);
ClipRect resize_border_rect(ImguiWindowDetailsState &, Address, int, float, float);
Vec2 popup_position(ImguiWindowDetailsState &, Vec2, Vec2, ReI32 &, ClipRect, ClipRect,
                    ReI32, re::ReOptional<Address> = {});
} // namespace rust_internal_re::window_details
