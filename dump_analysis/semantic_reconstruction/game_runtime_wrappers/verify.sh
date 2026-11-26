#!/usr/bin/env bash
set -euo pipefail
ulimit -c 0
root=/home/john/Desktop/cheat_re
out="$root/dump_analysis/semantic_reconstruction/game_runtime_wrappers"
sysroot="$root/dump_analysis/semantic_reconstruction/toolchain"
flags=(--sysroot="$sysroot" -B"$sysroot/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$sysroot/usr/libexec/gcc/x86_64-linux-gnu/15/" -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -ffunction-sections -fdata-sections -O1 -g -I"$root/source/reconstructed")
mode=strict
if [[ "${RE_ANALYSIS_SANITIZE:-0}" == 1 ]];then
 mode=sanitizer
 flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
sources=(game_runtime_wrappers_analysis.cpp game_runtime_wrappers_arguments.cpp game_runtime_wrappers_bindings.cpp game_runtime_wrappers_checks.cpp game_runtime_wrappers_domains.cpp game_aux_helpers_analysis.cpp field_getters_analysis.cpp metadata_analysis.cpp metadata_argument_bindings.cpp)
inputs=()
for name in "${sources[@]}";do inputs+=("$root/source/reconstructed/$name");done
"$sysroot/usr/bin/x86_64-linux-gnu-g++-15" "${flags[@]}" "${inputs[@]}" "$out/check_main.cpp" -L/usr/lib/x86_64-linux-gnu -Wl,--gc-sections -o "$out/check_$mode"
ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 "$out/check_$mode"
