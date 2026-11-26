#!/usr/bin/env bash
set -euo pipefail
re_root="$(cd -- "$(dirname -- "$0")/../../.." && pwd)"
re_scratch="$re_root/dump_analysis/semantic_reconstruction/unity_math"
re_toolchain="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_extra=()
if [[ "${1:-}" == sanitize ]]; then
    re_extra+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
"$re_toolchain/usr/bin/x86_64-linux-gnu-g++-15" -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g \
    "--sysroot=$re_toolchain" "-B$re_toolchain/usr/lib/gcc/x86_64-linux-gnu/15/" "-B$re_toolchain/usr/libexec/gcc/x86_64-linux-gnu/15/" \
    -L/usr/lib/x86_64-linux-gnu "-I$re_root/source/reconstructed" "${re_extra[@]}" \
    "$re_root/source/reconstructed/unity_math_analysis.cpp" "$re_root/source/reconstructed/unity_math_checks.cpp" \
    "$re_root/source/reconstructed/font_producer_analysis.cpp" "$re_root/source/reconstructed/font_producer_checks.cpp" \
    "$re_root/source/reconstructed/metadata_analysis.cpp" "$re_scratch/check_main.cpp" -o "$re_scratch/checks${1:-}"
"$re_scratch/checks${1:-}"
