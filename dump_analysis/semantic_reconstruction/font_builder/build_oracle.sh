#!/usr/bin/env bash
set -euo pipefail
re_root=/home/john/Desktop/cheat_re
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_build="$re_root/dump_analysis/semantic_reconstruction/font_builder/build"
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu -std=c++20 -ffp-contract=off -O1 -g -ffunction-sections -fdata-sections -I"$re_root/source/reconstructed" "$re_root"/source/reconstructed/font_builder_{sfnt,outline,packing,raster,cff}.cpp "$re_root/source/reconstructed/world_esp_analysis.cpp" "$re_root/dump_analysis/semantic_reconstruction/font_builder/oracle.cpp" -Wl,--gc-sections -o "$re_build/oracle"
"$re_build/oracle"
