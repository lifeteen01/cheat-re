#!/usr/bin/env bash
set -euo pipefail
re_root=/home/john/Desktop/cheat_re
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_build="$re_root/dump_analysis/semantic_reconstruction/review_projectile_aim/build"
mkdir -p "$re_build"
re_extra=()
if [[ "${1:-}" == sanitize ]]; then
 re_extra=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
re_sources=(projectile_analysis projectile_checks projectile_container_analysis aim_weapon_analysis aim_weapon_checks helicopter_aim_analysis helicopter_aim_checks allocation_cache_analysis allocation_cache_checks metadata_analysis metadata_export_analysis metadata_wrapper_analysis registry_analysis 04_esp_entities 05_server_observable)
re_paths=()
for re_name in "${re_sources[@]}"; do re_paths+=("$re_root/source/reconstructed/$re_name.cpp"); done
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu \
 -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -O1 -g -ffunction-sections -fdata-sections "${re_extra[@]}" \
 -I"$re_root/source/reconstructed" "${re_paths[@]}" "$re_root/dump_analysis/semantic_reconstruction/review_projectile_aim/driver.cpp" \
 -Wl,--gc-sections -o "$re_build/checks${1:-}"
"$re_build/checks${1:-}"
