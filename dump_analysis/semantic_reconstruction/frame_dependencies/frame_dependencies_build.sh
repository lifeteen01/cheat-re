#!/usr/bin/env bash
set -euo pipefail
re_root=/home/john/Desktop/cheat_re
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_out="$re_root/dump_analysis/semantic_reconstruction/frame_dependencies"
re_flags=()
if [[ ${1:-} == sanitize ]]; then re_flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer); fi
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15" -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g \
 --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu \
 -I"$re_root/source/reconstructed" "${re_flags[@]}" "$re_root/source/reconstructed/snapshot_bindings.cpp" "$re_root/source/reconstructed/field_getters_analysis.cpp" "$re_root/source/reconstructed/04_esp_entities.cpp" "$re_root/source/reconstructed/02_rendering.cpp" "$re_root/source/reconstructed/metadata_analysis.cpp" "$re_root/source/reconstructed/metadata_signature_analysis.cpp" "$re_root/source/reconstructed/unity_backend_analysis.cpp" "$re_root/source/reconstructed/frame_dependencies_analysis.cpp" \
 "$re_root/source/reconstructed/frame_dependencies_configuration.cpp" "$re_root/source/reconstructed/frame_dependencies_theme.cpp" "$re_root/source/reconstructed/frame_dependencies_ui_setup.cpp" "$re_root/source/reconstructed/frame_dependencies_menu.cpp" "$re_root/source/reconstructed/frame_dependencies_main_menu.cpp" "$re_root/source/reconstructed/frame_dependencies_main_menu_checks.cpp" "$re_root/source/reconstructed/frame_dependencies_target.cpp" "$re_root/source/reconstructed/frame_dependencies_overlay.cpp" "$re_root/source/reconstructed/frame_dependencies_overlay_checks.cpp" "$re_root/source/reconstructed/aim_weapon_analysis.cpp" "$re_root/source/reconstructed/game_base_analysis.cpp" "$re_root/source/reconstructed/world_esp_item_names.cpp" "$re_root/source/reconstructed/frame_dependencies_checks.cpp" "$re_out/frame_dependencies_main.cpp" -o "$re_out/frame_dependencies_checks${1:-}"
"$re_out/frame_dependencies_checks${1:-}"

printf "PASS: GCC15 C++20 frame dependency fixtures (%s)\n" "${1:-strict}"
