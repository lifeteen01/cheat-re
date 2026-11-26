#!/usr/bin/env python3
"""Cross-build owned Windows artifacts; never executes a PE or the sample."""
from pathlib import Path
import argparse
import hashlib
import json
import os
import re
import shutil
import subprocess
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
EVIDENCE = ROOT / "dump_analysis/semantic_reconstruction/windows_base"
parser = argparse.ArgumentParser()
parser.add_argument("--toolchain", type=Path, default=EVIDENCE / "toolchain")
parser.add_argument("--output", type=Path, default=EVIDENCE / "build")
args = parser.parse_args()
prefix = args.toolchain.resolve() / "usr"
compiler = prefix / "bin/x86_64-w64-mingw32-g++-posix"
objdump = prefix / "bin/x86_64-w64-mingw32-objdump"
out = args.output.resolve()
out.mkdir(parents=True, exist_ok=True)
environment = os.environ.copy()
environment["PATH"] = str(prefix / "bin") + os.pathsep + environment["PATH"]
sources = [HERE / "base_dll.cpp", HERE / "base_frame.cpp", HERE / "base_menu.cpp",
           ROOT / "source/reconstructed/drawlist_core_commands.cpp",
           ROOT / "source/reconstructed/drawlist_core_channels.cpp",
           ROOT / "source/reconstructed/offset_profile.cpp",
           ROOT / "source/reconstructed/offset_catalog.cpp",
           ROOT / "source/reconstructed/offset_profile_bindings.cpp"]
host = HERE / "windows_host_checks.cpp"
inputs = set(sources + [host, Path(__file__).resolve(), HERE / "CMakeLists.txt",
                       HERE / "offsets.json", HERE / "copy_profile.cmake"])
pending = list(inputs)
while pending:
    path = pending.pop()
    for name in re.findall(r'^#include "([\w.]+)"', path.read_text(), re.M):
        dep = path.parent / name
        if not dep.is_file(): dep = ROOT / "source/reconstructed" / name
        if not dep.is_file(): raise RuntimeError("Missing dependency: " + name)
        if dep not in inputs: inputs.add(dep); pending.append(dep)
def hashes():
    return {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(inputs)}
before = hashes()
started = time.monotonic()
commands = []
log = out / "build.log"
base = [str(compiler), "-std=c++20", "-Wall", "-Wextra", "-Wpedantic", "-Werror",
        "-ffp-contract=off", "-O2", "-g", "-D_WIN32_WINNT=0x0A00",
        "-I" + str(ROOT / "source/reconstructed"), "-B" + str(prefix / "bin") + "/"]
with log.open("w") as stream:
    def run(command):
        commands.append(command)
        stream.write(json.dumps(command) + "\n"); stream.flush()
        subprocess.run(command, env=environment, stdout=stream, stderr=subprocess.STDOUT, check=True)
    try:
        run([str(compiler), "--version"])
        objects = []
        for source in sources:
            target = out / (source.stem + ".o")
            run(base + ["-DRE_BASE_BUILD", "-c", str(source), "-o", str(target)])
            objects.append(str(target))
        run(base + ["-shared", *objects, "-static", "-static-libgcc", "-static-libstdc++",
                    "-Wl,--no-undefined", "-Wl,--dynamicbase,--nxcompat,--high-entropy-va",
                    "-Wl,--out-implib," + str(out / "libre_base.dll.a"),
                    "-o", str(out / "re_base.dll"), "-luser32", "-lgdi32", "-lcomctl32", "-lbcrypt", "-lpsapi"])
        run(base + [str(host), "-municode", "-static", "-static-libgcc", "-static-libstdc++",
                    "-o", str(out / "windows_host_checks.exe"), "-luser32", "-lgdi32", "-lcomctl32"])
        if not (out / "offsets.json").exists():
            shutil.copyfile(HERE / "offsets.json", out / "offsets.json")
        for name in ("re_base.dll", "windows_host_checks.exe"):
            inspection = subprocess.run([str(objdump), "-p", str(out / name)], env=environment,
                                        capture_output=True, text=True, check=True).stdout
            (out / (name + ".pe.txt")).write_text(inspection)
            if "file format pei-x86-64" not in inspection: raise RuntimeError("PE target is not x64")
            if name.endswith(".dll"):
                names = re.findall(r'\b(RB_\w+)\s*$', inspection, re.M)
                expected = set(re.findall(r'RB_API\s+uint32_t\s+(RB_\w+)\(', (HERE / "base_api.h").read_text()))
                if set(names) != expected: raise RuntimeError("DLL export set mismatch: " + repr(names))
            imports = re.findall(r"DLL Name: (\S+)", inspection)
            if any(n.lower().startswith(("libgcc", "libstdc++", "libwinpthread")) for n in imports):
                raise RuntimeError("Unexpected unpackaged compiler runtime dependency")
        exit_code = 0
    except subprocess.CalledProcessError as error:
        exit_code = error.returncode
    except Exception as error:
        stream.write(repr(error) + "\n"); exit_code = 1
after = hashes()
changed = [p for p in before if before[p] != after[p]]
record = {
    "passed": exit_code == 0 and not changed, "exit_status": exit_code,
    "seconds": round(time.monotonic() - started, 3),
    "sources_before": before, "sources_after": after, "changed_inputs": changed,
    "commands": commands, "log": str(log.relative_to(ROOT)),
    "artifacts": {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
                  for p in (out / "re_base.dll", out / "windows_host_checks.exe") if p.is_file()},
    "milestone": "compilation/link/export/import inspection only",
    "dll_initialized": False, "in_game_validated": False,
    "runtime_test": "Windows owned-host test is built; it has not been executed by this script",
}
(out / "verification.json").write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps({k: v for k, v in record.items() if k not in
                 ("sources_before", "sources_after", "commands")}, indent=2))
raise SystemExit(exit_code or (2 if changed else 0))
