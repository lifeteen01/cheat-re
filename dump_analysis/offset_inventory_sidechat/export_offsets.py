#!/usr/bin/env python3
"""Export fixed update inputs separately from resolver outputs. Never runs the sample."""
from pathlib import Path
import bisect
import collections
import csv
import hashlib
import io
import json
import re
import struct

ROOT = Path(__file__).resolve().parents[2]
WORK = Path(__file__).resolve().parent
DEST = ROOT / "source/offset_inventory"
DATA = ROOT / "dump_analysis"
ASM = DATA / "static/cheat_annot.asm"
DLL = DATA / "unpacked/cheat.unpacked.dll"
BASE_CELL = 0x3D6F00
captured = {}


def read(path):
    data = path.read_bytes()
    captured[str(path.relative_to(ROOT))] = hashlib.sha256(data).hexdigest()
    return data


def hx(n):
    return f"-0x{-n:x}" if n < 0 else f"0x{n:x}"


def csv_text(fields, entries):
    out = io.StringIO(newline="")
    writer = csv.DictWriter(out, fieldnames=fields, lineterminator="\n")
    writer.writeheader()
    writer.writerows(entries)
    return out.getvalue()


image = read(DLL)
listing = read(ASM).decode()
manifest = {}
for line in (DATA / "MANIFEST.sha256").read_text().splitlines():
    digest, name = line.split(None, 1)
    manifest[name.lstrip("*")] = digest
for path in (DLL, ASM):
    assert captured[str(path.relative_to(ROOT))] == manifest[str(path.relative_to(DATA))]

instructions = []
line_numbers = {}
for number, line in enumerate(listing.splitlines(), 1):
    match = re.match(r"^([0-9a-f]+)\t(.+)$", line)
    if match:
        address = int(match[1], 16)
        instructions.append((address, match[2].split("   ;", 1)[0]))
        line_numbers[address] = number
positions = {address: index for index, (address, _) in enumerate(instructions)}

pe = struct.unpack_from("<I", image, 0x3C)[0]
pdata, size = struct.unpack_from("<II", image, pe + 24 + 112 + 3 * 8)
functions = sorted(set(struct.unpack_from("<III", image, pdata + i) for i in range(0, size, 12)))
starts = [entry[0] for entry in functions]


def function_at(address):
    i = bisect.bisect_right(starts, address) - 1
    return functions[i] if i >= 0 and address < functions[i][1] else None


# This provenance scan accepts only direct uses of the independently established
# GameAssembly base cell, identity copies, and literal address arithmetic. Loaded
# object pointers cease to be module bases. ABI-volatile values are killed at CALL.
registers = {"rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rbp", "rsp"} | {f"r{i}" for i in range(8, 16)}
volatile = {"rax", "rcx", "rdx", "r8", "r9", "r10", "r11"}


def canonical(register):
    if register in registers:
        return register
    if register.startswith("e") and "r" + register[1:] in registers:
        return "r" + register[1:]
    if re.fullmatch(r"r(?:[89]|1[0-5])d", register):
        return register[:-1]
    return register


module_sites = {}
loads = []
for i, (address, text) in enumerate(instructions):
    matched = re.match(r"mov\s+(r\w+),QWORD PTR \[rip[^\]]*\]\s*# 0x3d6f00\b", text)
    if not matched or matched[1] not in registers:
        continue
    owner = function_at(address)
    assert owner is not None, hex(address)
    loads.append(address)
    state = {matched[1]: 0}
    for site, original in instructions[i + 1:]:
        if site >= owner[1] or not state:
            break
        code = original.split("#", 1)[0].strip()
        pieces = code.split(None, 1)
        op, args = pieces[0], pieces[1] if len(pieces) == 2 else ""
        pair = args.split(",", 1)
        dst, src = pair[0].strip(), pair[1].strip() if len(pair) == 2 else ""
        for memory in re.finditer(r"\[(r\w+)(?:(\+|-)0x([0-9a-f]+))?\]", args):
            if memory[1] in state:
                value = state[memory[1]] + (int(memory[3], 16) * (-1 if memory[2] == "-" else 1) if memory[3] else 0)
                if value:
                    module_sites[(site, value)] = {"base_load_site": hx(address), "function_rva": hx(owner[0]), "instruction": original}
        if op == "call":
            state = {r: value for r, value in state.items() if r not in volatile}
            continue
        if op.startswith("ret"):
            break
        if op in {"cmp", "test", "push", "jmp"} or op.startswith("j"):
            continue
        destination = canonical(dst)
        if destination not in registers:
            continue
        if op == "mov" and src in state and dst in registers:
            state[destination] = state[src]
            continue
        if op in {"add", "sub"} and dst in state and re.fullmatch(r"0x[0-9a-f]+", src):
            state[destination] += int(src, 16) * (1 if op == "add" else -1)
            if state[destination]:
                module_sites[(site, state[destination])] = {"base_load_site": hx(address), "function_rva": hx(owner[0]), "instruction": original}
            continue
        if op == "lea":
            memory = re.fullmatch(r"\[(r\w+)(?:(\+|-)0x([0-9a-f]+))?\]", src)
            if memory and memory[1] in state:
                state[destination] = state[memory[1]] + (int(memory[3], 16) * (-1 if memory[2] == "-" else 1) if memory[3] else 0)
                if state[destination]:
                    module_sites[(site, state[destination])] = {"base_load_site": hx(address), "function_rva": hx(owner[0]), "instruction": original}
                continue
        state.pop(destination, None)

# Validate the decisive load/arithmetic/address-use encodings against the original
# raw disassembly, including objdump continuation lines for long instructions.
raw_rows = {}
last = None
for line in read(DATA / "static/cheat_text.asm").decode().splitlines():
    m = re.match(r"^\s*([0-9a-f]+):\t([0-9a-f ]+)(?:\t(.*))?$", line)
    if not m:
        continue
    site, data = int(m[1], 16), bytes.fromhex(m[2])
    if m[3] and m[3].strip():
        raw_rows[site] = bytearray(data)
        last = site
    elif last is not None and last + len(raw_rows[last]) == site:
        raw_rows[last].extend(data)
for address in set(loads) | {site for site, _ in module_sites}:
    assert address in raw_rows and 0 < len(raw_rows[address]) <= 15
    assert image[address:address + len(raw_rows[address])] == raw_rows[address], hx(address)

fixed = sorted({offset for _, offset in module_sites})
assert len(fixed) == 64, "Reconcile changed direct-reference extraction before publishing a new count"
records = []
for offset in fixed:
    sites = sorted(site for site, value in module_sites if value == offset)
    records.append({"category": "hardcoded_gameassembly_rva", "offset": hx(offset), "context": "GameAssembly.dll base",
                    "input_status": "fixed literal; validate against a matching game build",
                    "evidence_file": str(ASM.relative_to(ROOT)), "evidence_lines": ";".join(str(line_numbers[x]) for x in sites),
                    "native_sites": ";".join(hx(x) for x in sites), "source_sites": "",
                    "confidence": "C: base-derived static literal/reference; U: whether changed in the next update"})

# Confirmed recovered game-field getter catalogue. No cheat-global cache RVA,
# MethodInfo layout, CLR container header, or vector component is an update input.
field_contexts = collections.defaultdict(set)
field_sites = collections.defaultdict(set)
source_sites = collections.defaultdict(set)
getter_source = ROOT / "source/reconstructed/field_getters_analysis.cpp"
getter_text = read(getter_source).decode()
for m in re.finditer(r"\{(0x[0-9a-f]+),(0x[0-9a-f]+),(0x[0-9a-f]+),FieldGetterKind::", getter_text):
    getter, end, offset = (int(v, 16) for v in m.groups())
    assert function_at(getter)[:2] == (getter, end)
    field_contexts[offset].add(f"guarded game-field getter {hx(getter)}")
    field_sites[offset].add(getter)
    source_sites[offset].add(f"{getter_source.relative_to(ROOT)}:{getter_text[:m.start()].count(chr(10)) + 1}")

# Reviewed receiver roles, scoped to each implementation file. These are field
# addresses in recovered game controllers; role/type labels remain analyst names.
roles = {
    "projectile_analysis.cpp": {"p", "weapon", "ammo", "hit", "shot", "component"},
    "aim_weapon_analysis.cpp": {"weapon", "projectile", "recoil", "input", "local", "held", "mod", "component", "view"},
    "movement_analysis.cpp": {"player", "record"},
    "movement_main_analysis.cpp": {"player", "record", "weapon", "projectile", "ammo", "entity", "component"},
    "interaction_workers.cpp": {"hit", "local", "projectile", "weapon"},
    "sky_model_analysis.cpp": {"sky", "day", "sky_settings", "inner", "player"},
}
# These are components/continuations of already counted aggregate fields.
derived_components = {
    ("projectile_analysis.cpp", "p", 0x180): (0x178, 8),
    ("projectile_analysis.cpp", "hit", 0x64): (0x5c, 8),
    ("projectile_analysis.cpp", "hit", 0xac): (0xa4, 8),
    ("projectile_analysis.cpp", "hit", 0x7c): (0x6c, 16),
    ("interaction_workers.cpp", "hit", 0x78): (0x6c, 12),
    ("aim_weapon_analysis.cpp", "input", 0x48): (0x44, 4),
    ("movement_analysis.cpp", "record", 0x38): (0x30, 8),
}
excluded = []
for filename, receivers in roles.items():
    path = ROOT / "source/reconstructed" / filename
    text = read(path).decode()
    for line_number, line in enumerate(text.splitlines(), 1):
        code = line.split("//", 1)[0]
        for match in re.finditer(r"\b([A-Za-z_]\w*)\s*\+\s*(0x[0-9a-f]+)\b", code):
            receiver, offset = match[1], int(match[2], 16)
            if receiver not in receivers:
                continue
            location = f"{path.relative_to(ROOT)}:{line_number}"
            component = derived_components.get((filename, receiver, offset))
            if component:
                excluded.append({"kind": "derived_aggregate_component", "name": f"{filename}:{receiver}+{hx(offset)}",
                                 "reason": f"derived from counted {hx(component[0])} + {component[1]}; no separate dump input",
                                 "evidence": location, "counted": "no"})
                continue
            field_contexts[offset].add(f"{filename}:{receiver}")
            source_sites[offset].add(location)
            for site in re.findall(r"0x([23][0-9a-f]{5})\b", code):
                value = int(site, 16)
                if value in positions:
                    field_sites[offset].add(value)

# Independently reviewed direct field starts not represented by the scoped roles.
extra_fields = [
    (0x48, "entity validity qword", 0x2e0e9c),
    (0x54, "entity prefab identifier", 0x367668),
    (0x1d0, "entity model pointer", 0x368c60),
    (0x50, "model bone-transform array pointer", 0x368c60),
    (0x338, "player display-name reference", 0x369040),
    (0x640, "player decimal-identifier string reference", 0x36af58),
    (0x444, "native camera position", 0x36ca34),
    (0x90, "weapon attachment list", 0x36b758),
    (0x230, "attachment modifier enabled byte", 0x36b758),
    (0x248, "attachment modifier scalar", 0x36b758),
    (0x178, "projectile current position", 0x3740e0),
    (0x16c, "projectile current velocity", 0x374124),
    (0x338, "game receiver vector getter", 0x3743f8),
    (0x200, "game/Unity receiver pointer getter", 0x37628c),
    (0x5c, "orientation storage on related object", 0x373d04),
    (0x24, "hit bone identifier", 0x37432c),
    (0x38, "hit entity identifier", 0x32b3a8),
    (0x40, "hit kind field", 0x374348),
    (0x38, "MainCamera static-field camera slot", 0x2e069c),
]
for offset, context, site in extra_fields:
    field_contexts[offset].add(context)
    field_sites[offset].add(site)

for offset in sorted(field_contexts):
    native = sorted(field_sites[offset])
    records.append({"category": "hardcoded_game_field_start", "offset": hx(offset),
                    "context": "; ".join(sorted(field_contexts[offset])),
                    "input_status": "fixed recovered field start; validate layout for the matching build",
                    "evidence_file": str(ASM.relative_to(ROOT)),
                    "evidence_lines": ";".join(str(line_numbers[x]) for x in native if x in line_numbers),
                    "native_sites": ";".join(hx(x) for x in native),
                    "source_sites": ";".join(sorted(source_sites[offset])),
                    "confidence": "C: literal recovered access; I: receiver-role names; U: SDK field identities/alias completeness"})

# Enumerate automatically resolved outputs separately; never add these code/cache
# RVAs to either text list or any update-input count.
runtime_path = ROOT / "source/reconstructed/game_runtime_wrappers_specs.inc"
runtime_text = read(runtime_path).decode()
for match in re.finditer(r"\{([^{}]+)\}", runtime_text, re.S):
    body = match[1]
    numbers = re.findall(r"0x[0-9a-f]+", body)
    strings = re.findall(r'"([^"\n]*)"', body)
    if numbers and len(strings) >= 3:
        excluded.append({"kind": "metadata_name_resolved_method", "name": ".".join(strings[-3:]),
                         "reason": "address found by runtime metadata/class/method lookup; wrapper/cache RVAs belong to the cheat",
                         "evidence": f"{runtime_path.relative_to(ROOT)} wrapper {numbers[0]}", "counted": "no"})
for kind, name, reason, evidence in [
    ("module_base", "GameAssembly/UnityPlayer process base", "located at runtime; ASLR address is not a per-build offset input", "source/reconstructed/game_root_helpers.md"),
    ("export_resolution", "IL2CPP named exports", "PE export name lookup supplies current target addresses", "source/reconstructed/metadata_export_reconstruction.md"),
    ("signature_resolution", "UnityPlayer allocation/free targets", "signature scanning and decoded matches derive target addresses; signatures may separately need maintenance", "source/03_stack_spoof_spoofcall.md"),
    ("metadata_layout", "IL2CPP/managed container headers", "engine/runtime ABI layout, not counted as Rust game-field dump inputs in this inventory", "source/reconstructed/metadata_resolution.md"),
    ("cheat_state", "configuration globals, saved originals and dispatch contexts", "cheat-owned addresses are not game-update offsets", "dump_analysis/C_vmp/cfg_users.json"),
    ("runtime_pointer", "decoded references, pointer-chain results and selected entities", "derived at runtime from fixed inputs; output addresses are not additional dump inputs", "source/reconstructed/04_esp_entities.cpp"),
    ("non_offset_input", "obfuscated names, patterns, bone/item IDs and decode constants", "not numeric offsets; may independently require maintenance when game content or obfuscation changes", "source/01_hooks.md"),
]:
    excluded.append({"kind": kind, "name": name, "reason": reason, "evidence": evidence, "counted": "no"})

# Coverage audit only: unknown ownership is excluded from the user's count.
unknown = collections.defaultdict(list)
known_fields = set(field_contexts)
for site, instruction in instructions:
    if site < 0x2b25c8:
        continue
    for expr in re.findall(r"\[([^\]]+)\]", instruction.split("#", 1)[0]):
        if re.search(r"\b(?:rip|rsp|rbp|eip|esp|ebp)\b", expr):
            continue
        if not re.search(r"\br(?:ax|bx|cx|dx|si|di|[89]|1[0-5])\b", expr):
            continue
        terms = list(re.finditer(r"([+-])0x([0-9a-f]+)", expr))
        value = sum(int(m[2], 16) * (-1 if m[1] == "-" else 1) for m in terms) if terms else 0
        if value >= 1 << 63:
            value -= 1 << 64
        if value not in known_fields and value not in fixed:
            unknown[value].append(site)

all_values = sorted(set(fixed) | set(field_contexts))
summary = {
    "definition": "Unique numeric fixed GameAssembly RVAs plus recovered game-field starts covered by this inventory. Resolver outputs are excluded.",
    "gameassembly_fixed_rvas": len(fixed),
    "gameassembly_reference_sites": len(module_sites),
    "game_field_start_values": len(field_contexts),
    "manual_update_numeric_values": len(all_values),
    "auto_or_derived_exclusion_rows": len(excluded),
    "unclassified_literal_values_not_counted": len(unknown),
    "upper_bound_on_all_game_update_dependencies": None,
    "completeness": "Verified scoped inventory, not a proven complete upper bound. Unknown ownership is excluded, not silently treated as game fields.",
    "duplicate_rule": "Numeric values are deduplicated; identical offsets on different receiver types can require independent updates. CSV preserves observed contexts.",
    "update_rule": "Fixed inputs need build validation and may change; this does not claim every value changes on every patch. Caches do not make hardcoded targets self-updating.",
    "source_hashes": captured,
    "scope_limits": ["Direct module scan follows the established GameAssembly base global 0x3d6f00 within supplied pdata ranges.",
                     "Fields cover the audited getter catalogue, listed recovered controller receiver roles, and explicitly reviewed extra starts.",
                     "All remaining literal ownerships are unclassified and excluded. Matching game metadata is unavailable.",
                     "Automatic method/export/signature resolution outputs, cheat RVAs, ABI headers and derived aggregate components are excluded."],
}

# Do not publish an inventory from source files changing underneath this read.
for name, digest in captured.items():
    assert hashlib.sha256((ROOT / name).read_bytes()).hexdigest() == digest, f"Source changed while exporting: {name}"

DEST.mkdir(parents=True, exist_ok=True)
WORK.mkdir(parents=True, exist_ok=True)
(DEST / "manual_update_offsets.txt").write_text("".join(hx(x) + "\n" for x in all_values))
(DEST / "gameassembly_offsets.txt").write_text("".join(hx(x) + "\n" for x in fixed))
(DEST / "game_field_offsets.txt").write_text("".join(hx(x) + "\n" for x in sorted(field_contexts)))
columns = ["category", "offset", "context", "input_status", "evidence_file", "evidence_lines", "native_sites", "source_sites", "confidence"]
(DEST / "manual_update_offsets.csv").write_text(csv_text(columns, records))
(DEST / "auto_resolved_excluded.csv").write_text(csv_text(["kind", "name", "reason", "evidence", "counted"], excluded))
unknown_rows = [{"offset": hx(value), "uses": len(sites), "first_cheat_rva": hx(sites[0]),
                 "counted": "no", "confidence": "U: may be game, cheat, UI, library or computed-layout displacement"}
                for value, sites in sorted(unknown.items())]
(DEST / "unclassified_not_counted.csv").write_text(csv_text(["offset", "uses", "first_cheat_rva", "counted", "confidence"], unknown_rows))
(DEST / "summary.json").write_text(json.dumps(summary, indent=2) + "\n")
readme = f'''# Game update offset inventory

[C] This export contains **{len(all_values)} distinct numeric fixed inputs** in its verified scope: **{len(fixed)} GameAssembly-relative addresses** and **{len(field_contexts)} recovered game-field start values**. [U] This is not a proven complete upper bound for the cheat. Remaining unclassified literal ownerships are excluded from the total, rather than asserted to be game offsets.

[C] [manual_update_offsets.txt]({DEST/'manual_update_offsets.txt'}) is the requested numbers-only list: one hexadecimal value per line, sorted and deduplicated. [C] Separate numbers-only files are [GameAssembly RVAs]({DEST/'gameassembly_offsets.txt'}) and [game-field starts]({DEST/'game_field_offsets.txt'}). [C] [manual_update_offsets.csv]({DEST/'manual_update_offsets.csv'}) distinguishes modules from member offsets and retains receiver contexts, native sites, source locations and confidence.

[I] These are fixed inputs to validate against a matching game build; a patch does not necessarily change every value. Lazy caching of a hardcoded address does not automatically discover a replacement. A resolver fed by a hardcoded root still depends on that root; its derived output is excluded.

[C] [auto_resolved_excluded.csv]({DEST/'auto_resolved_excluded.csv'}) records name-based methods, named exports, signature results, module bases, derived vector components and other exclusions. **None contributes to the total.** Cheat configuration/state/cache RVAs, generic managed/metadata headers and non-offset identifiers are excluded. [U] Resolver names/patterns and non-offset decode/ID constants may independently need maintenance; this inventory does not claim they survive every update.

[C] Numeric offsets shared by multiple receiver types occur once in the text file. [U] That does not make the underlying fields the same: two classes using `+0x20` may move differently. Use the CSV context when updating a layout. Receiver/source-member names are inferred [I] unless independently established; fixed accesses are recorded with their source evidence [C].

[C] Module references were traced from the established GameAssembly base global `0x3d6f00` through the supplied native instruction listing, including the second range bound in `0x3306e2`. Decisive instruction encodings were checked against preserved DLL bytes. The field list covers the audited getter catalogue, explicit receiver roles in the enumerated recovered controllers and reviewed additional field starts. [U] It does not classify every remaining numeric displacement in the image or substitute for matching game metadata.

[U] [unclassified_not_counted.csv]({DEST/'unclassified_not_counted.csv'}) retains {len(unknown)} other literal values with unresolved ownership; many can be cheat/UI/library fields. These values are **not** included and are **not** a valid upper bound on all possible runtime-derived game dependencies.

[C] [summary.json]({DEST/'summary.json'}) records counts, exclusions, scope and exact hashes of the read inputs. [C] The reproducible exporter is [export_offsets.py]({WORK/'export_offsets.py'}), and exact output hashes are in [OUTPUTS.sha256]({WORK/'OUTPUTS.sha256'}). This side-chat export writes only its own new inventory paths; it does not alter the active reconstruction, its build or generated progress/index files. No sample instruction is executed and no endpoint is contacted.
'''
(DEST / "README.md").write_text(readme)
outputs = sorted(x for x in DEST.iterdir() if x.is_file())
(WORK / "OUTPUTS.sha256").write_text("".join(hashlib.sha256(p.read_bytes()).hexdigest() + "  " + str(p.relative_to(ROOT)) + "\n" for p in outputs))
print(json.dumps({k: v for k, v in summary.items() if k not in {"source_hashes", "scope_limits"}}, indent=2))
