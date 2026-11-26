# FrameLifecycle follow-up: locally feasible source-semantic hookups

[I] Read-only review, 2026-11-24. **[C]** source/static-evidence observation; **[I]** interpretation/proposal; **[U]** unvalidated boundary. Findings use **High** or **Medium** priority only. This report supersedes the earlier review's description of the old scene entry path, not its historical observations. No production code changed, no builds/tests were launched alongside the active validation, no original was executed or uploaded, no network action occurred, and `~/malware-lab/analysis/` was not modified. Current validation status belongs to its running validators, not this source audit.

## Current path and changes since the earlier review

[C] [Scene::frame](/home/john/Desktop/cheat_re/source/test_scene/scene.cpp:30) now resets resources, installs actual ESP/menu callbacks, invokes [FrameLifecycle::frame](/home/john/Desktop/cheat_re/source/test_scene/frame.cpp:45), then CPU-rasterizes. FrameLifecycle calls `replay_unity_frame_2f8574`; the recovered frame controller calls `update_unity_io_3b2eec`, the content callbacks in world-before-menu order, the three finalization boundaries, draw-data export, and `submit_unity_draw_data_3b3028`. [Recovered frame](/home/john/Desktop/cheat_re/source/reconstructed/unity_backend_analysis.cpp:470). The previous reversed update order is fixed. Input now includes keys/UTF-16 characters/focus/modifiers/owned clipboard; Win32 routes them: [input](/home/john/Desktop/cheat_re/source/test_scene/scene.hpp:15), [host events](/home/john/Desktop/cheat_re/source/test_scene/host.cpp:404). The previous blanket “no hex keyboard input” finding no longer applies.

[C] Current exercised call sequence is:

```text
authored host frame
  Resources::reset
  replay_unity_frame_2f8574
    setup calls 2dd284 / 2d91c4 / 315c34       [deferred records]
    original 2f87a4                           [owned callback or deferred]
    player / three disconnect / camera gates [supplied inputs]
    update_unity_io_3b2eec                    [actual controller]
    397da4                                   [deferred NewFrame]
    35aad8                                   [deferred BackBuffer begin]
    3098a4 -> EspScene::frame -> 30ea17        [selected-player boundary]
    2fb72c / 36f788 / 35cb18 / 307638          [deferred world/raid/end/inventory]
    35d5ac -> InternalMenu::frame             [selected Favorites composition]
    390994 / 390cec / 398d84                  [deferred finalization]
    3924bc                                   [owned map export + host labels]
    3b3028 -> 3b4250 -> 3b1a94 -> 3b2004      [actual controllers, recording leaves]
  Resources::rasterize                        [authored display backend]
```

[C] The corresponding original sites are `2f8b93 -> 3b2eec`, `2f8b98 -> 397da4`, `2f8d33 -> 35aad8`, `2f8d40 -> 3098a4`, `2f8d4d -> 2fb72c`, `2f8d5f -> 35cb18`, `2f8d79 -> 35d5ac`, then `2f8d7e/83/88/8d/95 -> 390994/390cec/398d84/3924bc/3b3028`: [original excerpt](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/2f8574.asm). Recording a deferred boundary is not execution of its local body. `submitted` means the owned recording sink accepted the final command; `gpu_executed` remains false. [Adapter evidence](/home/john/Desktop/cheat_re/source/test_scene/frame_evidence.md).

## High — H1: close copied Client installer → saved-original provenance

[C] [FrameLifecycle construction](/home/john/Desktop/cheat_re/source/test_scene/frame.cpp:30) hard-codes `saved_original=0x970000` and prewarms `original={3,0x970000,true}`. No copied installer output feeds it. The actual Client initializer already exists:

```text
initialize_client_362118
  module_handle("GameAssembly.dll") -> module+3d6f00
  bootstrap_signatures_334bf4
  directory="C:\Spotify", configuration="DefaultCfg.bin"
  Client/LateUpdate class+method resolution
  install_method_info_copy (2ea90c), record at module+3e6950
```

[C] Exact sources: [initializer](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_analysis.cpp:235), [installer routing](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_analysis.cpp:101), [Client definition](/home/john/Desktop/cheat_re/source/reconstructed/01_hooks.cpp:14), [copied installer](/home/john/Desktop/cheat_re/source/reconstructed/01_hooks.cpp:26). The installer saves the previous MethodInfo qword, replaces only owned Snapshot bytes with a numeric `module+2f8574` key, and sets kind 1. Record load/flush uses offsets original `+0`, method `+8`, replaced cell `+0x10`, detour `+0x28`, kind `+0x30`, preserving opaque bytes: [record access](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_analysis.cpp:91).

[C] Original frame code reads that record through `2ce5d8` at `2f8757`, caches the original at `3f1718`, then separately prepares context at `2f878e` before `2f87a4`: [original acquisition](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/02_rendering/2f8574.asm:94). These are three distinct facts: copied install, saved-target acquisition, and an excluded executable context.

[I] **Feasible local work:** add an isolated owned bootstrap composition using the existing initializer and a small fixture metadata database. Use at least one assembly/class/method in the eager signature traversal; the existing Client test uses an empty assembly list for that bootstrap, so it does not join the full chain: [current tests](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_checks.cpp:109). Feed the copied record's original value into an explicit saved-target input for the frame fixture. If an owned original callback is dispatched, look up that numeric key in an owned callback registry and preserve its client argument; do not cast it to a function pointer. Current `FrameCallbacks::original` receives only `Input`, so the target/client provenance is otherwise unobservable: [callback contract](/home/john/Desktop/cheat_re/source/test_scene/frame.hpp:19).

[I] **Focused regression:** assert initializer base-write → signature-cache result → string assignments → one installation at `3621f2`; actual old/new MethodInfo qwords and all named record fields; second installer invocation preserves the first saved original; missing class/method and truncated copied record fail honestly. Include a zero-original case: `install_method_info_copy` accepts a zero old qword, but the frame must subsequently report `unresolved_target` at `2f87a4`. Do not equate `HookSetupResult.status==complete` with successful install: ordinary installer false is an independent outcome.

[U] A cold frame still reaches the separate `2cbd24` dependency. Keep that as an explicit stop or separately declared detection-only observation. Copied installation does not justify setting “native context succeeded.” The existing warmed recording scenario may remain separately labeled; it cannot be evidence that cold context preparation ran.

## High — H2: connect recovered IO output to the owned UI state

[C] `update_unity_io_3b2eec` runs and stores `backend.io`, but [callback routing](/home/john/Desktop/cheat_re/source/test_scene/frame.cpp:182) copies the original `Input` and changes only `menu_open`. Menu frame independently writes mouse/delta/key state from that raw Input and clamps delta to `0.05`: [menu staging](/home/john/Desktop/cheat_re/source/test_scene/menu.cpp:582). Thus the IO controller is measured alongside the visible menu, not the sole source of its mouse/display/delta fields. For example, frame checks supply delta `0.125` and verify that value in `FrameReport.io`; the menu uses `0.05` for its own timing. [Frame test](/home/john/Desktop/cheat_re/source/test_scene/frame_checks.cpp:22).

[C] Scroll has an additional concrete local implementation available. FrameLifecycle currently writes a zero vector and merely records `38cd28`: [input staging](/home/john/Desktop/cheat_re/source/test_scene/frame.cpp:74), [IO boundary](/home/john/Desktop/cheat_re/source/test_scene/frame.cpp:108). `imgui_text_input_scroll_38cd28` and `bind_imgui_text_input_frame` already implement the real owned 28-byte input-event append, enable gate, event-ID increment, signed-zero/NaN rules and allocation failure semantics: [event controller](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_events.cpp:3), [binder](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_bindings.cpp:3). The current numeric `native_io=0x910000` is not a mapped menu Snapshot IO object, so this requires an explicit shared/translated owned address binding, not blindly layering the binder.

[I] **Feasible local work:** expose a UI input-preparation boundary after actual IO update and before content, passing the resulting `UnityIo` into the existing menu-owned snapshot state. Preserve keys/characters as separately identified host data because the recovered IO routine does not produce them. Move the current menu frame bookkeeping to that boundary so hidden/splash frames do not silently stop its ownership/duration maintenance. Add a bounded wheel field and route actual `38cd28` to the existing owned queue; call this event enqueue fidelity, not full wheel-consumption fidelity until the consumer is implemented. Make any menu delta clamp an explicit host adaptation rather than an apparent recovered value.

[I] **Focused regression:** supply differing camera pixelRect versus screen height and assert the recovered Y flip uses screen height; verify the UI observes the resulting mouse/display/delta values before its Begin/control calls. Inject nonzero wheel into the real queue and assert type/source/ID/payload/order, zero suppression, disabled IO and allocation failure. Assert focus loss, release while hidden, minimization cleanup and next-frame menu edits remain correct. Do not replace recovered edit semantics with upstream ImGui assumptions.

## Medium — M1: use the existing hotkey edge helper instead of absolute-state comparison

[C] The root calls `2e89e4(0x3ef7d8,false)`. The adapter returns `input.menu_open != frame.menu_open`: [toggle boundary](/home/john/Desktop/cheat_re/source/test_scene/frame.cpp:215). The actual local helper `frame_key_edge_2e89e4` reads capture state, a per-key latch and supplied key-down state; release clears the latch: [helper](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_analysis.cpp:372). Win32's F1 bit-30 repeat suppression is host policy, not execution of this helper.

[I] **Feasible local work:** route just this domain role through the existing helper with a real owned `FrameHotkey` record and explicit F1-down input. Keep `set menu visible` as a separately named host command if still needed. Do not substitute `pressed` for `down`, which would bypass latch behavior. Avoid installing the entire dependency binder unless its other claimed roles are truly supplied.

[I] **Focused regression:** false/true/true/false/true key-down sequence produces no edge/edge/no edge/no edge/edge; capture suppresses only when requested; test the root's actual `respect_capture=false`. Compare native-helper state changes, not merely final menu visibility. Existing [helper tests](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_checks.cpp:63) can supply the independent oracle.

## Medium — M2: close setup data controllers selectively; do not make fourteen unrelated installers succeed

[C] `315c34`, `2dd284` and `2d91c4` currently return acknowledged deferred monostates, allowing the root's once-only `initialized` latch to be set: [adapter](/home/john/Desktop/cheat_re/source/test_scene/frame.cpp:189), [root latch](/home/john/Desktop/cheat_re/source/reconstructed/unity_backend_analysis.cpp:474). This is documented recording behavior, not evidence those setup bodies ran.

[C] `initialize_hooks_315c34` is already a concrete container constructor + exact `0xea5e`-byte parser + **fourteen** installer attempts excluding Client: [setup](/home/john/Desktop/cheat_re/source/reconstructed/hook_setup_analysis.cpp:213). It allocates three zero qwords through an owned reserve effect. Missing metadata stops explicitly; ordinary installer false allows later attempts. It should not be replaced by a Client-only routine under the same RVA or wired into selected-scene success with universal absent-class results.

[I] **Feasible local work:** test its owned constructor/parser prefix and exact first unavailable metadata boundary, preserving prior writes and duplicates, without adding unrelated feature execution. Keep it deferred in the visible selected scene until that whole setup contract is supplied. Separately, configuration initialization `initialize_frame_configuration_2dd284` and `refresh_frame_configs_2d91c4` can run on a small **in-memory** file/registry fixture: [complete head+tail initializer](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_configuration.cpp:258), [refresh](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_analysis.cpp:336). Do not call only `initialize_frame_settings_2dd284_head` and claim complete setup. Do not open the recovered `C:\Spotify` path; its string is evidence, not a request for host filesystem effects.

[I] **Focused regression:** parser exact extent, CR/final-line rules and owned allocation failure; then first missing class resolver with prefix state retained. Configuration fixtures should register only explicitly owned settings, assert actual loaded values and sorted/filtered filenames, and distinguish absent callbacks from a legitimately missing file. Preserve the first failing dependency RVA when converting helper results into frame results. Gate successful frame initialization on completed local roles, or keep a clearly separate recording-only mode; accepting a trace record must not silently become completed source work.

## High — H3: close window/finalization ownership before forwarding End calls

[C] `35aad8`/`35cb18` are deferred while the menu owns and balances its own native Begin/End. It resets current-window state before Begin and checks an empty stack afterward: [menu lifecycle](/home/john/Desktop/cheat_re/source/test_scene/menu.cpp:545), [balanced End](/home/john/Desktop/cheat_re/source/test_scene/menu.cpp:653). The root's additional `390994` is recorded after that. Forwarding this call directly to `imgui_window_end_390994` would read an absent current window or underflow stack state; actual End consumes window/focus/clip stacks: [End implementation](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_end.cpp:65).

[C] Local backbuffer controllers already exist. `begin_frame_backbuffer_35aad8` pushes color, stages position/size and begins `BackBuffer`; end reads current-window `+0x298`, calls `3a7360`, End, and color pop: [begin/end](/home/john/Desktop/cheat_re/source/reconstructed/frame_dependencies_analysis.cpp:425). Window staging/Begin/End has the concrete [frame binder](/home/john/Desktop/cheat_re/source/reconstructed/imgui_windows_bindings.cpp:18). However `397da4`, `390cec`, `398d84` and original `3924bc` are not implemented merely by binding these window routines. The extra root End must have its actual matching implicit/new-frame window, not an arbitrary dummy Begin.

[I] **Feasible local work:** move common window/context frame preparation outside menu rendering; then compose the two backbuffer controllers with the existing window/style primitives and an audited bounded `3a7360` clip-pop leaf. Preserve the real active-window stack across the ESP/menu phases rather than zeroing it mid-frame. Treat the complete NewFrame/EndFrame/Render/draw-data collection bodies as a separate source translation task using retained bytes; until that work exists, leave those specific boundaries explicitly deferred or stop at them. Do not label the current numeric-map export as the recovered ImGui draw-data collector.

[I] **Focused regression:** actual BackBuffer position/size flags, active-window identity at ESP entry, matching clip/color/focus stack deltas at `35cb18`, menu child/popup state restoration, and no second End against the balanced menu. Compare ordered exported list IDs/geometry with the actual window collector once ported; map-key ordering is only the current owned rendering policy. Add failure-prefix tests for missing copied `+0x298` and missing pop primitive, with no later menu/finalization claimed complete. Preserve the existing minimized capture-cancellation adaptation.

## Medium — M3: strengthen the existing recording submission tests without adding GPU leaves

[C] Unlike the deferred finalization bodies, upload/command/submit controllers really run. They clear commands unconditionally, test mesh readiness, resize before zero-vertex gating, concatenate actual lists, retain submesh ordinals for clipped commands, and execute the recording sink last: [submission](/home/john/Desktop/cheat_re/source/reconstructed/unity_backend_analysis.cpp:305), [upload/record](/home/john/Desktop/cheat_re/source/reconstructed/unity_backend_analysis.cpp:244). Current [frame checks](/home/john/Desktop/cheat_re/source/test_scene/frame_checks.cpp:49) check broad order, one four-vertex payload, resize, refusal and unsupported callback rejection.

[I] **Feasible local work:** retain typed recording sinks and add focused two-list/multi-command assertions: cumulative vertex/index destinations, strides `20/2`, flags `15`, submesh descriptors, texture/scissor arguments and order, command-count store-before-setter failure, empty geometry clear-without-upload, and a failure before final execute leaving `submitted=false`. A configurable owned mesh-native copied field can test readiness/retry branches up to the first genuinely unsupported resource-creation leaf. Do not return invented shader/asset/object success to complete that branch.

[I] **Focused regression:** reject one upload or command boundary and assert no subsequent execute record; inspect actual recorded payloads against independently constructed expected buffers. Check current snapshot/geometry identity remains stable across unchanged frames and resize. Existing lower-level [backend fixtures](/home/john/Desktop/cheat_re/source/reconstructed/unity_backend_checks.cpp) already cover several cases, so add composition assertions rather than duplicating all unit tests.

## Recommended next slice

[I] Start with H1's copied Client installation/provenance fixture and H2's concrete IO/event-queue handoff; both have existing local controllers and sharply bounded ownership. M1 is a small source-faithful input improvement. H3 needs ownership preparation before forwarding more callbacks. Configuration can stay an independent owned fixture until its resulting settings are consumed by the selected scene. Full fourteen-hook activation, unrelated gameplay workers, cold native resources, full menu/world roots, native original invocation and spoof execution are not prerequisites for these local improvements.

[U] Missing GameAssembly/UnityPlayer/metadata, native ABI, original GPU pixels and live execution remain unresolved. No aggregate accuracy estimate is justified. A local improvement counts only when its real reconstructed body executes, its owned output is consumed, and a regression can fail when that specific hookup is removed.
