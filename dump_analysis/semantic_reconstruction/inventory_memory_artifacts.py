#!/usr/bin/env python3
"""Read-only bounded PE/export and IL2CPP-header scan of supplied dump memory."""
from pathlib import Path
import bisect
import json
import mmap
import struct

ROOT = Path(__file__).resolve().parents[2]
OUT = Path(__file__).resolve().parent
results = []
for path in sorted((ROOT / "dump_analysis/dumps").rglob("*.dmp")):
    with path.open("rb") as file, mmap.mmap(file.fileno(), 0, access=mmap.ACCESS_READ) as data:
        signature, version, count, directory = struct.unpack_from("<IIII", data)
        if signature != 0x504d444d or count > 10000:
            raise ValueError("unsupported minidump header")
        regions = []
        for n in range(count):
            kind, size, offset = struct.unpack_from("<III", data, directory + n * 12)
            if kind == 9:
                entries, cursor = struct.unpack_from("<QQ", data, offset)
                if entries > 1000000 or size < 16 + entries * 16:
                    raise ValueError("invalid Memory64ListStream")
                for i in range(entries):
                    base, length = struct.unpack_from("<QQ", data, offset + 16 + i * 16)
                    regions.append((base, length, cursor))
                    cursor += length
            elif kind == 5:
                entries = struct.unpack_from("<I", data, offset)[0]
                if entries > 1000000 or size < 4 + entries * 16:
                    raise ValueError("invalid MemoryListStream")
                for i in range(entries):
                    regions.append(struct.unpack_from("<QII", data, offset + 4 + i * 16))
        regions = sorted(set(regions))
        if any(offset + length > len(data) for base, length, offset in regions):
            raise ValueError("memory region outside dump")
        starts = [base for base, _, _ in regions]

        def read(address, length):
            parts = []
            while length:
                i = bisect.bisect_right(starts, address) - 1
                if i < 0:
                    return None
                base, size, offset = regions[i]
                available = base + size - address
                if available <= 0:
                    return None
                take = min(available, length)
                parts.append(data[offset + address - base:offset + address - base + take])
                address += take
                length -= take
            return b"".join(parts)

        def string(address, maximum=4096):
            result = bytearray()
            for i in range(maximum):
                ch = read(address + i, 1)
                if ch is None:
                    return None
                if ch == b"\0":
                    return result.decode("ascii", errors="replace")
                result.extend(ch)
            return None

        images, magic, strings = [], [], []
        seen = set()
        for base, size, offset in regions:
            for needle in (b"GameAssembly.dll\0", b"UnityPlayer.dll\0", b"il2cpp_domain_get\0",
                           "GameAssembly.dll\0".encode("utf-16le"), "UnityPlayer.dll\0".encode("utf-16le")):
                position = data.find(needle, offset, offset + size)
                while position >= 0:
                    strings.append({"address": hex(base + position - offset), "needle_hex": needle.hex()})
                    position = data.find(needle, position + 1, offset + size)
            position = data.find(b"\xaf\x1b\xb1\xfa", offset, offset + size)
            while position >= 0:
                address = base + position - offset
                header = read(address, 16)
                if header:
                    words = struct.unpack("<4I", header)
                    magic.append({"address": hex(address), "version_word": words[1],
                                  "plausible_version_16_to_40": 16 <= words[1] <= 40,
                                  "header_hex": header.hex()})
                position = data.find(b"\xaf\x1b\xb1\xfa", position + 1, offset + size)
            position = data.find(b"MZ", offset, offset + size)
            while position >= 0:
                address = base + position - offset
                position = data.find(b"MZ", position + 1, offset + size)
                if address in seen:
                    continue
                seen.add(address)
                dos = read(address, 64)
                if not dos:
                    continue
                pe_offset = struct.unpack_from("<i", dos, 0x3c)[0]
                if not 64 <= pe_offset <= 65536:
                    continue
                nt = read(address + pe_offset, 0x90)
                if not nt or nt[:4] != b"PE\0\0":
                    continue
                machine = struct.unpack_from("<H", nt, 4)[0]
                optional = struct.unpack_from("<H", nt, 24)[0]
                if optional not in (0x10b, 0x20b):
                    continue
                export_offset = 0x88 if optional == 0x20b else 0x78
                export_rva, export_size = struct.unpack_from("<II", nt, export_offset)
                record = {"base": hex(address), "machine": hex(machine),
                          "export_directory": [hex(export_rva), export_size],
                          "export_name": None, "il2cpp_exports": [], "export_scan_complete": True}
                export = read(address + export_rva, 40) if export_rva else None
                if export:
                    name = struct.unpack_from("<I", export, 12)[0]
                    record["export_name"] = string(address + name)
                    named, names_rva = struct.unpack_from("<II", export, 24)[0], struct.unpack_from("<I", export, 32)[0]
                    if named > 200000:
                        record["export_scan_complete"] = False
                    else:
                        for i in range(named):
                            entry = read(address + names_rva + i * 4, 4)
                            text = string(address + struct.unpack("<I", entry)[0]) if entry else None
                            if text is None:
                                record["export_scan_complete"] = False
                            elif text.startswith("il2cpp_"):
                                record["il2cpp_exports"].append(text)
                elif export_rva:
                    record["export_scan_complete"] = False
                images.append(record)
        results.append({"path": str(path.relative_to(ROOT)), "memory_regions": len(regions),
                        "mapped_bytes": sum(size for _, size, _ in regions), "pe_headers": images,
                        "metadata_magic_hits": magic, "clear_name_hits": strings})
result = {"confidence": "C", "scope": "Only supplied minidump MemoryList/Memory64List bytes; read-only.",
          "limits": "PE candidates require MZ/PE and e_lfanew64..65536. Header-erased, encrypted, uncaptured or incompatible images are not excluded. Metadata magic/version and names do not alone establish a matching artifact/ABI.",
          "minidumps": results}
(OUT / "memory_artifact_inventory.json").write_text(json.dumps(result, indent=2) + "\n")
for dump in results:
    print(dump["path"], "regions", dump["memory_regions"], "PEs", len(dump["pe_headers"]),
          "IL2CPP export images", sum(bool(pe["il2cpp_exports"]) for pe in dump["pe_headers"]),
          "plausible metadata headers", sum(hit["plausible_version_16_to_40"] for hit in dump["metadata_magic_hits"]),
          "clear-name hits", len(dump["clear_name_hits"]))
