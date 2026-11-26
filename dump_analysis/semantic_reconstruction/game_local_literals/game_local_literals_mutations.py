"""Compile isolated semantic regressions; never mutate production source."""
from pathlib import Path
import hashlib
import json
import subprocess

root = Path('/home/john/Desktop/cheat_re')
src = root / 'source/reconstructed'
out = Path(__file__).parent
cache = out / 'objects_strict'
scratch = out / 'mutations'
scratch.mkdir(exist_ok=True)
compiler = root / 'dump_analysis/semantic_reconstruction/toolchain/usr/bin/x86_64-linux-gnu-g++-15'
flags = json.loads((cache / 'game_local_literals_analysis.json').read_text())['flags']
cases = [
    ('full_width_store', 'game_local_literals_analysis.cpp',
     'extent(game, *v.address + n, data.size(), site);',
     'extent(game, *v.address + n, 1, site);'),
    ('signed_compare', 'game_local_literals_analysis.cpp',
     'read<std::int8_t>(game, name + i, 0x3ca8a5)',
     'read<std::uint8_t>(game, name + i, 0x3ca8a5)'),
    ('conditional_decode', 'game_local_literals_analysis.cpp',
     'if (byte(game, result.value, s.guard_offset, s.guard))',
     'if (true)'),
    ('owned_text_terminator', 'game_local_literals_bindings.cpp',
     'if (!literal.terminated)', 'if (false)'),
]
results = []
for name, filename, before, after in cases:
    original = src / filename
    data = original.read_text()
    assert data.count(before) == 1, (name, data.count(before))
    digest = hashlib.sha256(original.read_bytes()).hexdigest()
    mutant = scratch / (name + '.cpp')
    mutant.write_text(data.replace(before, after))
    obj, exe = scratch / (name + '.o'), scratch / name
    subprocess.run([str(compiler), *flags, '-c', str(mutant), '-o', str(obj)],
                   check=True, capture_output=True, text=True)
    objects = [p for p in sorted(cache.glob('*.o')) if p.stem != original.stem]
    subprocess.run([str(compiler), *flags, *map(str, objects), str(obj),
                    '-Wl,--gc-sections', '-o', str(exe)],
                   check=True, capture_output=True, text=True)
    run = subprocess.run([str(exe)], capture_output=True, text=True)
    assert run.returncode != 0, (name, 'regression escaped fixtures')
    assert hashlib.sha256(original.read_bytes()).hexdigest() == digest
    results.append(dict(case=name, detected=True, returncode=run.returncode,
                        diagnostic=run.stderr.strip(), original_sha256=digest))
(scratch / 'results.json').write_text(json.dumps(results, indent=2) + '\n')
print('PASS isolated mutant detection', len(results))
