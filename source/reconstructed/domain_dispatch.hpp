#pragma once
#include "frame_dependencies_main_menu.hpp"
#include "frame_dependencies_configuration.hpp"
#include "frame_dependencies_ui_setup.hpp"
#include "frame_dependencies_overlay.hpp"
#include "frame_residuals_analysis.hpp"
#include "frame_world_controllers_analysis.hpp"
#include "game_root_helpers.hpp"
#include "runtime_callback_bindings.hpp"

#ifdef _WIN32
#include <windows.h>
#include <psapi.h>
#endif

namespace game_init {

struct RuntimeFrameState {
    rust_internal_re::FrameMenuState menu;
    rust_internal_re::FrameMainMenuState main_menu;
    rust_internal_re::FrameTransitionState transition;
    rust_internal_re::FrameRaidCollection raid_collection;
    rust_internal_re::FrameWorldCollections world_collections;
    rust_internal_re::FrameWorldVisibility world_visibility;
    rust_internal_re::FrameClearBindings clear_bindings;
    rust_internal_re::FrameDependencyResult last_dep_result;
    rust_internal_re::FrameDependencyResult last_world_result;
    rust_internal_re::FrameDependencyResult last_transition_result;
    rust_internal_re::FrameDependencyResult last_clear_result;
    rust_internal_re::FrameDependencyResult last_raid_result;
    rust_internal_re::FrameDependencyResult last_ui_result;
    rust_internal_re::FrameDependencyResult last_config_result;
    rust_internal_re::FrameDependencyResult last_menu_result;
    rust_internal_re::FrameDependencyResult last_inventory_result;

    rust_internal_re::Snapshot im_snapshot{0, {}};
    rust_internal_re::Snapshot game_snapshot{0, {}};

    rust_internal_re::GameRootEnvironment root_env;
    rust_internal_re::GameRootEffects root_effects;

    re::ReVector<rust_internal_re::FrameWorldFileCommand> world_commands;
    rust_internal_re::FrameWorldSaveState world_save;
    rust_internal_re::FrameWorldEnvironment world_env;
    rust_internal_re::Snapshot io_snapshot{0, {}};
    rust_internal_re::FontTextStore font_store;
    rust_internal_re::DrawCoreStore draw_store;
    rust_internal_re::MenuPagesState menu_pages_state;
    rust_internal_re::MenuControlsState menu_controls_state;

    rust_internal_re::Address saved_original_late_update{};
    rust_internal_re::Address literal_storage_address{};
    ReUSize literal_storage_capacity{};

    bool initialized{};
};

rust_internal_re::UnityFrameApi build_runtime_frame_api(
    RuntimeFrameState& frame_state,
    rust_internal_re::FrameDependencyState& dep_state,
    rust_internal_re::FrameConfigurationState& config_state,
    const Il2CppExports& il2cpp,
    HMODULE own_module,
    HMODULE game_assembly,
    rust_internal_re::Address cheat_base,
    rust_internal_re::Address game_assembly_base);

void refresh_game_snapshot(RuntimeFrameState& state, HMODULE game_assembly);

} // namespace game_init
