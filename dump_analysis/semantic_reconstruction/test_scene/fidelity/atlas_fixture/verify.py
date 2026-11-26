import hashlib
import json
import pathlib
import shlex
import subprocess

ROOT = pathlib.Path(__file__).resolve().parents[5]
OUTPUT = pathlib.Path(__file__).resolve().parent
TOOLCHAIN = ROOT / "dump_analysis/semantic_reconstruction/toolchain"
SOURCES = [ROOT / "source/test_scene/resources.cpp", ROOT / "source/test_scene/resource_checks.cpp",
           OUTPUT / "main.cpp"] + [ROOT / "source/reconstructed" / (name + ".cpp") for name in (
               "font_text_lookup", "font_text_atlas", "font_text_raster", "renderer_helpers_font",
               "drawlist_core_commands", "drawlist_core_channels")]
BASE = [str(TOOLCHAIN / "usr/bin/x86_64-linux-gnu-g++-15"), "--sysroot=" + str(TOOLCHAIN),
        "-B" + str(TOOLCHAIN / "usr/lib/gcc/x86_64-linux-gnu/15") + "/",
        "-B" + str(TOOLCHAIN / "usr/libexec/gcc/x86_64-linux-gnu/15") + "/",
        "-L/usr/lib/x86_64-linux-gnu", "-std=c++20", "-Wall", "-Wextra", "-Wpedantic", "-Werror",
        "-ffp-contract=off", "-D_GLIBCXX_ASSERTIONS", "-O1", "-g", "-ffunction-sections",
        "-fdata-sections", "-Wl,--gc-sections"] + ["-I" + str(ROOT / name) for name in (
            "source/reconstructed", "source/windows_base", "source/test_scene")]
dependencies = set(SOURCES)
for source in SOURCES:
    discovered = subprocess.run(BASE + ["-M", str(source)], check=True, text=True, capture_output=True)
    dependency_text = discovered.stdout.replace("\\\n", " ").split(":", 1)[1]
    dependencies.update(pathlib.Path(path).resolve() for path in shlex.split(dependency_text))
dependencies.add(pathlib.Path(BASE[0]))
dependencies.add(TOOLCHAIN / "usr/libexec/gcc/x86_64-linux-gnu/15/cc1plus")
def frozen_hashes():
    return {str(path): hashlib.sha256(path.read_bytes()).hexdigest() for path in sorted(dependencies)}
before = frozen_hashes()
result = {"inputs_before": before}
for mode in ("strict", "sanitizer"):
    command = BASE + (["-fsanitize=address,undefined", "-static-libasan", "-static-libubsan",
                       "-fno-sanitize-recover=all", "-fno-omit-frame-pointer"]
                      if mode == "sanitizer" else [])
    command += [str(source) for source in SOURCES] + ["-o", str(OUTPUT / mode)]
    with (OUTPUT / (mode + ".log")).open("w") as stream:
        build = subprocess.run(command, stdout=stream, stderr=subprocess.STDOUT)
        runtime = subprocess.run([str(OUTPUT / mode)], stdout=stream, stderr=subprocess.STDOUT) \
            if build.returncode == 0 else None
    result[mode] = {"command": command, "build_exit": build.returncode,
                    "run_exit": runtime.returncode if runtime else None}
    print(mode, result[mode]["build_exit"], result[mode]["run_exit"], flush=True)
result["inputs_after"] = frozen_hashes()
result["inputs_frozen"] = result["inputs_before"] == result["inputs_after"]
result["passed"] = result["inputs_frozen"] and all(
    result[mode]["run_exit"] == 0 for mode in ("strict", "sanitizer"))
(OUTPUT / "verification.json").write_text(json.dumps(result, indent=2) + "\n")
print("inputs_frozen", result["inputs_frozen"], "dependency_count", len(dependencies), flush=True)
raise SystemExit(0 if result["passed"] else 1)
