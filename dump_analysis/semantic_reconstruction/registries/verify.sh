#!/usr/bin/env bash
set -euo pipefail
cd /home/john/Desktop/cheat_re
re_sysroot="$PWD/dump_analysis/semantic_reconstruction/toolchain"
re_output="$PWD/dump_analysis/semantic_reconstruction/registries"
re_flags=()
if [[ "${1:-}" == sanitize ]]; then
 re_flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
"$re_sysroot/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_sysroot" \
 -B"$re_sysroot/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_sysroot/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu \
 -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g "${re_flags[@]}" \
 -Isource/reconstructed source/reconstructed/registry_analysis.cpp source/reconstructed/registry_checks.cpp \
 source/reconstructed/allocation_cache_analysis.cpp source/reconstructed/allocation_cache_checks.cpp \
 source/reconstructed/metadata_analysis.cpp source/reconstructed/metadata_export_analysis.cpp \
 "$re_output/check_main.cpp" -o "$re_output/checks${1:-}"
"$re_output/checks${1:-}"
