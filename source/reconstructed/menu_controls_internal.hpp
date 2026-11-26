#pragma once
#include "menu_controls_analysis.hpp"
namespace rust_internal_re::menu_detail {
template <class T> T read(const MenuControlsState &s, Address a, Rva at) {
    if (!s.image)
        { __builtin_trap(); }
    const auto v = s.image->read<T>(a);
    if (!v)
        { __builtin_trap(); }
    return *v;
}
template <class T> void write(MenuControlsState &s, Address a, T value, Rva at) {
    if (!s.image || !s.image->write(a, value))
        { __builtin_trap(); }
}
inline Address context(const MenuControlsState &s) {
    return read<Address>(s, 0x405b28, 0x35d200);
}
inline re::ReString raw_text(const MenuControlsState &s, Address address,
                            ReUSize maximum = 1048576) {
    re::ReString text;
    for (ReUSize i = 0; i < maximum; ++i) {
        const auto c = read<ReU8>(s, address + i, 0x3ca904);
        if (!c)
            return text;
        text.push_back(char(c));
    }
    { __builtin_trap(); }
}
inline Address window(MenuControlsState &s) {
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x35d207);
    write(s, w + 0xb8, ReU8(1), 0x35d20e);
    return read<Address>(s, c + 0x3f08, 0x35d215);
}
inline ReI32 cvtt(float x) {
    return !re::re_isfinite(x) || x >= 2147483648.0f || x < -2147483648.0f ? INT32_MIN
                                                                         : ReI32(x);
}
inline float maxss(float x, float y) {
    return x > y ? x : y;
}
inline float minss(float x, float y) {
    return x < y ? x : y;
}
inline bool contains(ClipRect b, Vec2 p) {
    return p.x >= b.x && p.y >= b.y && p.x < b.z && p.y < b.w;
}
inline bool overlaps(ClipRect a, ClipRect b) {
    return b.x < a.z && b.z > a.x && b.y < a.w && b.w > a.y;
}
Address cached_font(MenuControlsState &, ReI32, float);
Vec2 measure_cached(MenuControlsState &, ReI32, float, re::ReStringView);
float item_width(MenuControlsState &);
Vec2 calculate_size(MenuControlsState &, Vec2, Vec2);
float animate(MenuControlsState &, float, float, float);
ReU32 style_color(MenuControlsState &, ReU32, float = 1);
re::ReArray<float, 4> unpack_color(ReU32);
re::ReArray<float, 4> lerp_color(re::ReArray<float, 4>, re::ReArray<float, 4>, float);
ReU32 pack_color(re::ReArray<float, 4>);
void register_control(MenuControlsState &, const MenuControlRequest &, bool &);
void favorite_387664(MenuControlsState &, const MenuControlsApi &, const MenuControlRequest &);
bool mode_button(MenuControlsState &, const MenuControlsApi &, re::ReStringView, bool);
bool key_capture(MenuControlsState &, const MenuControlsApi &, re::ReStringView, Rva);
MenuControlResult slider(MenuControlsState &, const MenuControlsApi &, const MenuControlRequest &);
MenuControlResult multiselect(MenuControlsState &, const MenuControlsApi &,
                              const MenuControlRequest &);
MenuControlResult combo(MenuControlsState &, const MenuControlsApi &, const MenuControlRequest &);
void rotation_start(MenuControlsState &);
void rotation_end(MenuControlsState &, float);
MenuControlResult selectable(MenuControlsState &, const MenuControlsApi &,
                             const MenuControlRequest &);
MenuControlResult checkbox(MenuControlsState &, const MenuControlsApi &,
                           const MenuControlRequest &);
MenuControlResult button(MenuControlsState &, const MenuControlsApi &, const MenuControlRequest &);
MenuControlResult color(MenuControlsState &, const MenuControlsApi &, const MenuControlRequest &);
MenuControlResult keybind(MenuControlsState &, const MenuControlsApi &, const MenuControlRequest &);
void emit_text(MenuControlsState &, const MenuControlsApi &, Address, Vec2, ReU32,
               re::ReStringView, bool = true, Address = 0, float = 0);
bool item_hovered(MenuControlsState &, ReU32);
Address key_data(MenuControlsState &, ReI32);
void nav_window(MenuControlsState &, Address);
void nav_process(MenuControlsState &, const MenuControlsApi &);
void bring_window_front(MenuControlsState &, Address, bool);
bool window_hovered(MenuControlsState &, ReU32);
void same_line(MenuControlsState &, float, float);
bool mouse_hover(MenuControlsState &, ClipRect, bool);
void set_active(MenuControlsState &, const MenuControlsApi &, ReU32, Address);
void set_hovered(MenuControlsState &, ReU32);
void set_focus(MenuControlsState &, const MenuControlsApi &, ReU32, Address);
void focus_window(MenuControlsState &, const MenuControlsApi &, Address, ReU32);
void set_key_owner(MenuControlsState &, ReI32, ReU32, ReU32);
bool key_owner(MenuControlsState &, ReI32, ReU32);
bool mouse_clicked(MenuControlsState &, ReI32, ReU32, bool);
bool mouse_down(MenuControlsState &, ReI32, ReU32);
bool mouse_released(MenuControlsState &, ReI32, ReU32);
bool hoverable(MenuControlsState &, const MenuControlsApi &, ClipRect, ReU32);
ReU32 id(MenuControlsState &, re::ReStringView);
ReU32 anonymous_id(MenuControlsState &, Address window, ClipRect);
void item_size(MenuControlsState &, Vec2, float);
bool item_add(MenuControlsState &, const MenuControlsApi &, ClipRect, ReU32,
              re::ReOptional<ClipRect> = {}, ReU32 flags = 0);
} // namespace rust_internal_re::menu_detail
