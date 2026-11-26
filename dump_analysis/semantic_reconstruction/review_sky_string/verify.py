"""Fresh native evidence and one isolated ordering regression for2ce718."""
from pathlib import Path
import hashlib
import json
import os
import re
import subprocess

ROOT = Path(__file__).resolve().parents[3]
OUT = Path(__file__).resolve().parent
WORK = ROOT / "dump_analysis/semantic_reconstruction"
SRC = ROOT / "source/reconstructed"
image = ROOT / "dump_analysis/unpacked/cheat.unpacked.dll"
native = image.read_bytes()[0x2ce718:0x2ce790]
assembly = subprocess.check_output(["objdump", "-D", "-b", "binary", "-m", "i386:x86-64",
    "-M", "intel", "--insn-width=16", "--start-address=0x2ce718", "--stop-address=0x2ce790",
    str(image)], text=True)
(OUT / "2ce718.asm").write_text(assembly)
assert native[0x3e:0x45] == bytes.fromhex("48 8b 0d 03 77 10 00")
assert native[0x52:0x58] == bytes.fromhex("89 05 00 77 10 00")

baseline = json.loads((WORK / "runtime_sky_integrated_sources.json").read_text())
assert baseline["passed"]
def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
def verify_sources():
    assert all(sha(ROOT / p) == h for p, h in baseline["sources_before"].items())
verify_sources()
source = (SRC / "sky_model_analysis.cpp").read_text()
begin = source.index("    Address string(std::string_view text)")
end = source.index("    Address camera()", begin)
previous = ('    Address string(std::string_view text){'
    'export_setup(0x2ce718,0x3d5e70,0x3d5e68,0x3d5e80,0x2cc164);'
    'need(bool(api.string_new_2ce718),0x2ce718);return api.string_new_2ce718(text);}\n')
mutant = source[:begin] + previous + source[end:]
mutant = re.sub(r'^#include "([\w.]+)"', lambda m: '#include "' + str(SRC / m[1]) + '"',
                mutant, flags=re.M)
path = OUT / "sky_without_root_order.cpp"
path.write_text(mutant)
script = (SRC / "verify.sh").read_text()
token = '"$re_source_dir/sky_model_analysis.cpp"'
assert script.count(token) == 1
script = script.replace(token, '"' + str(path) + '"')
environment = os.environ.copy()
environment.update(CXX=str(WORK / "cached_compiler.py"),
    RE_CACHED_REAL_CXX=str(WORK / "toolchain/usr/bin/x86_64-linux-gnu-g++-15"),
    RE_TOOLCHAIN_SYSROOT=str(WORK / "toolchain"), RE_ANALYSIS_SANITIZE="0",
    RE_ANALYSIS_BUILD_DIR=str(OUT / "mutant_build"))
log = OUT / "reversion_verification.txt"
with log.open("w") as output:
    result = subprocess.run(["bash", "-c", script, str(SRC / "verify.sh")], env=environment,
                            stdout=output, stderr=subprocess.STDOUT)
message = "managed string missing dispatcher precedes flag2 and context observation"
assert result.returncode == 1 and message in log.read_text(), log.read_text()[-3000:]
verify_sources()
(OUT / "verification.json").write_text(json.dumps({"native_begin": "0x2ce718",
    "native_end_exclusive": "0x2ce790", "native_bytes": len(native),
    "native_sha256": hashlib.sha256(native).hexdigest(),
    "confirmed_order": ["2ce756 dispatcher read", "2ce76a bit2 commit", "2ce770 observer",
                        "2ce775 dispatcher reload", "2ce78b shared one-argument packaging"],
    "strict_baseline": baseline["log"], "reversion_exit": result.returncode,
    "expected_regression": message, "detected": True, "production_sources_unchanged": True,
    "limit": "Owned snapshot fixtures and fresh disassembly; no sample execution"}, indent=2) + "\n")
print("PASS120 native bytes; old Sky root-order mutation rejected; production unchanged")
