#pragma once
#include "imgui_navigation_analysis.hpp"
#include "menu_controls_internal.hpp"
namespace rust_internal_re::navigation_detail {
using menu_detail::context;
using menu_detail::read;
using menu_detail::write;
inline void refresh(MenuControlsState &s) {
    const auto c = context(s);
    const bool enabled =
        read<ReU8>(s, c + 0x4941, 0x396775) || read<ReU8>(s, c + 0x4929, 0x39677d);
    write(s, c + 0x4928, ReU8(enabled), 0x396787);
}
inline ClipRect relative(MenuControlsState &s, Address window, ClipRect r) {
    const auto y = read<float>(s, window + 0x114, 0x39e1e6);
    const auto x = read<float>(s, window + 0x110, 0x39e1f1);
    return {r.x - x, r.y - y, r.z - x, r.w - y};
}
inline void finish(MenuControlsState &s, Address result) {
    const auto c = context(s);
    write(s, c + 0x4941, ReU8(0), 0x395883);
    imgui_navigation_result_395258(s, result);
    refresh(s);
}
} // namespace rust_internal_re::navigation_detail
