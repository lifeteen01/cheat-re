#!/usr/bin/env bash
set -euo pipefail
root=/home/john/Desktop/cheat_re
re_toolchain="$root/dump_analysis/semantic_reconstruction/toolchain"
re_flags=()
if [[ "${INTERACTION_SANITIZE:-0}" == 1 ]]; then
 re_flags+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
"$re_toolchain/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_toolchain" \
 -B"$re_toolchain/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_toolchain/usr/libexec/gcc/x86_64-linux-gnu/15/" \
 -L/usr/lib/x86_64-linux-gnu -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g \
 "${re_flags[@]}" -I"$root/source/reconstructed" \
 "$root/source/reconstructed/interaction_workers.cpp" "$root/source/reconstructed/interaction_workers_checks.cpp" \
 "$root/source/reconstructed/04_esp_entities.cpp" "$root/source/reconstructed/game_base_analysis.cpp" \
 "$root/source/reconstructed/aim_weapon_analysis.cpp" "$root/source/reconstructed/05_server_observable.cpp" "$root/source/reconstructed/projectile_analysis.cpp" "$root/source/reconstructed/launcher_analysis.cpp" "$root/dump_analysis/semantic_reconstruction/interaction_driver.cpp" \
 -o "$root/dump_analysis/semantic_reconstruction/interaction_checks"
"$root/dump_analysis/semantic_reconstruction/interaction_checks"
printf 'PASS: GCC 15 C++20 strict interaction fixtures; INTERACTION_SANITIZE=%s\n' "${INTERACTION_SANITIZE:-0}"
