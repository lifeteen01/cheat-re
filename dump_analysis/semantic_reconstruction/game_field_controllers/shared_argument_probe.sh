#!/usr/bin/env bash
set -euo pipefail
re_root="$(cd -- "$(dirname -- "$0")/../../.." && pwd)"
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_out="$re_root/dump_analysis/semantic_reconstruction/game_field_controllers"
"$re_root/dump_analysis/semantic_reconstruction/cached_compiler.py" \
  --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" \
  -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu \
  -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off \
  -O1 -g -ffunction-sections -fdata-sections -I"$re_root/source/reconstructed" \
  "$re_root/source/reconstructed/metadata_argument_bindings.cpp" \
  "$re_out/shared_argument_probe.cpp" -Wl,--gc-sections -o "$re_out/shared_argument_probe"
"$re_out/shared_argument_probe"
