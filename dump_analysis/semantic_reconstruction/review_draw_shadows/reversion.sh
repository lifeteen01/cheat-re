#!/usr/bin/env bash
set -euo pipefail
ulimit -c 0
re_root=/home/john/Desktop/cheat_re
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_out="$re_root/dump_analysis/semantic_reconstruction/review_draw_shadows"
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g -ffunction-sections -fdata-sections -I"$re_root/source/reconstructed" "$re_out/reverted_controllers.cpp" "$re_root"/source/reconstructed/draw_shadows_{checks,clipping,geometry}.cpp "$re_root/source/reconstructed/draw_shapes_paths.cpp" "$re_root/source/reconstructed/draw_shapes_geometry.cpp" "$re_root/source/reconstructed/drawlist_core_commands.cpp" "$re_root/source/reconstructed/font_text_atlas.cpp" "$re_root/source/reconstructed/world_esp_analysis.cpp" "$re_out/reversion_main.cpp" -Wl,--gc-sections -o "$re_out/reversion"
"$re_out/reversion"
