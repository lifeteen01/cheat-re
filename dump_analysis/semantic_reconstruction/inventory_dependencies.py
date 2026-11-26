#!/usr/bin/env python3
"""Inventory documented uncertainty without declaring local callees external."""
from pathlib import Path
from collections import defaultdict
import bisect
import hashlib
import json
import re
import struct

ROOT = Path(__file__).resolve().parents[2]
SOURCE = ROOT / "source/reconstructed"
image = (ROOT / "dump_analysis/unpacked/cheat.unpacked.dll").read_bytes()
pe = struct.unpack_from("<I", image, 0x3c)[0]
pdata, extent = struct.unpack_from("<II", image, pe + 24 + 112 + 3 * 8)
functions = sorted(set(struct.unpack_from("<III", image, pdata + n)
                       for n in range(0, extent, 12)))
starts = [entry[0] for entry in functions]
instructions = []
for line in (ROOT / "dump_analysis/static/cheat_annot.asm").read_text().splitlines():
    match = re.match(r"^([0-9a-f]+)\t(.*)", line)
    if match:
        instructions.append((int(match[1], 16), match[2]))
sites = [row[0] for row in instructions]
definitions = defaultdict(list)
for path in sorted(SOURCE.glob("*.cpp")):
    text = path.read_text()
    for match in re.finditer(r"\b(\w+_([0-9a-f]{6}))\s*\(", text):
        pos, depth = match.end(), 1
        while pos < len(text) and depth:
            depth += (text[pos] == "(") - (text[pos] == ")")
            pos += 1
        following = re.match(r"\s*(?:const\s*)?(?:noexcept\s*)?\{", text[pos:])
        if following:
            definitions[int(match[2], 16)].append({
                "file": str(path.relative_to(ROOT)),
                "line": text.count("\n", 0, match.start()) + 1,
                "name": match[1],
                "confidence": "I",
                "limit": "A named body is not proof of complete translation or binding.",
            })
records = defaultdict(list)
for path in sorted(SOURCE.glob("*.md")):
    if path.name == "README.md":
        continue
    for number, line in enumerate(path.read_text().splitlines(), 1):
        if "[U]" not in line:
            continue
        for token in re.finditer(r"(?<![\w])(?:0x)?([23][0-9a-fA-F]{5})(?![\w])", line):
            address = int(token[1], 16)
            if address >= len(image):
                continue
            owner = bisect.bisect_right(starts, address) - 1
            native = functions[owner] if owner >= 0 and functions[owner][0] <= address < functions[owner][1] else None
            if native is None and address not in definitions:
                continue
            records[address].append({"file": str(path.relative_to(ROOT)), "line": number,
                                     "text": line, "confidence": "U"})
results = []
native_owners = {}
for address, references in sorted(records.items()):
    owner = bisect.bisect_right(starts, address) - 1
    native = functions[owner] if owner >= 0 and functions[owner][0] <= address < functions[owner][1] else None
    calls = []
    if native and hex(native[0]) not in native_owners:
        for site, instruction in instructions[bisect.bisect_left(sites, native[0]):bisect.bisect_left(sites, native[1])]:
            call = re.match(r"call\s+0x([0-9a-f]+)", instruction)
            if call:
                calls.append({"site": hex(site), "target": hex(int(call[1], 16))})
        native_owners[hex(native[0])] = {"confidence": "C", "begin": hex(native[0]),
                                       "end": hex(native[1]), "direct_calls": calls}
    excluded = address in {0x2cbd24, 0x3cdbd4, 0x3cdbba}
    results.append({"rva": hex(address), "confidence": "U",
                    "status": "detection_scope_only" if excluded else "requires_semantic_reconciliation",
                    "native_owner": [hex(value) for value in native[:2]] if native else None,
                    "is_pdata_entry": bool(native and native[0] == address),
                    "named_cpp_bodies": definitions.get(address, []),
                    "references": references})
result = {"confidence": "I", "input_sha256": hashlib.sha256(image).hexdigest(),
          "limit": "Uncertainty inventory from current reports. Native owner/calls are evidence; semantic classification, completeness, binding and foreign ABI remain manual review work. No unknown is relabeled an external implementation.",
          "document_sha256": {str(path.relative_to(ROOT)): hashlib.sha256(path.read_bytes()).hexdigest()
                              for path in sorted(SOURCE.glob("*.md"))},
          "native_owners": native_owners, "records": results}
(SOURCE / "dependency_inventory.json").write_text(json.dumps(result, indent=2) + "\n")
print(f"Inventoried {len(results)} documented RVA uncertainties; no completion claims made")
