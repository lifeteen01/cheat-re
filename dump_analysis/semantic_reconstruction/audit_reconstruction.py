#!/usr/bin/env python3
"""Read-only byte/metadata cross-checks for corrections used by the C++ pass."""
from pathlib import Path
import json
import re
import struct
import subprocess

ROOT = Path(__file__).resolve().parents[2]
OUT = Path(__file__).resolve().parent
DATA = ROOT / "dump_analysis"
binary = DATA / "unpacked/cheat.unpacked.dll"
image = binary.read_bytes()
checks = []


def exact(label, rva, expected):
    value = bytes.fromhex(expected)
    assert image[rva:rva + len(value)] == value, (label, hex(rva))
    checks.append({"claim": label, "rva": hex(rva), "bytes": expected})


def direct_call(site, target):
    assert image[site] == 0xE8
    assert site + 5 + struct.unpack_from("<i", image, site + 1)[0] == target
    checks.append({"call_site": hex(site), "target": hex(target)})


exact("constant-zero helper", 0x2CD32C, "33 c0 c3")
exact("entry-table compare follows FALSE range predicate", 0x31643E, "84 c0 74 e8 eb d4")
exact("desync entry-table compare follows FALSE range predicate", 0x3164E2, "84 c0 74 e8 eb db")
exact("custom method selection skips equal names", 0x3341B7, "85 c0 74 20")
exact("vector comparator returns false for equal and true for unequal/unordered", 0x2DF601,
      "32 c0 c3 b0 01 c3")
exact("approximate root magic seed and signed arithmetic shift", 0x2E3C9E,
      "b8 df 59 37 5f 66 0f 7e c1 d1 f9 2b c1")
exact("root thunk reaches the sample approximation", 0x3C8F34, "e9 4f ad f1 ff")
exact("class+0x1d8 value is input to method-by-pointer search", 0x2EAA5D,
      "48 8b 90 d8 01 00 00 48 85 d2 74 39 48 8b c8 e8 ef 9e 04 00")
exact("class resolver namespace/class argument order", 0x33426B,
      "4c 8b c5 48 8b d6 48 8b c8 e8 af 02 00 00")
exact("TOD_Sky getter immediate", 0x2F6B7C, "48 b8 63 77 7d 65 68 57 44 3e")
exact("Quaternion.Inverse getter immediate", 0x3738B8, "48 b8 7e 56 4f 5f 49 4f 58 3e")
inverse = bytes(value ^ (0x37 + i) for i, value in enumerate(image[0x3738BA:0x3738C2]))
assert inverse == b"Inverse\0"
exact("exception-directory byte size is copied without record-size division", 0x2CE1E0,
      "8b 84 08 a4 00 00 00 89 02")
exact("runtime lookup compares BeginAddress exactly", 0x2CE221, "8b 08 49 3b ca 74 0a")
exact("runtime lookup bounds record index with raw directory Size", 0x2CE228,
      "41 ff c0 45 3b c1 72 e9")
decoded = bytes(value ^ (0x37 + i) for i, value in enumerate(image[0x2F6B7E:0x2F6B86]))
assert decoded == b"TOD_Sky\0"
for site, target in [(0x316082, 0x2F1ACC), (0x3160CE, 0x2F1CC8),
                     (0x3160A8, 0x2EAA28), (0x3160F4, 0x2EAA28),
                     (0x316327, 0x2F3418), (0x316357, 0x2F3290),
                     (0x316390, 0x2F3058), (0x3163B6, 0x316458),
                     (0x315E8A, 0x2F6B7C), (0x36A640, 0x367F4C),
                     (0x36A79F, 0x367950), (0x339B93, 0x3BD114)]:
    direct_call(site, target)
config = json.loads((DATA / "C_vmp/cfg_users.json").read_text())
assert config["Bools.DisablePlayerCulling"]["users"] == ["0x338f30"]
dead_count = sum(not value["users"] for value in config.values())
assert dead_count == 390
annotated = (DATA / "static/cheat_annot.asm").read_text().splitlines()
culling_value_refs = [line for line in annotated if re.search(r"# 0x3e7108\b", line)]
assert len(culling_value_refs) == 1 and culling_value_refs[0].startswith("339b7e\tlea")

# These are data-only objdump calls on the preserved virtual-layout DLL.
spans = [(0x33416C, 0x334295), (0x334960, 0x334A8D),
         (0x334FF4, 0x33503E), (0x3CA884, 0x3CA8B5)]
raw = []
for lo, hi in spans:
    command = ["objdump", "-D", "-b", "binary", "-m", "i386:x86-64", "-M", "intel", "-w",
               f"--start-address={lo}", f"--stop-address={hi}", str(binary)]
    raw.append("COMMAND: " + " ".join(command) + "\n" +
               subprocess.run(command, capture_output=True, text=True, check=True).stdout)
(OUT / "raw_metadata.asm").write_text("\n".join(raw))
result = {"byte_and_call_checks": len(checks), "checks": checks,
          "tod_sky_decoded": decoded.rstrip(b"\0").decode(),
          "quaternion_method_decoded": inverse.rstrip(b"\0").decode(),
          "zero_reader_config_keys": dead_count,
          "culling_value_references_in_supplied_disassembly": culling_value_refs,
          "limits": "Static supplied inputs only; no whole-program dynamic absence or live installation claim."}
(OUT / "independent_audit.json").write_text(json.dumps(result, indent=2) + "\n")
print(f"PASS: {len(checks)} byte/call checks, TOD_Sky decode, 390 zero-reader keys, menu-only culling reference")
