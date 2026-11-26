# Semantic fidelity goal and evidence boundaries

[I] Goal recorded November 24, 2026: improve source-backed fidelity of the selected
internal-menu and ESP paths, not merely recreate their appearance. The user's
requested **95% original-source semantic accuracy is not established**. The goal
must not be closed by counting passing fixtures as a percentage of unknown source
behavior, or by excluding unresolved boundaries from an invented denominator.

## What the checks mean

[C] The retained evidence compares explicit recovered control flow, field reads,
call order, draw commands, geometry and owned runtime state. It includes a negative
control that failed when the name adapter bypassed `font_text_plain_361bcc`, before
that adapter was replaced with the real controller. Current verification must be
checked against current hashes with `python3 source/test_scene/audit.py`; an old
PASS becomes stale when a dependency changes.

[I] Trace counts identify direct entries, caller-attributed recovered work or typed
host boundaries as documented per module. They are not original instruction/branch
coverage and do not prove an unobserved callee or native effect executed. Source
translation, executed reconstruction and equivalent native behavior are separate
claims.

## Selected behavior inventory

| Path | Established evidence / remaining boundary |
|---|---|
| Checkbox `3bd114` / slider `3c4478` | [C] Actual reconstructed state changes; menu events alter the next frame's ESP geometry. Not a host checkbox/slider substitute. |
| Color picker `379680` | [C] Actual SV/hue/alpha and hex-editor controllers; changed color reaches ESP vertex bytes. Original internal COPY/PASTE float storage is owned Snapshot data. |
| Color preview/popup `386438` | [C] The real checkbox color request enters its native child, preview and animated popup. Closed default, preview-open, outside-close, reopen without new allocation, editor capture, hide/minimize cleanup and balanced window/style/color stacks are checked. No embedded picker substitutes for this path. |
| Editor `3c8eec` / `3c690c` | [C] Key ownership, UTF-16 queue consumption, selection, paste, Backspace, Left/Delete and Enter are exercised. The recovered ordinary-token no-insert behavior is retained, not silently changed to upstream ImGui. [I] Clipboard input is an explicit owned string boundary, not OS clipboard access. |
| Menu page/layout | [C] Original Favorites `3354b4 -> 35013c`, native root/retained-child Begin/End and group/control drawing execute; stack balance and no repeated child creation are checked. [I] Permitted Favorites requests, compact dimensions and style are fixture inputs. [U] Full original 21-page registration/navigation and original assets are unfinished. Actual full-root checks stop at missing initialization rather than fabricate success. |
| Frame entry `2f8574` | [C] Actual recovered frame replay, IO and draw-data submission controllers execute with tested call ordering/gates and owned geometry payloads. [I] Warm UI/config/bundle/cache readiness fixtures and typed setup/game/original/GPU recordings are explicit; native NewFrame/finalization bodies remain boundaries. [U] No live Client.LateUpdate detour, original-call ABI, cold bootstrap or Unity/IL2CPP ownership is validated. `submitted` means an owned recording sink, not successful GPU execution. |
| Copied Client install `362118 -> 2ea90c` | [C] Real initializer, nonempty signature traversal and bounded MethodInfo/record writes supply the frame's saved target. Repeat, lookup failure, missing metadata/module and zero-original paths are checked. [I] Fixture metadata readers and warm ordinary-call context readiness are explicit. [U] No native detour or executable target dispatch. |
| Recovered IO handoff | [C] Menu snapshot values and later UI callbacks consume the actual IO mouse/display/delta/button output, not a parallel raw-input substitute; selected-list order is shared by upload and CPU presentation. [I] Key/text/clipboard input and owned draw-data export remain host boundaries. [U] Full NewFrame/render collector and wheel consumption are not established. |
| Window visibility/order/history | [C] Cold Hidden popup suppression, display-vector hover order, root/child sorting, real ActiveId deactivation, hidden-frame history and unclamped IO are checked. [I] Bounded Snapshot traversal/storage implements the supported recovered branches. [U] This is not full NewFrame/Render; active native window-switch animation is explicitly rejected. |
| Runtime evidence pairing | [C] Verification binds event/entrypoint/runtime-log bytes, build record and runner hashes. Each expected positive capture must independently report complete status and recorded submission; selected IDs are named exported lists. [I] These strengthen owned-run provenance, not original-source coverage or GPU equivalence. |
| World-before-menu order | [C] Edit-frame ESP retains prior state; following-frame checkbox, slider and color output changes. Minimized frames still cancel input capture. |
| Player reads `30ea17` | [C] Real validity/state/name/bone/selection/distance/configuration consumers over independently owned fixtures. Full outer `3098a4` is tested separately to reject missing mandatory window/simulation/history leaves, not falsely reported as the scene path. [U] Complete outer-root composition and matching game object lifetimes/layouts are not known. |
| Component-to-Transform `315a54` | [C] Recovered wrapper, returned-pointer guard, then position retrieval; distinct Transform keys reject the former entity-as-Transform shortcut. [I] Final wrapper results remain typed owned effects. |
| Offset profile | [C] `field.player_display_name_reference.338` changes actual resolved source-field reads (`0x338` / `0x340`) and rendered labels. Transactional incompatible reload retains last good profile. [I] Host layout staging into the forensic fixed-offset worker is explicit. The other218 entries are not scene consumers. |
| Projection `36cd20` | [C] Actual depth rejection, lower-inclusive/upper-exclusive clipping and Y flip; adjacent-float, rejected scratch retention and observed NaN semantics checked. [I] Camera projection `36c3d4` and final Transform values are explicit host inputs. |
| Boxes `37b724` | [C] Eight asymmetric corner segments, original order, endpoints, color, thickness, alpha gate and captured background draw-list behavior checked. |
| Names `37bc98 -> 361bcc` | [C] Actual plain-text controller selects native size10 and eight black offset passes plus center color. Fifteen glyphs produce540 vertices/810 indices. Alpha-zero foreground retains eight black passes; name gate removes all passes. Layout rereads shared `0x248ed0`, including the cold16-to10 transition, empty-label writes and later-slot/entity/frame persistence. Restoring only the former hard-coded16 fails the regression. |
| Font / draw buffers | [C] Actual glyph lookup, raster geometry and draw-core buffers feed command clipping/texture/alpha tests. [I] ASCII atlas pixels and CPU/GDI raster backend are authored. [U] Exact original font-family/icon/language assets and native Unity GPU pixels are not established. |
| Resources and shutdown | [C] Capacity/index/nonfinite rejection, resize/minimization, repeated owned lifetimes and Wine-owned window/class shutdown checked. [U] Native Unity resource/device-loss/context teardown is not established. |
| Spoof metadata | [C] Owned static PE/unwind parsing and detection-only context reports exist. [U] No executable spoof-call executor, return-address manipulation, native register restoration or call-origin concealment is implemented or validated. All scene calls are ordinary calls. |

## Platform verdicts remain separate

- [C] **Owned controlled host:** strict GCC15, nonrecovering ASan/UBSan/leak checks,
  semantic regressions and deterministic rendering checks; exact-current records
  are in the audit, not inferred from an older run.
- [C] **Wine:** strict MinGW x64 build and owned Win32 event/GDI/client capture and
  destruction checks. This is not a Windows sanitizer or native Windows verdict.
- [U] **Native Windows:** not run.
- [U] **Inside Rust:** not integrated or run; no verified game bindings.

[U] Matching **GameAssembly.dll**, **UnityPlayer.dll**, and paired
**global-metadata.dat** remain **Needed / To do**. No fingerprints, current offsets,
original GPU behavior, native hook installation or game compatibility are invented.
Aim, automation, materials and other feature families remain deferred. Executable
call-origin concealment is outside the implementation boundary, not a completed
feature. Absence of those inputs does not excuse fixable local composition gaps.

[C] Original manifest-listed inputs remain separately hash-checked. No original
sample is run or uploaded; listed IOC addresses are not contacted, and
`~/malware-lab/analysis/` is not a work directory. Source deliverables live under
`source`; build/runtime/review evidence stays under `dump_analysis`.
