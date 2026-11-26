#pragma once
#include "frame_dependencies_menu.hpp"
namespace rust_internal_re {
// [I] Owned equivalents of startup-populated category, search-group and widget
// records. Their native string/vector allocations are standard-library storage.
struct FrameMenuCategory {
    re::ReString icon,name;
    re::ReVector<re::ReString> subtabs;
    re::ReVector<Rva> pages;
    ReI32 selected{},requested{}; // native +70/+74
};
struct FrameSearchWidget {
    re::ReString type,label;
    Rva boolean{},integer{},scalar{},key{},color{},multi{};
    ReI32 minimum{},maximum{};float minimum_float{},maximum_float{};
    re::ReVector<re::ReString> choices;
};
struct FrameSearchGroup {
    ReI32 category{},subtab{};
    re::ReString id,label;
    re::ReVector<FrameSearchWidget> widgets;
};
struct FrameMainMenuState {
    re::ReVector<FrameMenuCategory> categories;
    re::ReVector<FrameSearchGroup> search_groups;
    re::ReArray<Vec2,144> points{},velocities{};
    // [C] ImHashStr(label,0,seed4/5), preserving aliases on hash collisions.
    re::ReMap<ReU32,re::ReArray<float,12>> category_animation,subtab_animation;
    re::ReMap<ReU32,bool> search_child_registered;
    re::ReArray<re::ReString,2> lowercase_buffers;
    unsigned lowercase_index{};
    UnityCache random_cache;
};
struct FrameMenuButton {bool pressed{},hovered{},held{};};
struct FrameMainMenuApi {
    FrameDependencyApi effects;
    // [I] Copied ImGui context/window fields; never a live ImGui ABI pointer.
    Snapshot* imgui{};Address context{};
    re::ReFunction<re::ReOptional<FrameMenuButton>(ClipRect,ReI32,ReI32)> button_3bc7e0;
    // [U] Explicit remaining LOCAL page/widget/preview boundaries. No successful
    // default; these do not count as translated local bodies in coverage.
    re::ReFunction<FrameDependencyResult(Rva,FrameMenuState&,FrameMainMenuState&)> page;
    re::ReFunction<FrameDependencyResult(Rva,FrameSearchWidget&,FrameMenuState&)> widget;
    re::ReFunction<FrameDependencyResult(FrameMenuState&,FrameMainMenuState&)> preview_365038;
};
re::ReStringView frame_lowercase_389e84(FrameMainMenuState&,re::ReStringView);
float frame_interpolate_33565c(float,float,float);
FrameDependencyResult frame_initialize_points_3873f0(FrameMainMenuState&,const FrameMainMenuApi&);
FrameDependencyResult frame_render_points_386fa4(FrameMainMenuState&,const FrameMainMenuApi&);
FrameDependencyResult frame_menu_animations_3872e8(FrameMenuState&,FrameMainMenuState&,const FrameMainMenuApi&);
FrameDependencyResult frame_menu_page_388b4c(FrameMenuState&,FrameMainMenuState&,const FrameMainMenuApi&);
FrameDependencyResult frame_category_widget_389830(FrameMenuState&,FrameMainMenuState&,const FrameMainMenuApi&,ReI32,bool&);
FrameDependencyResult frame_subtab_widget_3893b0(FrameMenuState&,FrameMainMenuState&,const FrameMainMenuApi&,ReI32,bool&);
FrameDependencyResult frame_search_child_384df0(FrameMenuState&,FrameMainMenuState&,const FrameMainMenuApi&,re::ReString,re::ReString,Vec2,bool);
FrameDependencyResult frame_main_menu_35fc8b(FrameMenuState&,FrameMainMenuState&,const FrameMainMenuApi&);
FrameDependencyResult frame_render_notifications_37f990(FrameMenuState&,FrameDependencyState&,const FrameMainMenuApi&,Address);
FrameDependencyResult replay_frame_menu_35d5ac(FrameMenuState&,FrameMainMenuState&,FrameDependencyState&,const FrameMainMenuApi&);
UnityFrameApi bind_frame_menu(FrameMenuState&,FrameMainMenuState&,FrameDependencyState&,const FrameMainMenuApi&,FrameDependencyResult&,UnityFrameApi={});
void check_frame_main_menu_dependencies();
} // namespace rust_internal_re
