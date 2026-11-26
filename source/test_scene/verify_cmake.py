#!/usr/bin/env python3
"""Reproduce the owned CMake/CTest run with locally extracted tools and hash records."""
import argparse
import json
import os
import shlex
import subprocess
import sys
sys.dont_write_bytecode = True
from audit import ROOT, WORK, OUT, digest, load, matches


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--jobs", type=int, default=2)
    options = parser.parse_args()
    snapshot = load(OUT / "strict/build.json")
    if not snapshot["passed"] or not matches(snapshot["sources_before"]) or \
            not matches(snapshot["dependencies"]):
        raise RuntimeError("Run exact-current strict scene verification before CMake validation")
    snapshot_path = OUT / "fidelity_cmake_inputs.json"
    snapshot_path.write_text(json.dumps(snapshot, indent=2) + "\n")
    tools = WORK / "windows_base/cmake_toolchain/usr/bin"
    prefix = WORK / "toolchain"
    environment = os.environ.copy()
    environment["PATH"] = str(prefix / "usr/bin") + os.pathsep + environment["PATH"]
    environment["LD_LIBRARY_PATH"] = str(tools.parent / "lib/x86_64-linux-gnu") + \
        (os.pathsep + environment["LD_LIBRARY_PATH"] if environment.get("LD_LIBRARY_PATH") else "")
    flags = shlex.join([
        "--sysroot=" + str(prefix),
        "-B" + str(prefix / "usr/lib/gcc/x86_64-linux-gnu/15") + "/",
        "-B" + str(prefix / "usr/libexec/gcc/x86_64-linux-gnu/15") + "/",
        "-L/usr/lib/x86_64-linux-gnu",
    ])
    directory = OUT / "cmake_native"
    commands = (
        ("configure", [str(tools / "cmake"), "-S", str(ROOT / "source"), "-B", str(directory),
                       "-G", "Ninja", "-DCMAKE_MAKE_PROGRAM=" + str(tools / "ninja"),
                       "-DCMAKE_CXX_COMPILER=" + str(prefix / "usr/bin/x86_64-linux-gnu-g++-15"),
                       "-DCMAKE_CXX_FLAGS=" + flags, "-DRE_BUILD_WINDOWS_BASE=OFF",
                       "-DRE_BUILD_OFFLINE_RECONSTRUCTION=OFF", "-DRE_BUILD_TEST_SCENE=ON"]),
        ("build", [str(tools / "cmake"), "--build", str(directory), "--parallel",
                   str(max(1, min(options.jobs, 8)))]),
        ("ctest", [str(tools / "ctest"), "--test-dir", str(directory), "--output-on-failure"]),
    )
    results = []
    for name, command in commands:
        path = OUT / f"cmake_{name}.log"
        with path.open("w") as log:
            code = subprocess.run(command, env=environment, stdout=log,
                                  stderr=subprocess.STDOUT, timeout=900).returncode
        results.append({"step": name, "exit_code": code, "command": command,
                        "log": str(path.relative_to(ROOT)), "log_sha256": digest(path)})
        if code:
            break
    artifact = directory / "test_scene/owned_scene"
    unchanged = matches(snapshot["sources_before"]) and matches(snapshot["dependencies"])
    passed = unchanged and len(results) == len(commands) and all(item["exit_code"] == 0 for item in results)
    record = {"passed": passed, "inputs_unchanged": unchanged, "steps": results,
              "snapshot_sha256": digest(snapshot_path), "runner_sha256": digest(ROOT / "source/test_scene/verify_cmake.py"),
              "artifact": str(artifact.relative_to(ROOT)),
              "artifact_sha256": digest(artifact) if artifact.is_file() else None,
              "scope": "Owned Linux CMake/CTest only; not native Windows or inside Rust"}
    (OUT / "cmake_verification.json").write_text(json.dumps(record, indent=2) + "\n")
    print(json.dumps(record, indent=2))
    raise SystemExit(0 if passed else 1)


if __name__ == "__main__":
    main()
