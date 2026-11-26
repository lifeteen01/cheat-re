#!/usr/bin/env bash
set -euo pipefail
re_root="$(cd -- "$(dirname -- "$0")/../../.." && pwd)"
re_task="$re_root/dump_analysis/semantic_reconstruction/game_helpers"
re_sys="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_source="$re_root/source/reconstructed"
re_flags=()
re_name=game_helpers_checks
if [[ "${RE_ANALYSIS_SANITIZE:-0}" == 1 ]]; then
    re_flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
    re_name=game_helpers_sanitized
fi
"$re_sys/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_sys" \
    -B"$re_sys/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_sys/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu \
    -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g \
    "${re_flags[@]}" -I"$re_source" \
    "$re_source/game_helpers_analysis.cpp" "$re_source/game_helpers_checks.cpp" "$re_task/game_helpers_fixture_main.cpp" \
    "$re_source/field_getters_analysis.cpp" "$re_source/snapshot_bindings.cpp" "$re_source/game_base_analysis.cpp" \
    "$re_source/04_esp_entities.cpp" "$re_source/05_server_observable.cpp" "$re_source/aim_weapon_analysis.cpp" \
    "$re_source/metadata_analysis.cpp" "$re_source/metadata_export_analysis.cpp" "$re_source/registry_analysis.cpp" \
    -o "$re_task/$re_name"
"$re_task/$re_name"
