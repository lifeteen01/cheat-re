"""Extract only the five font spans referenced by35ccf4; never execute the dump."""
from pathlib import Path
import hashlib
import json
import struct

OUT = Path(__file__).resolve().parent
ROOT = OUT.parents[3]
DUMP = ROOT / "dump_analysis/unpacked/cheat.unpacked.dll"
EXPECTED = "ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090"
SPANS = (
    (0x2605F0, 0xE25C, "family_0.otf", "35cd69"),
    (0x26E850, 0xE43C, "family_1.otf", "35cd89"),
    (0x27CC90, 0x2CF8, "family_2.ttf", "35cdad"),
    (0x24F330, 0x112B4, "default_primary.ttf", "35cfcb/35d043"),
    (0x248F30, 0x6400, "default_secondary.ttf", "35d008"),
)


def digest(data):
    return hashlib.sha256(data).hexdigest()


def font_names(data):
    if data[:4] not in (b"OTTO", b"\0\1\0\0"):
        raise ValueError("Referenced font has unsupported SFNT signature")
    count = struct.unpack_from(">H", data, 4)[0]
    tables = {}
    for index in range(count):
        tag, _, offset, size = struct.unpack_from(">4sIII", data, 12 + index * 16)
        if offset + size > len(data):
            raise ValueError("SFNT table exceeds copied span")
        tables[tag] = (offset, size)
    offset, size = tables[b"name"]
    table = data[offset:offset + size]
    _, count, storage = struct.unpack_from(">HHH", table)
    names = set()
    for index in range(count):
        platform, _, _, name, length, position = struct.unpack_from(">HHHHHH", table, 6 + index * 12)
        if name not in (1, 2, 4, 6):
            continue
        start = storage + position
        if start + length > len(table):
            raise ValueError("SFNT name exceeds copied table")
        raw = table[start:start + length]
        names.add((name, raw.decode("utf-16-be" if platform in (0, 3) else "mac-roman")))
    return [{"name_id": key, "value": value} for key, value in sorted(names)]


data = DUMP.read_bytes()
if digest(data) != EXPECTED:
    raise ValueError("Preserved input hash mismatch")
assets = []
for rva, size, filename, reference in SPANS:
    font = data[rva:rva + size]  # This input uses virtual layout: offset equals RVA.
    if len(font) != size:
        raise ValueError("Font span exceeds preserved input")
    names = font_names(font)
    target = OUT / filename
    target.write_bytes(font)
    assets.append({"rva": hex(rva), "size": size, "sha256": digest(font),
                   "file": str(target.relative_to(ROOT)), "names": names,
                   "native_reference": reference})
if digest(DUMP.read_bytes()) != EXPECTED:
    raise ValueError("Preserved input changed during extraction")
record = {"input_sha256": EXPECTED, "layout": "file offset equals RVA",
          "assets": assets, "integrated_into_scene": False,
          "theme_implementation": "source/reconstructed/frame_dependencies_theme.cpp",
          "setup_implementation": "source/reconstructed/frame_dependencies_ui_setup.cpp",
          "scope": "Static font extraction and SFNT name-table identity only; no rendering equivalence"}
(OUT / "recovery.json").write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps(record, indent=2))
