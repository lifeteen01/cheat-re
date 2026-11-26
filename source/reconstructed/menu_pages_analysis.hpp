#pragma once
#include "menu_controls_analysis.hpp"
#include "menu_pages_text.hpp"
namespace rust_internal_re {
struct MenuPlayerRecord {
    re::ReString name, steam_id, grid;
    ReI32 team{};
};
struct MenuFileRequest {
    ReI32 operation{};
    re::ReString filename;
};
struct MenuPagesState {
    re::ReMap<Rva, re::ReVector<re::ReString>> string_vectors;
    re::ReVector<MenuPlayerRecord> players;             // [I] Owned native218850 records, stride98.
    re::ReMap<re::ReString, ReI32> player_status; // [C]3d7260 default-inserted+24.
    re::ReMap<Rva, Address> cached_targets;
    re::ReVector<MenuFileRequest> file_requests; // [C]2189a8: load0/save1/delete2.
    re::ReString wide_text_3fc190;
};
struct MenuPagesApi {
    FrameMainMenuApi frame;
    MenuControlInvoke control;
    // [I] Owned record view for native Favorites27f988. Keeping full requests
    // retains each stored slider format, description and exact key/color alias.
    re::ReFunction<re::ReOptional<re::ReVector<MenuControlRequest>>()> favorites_27f988;
    re::ReFunction<re::ReOptional<re::ReVector<bool>>(Rva)> bool_vector;
    MenuPagesState *state{};
    FrameDependencyState *dependency_state{};
    // [U] Supplied owned clipboard effect; this library never invokes a host clipboard.
    re::ReFunction<re::ReOptional<bool>(re::ReStringView)> clipboard;
};
struct MenuPageSpec {
    Rva thunk, entry, end;
};
re::ReSpan<const MenuPageSpec> menu_page_specs();
FrameDependencyResult replay_menu_page_35013c(FrameMenuState &, FrameMainMenuState &,
                                              const MenuPagesApi &);
FrameDependencyResult replay_menu_page_33a6f8(FrameMenuState &, FrameMainMenuState &,
                                              const MenuPagesApi &);
FrameDependencyResult replay_menu_player_page(Rva, FrameMenuState &, FrameMainMenuState &,
                                              const MenuPagesApi &);
re::ReString normalize_menu_config_name_2d6384(re::ReStringView);
FrameDependencyResult replay_menu_config_page_34c4b0(FrameMenuState &, FrameMainMenuState &,
                                                     const MenuPagesApi &);
FrameDependencyResult replay_menu_page(Rva, FrameMenuState &, FrameMainMenuState &,
                                       const MenuPagesApi &);
FrameMainMenuApi bind_menu_pages(const MenuPagesApi &, FrameMainMenuApi);
FrameMainMenuApi bind_menu_pages(const MenuPagesApi &);
void check_menu_pages_reconstruction();
} // namespace rust_internal_re
