#!/usr/bin/env python3
"""Reproducible owned-runtime evidence; no foreign executable input accepted."""
from pathlib import Path
import argparse
import hashlib
import json
import os
import select
import struct
import subprocess
import sys
import tempfile
import time
import zlib
sys.dont_write_bytecode = True
from build import build, digest, ROOT, WORK, OUT


def png_from_ppm(path):
    with path.open("rb") as image:
        if image.readline() != b"P6\n": raise RuntimeError("Unexpected owned capture format")
        width, height = map(int, image.readline().split())
        if image.readline() != b"255\n": raise RuntimeError("Unexpected capture depth")
        pixels = image.read()
    if len(pixels) != width * height * 3: raise RuntimeError("Truncated owned capture")
    def chunk(kind, data):
        return struct.pack(">I", len(data)) + kind + data + struct.pack(">I", zlib.crc32(kind + data))
    rows = b"".join(b"\0" + pixels[index:index + width * 3]
                    for index in range(0, len(pixels), width * 3))
    encoded = b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", struct.pack(">IIBBBBB", width, height, 8, 2, 0, 0, 0))
    encoded += chunk(b"IDAT", zlib.compress(rows, 9)) + chunk(b"IEND", b"")
    target = path.with_suffix(".png")
    target.write_bytes(encoded)
    return str(target.relative_to(ROOT)), digest(target)


def verify_originals(target):
    with target.open("w") as output:
        result = subprocess.run(["sha256sum", "-c", "MANIFEST.sha256"], cwd=ROOT / "dump_analysis",
                                stdout=output, stderr=subprocess.STDOUT)
    if result.returncode: raise RuntimeError("Original manifest input hash verification failed")


def run_wine(target, runtime, log):
    prefix = WORK / "windows_base/wine_toolchain"
    wine = prefix / "usr/lib/x86_64-linux-gnu/wine/wine"
    server = wine.with_name("wineserver")
    data_link = prefix / "usr/share/wine/wine"
    if not data_link.exists(): data_link.symlink_to(".", target_is_directory=True)
    if data_link.resolve() != data_link.parent.resolve(): raise RuntimeError("Unexpected Wine data mapping")
    zlib_file = prefix / "usr/x86_64-w64-mingw32/lib/zlib1.dll"
    zlib_link = wine.parent / "x86_64-windows/zlib1.dll"
    if not zlib_link.exists(): zlib_link.symlink_to(os.path.relpath(zlib_file, zlib_link.parent))
    if zlib_link.resolve() != zlib_file.resolve(): raise RuntimeError("Unexpected Wine DLL mapping")
    test_prefix = Path(tempfile.mkdtemp(prefix="owned_wine_", dir=OUT / "windows"))
    environment = os.environ.copy()
    environment.update({"WINEPREFIX": str(test_prefix), "WINEARCH": "win64", "WINELOADER": str(wine),
                        "WINESERVER": str(server), "WINEDLLPATH": str(wine.parent),
                        "WINEDEBUG": "-all,err+module", "WINEDLLOVERRIDES": "mscoree,mshtml=;winemenubuilder.exe=d",
                        "LD_LIBRARY_PATH": os.pathsep.join([str(wine.parent / "x86_64-unix"),
                                                            str(prefix / "usr/lib/x86_64-linux-gnu")])})
    for directory, resource in (("system32", zlib_file),
                                ("syswow64", prefix / "usr/i686-w64-mingw32/lib/zlib1.dll")):
        folder = test_prefix / "drive_c/windows" / directory
        folder.mkdir(parents=True, exist_ok=True)
        (folder / "zlib1.dll").symlink_to(resource)
    reader, writer = os.pipe()
    display_process = None
    try:
        with (OUT / "windows/xvfb.log").open("w") as display_log:
            display_process = subprocess.Popen([str(prefix / "usr/bin/Xvfb"), "-displayfd", str(writer),
                "-screen", "0", "1600x1000x24", "-nolisten", "tcp"], pass_fds=(writer,),
                env=environment, stdout=display_log, stderr=subprocess.STDOUT)
            os.close(writer); writer = -1
            if not select.select([reader], [], [], 10)[0]: raise RuntimeError("Owned Xvfb did not start")
            display = os.read(reader, 64).decode().strip()
            if not display.isdigit(): raise RuntimeError("Invalid owned Xvfb display")
            environment["DISPLAY"] = ":" + display
            version = subprocess.check_output([str(wine), "--version"], env=environment,
                                               stderr=subprocess.STDOUT, text=True, timeout=10).strip()
            windows_path = lambda path: "Z:" + str(path).replace("/", "\\")
            command = [str(wine), str(target), "--self-test", "--output", windows_path(runtime),
                       "--profile", windows_path(ROOT / "source/windows_base/offsets.json")]
            result = subprocess.run(command, env=environment, stdout=log, stderr=subprocess.STDOUT, timeout=180)
            return result.returncode, {"wine_version": version, "isolated_prefix": str(test_prefix.relative_to(ROOT)),
                                       "command": command, "native_windows_validated": False,
                                       "inside_rust_validated": False}
    finally:
        if writer != -1: os.close(writer)
        os.close(reader)
        subprocess.run([str(server), "-k"], env=environment, stdout=log, stderr=subprocess.STDOUT, timeout=10)
        if display_process is not None:
            display_process.terminate()
            try: display_process.wait(timeout=5)
            except subprocess.TimeoutExpired: display_process.kill(); display_process.wait(timeout=5)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--mode", choices=("strict", "sanitizer", "windows"), default="strict")
    parser.add_argument("--jobs", type=int, default=4)
    options = parser.parse_args()
    output = OUT / options.mode
    output.mkdir(parents=True, exist_ok=True)
    verify_originals(output / "original_hashes_before.txt")
    record = build(options.mode, max(1, min(options.jobs, 8)))
    target = ROOT / record["artifact"]
    if digest(target) != record["artifact_sha256"]: raise RuntimeError("Authored artifact changed")
    runtime = output / "runtime"
    runtime.mkdir(exist_ok=True)
    started = time.monotonic()
    details = {}
    with (output / "runtime.log").open("w") as log:
        if options.mode == "windows":
            code, details = run_wine(target, runtime, log)
        else:
            environment = os.environ.copy()
            environment["ASAN_OPTIONS"] = "detect_leaks=1:halt_on_error=1"
            environment["UBSAN_OPTIONS"] = "halt_on_error=1:print_stacktrace=1"
            code = subprocess.run([str(target), "--self-test", "--output", str(runtime), "--profile",
                str(ROOT / "source/windows_base/offsets.json")], env=environment, stdout=log,
                stderr=subprocess.STDOUT, timeout=180).returncode
    verify_originals(output / "original_hashes_after.txt")
    unchanged = all(Path(path).is_file() and digest(path) == expected
                    for path, expected in record["dependencies"].items())
    unchanged = unchanged and all(digest(ROOT / path) == expected
                                  for path, expected in record["sources_before"].items())
    transcript = (output / "runtime.log").read_text(errors="replace")
    passed = code == 0 and unchanged and "[C] PASS: reconstructed menu/ESP/offsets/" in transcript
    captures = dict(png_from_ppm(path) for path in sorted(runtime.glob("*.ppm"))) if passed else {}
    entrypoints = json.loads((runtime / "entrypoints.json").read_text()) if passed else {}
    required = ("replay_unity_frame_2f8574", "FrameLifecycle::recorded_submission",
                "replay_menu_page_3354b4", "replay_menu_page_35013c",
                "imgui_window_begin_38cfa4", "imgui_window_child_38e97c",
                "menu_controls_color_386438", "menu_color_popup_begin_3868be",
                "replay_world_player_overlay_30ea17", "game_runtime_wrapper:315a54",
                "project_screen_36cd20", "menu_controls_apply",
                "menu_color_picker_379680", "font_text_plain_361bcc", "font_text_draw_3a31f8",
                "draw_core_reserve_3a719c")
    passed = passed and all(entrypoints.get(name, 0) > 0 for name in required)
    result = {"passed": passed, "mode": options.mode, "exit_code": code, "inputs_unchanged": unchanged,
              "seconds": round(time.monotonic() - started, 3), "captures": captures,
              "artifact_sha256": record["artifact_sha256"], "entrypoints": entrypoints, **details,
              "original_manifest_entries": len((ROOT / "dump_analysis/MANIFEST.sha256").read_text().splitlines()),
              "scope": "Owned controlled scene only; no original sample, no live Rust, ordinary calls only"}
    (output / "verification.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({key: value for key, value in result.items() if key not in ("captures", "entrypoints", "command")}, indent=2))
    raise SystemExit(0 if passed else 1)


if __name__ == "__main__":
    main()
