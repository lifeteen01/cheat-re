"""Fresh disassembly and byte provenance for the selectable channel controllers."""
from pathlib import Path
import hashlib
import json
import re
import subprocess

ROOT = Path(__file__).resolve().parents[3]
OUT = Path(__file__).resolve().parent
BINARY = ROOT / "dump_analysis/unpacked/cheat.unpacked.dll"
data = BINARY.read_bytes()
extents = [
    (0x3b54ac, 0x3b54f9), (0x3b54fc, 0x3b5551),
    (0x3b5824, 0x3b588d), (0x3b5890, 0x3b58f2),
    (0x3b563c, 0x3b569d), (0x3b4f88, 0x3b4f93),
    (0x39c010, 0x39c043), (0x3923c8, 0x3923d7),
]
ranges = []
for begin, end in extents:
    assembly = subprocess.check_output([
        "objdump", "-D", "-b", "binary", "-m", "i386:x86-64", "-M", "intel",
        "--insn-width=16", f"--start-address={begin}", f"--stop-address={end}", str(BINARY)
    ], text=True)
    (OUT / f"{begin:x}.asm").write_text(assembly)
    instructions, calls, branches = [], [], []
    for line in assembly.splitlines():
        match = re.match(r"\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s+)+)\s*(\S.*)", line)
        if not match:
            continue
        at = int(match[1], 16)
        raw = bytes.fromhex(match[2])
        assert data[at:at + len(raw)] == raw
        instructions.append((at, raw, match[3]))
        target = re.match(r"(call|j\w+)\s+0x([0-9a-f]+)", match[3])
        if target:
            record = {"site": hex(at), "target": hex(int(target[2], 16)),
                      "instruction": match[3]}
            (calls if target[1] == "call" else branches).append(record)
    assert b"".join(row[1] for row in instructions) == data[begin:end]
    ranges.append({"begin": hex(begin), "end_exclusive": hex(end), "bytes": end - begin,
                   "instructions": len(instructions), "calls": calls, "branches": branches,
                   "sha256": hashlib.sha256(data[begin:end]).hexdigest(),
                   "status": "C: concrete controller/shared fold; buffers use explicit owned adaptation"})
record = {"input_sha256": hashlib.sha256(data).hexdigest(), "ranges": ranges,
          "bytes": sum(row["bytes"] for row in ranges),
          "instructions": sum(row["instructions"] for row in ranges),
          "shared_dependencies": {
              "0x3a8094": "existing draw_core_switch_channel_3a8094",
              "0x2cc350": "four-float local Vec4 construction; no raw native stack address fabricated"
          },
          "limits": ["No sample execution", "Owned splitter/draw-buffer ABI adaptation",
                     "No full ImGui table implementation claim"]}
(OUT / "audit.json").write_text(json.dumps(record, indent=2) + "\n")
print(f"PASS {len(ranges)} byte ranges, {record['bytes']} bytes, {record['instructions']} instructions")
