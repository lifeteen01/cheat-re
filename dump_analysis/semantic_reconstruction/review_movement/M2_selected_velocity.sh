#!/usr/bin/env bash
set -euo pipefail
re_root=/home/john/Desktop/cheat_re
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_build="$re_root/dump_analysis/semantic_reconstruction/review_movement/M2_selected_velocity_build"
mkdir -p "$re_build"
re_extra=()
if [[ "${1:-}" == sanitize ]]; then
 re_extra=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu \
 -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g "${re_extra[@]}" \
 -I"$re_root/source/reconstructed" "$re_root/dump_analysis/semantic_reconstruction/review_movement/M2_selected_velocity.cpp" \
 "$re_root/source/reconstructed/movement_main_checks.cpp" \
 "$re_root/source/reconstructed/aim_weapon_analysis.cpp" "$re_root/source/reconstructed/launcher_analysis.cpp" "$re_root/source/reconstructed/04_esp_entities.cpp" \
 "$re_root/source/reconstructed/05_server_observable.cpp" \
 "$re_root/dump_analysis/semantic_reconstruction/movement_main_fixture_driver.cpp" -o "$re_build/checks${1:-}"
"$re_build/checks${1:-}"
