#!/usr/bin/env python3
"""Read-only inventory of matching-game filenames and minidump module streams."""
from pathlib import Path
import json
import struct

OUT = Path(__file__).resolve().parent
ROOT = OUT.parents[1]
DATA = ROOT / "dump_analysis"
targets = ("gameassembly", "unityplayer", "global-metadata")
named = []
for line in (DATA / "MANIFEST.sha256").read_text().splitlines():
    if not line.strip():
        continue
    name = line.split(None, 1)[1].lstrip("*")
    if any(target in Path(name).name.lower() for target in targets):
        named.append(name)
dumps = []
for path in sorted((DATA / "dumps").rglob("*.dmp")):
    modules = []
    with path.open("rb") as source:
        header = source.read(32)
        signature, version, count, directory = struct.unpack_from("<IIII", header)
        if signature != 0x504d444d or count > 10000:
            raise ValueError(f"unexpected minidump header: {path}")
        source.seek(directory)
        entries = [struct.unpack("<III", source.read(12)) for _ in range(count)]
        for kind, size, rva in entries:
            if kind != 4:
                continue
            source.seek(rva)
            module_count = struct.unpack("<I", source.read(4))[0]
            if module_count > 100000 or size < 4 + module_count * 108:
                raise ValueError("invalid module-list size")
            for index in range(module_count):
                source.seek(rva + 4 + index * 108)
                raw = source.read(108)
                base, image_size = struct.unpack_from("<QI", raw)
                name_rva = struct.unpack_from("<I", raw, 20)[0]
                source.seek(name_rva)
                name_size = struct.unpack("<I", source.read(4))[0]
                if name_size > 1048576 or name_size % 2:
                    raise ValueError("invalid module name size")
                name = source.read(name_size).decode("utf-16le", errors="replace")
                modules.append({"base": hex(base), "size": image_size, "name": name})
    matches = [module for module in modules if any(target in module["name"].lower() for target in targets)]
    dumps.append({"path": str(path.relative_to(ROOT)), "module_count": len(modules),
                  "matching_game_modules": matches, "modules": modules})
result = {"manifest_filename_matches": named, "minidumps": dumps,
          "confidence": "C", "scope": "Manifest filenames and minidump ModuleListStream records only.",
          "limitations": "Unlisted/manual images, encrypted payload contents and matching-build ABI identities are not inferred."}
(OUT / "artifact_inventory.json").write_text(json.dumps(result, indent=2) + "\n")
print(f"Inventoried {len(dumps)} module streams; matching filenames={len(named)}, "
      f"matching module records={sum(len(dump['matching_game_modules']) for dump in dumps)}")
