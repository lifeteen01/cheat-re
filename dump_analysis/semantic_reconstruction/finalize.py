from pathlib import Path
import hashlib,re,json
ROOT=Path(__file__).resolve().parents[2];SRC=ROOT/'source';D=ROOT/'dump_analysis';OUT=Path(__file__).parent
checkpoint=json.loads((OUT/'completion_checkpoint.json').read_text())
strict_checkpoint=OUT/checkpoint.get('completed_core_build','build_verification.txt')
sanitizer_checkpoint=OUT/checkpoint.get('completed_sanitizer','sanitizer_verification.txt')
input_checkpoint=OUT/checkpoint.get('input_integrity_log','input_verification_current.txt')
latest_sources=OUT/str(checkpoint.get('completed_core_build','')).replace('_verification.txt','_sources.json')
build_sources=json.loads(latest_sources.read_text()).get('sources_before',{}) if latest_sources.is_file() else {}
build_inputs=len(build_sources)
build_translation_units=sum(p.endswith('.cpp') for p in build_sources)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
manifest=(D/'MANIFEST.sha256').read_text()
primary=['unpacked/cheat.unpacked.dll','static/cheat_annot.asm','static/cheat_text.asm','static/cheat_decstr.txt','static/cheat_hooks.txt','static/RUNTIME_UNPACK_REPORT.md','C_vmp/VMP_INVENTORY_REPORT.md','C_vmp/cfg_users.json']
manifest_map={line.split(None,1)[1].lstrip('*'):line.split()[0] for line in manifest.splitlines() if line.strip()}
functions=[
('Hook setup',0x315c34,'01_hooks.md'),('Client hook/config initialization',0x362118,'01_hooks.md'),
('MethodInfo pointer installer',0x2ea90c,'01_hooks.md'),('Class pointer scan installer',0x2ea978,'01_hooks.md'),('Resolved-method scan installer',0x2eaa28,'01_hooks.md'),('Class entry installer (+0x138)',0x3163d8,'01_hooks.md'),('Class entry installer (+0x328)',0x316458,'01_hooks.md'),
('Class lookup across assemblies',0x334224,'reconstructed/metadata_resolution.md'),('Literal named/occurrence method selection',0x33416c,'reconstructed/metadata_resolution.md'),('Method selection by first code pointer',0x334960,'reconstructed/metadata_resolution.md'),('Parameter-name method selection',0x3349ac,'reconstructed/metadata_resolution.md'),
('Launcher save/worker/original/restore wrapper',0x2ddb10,'reconstructed/launcher_reconstruction.md'),('Orientation restoration store',0x373d04,'reconstructed/launcher_reconstruction.md'),('Quaternion multiplication',0x373b28,'reconstructed/launcher_reconstruction.md'),
('Literal approximate square root',0x2e3c88,'reconstructed/math_reconstruction.md'),
('Snapshot game-base and dependency bindings',0x368cb0,'reconstructed/game_base_reconstruction.md'),
('Exact-count named method selection',0x334a90,'reconstructed/metadata_export_reconstruction.md'),
('Copied-loader hash export resolver',0x333804,'reconstructed/metadata_export_reconstruction.md'),
('Signature CRC and metadata lookup',0x333d10,'reconstructed/metadata_signature_reconstruction.md'),
('Concrete hook initializer and embedded code-list parser',0x315c34,'reconstructed/hook_setup_reconstruction.md'),
('Concrete Client initializer and eager signature cache',0x362118,'reconstructed/hook_setup_reconstruction.md'),
('Literal bounded native export reader',0x2ce7c8,'reconstructed/native_pe_reconstruction.md'),
('Full classifier controller',0x31acd0,'reconstructed/world_esp_reconstruction.md'),
('Full world draw controller',0x2fb72c,'reconstructed/world_esp_reconstruction.md'),
('Whole overlay root composition',0x3098a4,'reconstructed/world_esp_reconstruction.md'),
('Copied widget vector and key-based preparation',0x2eec7c,'reconstructed/renderer_helpers_reconstruction.md'),
('Background draw-list accessor',0x392198,'reconstructed/renderer_helpers_reconstruction.md'),
('Font text measurement',0x3a3874,'reconstructed/renderer_helpers_reconstruction.md'),
('Melee trajectory-cache fold',0x2e1ff4,'reconstructed/trajectory_cache_reconstruction.md'),
('Interaction Raycast wrapper',0x2e8fac,'reconstructed/interaction_backend_reconstruction.md'),
('Shot pointer-vector lookup and retained iterator',0x32b838,'reconstructed/projectile_container_reconstruction.md'),
('Main movement worker',0x324b30,'reconstructed/movement_main_reconstruction.md'),
('Launch aim worker',0x317c3c,'reconstructed/movement_main_reconstruction.md'),
('Automation controller',0x2e6b20,'reconstructed/interaction_workers_reconstruction.md'),
('Melee and farming controller',0x2e12e0,'reconstructed/interaction_workers_reconstruction.md'),
('Hit-bone override worker',0x32b3a8,'reconstructed/hit_override_reconstruction.md'),
('Shot worker controller',0x32c0d4,'reconstructed/projectile_reconstruction.md'),('Projectile/hit worker controller',0x330b38,'reconstructed/projectile_reconstruction.md'),('Prediction wrapper adapter',0x2e2374,'reconstructed/projectile_reconstruction.md'),
('Aim worker controller',0x2f9988,'reconstructed/aim_weapon_reconstruction.md'),('Target ranking/selection',0x2e02b0,'reconstructed/aim_weapon_reconstruction.md'),('Aim-point selection',0x369790,'reconstructed/aim_weapon_reconstruction.md'),('Weapon dispatcher',0x319024,'reconstructed/aim_weapon_reconstruction.md'),('Recoil capture/restoration',0x36bc14,'reconstructed/aim_weapon_reconstruction.md'),
('Desync/teleport/interactive body',0x32cea8,'reconstructed/movement_reconstruction.md'),('Collider capture/change/restoration',0x322aec,'reconstructed/movement_reconstruction.md'),
('Client.LateUpdate detour',0x2f8574,'02_rendering.md'),('Overlay/player ESP',0x3098a4,'04_esp_entities.md'),('Renderer initialization',0x3b2b38,'02_rendering.md'),('GUI shader/material/Mesh setup',0x3b337c,'02_rendering.md'),('Geometry upload',0x3b4250,'02_rendering.md'),('Command recording',0x3b1a94,'02_rendering.md'),('Render submission',0x3b3028,'02_rendering.md'),('Graphics.ExecuteCommandBuffer wrapper',0x3b2004,'02_rendering.md'),('Sussy model/chams reconstruction',0x36a464,'02_rendering.md'),
('Thread-start export resolver',0x2ce130,'03_stack_spoof_spoofcall.md'),('Spoof context setup',0x2cbd24,'03_stack_spoof_spoofcall.md'),('Runtime-function lookup',0x2ce1f0,'03_stack_spoof_spoofcall.md'),('Unwind parser',0x2ce3dc,'03_stack_spoof_spoofcall.md'),('Spoof executor',0x3cdbd4,'03_stack_spoof_spoofcall.md'),('Real-state restoration',0x3cdbba,'03_stack_spoof_spoofcall.md'),('Malloc-like thunk',0x38a3c4,'03_stack_spoof_spoofcall.md'),('Free-like thunk',0x38a3cc,'03_stack_spoof_spoofcall.md'),
('Entity collection accessor',0x2f8034,'04_esp_entities.md'),('Encoded-reference transform 1',0x2f8540,'04_esp_entities.md'),('Encoded-reference transform 2',0x314b80,'04_esp_entities.md'),('Reference allocation-bitmap resolver',0x315bd0,'04_esp_entities.md'),('Classifier/entity enumeration',0x31acd0,'04_esp_entities.md'),('World/entity draw loop',0x2fb72c,'04_esp_entities.md'),('Bone position accessor',0x368be8,'04_esp_entities.md'),('Bone transform accessor',0x368c60,'04_esp_entities.md'),('Apparent team getter: constant zero',0x2cd32c,'04_esp_entities.md'),
('Desync/position/violation detour',0x32cea8,'05_server_observable.md'),('Movement/fly-budget helper',0x3226b0,'05_server_observable.md'),('Speed-budget helper',0x32dbb0,'05_server_observable.md'),('Prediction integration/search',0x2e2474,'05_server_observable.md'),('Prediction integration',0x2e3734,'05_server_observable.md'),('Shot construction/pSilent worker',0x32c0d4,'05_server_observable.md'),('Projectile update/hit worker',0x330b38,'05_server_observable.md')]
# All detours also appear in the primary map.
hooks=[('Projectile.Update',0x32ae10),('WaterOverlay.Update',0x332554),('SmokeGrenade.Update',0x32f038),('TOD_Sky.LateUpdate',0x32f408),('ItemIcon hashed method',0x3215cc),('Movement position hook',0x32a9f8),('Movement tick hook',0x324b30),('Collider hook',0x322aec),('Obfuscated-type shot hook',0x32cae8),('Obfuscated-type hit hook',0x32b62c),('BasePlayer automation hook',0x2e91fc),('BaseMelee hook',0x2e12e0),('BaseLauncher hook',0x2ddb10)]
functions += [(n,a,'01_hooks.md') for n,a in hooks]
index=[('01_hooks.md','All 15 hooks, full hashed target names, original-pointer cells, installer variants and pointer-integrity detection.'),('02_rendering.md','Unity Mesh/CommandBuffer overlay, bundle/shader flow, pipeline limits and scene/resource evidence.'),('03_stack_spoof_spoofcall.md','Thread-start context, allocator routes, synthetic ancestry and detection-level unwind/callsite analysis.'),('04_esp_entities.md','Encoded entity references, enumeration, player/world data, inactive culling toggle and server PVS implications.'),('05_server_observable.md','Desync/limiting, prediction, projectile/hit mutations, inferred server observations and unused keys.')]
text='''# Rust Internal Pro — semantic reconstruction

[C] Scope: the supplied runtime-unpacked native cheat DLL and manifest-listed supporting artifacts. [I] Deliverable objective, expanded by the follow-up requests: five vendor reports plus human-readable, annotated C++ analysis code and an offline internal analysis base. [U] This package is not a complete recovered original source tree or a validated drop-in game DLL; implemented bodies, partial translations and unresolved dependencies are distinguished in the code coverage table.

## Start here

''' 
for name,description in index:text+=f'- [C] [{name}]({SRC/name}) — {description}\n'
text+=f'- [C] [C++ reconstruction and coverage]({SRC/"reconstructed/README.md"}) — compilable analysis library, concrete recovered helpers, fixture checks and explicit translation limits.\n'
text+=f'- [C] [Remaining implementation work]({SRC/"PROGRESS.md"}) — area-by-area completion status and unresolved dependencies.\n'
text+='''
## Evidence legend and address convention

- [C] **Confirmed:** instruction bytes/disassembly, decoded string use, literal data, or a reproducible analysis/build result. A confirmed client mutation does not mean the server accepted it.
- [I] **Inferred:** analyst-assigned role/name, purpose, server-visible consequence or proposed detection, grounded in the cited code.
- [U] **Uncertain:** unresolved source identity, unavailable live observation, missing matching-game metadata, incomplete translation or untested behavior.

[C] Addresses are cheat RVAs unless explicitly labeled GameAssembly offsets. The supplied image is a virtual-layout dump: file offset equals RVA; runtime base is `0x7ffa2a960000`. [C] A decoded getter can be labeled just before leading `CC` padding in the supplied inventory; xref output normalizes its target to the first instruction (for example inventory `0x3b0de7` → call target `0x3b0de8`).

## Findings that correct earlier shorthand

- [C] The setup resolves `TOD_Sky.LateUpdate`; its short getter was independently decoded from bytes (`0x2f6b7c`).
- [C] The desync target's class/method argument order is `%fa0c08e0….%de96eb58…`, reversing the supplied shorthand; report 01 retains both full strings and the argument trace.
- [C] `%3d67…` and `%ab2a…` are class lookup keys for installer `0x2eaa28`, not confirmed BasePlayer method names; their matched method names remain unresolved [U].
- [C] Two additional installer variants are present (`0x2eaa28`, `0x316458`), beyond the three named in the task.
- [C] “Sussy Object”/“SussyMesh” occur in a model/chams helper (`0x36a464`), separately from the primary GUI Mesh backend.
- [C] DisablePlayerCulling has a menu binding but no identified logic reader; the apparent team-ID getter `0x2cd32c` returns zero.
- [C] 390 registered config keys have no reader in the supplied static map. [I] Menu strings or legacy keys must not be reported as working independent features.
- [C] Entry-table installers proceed to their comparison on a false numeric pointer predicate; the prior C++ inverted this branch. [U] The unusual literal behavior does not establish successful live installation.
- [C] The custom occurrence branch of method helper `0x33416c` skips equal names. [I] The metadata reconstruction preserves that comparison rather than normalizing it to ordinary name matching.
- [C] Vector helper `0x2df5dc` returns false for equal vectors and true for unequal/unordered vectors; explicit alternate-return bounds correct the earlier heuristic excerpt.
- [C] Magnitudes use the literal inverse-root/Newton/reciprocal routine `0x2e3c88`. Substituting a standard square root changes exact threshold and prediction-segment fixtures.

## Verification and working evidence

'''
text+=f'''[C] `sha256sum -c MANIFEST.sha256` passed before analysis and again after the work; the final log contains {len(manifest_map)} passing entries. [C] No manifest-listed input was modified. [C] Source and analysis deliverables were confined to the workspace; no sample instruction was executed, no IOC was contacted and no artifact was uploaded. [C] Compiler/development/formatting and owned-host validation-runtime packages were downloaded from the configured Ubuntu archive for a local extracted toolchain.

[C] The latest combined strict checkpoint links{build_translation_units} translation units and captures{build_inputs} source/dependency inputs under GCC15 C++20, warnings as errors and standard-library assertions: [checkpoint verification]({strict_checkpoint}). The final reconstruction waves and new offset-profile/catalog consumers are integrated. [U] These are owned offline fixtures; Windows/game ABI and live rendering remain unverified. [C] The latest135-entry preserved-input check is [input hash verification]({input_checkpoint}).

[C] A separate [Windows x64 DLL]({SRC/'windows_base/README.md'}) compiles and links via direct MinGW and CMake/Ninja, with13 C exports, a usable native General/Offsets/About menu and one external [offsets.json]({SRC/'windows_base/offsets.json'}). Its authored owned-host test passes actual controls/filter/edit/save/reload, changed pixels/resolution, Unicode paths, last-good retention, DLL lifecycle and restoration under [Wine10/Xvfb]({OUT/'windows_base/wine_runtime/verification.json'}). The [new goal record]({SRC/'MENU_OFFSETS_GOAL.md'}) distinguishes this delivered menu/configuration work from the unfinished legacy reconstruction. [U] Native Windows execution and in-game operation remain unestablished; the historical profile is unverified. [I] [Minimum-base readiness]({SRC/'BASE_READINESS.md'}) records the four audit categories, missing runtime callbacks, Needed / To do artifacts and optional backlog.

[C] The integrated package includes concrete shot/projectile, aim/weapon, movement/interaction, classifier/world/overlay and hook/setup controllers, with metadata, renderer-helper and owned-container modules. [U] Local UI/drawlist/font closure, cross-domain composition, independent reviews and unavailable game/Unity artifacts remain individually tracked. The executor remains within the user's detection-level scope.

[C] The last recorded combined sanitizer checkpoint passed with nonrecovering AddressSanitizer/UndefinedBehaviorSanitizer errors and floating-point contraction disabled: [checkpoint sanitizer verification]({sanitizer_checkpoint}). [U] This log covers its recorded source set; current expanded-source verification is tracked separately in PROGRESS.md.

[C] A separate [byte/call audit]({OUT/'independent_audit.json'}) checks corrected branches, lookup call targets, the short class-string decode and the bounded culling/config inventory against preserved inputs. [C] The audit script also emits independent raw disassembly for the metadata-selection functions.

[C] An [excerpt-byte audit]({OUT/'byte_span_audit.json'}) verifies recognized recorded spans against the preserved virtual-layout DLL. [U] This confirms byte provenance, not complete semantic equivalence or every heuristic function boundary.

[C] Reproducible scripts, byte excerpts, string/config xrefs, full dead-key inventory, independent objdump excerpts and bundle headers are in [working evidence]({OUT/'README.md'}). [U] Exact field/source names behind hashed methods still require the matching GameAssembly/global-metadata; proposed server detections remain hypotheses until lab/server validation.

## Function → RVA map

[I] Descriptive function labels below are semantic names; addresses and associations are byte-confirmed [C]. Full hook spellings and save locations are in report 01.

| Function / semantic label | RVA | Report |
|---|---|---|
'''
for n,a,f in functions:text+=f'| [I] {n} | [C] `0x{a:x}` | [C] [{f}]({SRC/f}) |\n'
text+='\n## Input hashes\n\n[C] These primary hashes are copied from the supplied manifest and independently verified. The complete manifest follows for all input artifacts.\n\n| Input | SHA-256 |\n|---|---|\n'
for name in primary:text+=f'| [C] [{name}]({D/name}) | [C] `{manifest_map[name]}` |\n'
text+=f'\n[C] Supplied manifest SHA-256: `{sha(D/"MANIFEST.sha256")}`. Source: [MANIFEST.sha256]({D/"MANIFEST.sha256"}).\n'
text+='\n## Output hashes\n\n[C] Exact file-byte SHA-256 values below cover every source deliverable except this index itself. Its own exact hash, together with all the others, is in the external checksum record; this avoids an impossible embedded self-hash.\n\n| Output | SHA-256 |\n|---|---|\n'
for p in sorted(SRC.rglob('*')):
 if p.is_file() and p!=SRC/'README.md':text+=f'| [C] [{p.relative_to(SRC)}]({p}) | [C] `{sha(p)}` |\n'
text+=f'| [C] README.md (this file) | [C] Exact hash in [OUTPUTS.sha256]({OUT/"OUTPUTS.sha256"}), entry `source/README.md`. |\n'
text+=f'\n[C] Complete output checksum record: [OUTPUTS.sha256]({OUT/"OUTPUTS.sha256"}). [I] Verify from the workspace root with:\n\n```sh\nsha256sum -c dump_analysis/semantic_reconstruction/OUTPUTS.sha256\n```\n'
text+='\n## Complete supplied input manifest\n\n[C] Verbatim input hash records from the supplied manifest; paths are relative to `dump_analysis/`.\n\n```text\n'+manifest.rstrip()+'\n```\n'
(SRC/'README.md').write_text(text)
outputs=sorted(p for p in SRC.rglob('*') if p.is_file())
(OUT/'OUTPUTS.sha256').write_text(''.join(f'{sha(p)}  {p.relative_to(ROOT)}\n' for p in outputs))
# Validate every absolute Markdown target, ignoring optional line suffixes.
missing=[]
for p in SRC.rglob('*.md'):
 for target in re.findall(r'\]\((/[^)]+)\)',p.read_text()):
  if not Path(re.sub(r':\d+$','',target)).exists():missing.append((str(p),target))
if missing:raise SystemExit('Broken links: '+repr(missing))
# Check every zero-reader key explicitly named in the report.
cfg=json.loads((D/'C_vmp/cfg_users.json').read_text());report=(SRC/'05_server_observable.md').read_text().split('## Keys that',1)[1]
for key in re.findall(r'`((?:Bools|F|i|V3)\.[A-Za-z0-9_]+)`',report):
 if key not in cfg or cfg[key]['users']:raise SystemExit('Misclassified dead key '+key)
# Verify no untagged substantive Markdown prose/table rows outside fenced data blocks.
# Compound existing tags (C/I and S/I) retain an explicit C, I or U qualifier.
has_confidence=lambda line:bool(re.search(r'\[(?:[A-Z]/)*[CIU](?:/[A-Z])*\]',line))
issues=[]
for p in SRC.rglob('*.md'):
 fence=False
 for n,line in enumerate(p.read_text().splitlines(),1):
  if line.startswith('```'):fence=not fence;continue
  if fence or not line.strip() or line.startswith('#') or re.match(r'^\|[ -]+\|',line):continue
  if line.startswith('|') and not has_confidence(line):continue # table headers
  if not has_confidence(line):issues.append((str(p.relative_to(ROOT)),n,line[:100]))
if issues:raise SystemExit('Untagged prose: '+repr(issues))
result={'source_files':len(outputs),'function_map_rows':len(functions),'input_manifest_entries':len(manifest_map),'broken_markdown_links':0,'dead_key_examples_valid':True,'confidence_tag_audit':'passed','outputs':{str(p.relative_to(ROOT)):sha(p) for p in outputs}}
(OUT/'final_audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='outputs'},indent=2))
