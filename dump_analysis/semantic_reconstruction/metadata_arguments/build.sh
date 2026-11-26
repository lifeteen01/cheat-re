#!/usr/bin/env bash
set -euo pipefail
re_root="$(cd -- "$(dirname -- "$0")/../../.." && pwd)"
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_out="$re_root/dump_analysis/semantic_reconstruction/metadata_arguments"
re_extra=()
if [[ "${1:-}" == sanitize ]]; then
re_extra+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g -ffunction-sections -fdata-sections "${re_extra[@]}" -I"$re_root/source/reconstructed" "$re_root/source/reconstructed/metadata_argument_bindings.cpp" "$re_root/source/reconstructed/metadata_argument_checks.cpp" "$re_root/source/reconstructed/metadata_wrapper_analysis.cpp" "$re_out/main.cpp" -Wl,--gc-sections -o "$re_out/checks${1:-}"
"$re_out/checks${1:-}"
