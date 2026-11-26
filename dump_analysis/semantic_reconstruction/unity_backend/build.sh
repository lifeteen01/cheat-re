#!/usr/bin/env bash
set -euo pipefail
re_root=/home/john/Desktop/cheat_re
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_out="$re_root/dump_analysis/semantic_reconstruction/unity_backend"
re_flags=()
if [[ ${1:-} == sanitize ]]; then re_flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer); fi
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15" -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g \
 --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu \
 "${re_flags[@]}" "$re_root/source/reconstructed/02_rendering.cpp" "$re_root/source/reconstructed/metadata_analysis.cpp" \
 "$re_root/source/reconstructed/metadata_signature_analysis.cpp" "$re_root/source/reconstructed/unity_backend_analysis.cpp" \
 "$re_root/source/reconstructed/unity_backend_checks.cpp" "$re_out/main.cpp" -o "$re_out/checks${1:-}"
"$re_out/checks${1:-}"
