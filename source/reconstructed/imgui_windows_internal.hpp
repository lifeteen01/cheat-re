#pragma once
#include "imgui_windows_analysis.hpp"
#include "menu_controls_internal.hpp"
#include "aim_iteration_analysis.hpp"
namespace rust_internal_re::window_detail {
inline MenuControlsState &control(ImguiWindowsState &s) {
    if (!s.controls)
        { __builtin_trap(); }
    return *s.controls;
}
template <class T> T read(ImguiWindowsState &s, Address p, Rva at) {
    return menu_detail::read<T>(control(s), p, at);
}
template <class T> void write(ImguiWindowsState &s, Address p, T v, Rva at) {
    menu_detail::write(control(s), p, v, at);
}
inline Address context(ImguiWindowsState &s) {
    return menu_detail::context(control(s));
}
inline Address current(ImguiWindowsState &s) {
    return read<Address>(s, context(s) + 0x3f08, 0x35d207);
}
inline void check(FrameDependencyResult r) {
    if (r.status != UnityStatus::complete)
        { __builtin_trap(); }
}
inline Address element(ImguiWindowsState &s, Address vector, ReI32 index, ReUSize stride,
                       Rva at) {
    const auto n = read<ReI32>(s, vector, at);
    if (index < 0 || index >= n)
        { __builtin_trap(); }
    return read<Address>(s, vector + 8, at) + Address(index) * stride;
}
inline ReI32 sub(ReI32 x, ReI32 y) {
    return re::re_bit_cast<ReI32>(ReU32(x) - ReU32(y));
}
inline re::ReString cstring(ImguiWindowsState &s, Address p, Rva at) {
    re::ReString text;
    for (ReUSize i = 0; i < 1048576; ++i) {
        const auto c = read<ReU8>(s, p + i, at);
        if (!c)
            return text;
        text.push_back(char(c));
    }
    { __builtin_trap(); }
}
MenuControlsApi effective_controls(ImguiWindowsState &, const ImguiWindowsApi &);
void focus_below(ImguiWindowsState &, const ImguiWindowsApi &, Address, Address, ReU32);
Address create_window(ImguiWindowsState &, const ImguiWindowsApi &, re::ReStringView,
                      ReU32);
Address viewport(ImguiWindowsState &);
void push_bytes(ImguiWindowsState &, const ImguiWindowsApi &, Address, re::ReSpan<const ReByte>,
                Rva, ReUSize initialized = 0);
void allow_condition(ImguiWindowsState &, Address, ReU32, bool);
void roots(ImguiWindowsState &, Address, ReU32, Address);
void focus_order(ImguiWindowsState &, const ImguiWindowsApi &, Address, bool, ReU32);
void position(ImguiWindowsState &, Address, Vec2, ReU32);
void size(ImguiWindowsState &, Address, Vec2, ReU32);
void collapsed(ImguiWindowsState &, Address, ReU8, ReU32);
float font_size(ImguiWindowsState &, Address);
float title_height(ImguiWindowsState &, Address);
float menu_height(ImguiWindowsState &, Address);
ClipRect title_rect(ImguiWindowsState &, Address);
void dirty(ImguiWindowsState &, Address);
void content_sizes(ImguiWindowsState &, Address);
Vec2 constrain_size(ImguiWindowsState &, const ImguiWindowsApi &, Address, Vec2);
Vec2 auto_fit_size(ImguiWindowsState &, const ImguiWindowsApi &, Address, Vec2);
Vec2 scroll_target(ImguiWindowsState &, Address);
void menu_columns(ImguiWindowsState &, Address, float, bool);
void decorations(ImguiWindowsState &, const ImguiWindowsApi &, Address, ClipRect, bool, bool,
                 ReI32, const re::ReArray<ReU32, 4> &, float);
struct BeginFrame {
    Address window{}, found{}, parent{}, previous{};
    ReI32 frame{}, old_frame{};
    ReU32 flags{};
    bool created{}, appearing{}, position_set{}, size_x{}, size_y{};
};
void first_frame(ImguiWindowsState &, const ImguiWindowsApi &, const ImguiWindowBeginRequest &,
                 BeginFrame &);
bool child_of(ImguiWindowsState &, Address, Address);
void trim(ImguiWindowsState &, const ImguiWindowsApi &, ReI32, bool);
void close(ImguiWindowsState &, const ImguiWindowsApi &);
void set_current(ImguiWindowsState &, const ImguiWindowsApi &, Address);
void end(ImguiWindowsState &, const ImguiWindowsApi &);
void end_child(ImguiWindowsState &, const ImguiWindowsApi &);
// [C] Binary entry-point forwards for already-modeled helpers.
void set_current_entry_39b348(ImguiWindowsState &, const ImguiWindowsApi &, Address);
void focus_pop_entry_3987d8(ImguiWindowsState &);
void clamp_position_entry_38ff14(ImguiWindowsState &, Address, ClipRect);
void draw_hints_apply_392044(ImguiWindowsState &, Address);
StaticDispatchResult describe_window_init_38b6d4();
void defaults_entry_393cbc(ImguiWindowsState &, Address, Address);
void settings_apply_38cef0(ImguiWindowsState &, Address, Address);
StaticDispatchResult describe_string_alloc_39347c();
StaticDispatchResult describe_draw_cmd_init_38b9e8();
void focus_order_entry_39d67c(ImguiWindowsState &, const ImguiWindowsApi &, Address, bool, ReU32);
StaticDispatchResult describe_string_realloc_3934b4();
StaticDispatchResult describe_sorted_set_39ba10();
ClipRect viewport_work_rect_392f48(ImguiWindowsState &, Address);
void collapsed_entry_39ba68(ImguiWindowsState &, Address, ReU8, ReU32);
void set_last_item_39b660(ImguiWindowsState &, ReU32, ReU32, ReU32, const ClipRect &);
} // namespace rust_internal_re::window_detail
