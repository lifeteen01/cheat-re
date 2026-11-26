#!/usr/bin/env bash
set -euo pipefail
re_root="$(cd -- "$(dirname -- "$0")/../../../.." && pwd)"
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_out="$re_root/dump_analysis/semantic_reconstruction/menu_offsets/profile"
re_inputs=("$re_root/source/reconstructed/offset_profile.hpp" "$re_root/source/reconstructed/offset_profile.cpp" "$re_root/source/reconstructed/offset_profile_checks.cpp")
re_mode="${1:-strict}"
re_flags=()
if [[ "$re_mode" == sanitize ]]; then
    re_flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer -no-pie)
fi
sha256sum "${re_inputs[@]}" > "$re_out/$re_mode.before.sha256"
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g "${re_flags[@]}" -I"$re_root/source/reconstructed" "${re_inputs[@]:1}" "$re_out/driver.cpp" -o "$re_out/checks-$re_mode"
"$re_out/checks-$re_mode"
sha256sum "${re_inputs[@]}" > "$re_out/$re_mode.after.sha256"
cmp "$re_out/$re_mode.before.sha256" "$re_out/$re_mode.after.sha256"
