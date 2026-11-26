"""[I] Offline resource boundary probes; only authored code is built/executed."""
import hashlib
import json
import pathlib
import subprocess

ROOT = pathlib.Path(__file__).resolve().parents[3]
OUT = pathlib.Path(__file__).resolve().parent
TC = ROOT / "dump_analysis/semantic_reconstruction/toolchain"
SOURCES = [ROOT / "source/test_scene/resources.cpp", OUT / "probe.cpp"] + [
    ROOT / "source/reconstructed" / (name + ".cpp") for name in (
        "font_text_lookup", "font_text_atlas", "font_text_raster", "renderer_helpers_font",
        "drawlist_core_commands", "drawlist_core_channels")]
BASE = [str(TC / "usr/bin/x86_64-linux-gnu-g++-15"), "--sysroot=" + str(TC),
        "-B" + str(TC / "usr/lib/gcc/x86_64-linux-gnu/15") + "/",
        "-B" + str(TC / "usr/libexec/gcc/x86_64-linux-gnu/15") + "/",
        "-L/usr/lib/x86_64-linux-gnu", "-std=c++20", "-Wall", "-Wextra", "-Wpedantic", "-Werror",
        "-ffp-contract=off", "-D_GLIBCXX_ASSERTIONS", "-O1", "-g", "-ffunction-sections",
        "-fdata-sections", "-Wl,--gc-sections"] + ["-I" + str(ROOT / name) for name in (
            "source/reconstructed", "source/windows_base", "source/test_scene")]
result = {}
for mode in ("strict", "sanitizer"):
    command = BASE + (["-fsanitize=address,undefined", "-static-libasan", "-static-libubsan",
                       "-fno-sanitize-recover=all", "-fno-omit-frame-pointer"]
                      if mode == "sanitizer" else [])
    command += [str(path) for path in SOURCES] + ["-o", str(OUT / mode)]
    with (OUT / (mode + ".log")).open("w") as log:
        built = subprocess.run(command, stdout=log, stderr=subprocess.STDOUT)
        ran = subprocess.run([str(OUT / mode)], stdout=log, stderr=subprocess.STDOUT) \
            if built.returncode == 0 else None
        result[mode] = {"command": command, "build_exit": built.returncode,
                        "run_exit": ran.returncode if ran else None}
    print(mode, result[mode]["build_exit"], result[mode]["run_exit"], flush=True)
result["source_sha256"] = {str(path.relative_to(ROOT)): hashlib.sha256(path.read_bytes()).hexdigest()
                           for path in SOURCES}
(OUT / "verification.json").write_text(json.dumps(result, indent=2) + "\n")
raise SystemExit(0 if all(result[mode]["run_exit"] == 0 for mode in ("strict", "sanitizer")) else 1)
