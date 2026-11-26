#!/usr/bin/env bash
set -euo pipefail
re_root=/home/john/Desktop/cheat_re
re_sysroot="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_out="$re_root/dump_analysis/semantic_reconstruction/drawlist_core"
re_extra=()
if [[ "${RE_ANALYSIS_SANITIZE:-0}" == 1 ]]; then
re_extra+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
"$re_sysroot/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_sysroot" -B"$re_sysroot/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_sysroot/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g "${re_extra[@]}" -I"$re_root/source/reconstructed" "$re_root/source/reconstructed/renderer_helpers_background.cpp" "$re_root/source/reconstructed/renderer_helpers_widgets.cpp" "$re_root"/source/reconstructed/drawlist_core_*.cpp "$re_out/check_main.cpp" -o "$re_out/drawlist_checks${RE_ANALYSIS_SANITIZE:-0}"
"$re_out/drawlist_checks${RE_ANALYSIS_SANITIZE:-0}"
