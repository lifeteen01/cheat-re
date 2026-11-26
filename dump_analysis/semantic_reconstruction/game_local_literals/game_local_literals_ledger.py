"""Precise reached leaves; next-pdata audit envelopes are not implementation claims."""
from pathlib import Path
import hashlib
import json
import re

root = Path('/home/john/Desktop/cheat_re')
out = Path(__file__).parent
data = (root / 'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
catalogue = json.loads((out / 'literal_catalogue.json').read_text())
audit = json.loads((out / 'byte_audit.json').read_text())
segments = json.loads((out / 'segment_audit.json').read_text())
rows = []
for line in (root / 'dump_analysis/static/cheat_text.asm').read_text().splitlines():
    m = re.match(r'\s*([0-9a-f]+):\t([0-9a-f ]+)\t?(.*)', line)
    if m:
        a, raw, text = int(m[1], 16), bytes.fromhex(m[2]), m[3]
        assert data[a:a + len(raw)] == raw
        rows.append((a, raw, text))
by = {a: i for i, (a, raw, text) in enumerate(rows)}
roles = {}
for s in catalogue['specs']:
    for key, role in [('getter', 'ordered constructor'), ('converter', 'conditional in-place conversion'),
                      ('guard', 'last-byte predicate'), ('decode', 'byte XOR loop')]:
        roles[int(s[key], 16)] = role
roles.update({0x2d6354: 'signed-byte FNV64, reused owned helper',
              0x2e5b4c: 'seeded signed-byte FNV64, reused owned helper',
              0x3ca884: 'streaming signed-byte comparison, both return tails'})
leaves = []
for r in json.loads((out / 'closure_roots.json').read_text()):
    selected = []
    for row in rows[by[r]:]:
        selected.append(row)
        if row[2] == 'ret':
            if r == 0x3ca884 and row[0] == 0x3ca8b1:
                continue  # JE3ca895 reaches the equality return after first RET.
            break
    end = selected[-1][0] + len(selected[-1][1])
    branches, calls, returns = [], [], []
    for a, raw, text in selected:
        m = re.match(r'j\w+\s+0x([0-9a-f]+)', text)
        if m:
            target = int(m[1], 16)
            assert r <= target < end, (hex(r), hex(a), hex(target))
            branches.append(dict(site=hex(a), target=hex(target)))
        m = re.match(r'call\s+0x([0-9a-f]+)', text)
        if m:
            target = int(m[1], 16)
            assert target in roles, (hex(r), hex(target), 'unclosed reached call')
            calls.append(dict(site=hex(a), target=hex(target)))
        if text == 'ret':
            returns.append(hex(a))
    leaves.append(dict(begin=hex(r), end_exclusive=hex(end), role=roles[r],
                       claim='C/I', sha256=hashlib.sha256(data[r:end]).hexdigest(),
                       branches=branches, calls=calls, returns=returns,
                       remaining_local_body=False))
ledger = dict(
    sample_sha256=hashlib.sha256(data).hexdigest(),
    counts=dict(producers=len(catalogue['specs']), converter_variants=15,
                ordered_operations=len(catalogue['operations']), exact_reached_leaves=len(leaves),
                exact_leaf_branches=sum(len(x['branches']) for x in leaves),
                requested_audit_envelopes=len(audit['ranges']),
                envelope_branches=sum(len(x['branches']) for x in audit['ranges']),
                verified_disassembly_fragments=audit['verified_fragments'],
                inline_segments=len(segments), inline_branches=sum(len(x['branches']) for x in segments)),
    exact_reached_leaves=leaves,
    inline_segments=[dict(**s, claim='C/I', implementation='Existing replay_projectile_330b38 '
                         'retains branch orchestration; new literal bindings close material/hash/compare folds.')
                     for s in segments],
    owned_adaptations=[
        'Restricted ordered copied-data operations, not a generic instruction emulator.',
        'Owned register payloads and optional known output bytes; no fabricated raw pointer or unknown bytes.',
        'Actual Snapshot aliases preserve overlapping source/destination and post-context rereads.',
        'Bounded streaming text reads; missing span or unterminated unknown suffix is a typed failure.',
        'Signed-byte FNV reused from entity_name_hash_2d6354; comparison3ca884 includes equality return3ca8b2..3ca8b5.',
        'Direct managed-string/cache/metadata/argument controllers reused from released direct wrapper modules.'
    ],
    remaining_runtime_boundaries=[
        dict(root='0x2ce718', site='0x2ce78b', callback='GameDirectEffects.shared.string_new_2ce718',
             claim='U', requirement='Matching managed-string effect; no successful default or numeric target execution.'),
        dict(root='0x2cc164', callback='GameDirectEffects.shared.export_target OR supplied initial_loader_node',
             claim='I/U', requirement='Explicit export input; concrete existing resolver handles supplied copied loader nodes.'),
        dict(roots=['0x366c30', '0x36c274'], callback='GameDirectEffects.action', claim='U',
             requirement='Final matching game RPC/action effect after concrete local literal/managed/controller prefixes.'),
        dict(callback='GameLocalLiteralEnvironment.aliases[getter]', claim='I/U',
             requirement='Actual mapped copied char scratch required by raw-pointer Projectile.material; '
                         'owned-only public literal/hash/managed APIs do not invent it.')
    ],
    outside_wave_consumer_controllers=[
        dict(root='0x2e69d8', callback='prior InteractionCalls.action', claim='U',
             note='Item RPC enclosing body unchanged; consumed refill/drop literal producers are concrete here.'),
        dict(root='0x2e480c', callback='prior InteractionCalls.action', claim='U',
             note='Grade enclosing body unchanged; producer2e5958 is concrete here.')
    ],
    artifact_blockers=['Matching GameAssembly.dll', 'Matching UnityPlayer.dll', 'Matching global-metadata.dat'],
    unclaimed=['Native/game ABI and runtime effects', 'Arbitrary native stack/heap aliases or concurrent mutation',
               'Context/spoof executor; observer remains detection-only',
               'Other enclosing projectile/interaction dependencies or unrelated leaves in broad audit envelopes'])
(out / 'semantic_range_ledger.json').write_text(json.dumps(ledger, indent=2) + '\n')
print('PASS exact literal closure ledger', ledger['counts'])
