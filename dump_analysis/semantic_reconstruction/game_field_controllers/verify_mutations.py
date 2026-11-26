"""Reject two isolated scratch mutations without ever reverting production code."""
from pathlib import Path
import hashlib
import json
import os
import re
import subprocess

ROOT = Path(__file__).resolve().parents[3]
OUT = Path(__file__).resolve().parent
SOURCE = ROOT / "source/reconstructed"
WORK = ROOT / "dump_analysis/semantic_reconstruction"
baseline = json.loads((WORK / "fields_font_editor_final_sources.json").read_text())
assert baseline["passed"]
expected = baseline["sources_before"]

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def check_sources():
    assert all(sha(ROOT / name) == digest for name, digest in expected.items())

def absolute_headers(text):
    return re.sub(r'^#include "([\w.]+)"',
                  lambda m: '#include "' + str(SOURCE / m[1]) + '"', text, flags=re.M)

check_sources()
helper = (SOURCE / "game_helpers_analysis.cpp").read_text()
without_staging, count = re.subn(r"^\s*stage\(c\);\n", "\n", helper, flags=re.M)
assert count == 3
movement = (SOURCE / "movement_main_analysis.cpp").read_text()
old_call = "effect(0x322580,{midpoint,0.01f});"
assert movement.count(old_call) == 1
cases = [
    ("missing_argument_staging", "game_helpers_analysis.cpp", without_staging,
     "shared direct getter stages known one-argument fields before its effect"),
    ("integer_setter_result", "movement_main_analysis.cpp",
     movement.replace(old_call, "(void)uint(0x322580,{midpoint,0.01f});"),
     "unexpected movement main integer " + str(0x322580)),
]
records = []
for name, original, content, expected_message in cases:
    mutant = OUT / (name + ".cpp")
    mutant.write_text(absolute_headers(content))
    script = (SOURCE / "verify.sh").read_text()
    token = '"$re_source_dir/' + original + '"'
    assert script.count(token) == 1
    script = script.replace(token, '"' + str(mutant) + '"')
    environment = os.environ.copy()
    environment["CXX"] = str(WORK / "cached_compiler.py")
    environment["RE_CACHED_REAL_CXX"] = str(WORK / "toolchain/usr/bin/x86_64-linux-gnu-g++-15")
    environment["RE_TOOLCHAIN_SYSROOT"] = str(WORK / "toolchain")
    environment["RE_ANALYSIS_SANITIZE"] = "0"
    environment["RE_ANALYSIS_BUILD_DIR"] = str(OUT / (name + "_build"))
    log = OUT / (name + "_verification.txt")
    with log.open("w") as stream:
        result = subprocess.run(["bash", "-c", script, str(SOURCE / "verify.sh")],
                                env=environment, stdout=stream, stderr=subprocess.STDOUT)
    output = log.read_text()
    assert result.returncode == 1 and expected_message in output, (name, result.returncode, output[-2000:])
    check_sources()
    records.append({"case": name, "expected_failure": expected_message,
                    "exit_status": result.returncode, "detected": True,
                    "mutant_sha256": sha(mutant), "log": str(log.relative_to(ROOT))})
    print("PASS rejected scratch mutation", name, flush=True)
(OUT / "mutations.json").write_text(json.dumps({"baseline": baseline["log"],
    "production_sources_unchanged": True, "mutations": records,
    "limit": "Analyst fixture code only; no sample execution"}, indent=2) + "\n")
