#!/usr/bin/env bash
# [I] Analyst-authored portable offline build/check entrypoint.
set -euo pipefail
re_source_dir="$(cd -- "$(dirname -- "$0")" && pwd)"
re_build_dir="${RE_ANALYSIS_BUILD_DIR:-$re_source_dir/../../dump_analysis/semantic_reconstruction/local_build}"
mkdir -p -- "$re_build_dir"
re_compiler="${CXX:-c++}"
re_extra_flags=()
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
"$re_compiler" -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g \
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
    -o "$re_build_dir/analysis_checks"
"$re_build_dir/analysis_checks"
