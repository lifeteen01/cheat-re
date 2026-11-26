#!/usr/bin/env bash
# [I] Focused offline fixture build; no sample execution.
set -euo pipefail
cd /home/john/Desktop/cheat_re
re_sysroot=/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/toolchain
re_build=/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/helicopter_aim
re_flags=()
if [[ ${1:-} == sanitize ]]; then
    re_flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
    re_binary="$re_build/checks_sanitized"
else
    re_binary="$re_build/checks"
fi
"$re_sysroot/usr/bin/x86_64-linux-gnu-g++-15" -std=c++20 -Wall -Wextra -Wpedantic -Werror \
    -D_GLIBCXX_ASSERTIONS -ffp-contract=off -ffunction-sections -fdata-sections -O1 -g \
    --sysroot="$re_sysroot" -B"$re_sysroot/usr/lib/gcc/x86_64-linux-gnu/15/" \
    -B"$re_sysroot/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu \
    -Isource/reconstructed "${re_flags[@]}" \
    source/reconstructed/aim_weapon_analysis.cpp source/reconstructed/helicopter_aim_analysis.cpp \
    source/reconstructed/helicopter_aim_checks.cpp "$re_build/harness.cpp" \
    -Wl,--gc-sections -o "$re_binary"
"$re_binary"
