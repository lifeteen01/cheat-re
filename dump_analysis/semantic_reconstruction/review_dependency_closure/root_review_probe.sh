#!/usr/bin/env bash
set -euo pipefail
ulimit -c 0
root=/home/john/Desktop/cheat_re
sysroot="$root/dump_analysis/semantic_reconstruction/toolchain"
out="$root/dump_analysis/semantic_reconstruction/review_dependency_closure"
"$sysroot/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$sysroot" -B"$sysroot/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$sysroot/usr/libexec/gcc/x86_64-linux-gnu/15/" -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -ffunction-sections -fdata-sections -O1 -I"$root/source/reconstructed" "$root/source/reconstructed/game_root_helpers.cpp" "$root/source/reconstructed/game_root_domain_bindings.cpp" "$root/source/reconstructed/metadata_analysis.cpp" "$root/source/reconstructed/metadata_argument_bindings.cpp" "$out/root_review_probe.cpp" -L/usr/lib/x86_64-linux-gnu -Wl,--gc-sections -o "$out/root_review_probe"
"$out/root_review_probe"
