#!/usr/bin/env python3
"""Build only analyst-authored source; content-check every reused object."""
from pathlib import Path
import argparse
import concurrent.futures
import fcntl
import hashlib
import json
import os
import shlex
import subprocess
import tempfile
import threading

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
WORK = ROOT / "dump_analysis/semantic_reconstruction"
OUT = WORK / "test_scene"
RECONSTRUCTED = ROOT / "source/reconstructed"


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def build(mode, jobs=4):
    output = OUT / mode
    output.mkdir(parents=True, exist_ok=True)
    windows = mode == "windows"
    prefix = WORK / ("windows_base/toolchain" if windows else "toolchain")
    compiler = prefix / ("usr/bin/x86_64-w64-mingw32-g++-posix" if windows
                         else "usr/bin/x86_64-linux-gnu-g++-15")
    archiver = prefix / ("usr/bin/x86_64-w64-mingw32-ar" if windows
                         else "usr/bin/x86_64-linux-gnu-gcc-ar-15")
    environment = os.environ.copy()
    environment["PATH"] = str(prefix / "usr/bin") + os.pathsep + environment["PATH"]
    flags = ["-std=c++20", "-Wall", "-Wextra", "-Wpedantic", "-Werror",
             "-D_GLIBCXX_ASSERTIONS", "-ffp-contract=off", "-O1", "-g"]
    if not windows:
        flags += ["--sysroot=" + str(prefix),
                  "-B" + str(prefix / "usr/lib/gcc/x86_64-linux-gnu/15") + "/",
                  "-B" + str(prefix / "usr/libexec/gcc/x86_64-linux-gnu/15") + "/",
                  "-L/usr/lib/x86_64-linux-gnu"]
    if mode == "sanitizer":
        flags += ["-fsanitize=address,undefined", "-static-libasan", "-static-libubsan",
                  "-fno-sanitize-recover=all", "-fno-omit-frame-pointer"]
    cache = WORK / "compiler_cache"
    cache.mkdir(exist_ok=True)
    cc1plus = Path(subprocess.check_output([str(compiler), "-print-prog-name=cc1plus"],
                                         env=environment, text=True).strip())
    base_identity = {"compiler": str(compiler), "compiler_sha256": digest(compiler),
                     "cc1plus_sha256": digest(cc1plus)}
    manifest = HERE / "reconstruction_sources.txt"
    source_files = [RECONSTRUCTED / name for name in manifest.read_text().splitlines() if name]
    if not source_files or any(path.parent != RECONSTRUCTED or not path.is_file() for path in source_files):
        raise RuntimeError("Invalid reconstructed-source manifest")
    scene_files = sorted(HERE.glob("*.cpp"))
    source_hashes = {str(path.relative_to(ROOT)): digest(path)
                     for path in source_files + scene_files + [HERE / "build.py", manifest,
                         HERE / "CMakeLists.txt", HERE / "verify.py", ROOT / "source/CMakeLists.txt",
                         ROOT / "source/windows_base/offsets.json"]}
    hash_lock = threading.Lock()
    dependency_hashes = {}

    def dependency_digest(path):
        key = str(Path(path).resolve())
        with hash_lock:
            if key not in dependency_hashes:
                dependency_hashes[key] = digest(key)
            return dependency_hashes[key]

    def compile_unit(source):
        unit_flags = flags + (["-I" + str(RECONSTRUCTED)] if source.parent == HERE else [])
        identity = dict(base_identity, flags=unit_flags)
        identity_hash = hashlib.sha256(json.dumps(identity, sort_keys=True).encode()).hexdigest()
        token = hashlib.sha256((str(source) + '\0' + identity_hash).encode()).hexdigest()
        obj = cache / (token + ".o")
        metadata = cache / (token + ".json")
        with (cache / (token + ".lock")).open("w") as lock:
            fcntl.flock(lock, fcntl.LOCK_EX)
            previous = None
            valid = False
            if obj.is_file() and metadata.is_file():
                try:
                    previous = json.loads(metadata.read_text())
                    valid = previous["identity"] == identity and digest(obj) == previous["object_sha256"]
                    valid = valid and all(Path(path).is_file() and dependency_digest(path) == expected
                                          for path, expected in previous["dependencies"].items())
                except (OSError, ValueError, KeyError):
                    valid = False
            if not valid:
                print("Compile", mode, source.name, flush=True)
                with tempfile.TemporaryDirectory(prefix="scene-compile-", dir=output) as temporary:
                    temporary = Path(temporary)
                    built = temporary / "unit.o"
                    deps = temporary / "unit.d"
                    subprocess.run([str(compiler), *unit_flags, "-MD", "-MF", str(deps),
                                    "-c", str(source), "-o", str(built)], env=environment, check=True)
                    names = shlex.split(deps.read_text().replace('\\\n', ' ').split(':', 1)[1])
                    previous = {"identity": identity,
                                "dependencies": {str(Path(path).resolve()): digest(path)
                                                 for path in dict.fromkeys([str(source), *names])},
                                "object_sha256": digest(built)}
                    built.replace(obj)
                    metadata.write_text(json.dumps(previous, indent=2) + "\n")
            return {"source": str(source), "object": str(obj), "cache_hit": valid,
                    "object_sha256": previous["object_sha256"], "dependencies": previous["dependencies"]}

    with concurrent.futures.ThreadPoolExecutor(max_workers=jobs) as pool:
        records = list(pool.map(compile_unit, source_files + scene_files))
    library_objects = [entry["object"] for entry in records if Path(entry["source"]).parent == RECONSTRUCTED]
    host_objects = [entry["object"] for entry in records if Path(entry["source"]).parent == HERE]
    archive = output / "libreconstructed.a"
    if archive.exists(): archive.unlink()
    subprocess.run([str(archiver), "rcs", str(archive), *library_objects], env=environment, check=True)
    target = output / ("owned_scene.exe" if windows else "owned_scene")
    link_flags = ["-static", "-static-libgcc", "-static-libstdc++", "-luser32", "-lgdi32"] if windows else []
    subprocess.run([str(compiler), *flags, *host_objects, str(archive), *link_flags,
                    "-Wl,-Map=" + str(output / "link.map"), "-o", str(target)],
                   env=environment, check=True)
    dependencies = {path: expected for entry in records for path, expected in entry["dependencies"].items()}
    unchanged = all(Path(path).is_file() and digest(path) == expected for path, expected in dependencies.items())
    unchanged = unchanged and all(digest(ROOT / path) == expected for path, expected in source_hashes.items())
    record = {"passed": unchanged, "mode": mode, "source_set_unchanged": unchanged,
              "compiler": base_identity, "flags": flags, "objects": records,
              "cache_hits": sum(entry["cache_hit"] for entry in records),
              "sources_before": source_hashes, "dependencies": dependencies,
              "artifact": str(target.relative_to(ROOT)), "artifact_sha256": digest(target),
              "scope": "Owned authored test scene, never the original sample or a live game"}
    (output / "build.json").write_text(json.dumps(record, indent=2) + "\n")
    if not unchanged: raise RuntimeError("Build inputs changed during compilation")
    print(json.dumps({key: record[key] for key in ("passed", "mode", "cache_hits", "artifact", "artifact_sha256")}), flush=True)
    return record


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--mode", choices=("strict", "sanitizer", "windows"), default="strict")
    parser.add_argument("--jobs", type=int, default=4)
    arguments = parser.parse_args()
    build(arguments.mode, max(1, min(arguments.jobs, 8)))
