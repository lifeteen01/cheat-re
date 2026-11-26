"""Byte provenance and exact controller/argument-packaging dependencies."""
from pathlib import Path
import hashlib
import json
import re
import subprocess

ROOT = Path(__file__).resolve().parents[3]
OUT = Path(__file__).resolve().parent
IMAGE = ROOT / "dump_analysis/unpacked/cheat.unpacked.dll"
data = IMAGE.read_bytes()
inventory = json.loads((OUT / "inventory.json").read_text())
selected = {0x32308c, 0x368244, 0x368468, 0x3691c0, 0x36a1e4, 0x3714c4,
            0x371688, 0x3717c0, 0x371df4, 0x372bf4, 0x373eb4, 0x372ba4}

def audit(begin, end):
    text = subprocess.check_output([
        "objdump", "-D", "-b", "binary", "-m", "i386:x86-64", "-M", "intel",
        "--insn-width=16", f"--start-address={begin}", f"--stop-address={end}", str(IMAGE)
    ], text=True)
    (OUT / f"{begin:x}.asm").write_text(text)
    body, branches, calls = [], [], []
    for line in text.splitlines():
        m = re.match(r"\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s+)+)\s*(\S.*)", line)
        if not m:
            continue
        at, raw = int(m[1], 16), bytes.fromhex(m[2])
        assert data[at:at + len(raw)] == raw
        body.append(raw)
        target = re.match(r"(call|j\w+)\s+0x([0-9a-f]+)", m[3])
        if target:
            entry = {"site": hex(at), "target": hex(int(target[2], 16)), "instruction": m[3]}
            (calls if target[1] == "call" else branches).append(entry)
    assert b"".join(body) == data[begin:end]
    return {"begin": hex(begin), "end_exclusive": hex(end), "bytes": end - begin,
            "instructions": len(body), "sha256": hashlib.sha256(data[begin:end]).hexdigest(),
            "calls": calls, "branches_and_tails": branches}

roots = []
for row in inventory["ranges"]:
    begin, end = int(row["begin"], 16), int(row["end_exclusive"], 16)
    if begin not in selected:
        continue
    result = audit(begin, end)
    assert result["sha256"] == row["sha256"]
    result["status"] = "C: concrete root; I: typed output projection and shared folds"
    roots.append(result)
assert len(roots) == 12

source = (ROOT / "source/reconstructed/game_helpers_analysis.cpp").read_text()
pattern = r"\{(0x[0-9a-f]+), (0x[0-9a-f]+), (0x[0-9a-f]+), (0x[0-9a-f]+), (0x[0-9a-f]+), (0x[0-9a-f]+), (0x[0-9a-f]+)\}"
staging = []
for match in re.finditer(pattern, source):
    begin, end, flag, target, context, offset, executor = (int(x, 16) for x in match.groups())
    result = audit(begin, end)
    destinations = {int(x["target"], 16) for x in result["calls"] + result["branches_and_tails"]}
    assert executor in destinations
    staging.append({"wrapper": hex(begin), "end_exclusive": hex(end), "executor": hex(executor),
                    "context": hex(context), "flags": hex(flag), "target_cell": hex(target),
                    "game_offset": hex(offset), "native_sha256": result["sha256"]})
assert len(staging) == 10

record = {
    "input_sha256": hashlib.sha256(data).hexdigest(), "root_ranges": roots,
    "root_bytes": sum(x["bytes"] for x in roots),
    "root_instructions": sum(x["instructions"] for x in roots),
    "shared_hook_kind_guard": audit(0x3164fc, 0x316504),
    "shared_argument_staging_callers": staging,
    "shared_packers": ["2cb9fc..2cba4f", "2d2094..2d2106", "32b1c8..32b239"],
    "scope": "Twelve local controllers, copied-byte hook installation and shared argument composition",
    "limits": ["Typed vector output instead of arbitrary raw output aliases",
               "Actual matching game effects remain supplied; no numeric pointer executes",
               "Unknown native pointer/type/return bytes remain span-gated and unmaterialized"]
}
(OUT / "audit.json").write_text(json.dumps(record, indent=2) + "\n")
print(f"PASS {len(roots)} roots / {record['root_bytes']} bytes / {record['root_instructions']} instructions; ten shared staging caller routes")
