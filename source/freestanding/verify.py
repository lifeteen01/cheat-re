#!/usr/bin/env python3
"""Build authored freestanding gate; run owned targets only. No foreign PE argument."""
from pathlib import Path
import argparse
import hashlib
import json
import os
import re
import select
import struct
import subprocess
import tempfile
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
WORK = ROOT / "dump_analysis/semantic_reconstruction"
OUT = WORK / "freestanding_gate"


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def pe_imports(path):
    data = path.read_bytes()
    pe = struct.unpack_from("<I", data, 0x3c)[0]
    if data[:2] != b"MZ" or data[pe:pe + 4] != b"PE\0\0":
        raise ValueError("Expected authored PE")
    opt = pe + 24
    if struct.unpack_from("<H", data, opt)[0] != 0x20b:
        raise ValueError("Expected PE32+")
    count = struct.unpack_from("<H", data, pe + 6)[0]
    sections = opt + struct.unpack_from("<H", data, pe + 20)[0]
    def offset(rva):
        for index in range(count):
            size, start, raw_size, raw = struct.unpack_from("<IIII", data, sections + index * 40 + 8)
            if start <= rva < start + max(size, raw_size) and rva - start < raw_size:
                return raw + rva - start
        raise ValueError("Unmapped PE RVA")
    directories = {}
    for name, index in (("imports", 1), ("iat", 12), ("delay_imports", 13), ("tls", 9)):
        rva, size = struct.unpack_from("<II", data, opt + 112 + index * 8)
        directories[name] = {"rva": rva, "size": size}
    names = []
    rva = directories["imports"]["rva"]
    if rva:
        for index in range(directories["imports"]["size"] // 20):
            values = struct.unpack_from("<IIIII", data, offset(rva + index * 20))
            if not any(values): break
            start = offset(values[3])
            names.append(data[start:data.index(b"\0", start)].decode("ascii"))
        else: raise ValueError("Unterminated imports")
    return {"libraries": names, "directories": directories,
            "no_imported_libraries": not names,
            "no_iat": directories["iat"]["rva"] == 0,
            "no_delay_imports": directories["delay_imports"]["rva"] == 0,
            "no_tls": directories["tls"]["rva"] == 0}


def executor_audit(objdump, gate_object, env):
    dump = ROOT / "dump_analysis/unpacked/cheat.unpacked.dll"
    if digest(dump) != "ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090":
        raise ValueError("Preserved dump hash mismatch")
    data = dump.read_bytes()
    original = []
    for filename in ("restore_exact.asm", "executor_exact.asm"):
        text = (WORK / "03_stack" / filename).read_text()
        for line in text.splitlines():
            match = re.match(r"^([0-9a-f]+)\s+((?:[0-9a-f]{2}\s+)+)\s*(\w+)\s*(.*)", line)
            if not match: continue
            rva = int(match[1], 16)
            raw = bytes.fromhex(match[2])
            if data[rva:rva + len(raw)] != raw:
                raise ValueError("Original excerpt provenance mismatch")
            original.append((rva, match[3], match[4]))
    output = subprocess.check_output([str(objdump), "-dr", "-Mintel", "--no-show-raw-insn",
                                      str(gate_object)], text=True, env=env)
    authored = []
    reached = False
    lines = output.splitlines()
    restore_reference = False
    for number, line in enumerate(lines):
        symbol = re.match(r"^[0-9a-f]+ <([^>]+)>:", line)
        if symbol:
            reached = symbol[1] in ("re_gate_restore_3cdbba", "re_gate_execute_3cdbd4")
            continue
        match = re.match(r"^\s*([0-9a-f]+):\s+([a-z][a-z0-9]*)\s*(.*)", line)
        if reached and match:
            authored.append((int(match[1], 16), match[2], match[3]))
            if match[2] == "lea" and "rip" in match[3]:
                nearby = line + "\n" + (lines[number + 1] if number + 1 < len(lines) else "")
                restore_reference = "re_gate_restore_3cdbba" in nearby
    def normalize(items):
        indices = {address: index for index, (address, _, _) in enumerate(items)}
        result = []
        for _, mnemonic, operands in items:
            operands = operands.split("#")[0].strip()
            if mnemonic.startswith("j") and not operands.startswith(("rax", "QWORD")):
                target = int(operands.split()[0], 16)
                operands = "instruction:" + str(indices[target])
            elif mnemonic == "lea" and "rip" in operands:
                operands = "rax,[rip+re_gate_restore_3cdbba]"
            else:
                operands = operands.lower().replace(" ", "")
                operands = re.sub(r"0x([0-9a-f]+)", lambda m: str(int(m[1], 16)), operands)
            result.append((mnemonic, operands))
        return result
    expected, actual = normalize(original), normalize(authored)
    if expected != actual:
        differences = [(i, expected[i] if i < len(expected) else None,
                         actual[i] if i < len(actual) else None)
                       for i in range(max(len(expected), len(actual)))
                       if i >= len(expected) or i >= len(actual) or expected[i] != actual[i]]
        raise ValueError("Executor instruction/branch mismatch: " + repr(differences[:5]))
    if not restore_reference:
        raise ValueError("Missing authored restoration relocation")
    return {"passed": True, "instruction_count": len(expected), "restore_reference_verified": True,
            "comparison": "ordered mnemonics/registers/operands/direct-branch destinations; relocated restore LEA",
            "original_bytes_checked": True, "dump_sha256": digest(dump)}


def wine_run(host, dll, directory, log):
    prefix = WORK / "windows_base/wine_toolchain"
    wine = prefix / "usr/lib/x86_64-linux-gnu/wine/wine"
    server = wine.with_name("wineserver")
    owned_prefix = Path(tempfile.mkdtemp(prefix="owned_prefix_", dir=directory))
    env = os.environ.copy()
    env.update({"WINEPREFIX": str(owned_prefix), "WINEARCH": "win64", "WINELOADER": str(wine),
                "WINESERVER": str(server), "WINEDLLPATH": str(wine.parent),
                "WINEDEBUG": "-all,err+module", "WINEDLLOVERRIDES": "mscoree,mshtml=;winemenubuilder.exe=d",
                "LD_LIBRARY_PATH": os.pathsep.join([str(wine.parent / "x86_64-unix"),
                                                   str(prefix / "usr/lib/x86_64-linux-gnu")])})
    for folder, arch in (("system32", "x86_64"), ("syswow64", "i686")):
        target = owned_prefix / "drive_c/windows" / folder
        target.mkdir(parents=True, exist_ok=True)
        (target / "zlib1.dll").symlink_to(prefix / f"usr/{arch}-w64-mingw32/lib/zlib1.dll")
    reader, writer = os.pipe()
    display = None
    try:
        with (directory / "xvfb.log").open("w") as xlog:
            display = subprocess.Popen([str(prefix / "usr/bin/Xvfb"), "-displayfd", str(writer),
                "-screen", "0", "640x480x24", "-nolisten", "tcp"], pass_fds=(writer,), env=env,
                stdout=xlog, stderr=subprocess.STDOUT)
            os.close(writer); writer = -1
            if not select.select([reader], [], [], 10)[0]: raise RuntimeError("Owned Xvfb timeout")
            number = os.read(reader, 64).decode().strip()
            if not number.isdigit(): raise RuntimeError("Invalid owned display")
            env["DISPLAY"] = ":" + number
            version = subprocess.check_output([str(wine), "--version"], env=env, text=True, timeout=10).strip()
            command = [str(wine), str(host), "Z:" + str(dll).replace("/", "\\")]
            code = subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, timeout=90).returncode
            return code, {"wine_version": version, "owned_prefix": str(owned_prefix.relative_to(ROOT)),
                          "native_windows_validated": False, "in_game_validated": False}
    finally:
        if writer != -1: os.close(writer)
        os.close(reader)
        subprocess.run([str(server), "-k"], env=env, stdout=log, stderr=subprocess.STDOUT, timeout=10)
        if display:
            display.terminate()
            try: display.wait(timeout=5)
            except subprocess.TimeoutExpired: display.kill(); display.wait(timeout=5)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--mode", choices=("strict", "sanitizer", "windows"), default="strict")
    args = parser.parse_args()
    directory = OUT / args.mode
    directory.mkdir(parents=True, exist_ok=True)
    report = directory / "verification.json"
    report.write_text('{"passed":false,"state":"started"}\n')
    def originals(name):
        with (directory / name).open("w") as log:
            subprocess.run(["sha256sum", "-c", "MANIFEST.sha256"], cwd=ROOT / "dump_analysis",
                           stdout=log, stderr=subprocess.STDOUT, check=True)
    originals("original_hashes_before.txt")
    names = ("gate.h", "gate.cpp", "gate_x64.S", "checks.cpp", "checks_x64.S", "verify.py", "CMakeLists.txt")
    before = {str((HERE / name).relative_to(ROOT)): digest(HERE / name) for name in names}
    windows = args.mode == "windows"
    prefix = WORK / ("windows_base/toolchain" if windows else "toolchain")
    stem = "x86_64-w64-mingw32" if windows else "x86_64-linux-gnu"
    compiler = prefix / (f"usr/bin/{stem}-g++-posix" if windows else f"usr/bin/{stem}-g++-15")
    objdump = prefix / f"usr/bin/{stem}-objdump"
    nm = prefix / f"usr/bin/{stem}-nm"
    if not windows:
        objdump = Path("/usr/bin/objdump"); nm = Path("/usr/bin/nm")
    env = os.environ.copy()
    env["PATH"] = str(prefix / "usr/bin") + os.pathsep + env["PATH"]
    common = ["-Wall", "-Wextra", "-Wpedantic", "-Werror", "-O2", "-g", "-ffp-contract=off"]
    if not windows:
        common += ["--sysroot=" + str(prefix), "-B" + str(prefix / f"usr/lib/gcc/{stem}/15") + "/",
                   "-B" + str(prefix / f"usr/libexec/gcc/{stem}/15") + "/", "-L/usr/lib/x86_64-linux-gnu"]
    freestanding = ["-ffreestanding", "-fno-builtin", "-fno-exceptions", "-fno-rtti", "-fno-stack-protector",
                    "-fno-threadsafe-statics", "-fno-use-cxa-atexit", "-fno-unwind-tables",
                    "-fno-asynchronous-unwind-tables", "-fno-tree-loop-distribute-patterns", "-DRE_GATE_BUILD"]
    sanitized = ["-fsanitize=address,undefined", "-fno-sanitize-recover=all", "-fno-omit-frame-pointer"] \
        if args.mode == "sanitizer" else []
    commands = []
    def run(command):
        commands.append([str(item) for item in command])
        subprocess.run(command, env=env, check=True, stdout=build_log, stderr=subprocess.STDOUT)
    started = time.monotonic()
    with (directory / "build.log").open("w") as build_log:
        for name in ("gate.cpp", "gate_x64.S", "checks.cpp", "checks_x64.S"):
            flags = common + (["-std=c++20"] if name.endswith(".cpp") else [])
            flags += (freestanding if name.startswith("gate") else []) + sanitized
            source = HERE / name
            if name.endswith(".S"):
                # The extracted Linux toolchain contains cc1plus but not cc1.
                # C++ preprocessing suffices for the two platform conditionals.
                source = directory / (name + ".s")
                run([str(compiler), *flags, "-E", "-x", "c++", "-P", str(HERE / name), "-o", str(source)])
            run([str(compiler), *flags, "-c", str(source), "-o", str(directory / (name + ".o"))])
        objects = lambda group: [str(directory / (name + ".o")) for name in group]
        gate_objects = objects(("gate.cpp", "gate_x64.S"))
        check_objects = objects(("checks.cpp", "checks_x64.S"))
        dll = directory / "re_gate.dll"
        host = directory / ("owned_gate_checks.exe" if windows else "owned_gate_checks")
        link_flags = ["-nostdlib", "-nodefaultlibs", "-nostartfiles", "-shared",
                      "-Wl,--entry,ReGateDllEntry,--no-undefined,--exclude-all-symbols",
                      "-Wl,-Map=" + str(directory / "link.map")]
        if windows:
            run([str(compiler), *common, *gate_objects, *link_flags, "-o", str(dll)])
        run([str(compiler), *common, *sanitized, *check_objects, *(gate_objects if not windows else []),
             *(["-static", "-static-libgcc", "-static-libstdc++"] if windows else []), "-o", str(host)])
    audit = executor_audit(objdump, directory / "gate_x64.S.o", env)
    imports = pe_imports(dll) if windows else None
    host_imports = pe_imports(host) if windows else None
    undefined = subprocess.check_output([str(nm), "-u", str(directory / "gate.cpp.o")], env=env, text=True)
    if not sanitized and {line.split()[-1] for line in undefined.splitlines() if line.strip()} != {"re_gate_capture"}:
        raise ValueError("Unexpected freestanding C++ runtime dependency: " + undefined)
    map_text = (directory / "link.map").read_text() if windows else ""
    linked_archive = bool(re.search(r"\.a\(", map_text))
    if windows and linked_archive:
        raise ValueError("Freestanding DLL unexpectedly linked archive/runtime members")
    artifacts = {str(host.relative_to(ROOT)): digest(host)}
    if windows: artifacts[str(dll.relative_to(ROOT))] = digest(dll)
    details = {}
    with (directory / "runtime.log").open("w") as log:
        if windows: code, details = wine_run(host, dll, directory, log)
        else:
            env["ASAN_OPTIONS"] = "detect_leaks=1:halt_on_error=1"
            env["UBSAN_OPTIONS"] = "halt_on_error=1:print_stacktrace=1"
            code = subprocess.run([str(host)], env=env, stdout=log, stderr=subprocess.STDOUT, timeout=30).returncode
    originals("original_hashes_after.txt")
    after = {name: digest(ROOT / name) for name in before}
    transcript = (directory / "runtime.log").read_text(errors="replace")
    passed = code == 0 and before == after and "PASS: executable recovered gate" in transcript
    passed = passed and (not windows or all(imports[key] for key in
                            ("no_imported_libraries", "no_iat", "no_delay_imports", "no_tls")))
    record = {"passed": passed, "mode": args.mode, "exit_code": code, "sources_before": before,
              "sources_after": after, "compiler_sha256": digest(compiler), "commands": commands,
              "objects": {str(path.relative_to(ROOT)): digest(path) for path in directory.glob("*.o")},
              "build_log_sha256": digest(directory / "build.log"),
              "link_map_sha256": digest(directory / "link.map") if windows else None,
              "artifacts": artifacts, "executor_audit": audit, "dll_imports": imports,
              "host_imports_are_separate": host_imports,
              "dll_linked_archive_members": linked_archive,
              "gate_object_undefined": undefined, "seconds": round(time.monotonic() - started, 3),
              "runtime_log_sha256": digest(directory / "runtime.log"), "original_manifest_entries": 135,
              "scope": "Recovered executor component only; supplied owned context/targets. Hosted driver is separate.",
              "full_context_selection_implemented": False, "scene_uses_executor": False,
              "overall_base_no_crt_no_imports": False, **details}
    report.write_text(json.dumps(record, indent=2) + "\n")
    print(json.dumps({key: value for key, value in record.items() if key not in
                     ("sources_before", "sources_after", "commands")}, indent=2))
    raise SystemExit(0 if passed else 1)


if __name__ == "__main__":
    main()
