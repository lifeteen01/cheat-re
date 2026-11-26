#!/usr/bin/env python3
"""Validate CMake/Ninja Windows x64 target wiring without running its PE tests."""
from pathlib import Path
import hashlib
import json
import os
import re
import subprocess
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
WORK = ROOT / "dump_analysis/semantic_reconstruction/windows_base"
PREFIX = WORK / "cmake_toolchain"
BUILD = WORK / "cmake_ninja_build"
cmake = str(PREFIX / "usr/bin/cmake")
environment = os.environ.copy()
environment["LD_LIBRARY_PATH"] = str(PREFIX / "usr/lib/x86_64-linux-gnu")
commands = [[cmake, "-S", str(ROOT / "source"), "-B", str(BUILD), "-G", "Ninja",
             "-DCMAKE_MAKE_PROGRAM=" + str(PREFIX / "usr/bin/ninja"),
             "-DCMAKE_TOOLCHAIN_FILE=" + str(HERE / "mingw-x64.cmake"),
             "-DCMAKE_BUILD_TYPE=Release", "-DRE_BUILD_WINDOWS_BASE=ON",
             "-DRE_BUILD_OFFLINE_RECONSTRUCTION=OFF"],
            [cmake, "--build", str(BUILD), "--parallel", "2"]]
inputs = {p for p in HERE.iterdir() if p.is_file() and p.suffix in
          (".cpp", ".hpp", ".h", ".cmake", ".py")}
inputs |= {HERE / "CMakeLists.txt", ROOT / "source/CMakeLists.txt", HERE / "offsets.json"}
for p in json.loads((WORK / "build/verification.json").read_text())["sources_before"]:
    inputs.add(ROOT / p)
def hashes():
    return {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(inputs)}
before = hashes()
started = time.monotonic()
codes = []
with (WORK / "cmake_build.log").open("w") as log:
    for command in commands:
        log.write(json.dumps(command) + "\n"); log.flush()
        result = subprocess.run(command, env=environment, stdout=log, stderr=subprocess.STDOUT)
        codes.append(result.returncode)
        if result.returncode: break
after = hashes()
artifacts = {}
inspection_passed = False
if codes == [0, 0]:
    objdump = WORK / "toolchain/usr/bin/x86_64-w64-mingw32-objdump"
    for name in ("re_base.dll", "windows_host_checks.exe"):
        path = BUILD / "windows_base" / name
        artifacts[str(path.relative_to(ROOT))] = hashlib.sha256(path.read_bytes()).hexdigest()
        report = subprocess.check_output([str(objdump), "-p", str(path)], text=True)
        (WORK / ("cmake_" + name + ".pe.txt")).write_text(report)
        if "file format pei-x86-64" not in report: raise RuntimeError("not Windows x64")
        imports = re.findall(r"DLL Name: (\S+)", report)
        if any(n.lower().startswith(("libgcc", "libstdc++", "libwinpthread")) for n in imports):
            raise RuntimeError("unpackaged compiler runtime dependency")
        if name.endswith(".dll"):
            names = set(re.findall(r'\b(RB_\w+)\s*$', report, re.M))
            expected = set(re.findall(r'RB_API\s+uint32_t\s+(RB_\w+)\(', (HERE / "base_api.h").read_text()))
            if names != expected:
                raise RuntimeError("incorrect export set")
    inspection_passed = True
record = {"passed": codes == [0, 0] and before == after and inspection_passed,
          "codes": codes, "seconds": round(time.monotonic() - started, 3),
          "sources_before": before, "sources_after": after, "artifacts": artifacts,
          "commands": commands, "limit": "Cross compilation only; Windows CTest executable not run"}
(WORK / "cmake_verification.json").write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps({k: record[k] for k in ("passed", "codes", "seconds", "limit")}, indent=2))
raise SystemExit(0 if record["passed"] else 1)
