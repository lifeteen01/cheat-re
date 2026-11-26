#pragma once
#include "menu_controls_analysis.hpp"
namespace rust_internal_re {
// [I] Copied/owned window-lifecycle model, not live ImGui ABI declarations.
struct ImguiWindowsState {
    MenuControlsState *controls{};
    re::ReMap<ReU32, Address> window_ids;
};
struct ImguiWindowBeginRequest {
    re::ReString name;
    re::ReOptional<Address> open_byte;
    ReU32 flags{};
};
struct ImguiWindowResult {
    FrameDependencyResult result;
    Address window{};
    bool visible{};
};
// [I] Owned results of the still-untranslated local resize/decorations closure.
// A supplied implementation mutates the same copied Snapshot; these are consumed outputs.
struct ImguiWindowResize {
    bool changed{};
    ReI32 held{-1};
    re::ReArray<ReU32, 4> colors{};
};
struct ImguiWindowConstraint {
    Address user{};
    Vec2 position{}, current{}, desired{};
};
struct ImguiWindowStackRecord {
    Address window{};
    re::ReArray<ReByte, 60> last_item{};
    re::ReArray<ReU16, 9> stack_sizes{};
    ReU16 padding{};
};
static_assert(sizeof(ImguiWindowStackRecord) == 0x58 &&
              offsetof(ImguiWindowStackRecord, stack_sizes) == 0x44);
struct ImguiWindowsApi {
    MenuControlsApi controls;
    // [U] Reached local prerequisites remain typed until individually translated.
    re::ReFunction<void(Address, Address, ReU32, ReU32)> focus_below_391e68;
    // [I] Explicit copied-address allocation for vector growth, not a native heap ABI.
    re::ReFunction<Address(ReUSize)> reserve_storage;
    re::ReFunction<Address(Address, Address, ReUSize)> allocation_leaf;
    re::ReFunction<Address(ReI32)> table_by_index_3921c0;
    re::ReFunction<void()> end_columns_3b4f94, log_finish_394dd4;
    re::ReFunction<void(ClipRect, ReU32, ReU32)> nav_highlight_3997ac;
    re::ReFunction<void(Address, bool)> nav_initialize_395500;
    re::ReFunction<Address(re::ReStringView, ReU32)> create_window_3908d4;
    re::ReFunction<void(Address, Address, Address)> free_leaf;
    re::ReFunction<Vec2(Address, const ImguiWindowConstraint &)> size_constraint_leaf;
    re::ReFunction<Vec2(Address)> auto_position_39138c;
    re::ReFunction<ImguiWindowResize(Address, Vec2, ReI32, ClipRect)> resize_39d760;
    re::ReFunction<void(Address, ClipRect, bool, bool, ReI32,
                       const re::ReArray<ReU32, 4> &, float)>
        decorations_399d88;
    re::ReFunction<void(Address, ClipRect, re::ReStringView, re::ReOptional<Address>)>
        title_contents_39a7a8;
    re::ReFunction<void(ReI32)> scrollbar_3c3234;
    re::ReFunction<void(Address)> shadow_39a64c;
};
Address imgui_window_find_391c78(ImguiWindowsState &, re::ReStringView);
Address imgui_window_modal_391928(ImguiWindowsState &, Address relative_to = 0);
void imgui_window_order_38f020(ImguiWindowsState &, Address, Address);
FrameDependencyResult imgui_window_trim_39031c(ImguiWindowsState &, const ImguiWindowsApi &,
                                               ReI32, bool);
FrameDependencyResult imgui_window_close_390260(ImguiWindowsState &, const ImguiWindowsApi &);
FrameDependencyResult imgui_window_end_390994(ImguiWindowsState &, const ImguiWindowsApi &);
FrameDependencyResult imgui_window_end_child_390a88(ImguiWindowsState &, const ImguiWindowsApi &);
ImguiWindowResult imgui_window_begin_38cfa4(ImguiWindowsState &, const ImguiWindowsApi &,
                                            const ImguiWindowBeginRequest &);
ImguiWindowResult imgui_window_child_id_38e9c4(ImguiWindowsState &, const ImguiWindowsApi &,
                                               re::ReOptional<re::ReStringView>, ReU32, Vec2,
                                               bool, ReU32);
ImguiWindowResult imgui_window_child_38e97c(ImguiWindowsState &, const ImguiWindowsApi &,
                                            re::ReStringView, Vec2, bool, ReU32);
MenuControlsApi bind_imgui_windows(ImguiWindowsState &, const ImguiWindowsApi &,
                                   MenuControlsApi = {});
UnityApi bind_imgui_windows_frame(ImguiWindowsState &, const ImguiWindowsApi &,
                                  FrameDependencyResult &last_result, UnityApi = {});
void check_imgui_windows_reconstruction();
} // namespace rust_internal_re
