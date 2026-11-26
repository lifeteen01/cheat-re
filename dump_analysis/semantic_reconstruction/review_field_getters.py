#!/usr/bin/env python3
"""Independent descriptor/branch review of the 28 translated direct getters."""
from pathlib import Path
import hashlib
import json
import re
import struct
import subprocess

ROOT = Path(__file__).resolve().parents[2]
OUT = Path(__file__).resolve().parent / "review_field_getters"
OUT.mkdir(exist_ok=True)
SOURCE = ROOT / "source/reconstructed/field_getters_analysis.cpp"
DLL = ROOT / "dump_analysis/unpacked/cheat.unpacked.dll"
raw = DLL.read_bytes()
assert hashlib.sha256(raw).hexdigest() == "ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090"
specs = re.findall(r"\{(0x[0-9a-f]+),(0x[0-9a-f]+),(0x[0-9a-f]+),FieldGetterKind::(\w+),(0x[0-9a-f]+u?|0)\}", SOURCE.read_text())
assert len(specs) == 28
loads = {"pointer": "48 8b 00", "raw_u32": "8b 00", "byte": "8a 00", "scalar": "f3 0f 10 00", "predicate": "f3 0f 10 00"}
rows = []
for start, end, offset, kind, invalid in specs:
    begin, finish, displacement = int(start, 16), int(end, 16), int(offset, 16)
    code = raw[begin:finish]
    text = subprocess.check_output(["objdump", "-D", "-b", "binary", "-m", "i386:x86-64", "-Mintel",
        "--insn-width=16", f"--start-address={begin}", f"--stop-address={finish}", str(DLL)], text=True)
    (OUT / (start + ".asm")).write_text(text)
    instructions = []
    cursor = begin
    for line in text.splitlines():
        parts = line.split("\t")
        if len(parts) != 3 or not re.fullmatch(r"\s*[0-9a-f]+:", parts[0]):
            continue
        address = int(parts[0].strip()[:-1], 16)
        data = bytes.fromhex(parts[1])
        assert address == cursor and raw[address:address + len(data)] == data
        instructions.append((address, data, parts[2].strip()))
        cursor += len(data)
    assert cursor == finish and instructions[-1][2] == "ret"
    starts = {address for address, _, _ in instructions}
    calls, branches = [], []
    for address, _, instruction in instructions:
        m = re.match(r"(call|j\w+)\s+0x([0-9a-f]+)", instruction)
        if not m:
            continue
        target = int(m[2], 16)
        if m[1] == "call":
            calls.append(target)
        else:
            assert target in starts
            branches.append([hex(address), hex(target)])
    assert calls == [0x2caf08, 0x2dee3c]
    assert bytes([0xba]) + struct.pack("<I", displacement) in code
    assert bytes.fromhex(loads[kind]) in code
    invalid_bits = int(invalid.rstrip("u"), 0)
    if kind in ("raw_u32", "pointer"):
        assert bytes.fromhex("83 c8 ff" if invalid_bits else "33 c0") in code
    elif kind == "scalar":
        assert bytes.fromhex("0f 57 c0") in code
    elif kind == "predicate":
        assert begin == 0x372184 and bytes.fromhex("0f 97 c0") in code
        assert raw[0x28d24c:0x28d250] == bytes(4)
    else:
        assert begin == 0x3693b0
    rows.append({"rva": start, "end_exclusive": end, "offset": offset,
                 "kind": kind, "invalid_bits": hex(invalid_bits),
                 "instructions": len(instructions), "branches": branches,
                 "range_sha256": hashlib.sha256(code).hexdigest()})
# [C] The shared guard implements unsigned wrapping subtraction and inclusive BE.
assert raw[0x2caf10:0x2caf28] == bytes.fromhex("488d810000f0ff48b9feffefffff070000483bc10f96c0c3")
assert raw[0x2dee3c:0x2dee4a] == bytes.fromhex("4c8d041148f7d9481bc04923c0c3")
result = {"confidence": "C", "source_sha256": hashlib.sha256(SOURCE.read_bytes()).hexdigest(),
          "descriptor_count": len(rows), "descriptors": rows,
          "semantics_review": "Guard/default paths, offset, load width, raw ID/sentinel handling, bool COMISS/SETA, shared base aliases and four binder argument projections reviewed against source and native bytes.",
          "limits": "Owned snapshot bounds/status adaptations; signaling-NaN FP exception behavior and live game ABI are not asserted."}
(OUT / "audit.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"descriptors": len(rows), "instructions": sum(r["instructions"] for r in rows), "branches": sum(len(r["branches"]) for r in rows)}))
