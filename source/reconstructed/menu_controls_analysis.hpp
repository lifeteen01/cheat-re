#pragma once
#include "frame_dependencies_main_menu.hpp"
#include "drawlist_core_analysis.hpp"
#include "font_text_analysis.hpp"
namespace rust_internal_re {
// [I] Owned arguments, not native widget or game ABI declarations. RVAs are config VALUE keys.
enum class MenuControlRole {
    checkbox,
    combo_cstrings,
    combo_strings,
    multiselect,
    button,
    slider_float,
    slider_integer,
    color,
    keybind,
    selectable
};
struct MenuControlRequest {
    MenuControlRole role{};
    Rva site{}, primitive{};
    re::ReString label, description, format;
    Rva value{}, key{}, color{};
    re::ReVector<re::ReString> choices;
    ReI32 minimum{}, maximum{};
    float minimum_float{}, maximum_float{};
    Vec2 size{};
    bool register_search{};
    ReU32 flags{};
    // [I] Optional synchronous borrow of a scalar in an owned status map.
    ReI32 *owned_integer{};
};
struct MenuControlResult {
    FrameDependencyResult result;
    bool pressed{}, changed{};
    ReU32 id{};
};
using MenuControlInvoke = re::ReFunction<MenuControlResult(const MenuControlRequest &)>;
struct MenuCheckboxAnimation {
    float enabled_hover{}, hover{}, checked{};
    re::ReArray<float, 4> color{};
    float key_width{};
    bool registered{};
};
struct MenuComboAnimation {
    re::ReArray<float, 13> fields{};
    bool open{}, registered{};
};
struct MenuToggleAnimation {
    float enabled{}, hover{};
    bool open{};
};
struct MenuGroupBackup {
    ReU32 window_id{};
    Vec2 cursor{}, maximum{};
    float indent{}, group_offset{};
    Vec2 line{};
    float baseline{};
    ReU32 active_alive{};
    ReU8 previous_alive{}, hovered{}, emit_item{1}, padding{};
};
static_assert(sizeof(MenuGroupBackup) == 48);
struct MenuStyleBackup {
    ReU32 index{};
    re::ReArray<float, 2> value{};
};
struct MenuColorBackup {
    ReU32 index{};
    re::ReArray<float, 4> value{};
};
struct MenuControlsState {
    // [I] Copied ImGui data. All input/window/context reads are bounds checked.
    Snapshot *image{};
    FrameMenuState *config{};
    FrameMainMenuState *main_menu{};
    DrawCoreStore *draw{};
    re::ReMap<re::RePair<Rva, ReU32>, MenuCheckboxAnimation> checkboxes;
    re::ReMap<re::RePair<Rva, ReU32>, MenuComboAnimation> combos;
    re::ReMap<Rva, re::ReVector<ReU8>> multiselect_values;
    re::ReMap<ReU32, MenuToggleAnimation> buttons, favorite_animation, key_animation,
        color_animation;
    re::ReOptional<ReUSize> search_group;
    ReI32 rotation_begin{};
    bool style_imported{}, color_imported{}, flags_imported{};
    re::ReVector<MenuStyleBackup> style_stack;
    re::ReVector<MenuColorBackup> color_stack;
    re::ReVector<ReU32> item_flags_stack;
    bool groups_imported{};
    re::ReVector<MenuGroupBackup> groups;
    re::ReMap<Rva, re::ReArray<float, 4>> colors;
    re::ReVector<MenuControlRequest> favorites_27f988;
    re::ReVector<MenuControlRequest> extended_search;
};
struct MenuControlText {
    Address draw_list{}, font{};
    float size{};
    Vec2 position{};
    ReU32 color{};
    re::ReString text;
    re::ReOptional<ReUSize> end;
};
struct MenuControlRectangle {
    Address draw_list{};
    Vec2 minimum{}, maximum{};
    ReU32 color{};
    float rounding{}, thickness{1};
    ReU32 flags{};
    bool filled{};
};
struct MenuControlGlowRectangle {
    Address draw_list{};
    Vec2 minimum{}, maximum{};
    ReU32 color{};
    float shadow_size{};
    Vec2 offset{};
    ReU32 flags{};
    float rounding{};
};
struct MenuControlLine {
    Address draw_list{};
    Vec2 begin{}, end{};
    ReU32 color{};
    float thickness{};
};
struct MenuControlCircle {
    Address draw_list{};
    Vec2 center{};
    float radius{}, shadow_size{};
    Vec2 offset{};
    ReU32 flags{}, color{};
    ReI32 segments{};
    bool filled{};
};
struct MenuControlChild {
    re::ReString id;
    Vec2 size{};
    ReU32 flags{};
};
struct MenuControlsApi {
    // [U] Remaining deep text-edit/navigation effects are named sample-local dependencies;
    // mouse hit/ownership/activation and config changes are concrete in this domain.
    re::ReFunction<void(Address)> deactivate_text_3c04d0;
    re::ReFunction<void()> nav_process_395964;
    re::ReFunction<void(ReU32, ReU32, ReU32)> nav_tab_395bc4;
    re::ReFunction<bool(Address)> nav_score_395db8;
    re::ReFunction<void(Address)> nav_result_395258;
    re::ReFunction<void(ReI32, bool)> close_popup_39031c;
    re::ReFunction<Address()> top_modal_391928;
    re::ReFunction<void(Address, Address)> modal_order_38f020;
    re::ReFunction<void(const MenuControlRectangle &)> rectangle;
    re::ReFunction<void(const MenuControlText &)> text;
    re::ReFunction<void(const MenuControlCircle &)> circle;
    re::ReFunction<void(const MenuControlLine &)> line;
    re::ReFunction<void(const MenuControlGlowRectangle &)> glow_rectangle_3a2010;
    re::ReFunction<bool(ReI32, bool)> key_input_2e5e4c;
    re::ReFunction<void(Address, Vec2, ReU32, ReI32, float)> arrow_3a7400;
    re::ReFunction<void(const MenuControlChild &)> begin_child_38e97c;
    re::ReFunction<void()> end_child_390a88;
    re::ReFunction<void(re::ReStringView, re::ReStringView, re::ReStringView)> tooltip_389f18;
    // [U] Popup window, color picker and key-capture local closure remains explicit.
    re::ReFunction<void(re::ReStringView, ReU32)> begin_window_38cfa4;
    re::ReFunction<void()> end_window_390994;
    re::ReFunction<void(Vec2)> window_position_39bb20, window_size_39bc6c;
    re::ReFunction<void(Address)> bring_focus_38f160, bring_display_38f0bc;
    re::ReFunction<bool(ReU32)> window_hovered_3947ec;
    re::ReFunction<bool(ReI32, bool)> mouse_clicked_3943e4;
    re::ReFunction<bool(re::ReStringView, re::ReArray<float, 4> &)> color_picker_379680;
    re::ReFunction<void(re::ReStringView, Rva)> key_capture_3853b0;
    re::ReFunction<bool(re::ReStringView, bool)> mode_button_388e2c;
    re::ReFunction<void(ReU32, ReU32)> push_color_398bec;
    re::ReFunction<void(ReU32, float)> push_float_398cc8;
    re::ReFunction<void(ReU32, Vec2)> push_vec2_398c60;
    re::ReFunction<void(ReI32)> pop_style_39896c, pop_color_39890c;
    re::ReFunction<void(float)> next_item_width_39b704;
    re::ReFunction<void(bool)> begin_disabled_38ec34;
    re::ReFunction<void()> end_disabled_390c80, close_current_popup_390260;
    re::ReFunction<void(Rva)> local_layout;
};
struct MenuButtonResult {
    bool pressed{}, hovered{}, held{};
};
ReU32 menu_controls_hash_39334c(re::ReStringView, ReU32 seed = 0,
                                        re::ReOptional<ReUSize> count = {});
ReI32 menu_controls_typematic_38f85c(float previous, float current, float delay, float rate);
MenuButtonResult menu_controls_button_behavior_3bc7e0(MenuControlsState &, const MenuControlsApi &,
                                                      ClipRect, ReU32, ReU32 flags);
re::ReVector<MenuControlRequest> &menu_controls_favorites(MenuControlsState &);

MenuControlResult menu_controls_apply(MenuControlsState &, const MenuControlsApi &,
                                      const MenuControlRequest &);
MenuControlsApi bind_menu_controls_text(FontTextStore &, FontTextSink &, MenuControlsApi = {});
MenuControlsApi bind_menu_controls_groups(MenuControlsState &, MenuControlsApi = {});
MenuControlsApi bind_menu_controls_snapshot(MenuControlsState &, MenuControlsApi = {});
FrameMainMenuApi bind_menu_controls_frame(MenuControlsState &, const MenuControlsApi &,
                                          FrameMainMenuApi = {});
MenuControlInvoke bind_menu_controls(MenuControlsState &, const MenuControlsApi &);
void check_menu_controls_reconstruction();
} // namespace rust_internal_re
