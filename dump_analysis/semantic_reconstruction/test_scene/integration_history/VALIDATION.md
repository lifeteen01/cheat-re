# Executed scene validation

[C] Recorded November 24, 2026. Scope is owned controlled data and authored host
code, never the supplied sample or a running game. The verification scripts record
compiler/cc1plus hashes, complete per-TU dependency hashes, object reuse validation,
executable hashes and unchanged build inputs. Reuse does not skip linking or tests.

[C] Runtime verification also binds the event log, entrypoint file, runtime log,
build record and verifier hashes. Capture events record the actual frame result
status, stop site and submitted flag. The audit requires complete recorded
submission for every positive capture, not just one global submission counter.
`exported_lists` means the pre-submission selection and is compared with CPU
presentation order; export/finalization alone is not submission. The retained
`fidelity/evidence_pairing_checks.json` records negative controls for altered
event/log/build bytes and unsuccessful per-frame results, with evidence restored.

## Evidence index

- [C] [Reproducible aggregate audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/final_audit.json): current code/artifact/capture hashes, actual ESP changes, platform scope, original-input integrity, CTest and full regressions. Regenerate with `python3 source/test_scene/audit.py`; stale dependencies make it fail, not silently reuse an old PASS.

- [C] [Owned strict](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/strict/verification.json), [runtime log](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/strict/runtime.log), [events](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/strict/runtime/events.jsonl), [entrypoints](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/strict/runtime/entrypoints.json).
- [C] [Owned ASan/UBSan](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/sanitizer/verification.json), [runtime log](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/sanitizer/runtime.log). Includes `-fsanitize=address,undefined`, `-fno-sanitize-recover=all`, frame pointers, library assertions and leak detection. No reported sanitizer error.
- [C] [Wine10 Windows x64](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/windows/verification.json), [runtime log](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/windows/runtime.log), [events](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/windows/runtime/events.jsonl), [entrypoints](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/windows/runtime/entrypoints.json).
- [C] [CMake build](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/cmake_build.log), [CTest](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/cmake_ctest.log) and [paired verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/cmake_verification.json). `verify_cmake.py` records snapshot, runner, logs and artifact hashes; the audit checks their pairing.
- [C] [Full328-TU strict regression](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene_fidelity_regression_strict_sources.json), [full328-TU sanitizer regression](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene_fidelity_regression_sanitizer_sources.json). Includes new Component-to-Transform and PE/unwind edge checks; both pass with unchanged captured inputs.
- [C] Every final runtime mode contains `original_hashes_before.txt` and `original_hashes_after.txt`: **135/135 original manifest entries pass**.

## Current platform results

| Environment | Recorded result |
|---|---|
| Owned Linux strict | [C]150 TUs;208 scene frames; PASS. |
| Owned Linux ASan/UBSan | [C]150 TUs;208 scene frames; nonrecovering sanitizer/leak checks PASS. |
| Wine Windows x64 | [C]150 TUs;212 scene frames/212 platform paints;11 scene/window capture pairs match pixel-for-pixel. |
| Owned CMake/CTest | [C]1/1 test PASS against the current source snapshot. |
| Full reconstructed fixture suite | [C]328 TUs; strict and ASan/UBSan PASS with unchanged recorded inputs. |
| Native Windows | [U]Not run; Wine results are not native Windows validation. |
| Inside Rust | [U]Not integrated or run; matching game artifacts remain Needed / To do. |

## Observed changes, not menu-only state

| Captured stage | Actual ESP result |
|---|---|
| `01_menu_and_esp` | [C]3 boxes/3 names; Aster, Birch, Cedar; distance80. Native color preview visible; popup closed by default. |
| `02_checkbox_esp_off` | [C] Real checkbox input disables ESP:0 boxes/0 names. |
| `03_color_changes_esp` | [C] Actual preview click opens the native animated popup. Recovered hue/SV input changes the color and ESP vertex bytes, while retaining3 boxes/3 names and identical projected bounds. |
| `03b_hex_paste_changes_esp` | [C] Actual editor selection/paste inserts owned `FF000000`; original picker RGB parsing changes ESP to red with identical projected bounds. Native alpha parsing quirk is retained. |
| `04_slider_filters_esp` | [C] Native outside-click/fade closes the popup. Recovered slider input reduces distance to10:0 boxes/0 names. Increasing it to200 restores4 boxes/4 names, including the distant fixture. |
| `05_hotkey_menu_hidden` | [C] Menu absent; ESP remains drawn in the continuous scene. |
| `06_camera_moved`, `07_entities_moved` | [C] Camera/entity input changes bounds or resulting ESP pixels. |
| `08_offset_reload_changes_labels` | [C] Loaded`0x340` source pointers produce Alt names; selected entities and their actual labels are recorded. |
| `09_small_clipped_scene`, `10_resized_scene` | [C]320×240 and1280×720 frames use the resized camera/clip/draw buffers. |

[C] Each mode has11 scene PNGs. Wine additionally has11 `*_window.png` images:
these come from **BitBlt/GetDIBits of the actual client window**, and every RGB
pixel is asserted equal to the reconstructed scene’s presented buffer. They are
not substituted renderings or just a photograph of the external settings panel.
The matching PPM sources, image hashes and per-stage geometry/frame hashes remain
in the same runtime evidence directories.

[C] Tests also independently check Birch’s expected camera-centered projection and
height, FOV-dependent width, behind-camera/side rejection, box/name gates, valid
reload, unsupported slot/kind/missing-key/schema/syntax/IO rejection with last-good
retention, minimization/recovery, held-slider hide/resize capture cancellation and
repeated resource/scene destruction. `resource_checks.cpp` checks actual glyph
geometry, font snapshot measurement, command clipping, alpha, top-left shared-edge
coverage, invalid indices, NaN vertices/clips, unsafe dimensions and safe failure.

[C] `semantic_checks.cpp` asserts original next-frame world-before-menu timing,
asymmetric eight-segment corner geometry, adjacent-float/depth/bounds/Y-flip
projection behavior, editor drag/focus cancellation, and the actual name controller's
size10 and nine passes:15 glyphs produce540 vertices/810 indices, including480 black
outline vertices. Alpha-zero foreground still emits eight black passes, matching
the recovered quirk. The earlier single-pass name adapter failed the retained
[negative control](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/fidelity/name_negative_control/runtime.log)
before being replaced with the real `361bcc` binding.

[C] `frame_checks.cpp` checks recovered frame ordering, setup once/retry, three
distinct disconnected getters, player/camera gates, menu routing, IO, splash,
geometry export/upload, resize/minimization, unsupported callbacks and refused
recording sinks. `menu_lifecycle_checks.cpp` checks actual Favorites thunk/body,
retained native children and balanced focus/style/group/window/clip stacks.
Its follow-up also checks cold Hidden measuring frames, visible-next-frame output,
closing fade, reopen reuse, display order independent of numeric addresses,
native hover exclusions, child sorting, hidden-frame history, real focus-loss
deactivation and unchanged `.125` delta at the menu's copied IO consumer.
`esp_root_checks.cpp` checks the real outer overlay stops at mandatory missing
window/simulation/history boundaries; it does not fake full-root completion.

[C] Minimized frames still enter menu capture cleanup before the zero-size render
return. The held-slider test restores the exact same viewport size while the
pointer moves outside. An isolated authored negative-control build reverting only
that call order fails at the capture assertion, while strict/sanitizer/Wine builds
pass: [negative-control evidence](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/minimize_negative_control.json).

[C] The Wine run enters a real Win32 timer/message loop before deterministic
controls, injects controlled Win32 mouse/F1/F5/key/character messages, checks F1 repeat suppression,
captures GDI pixels, exits through Escape, and unregisters its window class.
[I] These are controlled-host event tests, not proof of physical input devices,
native Windows drivers or an injected Unity renderer.

## Reached reconstructed entrypoints

[C] Runtime `entrypoints.json` records explicit calls/callback entries for:

- `frame_menu_page_388b4c`, group`38ec90/390efc`, `menu_controls_apply`, real checkbox`3bd114`/button behavior`3bc7e0`, slider`3c43f4/3c4478`.
- Original Favorites `3354b4 -> 35013c`, root Begin/End`38cfa4/390994`, child Begin/End`38e97c/390a88`, retained native child creation`3908d4` and balanced-stack checks.
- `menu_color_picker_379680`, SV`37afd4`, hue`37a0b8`, alpha`378f1c`, `replay_imgui_text_input_3c0538`.
- `replay_world_player_overlay_30ea17`, `game_runtime_wrapper:315a54`, `entity_valid_2e0e9c`, `bone_position_368be8`, orientation helper`36920c`, `project_screen_36cd20`, `renderer_background_392198`, `renderer_measure_3a3874`.
- Actual `font_text_plain_361bcc`, glyph/atlas/lookup initialization, `font_text_draw_3a31f8`, raster`3a792c`, draw-core reserve/write/unreserve/reset/clip/texture entrypoints.
- Actual `replay_unity_frame_2f8574`, plus explicitly named `FrameLifecycle::finalized_owned_data` and `FrameLifecycle::recorded_submission` counters. Typed frame effects and their deferred/recording/supplied-input classifications are in `FrameReport`; these are not native GPU calls.

[I] Box`37b724` and label`37bc98` counters are attributed from uniquely sourced
recovered output commands, not additional invocations; empty label slots can
produce controller commands without drawing a nonempty name. The font raster
counter is reservation-attributed. Known atlas subroutine entries are recorded
at finalization. Counts must not be treated as instruction-level coverage.
Uninstrumented transitive routines are described in per-module evidence, not
invented as independently measured counters.

[C] Copied Client bootstrap provenance is recorded separately in `FrameReport` and
the stage events: nonempty signature-cache traversal, saved original, numeric detour
and copied MethodInfo result. The frame consumes that saved original. These are
owned data-flow checks, not invented transitive entry counters or native dispatch.
Events also compare exported and presented list order and the menu snapshot's
mouse/delta with actual recovered IO output. Native context preparation, GPU calls
and wheel consumption remain explicit boundaries.

[I] Favorites/page trace entries are caller-attributed around actual recovered
dispatch, not an independent instruction probe. The actual full menu root and outer
overlay execute only in isolated closed/negative-boundary checks, not as the scene's
complete original content path. Frame wrapper execution does not erase those limits.

[I] `host_camera:*`, transform/orientation results, profile-pointer staging and
`host_triangle_rasterizer` are explicitly **authored host boundary** trace entries.
They are not recovered Unity camera/native GPU implementations. `36c3d4` is only a
typed camera effect here. No live module/address or spoof executor is called.

## Integration corrections and limits

[C] First integration exposed exponential path-capacity growth during the real
rounded checkbox/slider geometry. `draw_shapes_paths.cpp` had unconditionally
applied geometric growth to both arc reserve paths. Native`3a917b -> 37a758`
reserves the exact requested capacity; `3a8fa9 -> 37ad34` grows only after the
capacity test at`37ad43/37ad46`. The implementations now preserve these behaviors.
The new128-iteration regression checks sufficient capacity and allocation remain
unchanged; both full strict/sanitizer regression suites pass.

[C] The page’s editor/window API also needed a real owned `reserve_storage` binding.
Menu errors now retain stage names and primitive diagnostics. A structured-binding
reference removes a strict MinGW warning in the actual main-menu dependency without
changing its semantics.

[C] This fidelity pass corrected a previously skipped Component.get_transform
lookup/guard, the substituted one-pass name renderer, reversed menu/world ordering,
and missing editor key/mouse/clipboard routing. Native Favorites child composition
also exposed a missing seeded hash dependency; the binding now calls the actual
`menu_controls_hash_39334c`, not a fabricated identifier.

[C] The follow-up found and corrected label placement's former hard-coded16:
the original helper reads shared `0x248ed0`, and actual `361bcc` writes10 even for
empty text. Cold/warm placement, nondefault inputs and subsequent slots/entities/
frames are checked. Restoring only the former literal16 in a retained working
copy fails the new regression. Captured baseline/color comparisons begin after
the cold state transition; this avoids attributing that transition to picker input.

[I] An initial unnecessarily broad cross-build encountered pre-existing strict
range-loop-copy warnings in unrelated `movement_main_analysis.cpp`; that module is
not modified. The scene uses the explicit138-reconstruction-TU closure plus12 scene
TUs (150 total) in the build records. Some outer-overlay TUs are present for honest
negative-boundary checks, not active extra features. Compiling/linking a shared unit does not
claim its unrelated features execute. No whole-library Windows port is claimed.

[U] Native Windows: **not run**. Inside Rust: **not integrated or run**. Matching
GameAssembly.dll, UnityPlayer.dll and paired global-metadata.dat remain **Needed /
To do**. Existing historical offsets, owned layouts, fonts and tests cannot establish
current-game compatibility. No spoof-call executor is implemented or validated.

[U] **95% original-source fidelity is not established.** Full21-page menu root,
exact original fonts/assets, cold frame/backend bootstrap, complete
outer-overlay composition, native original-call ABI and Unity GPU execution remain
separate unresolved boundaries. See `SEMANTIC_FIDELITY.md` and per-module evidence;
the aggregate audit deliberately records no invented percentage.
