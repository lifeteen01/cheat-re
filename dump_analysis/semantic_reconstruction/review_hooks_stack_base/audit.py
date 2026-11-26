#!/usr/bin/env python3
"""Read-only byte provenance audit. Writes only this review directory; executes no input code."""
from pathlib import Path
import hashlib
import json
import re
import struct

ROOT = Path(__file__).resolve().parents[3]
OUT = Path(__file__).resolve().parent
DLL = ROOT / 'dump_analysis/unpacked/cheat.unpacked.dll'
data = DLL.read_bytes()
paths = []
for folder in ('01_hooks', '03_stack'):
    paths.extend(sorted((OUT.parent / folder).glob('*.asm')))
for filename in ('game_base_dependencies.asm', 'game_base_math_dependencies.asm',
                 'projection_dependencies.asm', 'instant_predicates_evidence.asm',
                 'base_alternate_returns.asm', 'string_range_conversion.asm',
                 'managed_conversion_worker.asm', 'binding_fields_evidence.asm'):
    paths.append(OUT.parent / filename)
records = []
for path in paths:
    count, mismatches = 0, []
    for line in path.read_text().splitlines():
        match = re.match(r'^([0-9a-fA-F]{6,16})\s+((?:[0-9a-fA-F]{2} )*[0-9a-fA-F]{2})\s{2,}', line)
        if not match:
            continue
        address, expected = int(match[1], 16), bytes.fromhex(match[2])
        count += 1
        if data[address:address + len(expected)] != expected:
            mismatches.append(hex(address))
    records.append({'path': str(path.relative_to(ROOT)), 'spans': count, 'mismatches': mismatches})
sources = ('01_hooks.cpp', '03_stack_spoof_spoofcall.cpp', 'game_base_analysis.cpp',
           'hooks_analysis.hpp', 'game_base_analysis.hpp', 'internal_analysis.hpp',
           'hooks_checks.cpp', 'game_base_checks.cpp')
pe = struct.unpack_from('<I', data, 0x3c)[0]
start, size = struct.unpack_from('<II', data, pe + 0xa0)
pdata = [struct.unpack_from('<III', data, r) for r in range(start, start + size, 12)]
local = (0x315c34, 0x362118, 0x3217ec, 0x32189c, 0x3218c4, 0x36f5cc,
         0x334bf4, 0x2ce7c8, 0x2ce130, 0x2cdfc4, 0x2ce074, 0x2cdea8)
result = {
    'input': str(DLL), 'input_sha256': hashlib.sha256(data).hexdigest(),
    'layout': 'file offset = RVA',
    'source_sha256': {f'source/reconstructed/{n}': hashlib.sha256((ROOT / 'source/reconstructed' / n).read_bytes()).hexdigest() for n in sources},
    'excerpt_checks': records, 'spans': sum(r['spans'] for r in records),
    'mismatches': sum(len(r['mismatches']) for r in records),
    'local_pdata_ranges_exclusive': {hex(p): [[hex(v) for v in row] for row in pdata if row[0] <= p < row[1]] for p in local},
    'float_constants': {hex(p): {'bits': hex(struct.unpack_from('<I', data, p)[0]), 'value': struct.unpack_from('<f', data, p)[0]} for p in (0x28db54, 0x2930c0, 0x293258, 0x2931fc, 0x28e1c0, 0x2a875c, 0x293098, 0x29325c, 0x28daf8, 0x2930f4, 0x28dae0, 0x28dafc, 0x28dae4, 0x28e1cc, 0x2930d0)}
}
(OUT / 'byte_provenance.json').write_text(json.dumps(result, indent=2) + '\n')
print(f"[C] {result['spans']} recorded byte spans; {result['mismatches']} mismatches; DLL SHA256 {result['input_sha256']}")
assert result['mismatches'] == 0
assert result['input_sha256'] == 'ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
