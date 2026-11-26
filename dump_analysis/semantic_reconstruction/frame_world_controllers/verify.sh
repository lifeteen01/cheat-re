#!/usr/bin/env bash
set -euo pipefail
ulimit -c 0
root=/home/john/Desktop/cheat_re
out="$root/dump_analysis/semantic_reconstruction/frame_world_controllers"
sysroot="$root/dump_analysis/semantic_reconstruction/toolchain"
flags=(--sysroot="$sysroot" -B"$sysroot/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$sysroot/usr/libexec/gcc/x86_64-linux-gnu/15/" -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -ffunction-sections -fdata-sections -O1 -g -I"$root/source/reconstructed")
mode=strict
if [[ "${RE_ANALYSIS_SANITIZE:-0}" == 1 ]];then
 mode=sanitizer
 flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
sources=(frame_world_controllers_collider.cpp frame_world_controllers_bindings.cpp frame_world_controllers_collections.cpp frame_world_controllers_configuration.cpp frame_world_controllers_materials.cpp frame_world_controllers_rain.cpp frame_world_controllers_visibility.cpp frame_world_controllers_checks.cpp game_base_analysis.cpp registry_analysis.cpp frame_dependencies_analysis.cpp frame_dependencies_configuration.cpp menu_pages_config.cpp font_text_lookup.cpp font_text_raster.cpp renderer_helpers_font.cpp 04_esp_entities.cpp metadata_argument_bindings.cpp game_input_physics_arguments.cpp)
inputs=()
for name in "${sources[@]}";do inputs+=("$root/source/reconstructed/$name");done
"$sysroot/usr/bin/x86_64-linux-gnu-g++-15" "${flags[@]}" "${inputs[@]}" "$out/check_main.cpp" -L/usr/lib/x86_64-linux-gnu -Wl,--gc-sections -o "$out/check_$mode"
ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 "$out/check_$mode"
