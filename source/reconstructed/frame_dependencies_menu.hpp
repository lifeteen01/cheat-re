#pragma once
#include "frame_dependencies_analysis.hpp"
namespace rust_internal_re {
struct FrameHotkeySpec { Rva key,enabled,latch; re::ReStringView label; };
re::ReSpan<const FrameHotkeySpec> frame_hotkey_specs();
struct FrameKeyName { re::ReString name; ReI32 code{}; };
struct FrameFontBucket {UnityBytes bytes,glyph_ranges;re::ReMap<float,Address> fonts;re::ReVector<float> requested;};
struct FrameMenuState {
    // [I] Numeric keys are native global value RVAs, including configuration +48.
    // Scalars retain raw float/int bits. Caller initializes configuration values.
    re::ReMap<Rva,ReU32> values;
    re::ReMap<Rva,re::ReString> strings;
    re::ReVector<FrameKeyName> key_names,text_key_names;
    re::ReArray<Address,4> fonts{};
    re::ReMap<ReI32,Address> sized_fonts;
    re::ReMap<Address,float> font_sizes;
    re::ReMap<ReU32,ClipRect> ui_colors;
    re::ReMap<ReU32,ReU32> ui_style_values;
    re::ReArray<FrameFontBucket,3> font_buckets;
    UnityBytes font_glyph_ranges;ReU32 glyph_once_flags{},io_config_flags{};Address io_ini_filename{};float ui_scale{1.0f};
    ReU32 event_flags{};re::ReArray<Address,3> event_targets{};
};
re::ReString frame_key_name(const FrameMenuState&,ReI32,bool text);
// [C] Exact priority of eight editable strings35f56a..35fc8b. Event type4/5
// accepted, Backspace removes one byte only on type4, numeric fields gate commit.
void frame_edit_menu_text_35f56a(FrameMenuState&,ReI32 event_type,ReI32 key);
FrameDependencyResult frame_menu_text_event_35f203(FrameMenuState&,const FrameDependencyApi&);
FrameDependencyResult frame_hotkey_window_35d5ac(FrameMenuState&,const FrameDependencyApi&);
FrameDependencyResult frame_draw_hotkey_35bc70(FrameMenuState&,const FrameDependencyApi&,
                                              re::ReStringView text,bool enabled,bool latched);
void check_frame_menu_dependencies();
} // namespace rust_internal_re
