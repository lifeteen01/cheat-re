#!/usr/bin/env python3
"""Owned frame/profile/catalog tests; no PE execution or live game ABI claim."""
from pathlib import Path
import hashlib
import json
import os
import re
import subprocess
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
WORK = ROOT / "dump_analysis/semantic_reconstruction"
OUT = WORK / "windows_base/native_checks"
OUT.mkdir(parents=True, exist_ok=True)
sources = [HERE / "base_frame.cpp", HERE / "base_frame_checks.cpp",
           ROOT / "source/reconstructed/drawlist_core_commands.cpp",
           ROOT / "source/reconstructed/drawlist_core_channels.cpp",
           ROOT / "source/reconstructed/offset_profile.cpp",
           ROOT / "source/reconstructed/offset_profile_checks.cpp",
           ROOT / "source/reconstructed/offset_catalog.cpp",
           ROOT / "source/reconstructed/offset_profile_bindings.cpp",
           ROOT / "source/reconstructed/offset_catalog_checks.cpp"]
inputs = set(sources + [Path(__file__).resolve()])
pending = list(inputs)
while pending:
    path = pending.pop()
    for name in re.findall(r'^#include "([\w.]+)"', path.read_text(), re.M):
        dep = path.parent / name
        if not dep.is_file(): dep = ROOT / "source/reconstructed" / name
        if dep not in inputs: inputs.add(dep); pending.append(dep)
def hashes():
    return {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(inputs)}
before = hashes()
toolchain = WORK / "toolchain"
base = [str(toolchain / "usr/bin/x86_64-linux-gnu-g++-15"),
        "--sysroot=" + str(toolchain),
        "-B" + str(toolchain / "usr/lib/gcc/x86_64-linux-gnu/15") + "/",
        "-B" + str(toolchain / "usr/libexec/gcc/x86_64-linux-gnu/15") + "/",
        "-L/usr/lib/x86_64-linux-gnu", "-std=c++20", "-Wall", "-Wextra", "-Wpedantic", "-Werror",
        "-ffp-contract=off", "-D_GLIBCXX_ASSERTIONS", "-O1", "-g",
        "-I" + str(ROOT / "source/reconstructed")]
results = {}
for mode in ("strict", "sanitizer"):
    target = OUT / mode
    command = base.copy()
    if mode == "sanitizer":
        command += ["-fsanitize=address,undefined", "-static-libasan", "-static-libubsan",
                    "-fno-sanitize-recover=all", "-fno-omit-frame-pointer"]
    command += [str(p) for p in sources] + ["-o", str(target)]
    started = time.monotonic()
    with (OUT / (mode + ".log")).open("w") as stream:
        build = subprocess.run(command, stdout=stream, stderr=subprocess.STDOUT)
        ran = None
        if build.returncode == 0:
            env = os.environ.copy()
            env["ASAN_OPTIONS"] = "detect_leaks=1:halt_on_error=1"
            ran = subprocess.run([str(target)], env=env, stdout=stream, stderr=subprocess.STDOUT).returncode
    results[mode] = {"build_exit": build.returncode, "test_exit": ran,
                     "seconds": round(time.monotonic() - started, 3)}
after = hashes()
record = {"passed": before == after and all(r["build_exit"] == r["test_exit"] == 0 for r in results.values()),
          "results": results, "sources_before": before, "sources_after": after,
          "source_set_unchanged": before == after,
          "limit": "Owned frame/profile/catalog consumer tests on Linux; no PE execution or live game ABI"}
(OUT / "verification.json").write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps({k: v for k, v in record.items() if not k.startswith("sources_")}, indent=2))
raise SystemExit(0 if record["passed"] else 1)
