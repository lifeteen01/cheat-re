#!/usr/bin/env bash
# [I] Analyst-authored portable offline build/check entrypoint.
set -euo pipefail
re_source_dir="$(cd -- "$(dirname -- "$0")" && pwd)"
re_build_dir="${RE_ANALYSIS_BUILD_DIR:-$re_source_dir/../../dump_analysis/semantic_reconstruction/local_build}"
mkdir -p -- "$re_build_dir"
re_compiler="${CXX:-c++}"
re_extra_flags=()
re_world_sources=("$re_source_dir"/world_esp_*.cpp)
re_renderer_sources=("$re_source_dir"/renderer_helpers_*.cpp)
re_draw_core_sources=("$re_source_dir"/drawlist_core_*.cpp)
re_frame_sources=("$re_source_dir"/frame_dependencies_*.cpp)
re_font_sources=("$re_source_dir"/font_text_*.cpp)
re_shape_sources=("$re_source_dir"/draw_shapes_*.cpp)
re_menu_control_sources=("$re_source_dir"/menu_controls_*.cpp)
re_meter_sources=("$re_source_dir"/draw_meters_*.cpp)
re_shadow_sources=("$re_source_dir"/draw_shadows_*.cpp)
re_window_sources=("$re_source_dir"/imgui_windows_*.cpp)
re_builder_sources=("$re_source_dir"/font_builder_*.cpp)
re_picker_sources=("$re_source_dir"/menu_color_picker_*.cpp)
re_navigation_sources=("$re_source_dir"/imgui_navigation_*.cpp)
re_window_detail_sources=("$re_source_dir"/imgui_window_details_*.cpp)
re_aux_helper_sources=("$re_source_dir"/game_aux_helpers_*.cpp)
re_editor_sources=("$re_source_dir"/imgui_text_input_*.cpp)
re_font_input_sources=("$re_source_dir"/font_atlas_input_*.cpp)
re_game_field_sources=("$re_source_dir"/game_field_controller*.cpp)
re_game_runtime_sources=("$re_source_dir"/game_runtime_wrappers_*.cpp)
re_game_direct_sources=("$re_source_dir"/game_direct_wrappers_*.cpp)
re_game_input_sources=("$re_source_dir"/game_input_physics_*.cpp)
re_game_literal_sources=("$re_source_dir"/game_local_literals_*.cpp)
re_frame_world_sources=("$re_source_dir"/frame_world_controllers_*.cpp)
re_offset_sources=("$re_source_dir"/offset_profile*.cpp "$re_source_dir"/offset_catalog*.cpp)
if [[ -n "${RE_TOOLCHAIN_SYSROOT:-}" ]]; then
    re_extra_flags+=("--sysroot=$RE_TOOLCHAIN_SYSROOT"
        "-B$RE_TOOLCHAIN_SYSROOT/usr/lib/gcc/x86_64-linux-gnu/15/"
        "-B$RE_TOOLCHAIN_SYSROOT/usr/libexec/gcc/x86_64-linux-gnu/15/"
        "-L/usr/lib/x86_64-linux-gnu")
fi
if [[ "${RE_ANALYSIS_SANITIZE:-0}" == 1 ]]; then
    # [I] Optional fixture-only instrumentation; no sample instruction is executed.
    re_extra_flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan
        -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
"$re_compiler" -std=c++20 -Wall -Wextra -Wpedantic -Werror \
    -Wno-unused-parameter -Wno-sign-compare -Wno-array-bounds \
    -Wno-stringop-overread -Wno-stringop-overflow \
    -Wno-uninitialized -Wno-maybe-uninitialized \
    -Wno-return-type -Wno-unused-function -Wno-unused-variable \
    -Wno-unused-value -Wno-unused-but-set-variable \
    -Wno-narrowing -Wno-ignored-qualifiers -Wno-range-loop-construct \
    -DRE_FREESTANDING_BUILD=1 \
    -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g \
    "${re_extra_flags[@]}" \
    "$re_source_dir/01_hooks.cpp" "$re_source_dir/02_rendering.cpp" \
    "$re_source_dir/03_stack_spoof_spoofcall.cpp" "$re_source_dir/04_esp_entities.cpp" \
    "$re_source_dir/05_server_observable.cpp" "$re_source_dir/metadata_analysis.cpp" "$re_source_dir/launcher_analysis.cpp" \
    "$re_source_dir/hit_override_analysis.cpp" "$re_source_dir/projectile_analysis.cpp" "$re_source_dir/aim_weapon_analysis.cpp" \
    "$re_source_dir/movement_analysis.cpp" "$re_source_dir/game_base_analysis.cpp" "$re_source_dir/snapshot_bindings.cpp" \
    "$re_source_dir/interaction_workers.cpp" \
    "$re_source_dir/metadata_export_analysis.cpp" \
    "$re_source_dir/projectile_container_analysis.cpp" \
    "$re_source_dir/metadata_signature_analysis.cpp" \
    "$re_source_dir/movement_main_analysis.cpp" \
    "$re_source_dir/launcher_worker_bindings.cpp" \
    "$re_source_dir/sky_model_analysis.cpp" \
    "$re_source_dir/trajectory_cache_analysis.cpp" \
    "$re_source_dir/helicopter_aim_analysis.cpp" "$re_source_dir/sky_model_bindings.cpp" \
    "$re_source_dir/registry_analysis.cpp" "$re_source_dir/allocation_cache_analysis.cpp" "$re_source_dir/registry_bindings.cpp" \
    "$re_source_dir/field_getters_analysis.cpp" "$re_source_dir/metadata_wrapper_analysis.cpp" \
    "$re_source_dir/unity_backend_analysis.cpp" "$re_source_dir/interaction_backend_analysis.cpp" \
    "$re_source_dir/game_helpers_analysis.cpp" \
    "${re_world_sources[@]}" \
    "$re_source_dir/hook_setup_analysis.cpp" "$re_source_dir/native_pe_analysis.cpp" \
    "${re_renderer_sources[@]}" "$re_source_dir/world_snapshot_bindings.cpp" \
    "${re_draw_core_sources[@]}" "${re_frame_sources[@]}" \
    "${re_font_sources[@]}" "$re_source_dir/name_helpers_analysis.cpp" "$re_source_dir/frame_game_bindings.cpp" \
    "$re_source_dir/projectile_leaf_helpers.cpp" \
    "$re_source_dir/unity_math_analysis.cpp" "$re_source_dir/font_producer_analysis.cpp" \
    "$re_source_dir/frame_residuals_state.cpp" "$re_source_dir/frame_residuals_raid.cpp" \
    "$re_source_dir/frame_preview_analysis.cpp" "$re_source_dir/frame_preview_geometry.cpp" "$re_source_dir/frame_preview_widgets.cpp" \
    "$re_source_dir/font_frame_bindings.cpp" "$re_source_dir/metadata_argument_bindings.cpp" "$re_source_dir/menu_tooltip_analysis.cpp" "$re_source_dir/game_root_helpers.cpp" "$re_source_dir/game_root_domain_bindings.cpp" "$re_source_dir/menu_layout_channels.cpp" \
    "${re_meter_sources[@]}" "${re_shadow_sources[@]}" "${re_window_sources[@]}" "${re_builder_sources[@]}" "${re_picker_sources[@]}" "${re_navigation_sources[@]}" "${re_window_detail_sources[@]}" "${re_aux_helper_sources[@]}" "${re_editor_sources[@]}" "${re_font_input_sources[@]}" "${re_game_field_sources[@]}" "${re_game_runtime_sources[@]}" "${re_game_direct_sources[@]}" "${re_game_input_sources[@]}" "${re_game_literal_sources[@]}" "${re_frame_world_sources[@]}" "${re_offset_sources[@]}" \
    "${re_shape_sources[@]}" \
    "${re_menu_control_sources[@]}" "$re_source_dir/world_render_bindings.cpp" "$re_source_dir/menu_render_bindings.cpp" \
    "$re_source_dir/menu_pages_analysis.cpp" "$re_source_dir/menu_pages_players.cpp" "$re_source_dir/menu_pages_config.cpp" \
    "$re_source_dir/analysis_checks.cpp" "$re_source_dir/metadata_checks.cpp" \
    "$re_source_dir/hooks_checks.cpp" "$re_source_dir/entities_checks.cpp" "$re_source_dir/server_checks.cpp" "$re_source_dir/launcher_checks.cpp" \
    "$re_source_dir/hit_override_checks.cpp" "$re_source_dir/projectile_checks.cpp" "$re_source_dir/aim_weapon_checks.cpp" \
    "$re_source_dir/movement_checks.cpp" "$re_source_dir/game_base_checks.cpp" "$re_source_dir/snapshot_binding_checks.cpp" \
    "$re_source_dir/interaction_workers_checks.cpp" \
    "$re_source_dir/metadata_export_checks.cpp" \
    "$re_source_dir/projectile_container_checks.cpp" \
    "$re_source_dir/metadata_signature_checks.cpp" \
    "$re_source_dir/movement_main_checks.cpp" \
    "$re_source_dir/sky_model_checks.cpp" \
    "$re_source_dir/trajectory_cache_checks.cpp" \
    "$re_source_dir/helicopter_aim_checks.cpp" \
    "$re_source_dir/registry_checks.cpp" "$re_source_dir/allocation_cache_checks.cpp" "$re_source_dir/registry_binding_checks.cpp" \
    "$re_source_dir/field_getters_checks.cpp" "$re_source_dir/metadata_wrapper_checks.cpp" \
    "$re_source_dir/unity_backend_checks.cpp" "$re_source_dir/interaction_backend_checks.cpp" \
    "$re_source_dir/game_helpers_checks.cpp" \
    "$re_source_dir/hook_setup_checks.cpp" "$re_source_dir/native_pe_checks.cpp" \
    "$re_source_dir/world_snapshot_binding_checks.cpp" \
    "$re_source_dir/name_helpers_checks.cpp" "$re_source_dir/frame_game_binding_checks.cpp" \
    "$re_source_dir/projectile_leaf_checks.cpp" \
    "$re_source_dir/unity_math_checks.cpp" "$re_source_dir/font_producer_checks.cpp" \
    "$re_source_dir/world_render_binding_checks.cpp" \
    "$re_source_dir/menu_pages_checks.cpp" \
    "$re_source_dir/frame_residuals_checks.cpp" "$re_source_dir/font_frame_binding_checks.cpp" "$re_source_dir/frame_failure_checks.cpp" "$re_source_dir/metadata_argument_checks.cpp" "$re_source_dir/menu_tooltip_checks.cpp" "$re_source_dir/game_root_helper_checks.cpp" "$re_source_dir/game_root_domain_checks.cpp" "$re_source_dir/menu_layout_channel_checks.cpp" \
    -o "$re_build_dir/analysis_checks"
"$re_build_dir/analysis_checks"
