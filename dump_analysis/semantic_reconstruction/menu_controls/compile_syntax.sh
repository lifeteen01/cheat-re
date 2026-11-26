#!/usr/bin/env bash
set -euo pipefail
re_root=/home/john/Desktop/cheat_re
re_sysroot="$re_root/dump_analysis/semantic_reconstruction/toolchain"
"$re_sysroot/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_sysroot" -B"$re_sysroot/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_sysroot/usr/libexec/gcc/x86_64-linux-gnu/15/" -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -fsyntax-only "$re_root"/source/reconstructed/menu_controls_*.cpp
