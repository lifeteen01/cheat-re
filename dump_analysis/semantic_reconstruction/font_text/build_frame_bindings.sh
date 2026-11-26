#!/usr/bin/env bash
set -euo pipefail
re_root="$(cd -- "$(dirname -- "$0")/../../.." && pwd)"
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_out="$re_root/dump_analysis/semantic_reconstruction/font_text"
re_extra=()
if [[ "${1:-}" == sanitize ]]; then
re_extra+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g -ffunction-sections -fdata-sections "${re_extra[@]}" -I"$re_root/source/reconstructed" "$re_root/source/reconstructed/font_frame_bindings.cpp" "$re_root/source/reconstructed/font_frame_binding_checks.cpp" "$re_root"/source/reconstructed/font_text_*.cpp "$re_root/source/reconstructed/drawlist_core_commands.cpp" "$re_root/source/reconstructed/renderer_helpers_font.cpp" "$re_out/frame_binding_main.cpp" -Wl,--gc-sections -o "$re_out/frame_bindings${1:-}"
"$re_out/frame_bindings${1:-}"
