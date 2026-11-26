#!/usr/bin/env python3
"""Run an immutable build-script copy and record the exact reached source set."""
from pathlib import Path
import argparse
import hashlib
import json
import os
import re
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument("name", help="artifact prefix under semantic_reconstruction")
parser.add_argument("--sanitize", action="store_true")
parser.add_argument("--cached", action="store_true", help="use content-checked per-translation-unit objects")
args = parser.parse_args()
if not re.fullmatch(r"[a-z0-9_]+", args.name):
    parser.error("name must use lowercase letters, digits and underscores")
WORK = Path(__file__).resolve().parent
ROOT = WORK.parents[1]
SOURCE = ROOT / "source/reconstructed"
script = SOURCE / "verify.sh"
script_text = script.read_text()
sources = {SOURCE / name for name in re.findall(r'\$re_source_dir"?/([\w.]+\.cpp)', script_text)}
for pattern in re.findall(r'\$re_source_dir"?/([\w*]+\.cpp)', script_text):
    sources.update(SOURCE.glob(pattern))
pending = list(sources)
while pending:
    item = pending.pop()
    for name in re.findall(r'^#include "([\w.]+)"', item.read_text(), re.M):
        dependency = SOURCE / name
        if dependency not in sources:
            if not dependency.is_file():
                raise RuntimeError(f"missing build dependency {dependency}")
            sources.add(dependency)
            pending.append(dependency)
sources.add(script)
if args.cached:
    sources.add(WORK / "cached_compiler.py")
def hashes():
    return {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(sources)}
before = hashes()
environment = os.environ.copy()
environment.setdefault("CXX", str(WORK / "toolchain/usr/bin/x86_64-linux-gnu-g++-15"))
environment.setdefault("RE_TOOLCHAIN_SYSROOT", str(WORK / "toolchain"))
if args.cached:
    environment["RE_CACHED_REAL_CXX"] = environment["CXX"]
    environment["CXX"] = str(WORK / "cached_compiler.py")
    environment["RE_COMPILER_CACHE_REPORT"] = str(WORK / (args.name + "_compiler_cache.json"))
environment["RE_ANALYSIS_BUILD_DIR"] = str(WORK / (args.name + "_build"))
temporary = Path(environment["RE_ANALYSIS_BUILD_DIR"]) / "temporary"
temporary.mkdir(parents=True, exist_ok=True)
environment["TMPDIR"] = str(temporary)
environment["RE_ANALYSIS_SANITIZE"] = "1" if args.sanitize else "0"
log = WORK / (args.name + "_verification.txt")
with log.open("w") as output:
    output.write(f"[I] Combined immutable-script {'ASan/UBSan' if args.sanitize else 'strict'} verification.\n")
    output.flush()
    result = subprocess.run(["bash", "-c", script_text, str(script)], env=environment,
                            stdout=output, stderr=subprocess.STDOUT)
    after = hashes()
    changed = [path for path in before if before[path] != after[path]]
    output.write(f"EXIT_STATUS={result.returncode}\nSOURCE_SET_UNCHANGED={not changed}\n")
record = {"confidence": "C", "mode": "sanitizer" if args.sanitize else "strict",
          "content_checked_object_cache": args.cached,
          "exit_status": result.returncode, "source_changed_during_run": changed,
          "passed": result.returncode == 0 and not changed,
          "sources_before": before, "sources_after": after,
          "log": str(log.relative_to(ROOT)),
          "limit": "Analyst-owned fixture code only; no sample execution or live ABI validation."}
(WORK / (args.name + "_sources.json")).write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps({key: value for key, value in record.items() if not key.startswith("sources_")}, indent=2))
raise SystemExit(result.returncode or (2 if changed else 0))
