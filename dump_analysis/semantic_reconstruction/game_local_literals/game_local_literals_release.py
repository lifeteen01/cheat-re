"""Freeze this wave only after immutable strict/sanitizer and regression checks."""
from pathlib import Path
import hashlib
import json

root = Path('/home/john/Desktop/cheat_re')
out = Path(__file__).parent
src = root / 'source/reconstructed'


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


strict = json.loads((out / 'sources_strict.json').read_text())
sanitize = json.loads((out / 'sources_sanitize.json').read_text())
assert strict == sanitize
assert all(digest(Path(p)) == h for p, h in strict.items())
assert 'PASS GCC15 strict C++20 game local literal fixtures strict' in (out / 'strict.log').read_text()
assert 'PASS GCC15 strict C++20 game local literal fixtures sanitize' in (out / 'sanitize.log').read_text()
mutations = json.loads((out / 'mutations/results.json').read_text())
assert len(mutations) == 4 and all(m['detected'] and m['returncode'] != 0 for m in mutations)
for m in mutations:
    filename = ('game_local_literals_bindings.cpp' if m['case'] == 'owned_text_terminator'
                else 'game_local_literals_analysis.cpp')
    assert digest(src / filename) == m['original_sha256']
ledger = json.loads((out / 'semantic_range_ledger.json').read_text())
assert digest(root / 'dump_analysis/unpacked/cheat.unpacked.dll') == ledger['sample_sha256']
owned = sorted(src.glob('game_local_literals_*'))
assert len(owned) == 7
evidence = [p for p in sorted(out.iterdir()) if p.is_file() and
            p.suffix in ('.py', '.json', '.asm', '.log', '.cpp') and
            p.name != 'game_local_literals_release.json']
evidence.append(out / 'mutations/results.json')
release = dict(
    status='frozen/released', check='check_game_local_literals_reconstruction()',
    strict='PASS GCC15 C++20 Werror _GLIBCXX_ASSERTIONS -ffp-contract=off',
    sanitize='PASS ASan/UBSan no-recover',
    mutations='PASS 4 isolated scratch-only detections',
    immutable_transitive_inputs=len(strict), counts=ledger['counts'],
    owned_files={str(p): digest(p) for p in owned},
    evidence={str(p): digest(p) for p in evidence},
    remaining_runtime_boundaries=ledger['remaining_runtime_boundaries'],
    outside_wave_consumer_controllers=ledger['outside_wave_consumer_controllers'],
    artifact_blockers=ledger['artifact_blockers'],
    expansion_stopped=True,
    no_sample_execution=True)
(out / 'game_local_literals_release.json').write_text(json.dumps(release, indent=2) + '\n')
print('FROZEN/RELEASED', len(owned), 'owned files;', len(strict), 'immutable transitive inputs')
