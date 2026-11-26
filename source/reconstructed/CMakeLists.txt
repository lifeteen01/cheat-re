cmake_minimum_required(VERSION 3.20)
project(rust_internal_semantic_analysis LANGUAGES CXX)
file(GLOB re_world_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/world_esp_*.cpp")
list(FILTER re_world_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_renderer_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/renderer_helpers_*.cpp")
list(FILTER re_renderer_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_draw_core_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/drawlist_core_*.cpp")
list(FILTER re_draw_core_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_frame_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/frame_dependencies_*.cpp")
list(FILTER re_frame_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_font_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/font_text_*.cpp")
list(FILTER re_font_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_shape_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/draw_shapes_*.cpp")
list(FILTER re_shape_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_menu_control_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/menu_controls_*.cpp")
list(FILTER re_menu_control_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_meter_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/draw_meters_*.cpp")
list(FILTER re_meter_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_shadow_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/draw_shadows_*.cpp")
list(FILTER re_shadow_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_window_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/imgui_windows_*.cpp")
list(FILTER re_window_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_builder_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/font_builder_*.cpp")
list(FILTER re_builder_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_picker_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/menu_color_picker_*.cpp")
list(FILTER re_picker_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_navigation_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/imgui_navigation_*.cpp")
list(FILTER re_navigation_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_window_detail_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/imgui_window_details_*.cpp")
list(FILTER re_window_detail_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_aux_helper_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/game_aux_helpers_*.cpp")
list(FILTER re_aux_helper_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_editor_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/imgui_text_input_*.cpp")
set(re_editor_check_sources ${re_editor_sources})
list(FILTER re_editor_sources EXCLUDE REGEX "_checks\\.cpp$")
list(FILTER re_editor_check_sources INCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_font_input_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/font_atlas_input_*.cpp")
list(FILTER re_font_input_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_game_field_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/game_field_controller*.cpp")
list(FILTER re_game_field_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_game_runtime_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/game_runtime_wrappers_*.cpp")
list(FILTER re_game_runtime_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_game_direct_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/game_direct_wrappers_*.cpp")
set(re_game_direct_checks ${re_game_direct_sources})
list(FILTER re_game_direct_sources EXCLUDE REGEX "_checks\\.cpp$")
list(FILTER re_game_direct_checks INCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_game_input_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/game_input_physics_*.cpp")
set(re_game_input_checks ${re_game_input_sources})
list(FILTER re_game_input_sources EXCLUDE REGEX "_(checks|fixture)\\.cpp$")
list(FILTER re_game_input_checks INCLUDE REGEX "_(checks|fixture)\\.cpp$")
file(GLOB re_game_literal_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/game_local_literals_*.cpp")
list(FILTER re_game_literal_sources EXCLUDE REGEX "_checks\\.cpp$")
file(GLOB re_frame_world_sources CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/frame_world_controllers_*.cpp")
list(FILTER re_frame_world_sources EXCLUDE REGEX "_checks\\.cpp$")
# [I] Offline analysis-library build; no DLL entrypoint or game integration is provided.
add_library(semantic_analysis STATIC
    offset_profile.cpp offset_catalog.cpp offset_profile_bindings.cpp
    01_hooks.cpp 02_rendering.cpp 03_stack_spoof_spoofcall.cpp
    04_esp_entities.cpp 05_server_observable.cpp metadata_analysis.cpp launcher_analysis.cpp
    hit_override_analysis.cpp projectile_analysis.cpp aim_weapon_analysis.cpp movement_analysis.cpp
    game_base_analysis.cpp snapshot_bindings.cpp interaction_workers.cpp metadata_export_analysis.cpp
    projectile_container_analysis.cpp metadata_signature_analysis.cpp movement_main_analysis.cpp launcher_worker_bindings.cpp
    sky_model_analysis.cpp trajectory_cache_analysis.cpp helicopter_aim_analysis.cpp sky_model_bindings.cpp
    registry_analysis.cpp allocation_cache_analysis.cpp registry_bindings.cpp
    field_getters_analysis.cpp metadata_wrapper_analysis.cpp unity_backend_analysis.cpp interaction_backend_analysis.cpp
    game_helpers_analysis.cpp hook_setup_analysis.cpp native_pe_analysis.cpp world_snapshot_bindings.cpp
    name_helpers_analysis.cpp frame_game_bindings.cpp projectile_leaf_helpers.cpp unity_math_analysis.cpp font_producer_analysis.cpp
    world_render_bindings.cpp menu_render_bindings.cpp menu_pages_analysis.cpp menu_pages_players.cpp menu_pages_config.cpp
    frame_residuals_state.cpp frame_residuals_raid.cpp frame_preview_analysis.cpp frame_preview_geometry.cpp frame_preview_widgets.cpp font_frame_bindings.cpp metadata_argument_bindings.cpp menu_tooltip_analysis.cpp game_root_helpers.cpp game_root_domain_bindings.cpp menu_layout_channels.cpp
    ${re_world_sources} ${re_renderer_sources} ${re_draw_core_sources} ${re_frame_sources} ${re_font_sources} ${re_shape_sources} ${re_menu_control_sources} ${re_meter_sources} ${re_shadow_sources} ${re_window_sources} ${re_builder_sources} ${re_picker_sources} ${re_navigation_sources} ${re_window_detail_sources} ${re_aux_helper_sources} ${re_editor_sources} ${re_font_input_sources} ${re_game_field_sources} ${re_game_runtime_sources} ${re_game_direct_sources} ${re_game_input_sources} ${re_game_literal_sources} ${re_frame_world_sources})
target_compile_features(semantic_analysis PUBLIC cxx_std_20)
target_include_directories(semantic_analysis PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")
if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(semantic_analysis PRIVATE -Wall -Wextra -Wpedantic -Werror -ffp-contract=off)
endif()
add_executable(analysis_checks analysis_checks.cpp metadata_checks.cpp
    offset_profile_checks.cpp offset_catalog_checks.cpp
    hooks_checks.cpp entities_checks.cpp server_checks.cpp launcher_checks.cpp hit_override_checks.cpp
    projectile_checks.cpp aim_weapon_checks.cpp movement_checks.cpp game_base_checks.cpp snapshot_binding_checks.cpp
    interaction_workers_checks.cpp metadata_export_checks.cpp projectile_container_checks.cpp metadata_signature_checks.cpp
    movement_main_checks.cpp sky_model_checks.cpp trajectory_cache_checks.cpp helicopter_aim_checks.cpp
    registry_checks.cpp allocation_cache_checks.cpp registry_binding_checks.cpp
    field_getters_checks.cpp metadata_wrapper_checks.cpp unity_backend_checks.cpp interaction_backend_checks.cpp
    game_helpers_checks.cpp hook_setup_checks.cpp native_pe_checks.cpp world_esp_checks.cpp world_esp_extended_checks.cpp world_esp_output_checks.cpp
    renderer_helpers_checks.cpp world_snapshot_binding_checks.cpp drawlist_core_checks.cpp
    frame_dependencies_checks.cpp frame_dependencies_overlay_checks.cpp frame_dependencies_main_menu_checks.cpp
    font_text_checks.cpp name_helpers_checks.cpp frame_game_binding_checks.cpp projectile_leaf_checks.cpp unity_math_checks.cpp font_producer_checks.cpp draw_shapes_checks.cpp
    menu_controls_checks.cpp world_render_binding_checks.cpp menu_pages_checks.cpp font_builder_support_checks.cpp draw_meters_checks.cpp
    frame_residuals_checks.cpp font_frame_binding_checks.cpp frame_failure_checks.cpp draw_shadows_checks.cpp imgui_windows_checks.cpp metadata_argument_checks.cpp menu_tooltip_checks.cpp font_builder_checks.cpp font_builder_cff_checks.cpp font_builder_owned_checks.cpp font_builder_packing_checks.cpp font_builder_sfnt_checks.cpp menu_color_picker_checks.cpp imgui_navigation_checks.cpp imgui_window_details_checks.cpp game_root_helper_checks.cpp game_root_domain_checks.cpp menu_layout_channel_checks.cpp game_aux_helpers_checks.cpp font_atlas_input_checks.cpp game_field_controller_checks.cpp game_runtime_wrappers_checks.cpp game_local_literals_checks.cpp frame_world_controllers_checks.cpp ${re_game_input_checks} ${re_game_direct_checks} ${re_editor_check_sources})
target_link_libraries(analysis_checks PRIVATE semantic_analysis)
if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(analysis_checks PRIVATE -Wall -Wextra -Wpedantic -Werror -ffp-contract=off)
endif()
enable_testing()
add_test(NAME semantic_invariants COMMAND analysis_checks)
