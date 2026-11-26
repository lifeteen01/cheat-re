# Current combined scene validation

The previous150-TU/selected-worker checkpoint predates the root changes and is not
the current verdict. Its documentation is retained in
`dump_analysis/semantic_reconstruction/test_scene/integration_history/`.
Current checks use151 scene translation units and the actual recovered menu/ESP
roots over owned fixtures. They do not establish equivalence to the dumped original.

The regenerated aggregate audit reports `owned_verification_passed=true` with all
source/artifact/capture/pairing gates current, and
`overall_requested_base_complete=false`. All135 original inputs verify.

## Current results

| Check | Final-source result |
|---|---|
| GCC15 strict owned host | PASS;151 TUs,217 frames,11 fresh scene captures. |
| Nonrecovering ASan/UBSan/leak checks | PASS;151 TUs,217 frames,11 fresh captures;246.588seconds under the600-second limit. The earlier180-second timeout remains a failed/incomplete attempt. |
| MinGW/Wine10 owned window | PASS;151 TUs,221 frames/paints at the deterministic-check summary;11 scene and11 actual-client captures match pixel-for-pixel. Three additional Win32 held-F1 frames follow that trace/summary checkpoint before shutdown. |
| CMake/CTest | PASS;1/1 CTest, all configure/build/test steps exit0, unchanged paired final-source snapshot. The earlier stale snapshot is not reused. |
| Full reconstructed fixture regression | Fresh strict and ASan/UBSan PASS,328 TUs each; content-verified cache reuse still linked and executed all checks with unchanged recorded inputs. |
| Evidence pairing negative controls | PASS for final strict evidence: altered event/log/build bytes, unsuccessful per-capture frame status/submission and incorrect shared lifecycle/cold-graph counts are rejected; bytes restored. |
| Native Windows / inside Rust | Unvalidated. Wine is a separate platform verdict. |

The bounded runtime limit is now600seconds (`--timeout` can override it). Starting a
verification writes a non-PASS state first. Timeouts write an explicit failed result
and check originals afterward; they cannot leave an earlier PASS as the current
verdict. The initial180-second sanitizer timeout is retained in
`integration_history/sanitizer_timeout_180/`. No sanitizer success is inferred from
that attempt. Final results and freshness must be checked with the aggregate audit.

## Evidence and reproduction

Use the commands in README.md. The aggregate is
[final_audit.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/final_audit.json).
It binds current source/dependency sets, compiler/cc1plus, object/artifact bytes,
runner/build/runtime/event/entrypoint records, captures, CMake evidence and the two
full328-TU reconstruction records. A stale dependency or capture makes it fail.

Mode records are [strict verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/strict/verification.json),
[sanitizer verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/sanitizer/verification.json)
and [Wine verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/windows/verification.json).
Each mode has a build.json, runtime.log, runtime/events.jsonl, runtime/entrypoints.json
and original_hashes_before/after.txt. CMake records are
[paired verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/cmake_verification.json)
and [CTest log](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/cmake_ctest.log).
The328-TU records are `test_scene_fidelity_regression_{strict,sanitizer}_sources.json`
in the parent semantic_reconstruction directory. Pairing negative controls are in
`test_scene/fidelity/evidence_pairing_checks.json`.

All135 manifest-listed original inputs must verify before/after execution. The
preserved virtual-layout DLL (file offset=RVA) retains SHA256
`ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`.
Only authored owned executables are run; numeric Snapshot keys are not invoked.

## Newly reached paths and retained assertions

Cold preparation calls35d5ac/35fc8b, registers and initializes all21 pages, and lets
recovered code set its initialization flags. Tooltip linkage, Snapshot-aware arrows,
page bool-vector/dependency storage, Dummy layout and sized page text-input bindings
are concrete dependencies. The real Settings initializer copies the explicit owned
100-percent config input and derives scale1. No selected-page bypass is restored.
The warm root composes native header/navbar/main/content before Favorites.

Shared preparation receives recovered IO once, precedes actual3098a4 ESP, and supplies
its mandatory windows.218818 follows routed menu state, exercising native2b/2f
violation-window flags. Actual menu contents follow ESP. Collection runs once before
export; world/menu lists use the same selected order for CPU and recorded submission.
The strict host trace records215 recovered Unity frames/hotkey calls/preparations/
submissions,217 shared prepare/finish calls (including two minimized cancellations),
430 mandatory window Begins/Ends, one21-page cold graph and216 menu-root entries
(including cold bootstrap). Closed positive frames execute the closed menu root. Minimized frames cancel capture
and avoid world/Unity submission. Tests explicitly add owned glyph probes to make
both mandatory world windows nonempty, then check actual frame export/submission
with menu hidden and alongside real menu output when open. Those probes are not
claimed as recovered status-bar geometry.

Full overlay tests retain missing window/style/simulation/history failure checks,
player/profile/projection/name output, real disabled-feature simulation cache build
and reuse, and0.5/0.5/0.8-second registry cooldown transitions. Direct ESP callers
now provide the shared backend/lifecycle. Menu tests retain Hidden popup measuring,
closing fade, reopen allocation reuse, display ordering and real editor deactivation,
while replacing obsolete five-list/no-root assertions with full cold-graph and warm
allocation/child/stack checks. Raw F1 press/hold/release/repress executes through the
actual host and persistent recovered latch; focused capture semantics remain checked.

## Captures describe owned effects

| Stage | Observed controlled output |
|---|---|
|01_menu_and_esp|3 boxes/3 nine-pass names; Aster, Birch, Cedar; popup closed.|
|02_checkbox_esp_off|Real checkbox suppresses boxes/names.|
|03_color_changes_esp|Real preview/popup/picker changes ESP color bytes with unchanged projected bounds.|
|03b_hex_paste_changes_esp|Real editor selection/paste produces red through recovered RGB parsing; alpha quirk retained.|
|04_slider_filters_esp|Real slider reduces distance to10 and removes output;200 restores distant output.|
|05_hotkey_menu_hidden|Menu hidden, ESP remains in the continuous scene.|
|06_camera_moved /07_entities_moved|Controlled positions change projection/output.|
|08_offset_reload_changes_labels|Real338-to340 source-field reads produce Alt labels.|
|09_small_clipped_scene /10_resized_scene|320x240 and1280x720 camera/clip/buffer behavior.|

Wine window captures use actual BitBlt/GetDIBits client pixels, compared against the
scene buffer; they are not substitute renderings. `runtime_evidence.html` references
these current files. Trace entries count recovered calls/caller attribution/typed
boundaries, not instruction coverage. `submitted` means the owned recording sink
accepted the exported payload; `gpu_executed` is false for every capture.

## Required work remains open

The audit separately records Windows scene PE imports, absent scene gate integration, the separately verified freestanding executor and
`overall_requested_base_complete=false`. It does not turn owned verification into a
source-fidelity percentage or a complete internal base. See REQUIREMENTS.md for local
spoofcall/no-CRT/no-import/menu/frame work and the separate matching-artifact/native
runtime requirements for live hooks, original forwarding, ESP and Unity GPU submission.

## Freestanding executor component — November25 update

A separate no-CRT/no-import executor DLL now passes strict, ASan/UBSan, Wine and
standalone CMake/CTest checks. Its126-instruction translation matches the original
executor/restoration slice, and mutation controls reject altered operands, branches
and restoration references. Source/object/artifact/log hashes and original135-input
checks are recorded separately in `freestanding_gate/<mode>/verification.json`.
See [component scope](/home/john/Desktop/cheat_re/source/freestanding/README.md).
The current scene/base still use ordinary calls and CRT/import dependencies. Full
context scanners, live unwind validation and integration remain required; a separate
component PASS does not complete the base.
