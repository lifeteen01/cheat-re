#!/usr/bin/env bash
set -euo pipefail
root=/home/john/Desktop/cheat_re
out="$root/dump_analysis/semantic_reconstruction/field_wrappers"
tc="$root/dump_analysis/semantic_reconstruction/toolchain"
compiler="$tc/usr/bin/x86_64-linux-gnu-g++-15"
extra=()
if [[ "${RE_ANALYSIS_SANITIZE:-0}" == 1 ]]; then
 extra+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
"$compiler" --sysroot="$tc" -B"$tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -ffunction-sections -fdata-sections -Wl,--gc-sections -O1 -g "${extra[@]}" -I"$root/source/reconstructed" \
 "$root/source/reconstructed/field_getters_analysis.cpp" "$root/source/reconstructed/field_getters_checks.cpp" \
 "$root/source/reconstructed/metadata_wrapper_analysis.cpp" "$root/source/reconstructed/metadata_wrapper_checks.cpp" \
 "$root/source/reconstructed/game_base_analysis.cpp" "$root/source/reconstructed/snapshot_bindings.cpp" "$root/source/reconstructed/metadata_export_analysis.cpp" \
 "$out/check_main.cpp" -o "$out/checks${RE_ANALYSIS_SANITIZE:-0}"
"$out/checks${RE_ANALYSIS_SANITIZE:-0}"
echo 'Field getter and metadata wrapper fixtures passed (GCC15 C++20 Werror, ffp-contract=off).'
