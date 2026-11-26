#!/usr/bin/env bash
set -euo pipefail
re_root=/home/john/Desktop/cheat_re
re_toolchain="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_flags=()
if [[ "${RE_MOVEMENT_SANITIZE:-0}" == 1 ]]; then
 re_flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
"$re_toolchain/usr/bin/x86_64-linux-gnu-g++-15" -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -O1 -g -ffp-contract=off \
 --sysroot="$re_toolchain" -B"$re_toolchain/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_toolchain/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu \
 "${re_flags[@]}" -I"$re_root/source/reconstructed" "$re_root/source/reconstructed/movement_analysis.cpp" \
 "$re_root/source/reconstructed/movement_checks.cpp" "$re_root/source/reconstructed/05_server_observable.cpp" \
 "$re_root/dump_analysis/semantic_reconstruction/movement_wave2/main.cpp" \
 -o "$re_root/dump_analysis/semantic_reconstruction/movement_wave2/checks"
"$re_root/dump_analysis/semantic_reconstruction/movement_wave2/checks"
