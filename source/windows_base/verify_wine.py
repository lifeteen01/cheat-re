#!/usr/bin/env python3
"""Run only the hash-checked authored host/DLL under local Wine and Xvfb.

This provides compatibility-runtime evidence, not native Windows or in-game
validation. No sample or game executable is accepted as an argument.
"""
from pathlib import Path
import hashlib
import json
import os
import select
import subprocess
import tempfile
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
WORK = ROOT / "dump_analysis/semantic_reconstruction/windows_base"
PREFIX = WORK / "wine_toolchain"
OUT = WORK / "wine_runtime"
OUT.mkdir(parents=True, exist_ok=True)
captures = WORK.parent / "menu_offsets/screenshots"
captures.mkdir(parents=True, exist_ok=True)
build = json.loads((WORK / "build/verification.json").read_text())
if not build["passed"]:
    raise RuntimeError("Authored Windows build has not passed")
inputs = set(build["sources_before"]) | {str(Path(__file__).resolve().relative_to(ROOT))}
def hashes():
    return {p: hashlib.sha256((ROOT / p).read_bytes()).hexdigest() for p in sorted(inputs)}
before = hashes()
if any(before[p] != expected for p, expected in build["sources_before"].items()):
    raise RuntimeError("Build sources changed; rebuild the authored artifacts first")
artifacts = build["artifacts"]
for name, expected in artifacts.items():
    if hashlib.sha256((ROOT / name).read_bytes()).hexdigest() != expected:
        raise RuntimeError("Authored artifact hash mismatch: " + name)
host = WORK / "build/windows_host_checks.exe"
dll = WORK / "build/re_base.dll"
wine = PREFIX / "usr/lib/x86_64-linux-gnu/wine/wine"
server = wine.with_name("wineserver")
# This Ubuntu Wine build searches relocated share/wine/wine/nls. Its data
# package contains share/wine/nls. A local relative link supplies the packaged
# bytes at that expected path, without changing any system installation.
data_link = PREFIX / "usr/share/wine/wine"
if not data_link.exists(): data_link.symlink_to(".", target_is_directory=True)
if data_link.resolve() != data_link.parent.resolve():
    raise RuntimeError("Unexpected local Wine resource relocation")
zlib = PREFIX / "usr/x86_64-w64-mingw32/lib/zlib1.dll"
zlib_link = wine.parent / "x86_64-windows/zlib1.dll"
if not zlib_link.exists():
    zlib_link.symlink_to(os.path.relpath(zlib, zlib_link.parent))
if zlib_link.resolve() != zlib.resolve():
    raise RuntimeError("Unexpected local Wine zlib mapping")
environment = os.environ.copy()
test_prefix = Path(tempfile.mkdtemp(prefix="prefix_", dir=OUT))
environment.update({
    "WINEPREFIX": str(test_prefix), "WINEARCH": "win64",
    "RB_TEST_CAPTURE_DIR": "Z:" + str(captures).replace("/", "\\"),
    "WINELOADER": str(wine), "WINESERVER": str(server),
    "WINEDLLPATH": str(wine.parent), "WINEDEBUG": "-all,err+module",
    "WINEDLLOVERRIDES": "mscoree,mshtml=;winemenubuilder.exe=d",
    "LD_LIBRARY_PATH": os.pathsep.join([
        str(wine.parent / "x86_64-unix"), str(PREFIX / "usr/lib/x86_64-linux-gnu")]),
})
# libz is a native Windows DLL, so supply the verified package binaries in
# the isolated Windows system directories rather than claiming builtin code.
for directory, target in (("system32", zlib),
                          ("syswow64", PREFIX / "usr/i686-w64-mingw32/lib/zlib1.dll")):
    directory_path = Path(environment["WINEPREFIX"]) / "drive_c/windows" / directory
    directory_path.mkdir(parents=True, exist_ok=True)
    link = directory_path / "zlib1.dll"
    if not link.exists(): link.symlink_to(target)
    if link.resolve() != target.resolve(): raise RuntimeError("Unexpected test-prefix zlib mapping")
started = time.monotonic()
process = None
codes = []
failure = None
version = None
command = None
with (OUT / "xvfb.log").open("w") as xlog, (OUT / "host.log").open("w") as log:
    reader, writer = os.pipe()
    try:
        # Xvfb picks an unused display. TCP is disabled; only an owned test
        # window is displayed. No user's existing X session is touched.
        process = subprocess.Popen([str(PREFIX / "usr/bin/Xvfb"), "-displayfd", str(writer),
            "-screen", "0", "1024x768x24", "-nolisten", "tcp"],
            pass_fds=(writer,), stdout=xlog, stderr=subprocess.STDOUT, env=environment)
        os.close(writer); writer = -1
        if not select.select([reader], [], [], 10)[0]:
            raise RuntimeError("Owned Xvfb display did not become ready")
        display = os.read(reader, 64).decode().strip()
        if not display.isdigit(): raise RuntimeError("No allocated Xvfb display")
        environment["DISPLAY"] = ":" + display
        version = subprocess.check_output([str(wine), "--version"], env=environment,
                                          text=True, stderr=subprocess.STDOUT, timeout=10).strip()
        # Paths are fixed to this build; the runner accepts no foreign PE input.
        windows_dll = "Z:" + str(dll).replace("/", "\\")
        command = [str(wine), str(host), windows_dll]
        log.write(json.dumps(command) + "\n"); log.flush()
        code = subprocess.run(command, env=environment, stdout=log,
                              stderr=subprocess.STDOUT, timeout=45).returncode
        codes.append(code)
    except Exception as error:
        failure = repr(error)
        log.write(failure + "\n")
        if isinstance(error, subprocess.CalledProcessError) and error.output:
            log.write(str(error.output) + "\n")
    finally:
        if writer != -1: os.close(writer)
        os.close(reader)
        # Stop only the server for this isolated WINEPREFIX, never a user's
        # existing Wine session. Xvfb is our exact child handle.
        try:
            subprocess.run([str(server), "-k"], env=environment, stdout=log,
                           stderr=subprocess.STDOUT, timeout=5)
        except (OSError, subprocess.TimeoutExpired): pass
        if process is not None:
            process.terminate()
            try: process.wait(timeout=5)
            except subprocess.TimeoutExpired: process.kill(); process.wait(timeout=5)
after = hashes()
transcript = (OUT / "host.log").read_text(errors="replace")
success = "PASS: Windows DLL load/init/hook/original/input/pixels/restore/target-loss/unload (owned host only)"
menu_success = "PASS: native menu controls/filter/edit/save/reload +219-key external profile/Unicode/last-good/identity refusal"
record = {"passed": codes == [0] and success in transcript and menu_success in transcript and before == after,
          "wine_version": version, "exit_codes": codes, "failure": failure,
          "wine_prefix": str(test_prefix.relative_to(ROOT)), "fresh_owned_prefix": True,
          "seconds": round(time.monotonic() - started, 3), "command": command,
          "sources_before": before, "sources_after": after, "artifacts": artifacts,
          "package_manifest": "dump_analysis/semantic_reconstruction/windows_base/wine_packages_verified.json",
          "host_log": "dump_analysis/semantic_reconstruction/windows_base/wine_runtime/host.log",
          "scope": "Authored DLL/native menu/offset profile and owned-window host under Wine/Xvfb; no sample/game execution",
          "resource_relocation": ["local wine_toolchain/usr/share/wine/wine -> .; packaged NLS/INF bytes unchanged",
                                  "isolated prefix system32/syswow64 zlib1.dll links to verified libz-mingw-w64 DLLs"],
          "native_windows_validated": False, "in_game_validated": False}
(OUT / "verification.json").write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps({k: v for k, v in record.items() if k not in
                 ("sources_before", "sources_after", "command", "artifacts")}, indent=2))
raise SystemExit(0 if record["passed"] else 1)
