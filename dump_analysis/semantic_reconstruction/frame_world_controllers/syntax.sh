#!/bin/bash
set -euo pipefail
root=/home/john/Desktop/cheat_re
sysroot="$root/dump_analysis/semantic_reconstruction/toolchain"
"$sysroot/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$sysroot" -B"$sysroot/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$sysroot/usr/libexec/gcc/x86_64-linux-gnu/15/" -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -fsyntax-only source/reconstructed/frame_world_controllers_*.cpp
