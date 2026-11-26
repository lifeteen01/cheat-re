# Rust Internal Pro — semantic reconstruction

[C] Inputs: the supplied runtime-unpacked native DLL and all135 manifest-listed supporting artifacts. [I] The current requested deliverable is the advertised Rust internal base: new-pipeline rendering, working ESP, native hooks/original forwarding, executable spoofcall, and no CRT dependencies/imports, with source fidelity. [U] This objective is unfinished. [Current requirements](/home/john/Desktop/cheat_re/source/test_scene/REQUIREMENTS.md) distinguish remaining local implementation from missing matching game artifacts; earlier report-only, detection-only or fixture scope exclusions do not remove these requirements. No complete original source tree, fidelity percentage or validated drop-in game DLL is claimed.

## Start here

- [Freestanding executable gate](/home/john/Desktop/cheat_re/source/freestanding/README.md) — Recovered executor/restoration now runs in a no-CRT/no-import DLL. This component does not convert the current scene/base; native context scanning and integration remain open.

- [C] [Owned internal-menu/ESP test scene](/home/john/Desktop/cheat_re/source/test_scene/README.md) — Real reconstructed controls, ESP, projection acceptance, fonts/draw buffers, supported offset consumption, strict/sanitizer and Wine evidence. [U] Not live Rust; native Windows remains untested.

- [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) — All 15 hooks, full hashed target names, original-pointer cells, installer variants and pointer-integrity detection.
- [C] [02_rendering.md](/home/john/Desktop/cheat_re/source/02_rendering.md) — Unity Mesh/CommandBuffer overlay, bundle/shader flow, pipeline limits and scene/resource evidence.
- [C] [03_stack_spoof_spoofcall.md](/home/john/Desktop/cheat_re/source/03_stack_spoof_spoofcall.md) — Thread-start context, allocator routes, synthetic ancestry and detection-level unwind/callsite analysis.
- [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) — Encoded entity references, enumeration, player/world data, inactive culling toggle and server PVS implications.
- [C] [05_server_observable.md](/home/john/Desktop/cheat_re/source/05_server_observable.md) — Desync/limiting, prediction, projectile/hit mutations, inferred server observations and unused keys.
- [C] [C++ reconstruction and coverage](/home/john/Desktop/cheat_re/source/reconstructed/README.md) — compilable analysis library, concrete recovered helpers, fixture checks and explicit translation limits.
- [C] [Remaining implementation work](/home/john/Desktop/cheat_re/source/PROGRESS.md) — area-by-area completion status and unresolved dependencies.

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

The current full-root scene results and exact-source freshness are recorded in
[scene validation](/home/john/Desktop/cheat_re/source/test_scene/VALIDATION.md) and
[the aggregate audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/final_audit.json).
Older checkpoint paragraphs below describe their recorded source sets. The generated
PROGRESS/readiness scope exclusions are historical; current required work is retained
in REQUIREMENTS.md.

[C] `sha256sum -c MANIFEST.sha256` passed before analysis and again after the work; the final log contains 135 passing entries. [C] No manifest-listed input was modified. [C] Source and analysis deliverables were confined to the workspace; no sample instruction was executed, no IOC was contacted and no artifact was uploaded. [C] Compiler/development/formatting and owned-host validation-runtime packages were downloaded from the configured Ubuntu archive for a local extracted toolchain.

[C] The latest combined strict checkpoint links328 translation units and captures455 source/dependency inputs under GCC15 C++20, warnings as errors and standard-library assertions: [checkpoint verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_offsets_integrated_verification.txt). The final reconstruction waves and new offset-profile/catalog consumers are integrated. [U] These are owned offline fixtures; Windows/game ABI and live rendering remain unverified. [C] The latest135-entry preserved-input check is [input hash verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/input_verification_menu_offsets.txt).

[C] A separate [Windows x64 DLL](/home/john/Desktop/cheat_re/source/windows_base/README.md) compiles and links via direct MinGW and CMake/Ninja, with13 C exports, a usable native General/Offsets/About menu and one external [offsets.json](/home/john/Desktop/cheat_re/source/windows_base/offsets.json). Its authored owned-host test passes actual controls/filter/edit/save/reload, changed pixels/resolution, Unicode paths, last-good retention, DLL lifecycle and restoration under [Wine10/Xvfb](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/wine_runtime/verification.json). The [new goal record](/home/john/Desktop/cheat_re/source/MENU_OFFSETS_GOAL.md) distinguishes this delivered menu/configuration work from the unfinished legacy reconstruction. [U] Native Windows execution and in-game operation remain unestablished; the historical profile is unverified. [I] [Minimum-base readiness](/home/john/Desktop/cheat_re/source/BASE_READINESS.md) records the four audit categories, missing runtime callbacks, Needed / To do artifacts and optional backlog.

[C] The integrated package includes concrete shot/projectile, aim/weapon, movement/interaction, classifier/world/overlay and hook/setup controllers, with metadata, renderer-helper and owned-container modules. [U] Local UI/drawlist/font closure, cross-domain composition, independent reviews and unavailable game/Unity artifacts remain individually tracked. The separate freestanding executor now executes the recovered gate/restoration without CRT/import linkage. Full native context selection, live unwind validation and scene/base integration remain required unfinished work.

[C] The last recorded combined sanitizer checkpoint passed with nonrecovering AddressSanitizer/UndefinedBehaviorSanitizer errors and floating-point contraction disabled: [checkpoint sanitizer verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_offsets_sanitizer_verification.txt). [U] This log covers its recorded source set; current expanded-source verification is tracked separately in PROGRESS.md.

[C] A separate [byte/call audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/independent_audit.json) checks corrected branches, lookup call targets, the short class-string decode and the bounded culling/config inventory against preserved inputs. [C] The audit script also emits independent raw disassembly for the metadata-selection functions.

[C] An [excerpt-byte audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/byte_span_audit.json) verifies recognized recorded spans against the preserved virtual-layout DLL. [U] This confirms byte provenance, not complete semantic equivalence or every heuristic function boundary.

[C] Reproducible scripts, byte excerpts, string/config xrefs, full dead-key inventory, independent objdump excerpts and bundle headers are in [working evidence](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/README.md). [U] Exact field/source names behind hashed methods still require the matching GameAssembly/global-metadata; proposed server detections remain hypotheses until lab/server validation.

## Function → RVA map

[I] Descriptive function labels below are semantic names; addresses and associations are byte-confirmed [C]. Full hook spellings and save locations are in report 01.

| Function / semantic label | RVA | Report |
|---|---|---|
| [I] Hook setup | [C] `0x315c34` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Client hook/config initialization | [C] `0x362118` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] MethodInfo pointer installer | [C] `0x2ea90c` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Class pointer scan installer | [C] `0x2ea978` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Resolved-method scan installer | [C] `0x2eaa28` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Class entry installer (+0x138) | [C] `0x3163d8` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Class entry installer (+0x328) | [C] `0x316458` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Class lookup across assemblies | [C] `0x334224` | [C] [reconstructed/metadata_resolution.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_resolution.md) |
| [I] Literal named/occurrence method selection | [C] `0x33416c` | [C] [reconstructed/metadata_resolution.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_resolution.md) |
| [I] Method selection by first code pointer | [C] `0x334960` | [C] [reconstructed/metadata_resolution.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_resolution.md) |
| [I] Parameter-name method selection | [C] `0x3349ac` | [C] [reconstructed/metadata_resolution.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_resolution.md) |
| [I] Launcher save/worker/original/restore wrapper | [C] `0x2ddb10` | [C] [reconstructed/launcher_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/launcher_reconstruction.md) |
| [I] Orientation restoration store | [C] `0x373d04` | [C] [reconstructed/launcher_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/launcher_reconstruction.md) |
| [I] Quaternion multiplication | [C] `0x373b28` | [C] [reconstructed/launcher_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/launcher_reconstruction.md) |
| [I] Literal approximate square root | [C] `0x2e3c88` | [C] [reconstructed/math_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/math_reconstruction.md) |
| [I] Snapshot game-base and dependency bindings | [C] `0x368cb0` | [C] [reconstructed/game_base_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/game_base_reconstruction.md) |
| [I] Exact-count named method selection | [C] `0x334a90` | [C] [reconstructed/metadata_export_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_export_reconstruction.md) |
| [I] Copied-loader hash export resolver | [C] `0x333804` | [C] [reconstructed/metadata_export_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_export_reconstruction.md) |
| [I] Signature CRC and metadata lookup | [C] `0x333d10` | [C] [reconstructed/metadata_signature_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_signature_reconstruction.md) |
| [I] Concrete hook initializer and embedded code-list parser | [C] `0x315c34` | [C] [reconstructed/hook_setup_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_reconstruction.md) |
| [I] Concrete Client initializer and eager signature cache | [C] `0x362118` | [C] [reconstructed/hook_setup_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_reconstruction.md) |
| [I] Literal bounded native export reader | [C] `0x2ce7c8` | [C] [reconstructed/native_pe_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/native_pe_reconstruction.md) |
| [I] Full classifier controller | [C] `0x31acd0` | [C] [reconstructed/world_esp_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_reconstruction.md) |
| [I] Full world draw controller | [C] `0x2fb72c` | [C] [reconstructed/world_esp_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_reconstruction.md) |
| [I] Whole overlay root composition | [C] `0x3098a4` | [C] [reconstructed/world_esp_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_reconstruction.md) |
| [I] Copied widget vector and key-based preparation | [C] `0x2eec7c` | [C] [reconstructed/renderer_helpers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_reconstruction.md) |
| [I] Background draw-list accessor | [C] `0x392198` | [C] [reconstructed/renderer_helpers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_reconstruction.md) |
| [I] Font text measurement | [C] `0x3a3874` | [C] [reconstructed/renderer_helpers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_reconstruction.md) |
| [I] Melee trajectory-cache fold | [C] `0x2e1ff4` | [C] [reconstructed/trajectory_cache_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/trajectory_cache_reconstruction.md) |
| [I] Interaction Raycast wrapper | [C] `0x2e8fac` | [C] [reconstructed/interaction_backend_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/interaction_backend_reconstruction.md) |
| [I] Shot pointer-vector lookup and retained iterator | [C] `0x32b838` | [C] [reconstructed/projectile_container_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/projectile_container_reconstruction.md) |
| [I] Main movement worker | [C] `0x324b30` | [C] [reconstructed/movement_main_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/movement_main_reconstruction.md) |
| [I] Launch aim worker | [C] `0x317c3c` | [C] [reconstructed/movement_main_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/movement_main_reconstruction.md) |
| [I] Automation controller | [C] `0x2e6b20` | [C] [reconstructed/interaction_workers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/interaction_workers_reconstruction.md) |
| [I] Melee and farming controller | [C] `0x2e12e0` | [C] [reconstructed/interaction_workers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/interaction_workers_reconstruction.md) |
| [I] Hit-bone override worker | [C] `0x32b3a8` | [C] [reconstructed/hit_override_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/hit_override_reconstruction.md) |
| [I] Shot worker controller | [C] `0x32c0d4` | [C] [reconstructed/projectile_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/projectile_reconstruction.md) |
| [I] Projectile/hit worker controller | [C] `0x330b38` | [C] [reconstructed/projectile_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/projectile_reconstruction.md) |
| [I] Prediction wrapper adapter | [C] `0x2e2374` | [C] [reconstructed/projectile_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/projectile_reconstruction.md) |
| [I] Aim worker controller | [C] `0x2f9988` | [C] [reconstructed/aim_weapon_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/aim_weapon_reconstruction.md) |
| [I] Target ranking/selection | [C] `0x2e02b0` | [C] [reconstructed/aim_weapon_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/aim_weapon_reconstruction.md) |
| [I] Aim-point selection | [C] `0x369790` | [C] [reconstructed/aim_weapon_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/aim_weapon_reconstruction.md) |
| [I] Weapon dispatcher | [C] `0x319024` | [C] [reconstructed/aim_weapon_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/aim_weapon_reconstruction.md) |
| [I] Recoil capture/restoration | [C] `0x36bc14` | [C] [reconstructed/aim_weapon_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/aim_weapon_reconstruction.md) |
| [I] Desync/teleport/interactive body | [C] `0x32cea8` | [C] [reconstructed/movement_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/movement_reconstruction.md) |
| [I] Collider capture/change/restoration | [C] `0x322aec` | [C] [reconstructed/movement_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/movement_reconstruction.md) |
| [I] Client.LateUpdate detour | [C] `0x2f8574` | [C] [02_rendering.md](/home/john/Desktop/cheat_re/source/02_rendering.md) |
| [I] Overlay/player ESP | [C] `0x3098a4` | [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) |
| [I] Renderer initialization | [C] `0x3b2b38` | [C] [02_rendering.md](/home/john/Desktop/cheat_re/source/02_rendering.md) |
| [I] GUI shader/material/Mesh setup | [C] `0x3b337c` | [C] [02_rendering.md](/home/john/Desktop/cheat_re/source/02_rendering.md) |
| [I] Geometry upload | [C] `0x3b4250` | [C] [02_rendering.md](/home/john/Desktop/cheat_re/source/02_rendering.md) |
| [I] Command recording | [C] `0x3b1a94` | [C] [02_rendering.md](/home/john/Desktop/cheat_re/source/02_rendering.md) |
| [I] Render submission | [C] `0x3b3028` | [C] [02_rendering.md](/home/john/Desktop/cheat_re/source/02_rendering.md) |
| [I] Graphics.ExecuteCommandBuffer wrapper | [C] `0x3b2004` | [C] [02_rendering.md](/home/john/Desktop/cheat_re/source/02_rendering.md) |
| [I] Sussy model/chams reconstruction | [C] `0x36a464` | [C] [02_rendering.md](/home/john/Desktop/cheat_re/source/02_rendering.md) |
| [I] Thread-start export resolver | [C] `0x2ce130` | [C] [03_stack_spoof_spoofcall.md](/home/john/Desktop/cheat_re/source/03_stack_spoof_spoofcall.md) |
| [I] Spoof context setup | [C] `0x2cbd24` | [C] [03_stack_spoof_spoofcall.md](/home/john/Desktop/cheat_re/source/03_stack_spoof_spoofcall.md) |
| [I] Runtime-function lookup | [C] `0x2ce1f0` | [C] [03_stack_spoof_spoofcall.md](/home/john/Desktop/cheat_re/source/03_stack_spoof_spoofcall.md) |
| [I] Unwind parser | [C] `0x2ce3dc` | [C] [03_stack_spoof_spoofcall.md](/home/john/Desktop/cheat_re/source/03_stack_spoof_spoofcall.md) |
| [I] Spoof executor | [C] `0x3cdbd4` | [C] [03_stack_spoof_spoofcall.md](/home/john/Desktop/cheat_re/source/03_stack_spoof_spoofcall.md) |
| [I] Real-state restoration | [C] `0x3cdbba` | [C] [03_stack_spoof_spoofcall.md](/home/john/Desktop/cheat_re/source/03_stack_spoof_spoofcall.md) |
| [I] Malloc-like thunk | [C] `0x38a3c4` | [C] [03_stack_spoof_spoofcall.md](/home/john/Desktop/cheat_re/source/03_stack_spoof_spoofcall.md) |
| [I] Free-like thunk | [C] `0x38a3cc` | [C] [03_stack_spoof_spoofcall.md](/home/john/Desktop/cheat_re/source/03_stack_spoof_spoofcall.md) |
| [I] Entity collection accessor | [C] `0x2f8034` | [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) |
| [I] Encoded-reference transform 1 | [C] `0x2f8540` | [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) |
| [I] Encoded-reference transform 2 | [C] `0x314b80` | [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) |
| [I] Reference allocation-bitmap resolver | [C] `0x315bd0` | [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) |
| [I] Classifier/entity enumeration | [C] `0x31acd0` | [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) |
| [I] World/entity draw loop | [C] `0x2fb72c` | [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) |
| [I] Bone position accessor | [C] `0x368be8` | [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) |
| [I] Bone transform accessor | [C] `0x368c60` | [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) |
| [I] Apparent team getter: constant zero | [C] `0x2cd32c` | [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) |
| [I] Desync/position/violation detour | [C] `0x32cea8` | [C] [05_server_observable.md](/home/john/Desktop/cheat_re/source/05_server_observable.md) |
| [I] Movement/fly-budget helper | [C] `0x3226b0` | [C] [05_server_observable.md](/home/john/Desktop/cheat_re/source/05_server_observable.md) |
| [I] Speed-budget helper | [C] `0x32dbb0` | [C] [05_server_observable.md](/home/john/Desktop/cheat_re/source/05_server_observable.md) |
| [I] Prediction integration/search | [C] `0x2e2474` | [C] [05_server_observable.md](/home/john/Desktop/cheat_re/source/05_server_observable.md) |
| [I] Prediction integration | [C] `0x2e3734` | [C] [05_server_observable.md](/home/john/Desktop/cheat_re/source/05_server_observable.md) |
| [I] Shot construction/pSilent worker | [C] `0x32c0d4` | [C] [05_server_observable.md](/home/john/Desktop/cheat_re/source/05_server_observable.md) |
| [I] Projectile update/hit worker | [C] `0x330b38` | [C] [05_server_observable.md](/home/john/Desktop/cheat_re/source/05_server_observable.md) |
| [I] Projectile.Update | [C] `0x32ae10` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] WaterOverlay.Update | [C] `0x332554` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] SmokeGrenade.Update | [C] `0x32f038` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] TOD_Sky.LateUpdate | [C] `0x32f408` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] ItemIcon hashed method | [C] `0x3215cc` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Movement position hook | [C] `0x32a9f8` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Movement tick hook | [C] `0x324b30` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Collider hook | [C] `0x322aec` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Obfuscated-type shot hook | [C] `0x32cae8` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] Obfuscated-type hit hook | [C] `0x32b62c` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] BasePlayer automation hook | [C] `0x2e91fc` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] BaseMelee hook | [C] `0x2e12e0` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |
| [I] BaseLauncher hook | [C] `0x2ddb10` | [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) |

## Input hashes

[C] These primary hashes are copied from the supplied manifest and independently verified. The complete manifest follows for all input artifacts.

| Input | SHA-256 |
|---|---|
| [C] [unpacked/cheat.unpacked.dll](/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll) | [C] `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090` |
| [C] [static/cheat_annot.asm](/home/john/Desktop/cheat_re/dump_analysis/static/cheat_annot.asm) | [C] `a83aaa8795f1e97912ec0f79828f9f822f4e46702ffcdea597381d0e0dd97d2c` |
| [C] [static/cheat_text.asm](/home/john/Desktop/cheat_re/dump_analysis/static/cheat_text.asm) | [C] `98e3426d2085b1f24cd6354155c9d2642011ffe5a28706456d8c92484e9abb42` |
| [C] [static/cheat_decstr.txt](/home/john/Desktop/cheat_re/dump_analysis/static/cheat_decstr.txt) | [C] `6c2491fb599069c1b6dd7a256d6367f410f7f5dd1f9f79cf459c6ee618bd92a3` |
| [C] [static/cheat_hooks.txt](/home/john/Desktop/cheat_re/dump_analysis/static/cheat_hooks.txt) | [C] `32ca33d6d92efaf38a1f796bf38eaf3e5045423b51425470b930c9db919b5a4c` |
| [C] [static/RUNTIME_UNPACK_REPORT.md](/home/john/Desktop/cheat_re/dump_analysis/static/RUNTIME_UNPACK_REPORT.md) | [C] `ba0d3922e36385f4d960d985e7dfe0d5c9b56339fc807ff8c7d1a4d827892d42` |
| [C] [C_vmp/VMP_INVENTORY_REPORT.md](/home/john/Desktop/cheat_re/dump_analysis/C_vmp/VMP_INVENTORY_REPORT.md) | [C] `6d955d1e783d319f42bc96b450b0f2bf664fd08e83494ac2d018e34fbb59f191` |
| [C] [C_vmp/cfg_users.json](/home/john/Desktop/cheat_re/dump_analysis/C_vmp/cfg_users.json) | [C] `7621758c7cc17719b24dbc18a642fbe1fe29df644ff10f11113d034e7cc903ea` |

[C] Supplied manifest SHA-256: `a106b5ad116dfc931b58d6470482a000be8e4f381f39405255e0195271ee94c2`. Source: [MANIFEST.sha256](/home/john/Desktop/cheat_re/dump_analysis/MANIFEST.sha256).

## Output hashes

[C] Exact file-byte SHA-256 values below cover every source deliverable except this index itself. Its own exact hash, together with all the others, is in the external checksum record; this avoids an impossible embedded self-hash.

| Output | SHA-256 |
|---|---|
| [C] [01_hooks.md](/home/john/Desktop/cheat_re/source/01_hooks.md) | [C] `7b43d1f4733fb6a4fec75563349cf33e4ce95b2182e2af1f3354c0613602ddd9` |
| [C] [02_rendering.md](/home/john/Desktop/cheat_re/source/02_rendering.md) | [C] `7aced4a42392e71c5dcd853135c807adeaf27fd03871718814e50cb326cd0ee3` |
| [C] [03_stack_spoof_spoofcall.md](/home/john/Desktop/cheat_re/source/03_stack_spoof_spoofcall.md) | [C] `f9519d5d45e04b5d95bb8186e33bd70f5a81fc46f413917242ee6a87ddbec178` |
| [C] [04_esp_entities.md](/home/john/Desktop/cheat_re/source/04_esp_entities.md) | [C] `5486c2e14c861e8aaa3939555cf73c64eb4f311c989af6dcd41dc0fe4e006907` |
| [C] [05_server_observable.md](/home/john/Desktop/cheat_re/source/05_server_observable.md) | [C] `410fa6abe5b7a20f6cf9e232d1ce3813bda06e882fc8f1b3b526565509fb240e` |
| [C] [BASE_READINESS.md](/home/john/Desktop/cheat_re/source/BASE_READINESS.md) | [C] `917028c7cd0614e3420c04cb34693a1b4eeb8ca194536d7b047da580d78fd218` |
| [C] [CMakeLists.txt](/home/john/Desktop/cheat_re/source/CMakeLists.txt) | [C] `9e9f4a4be78b3de8affd60eb16ee5fd187e7fd5c1d60c1191ac0d75e7e978ca4` |
| [C] [MENU_OFFSETS_GOAL.md](/home/john/Desktop/cheat_re/source/MENU_OFFSETS_GOAL.md) | [C] `d11da8c7756283442726b6e309dea9938cb9181ef7962e2718af4729d88fb0f1` |
| [C] [PROGRESS.md](/home/john/Desktop/cheat_re/source/PROGRESS.md) | [C] `1829707f691fab0007885d4d282d9dcb52242f446fed1d51ad287852dd8aba80` |
| [C] [offset_inventory/README.md](/home/john/Desktop/cheat_re/source/offset_inventory/README.md) | [C] `aad157631810739e8086a6ee2b698556c06e808bae833fb61e7c7b68499a1836` |
| [C] [offset_inventory/auto_resolved_excluded.csv](/home/john/Desktop/cheat_re/source/offset_inventory/auto_resolved_excluded.csv) | [C] `4ec2b3eeb268817bf33d30f937ce22acf84805860dab4c0a0361a13b40032002` |
| [C] [offset_inventory/game_field_offsets.txt](/home/john/Desktop/cheat_re/source/offset_inventory/game_field_offsets.txt) | [C] `c490ae5a89d764f88a561780077ce18980f8d8d4136bd30cc75dbefb8907b9f9` |
| [C] [offset_inventory/gameassembly_offsets.txt](/home/john/Desktop/cheat_re/source/offset_inventory/gameassembly_offsets.txt) | [C] `4b7f8ae6adc7c79e2b8ccfe6530189a2ed093acd7ab663260fe6dfff8bfe8996` |
| [C] [offset_inventory/manual_update_offsets.csv](/home/john/Desktop/cheat_re/source/offset_inventory/manual_update_offsets.csv) | [C] `8ac877ea7a5b54b774fe53141b214bee86406028ec3f36f70461a9d183693109` |
| [C] [offset_inventory/manual_update_offsets.txt](/home/john/Desktop/cheat_re/source/offset_inventory/manual_update_offsets.txt) | [C] `db3ebf20e57e3f4c560409cb9a895eb50eaf617f2e5d575a734235616007d78c` |
| [C] [offset_inventory/summary.json](/home/john/Desktop/cheat_re/source/offset_inventory/summary.json) | [C] `18fc39957031c92b1afd0610e2919cb19ab694c82b0e85c16e9795c95b3fe28e` |
| [C] [offset_inventory/unclassified_not_counted.csv](/home/john/Desktop/cheat_re/source/offset_inventory/unclassified_not_counted.csv) | [C] `62e870a38bc7a1a8b4f7f20544d65c9fa4cdb72e280651c2c79b3cdd6cedd3a8` |
| [C] [reconstructed/.clang-format](/home/john/Desktop/cheat_re/source/reconstructed/.clang-format) | [C] `52d20858c679c9942c506d49a78ae517cd2cc5b86f1bb83e9512292210ebfa08` |
| [C] [reconstructed/01_hooks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/01_hooks.cpp) | [C] `907591ccbabe9b1ce4d26e3519c39e4402ae920b41026f65cefade58dc614d34` |
| [C] [reconstructed/02_rendering.cpp](/home/john/Desktop/cheat_re/source/reconstructed/02_rendering.cpp) | [C] `d5494d18b99c6b6a73202f89ce94e15b14f6a09cad6f7dee4a8fd70cd91197b4` |
| [C] [reconstructed/03_stack_spoof_spoofcall.cpp](/home/john/Desktop/cheat_re/source/reconstructed/03_stack_spoof_spoofcall.cpp) | [C] `d53c35faf21e88ef4efe0ff64fc2bc51c294ea0fde75abc416eae7a2ec9164b3` |
| [C] [reconstructed/04_esp_entities.cpp](/home/john/Desktop/cheat_re/source/reconstructed/04_esp_entities.cpp) | [C] `ae3e2978394acd55c5ddf4ccfdd3a8d875f647556ab82717b16fa9ca96064909` |
| [C] [reconstructed/05_server_observable.cpp](/home/john/Desktop/cheat_re/source/reconstructed/05_server_observable.cpp) | [C] `21a305a6a232c0c4cf0d10500edc4dad13e827cebe6ca093a017f60a05be592f` |
| [C] [reconstructed/CMakeLists.txt](/home/john/Desktop/cheat_re/source/reconstructed/CMakeLists.txt) | [C] `225451342845d2ed8bffe905e820893ff93fa1e8451778f154da6e668c614994` |
| [C] [reconstructed/README.md](/home/john/Desktop/cheat_re/source/reconstructed/README.md) | [C] `318babb99594d27b1c03d21fb6626292ead904764035450d9380cc37d59f3709` |
| [C] [reconstructed/aim_weapon_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/aim_weapon_analysis.cpp) | [C] `0db1c0c211d2c5e82e05016d9fd639e2d690dc7858252bf5689ab9b3a7c2d7db` |
| [C] [reconstructed/aim_weapon_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/aim_weapon_analysis.hpp) | [C] `ff5629d56450eae93b6483daee3a7fbdaf043e0ea6050480607ede2b9b20d71f` |
| [C] [reconstructed/aim_weapon_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/aim_weapon_checks.cpp) | [C] `ca40c110ae1bdf530b233312fc9e135e007563b91d33f9cc67945f6dfa755476` |
| [C] [reconstructed/aim_weapon_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/aim_weapon_reconstruction.md) | [C] `2d33d7ebf2b18dc3a3de96660ccbe580837a669af1ba1512b1870fc6c0214ff0` |
| [C] [reconstructed/allocation_cache_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/allocation_cache_analysis.cpp) | [C] `fd7b0e56f5f9133b33521ccf3d690306c554d99ceec760610eee19e8822b8a1c` |
| [C] [reconstructed/allocation_cache_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/allocation_cache_analysis.hpp) | [C] `7f79fa4ee164d8e6b7b371276b68d54738a5ed209a09f27b41db1513c0145923` |
| [C] [reconstructed/allocation_cache_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/allocation_cache_checks.cpp) | [C] `f8f79dbc78d8401ddf9e5b04eaf7a4ce7b45c02d9bc67057226a43aa3d772034` |
| [C] [reconstructed/allocation_cache_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/allocation_cache_reconstruction.md) | [C] `40f73d164c50850146655235b4c2a6edd3b594ea7a89b32110b1f5d5fe197154` |
| [C] [reconstructed/analysis_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/analysis_checks.cpp) | [C] `98fd73ffa2190334d32233af2c5ea9556907f57b97cbcf592eae4323cd78cd15` |
| [C] [reconstructed/analysis_failure.hpp](/home/john/Desktop/cheat_re/source/reconstructed/analysis_failure.hpp) | [C] `9d13cebeb9d06f857fed3fe6804634c05b5c296d974435768ecb24bca46b83a3` |
| [C] [reconstructed/completion_ledger.json](/home/john/Desktop/cheat_re/source/reconstructed/completion_ledger.json) | [C] `f2c6061b560a086d9ef81757fc619505d1f8643a0fc52c18df55cd182937d088` |
| [C] [reconstructed/composition_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/composition_reconstruction.md) | [C] `eccf41004075ada2bbbe2f1adad1acebcd11a350b24295de185e1fc052ac117b` |
| [C] [reconstructed/dependency_inventory.json](/home/john/Desktop/cheat_re/source/reconstructed/dependency_inventory.json) | [C] `2e3668eb4afcf3cb0652060010731e9ec82d4ef0046cf9bd6901d46599757b0f` |
| [C] [reconstructed/draw_meters_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_meters_analysis.hpp) | [C] `59b7799ca19ff2f4ff8004de7b078f05a7d40e3ec572c49e3f7a149072c142c7` |
| [C] [reconstructed/draw_meters_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_meters_bindings.cpp) | [C] `02a8bb71e170ebfc77839a730df5c521ccbe456bdf47637144d4c985f4babdac` |
| [C] [reconstructed/draw_meters_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_meters_checks.cpp) | [C] `f49bad282d33168ca1e0eb7f08582ebbb3c138860fe1c8e141d18390eb8e48bf` |
| [C] [reconstructed/draw_meters_controllers.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_meters_controllers.cpp) | [C] `e14735bf7ead6f4b9562d1170e7443eb7b05ed25cfd1fc9a9b669c9d6ed3eab5` |
| [C] [reconstructed/draw_meters_coverage.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_meters_coverage.cpp) | [C] `c1cd5602da54d7987a4119579c4b06723bc9b517ae4e3a8a4e8a997bff0bb7ce` |
| [C] [reconstructed/draw_meters_helpers.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_meters_helpers.cpp) | [C] `305b3382da7aacd777af35794c4531a68cc33241ce960d8259dd8be0f97480c0` |
| [C] [reconstructed/draw_meters_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_meters_internal.hpp) | [C] `80b93011625ce9967f9b5815bdebf895bdab31abfdef2135061a22bda7ffcdb7` |
| [C] [reconstructed/draw_meters_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/draw_meters_reconstruction.md) | [C] `8ab53e924b219cbd74866c2a42cdd9a3f85dff5ff97124283695145e17db0059` |
| [C] [reconstructed/draw_shadows_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shadows_analysis.hpp) | [C] `5f06969c50ffbedbece25db283f5e4ecad73d9ab1bbec13d154bde8c2d5dc488` |
| [C] [reconstructed/draw_shadows_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shadows_checks.cpp) | [C] `51317af3974d4ec05a4c0fbef457ad814e05ecf09e18015d96bcb2d8bfd822f4` |
| [C] [reconstructed/draw_shadows_clipping.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shadows_clipping.cpp) | [C] `aa1739cc14bca20412babab510dd560edbc0d7a16c046b8bceb3e25019c6c6e1` |
| [C] [reconstructed/draw_shadows_controllers.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shadows_controllers.cpp) | [C] `60f6bfba503800076e7ba43dbeb1f8a60e1423166edde658ea04bc2878817e66` |
| [C] [reconstructed/draw_shadows_geometry.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shadows_geometry.cpp) | [C] `147a4d0da2ec00c20d151c669cd4ffaa835b61d1aadaa6326580757b6af27691` |
| [C] [reconstructed/draw_shadows_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shadows_internal.hpp) | [C] `1b1b28f5a7dbb01962cc36b5ff69bdac8c359576bcb9671f8fce87ce0bf80aeb` |
| [C] [reconstructed/draw_shadows_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/draw_shadows_reconstruction.md) | [C] `995d5fac7eeb6f0423ba5c86de89984e7e8e2e896ecf0c1cb6640c9e185885a5` |
| [C] [reconstructed/draw_shapes_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shapes_analysis.hpp) | [C] `bef2a6d36cb5446bedc2db2d609dff53f6634f29b6ffd147a01423f7fd767e2c` |
| [C] [reconstructed/draw_shapes_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shapes_bindings.cpp) | [C] `ddeb61836ce35e340eea563640ce4dd04b8dac26838e9325a1feebd73fc2b84e` |
| [C] [reconstructed/draw_shapes_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shapes_checks.cpp) | [C] `73b7778a567840f80f1ff4b0cdcf8cbe5db6deb4da8274d8a49c6b97a02b9483` |
| [C] [reconstructed/draw_shapes_coverage.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shapes_coverage.cpp) | [C] `5b026da5fbc2cf2ae2e2cd3637da4c5d9de0e2708d468fcc4474177ca155a5d0` |
| [C] [reconstructed/draw_shapes_geometry.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shapes_geometry.cpp) | [C] `f4e79a5759f8067822e357ac2c6b8f33e18c7c79f5fce320a90ac009f0cc26aa` |
| [C] [reconstructed/draw_shapes_paths.cpp](/home/john/Desktop/cheat_re/source/reconstructed/draw_shapes_paths.cpp) | [C] `d9057bf37a452eaab5e399386803abe654de46ea92a8c336eff7205e93f218f3` |
| [C] [reconstructed/draw_shapes_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/draw_shapes_reconstruction.md) | [C] `48e5da71f20ac442eeb641b613396e71d7d8baae61d7ce5d0dfd6571ed294caa` |
| [C] [reconstructed/drawlist_core_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/drawlist_core_analysis.hpp) | [C] `a8aa5868756f5b370e84c803d1d656566ed0618d22d3b44a37603ab0b194175c` |
| [C] [reconstructed/drawlist_core_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/drawlist_core_bindings.cpp) | [C] `6b26cd847287117ea24aca16ffe2dcc8f1a6cdb6fbca9d103541694e28e49693` |
| [C] [reconstructed/drawlist_core_channels.cpp](/home/john/Desktop/cheat_re/source/reconstructed/drawlist_core_channels.cpp) | [C] `e3d1e499e49052e09834039552e2c7a656d25878b87312696e3893ac7197d52f` |
| [C] [reconstructed/drawlist_core_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/drawlist_core_checks.cpp) | [C] `0cea9d64ee6a90e611ff39b62d8af2332491d7b5da301530eb097e1666d74df9` |
| [C] [reconstructed/drawlist_core_commands.cpp](/home/john/Desktop/cheat_re/source/reconstructed/drawlist_core_commands.cpp) | [C] `07b43e6c94df3331bd9fdb4f7dce1caf2be1a7b0b1d58eb547774ff5556c4984` |
| [C] [reconstructed/drawlist_core_coverage.cpp](/home/john/Desktop/cheat_re/source/reconstructed/drawlist_core_coverage.cpp) | [C] `e7b3a2da60bfa189f01a52c3510a48be1e60f6cd12af4e7e5df904a5c86578d5` |
| [C] [reconstructed/drawlist_core_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/drawlist_core_reconstruction.md) | [C] `97277132d0839b64e447b88f885fe1796711db8553b1e384a9f49b6f74e5234a` |
| [C] [reconstructed/entities_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/entities_analysis.hpp) | [C] `c1f3a9ad7186a1d8bde1ffb0710cc5cb80c5c960aedd145fc093ea6994908ba9` |
| [C] [reconstructed/entities_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/entities_checks.cpp) | [C] `6abbd2d3d2f10ae8ee39f95a9e90788068d19a33997613165000a3f68bb41fb0` |
| [C] [reconstructed/field_getters_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/field_getters_analysis.cpp) | [C] `8b99e96007c673f43f60c320a0b54125e28e3faf076317dc91e1cbc38b3a6de2` |
| [C] [reconstructed/field_getters_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/field_getters_analysis.hpp) | [C] `d7d772fb5ed6bca84c8ed72a10181adc9f783643985621b834c8d5caf53dc133` |
| [C] [reconstructed/field_getters_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/field_getters_checks.cpp) | [C] `3c4bfc74d11ec669d84cf65e463770297b37da6449e6049106428704828adc3f` |
| [C] [reconstructed/field_getters_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/field_getters_reconstruction.md) | [C] `7470daf04a7d8c751f74a756a0d0a022e6aff0d582b3228a540a19af48f7b18d` |
| [C] [reconstructed/font_atlas_input_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/font_atlas_input_analysis.hpp) | [C] `897c1658213c3c93f8d87a2e1f9c2d02d1ae6b56b28a25dc5619a42b25e88945` |
| [C] [reconstructed/font_atlas_input_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_atlas_input_bindings.cpp) | [C] `1b25c92d47c29f28efc91375dfbabd8a2b8e58d56045a5afc5315efaabfa0b85` |
| [C] [reconstructed/font_atlas_input_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_atlas_input_checks.cpp) | [C] `f8f4102a5abf42682e7fe4c8895458b6852cba11620daf073695ef1b59dfeaa2` |
| [C] [reconstructed/font_atlas_input_clear.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_atlas_input_clear.cpp) | [C] `24b3070369052cf0cb66efa1defde3a9b847f36d7c7dbebfe2d2ae7a3e74ef2f` |
| [C] [reconstructed/font_atlas_input_coverage.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_atlas_input_coverage.cpp) | [C] `4c5531273019dfed41a70754a2f736198b9ea635d7e7eb7827d5e65cd85dad95` |
| [C] [reconstructed/font_atlas_input_ingestion.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_atlas_input_ingestion.cpp) | [C] `8f72615f9b73e2e2bfbf56874081a8aa3d4334f43338953bfdd555212734b3e8` |
| [C] [reconstructed/font_atlas_input_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/font_atlas_input_internal.hpp) | [C] `e1f6f912f58b3a90a30e0aae055d232252d418917303acad0e671bca11462c8d` |
| [C] [reconstructed/font_atlas_input_memory.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_atlas_input_memory.cpp) | [C] `d0b1a61292c949fcdb244c04f6ed94823af130a7fb13c49598147335d888d367` |
| [C] [reconstructed/font_atlas_input_ranges.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_atlas_input_ranges.cpp) | [C] `bacdd934f287da6968cd41bcfc10ea54d497766fe5e8d5b4255b2e88d49ba523` |
| [C] [reconstructed/font_atlas_input_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/font_atlas_input_reconstruction.md) | [C] `19d8f8143055d31db6863935af52438503d22738f82a996041dd404cdcb74e1f` |
| [C] [reconstructed/font_builder_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_analysis.hpp) | [C] `4320d3a002b5f5e942aa9dcc671d206c55eb22afe412b6eddaeb254d4b183ad4` |
| [C] [reconstructed/font_builder_cff.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_cff.cpp) | [C] `2affc899d376aced70458b30bb518ae609525df7f41ab0ec3063cc73ce8123f0` |
| [C] [reconstructed/font_builder_cff_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_cff_checks.cpp) | [C] `9cd817f9e05fbe7601a4f124f82cb0aae72eadef11fd2feb1fe555b80fb16d0d` |
| [C] [reconstructed/font_builder_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_checks.cpp) | [C] `c61179ee9427c888698db17678d395eb4e4672b3c40fdda8fb86259473523e04` |
| [C] [reconstructed/font_builder_controller.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_controller.cpp) | [C] `b6268a42d6b11f9497e2b429af295548e277896eeec8070a8b06a2694ec4a967` |
| [C] [reconstructed/font_builder_coverage.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_coverage.cpp) | [C] `623b7868cafda33e065660d408a7a1065804d89f72738f8def4928f04d130956` |
| [C] [reconstructed/font_builder_finish.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_finish.cpp) | [C] `b8a53c1ad681bcb9a288cd2df96c1b2c77fa259581df20b6bf2b0ceedbbe64d1` |
| [C] [reconstructed/font_builder_fixture.hpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_fixture.hpp) | [C] `fc3328c3c72d735d93d350d8dc8b1b7c8ce55af8bc53f6ae26af499fa20358bf` |
| [C] [reconstructed/font_builder_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_internal.hpp) | [C] `6944376efddfac4316b8922399bad9cc190b5cd9cdf4b07df1809f12e68ca2c6` |
| [C] [reconstructed/font_builder_outline.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_outline.cpp) | [C] `c5e299009cd22d77d65aae353927c021d6ce650229c7972b82aa9848a42ea5df` |
| [C] [reconstructed/font_builder_owned.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_owned.cpp) | [C] `b397e1d55b4e87f1f34a85cc0b11be798091525b0cc8079b08261858b4d58952` |
| [C] [reconstructed/font_builder_owned_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_owned_checks.cpp) | [C] `bbd817d2c2fa602f59ab6d221cad710abac1646497c568671fda467204b83401` |
| [C] [reconstructed/font_builder_packing.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_packing.cpp) | [C] `11f48a7fc2cd0b8279c9c3c84e6959f7b69c606a4e68b84dbef4095062d9a3a5` |
| [C] [reconstructed/font_builder_packing_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_packing_checks.cpp) | [C] `593f02cf6d66edda3ada98ec236f6459221bba8649281dfe285c66f03c57ac9e` |
| [C] [reconstructed/font_builder_raster.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_raster.cpp) | [C] `865a8da5e29259087fcf2e53ed1fe999be68eb157c44a5726139218f38c0b7d3` |
| [C] [reconstructed/font_builder_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_reconstruction.md) | [C] `c97a90e52d7526b6177444480af8dfad910f4e4266b7fa3cd6a34b81b935594a` |
| [C] [reconstructed/font_builder_sfnt.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_sfnt.cpp) | [C] `ff63d2f8cf74289982d1edb28676718bfbee095607b2953c012d7125e03e9028` |
| [C] [reconstructed/font_builder_sfnt_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_sfnt_checks.cpp) | [C] `26f979adce17824fdd20ff1ed3a439beb81a588a6c075581d9697d95accf71d0` |
| [C] [reconstructed/font_builder_support.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_support.cpp) | [C] `23d369778a668f2a3979066270eaaefaef80f0ef38d147f4472118a2fea97e90` |
| [C] [reconstructed/font_builder_support.hpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_support.hpp) | [C] `6acb09cb3c671d58d15d0ea75bc6455155996cd598eb0e294c9b4ada341a9f90` |
| [C] [reconstructed/font_builder_support.md](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_support.md) | [C] `828e83692c57113a97a97fc600441ec378888f9cd54c13679b539a54942a1f07` |
| [C] [reconstructed/font_builder_support_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_builder_support_checks.cpp) | [C] `537507a3c9a5f98347ab7012adfee192a5696cd6caac000fbf1e3d7cc44db66b` |
| [C] [reconstructed/font_frame_binding_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_frame_binding_checks.cpp) | [C] `497e6c91c0b14f32e565535eb6a06a97ee4d6aa8ac3d70df42370c12e05d81c2` |
| [C] [reconstructed/font_frame_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_frame_bindings.cpp) | [C] `ccf8b35723c0db319ac867cc60953b3975a30117b9b78521ca1c1cba19e55a04` |
| [C] [reconstructed/font_frame_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/font_frame_bindings.hpp) | [C] `f565ef87cbf2d0e1d182300650603a1ee20de9bbfb3fd0dc66b757563ee9beb3` |
| [C] [reconstructed/font_frame_bindings.md](/home/john/Desktop/cheat_re/source/reconstructed/font_frame_bindings.md) | [C] `47205cd0d600896eb5e8ee4dc60c3d2ba5f2e135659c6998e0f4856414bc6c8c` |
| [C] [reconstructed/font_producer_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_producer_analysis.cpp) | [C] `eb6674631f717bfbcf62548051ee66627add9160d52c33deba72d414daa06ce3` |
| [C] [reconstructed/font_producer_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/font_producer_analysis.hpp) | [C] `a9ef8e15acce7fa42ef9eca33dd5897f945aaf974877ac394154980e699d39bd` |
| [C] [reconstructed/font_producer_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_producer_checks.cpp) | [C] `a2b28c9670398c33c9f72bebdf28bb1662f292295068b19661cbb397bbf159ae` |
| [C] [reconstructed/font_producer_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/font_producer_reconstruction.md) | [C] `191855ab770dcc631d7da5300f84956e1ab8e22b0e9de815790a3e87b4cc5655` |
| [C] [reconstructed/font_text_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/font_text_analysis.hpp) | [C] `7b293e8742775fd456f2e3cf822110d3fb102b68d4c8e6ef06ae831a94906d66` |
| [C] [reconstructed/font_text_atlas.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_text_atlas.cpp) | [C] `8b0fab75ca84b0396ba6fcb2081ff304695688fb96dbe24440c308b28b9f7ead` |
| [C] [reconstructed/font_text_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_text_checks.cpp) | [C] `00e2bae00c6e284120fe18116a347b672d4997430056812c55f3db2db7250886` |
| [C] [reconstructed/font_text_controllers.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_text_controllers.cpp) | [C] `17eae5fc637d1b8f59bda771469d44752b6204190ae59af932b578de40a55fab` |
| [C] [reconstructed/font_text_lookup.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_text_lookup.cpp) | [C] `d37af6c7fe5e673b9ff0b1e1a10cafe44004b84113ad02a0bc1d0de3dc3162d2` |
| [C] [reconstructed/font_text_raster.cpp](/home/john/Desktop/cheat_re/source/reconstructed/font_text_raster.cpp) | [C] `b275db9badd7a7410f110b232205c73bc8c79b32271c397348b7c33651c69da9` |
| [C] [reconstructed/font_text_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/font_text_reconstruction.md) | [C] `c1943f76d2b08defd260944a630fc28d02811c225f962bbedf3fe9650e0a2f2b` |
| [C] [reconstructed/frame_dependencies_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_analysis.cpp) | [C] `623e189fb8962dd6744ed88382a4d18a4c1c43983dda7c7120915c31ac6c2e3b` |
| [C] [reconstructed/frame_dependencies_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_analysis.hpp) | [C] `5ba226f6974847f5ab29be4be5d704c9a0570e05020a502e5d456167a83f1965` |
| [C] [reconstructed/frame_dependencies_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_checks.cpp) | [C] `a3b512b3303e5787356ce582e6ed3749b1a968ff8bb9b924b5639c0078a60616` |
| [C] [reconstructed/frame_dependencies_configuration.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_configuration.cpp) | [C] `09f0fc26b41274849809697fdfe5ff61bae539cfb0f9c61296f77e23dab0e016` |
| [C] [reconstructed/frame_dependencies_configuration.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_configuration.hpp) | [C] `78fd29c1a0a62f4aaf6b8a03de9abec55f9c8ba595cc9cc0ae2744acebcd34e4` |
| [C] [reconstructed/frame_dependencies_hotkeys.inc](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_hotkeys.inc) | [C] `8e8ebffb572388e90c69b4fc37acdc284f31ddb8bd439fcd31e15c2dd32f5983` |
| [C] [reconstructed/frame_dependencies_main_menu.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_main_menu.cpp) | [C] `2b60fcdbc73420db34d24230d796f4c4f91dc8d7a04e77c4f9b601b82fd0b253` |
| [C] [reconstructed/frame_dependencies_main_menu.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_main_menu.hpp) | [C] `3c1a55c5d39d763999e0c38fcdb93f43a9b746c5e04dfadf70bd1e1bcf80e270` |
| [C] [reconstructed/frame_dependencies_main_menu_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_main_menu_checks.cpp) | [C] `e48807c8eefc4bc69f1440a11cb2539c011fcfd1dacb014cbccae97250bd5537` |
| [C] [reconstructed/frame_dependencies_menu.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_menu.cpp) | [C] `6d07690706ae431a68d65d6da024041a1df6bc0cc7476a19a0fad2aabc687d25` |
| [C] [reconstructed/frame_dependencies_menu.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_menu.hpp) | [C] `37c09581c2d887ed69d05cb92b8f95a28e2ae7bbe9e21e7069e1f7e53242701a` |
| [C] [reconstructed/frame_dependencies_overlay.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_overlay.cpp) | [C] `a511a59411ee085b788067cdc04eb0e02e2cf94c0539634e0a3333dc7f498105` |
| [C] [reconstructed/frame_dependencies_overlay.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_overlay.hpp) | [C] `89cdfa3593c8a34ec107ffd2e168fb50e05848618c86b5f5f3d9c183a6e92845` |
| [C] [reconstructed/frame_dependencies_overlay_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_overlay_checks.cpp) | [C] `0ccc34ab9c0ccc805fa71601d708f60d22931257c2234179a8651a96e2f03677` |
| [C] [reconstructed/frame_dependencies_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_reconstruction.md) | [C] `d2b0ff5b97492368075376f9dd432bece8cd1cc7b00dccd38c0beec7538369d3` |
| [C] [reconstructed/frame_dependencies_target.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_target.cpp) | [C] `1a93d5001cfbb011c6a94c1f40bf2e7191c3766a4a08d151e74bd457d4b96642` |
| [C] [reconstructed/frame_dependencies_target.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_target.hpp) | [C] `c85234874d9ee34097345e9d29252fd50d33f9e76661b51d76fb9bcc58871759` |
| [C] [reconstructed/frame_dependencies_theme.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_theme.cpp) | [C] `1c3598ed404573b4f6e0f134f3000dcb884011a6b2f946e9ee297f1817fa8fe2` |
| [C] [reconstructed/frame_dependencies_ui_setup.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_ui_setup.cpp) | [C] `4f3e302d525be90426898c34a6d8a4f0e4182f1dfc143717240ddf2afaa34d82` |
| [C] [reconstructed/frame_dependencies_ui_setup.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_ui_setup.hpp) | [C] `3ff063b68feb1366db12e55e61a4aadbacd501b87a38d5e2fbf56b60cfe416a9` |
| [C] [reconstructed/frame_failure.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_failure.hpp) | [C] `3e9325253c689afba2c77eff7cbf35d1af36052b46eee5309cdfc72750cbbbb0` |
| [C] [reconstructed/frame_failure_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_failure_checks.cpp) | [C] `591b054cd7b54e13c1ea634fc4ec80812e5d51b6e4c2429f70208e548f4d01df` |
| [C] [reconstructed/frame_game_binding_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_game_binding_checks.cpp) | [C] `f4e9a86252f54ce9839f35cbdfd839ee109e283abc2b72364a73353862eab9b8` |
| [C] [reconstructed/frame_game_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_game_bindings.cpp) | [C] `383ce8e48b3f969558ea799342bc9261e08348ee998387071c707ad7da54a6f7` |
| [C] [reconstructed/frame_game_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_game_bindings.hpp) | [C] `8acc9104f5eff0fd5e71391d365ab6e78f6f336b4b60366d3092c86b2939b884` |
| [C] [reconstructed/frame_game_bindings.md](/home/john/Desktop/cheat_re/source/reconstructed/frame_game_bindings.md) | [C] `53ed55e665e1963f8d93e4429c5e34db6ac27c50f00334a3b62eaff3a1f58659` |
| [C] [reconstructed/frame_preview_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_preview_analysis.cpp) | [C] `13d053a67dcfb58ad4d197e0051f789bff7ba6ceb0a861f9dd7df67e9a2c5aef` |
| [C] [reconstructed/frame_preview_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_preview_analysis.hpp) | [C] `583eef34f24de899867a7ab30dcd8cdbef024d555b3bb93d3a1e033e0efb1a87` |
| [C] [reconstructed/frame_preview_detail.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_preview_detail.hpp) | [C] `0cd7b9d2a13da221b338dcbd61f0fdca40bde786128c5559280b6ed8f6b58147` |
| [C] [reconstructed/frame_preview_geometry.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_preview_geometry.cpp) | [C] `4e2dcd5cee4b109388b3d5c623844e43238b352f384ec7296e0e6d5ead42d244` |
| [C] [reconstructed/frame_preview_widgets.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_preview_widgets.cpp) | [C] `92e4521638bfa6211bfcd7914511ea3e6afa1658b6128b2a7634050a5ca25f09` |
| [C] [reconstructed/frame_residuals_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_residuals_analysis.hpp) | [C] `3cedb860f8eac0548cb83dab69dce9f620439ab26a5dc458bb03a9164014b34a` |
| [C] [reconstructed/frame_residuals_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_residuals_checks.cpp) | [C] `8760347c59900eb78d2b1d57d8b131b9bda63e81290d8e1a491ee70112ad952c` |
| [C] [reconstructed/frame_residuals_detail.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_residuals_detail.hpp) | [C] `2d8ed758d3a05bebaa860b3cbcc9db947049c28c307cdf904a53e2b0ce71602e` |
| [C] [reconstructed/frame_residuals_raid.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_residuals_raid.cpp) | [C] `9bf57fda72aff57da95501cefab01e4641575970824d437fb78797e905d7bd1f` |
| [C] [reconstructed/frame_residuals_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/frame_residuals_reconstruction.md) | [C] `18477f2422febe9ced0b8341e57ec526b00eadb7fcc24e044bbed50bb96dbab4` |
| [C] [reconstructed/frame_residuals_remaining.json](/home/john/Desktop/cheat_re/source/reconstructed/frame_residuals_remaining.json) | [C] `d6685dc0222f069dd665d171b39cb80a3cafc161126de14385311e8b862fa1a4` |
| [C] [reconstructed/frame_residuals_state.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_residuals_state.cpp) | [C] `5db700d32aaad666dfed5f95e0c3ceca38d9c2109ab2cf0736017f1d4c1f3186` |
| [C] [reconstructed/frame_world_controllers_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_analysis.hpp) | [C] `ad7443be3d12849de454534095e28562ea48b29f88b804e785de6d28b5fd77d4` |
| [C] [reconstructed/frame_world_controllers_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_bindings.cpp) | [C] `45feb417cd1f243f21a807b1ba0871b0445773370af3f791689da4353c444726` |
| [C] [reconstructed/frame_world_controllers_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_checks.cpp) | [C] `0f444cb9ed6cedbea88a6ba5508d64edfb77f47a75e0b22d6ff0f033b3b6b427` |
| [C] [reconstructed/frame_world_controllers_collections.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_collections.cpp) | [C] `872d92a6182211426f68ad66ccc0aa8ce413a5be263bdfb4d33dc81bc32d306f` |
| [C] [reconstructed/frame_world_controllers_collider.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_collider.cpp) | [C] `88912b6aa56ec12709ac0de8030e4c909a8f186a5884ae5894dd451bd199b4e0` |
| [C] [reconstructed/frame_world_controllers_configuration.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_configuration.cpp) | [C] `443562e567032d5ecab39565a21e3b14f505506cc6bcefacefaaa130289c2884` |
| [C] [reconstructed/frame_world_controllers_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_internal.hpp) | [C] `9bbb964079b2d0a3be67486139dbccfde1588203f6322eee0f518777dbbaab02` |
| [C] [reconstructed/frame_world_controllers_materials.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_materials.cpp) | [C] `45275f68cb594184c77eca456b283e9f709a6b8113e536241493cf5f92d4440f` |
| [C] [reconstructed/frame_world_controllers_rain.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_rain.cpp) | [C] `b3c13632de43c9a9d3368a6b83ee00027e40a4f24cb9e6cd39e558830f44fcb7` |
| [C] [reconstructed/frame_world_controllers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_reconstruction.md) | [C] `974cdd03619578758def4f58528a37d38eb1ad23cc0a3d9487944e96ee37f898` |
| [C] [reconstructed/frame_world_controllers_visibility.cpp](/home/john/Desktop/cheat_re/source/reconstructed/frame_world_controllers_visibility.cpp) | [C] `32e33eea9d0f0fede2a88914461381411b7228c6cd4755a1b20ba3b76fcacc99` |
| [C] [reconstructed/game_aux_helpers_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_aux_helpers_analysis.cpp) | [C] `a42837436df7062b45eff4f8096d0ea208a0b26155c892c10afaae2633097a10` |
| [C] [reconstructed/game_aux_helpers_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_aux_helpers_analysis.hpp) | [C] `5cfd421dcdb37e12b44c4dee7e4ffe0a8dfab9cac47032a6aa335f01e2a6fd67` |
| [C] [reconstructed/game_aux_helpers_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_aux_helpers_bindings.cpp) | [C] `25fd0e9f54c5e863eda4832359de2fd6b6cb65b550daaef94b6204df31d6eacf` |
| [C] [reconstructed/game_aux_helpers_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_aux_helpers_checks.cpp) | [C] `0db6502a2b548fdc88e10d2568e825f3b12a0e245b4af6cef4cd37a4c1f66ad5` |
| [C] [reconstructed/game_aux_helpers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/game_aux_helpers_reconstruction.md) | [C] `c45d4643005bf25083607f6464c58ba93b9ca2d7a4f4efc2ea9f0d2bfed68efa` |
| [C] [reconstructed/game_base_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_base_analysis.cpp) | [C] `cccbb5f7e2a4eafec3b35dcea9f621bfc50ee74502876058209cf869e3d5c086` |
| [C] [reconstructed/game_base_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_base_analysis.hpp) | [C] `7de5f5ca6e3ffa719ae0ee80ec90218257c1989762b2217f52ab07c9f4d46d86` |
| [C] [reconstructed/game_base_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_base_checks.cpp) | [C] `808e6822cd901b5ce33b6d897e165e3b1c73b19d6d897bb0ebee3f776eacae29` |
| [C] [reconstructed/game_base_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/game_base_reconstruction.md) | [C] `89fe68409150bcc9cc5986115244e268af8b09303232b4c741a09d9399b5513a` |
| [C] [reconstructed/game_direct_wrappers_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_analysis.cpp) | [C] `196e0d2c9ad6c5d99684b6033549606aec2143d045c5959b63e336110f40e7ea` |
| [C] [reconstructed/game_direct_wrappers_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_analysis.hpp) | [C] `cd26e486519b01922676a098f41120758d0bd0ce03336f9929233feec4eb88f2` |
| [C] [reconstructed/game_direct_wrappers_arguments.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_arguments.cpp) | [C] `79f319b3b7009e478f4a6e1f7e4acaa00d884cfe7fbc9d47909bd96c83cbd34f` |
| [C] [reconstructed/game_direct_wrappers_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_bindings.cpp) | [C] `5cf41dc99b7d76f642e5dca35a2180d2a11557577f633e8b41b4f8e3f6404dca` |
| [C] [reconstructed/game_direct_wrappers_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_checks.cpp) | [C] `9cb80401fdba6644e484045f2dbd0f11e43762363eb8afb61991eb569cac61ca` |
| [C] [reconstructed/game_direct_wrappers_controllers.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_controllers.cpp) | [C] `6600020058473469153d9bbf04cd4f75148db1cbef1c82bb46fe49ecae955923` |
| [C] [reconstructed/game_direct_wrappers_conversion_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_conversion_checks.cpp) | [C] `7263130e30078eca89a88866b6ed872335c9f3820c1757871a06cdb9b4e1655a` |
| [C] [reconstructed/game_direct_wrappers_failure_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_failure_checks.cpp) | [C] `3f4ae055a6f2d092a19d1a79a8e26eaccf6fd29c2602dae6004c350f33335f7c` |
| [C] [reconstructed/game_direct_wrappers_fixture.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_fixture.hpp) | [C] `4cf2f6b11eb9e3b8049f2c56c5a1fd8fca6dd024abbdeb8660aa8b6d681eb18d` |
| [C] [reconstructed/game_direct_wrappers_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_internal.hpp) | [C] `2963e99c8cbf44c8fb88bd8104e0c18c0f3dabe3c43ec51125e60763037412b1` |
| [C] [reconstructed/game_direct_wrappers_literal_data.inc](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_literal_data.inc) | [C] `c788d7b4d4f9d6b9effcdf10bb93417de98810e96d2314e48e15e58354922925` |
| [C] [reconstructed/game_direct_wrappers_literals.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_literals.cpp) | [C] `c66da41a87c221e4415c024c4f83e8eb13c6bfe592324aa4fb01d4a32d138bd2` |
| [C] [reconstructed/game_direct_wrappers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_reconstruction.md) | [C] `eccb49c6a27faf67189fabaca4f83f5b50fc1cca39834710cb0d77db633d8e9f` |
| [C] [reconstructed/game_direct_wrappers_selector.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_selector.cpp) | [C] `d795defefd67af6703da712d7db7cf9b0813adabe675ce248ce040af42d20533` |
| [C] [reconstructed/game_direct_wrappers_selector_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_selector_checks.cpp) | [C] `908158cf58016dd4bcbad7032fe441759374f5707831e87f6be0b0c59c848137` |
| [C] [reconstructed/game_direct_wrappers_specs.inc](/home/john/Desktop/cheat_re/source/reconstructed/game_direct_wrappers_specs.inc) | [C] `09359962750e300a4b5d4f381ffe3ad7090d5762b1210bca151b6d41ab1556fc` |
| [C] [reconstructed/game_field_controller_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_field_controller_bindings.cpp) | [C] `5648b790547e035831db46b1fc8e608dc14eb4003a109030e29ddc0ba4f99951` |
| [C] [reconstructed/game_field_controller_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_field_controller_checks.cpp) | [C] `4baa1e47d380aaed558120d828dcdfba7ebfddb40962ea046abd8d844adaa767` |
| [C] [reconstructed/game_field_controllers.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_field_controllers.cpp) | [C] `7dbe1a925c7bf578c99abba46552e0dc92a00ac632c5642290086cbf4219f951` |
| [C] [reconstructed/game_field_controllers.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_field_controllers.hpp) | [C] `3531486feca552fa295ee40c93a49f09746e872d755e7878b0d95d05496d8c13` |
| [C] [reconstructed/game_field_controllers.md](/home/john/Desktop/cheat_re/source/reconstructed/game_field_controllers.md) | [C] `221bff678cd5876c22000cf31c4e45e18ee3fa9b9f87e89633cab6052f1cf5be` |
| [C] [reconstructed/game_helpers_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_helpers_analysis.cpp) | [C] `4aff42f78c7b093da9af4f5174e889c9b52e5a3e8448f57237a79a792518249f` |
| [C] [reconstructed/game_helpers_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_helpers_analysis.hpp) | [C] `25388449bc8453d8b6c51e69d65ea0536b3d4de260a2f564e95f9f4d61e49b90` |
| [C] [reconstructed/game_helpers_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_helpers_checks.cpp) | [C] `3d3956e6df68d2383f9c6caa714252a6ee6c9470922400fcb6f2b62defcb0c1a` |
| [C] [reconstructed/game_helpers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/game_helpers_reconstruction.md) | [C] `cd14eccb144985865023a9ecceae038f5dd98fdf500040ff67fa9a7333dd8014` |
| [C] [reconstructed/game_input_physics_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_analysis.hpp) | [C] `1eb94030b7eb83377b8592d878267d34d32a5c98cc9b991fc63ce2ccf34660a7` |
| [C] [reconstructed/game_input_physics_arguments.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_arguments.cpp) | [C] `28d4575b2666aea55933a626d85f852730af04e33ebbc26ad04690ffe3c8aa39` |
| [C] [reconstructed/game_input_physics_arguments_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_arguments_checks.cpp) | [C] `f0755514a2a779779ba01493bc7a97a79f453afc49648c1ac41c6b3f60b85a83` |
| [C] [reconstructed/game_input_physics_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_bindings.cpp) | [C] `c34b35ef5509530f689da69575bf45e16d334bb3e9c86f63b30ca9c6004394b7` |
| [C] [reconstructed/game_input_physics_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_checks.cpp) | [C] `992abb10a7def8a2839df0e6e1259d1ffa0023b8a0e7241555b8474bd4c1cc45` |
| [C] [reconstructed/game_input_physics_coverage.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_coverage.cpp) | [C] `d150c5211b323250aae00e4b832bdd0793ee1548175bbc7262ab5c8e8d768292` |
| [C] [reconstructed/game_input_physics_fixture.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_fixture.cpp) | [C] `dae91943d44c50c45d36283f59edc2c35458c51054abc04bee590e121df1bb64` |
| [C] [reconstructed/game_input_physics_fixture.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_fixture.hpp) | [C] `5c4c4586066a72fda542aeeb5bfa7e18d0a7c44006d98b72f05d2aa96a795042` |
| [C] [reconstructed/game_input_physics_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_internal.hpp) | [C] `3b5e9b97c095fb85cd279f2463b9142141c243e7b945343de055848ef04e18bc` |
| [C] [reconstructed/game_input_physics_keys.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_keys.cpp) | [C] `5969a78fb687abc35445ce6c10122e4fb9b8bf8bf0de7d8b050de32a15ae2cf9` |
| [C] [reconstructed/game_input_physics_literals.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_literals.cpp) | [C] `4af5622fdcd281dd30a46af1595b6c925bb926dc246807ceff344d9be21e4b43` |
| [C] [reconstructed/game_input_physics_metadata.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_metadata.cpp) | [C] `20a132c1fea4c6381963511ec54c87a66caaf8285af17a1b93e563db4e29ea0a` |
| [C] [reconstructed/game_input_physics_metadata_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_metadata_checks.cpp) | [C] `bffa258517c550c1f6e5648da28949d7454dd40a1d71a65f4ce3576acf916642` |
| [C] [reconstructed/game_input_physics_pe.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_pe.cpp) | [C] `4de2ed91e3b5d9dc92b4e730d548f82a63aa1607f8795a75f592b1c39302cc1e` |
| [C] [reconstructed/game_input_physics_queries.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_queries.cpp) | [C] `91a941e321ec7aec97fc84740b1aa7c60170717d5344a631697a13cb2e817f45` |
| [C] [reconstructed/game_input_physics_queries_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_queries_checks.cpp) | [C] `14b4a37746415fe7cb43138a0987ae43523a06ebb918e445b400ab3fe92dcf26` |
| [C] [reconstructed/game_input_physics_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_reconstruction.md) | [C] `39f85543470664ce35f3e527812c0a7edb86150c21fc5a238af7be0f3e261092` |
| [C] [reconstructed/game_input_physics_specs.inc](/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_specs.inc) | [C] `dfe1c54f71488e745c4fa5b5ab8dd8daf772c539266cddfc6ce7fee4bbebfcdf` |
| [C] [reconstructed/game_local_literals_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_local_literals_analysis.cpp) | [C] `2d43fba3ab2f646fd0204ff3f4bc1d3a56beb6a7eec93ce4fe66271aba5e7d0a` |
| [C] [reconstructed/game_local_literals_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_local_literals_analysis.hpp) | [C] `95024e71cf58d1c05def051045983b066a1c23d9dc49bfefa3b435aeba412969` |
| [C] [reconstructed/game_local_literals_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_local_literals_bindings.cpp) | [C] `22f3bd8a9773253afffa15dbd3913f5412f589d86d5db4e103f91a3dddf9214d` |
| [C] [reconstructed/game_local_literals_catalogue.inc](/home/john/Desktop/cheat_re/source/reconstructed/game_local_literals_catalogue.inc) | [C] `528a6b58ef539f5855c764546a501b1a1ac7f0a952ada3ee08759e338e9ff5ed` |
| [C] [reconstructed/game_local_literals_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_local_literals_checks.cpp) | [C] `6c947d0e6954c118282efe85de3c162ead49bd60aa741acb106c8290f57407ec` |
| [C] [reconstructed/game_local_literals_fixture_data.inc](/home/john/Desktop/cheat_re/source/reconstructed/game_local_literals_fixture_data.inc) | [C] `d71ca3b14d0a7257cd604733c7758cdae1ba677260517b1525118f51f1fa1678` |
| [C] [reconstructed/game_local_literals_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/game_local_literals_reconstruction.md) | [C] `a90b6e14c895a1c7c0767ebc8beacfa7ae6eef600d3cffac42fc4d895d6f4f36` |
| [C] [reconstructed/game_root_domain_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_root_domain_bindings.cpp) | [C] `89bb3e9b68f08ff4561ecf1746dedd48a15116d68a1ba6c77c60cb9758c9e865` |
| [C] [reconstructed/game_root_domain_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_root_domain_bindings.hpp) | [C] `d37e365150cda94e2d1783604c233a4c2802a43cd766be71df0b634ae964e63a` |
| [C] [reconstructed/game_root_domain_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_root_domain_checks.cpp) | [C] `82ca9f3e97afb07a413696c46fbb6c6b9d3ac17642eda971107088347a602fd3` |
| [C] [reconstructed/game_root_helper_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_root_helper_checks.cpp) | [C] `d6d4f5e3be62279b451e9346659ad1bc82ce2d0927c0ec8b67610f16ef9dd01d` |
| [C] [reconstructed/game_root_helpers.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_root_helpers.cpp) | [C] `9c6dadb6a356f4a5b7787f1b7fffe3a3ee145dd9a23308464420d6ae542d30de` |
| [C] [reconstructed/game_root_helpers.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_root_helpers.hpp) | [C] `8f45398e98a5294d833100b03148b7275b66d51c573775424899b90fcf92d652` |
| [C] [reconstructed/game_root_helpers.md](/home/john/Desktop/cheat_re/source/reconstructed/game_root_helpers.md) | [C] `a9fddabbc085673621dd29461371694e187d00a630eb4a909c5c4c1d0ca42000` |
| [C] [reconstructed/game_runtime_wrappers_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_runtime_wrappers_analysis.cpp) | [C] `781515477234481a3f5d3b811dbcfd29fa63bcfb7c2a97410192843585d8a963` |
| [C] [reconstructed/game_runtime_wrappers_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_runtime_wrappers_analysis.hpp) | [C] `0a537af40cfd6dc19fd6ceb2bd5208fbf89fe9ba4389e4bc600722254a9940d6` |
| [C] [reconstructed/game_runtime_wrappers_arguments.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_runtime_wrappers_arguments.cpp) | [C] `812593a4e4d00a82c23581d664faebce6403274af4b212a046cb315bef40047a` |
| [C] [reconstructed/game_runtime_wrappers_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_runtime_wrappers_bindings.cpp) | [C] `ba96bac597b71348904ce7faadda7a555509153e6f7674703815ae9020657595` |
| [C] [reconstructed/game_runtime_wrappers_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_runtime_wrappers_checks.cpp) | [C] `4f204f7dae7dbbb5cfdf210a5ae2ac7bf07584d28cc22f5f3873b823342231ce` |
| [C] [reconstructed/game_runtime_wrappers_domains.cpp](/home/john/Desktop/cheat_re/source/reconstructed/game_runtime_wrappers_domains.cpp) | [C] `9a33b71bc68f34137de8c01cec073dd3abbe7210d61e7fe7034d083caf7db5e5` |
| [C] [reconstructed/game_runtime_wrappers_domains.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_runtime_wrappers_domains.hpp) | [C] `20cab947ba52c2ceb4ceb759fb7a8decfe1c8a729cddc9a4ca3c291728fd0ff9` |
| [C] [reconstructed/game_runtime_wrappers_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/game_runtime_wrappers_internal.hpp) | [C] `1e8762ffa01682732da2cfa587f6f26d3a942584c3dd7b52e03ffe0fa4a34528` |
| [C] [reconstructed/game_runtime_wrappers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/game_runtime_wrappers_reconstruction.md) | [C] `cd40adbe1b27e625946b8fd90ec2f3cc6432d9a5d93dd4a7b5552c0fb156a6bc` |
| [C] [reconstructed/game_runtime_wrappers_specs.inc](/home/john/Desktop/cheat_re/source/reconstructed/game_runtime_wrappers_specs.inc) | [C] `e54829a53b3544394a91369ee36d8bc86eaf34e61a8c0daf1c2229f012b6806e` |
| [C] [reconstructed/helicopter_aim_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/helicopter_aim_analysis.cpp) | [C] `5fca56e0515adcc6816c0e0da1f7129433d30ef9fd8a3397fa5f315e82b1835c` |
| [C] [reconstructed/helicopter_aim_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/helicopter_aim_analysis.hpp) | [C] `dd078b1f25e8f9145b2ddbf88909e03e971223e8f4d2270339e1efb96ea7f4c1` |
| [C] [reconstructed/helicopter_aim_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/helicopter_aim_checks.cpp) | [C] `d2ebe77cc1533d08bc29ee1535e536e98ab235ad116e6207a190ac23e37cb3cd` |
| [C] [reconstructed/helicopter_aim_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/helicopter_aim_reconstruction.md) | [C] `b5c6bc100ec5da86b250b1eb5a7cc3f3aa1f1ec23fa53d118427a9ee70c68b94` |
| [C] [reconstructed/hit_override_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/hit_override_analysis.cpp) | [C] `367c6abb7f27c513f30e61e8ce19816dcab9424827cefd41afd9e0412488438e` |
| [C] [reconstructed/hit_override_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/hit_override_analysis.hpp) | [C] `e70f3b78f471123d548b7d9d4941adb88c967677fa151804afc9689c4a74d43f` |
| [C] [reconstructed/hit_override_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/hit_override_checks.cpp) | [C] `dfa2e77c7cb9427e640de00ffaf4e9f7459bce668caf54e1f85e64b510c11414` |
| [C] [reconstructed/hit_override_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/hit_override_reconstruction.md) | [C] `299931139ee4a7d083b4fb02c6e6bea4e5d7907a0f6b9d172bae6dae14d8babc` |
| [C] [reconstructed/hook_setup_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_analysis.cpp) | [C] `82d4107c12d921dbcb61ffc5606cab98a6a8c349ea6accab8b07f0bcd98e7dcb` |
| [C] [reconstructed/hook_setup_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_analysis.hpp) | [C] `1cff9909e490329bd417ba2cf917bec06a8d129577302ddabd7c537e9d8cdcac` |
| [C] [reconstructed/hook_setup_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_checks.cpp) | [C] `5e69776c5f6ea80a0adb215683d0ff5a7be4863bdc1e6c25622b016bc239ab59` |
| [C] [reconstructed/hook_setup_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_reconstruction.md) | [C] `8e094e95c637e292232b90c19dce957e905f976ef9930ccf90f22cdaaa9c80a7` |
| [C] [reconstructed/hooks_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/hooks_analysis.hpp) | [C] `e77b69e7fc8099e340df06471d0ee3cbbb249c32977714ed1680bd058001973f` |
| [C] [reconstructed/hooks_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/hooks_checks.cpp) | [C] `fa91580e925a026a50973b5a60b590b00b4d878a3d0e2d5ab02b0aa8a411759d` |
| [C] [reconstructed/imgui_navigation_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_navigation_analysis.hpp) | [C] `4b1574377d84515d251d191a8ca969fe37bf8e89bd29069e957a48fcde2e29de` |
| [C] [reconstructed/imgui_navigation_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_navigation_checks.cpp) | [C] `fb8920eb57f3398e708af844234d39b8afc41ae57e4c5503741770220114269e` |
| [C] [reconstructed/imgui_navigation_core.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_navigation_core.cpp) | [C] `537a238df3edcccf01754b00a46f6305c626fe179003821d0816962dbc5e75f4` |
| [C] [reconstructed/imgui_navigation_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_navigation_internal.hpp) | [C] `0f6d02ddb4d257de56e0b59281917768f7fd1e6e4fc1ee69a3c7f7b6cec50874` |
| [C] [reconstructed/imgui_navigation_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/imgui_navigation_reconstruction.md) | [C] `63dab26c522aba478abe1239163611e7f0b861d539fe31bee3517740a8661d0a` |
| [C] [reconstructed/imgui_navigation_scoring.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_navigation_scoring.cpp) | [C] `4028a1610098a98d76a60c61954f000e933865d55c67057a05614188876216ad` |
| [C] [reconstructed/imgui_navigation_text.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_navigation_text.cpp) | [C] `e082abec69360c79dfed9a10122cc22303ee290bc5ca979c909604e0cfe6c4c7` |
| [C] [reconstructed/imgui_text_input_activation.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_activation.cpp) | [C] `d9b443897e545f83a85a21a49a1b84da49cbcaf6ddeaa379e786c0ba18afdd61` |
| [C] [reconstructed/imgui_text_input_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_analysis.cpp) | [C] `d1998e639928cd0dc85b93dc442d8cb03b79b2c81371967656e16b0ee4558d85` |
| [C] [reconstructed/imgui_text_input_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_analysis.hpp) | [C] `2bff76bbe92aa5f38b1cdfcba725f0608c280e033e78c6b53d3bce1db3e1ab26` |
| [C] [reconstructed/imgui_text_input_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_bindings.cpp) | [C] `47d464b3af904fc49adc4f3823d8999073ef707bd6b5fbd7520c6c5bdaecb5bc` |
| [C] [reconstructed/imgui_text_input_branch_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_branch_checks.cpp) | [C] `1ffbc2c831ee2f6008b2d11ae342af25ee9692e16cdfe7ba5bfdf160d9a20ea7` |
| [C] [reconstructed/imgui_text_input_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_checks.cpp) | [C] `e4493ae335c90e99491a73aa17f0b80096793c2e9a245c5e7b8eaa2833e89a38` |
| [C] [reconstructed/imgui_text_input_codec.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_codec.cpp) | [C] `801869595443dae3734e9570435242930a9fa6a5c71b799852d0aeddfb5d6699` |
| [C] [reconstructed/imgui_text_input_commit.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_commit.cpp) | [C] `e3867731448f0b76fd77f887891d61f9b22a6eed460e0ed3751f6d221725da48` |
| [C] [reconstructed/imgui_text_input_controller_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_controller_checks.cpp) | [C] `393b96dad31cf68d668fff3b85d7156110feb8174435cdb6541d563c2f688235` |
| [C] [reconstructed/imgui_text_input_edit.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_edit.cpp) | [C] `cffbae1721e6b988adf37e214d21ff8ded8b47a2872e6e3276d72c530067a6e8` |
| [C] [reconstructed/imgui_text_input_effect_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_effect_checks.cpp) | [C] `d2e8dcf59a49aa25d5ebf672e2d37b283411a36c4f754d87d5231762aac2ad95` |
| [C] [reconstructed/imgui_text_input_event_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_event_checks.cpp) | [C] `c77615fbc121ed4248b3f903ae3f97f029c5d753297b7111b201d5d82329028f` |
| [C] [reconstructed/imgui_text_input_events.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_events.cpp) | [C] `4f547ae3b59b46ab5ba10ad87b70c3724488ae6762c34a5590edc332f2219c38` |
| [C] [reconstructed/imgui_text_input_fixture.hpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_fixture.hpp) | [C] `534e81c48a99cf586e74c651de244ea3883445575f100c9e640342e6b42c4ac4` |
| [C] [reconstructed/imgui_text_input_font_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_font_checks.cpp) | [C] `fc7b956c85b78b568c29124ef07b8a50e0531ce4b1623c6099f988969d92bead` |
| [C] [reconstructed/imgui_text_input_fonts.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_fonts.cpp) | [C] `a0f0fe4f83ef3ad063157735ae44e246a7547c0c205dd2713dfa621e99c519e7` |
| [C] [reconstructed/imgui_text_input_history_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_history_checks.cpp) | [C] `e5160f46ec2a145ca69831465b83aaa1d732258a7d256b1effdc3f5ebbc6ea6c` |
| [C] [reconstructed/imgui_text_input_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_internal.hpp) | [C] `1d13d7e1536497d0a0311686ffb93795c65534f23c676d2a14fdc5a823678c65` |
| [C] [reconstructed/imgui_text_input_keys.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_keys.cpp) | [C] `f973ae606e3f03d814dd4d93ef4215bd5d7ab4295824a63ce5f76dc59660c65c` |
| [C] [reconstructed/imgui_text_input_layout.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_layout.cpp) | [C] `5fb3c6211e4f1c8d9f1e4ebb66c8cbd4e6f5a6c4ce325599619be6e721de736d` |
| [C] [reconstructed/imgui_text_input_process.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_process.cpp) | [C] `93ae1709611d2c2dff140a7750dd260c2301fd0a0975972d5bc2068c5dd4a7a7` |
| [C] [reconstructed/imgui_text_input_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_reconstruction.md) | [C] `ac835b3b2d3fd208cd155538ffe6ef88114476bdb304b3a0aade20ad5da0b76d` |
| [C] [reconstructed/imgui_text_input_render.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_render.cpp) | [C] `45da1c8b4c0f1c30a5fc532597ead80d26021f809441d27ec56b137812d7291c` |
| [C] [reconstructed/imgui_text_input_storage.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_storage.cpp) | [C] `ee4db2ff6a9f8ce6972c36a0ae84b65508dd9f099ecac9d6649ffd6628a6d197` |
| [C] [reconstructed/imgui_window_details_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_analysis.hpp) | [C] `9052e37bac8d0ae02d874256b8480e385d1e65cdd0c7c74b466eb49412cd5b0f` |
| [C] [reconstructed/imgui_window_details_base.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_base.cpp) | [C] `06600d59d2df54adec28697e6cbf33aad542f4bf6d04f76dc61c3f66be494037` |
| [C] [reconstructed/imgui_window_details_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_bindings.cpp) | [C] `dd0a85b18cba5df526759cfc1095c6346c3f18f15a1c3ccacc032f2a432e0374` |
| [C] [reconstructed/imgui_window_details_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_checks.cpp) | [C] `36496d2653c4fb0ab56d64ed7af3fb69a678e4c31ac48b82ece79488af46bada` |
| [C] [reconstructed/imgui_window_details_columns.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_columns.cpp) | [C] `7e415d305891362a1787a8d417f3f0671eee0356f0a3538654e6efc869ecaf5e` |
| [C] [reconstructed/imgui_window_details_grips.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_grips.cpp) | [C] `2f8065bd119e420730cac5a4793eb4b90dd2bc80a354818b45ae201917554a16` |
| [C] [reconstructed/imgui_window_details_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_internal.hpp) | [C] `ef1d827ce1b9e3f16765649d856de47ada24970808333327d1bec492599b2d8e` |
| [C] [reconstructed/imgui_window_details_log.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_log.cpp) | [C] `719d490235f1e9f38222f7e72dd590e5116035a1fd2fc0a5b805a44caeca56b5` |
| [C] [reconstructed/imgui_window_details_lookup.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_lookup.cpp) | [C] `2be6669157a0b0a3cc7300675b4d2179ced61f5c981e96dc1e0c141ae0b06ff2` |
| [C] [reconstructed/imgui_window_details_position.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_position.cpp) | [C] `125b606ae21cabc8267f2aff44c43c3057a7bc6298992f8c32cd8d3cb6320cd0` |
| [C] [reconstructed/imgui_window_details_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_reconstruction.md) | [C] `1eaba0a01a0d2b11e43f021e4ad03c25ca69d25a6fe28862aa0e6b93c0f1d7a9` |
| [C] [reconstructed/imgui_window_details_resize.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_resize.cpp) | [C] `e0099dc9539e0842c70d9f83eff608b17764098521262b315bb830aa3652c0e3` |
| [C] [reconstructed/imgui_window_details_scrollbar.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_scrollbar.cpp) | [C] `2f3f256e1796037accc422676237827d1158cdf60be36adb2bae7a7e6e6d7dbb` |
| [C] [reconstructed/imgui_window_details_title.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_window_details_title.cpp) | [C] `c62bec58d5e43b6f49242dde4be867c2c22b30b129d4f7c6fb14a75b80b511de` |
| [C] [reconstructed/imgui_windows_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_analysis.hpp) | [C] `b0a874564d1008b616cd118a9a131327605e3d08ba32f492b20095f4f9bb4eb5` |
| [C] [reconstructed/imgui_windows_begin.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_begin.cpp) | [C] `9df1bd5a29c2ba682f420d2c75c73801900dc9b9a6dfeaa48f6952c92f605008` |
| [C] [reconstructed/imgui_windows_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_bindings.cpp) | [C] `84606587989c505e1ccfe510a0f83f87a27ecec80046b58eb20185e754f1e8c5` |
| [C] [reconstructed/imgui_windows_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_checks.cpp) | [C] `2d60d6f74bfcbdb9f50967dea466c460d263e49e82e75f4a8142ff31c4044d11` |
| [C] [reconstructed/imgui_windows_child.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_child.cpp) | [C] `3acde1cc8af2973a2bc3eb4f7aa12ac2b3e9990ee4d1cd0f88d86bacfd91db0b` |
| [C] [reconstructed/imgui_windows_controls.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_controls.cpp) | [C] `7a6237ca1c86a88a65e3e7920f7938fddabfc632e611db2a5454d671cf6bc2c8` |
| [C] [reconstructed/imgui_windows_create.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_create.cpp) | [C] `922e5877e9110e0bf4e034294e1e9370f3af834cdc028043f70db6c111cead5a` |
| [C] [reconstructed/imgui_windows_decorations.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_decorations.cpp) | [C] `d72d217bb695790bc3e1daaecaf5abf10617a0db06a74f14628129ef18d08d01` |
| [C] [reconstructed/imgui_windows_end.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_end.cpp) | [C] `fb6c040214daa7ad9fa50336ca2212ce084de6aae1f231538757b92272e03918` |
| [C] [reconstructed/imgui_windows_first_frame.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_first_frame.cpp) | [C] `d82c1f78aba7d62ea0eae1e4e06a4dd6ed1331a3526a4702e6252b1554026cff` |
| [C] [reconstructed/imgui_windows_helpers.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_helpers.cpp) | [C] `58a2fae9183e9e23c60924e410c78ce7e7f47bcde5cec3cb6951e8921e7a0de6` |
| [C] [reconstructed/imgui_windows_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_internal.hpp) | [C] `6170f049d2ccd3a4b7153be9c35a925ee84967bccb637a85edf94a18943e8c59` |
| [C] [reconstructed/imgui_windows_metrics.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_metrics.cpp) | [C] `2700b6faeda40fa7633aa34866bb7ddab16f044f1f80fe5ca1fa1b8299d10e61` |
| [C] [reconstructed/imgui_windows_modal.cpp](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_modal.cpp) | [C] `3cca1b647df7d7d999ede259537f0f2c61574a7f89d675d330be3711d00b3b72` |
| [C] [reconstructed/imgui_windows_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_reconstruction.md) | [C] `b12f7b0b85bed67eb2bba9365c0359a7185de874a5f4012afc7df8b22f477d8a` |
| [C] [reconstructed/interaction_backend_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/interaction_backend_analysis.cpp) | [C] `84026da3aac16139183af4a7e0ef17dd7f626bcc55481805dae12dea1fb465f9` |
| [C] [reconstructed/interaction_backend_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/interaction_backend_analysis.hpp) | [C] `c33da2e72367faeaa309e73cc8221f71d909957623c9652e10df54d5627a5b9b` |
| [C] [reconstructed/interaction_backend_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/interaction_backend_checks.cpp) | [C] `f7823c6e7f08a12227cfcf3bd5716488ff80b1d6db895db20eba1aa35abd84c0` |
| [C] [reconstructed/interaction_backend_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/interaction_backend_reconstruction.md) | [C] `e3c1e1600eaebfa1d4f4544a46aa36d0a5440966551bc689a871eab4a19c332e` |
| [C] [reconstructed/interaction_workers.cpp](/home/john/Desktop/cheat_re/source/reconstructed/interaction_workers.cpp) | [C] `944c99bc2ccacce39c3070587c0e9a75948717c000e1d90e5dd496078075663a` |
| [C] [reconstructed/interaction_workers.hpp](/home/john/Desktop/cheat_re/source/reconstructed/interaction_workers.hpp) | [C] `4f919378a747853fc06b96b1f8fe53c652088d89befee7694070d79d948c7dd1` |
| [C] [reconstructed/interaction_workers_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/interaction_workers_checks.cpp) | [C] `23bb9a97ef53238799f0ccac8288c70dd8e618223f4fee67dcd4486ab11ea585` |
| [C] [reconstructed/interaction_workers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/interaction_workers_reconstruction.md) | [C] `daccb955126e9a0b98f6990c7e9794d74a19416e05c0bc0e8e196dc5d10de906` |
| [C] [reconstructed/internal_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/internal_analysis.hpp) | [C] `de6265cdbf9f115d3d0a6f1ab6f0742f9254f2aad2ca1b49a2b3a6a67a6d29ee` |
| [C] [reconstructed/launcher_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/launcher_analysis.cpp) | [C] `0be11d1787d6baf4e0e528b3898c84c03f3df89bfbecc394237c6f4123b594bd` |
| [C] [reconstructed/launcher_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/launcher_analysis.hpp) | [C] `a5fb7073e0efda2911f7cb3e2856c6e3d0954b649cd6bf951de3e4525882cb68` |
| [C] [reconstructed/launcher_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/launcher_checks.cpp) | [C] `f1bcb0c431dd8a5fbedb8048d24a50911c3dc6310aa0e7474b2e43ee81d8f4b0` |
| [C] [reconstructed/launcher_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/launcher_reconstruction.md) | [C] `5a080559a1166f5a246fcc4e24f6680059321a7f50204f7a54d0b8a1f0b4dc20` |
| [C] [reconstructed/launcher_worker_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/launcher_worker_bindings.cpp) | [C] `d3133ee977f518cb8005e7bf00cb6bef7686c617f4f6738bfcc71dfa405ee2fc` |
| [C] [reconstructed/launcher_worker_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/launcher_worker_bindings.hpp) | [C] `9a9801c4e018130b83663f478a9d3307fd10be4eb946b25599abfb06d971470d` |
| [C] [reconstructed/math_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/math_reconstruction.md) | [C] `4d6aca0c0fcc695d57de9954c2b898c760a7dfc12dfd4a2f693602772e51d803` |
| [C] [reconstructed/menu_color_picker_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_color_picker_analysis.cpp) | [C] `62dde7addca5dee583fb4150c70a7b00d98e6e9c98cbfdb69beede1785e6636c` |
| [C] [reconstructed/menu_color_picker_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_color_picker_analysis.hpp) | [C] `f18fba4f2af5e68bce663f9a1ee1c89e318e95f063f03167de7d45ce31143680` |
| [C] [reconstructed/menu_color_picker_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_color_picker_checks.cpp) | [C] `780eeff859ef94189bac421c9074c8f25ecef52b5a8f66e08854d3280aa92859` |
| [C] [reconstructed/menu_color_picker_components.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_color_picker_components.cpp) | [C] `17cd090ea20582867a81495f30f755cc241ba34a2aa67591c7a7151da0ba0b0f` |
| [C] [reconstructed/menu_color_picker_geometry.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_color_picker_geometry.cpp) | [C] `c4cc0d9dcadd56ef4ed89f490e6d336bb98c83da72d63dea56d6be675beba30e` |
| [C] [reconstructed/menu_color_picker_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_color_picker_internal.hpp) | [C] `dbe957ee454da4702450d2d36e531c43951718a287f0d83025cb15aca5176436` |
| [C] [reconstructed/menu_color_picker_logging.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_color_picker_logging.cpp) | [C] `5ea80de09ce7b59bf6f8771e64cfbd229aed7da9d31dbf4873e2c9b10d0da796` |
| [C] [reconstructed/menu_color_picker_math.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_color_picker_math.cpp) | [C] `4dd0ef2ff8a5182dc50538378d12bdb743f13f1143d3dc4cb4ce1c0c5bfe4627` |
| [C] [reconstructed/menu_color_picker_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/menu_color_picker_reconstruction.md) | [C] `559172cb84413ab5c0fc05e1d4b7325cf3dda524b5751c96e9e29e0b8072a3d8` |
| [C] [reconstructed/menu_controls_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_analysis.cpp) | [C] `7bc2538e7be59df1c2bce76b66aefaa80d8014f85d185310a3da6acf8db1fe6f` |
| [C] [reconstructed/menu_controls_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_analysis.hpp) | [C] `6a096c53f274649eca5304f317a0cbcf14a8705bba7ade83cfbb5fe6d198c8b4` |
| [C] [reconstructed/menu_controls_button.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_button.cpp) | [C] `410f164fc7ba0aa109523b781e9c33fa01f81022a1e51f8a8aaf2cfc9aa8e553` |
| [C] [reconstructed/menu_controls_checkbox.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_checkbox.cpp) | [C] `9b5b0b581224f8fb2b5327fc0cec73e64b8d55f9f2b9a0e7685d68e89fdd2ac6` |
| [C] [reconstructed/menu_controls_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_checks.cpp) | [C] `8f0bc51c0368f05cd8992832430243e6fb62d5ff67cb452ba73486bd817ef731` |
| [C] [reconstructed/menu_controls_combo.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_combo.cpp) | [C] `6788f7a221cd5d9eb8959ab69124ec1a7c9496eccbf5245d69a2e4fd5d4ef779` |
| [C] [reconstructed/menu_controls_common.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_common.cpp) | [C] `51633cb74f82753169075c581c9d341edbae9133ecd38e95b212b5e4b5672cbb` |
| [C] [reconstructed/menu_controls_font.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_font.cpp) | [C] `e8403df741d1a4349b9c570c21f5149afd836cc2df9fda0d49d464989cf9fe9a` |
| [C] [reconstructed/menu_controls_frame.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_frame.cpp) | [C] `070523ac962235ca123bcc210d5d07dd672228a024bab2a6fa900927415a32bb` |
| [C] [reconstructed/menu_controls_groups.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_groups.cpp) | [C] `1f62412a2c85a3f085d4a5496edbee881f3e688105ad6b90bc279eed00de075b` |
| [C] [reconstructed/menu_controls_input.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_input.cpp) | [C] `8b1a1cddd8175dd06c1b0653363aae2c7a56e3bb8f3069390ce2fb878c28534e` |
| [C] [reconstructed/menu_controls_internal.hpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_internal.hpp) | [C] `bf95f923bd16eb349e70d019b610a01cd333d8c016777853a9c43c25ffae2dd2` |
| [C] [reconstructed/menu_controls_key_capture.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_key_capture.cpp) | [C] `12478177afd7ef17dbc8e339ed015c6ed2375e604bbc32a141a740f3be657dcc` |
| [C] [reconstructed/menu_controls_layout.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_layout.cpp) | [C] `db5b8fe67a032b478fc1b41ef101a77c32c95e1ac753851725f96e568a7b7d60` |
| [C] [reconstructed/menu_controls_math.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_math.cpp) | [C] `56923c3c023f36b2319071a64e101cd8b047a373d8b86b71783cf05a35a75f47` |
| [C] [reconstructed/menu_controls_mode.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_mode.cpp) | [C] `e358995803d7c96f7b67c22cf5914637b841ce3859397e8f2badc42e1570a552` |
| [C] [reconstructed/menu_controls_multiselect.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_multiselect.cpp) | [C] `ffc51b6ff73b8c0efcc4d1b50e52dacd5f52c45028fc27e2849365b00f1f21fe` |
| [C] [reconstructed/menu_controls_navigation.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_navigation.cpp) | [C] `bfd5df26ecbd326358b3b7f3932b33dd2a2feeea7d65fb106416e13e7323693d` |
| [C] [reconstructed/menu_controls_popup.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_popup.cpp) | [C] `5037982b1730ce32ad420a59786dc7a3dac6bbd8d30dffd5d46ed078429581b0` |
| [C] [reconstructed/menu_controls_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_reconstruction.md) | [C] `73d441e37727c2204b218c243191d6bb080bed534c98ee4f296287e6eea0606d` |
| [C] [reconstructed/menu_controls_selectable.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_selectable.cpp) | [C] `a0eeb598c9321a8b3faffece3b5480a2cc3e1925d5b67b4e3690079a856e0fab` |
| [C] [reconstructed/menu_controls_slider.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_slider.cpp) | [C] `43174dde50d58f605d1a8fd178b9c6fcf89c52000bb084d3ac07d98dd912308d` |
| [C] [reconstructed/menu_controls_snapshot.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_snapshot.cpp) | [C] `a616b49bdcad36c9dc6ffea52fa325f273f6fd489845767e277d218079a9750c` |
| [C] [reconstructed/menu_layout_channel_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_layout_channel_checks.cpp) | [C] `9538a5039f7e1d595c0e156912943420a3d1c15a7ab7d7ccad77dfeb4bf6693f` |
| [C] [reconstructed/menu_layout_channels.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_layout_channels.cpp) | [C] `f4ca5cd5c79017096ecac442d2bda8e90fe3564df8f81d71b85cbfbee70326a3` |
| [C] [reconstructed/menu_layout_channels.hpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_layout_channels.hpp) | [C] `611945b2a78aceaa7185a025b28261867f0948bab4e9ec0be0bde774fff91be3` |
| [C] [reconstructed/menu_layout_channels.md](/home/john/Desktop/cheat_re/source/reconstructed/menu_layout_channels.md) | [C] `fbd953914bd61020f3b4841c4236707272f9c00be451172bdbef6e57fd1dc52c` |
| [C] [reconstructed/menu_pages_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_analysis.cpp) | [C] `49dcd44f1d2b2c1a0adb27143be059c046a9463cb8b85afebd29886857037298` |
| [C] [reconstructed/menu_pages_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_analysis.hpp) | [C] `81e3a2569558f219ac45c03d7854c2fba51a0ed1af61d3b2f7a8f18ea5a89b30` |
| [C] [reconstructed/menu_pages_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_checks.cpp) | [C] `32aea812342be65dd5b881e6c68d378d8fd56dc87fc8e74e27b26b95c3163f25` |
| [C] [reconstructed/menu_pages_config.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_config.cpp) | [C] `d0298e039fbdd4dbaf7ed5561fcca04c908997be40230e68df712fd217b0e54a` |
| [C] [reconstructed/menu_pages_config_labels.inc](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_config_labels.inc) | [C] `ad04e92e3e0cc1bd96d4e957020d7a2fecb911f08647ccdc0d1cbb2cb7d18a66` |
| [C] [reconstructed/menu_pages_dispatch.inc](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_dispatch.inc) | [C] `2b183d4c7ce2245b5379bd80248c27b4f8e5af5847e3e9f841d37e09f32070f4` |
| [C] [reconstructed/menu_pages_generated.inc](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_generated.inc) | [C] `04123f5de045f74551c00519ff8b54d2fe5bb26c2c4124206a2a72a62701acb2` |
| [C] [reconstructed/menu_pages_literal_data.inc](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_literal_data.inc) | [C] `cec32dfe978928f6beffd3df3b0bb4946f993b732aae03ada18f550ce79430f2` |
| [C] [reconstructed/menu_pages_player_labels.inc](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_player_labels.inc) | [C] `aae82ad4ce053ebd48a78f0017607dedb103917cadede879e18f5ac62384969e` |
| [C] [reconstructed/menu_pages_players.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_players.cpp) | [C] `e28521a463f0b9422a2730ac1f1c003115bc1a4f55c3730d7ca9c191afe62491` |
| [C] [reconstructed/menu_pages_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_reconstruction.md) | [C] `38238dc900f0b966b9953eae2ed1ff834393dab52955adfe91dac47dc8a40f37` |
| [C] [reconstructed/menu_pages_remaining.json](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_remaining.json) | [C] `db4a1b9ca4314a2ef2b5771e8b6afbd0d6f10f59d7a62fdc844a04e52f8ecd02` |
| [C] [reconstructed/menu_pages_resources.inc](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_resources.inc) | [C] `0d2e9e6854bfba786b71a8798f191609ebc357cc2d98d5505158c83434859652` |
| [C] [reconstructed/menu_pages_specs.inc](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_specs.inc) | [C] `c189c955cf24c4ffda73ada24d694708063193b41435f7a73cf4e3472ec9466a` |
| [C] [reconstructed/menu_pages_text.hpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_pages_text.hpp) | [C] `3c10aa13184ec9af571d2d27a6f2d4bae5b3abdec8263c5134adb2c2bde45779` |
| [C] [reconstructed/menu_render_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_render_bindings.cpp) | [C] `86b4e413bfb8a6f2fa25da4124397e7589afe64dd62a189a5343229cb226e206` |
| [C] [reconstructed/menu_render_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_render_bindings.hpp) | [C] `6f098fcf1a8c2037025983e9dbbdb64fbf628ae18d5396602d6d3a96c90cd65e` |
| [C] [reconstructed/menu_tooltip_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_tooltip_analysis.cpp) | [C] `678701fc109ed45fa9defcb4bf97d8443c4603efa7cc37f370adc93d83935cc7` |
| [C] [reconstructed/menu_tooltip_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_tooltip_analysis.hpp) | [C] `46c5be7f4bca9c3e0f00756ba5f6c89c9a27046e77bfd99c41277fa787a94674` |
| [C] [reconstructed/menu_tooltip_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_tooltip_checks.cpp) | [C] `6455e6ac0f43ffb091a99ffa25d03fcf5cfb1032e866a6c9314b710aeea9b004` |
| [C] [reconstructed/menu_tooltip_fixture.hpp](/home/john/Desktop/cheat_re/source/reconstructed/menu_tooltip_fixture.hpp) | [C] `06277455aa550e955622a408186fe65c95ec8e93d81655aac8b9dcc6451a8c5d` |
| [C] [reconstructed/menu_tooltip_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/menu_tooltip_reconstruction.md) | [C] `f73d5f1269e95ba4c43d2803247551791cd2db088134099e8e488fd7e6cb50bc` |
| [C] [reconstructed/metadata_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_analysis.cpp) | [C] `38187b9f5f20e10a10ca2aa91c973b2035dda979c37f362149407e1068ad2b07` |
| [C] [reconstructed/metadata_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_analysis.hpp) | [C] `c2a911d47102dea04281595ec498af958170b7a8794f23e0b9c96c7f02833e61` |
| [C] [reconstructed/metadata_argument_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_argument_bindings.cpp) | [C] `c3f9775e823cf6d66c4faec2f57b40b902db7a25581f9b5cafcaf603e8627ed8` |
| [C] [reconstructed/metadata_argument_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_argument_bindings.hpp) | [C] `d3ded5720d64d298eae698bf6490cb2eae7a6893b9f13e1550be2ea94885039b` |
| [C] [reconstructed/metadata_argument_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_argument_checks.cpp) | [C] `55192419ecbae211d640cbd1ecac61189300dd74199308048c73d785b3791e17` |
| [C] [reconstructed/metadata_argument_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_argument_reconstruction.md) | [C] `208eb01bdfdef51ad71d10d15472e4ba9e52d8a6806a52ae9e536231c92c3e3f` |
| [C] [reconstructed/metadata_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_checks.cpp) | [C] `8bb9f7cc4d22f282db97fa06cd269733514e35b49980c1880336ab142bccd22b` |
| [C] [reconstructed/metadata_export_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_export_analysis.cpp) | [C] `2f480b4904ad1fa614768a2151fd593cfaccc143d6064d869dbd9fe039e407ca` |
| [C] [reconstructed/metadata_export_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_export_analysis.hpp) | [C] `195fa13dd93dd66f787c967e8d5e4ad4846059272b9462fad47d5e7cabcc776f` |
| [C] [reconstructed/metadata_export_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_export_checks.cpp) | [C] `1b185d0bc43289cb267a804452e80f7e641a3a0b7c02e22a168aeeae59feaf89` |
| [C] [reconstructed/metadata_export_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_export_reconstruction.md) | [C] `3b7f8437a62db4a1b165ce10e8ef4ad4b8f9ac42734ae73d4d7b1efbde758229` |
| [C] [reconstructed/metadata_resolution.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_resolution.md) | [C] `6ca927dd1e0e3ba7a53e38ca6e5db96bc3bcbe1a5dd4cbe125cf9fa2255d1ae4` |
| [C] [reconstructed/metadata_signature_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_signature_analysis.cpp) | [C] `852a2ecb2e19cf3ba7559a6794a44c000e1180a81f39125362a1e7cc9d27cd3a` |
| [C] [reconstructed/metadata_signature_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_signature_analysis.hpp) | [C] `6b530436f86a79d9dfb255e60df36a339c47fcd1128d89f0d0a4a4e643498815` |
| [C] [reconstructed/metadata_signature_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_signature_checks.cpp) | [C] `6b08ab54eabfc69e3384dd09164cbe1d7b0b1138849f2ad7c6157fb1332f90b8` |
| [C] [reconstructed/metadata_signature_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_signature_reconstruction.md) | [C] `de698beee58f247d85fade465c743aec4e197ee7164beea6b4793c5bc91a96a7` |
| [C] [reconstructed/metadata_wrapper_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_wrapper_analysis.cpp) | [C] `550d7edce66f21f9d1fad74bd13bd945bd9c3ea47399bac65836849b2eeef3ec` |
| [C] [reconstructed/metadata_wrapper_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_wrapper_analysis.hpp) | [C] `0666fcce193411f929556d36de4363f2195b35bd9c33abf869da3338e032c677` |
| [C] [reconstructed/metadata_wrapper_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_wrapper_checks.cpp) | [C] `ea33ab0c4cd7ee7b7f4eba1b69ccb28f33b3fee90b167180cfa57b02d115c5d8` |
| [C] [reconstructed/metadata_wrapper_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/metadata_wrapper_reconstruction.md) | [C] `cd4cee575a0668197862f4ca1074ab76346ed0f63e6ceb6c8e1dd5c63a0c3562` |
| [C] [reconstructed/movement_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/movement_analysis.cpp) | [C] `274ce5c26513b055f0718bc0199480807c6a04ccb0ff253ead37bd567e58d18e` |
| [C] [reconstructed/movement_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/movement_analysis.hpp) | [C] `ee7fdc443261d2c813d53b7f9f092acf66880d12527f426b28f5b5a57ecfbd04` |
| [C] [reconstructed/movement_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/movement_checks.cpp) | [C] `19a3dab04633c52f532366f4cf1c6763b107e5cfffbb5b2a1f613178b98ec179` |
| [C] [reconstructed/movement_main_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/movement_main_analysis.cpp) | [C] `5619baae1699434b0465f4912605843903e99c49c4b73a0cf57795ebd4ce8a01` |
| [C] [reconstructed/movement_main_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/movement_main_analysis.hpp) | [C] `f9ac54ded4eb19903fbbef5d9ceff332147eef5d067e6e23f08d018dca49a6ca` |
| [C] [reconstructed/movement_main_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/movement_main_checks.cpp) | [C] `9787e61085d27ec9d6996eeae75da0ae41184f3ae2e03758ec113fc079da02f2` |
| [C] [reconstructed/movement_main_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/movement_main_reconstruction.md) | [C] `31b289ef837d57d62c7e18667ff43a4a87107db5543b2055effff91d9707d28c` |
| [C] [reconstructed/movement_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/movement_reconstruction.md) | [C] `135acc02b771f7d5afa5dc6baa3a0fc3bfbb4e1e0bb4a4b1beafbfd8a3892121` |
| [C] [reconstructed/name_helpers_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/name_helpers_analysis.cpp) | [C] `b7f858739f0fb8d7c0310f9a3739d55131b23ff706b6ef8cf39ad69db354b9c1` |
| [C] [reconstructed/name_helpers_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/name_helpers_analysis.hpp) | [C] `0f153db552dec2cb17830fdf3da4b11fda83ddff6c1c0b12f48c9e717f9396e9` |
| [C] [reconstructed/name_helpers_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/name_helpers_checks.cpp) | [C] `8f61ddb3b653c36040116f127c26d6fa769f1f7cb103751a410ace36a183cbf3` |
| [C] [reconstructed/name_helpers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/name_helpers_reconstruction.md) | [C] `b5e9dcdc6e4a13e20a0fbc764828293d36ca35d9ce30ae7fa82af56abc988b1d` |
| [C] [reconstructed/native_pe_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/native_pe_analysis.cpp) | [C] `1d5cde703107b7b5428f7a727d44c1050ae66fab8eb890ca79a7a118b99bc6c9` |
| [C] [reconstructed/native_pe_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/native_pe_analysis.hpp) | [C] `2882375cc815a1f79a24033155a7043b03fbd3b9308641adce3b0c14ab172358` |
| [C] [reconstructed/native_pe_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/native_pe_checks.cpp) | [C] `f7f6224129b313487a7c64b6737f7984521455d7b021708d27ff85f8c9df2d9c` |
| [C] [reconstructed/native_pe_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/native_pe_reconstruction.md) | [C] `e0e33b0c7e5d2b99ab8336383fcf3950070e1272d0f8305f6ebefadef23b7783` |
| [C] [reconstructed/offset_catalog.cpp](/home/john/Desktop/cheat_re/source/reconstructed/offset_catalog.cpp) | [C] `2ccfda1bba1b5c659e5846e375dc9cc65c2bf02b28c7303a61835506d714244c` |
| [C] [reconstructed/offset_catalog.hpp](/home/john/Desktop/cheat_re/source/reconstructed/offset_catalog.hpp) | [C] `047eafccdcbf51e08b92ddcd1d8bfc92881f04ab065d53604ffbde5da9baab78` |
| [C] [reconstructed/offset_catalog_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/offset_catalog_checks.cpp) | [C] `134da27240fffda4d282bb2ab487cf9c53baf02c5f79dcb305dd57abd80be414` |
| [C] [reconstructed/offset_profile.cpp](/home/john/Desktop/cheat_re/source/reconstructed/offset_profile.cpp) | [C] `240c30c91e2583690b5739e1b3c7a0eb913ae52e5e62a53b649efd9801a0da68` |
| [C] [reconstructed/offset_profile.hpp](/home/john/Desktop/cheat_re/source/reconstructed/offset_profile.hpp) | [C] `e1fdec56fcdbf0fbf560a85e0c2f9e4ccd2c3ea2eb76b0e913a33a1fa94f542c` |
| [C] [reconstructed/offset_profile_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/offset_profile_bindings.cpp) | [C] `ee0e30f04d4c1ba3342ad6f0964aa6000c747ce681749fd813c63cf421b9c1d3` |
| [C] [reconstructed/offset_profile_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/offset_profile_bindings.hpp) | [C] `204d1889cd685021471fa78f966b6b3b77972763fd4f3fb99af7281363b4a74e` |
| [C] [reconstructed/offset_profile_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/offset_profile_checks.cpp) | [C] `c60e6138d80ee4526b85b853191ec0f8315ea6a56fd98c1376ca5972c258e67b` |
| [C] [reconstructed/projectile_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/projectile_analysis.cpp) | [C] `8714fcc86c294970e9a85762b7638a34c1aaf6d455764d7bab9e54c1a52b930f` |
| [C] [reconstructed/projectile_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/projectile_analysis.hpp) | [C] `4c97f5b0161032b0bfca9668e7f6aa201bb2d22b7a1cbe18e532b1e8deeea442` |
| [C] [reconstructed/projectile_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/projectile_checks.cpp) | [C] `0a897b14bf1769a4fc481e1c24f9ed9c4c825da32af3fec668d583517fe3d58b` |
| [C] [reconstructed/projectile_container_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/projectile_container_analysis.cpp) | [C] `c540099d07aaf97a9799bf12db5460502ca85f7931ae4cd863169d6bb95c2b3a` |
| [C] [reconstructed/projectile_container_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/projectile_container_analysis.hpp) | [C] `188e4230fbac36cc1ddc4f41485299d80d01c447e38d42218c4a71d80d254dfc` |
| [C] [reconstructed/projectile_container_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/projectile_container_checks.cpp) | [C] `c782a0b3d0eb512c18d32da75ad38c3b2f010824997e7903a6f5740915cb81af` |
| [C] [reconstructed/projectile_container_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/projectile_container_reconstruction.md) | [C] `30ff0fbbd02ca915fab62c905c4c4d87565cb37226e963d355c11324508bdcbd` |
| [C] [reconstructed/projectile_leaf_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/projectile_leaf_checks.cpp) | [C] `b072a831de71c3b3c3e32f2a6c54449d60094dfc62e63e92540f4b67802f4201` |
| [C] [reconstructed/projectile_leaf_helpers.cpp](/home/john/Desktop/cheat_re/source/reconstructed/projectile_leaf_helpers.cpp) | [C] `62eb4ef28804fa2984a7af73f3504a0dd298d952b86738a7384590e480046ba5` |
| [C] [reconstructed/projectile_leaf_helpers.hpp](/home/john/Desktop/cheat_re/source/reconstructed/projectile_leaf_helpers.hpp) | [C] `cccf9f4db0fb3137592b89c5312d079477418e501ba9078a5984781f9e916439` |
| [C] [reconstructed/projectile_leaf_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/projectile_leaf_reconstruction.md) | [C] `b982d20f54d15a4ccba89ebddc8c32f50f441f34f62c44ea2e37ea4026fa8437` |
| [C] [reconstructed/projectile_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/projectile_reconstruction.md) | [C] `4f1e4e2a2e84a494ad92ade5ca2ff4dd385a70970dafb98d5eda06d7a2023a4c` |
| [C] [reconstructed/reconstruction.hpp](/home/john/Desktop/cheat_re/source/reconstructed/reconstruction.hpp) | [C] `9f21109fc132fbe05560374f0117ee0dfe287553efba30e78ee2d7fe93ed8528` |
| [C] [reconstructed/registry_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/registry_analysis.cpp) | [C] `e00195050a92eca999ca252d7c161d2cba8f772b918a06985537903cc453ef34` |
| [C] [reconstructed/registry_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/registry_analysis.hpp) | [C] `eca104446e6dc06c1e36fe7ce9f7f0411836973c72a0451c994acb882352093c` |
| [C] [reconstructed/registry_binding_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/registry_binding_checks.cpp) | [C] `c53c81049f80cf89088e7baffa9d8c2067e203a79a69eb184bd6410c9abf731a` |
| [C] [reconstructed/registry_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/registry_bindings.cpp) | [C] `3bb5e6b102732623527b19f167d8e0f7ec2c22f21df0cbb1dd53824c29147fcf` |
| [C] [reconstructed/registry_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/registry_bindings.hpp) | [C] `0c9c1d4ad9e0a65e9aa0bef59635c97ce45ef82e0df148ef38a210cdfd43d51a` |
| [C] [reconstructed/registry_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/registry_checks.cpp) | [C] `01665e0e52e33f39bb3b489492514261af17839fd035e9731c6cb87d69038a9f` |
| [C] [reconstructed/registry_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/registry_reconstruction.md) | [C] `cce32b22b7f4183cd8f65e17dafcad023717fdb98686fce443f30e91ef8fcea0` |
| [C] [reconstructed/render_bindings_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/render_bindings_reconstruction.md) | [C] `fd9aef1dede92f5404e62b5c7f18af99b3814ffadf2f048eee5c1eec1e0227c6` |
| [C] [reconstructed/renderer_helpers_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_analysis.hpp) | [C] `b35e36865dd4e6826df394092b6d65078140736097e4cbe2d1c723e0cc2b8a22` |
| [C] [reconstructed/renderer_helpers_background.cpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_background.cpp) | [C] `0d855c22413def4070ae27f49e468a49888beb9277799d29e527c7fcba9374f1` |
| [C] [reconstructed/renderer_helpers_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_checks.cpp) | [C] `30fae8aaa22102f69e987700a6ff6090ff70eb48064062c53ae4c6d4db5c4f59` |
| [C] [reconstructed/renderer_helpers_coverage.cpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_coverage.cpp) | [C] `e69b66c0925e59fa6716a5829fee6cec9fbf029ab1ec84f687dc5b7d4e6007ba` |
| [C] [reconstructed/renderer_helpers_font.cpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_font.cpp) | [C] `5054315f466eec74e24926116054d8ed392e0f4a2f54437dc3507ba96def4b41` |
| [C] [reconstructed/renderer_helpers_icons.cpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_icons.cpp) | [C] `76d2fbd037e69b08cb6af323df1ab561e3f33216fe6b5c528c7f8fbc966db410` |
| [C] [reconstructed/renderer_helpers_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_reconstruction.md) | [C] `b0d1c4d9b94dd77c68d779b1bb3049819c2824e64e6e8eaed66d61de0afd726e` |
| [C] [reconstructed/renderer_helpers_unity.cpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_unity.cpp) | [C] `57ede240426d4bfda00d449fde30433722d4f8e22e6f8a985cdf7281b72b24cf` |
| [C] [reconstructed/renderer_helpers_unity.hpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_unity.hpp) | [C] `7d3a5d10c9fee109fef30de17d9181c37036729203575cb7fba3729f1c640b78` |
| [C] [reconstructed/renderer_helpers_widgets.cpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_widgets.cpp) | [C] `82a4c6770e60bce4e48a2e6ba8adb22f2fd4a1fa5e39edd49ef64b70aa6eec38` |
| [C] [reconstructed/renderer_helpers_world.cpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_world.cpp) | [C] `f0410fe5f28c1204fc1881f9022971514f3e2caffa6ee06deb8327a444e9501f` |
| [C] [reconstructed/renderer_helpers_world.hpp](/home/john/Desktop/cheat_re/source/reconstructed/renderer_helpers_world.hpp) | [C] `ff359b8586bda48df66f06de8bfbdd8cae74f011b95e78e4fd2472a1f585c7fc` |
| [C] [reconstructed/server_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/server_analysis.hpp) | [C] `741d72f3cd5e33c17d6786e9b3e1d9462114256d3e6d58cd1b0abf4df47d2b2e` |
| [C] [reconstructed/server_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/server_checks.cpp) | [C] `c2fb781b58ffb077c4ae2886fe8b5f9d4353450a4d385d6a4551450551872930` |
| [C] [reconstructed/sky_model_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/sky_model_analysis.cpp) | [C] `95d2bea97872e2b1a9622c1c7e059f0127599768c61d3c72c019e06e4c9f8d1c` |
| [C] [reconstructed/sky_model_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/sky_model_analysis.hpp) | [C] `5eadae7f6f26ef004d8f9eb6e586fb41d866848bad323194e4b806c3260e9cf0` |
| [C] [reconstructed/sky_model_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/sky_model_bindings.cpp) | [C] `25d9846cd221254824150d7f490ff66ee8c46f89105a3a6d3b9b91adae32fef4` |
| [C] [reconstructed/sky_model_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/sky_model_bindings.hpp) | [C] `303e5d478a418cb24f3100436e492328eff61686292882e12d2fee7cf9d15d57` |
| [C] [reconstructed/sky_model_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/sky_model_checks.cpp) | [C] `115a7f0cd7e63d61ed38302ec81ebe244bf7c3002615c24679e92787ad35e21f` |
| [C] [reconstructed/sky_model_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/sky_model_reconstruction.md) | [C] `02870e85c8ff9a0e4852e2b16f9fb4af4105ce964a336a88151ec89ff07c23b3` |
| [C] [reconstructed/snapshot_binding_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/snapshot_binding_checks.cpp) | [C] `9bf8dcc5041bfe610b7f767cba0ef5e20c3646355c1e72a7b16b3d9260cc1e42` |
| [C] [reconstructed/snapshot_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/snapshot_bindings.cpp) | [C] `3098b5c8172af3e2cbd26c3e4ab9a587d381dd05aafc8a5339da0555e29c89a8` |
| [C] [reconstructed/snapshot_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/snapshot_bindings.hpp) | [C] `d4c916a94f9a63e59e1ea98dfcb1d4fce121563ae01d2aa76fa9034f832899dd` |
| [C] [reconstructed/trajectory_cache_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/trajectory_cache_analysis.cpp) | [C] `383ca43ac15b92a3e8b2949171344d8ade4c216d975fb83a4e85ec366a03056e` |
| [C] [reconstructed/trajectory_cache_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/trajectory_cache_analysis.hpp) | [C] `51bcd8d916b1ee645cf727898574018f8848abc75da47abec7437b1f6b69bd94` |
| [C] [reconstructed/trajectory_cache_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/trajectory_cache_checks.cpp) | [C] `fc4fd1cecbced2c979e99570a36c75cea5369849b044ef7109014cb8d5139548` |
| [C] [reconstructed/trajectory_cache_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/trajectory_cache_reconstruction.md) | [C] `6f9d78bffeb863008a8b6be8e839c88f81579cc5e972f8915d821ecccf949aba` |
| [C] [reconstructed/unity_backend_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/unity_backend_analysis.cpp) | [C] `859a30910319197397bbb82b519519349522b1bc929688797625f7b6886666e9` |
| [C] [reconstructed/unity_backend_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/unity_backend_analysis.hpp) | [C] `966116103963c7b6a05d1effaa5dd837098619de0a5953186b636fe9101ab18a` |
| [C] [reconstructed/unity_backend_cache_specs.inc](/home/john/Desktop/cheat_re/source/reconstructed/unity_backend_cache_specs.inc) | [C] `5062a675b79dbc259df5eea2107acb9bde5a08411adbf05fea5833ba3a5dd469` |
| [C] [reconstructed/unity_backend_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/unity_backend_checks.cpp) | [C] `1d17911b3e264a17e658bba944a749bf2e8d9f65a3a258bc7d0fe9a27e78bb4d` |
| [C] [reconstructed/unity_backend_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/unity_backend_reconstruction.md) | [C] `8dcf2bb44c560f7c64bab8b185920a90cc830dcd3a2a2c78a47b63a293e88d42` |
| [C] [reconstructed/unity_math_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/unity_math_analysis.cpp) | [C] `6db83f73d1f2dda26e5577b4428c67204b3806b801e368fa65f6ec29a165d7e3` |
| [C] [reconstructed/unity_math_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/unity_math_analysis.hpp) | [C] `99d28e029418dd4943608bfc31d3e2fdc54d8939615ee25ea613984d8a07f8a6` |
| [C] [reconstructed/unity_math_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/unity_math_checks.cpp) | [C] `5f277618ef653d8499d258fb1c4944260519ec1edd9c7346f750005d8b507d9e` |
| [C] [reconstructed/unity_math_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/unity_math_reconstruction.md) | [C] `92884536fa04c65e079ce422b397114fce2afdd6569c8bb5f708c546f0e00248` |
| [C] [reconstructed/verify.sh](/home/john/Desktop/cheat_re/source/reconstructed/verify.sh) | [C] `254e9be3ba3667a9b43544aad1bbe39b7e8901781b7fd40e36bb50c5f2a8a782` |
| [C] [reconstructed/world_esp_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_analysis.cpp) | [C] `8f3b1587f317c7a69c41f45b652f58665726bda2468fc82a699bff1412c327b0` |
| [C] [reconstructed/world_esp_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_analysis.hpp) | [C] `6513349608cae317d1c343610c8773e4d48d50bbd2902a9e73a6299445f48380` |
| [C] [reconstructed/world_esp_bounds.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_bounds.cpp) | [C] `fe9cb0a280cb83d14edbf409babf53862f9cee8488fd19595b243d17610d5a67` |
| [C] [reconstructed/world_esp_cached.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_cached.cpp) | [C] `0cf583ec44b893d421f40fc0148c8798518feae2111a6337de494fd662d816ce` |
| [C] [reconstructed/world_esp_category_data.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_category_data.cpp) | [C] `d0967ef42dbeea2a26fdfa53bfae22aec0151028540a0cf268ffd5720ace8bac` |
| [C] [reconstructed/world_esp_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_checks.cpp) | [C] `f43083e4d9fbc49dd72ee389f0b9b692e2d0d4c9e653d9e947211cf1808a32a6` |
| [C] [reconstructed/world_esp_classifier_tables.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_classifier_tables.cpp) | [C] `c265a9238a66b31c68469ef2d64588de106c9555c7d905e4b1f8dd8aa5f6737e` |
| [C] [reconstructed/world_esp_coverage.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_coverage.cpp) | [C] `58b06a867b90a98470052ea04708e14ad1a4c2ee6b711110a0325d7c527e305b` |
| [C] [reconstructed/world_esp_draw.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_draw.cpp) | [C] `d48cd839fbb1a56b7491a725122174083eeee0ff82f9b1672594ee45d43b806b` |
| [C] [reconstructed/world_esp_draw_tables.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_draw_tables.cpp) | [C] `6610c7d870cbe28c1141d0f7c666b098d41f1d756f433520c40377f1e560feba` |
| [C] [reconstructed/world_esp_dropped.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_dropped.cpp) | [C] `8c982e649c2383abe13d22abd6ac8d1da53da13d7cb6c524d811063e87cee10b` |
| [C] [reconstructed/world_esp_extended_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_extended_checks.cpp) | [C] `0bce9cc2bf321d7daec3336b5579f1cf58b5faeffb12e16293024691fad6b38c` |
| [C] [reconstructed/world_esp_fishing.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_fishing.cpp) | [C] `22175b7f33aefab00a9e5ef7265a802021f8dbaff2a686ce9b62e3ab8ce6686d` |
| [C] [reconstructed/world_esp_grid.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_grid.cpp) | [C] `f3636c22129d90343680e5e87245d444d4d4846163d270f414ba4008ec6906d2` |
| [C] [reconstructed/world_esp_interaction.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_interaction.cpp) | [C] `f8140e64cf9badc9c7a119ff579322e1079e235c0ad8548f8b19893f06aab2eb` |
| [C] [reconstructed/world_esp_inventory_tooltip.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_inventory_tooltip.cpp) | [C] `d7fd909c7d49ea0f0d932907954b0d0b0935f828a790376c303afbcdf0726391` |
| [C] [reconstructed/world_esp_item_names.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_item_names.cpp) | [C] `ca0991c676a472d6b391e9ae764d473dffbd97b1ca5b7b364cae0b2e179c5868` |
| [C] [reconstructed/world_esp_labels.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_labels.cpp) | [C] `a7f60c806523273c0568dcd89676bdffd9818eaf9d034e60f115c3f1b30851a1` |
| [C] [reconstructed/world_esp_names.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_names.cpp) | [C] `9f514b5a714d16d2235d933d07d67ebe890cc2ac6408747a9d48166626b544fd` |
| [C] [reconstructed/world_esp_output_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_output_checks.cpp) | [C] `6f1d2757fd8cd9573b47e04e21dce49e3afa4315fe5432c83870b0621f3389d3` |
| [C] [reconstructed/world_esp_overlay.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_overlay.cpp) | [C] `5c03c004709c0f9c4a7bffdbf6d197dc21c25fb6de96412f497a1a66677d183f` |
| [C] [reconstructed/world_esp_overlay_aux.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_overlay_aux.cpp) | [C] `47fd45b28caa1f7a20ceea87c1943aee114e103c57b3de3eec4b0d89100a4950` |
| [C] [reconstructed/world_esp_overlay_controls.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_overlay_controls.cpp) | [C] `5c92d58b19104e1388f5b78b3bd0c9d7617cabcf2f338f04b7accd60558778b6` |
| [C] [reconstructed/world_esp_overlay_tail.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_overlay_tail.cpp) | [C] `382bbcdd0e614030237fcb8cd6700f63a71f0501ef6825a4e8bd00fdd2522349` |
| [C] [reconstructed/world_esp_overlay_worker.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_overlay_worker.cpp) | [C] `69d62e9bd85908c6a3efb1fca5cc9e74fd3ff047104c8bf74f60b56f261c9a36` |
| [C] [reconstructed/world_esp_owner_data.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_owner_data.cpp) | [C] `515a3c82cef9a50a0765745aa8e12785e97b354d11a2035d4c89fb6a90f290fb` |
| [C] [reconstructed/world_esp_player_actions.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_player_actions.cpp) | [C] `7cbf3aea1a90f9fbfe562c3cc14d9a341c368910f636826d0311ca3f4d0d4cdf` |
| [C] [reconstructed/world_esp_player_labels.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_player_labels.cpp) | [C] `0329ba404e6e98a0980a8a6af69efa4374b9a9aa59936eb768506a6d2516f5c4` |
| [C] [reconstructed/world_esp_player_radar.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_player_radar.cpp) | [C] `25dde1e4fb61c72b68950b6be05568be38850af11ba91b44bb9aa53531c5c18d` |
| [C] [reconstructed/world_esp_player_worker.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_player_worker.cpp) | [C] `43c58a2f841c4d249b2da63f3061210d9d0fbb34990bb1f0e72b1a97d52146b3` |
| [C] [reconstructed/world_esp_players.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_players.cpp) | [C] `e3a92a14c060c6df3a636bdf8e6daf9eaa53a3eb8c1b1ae0ff70aec2dfdf5464` |
| [C] [reconstructed/world_esp_reconstruction.md](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_reconstruction.md) | [C] `33d13081ead968cbc15270b0bdec4480c52768096af474c2eb3f8688f3c3104c` |
| [C] [reconstructed/world_esp_sign_status.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_sign_status.cpp) | [C] `fe1bad3866912c3784fb1f73a91455738f2f34a137b45fe3fbaa1b3d490bbe9b` |
| [C] [reconstructed/world_esp_simulation.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_simulation.cpp) | [C] `cc13928dd80feda5a37497b25aa3eceac86ae61c6cc8c5acde296dfade2c056a` |
| [C] [reconstructed/world_esp_simulation_worker.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_simulation_worker.cpp) | [C] `7d28eeae30281be9c00cc38c9367b3e6faf0e19624fe174055f037375e023000` |
| [C] [reconstructed/world_esp_skeleton_tables.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_skeleton_tables.cpp) | [C] `043abdb77dccf9e88218306c79474da22ac3f37fc34c95d5daf5c9cbeb23da16` |
| [C] [reconstructed/world_esp_status.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_status.cpp) | [C] `7b143b9e46ff73f6cb87ee10edcfa93116060012b3b7b89c554dd20ff4873096` |
| [C] [reconstructed/world_esp_turret.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_turret.cpp) | [C] `08a52b04fee36645c7f6c90bd8259495b0b8b2cc013d35ed0edd4c0b008a23b1` |
| [C] [reconstructed/world_esp_windows.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_windows.cpp) | [C] `d3705e3adb4a9ad8415f008bceee7b513dddcb9a7199b94cb745c02f0f8d824f` |
| [C] [reconstructed/world_esp_worker.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_esp_worker.cpp) | [C] `1a2062609b4bd8d916c3f5c53ab23e4eec5658ed5a1e8f8d7f3dc029586ff56e` |
| [C] [reconstructed/world_render_binding_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_render_binding_checks.cpp) | [C] `f30dfe3d84e63dc6091814593d3878c535727ee28694890f7b2b7e62fcd88947` |
| [C] [reconstructed/world_render_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_render_bindings.cpp) | [C] `9ebfa89d6a5ee7ccd31f5f7e85b1bca26ddc6841f8dd47f69fe84ba2f6308bac` |
| [C] [reconstructed/world_render_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/world_render_bindings.hpp) | [C] `f0ccb4cd3016c8d7fe85852cfe8dc56b532457a2ad864e297c17314b72339cc5` |
| [C] [reconstructed/world_snapshot_binding_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_snapshot_binding_checks.cpp) | [C] `18f9038708cc0f66d5960582347181691c966662587757887fdb8d8884a8001b` |
| [C] [reconstructed/world_snapshot_bindings.cpp](/home/john/Desktop/cheat_re/source/reconstructed/world_snapshot_bindings.cpp) | [C] `0bd5906a3aa52dc108d163e834ddb329d97ef98829001a19db89e58694e0aee7` |
| [C] [reconstructed/world_snapshot_bindings.hpp](/home/john/Desktop/cheat_re/source/reconstructed/world_snapshot_bindings.hpp) | [C] `1ec70f2e207a527305e17e0c6df06a6dff4f5fb0b7e94aa0fac03c60170c7201` |
| [C] [reconstructed/world_snapshot_bindings.md](/home/john/Desktop/cheat_re/source/reconstructed/world_snapshot_bindings.md) | [C] `3d0b9761af26ba242ddec2a6c97ea442ccd81c3eba6603140245102cfff5c83c` |
| [C] [windows_base/CMakeLists.txt](/home/john/Desktop/cheat_re/source/windows_base/CMakeLists.txt) | [C] `7e1811418cbfa9a9ff30d74cdd78e99ffb4c884dc66d3be150426cd38ec6cc88` |
| [C] [windows_base/OFFSETS.md](/home/john/Desktop/cheat_re/source/windows_base/OFFSETS.md) | [C] `cfbbfdf58e4138aa9e651f8eac530851df51591d7bddeaca23be50bb23d1b520` |
| [C] [windows_base/README.md](/home/john/Desktop/cheat_re/source/windows_base/README.md) | [C] `fd24671fb041000ae14cad62179be43d575e1f8cba7d26a31ab3f9a69a2cad63` |
| [C] [windows_base/base_api.h](/home/john/Desktop/cheat_re/source/windows_base/base_api.h) | [C] `f99c34630b0174b9aa959960cea93725eab3fb69e0c899ff44a3a13bf0d81fe6` |
| [C] [windows_base/base_dll.cpp](/home/john/Desktop/cheat_re/source/windows_base/base_dll.cpp) | [C] `b8486b8025ed219b29ca9cbcc1817692ccc3bcd51298a6cd8adb3f6eada6bf1f` |
| [C] [windows_base/base_frame.cpp](/home/john/Desktop/cheat_re/source/windows_base/base_frame.cpp) | [C] `d41488da0d83b318f5c4afcd65feb4333a75cbdb149e09081f65db65db007673` |
| [C] [windows_base/base_frame.hpp](/home/john/Desktop/cheat_re/source/windows_base/base_frame.hpp) | [C] `998e7b824fa9bd8f844c1adaff144edb49a0bb5a8347dbcb57cff6cc1cc9a3f1` |
| [C] [windows_base/base_frame_checks.cpp](/home/john/Desktop/cheat_re/source/windows_base/base_frame_checks.cpp) | [C] `e9bece76222e12d19e859889244df437cc8b975ad6655f9f14e981eb6f101758` |
| [C] [windows_base/base_menu.cpp](/home/john/Desktop/cheat_re/source/windows_base/base_menu.cpp) | [C] `d47b56d763d67228d65050d12f0c8e4ea393fba82a2a08f52d93e0485602ae73` |
| [C] [windows_base/base_menu.hpp](/home/john/Desktop/cheat_re/source/windows_base/base_menu.hpp) | [C] `d41cba3ebe435458216a1633bab647fa595d3f432d31774f3cf188220a83b78d` |
| [C] [windows_base/build.py](/home/john/Desktop/cheat_re/source/windows_base/build.py) | [C] `f35ffb47590ea1ba134b53b0bf7318f76323b14839755debb428f1e6ce9f5d9f` |
| [C] [windows_base/copy_profile.cmake](/home/john/Desktop/cheat_re/source/windows_base/copy_profile.cmake) | [C] `99cfd1f86d404a98cef585396d6884d09bee581569b8966c80884fd899863b56` |
| [C] [windows_base/mingw-x64.cmake](/home/john/Desktop/cheat_re/source/windows_base/mingw-x64.cmake) | [C] `53f33f429165778a770e99fe0f02e7776e4dacaede9554abff9b9d57d548b5d8` |
| [C] [windows_base/offsets.json](/home/john/Desktop/cheat_re/source/windows_base/offsets.json) | [C] `ebee9bbd0bdb3d487b77a3e6ce51c2b563a774fdd65fd21d10851ce6ae8a45b6` |
| [C] [windows_base/verify_cmake.py](/home/john/Desktop/cheat_re/source/windows_base/verify_cmake.py) | [C] `6940cf68af2c140982224bb39c8a52fbd8a1e0da9d7ff7fa9f407c4168abbdd3` |
| [C] [windows_base/verify_native.py](/home/john/Desktop/cheat_re/source/windows_base/verify_native.py) | [C] `305fcabc11edf8d23983b97f25cc87a745e3194db55dc0b0cd8c8b1ac05b25d7` |
| [C] [windows_base/verify_wine.py](/home/john/Desktop/cheat_re/source/windows_base/verify_wine.py) | [C] `ec8c0cc20dc4267603976c601990a7d6caa0c1955fb8468881fa3b615d9e2119` |
| [C] [windows_base/windows_host_checks.cpp](/home/john/Desktop/cheat_re/source/windows_base/windows_host_checks.cpp) | [C] `40f8c827610275d2432794a13c0ae1a2a2f168abee55d421e911b6c0bd57c54b` |
| [C] README.md (this file) | [C] Exact hash in [OUTPUTS.sha256](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/OUTPUTS.sha256), entry `source/README.md`. |

[C] Complete output checksum record: [OUTPUTS.sha256](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/OUTPUTS.sha256). [I] Verify from the workspace root with:

```sh
sha256sum -c dump_analysis/semantic_reconstruction/OUTPUTS.sha256
```

## Complete supplied input manifest

[C] Verbatim input hash records from the supplied manifest; paths are relative to `dump_analysis/`.

```text
96a643c064e019bdaa73d8a7f615a6e2a2ee27096d08791115b34fe06e3cee4c  A_crypto/evidence/hooks_0f900-1080d_slot0init_unprotect_protect.asm
893fb0cf43928ea815114a75ae26fb7ad93f09ccdc663c95ea3d826e34e19296  A_crypto/evidence/hooks_11070_mode2_packet_logger.asm
779effd0e509dc08e5746af0b8b13d0294180e1b820d21470dc05166fa7da552  A_crypto/evidence/hooks_13300_NET_Receive.asm
2650fd387a4500e11ed98a852a079855fea090e674fb5ddfd1cb791499a0e9c9  A_crypto/evidence/hooks_146c0_NETSND_WriteBytes.asm
b7fb9ad284a05dd6b9a2abee22d585d70f1b77c2407a7ef71650365a25371c84  A_crypto/evidence/hooks_1a892_h_host_publish.asm
d7fdb0c67df5e40b601eaf74892c782dd607aca7581e1ad51f9e7e9e8f4c23cf  A_crypto/evidence/hooks_1d4e0_aes_scan.asm
8dbe4dcd79675e3109e62a3e4435856751b41ee6911c203b93658902e54215fe  A_crypto/evidence/hooks_227f0-22e4d_steam_launch_vtable.asm
451bafbd21ea2946b3ad943cca7b392f98d31fdfab39a07c7e80c763cf5a7e55  A_crypto/evidence/hooks_241b0_getappid_split.asm
948b57a1088e0c344724a77b3049ff8493f4dd7928aa472126e73c8f663deb08  A_crypto/evidence/hooks_5ea5-68e3_H_install_slot1.asm
d4a89c1d9f209501368e56053a4752e4d55a9c75d82e7019e8e7cd38047c4481  A_crypto/evidence/hooks_f1d0-f7d0_eos_facade.asm
c7e37af0310899b042d8f76991e94a55b95afa5421a850d1e92ca05064a1623e  A_crypto/REPORT.md
3a210ad608cd37aca2eb8ac2ba9c47e43d7fcb794c4c8402573549d02f0cceb8  B_kernel/disasm/k_disp.txt
ba953864017591e1386b13dc72e4a098ec9c2289a31229a90a4bd842e606a313  B_kernel/disasm/k_fastio.txt
94eff2b38e39cb313bbdcd12cf6d8bbd0fe42fc2fc7e23bbe2abb208c79e4d3c  B_kernel/disasm/starter_sd_16960.txt
546b1b8394f98cdf8d736f22b12178284fd4e96cac2c0697d669d2b2f4355dc8  B_kernel/disasm/starter_sd_30b90.txt
563c8aceb2e3b13a4a9c309735d33fbda32ea4ea64bd53df6305c7d896ba7b9e  B_kernel/disasm/starter_sd_312f0.txt
23bb225d5a8a2b82ab93be971062e1af48f7d3fe7d4720c32aea13fe2cba697d  B_kernel/disasm/starter_sd_31cb0.txt
f0d5c71c84edb4be79aa1b020df91275d1df609dd19fae3ff77a0d3adf0ad904  B_kernel/disasm/starter_sd_32390.txt
ed179074ba06b7cb5ec93a5d93d4eaa5a0f381d6f80819201f8ede1ebdfb2dec  B_kernel/disasm/starter_sd_326a0.txt
efdc477319cf63a47192dbdc3c91131cccf559b34ac2871171711fbfe74752c1  B_kernel/disasm/starter_sd_32e30.txt
62420782b4a62053a9c4a230fcbf5a23218f089284e9172da81a92bdbb46d4ac  B_kernel/disasm/starter_sd_34030.txt
6f8ea9744f88c71fbf4fd6663a1d7a0c1bd2f13017d31b4ea0dd42ad429ecf52  B_kernel/disasm/starter_sd_35100.txt
d523d68ff7e460ab320fa66fc4599198cb3a0563114bda876117cee443ad59d6  B_kernel/disasm/starter_sd_f900.txt
4b7146a0d9393b31be5e5759e5fad1afc1cd1c52d5d091e1277dc0d508232539  B_kernel/pdb/cng.pdb
b9f3bc9457852ad52bf3b476bd1cefd7eea885fad70aa6efcd0f998838424950  B_kernel/pdb/ksecdd.pdb
3b9e7500b18a25bd3b14d4e0042677103d001466b11fb57e0e7a9d6613b70f4e  B_kernel/pdb/ntkrnlmp.pdb
a924822f36cbd4b29be0eed2c2fadbbccc6998d773ab9433925b9f711d4d2d32  B_kernel/pdb/WdFilter.pdb
6e8b49cf70bf854e8c59c7d27cefa89406caf8978461190dabb86dafcd8554e1  B_kernel/PDFWKRNL.embedded_0x109f60.bin
dfb2f2ec64514e4d10ad36e5300ffb4e67d00a9d85346ac898ff1ddf59ba01a3  B_kernel/REPORT.md
c034cb6dd2205eb32bccc3c0eb5fd9fe87c250cdddc44f2a7d5bea7b7402a910  B_kernel/scripts/autodec.py
a82c08870983d98ca89668bf9c1d903043bdec78f843efab3666a208b107aba7  B_kernel/scripts/callers.py
05bae7fa2d536bc7c7c5a4348c418337ad9f560d866c94a9652312b9d5c07173  B_kernel/scripts/cv.py
427a7b1f8fd8d0f7fb5b185c463c0233bbb37cb84d53a2b36d29530ab066720e  B_kernel/scripts/dec.py
3bb62bfe0ae262c0e414b6fa3841b1fe0afdddc653af0d44ee741906a9240a86  B_kernel/scripts/pdbsyms.py
8f32ce16a4d2c32a4fca7fd3439b62ffefbc80c3797152c1e5b7427000a6d5d4  B_kernel/scripts/pedis.py
59d6d4632afa9f60f2280eefcc5abcb90662ab2926c283c190730dcded2da57e  B_kernel/scripts/pscan.py
97ca1d21899b234080fdf738d849b1b776a66f6dcd80d6ea98a0b6ba9ecfbcb9  B_kernel/scripts/sd.py
b1af3dc5a15e7eed1200b8be960387b89c781454362fac61c46971ae1a82fc94  B_kernel/signature_scan_results.txt
ce270bf9cb7caf5f8eb3eebceea149698aabdce26e07a239227b1ffa2843a390  B_kernel/symbols/cng.syms
1f1ca77f67ffb591cd70ebd185231bf1b38065799a67d0e36c6d2b31ad2a6f96  B_kernel/symbols/ksecdd.syms
55704fc1bf25244c9428d0637550e83ed2420d51c923a4739e37ea66ba8a0450  B_kernel/symbols/nt_selected.syms
b5b6996fad71d2e976008d5783bdd05c029c8dd7d73ea4ff4057a71eef8c83ee  B_kernel/symbols/wdf.syms
7621758c7cc17719b24dbc18a642fbe1fe29df644ff10f11113d034e7cc903ea  C_vmp/cfg_users.json
ba5c3a8908d261b27279684c331cd7f57649c7dd3ba1b7867d8674d26a1b65a0  C_vmp/cheat_reach.json
08cf6b27d511cd04d9804513700774bc673fc452443ea162b78e307a4af73eed  C_vmp/final_sites.json
0089fe857afcfae99e72dd0bd1b2ab8f87d95afa387da1a5ab26ef7c40612a78  C_vmp/scripts/absptr.py
07b8de36a03cdcfcca02f83a02e8c7e01712a39778d8ba3bdf3eb8e23c5c1c43  C_vmp/scripts/bdis.py
53306943711faa28159a65cd8af77b9411a77c7797582a3dd568a3311cb0bf99  C_vmp/scripts/bfs.py
68ea0a69885e45030f73c8ebf422636e61e8bd4cb3682e01bbc31e934ccf1d84  C_vmp/scripts/boundary.py
1a4d4b92021ee0152498cb185a2443aeaa6013745cfb9774d55c92ae22dbb687  C_vmp/scripts/build_csv.py
977dc5659981b4e3ab1a887d68af4c905d157aff0247f94917d8fdad82313383  C_vmp/scripts/cfgmap.py
8aba6770e4adbbe3f2bee2611ba9a0b5ba38bf4886bf0115fe0b6e31c4fa7cef  C_vmp/scripts/cg.py
624429c99bec55d095591b685745ec0b45106bae8c0d43e827bb43a2646db42b  C_vmp/scripts/cmp2.py
6656266268a82ba7d4e581e402c84975a1c3a5f0d56bbca333c3482bdbcfe5c0  C_vmp/scripts/cmp883.py
346e803cff2613c6e549272aaf5634664c4df00c132df4272a351b338efc1e9e  C_vmp/scripts/delta.py
ac1f2002703d40fe48c2102455e302f81b3717219e8dbb87e6fd32915d9511a1  C_vmp/scripts/feat.py
ab43faf6a3f80291773eccdb19fa7422237a5eb5d6af4a4bd2b30d44822c7580  C_vmp/scripts/fentry.py
55298a705a0dc35a3cec02d6e69bf78b1cc930b493af0b62a77e99d643e8593f  C_vmp/scripts/final.py
0fb810136033c68251b963e3de875f6045e6e34f0a7370936bd7bd4384ca339d  C_vmp/scripts/fnlabel.py
2e9a481b43a766ba9c892029aeac3fafb7cb2bb9ac7ede04ac6bed7d83bdd56f  C_vmp/scripts/ftrace3.py
c135404367a23d93518221f023beca2df9093fd49307379fd2ee3bde156ed99e  C_vmp/scripts/offs.py
563fc54d71537b0a6126c02d00a1be1f02d991f9f4ce6a8d373daf509c6c1f8e  C_vmp/scripts/pe.py
aa1a463850a6b6a7f7299660a9bba76e2cd9cafbf57c193ab0e6d3080a31664c  C_vmp/scripts/rawscan.py
84d8777edbc86f740d2ab007aff44fd222d02d09c1fca2499093c86487c9ab80  C_vmp/scripts/rest.py
5dc9f467ea8c01c2c4954a1fc10deec9f16dd98101a36300594df37eebdb2600  C_vmp/scripts/rf.py
165b7ead5ab17960d2b273b18388c62c3bf920d553fe3bc33138912fabcc7c5e  C_vmp/scripts/shape.py
523625ef2f4fbcd8baea4a39174b7207a110ed350ac359b0712019dc76ecedec  C_vmp/scripts/stream.py
b6cd2ae47f43e74cfa12b451d2e8458a23396e30704b1c2d2321e8052e447594  C_vmp/scripts/vdis.py
c2147684f015e24765bcd96b1defcade01e0142fdc9f43cbb500dc66e0b6f3dd  C_vmp/scripts/xrefs.py
70bfb20a6426b2a24e656031ef58841d4d63dba2f7cccc5bbb0326f313f5a33e  C_vmp/summary.json
c375bd1eecf790659cd3b61f7475ab3230abf875cbd5d5f2d7d46ff2ebeca880  C_vmp/vmp_inventory.csv
6d955d1e783d319f42bc96b450b0f2bf664fd08e83494ac2d018e34fbb59f191  C_vmp/VMP_INVENTORY_REPORT.md
60607c67de6ce47a773b2da0fe8a6b11133ed3815a0382bdf1d16c0e9872667b  dumps/pesieve_cheat/process_4248/29c01410000.shc
e85d111289c50af93caf484ce3219dd9c232db311801c3aa35fc47c043e3257c  dumps/pesieve_cheat/process_4248/29c01cdbaf8.dll
b77e8f03a7dd0c25cdae73c22955cb915e5303cda9fae0bf45665244fb1c0a07  dumps/pesieve_cheat/process_4248/29c19490000.dll
ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090  dumps/pesieve_cheat/process_4248/7ffa2a960000.cheat.dll
18a13be4392cac04af97e9ea949980b282454d9c4dbbf621d5f3134e62363428  dumps/pesieve_cheat/process_4248/7ffa2a960000.cheat.dll.imports.txt
a509b055126d40a581cb926586220dd93abc4ebb5b585c2bdb874666c0a4c78f  dumps/pesieve_cheat/process_4248/7ffa36e10000.clr.dll
5df8c77740905b280a42971be4038d4815e1c922920f9c23e9c5be9876ece74b  dumps/pesieve_cheat/process_4248/7ffa36e10000.clr.dll.imports.txt
f331869a2db4baa62c9bec324e0cfd9f2bcff3d5f7a70399cd6b7784ab7b46b1  dumps/pesieve_cheat/process_4248/7ffa36e10000.clr.dll.tag
5d2cb4ad3a6565345f7ca75e8e74004cb0f6cf4299d393d63000f6a5adae7b4d  dumps/pesieve_cheat/process_4248/7ffa83c80000.ntdll.dll
b03148b1736490e0c094543664930dadf2123bba161808dfb0e4387fed3e469a  dumps/pesieve_cheat/process_4248/7ffa83c80000.ntdll.dll.imports.txt
07878e2710aafa1f66a2774c618d125205bf746b8d12846bbfcc76d1aa599cb6  dumps/pesieve_cheat/process_4248/7ffa83c80000.ntdll.dll.tag
be2c2595d8980b80a7cd00487bcac0831d4a95b03bc1a143e003efc230675c0f  dumps/pesieve_cheat/process_4248/dump_report.json
63fc26afc017cd2809b07c756c5a2496feb66320259075f79a62fd86ed0f4eec  dumps/pesieve_cheat/process_4248/powershell.exe.dmp
820a449e315ea34986a9fbcc0736f0f33db9b56bc640ec26abecc9134f208298  dumps/pesieve_cheat/process_4248/scan_report.json
68a8bf527819a16a18231740a31f832694e61f8f72148bed23cdcd291829e6ee  dumps/pesieve_hooks_full/process_6608/7ffa2e5a0000.simple_raknet_hooks.dll
e8e8f429202107c7567f439cce0e538ebe0baceedc0593bf99cb8934228efbb1  dumps/pesieve_hooks_full/process_6608/7ffa36e10000.clr.dll
f331869a2db4baa62c9bec324e0cfd9f2bcff3d5f7a70399cd6b7784ab7b46b1  dumps/pesieve_hooks_full/process_6608/7ffa36e10000.clr.dll.tag
a5cb2d0289db8c54e3c57d16ed8a6be0d9b1d87b8b42d6a1a92aa022a89de31d  dumps/pesieve_hooks_full/process_6608/7ffa83c80000.ntdll.dll
07878e2710aafa1f66a2774c618d125205bf746b8d12846bbfcc76d1aa599cb6  dumps/pesieve_hooks_full/process_6608/7ffa83c80000.ntdll.dll.tag
0bd40cb5cc81e8f44c8b6011e1911061af54cfb5386b4ea31b69f0974830f593  dumps/pesieve_hooks_full/process_6608/dump_report.json
4c5bb4191bc3ab14d422cef1a45f89f37792eb9f4b0626b5a4afaeb1160e4a60  dumps/pesieve_hooks_full/process_6608/powershell.exe.dmp
eff0962940feb220cd1c08374c222944ce9e3618e0ea98f79936ebf635b29146  dumps/pesieve_hooks_full/process_6608/scan_report.json
218253ea29f3cea4c52a63e6600602d57251216080882ace69987c65f6599bd7  dumps/pesieve_hooks/process_6608/24d80000000.shc
70553fbef474b52dc31cc62367fa8bf4faa42aae7bf7fd0545bb13b29fe6a5db  dumps/pesieve_hooks/process_6608/24d808be958.dll
c68a1a9a276228d32383982ec8280a8b691cbf95f130c6f5ee8f92bb2e1edbe3  dumps/pesieve_hooks/process_6608/24dfa940000.dll
81d0d6e7d8af6d01499d8b1e9ebbaa2e578defde0e0f72f64c408da37b3ab80a  dumps/pesieve_hooks/process_6608/7ffa2e5a0000.simple_raknet_hooks.dll
2b5ff98d3019fa4620f7689f703477ea58417be50376a44e259fd07b7aa50cf0  dumps/pesieve_hooks/process_6608/7ffa2e5a0000.simple_raknet_hooks.dll.imports.txt
8157ffffce91ee834bddb3566049b8ccb122831c8aefcad26e757602a0f6ad0d  dumps/pesieve_hooks/process_6608/7ffa36e10000.clr.dll
5df8c77740905b280a42971be4038d4815e1c922920f9c23e9c5be9876ece74b  dumps/pesieve_hooks/process_6608/7ffa36e10000.clr.dll.imports.txt
f331869a2db4baa62c9bec324e0cfd9f2bcff3d5f7a70399cd6b7784ab7b46b1  dumps/pesieve_hooks/process_6608/7ffa36e10000.clr.dll.tag
133fba10a9a943c6d4d04463844b4db2f892b1b4633d0a84e94a264e876a7c61  dumps/pesieve_hooks/process_6608/7ffa83c80000.ntdll.dll
b03148b1736490e0c094543664930dadf2123bba161808dfb0e4387fed3e469a  dumps/pesieve_hooks/process_6608/7ffa83c80000.ntdll.dll.imports.txt
07878e2710aafa1f66a2774c618d125205bf746b8d12846bbfcc76d1aa599cb6  dumps/pesieve_hooks/process_6608/7ffa83c80000.ntdll.dll.tag
bc1f4ab72f0aeab8a2ab9862d5c848ee87036088fc8bcfca22c1969af2b2925b  dumps/pesieve_hooks/process_6608/dump_report.json
c0858cdf70876c87e609b2add2219563597dbe1a367d990f2c90d1b9741620f6  dumps/pesieve_hooks/process_6608/scan_report.json
653aba4226c90c77ccba90a113326cef90fb86dd3dc2e449ccfff0c377207c5d  extracted/cheat.dll
27a74815285d2c522348221690b7d90be2272681067f158b01aa9de18b4791b2  extracted/packer.dll
c19db6db27e1e838069f2f5c8c0b292b55934cba6de2b7e1933f0d9f2f3278bb  extracted/packer.mapped.bin
357dfaee5d22fc711c81115588dbc9ede4454a6bd4e20684f39bb22f62aaa72f  extracted/PDFWKRNL.sys.bin
caf10e3de41b92fecd80dd797b340a5c4b882efe423e9597809b28fba78f6f8f  payloads/emu_cheat.syre
a83aaa8795f1e97912ec0f79828f9f822f4e46702ffcdea597381d0e0dd97d2c  static/cheat_annot.asm
6c2491fb599069c1b6dd7a256d6367f410f7f5dd1f9f79cf459c6ee618bd92a3  static/cheat_decstr.txt
32ca33d6d92efaf38a1f796bf38eaf3e5045423b51425470b930c9db919b5a4c  static/cheat_hooks.txt
c4d9532f937c766f6b8935150ed5662dca230c5327598059828b16c1fcd76c6f  static/cheat_strings.txt
98e3426d2085b1f24cd6354155c9d2642011ffe5a28706456d8c92484e9abb42  static/cheat_text.asm
a62203c001a098632974cdb84b40e7ee802ffd9e36b8a57c2cae74c88bd9d443  static/hooks_annot.asm
c3bb7975a5e25dd7dac2067db65c94541f498eeda416383b13586a89e261b71d  static/hooks_decstr.txt
dd18cb5caa287ca8beddef4f5376aa278a91f255c0fc2129a4a412e494fa4a79  static/hooks_strings.txt
03a4aea874e46ebd864e9bfe68ccf8109b33336a3dcd2f8e815a8039a7b30c19  static/hooks_text.asm
e7f23ca2e7a219583f08bbb21708073ffd76d3eb73d4a0ec986735549b9a2c7a  static/hooks_xref.txt
ba0d3922e36385f4d960d985e7dfe0d5c9b56339fc807ff8c7d1a4d827892d42  static/RUNTIME_UNPACK_REPORT.md
60dbc9af31bd84d56a5bfdcf8bef22a9fa2a1613934be6daef4031c286888711  static/scripts/annot.py
2303a1d91cf7ac7064123e772c14c5b59976628d612c1f0f80a0ab16c2421a13  static/scripts/cheat_decstr.py
dc7344f1497faff74cd0ea1614970f95ebbf4e81eac4bcab99a1b97eddf0e76d  static/scripts/decstr2.py
5507d25117846dd1efc725f721d0d5d11db7c6bac5dffe24a937d64ed3522e2e  static/scripts/mdmp.py
563fc54d71537b0a6126c02d00a1be1f02d991f9f4ce6a8d373daf509c6c1f8e  static/scripts/pe.py
f1149d1768c83f71b297b5c5884ad5e1cda44dddf0147a8fb59b0dfe15bfa8dc  static/scripts/__pycache__/mdmp.cpython-314.pyc
6ef3a941cdc10076244d0f20167f4b7b2069417b82425e528c9f61a42d9c8db8  static/scripts/__pycache__/pe.cpython-314.pyc
d3be5091bf18d34c420de797b17cce90c75086dd6a6fdd5c859afd0f4bfb220c  static/scripts/xref.py
18a13be4392cac04af97e9ea949980b282454d9c4dbbf621d5f3134e62363428  unpacked/7ffa2a960000.cheat.dll.imports.txt
2b5ff98d3019fa4620f7689f703477ea58417be50376a44e259fd07b7aa50cf0  unpacked/7ffa2e5a0000.simple_raknet_hooks.dll.imports.txt
ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090  unpacked/cheat.unpacked.dll
81d0d6e7d8af6d01499d8b1e9ebbaa2e578defde0e0f72f64c408da37b3ab80a  unpacked/simple_raknet_hooks.unpacked.dll
```
