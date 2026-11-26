#!/usr/bin/env python3
"""Verify recorded excerpt byte spans against the preserved virtual-layout DLL."""
from pathlib import Path
import hashlib
import json
import re

OUT = Path(__file__).resolve().parent
ROOT = OUT.parents[1]
binary = ROOT / "dump_analysis/unpacked/cheat.unpacked.dll"
image = binary.read_bytes()
pattern = re.compile(r"^([0-9a-fA-F]{6,8})\s{2,}((?:[0-9a-fA-F]{2} )*[0-9a-fA-F]{2})\s{2,}(\S.*)$")
counts = {}
failures = []
for path in sorted(OUT.rglob("*.asm")):
    if "toolchain" in path.parts:
        continue
    count = 0
    for line_number, line in enumerate(path.read_text().splitlines(), 1):
        matched = pattern.fullmatch(line)
        if not matched:
            continue
        address = int(matched[1], 16)
        expected = bytes.fromhex(matched[2])
        if image[address:address + len(expected)] != expected:
            failures.append({"file": str(path.relative_to(ROOT)), "line": line_number,
                             "rva": hex(address), "expected": expected.hex()})
        count += 1
    if count:
        counts[str(path.relative_to(ROOT))] = count
result = {"input_sha256": hashlib.sha256(image).hexdigest(),
          "excerpt_files": len(counts), "verified_spans": sum(counts.values()),
          "counts": counts, "failures": failures,
          "limit": "Byte agreement only; not proof of instruction semantics, full function bounds or C++ equivalence."}
(OUT / "byte_span_audit.json").write_text(json.dumps(result, indent=2) + "\n")
if failures:
    raise SystemExit(f"FAIL: {len(failures)} excerpt byte mismatches; see byte_span_audit.json")
print(f"PASS: {result['verified_spans']} recorded byte spans in {result['excerpt_files']} excerpt files")
