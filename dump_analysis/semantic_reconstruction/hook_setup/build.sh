#!/usr/bin/env bash
set -euo pipefail
re_root=/home/john/Desktop/cheat_re
re_tc="$re_root/dump_analysis/semantic_reconstruction/toolchain"
re_out="$re_root/dump_analysis/semantic_reconstruction/hook_setup"
re_extra=()
if [[ "${HS_SANITIZE:-0}" == 1 ]]; then
 re_extra+=(-fsanitize=address,undefined -static-libasan -static-libubsan -fno-sanitize-recover=all -fno-omit-frame-pointer)
fi
re_sources=(hook_setup_analysis.cpp hook_setup_checks.cpp native_pe_analysis.cpp native_pe_checks.cpp 01_hooks.cpp 03_stack_spoof_spoofcall.cpp metadata_analysis.cpp metadata_export_analysis.cpp metadata_signature_analysis.cpp registry_analysis.cpp)
re_inputs=()
for re_source in "${re_sources[@]}"; do re_inputs+=("$re_root/source/reconstructed/$re_source"); done
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15" --sysroot="$re_tc" -B"$re_tc/usr/lib/gcc/x86_64-linux-gnu/15/" -B"$re_tc/usr/libexec/gcc/x86_64-linux-gnu/15/" -L/usr/lib/x86_64-linux-gnu -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off -ffunction-sections -fdata-sections -Wl,--gc-sections -O1 -g "${re_extra[@]}" -I"$re_root/source/reconstructed" "${re_inputs[@]}" "$re_out/driver.cpp" -o "$re_out/checks${HS_SANITIZE:-0}"
"$re_out/checks${HS_SANITIZE:-0}"
