#!/usr/bin/env python3
"""Read-only DLL audit for trajectory/cache and interaction-wrapper evidence."""
from pathlib import Path
import hashlib
import json
import re
import struct
import subprocess

ROOT = Path(__file__).resolve().parents[2]
WORK = Path(__file__).resolve().parent
OUT = WORK / "local_interaction_audit"
OUT.mkdir(exist_ok=True)
DLL = ROOT / "dump_analysis/unpacked/cheat.unpacked.dll"
raw = DLL.read_bytes()
digest = hashlib.sha256(raw).hexdigest()
assert digest == "ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090"
nt = struct.unpack_from("<I", raw, 0x3c)[0]
pdata, size = struct.unpack_from("<II", raw, nt + 24 + 112 + 24)
functions = dict((start, (end, unwind)) for start, end, unwind in
                 (struct.unpack_from("<III", raw, p) for p in range(pdata, pdata + size, 12)))
ranges = [
    ("close_loot", 0x2e5bec, 0x2e5d49, True),
    ("raycast_wrapper", 0x2e8fac, 0x2e90d5, True),
    ("melee_cache_fold", 0x2e1ff4, 0x2e20f1, False),
    ("float_format", 0x2d9540, 0x2d955b, True),
    ("float_format_crt", 0x2d955c, 0x2d95cb, True),
    ("table_constructor", 0x2df2e8, 0x2df34a, True),
    ("table_copy", 0x2df578, 0x2df5ad, True),
    ("table_find_both_returns", 0x2e0e20, 0x2e0e4c, False),
    ("table_allocate", 0x2dfe64, 0x2dfed0, True),
    ("table_prepare", 0x2e3a70, 0x2e3aa1, True),
]
excerpt_spans = 0
for name in ("interaction_backend_adapters.asm", "trajectory_cache_helpers.asm"):
    for line in (WORK / name).read_text().splitlines():
        match = re.match(r"^([0-9a-f]+)\s+((?:[0-9a-f]{2} )+)", line)
        if not match:
            continue
        address = int(match[1], 16)
        data = bytes.fromhex(match[2])
        assert raw[address:address + len(data)] == data, (name, hex(address))
        excerpt_spans += 1
records = []
for name, start, end, from_pdata in ranges:
    if from_pdata:
        assert functions[start][0] == end, (name, "pdata end")
    listing = subprocess.check_output([
        "objdump", "-D", "-b", "binary", "-m", "i386:x86-64", "-Mintel",
        "--insn-width=16", f"--start-address={start}", f"--stop-address={end}", str(DLL)
    ], text=True)
    (OUT / (name + ".asm")).write_text(listing)
    instructions = []
    cursor = start
    for line in listing.splitlines():
        parts = line.split("\t")
        if len(parts) != 3 or not re.fullmatch(r"\s*[0-9a-f]+:", parts[0]):
            continue
        address = int(parts[0].strip()[:-1], 16)
        data = bytes.fromhex(parts[1])
        assert address == cursor and raw[address:address + len(data)] == data
        cursor += len(data)
        instructions.append((address, data, parts[2].strip()))
    assert cursor == end, (name, "not contiguous", hex(cursor), hex(end))
    starts = {p for p, _, _ in instructions}
    branches, external_branches, calls = [], [], []
    for address, _, instruction in instructions:
        match = re.match(r"(j\w+|call)\s+(?:0x)?([0-9a-f]+)(?:\s|$)", instruction)
        if not match:
            continue
        target = int(match[2], 16)
        edge = [hex(address), hex(target)]
        if match[1] == "call":
            calls.append(edge)
        elif start <= target < end:
            assert target in starts, (name, "branch into instruction", edge)
            branches.append(edge)
        else:
            external_branches.append(edge)
    records.append({"name": name, "start": hex(start), "end_exclusive": hex(end),
                    "bytes": end - start, "instructions": len(instructions),
                    "pdata_bounded": from_pdata, "internal_branches": branches,
                    "external_branches": external_branches, "direct_calls": calls})
result = {"confidence": "C", "dll_sha256": digest, "existing_excerpt_spans": excerpt_spans,
          "ranges": records,
          "limit": "Byte provenance and branch boundaries only; semantic review is separate."}
(OUT / "audit.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"existing_excerpt_spans": excerpt_spans, "ranges": len(records),
                  "bytes": sum(r["bytes"] for r in records),
                  "instructions": sum(r["instructions"] for r in records),
                  "internal_branches": sum(len(r["internal_branches"]) for r in records)}))
