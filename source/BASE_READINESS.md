# Minimum Windows x64 base: readiness and next dependencies

Current requirement update: the historical legacy-goal blocked/scope statements below
are not a closure of the current task. Executable spoofcall, no CRT/imports and
remaining local menu/frame work are still required implementation, independently of
the missing game files. See [current requirements](/home/john/Desktop/cheat_re/source/test_scene/REQUIREMENTS.md)
and [fresh scene validation](/home/john/Desktop/cheat_re/source/test_scene/VALIDATION.md).

[I] The latest menu/one-file offset objective is implemented and validated within the owned-host scope; see [the goal record](/home/john/Desktop/cheat_re/source/MENU_OFFSETS_GOAL.md). The broader minimum in-game DLL base remains a separate unfinished objective. The three implementation waves active when priorities changed have finished, frozen, integrated and stopped. Optional reconstruction remains an explicit backlog; it does not delay platform bring-up. [C] Machine-readable state: [readiness.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/readiness.json).

[U] **Legacy game-reconstruction goal status: blocked, not complete.** The same unavailable matching-artifact condition persisted through the DLL implementation turn, Wine-validation turn and current minimum-path audit. The separate native-menu and profile-configuration work is now implemented; actual game ABI/binding work still requires matching artifacts. The [blocker audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/blocker_audit.json) records the missing requirements and alternatives considered. Matching game artifacts and an authorized native Windows/game environment remain external requirements; optional reconstruction stays on backlog.

| Milestone | Evidence / limit |
| --- | --- |
| [C] **DLL compiles and links** | Achieved for the new Windows x64 platform DLL. Both [direct MinGW build](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/build/verification.json) and [CMake/Ninja target](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/cmake_verification.json) pass. PE inspection confirms 13 exports and Windows system imports without unpackaged compiler-runtime DLLs. |
| [C] **DLL initializes in the owned Wine host** | Observed under Wine10/Xvfb: DLL load, initialization, hook/original forwarding, controlled input, actual screen pixels, restoration, reinitialization, target destruction and unload all pass in a fresh isolated prefix. [U] Native Windows execution remains unvalidated. [Evidence](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/wine_runtime/verification.json). |
| [U] **Base functions in-game** | Not established. Actual game/Unity adapters, the verified game hook, Unity resource submission and authorized in-game observations remain required. The GDI owned-window path is platform code, not proof of Unity or in-game operation. |

## Implemented and verified within recorded scope

[C] The final combined checkpoint links **328 translation units** and captures **455 source/dependency inputs**. GCC15 C++20/Werror and nonrecovering ASan/UBSan pass with identical unchanged source hashes: [strict](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_offsets_integrated_sources.json), [sanitizer](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_offsets_sanitizer_sources.json). All **135 supplied input hashes** pass: [integrity log](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/input_verification_menu_offsets.txt). These counts describe this build, not overall reconstruction completeness.

[C] All final releases are in the offline library, umbrella header and check runner: input/physics (18 deliverables), local literals (7) and frame/world controllers (11). Their released hashes match at integration: [release check](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/release_integration.json). Earlier font/window/editor/runtime/direct modules remain integrated. Their individual ledgers retain exact algorithm, owned-container, alias and ABI limits.

[C] The new [Windows DLL source](/home/john/Desktop/cheat_re/source/windows_base/base_dll.cpp) has a [versioned C ABI](/home/john/Desktop/cheat_re/source/windows_base/base_api.h), explicit owner-thread initialization/shutdown, real Windows module-presence queries, a Comctl32 window subclass, original-chain forwarding, removal before cleanup, callback-depth checks, target-destruction handling and error statuses. DllMain performs no lifecycle work. The DLL links recovered draw-core producers and a bounded opaque CPU/GDI sink, native General/Offsets/About menu and versioned JSON profile APIs. The219 named profile contexts are read from one external file; supported getters/resolvers consume loaded values and menu edits persist through Save/Reload. The portable input→geometry→pixels path passes [strict and sanitizer checks](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/native_checks/verification.json).

[C] The authored Windows host and DLL also pass a [Wine10/Xvfb compatibility-runtime test](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/wine_runtime/verification.json). The runner checks their recorded build hashes, creates its own prefix and display, and stops that test environment afterward. Packages are SHA256-verified against the configured Ubuntu archive and extracted locally; no system installation was made. [U] This is not native Windows validation, matching-build verification or in-game evidence. No supplied sample code or game process was executed.

## Implemented but awaiting integration or verification

[C] The [Windows host harness](/home/john/Desktop/cheat_re/source/windows_base/windows_host_checks.cpp) passes under Wine with a fresh isolated prefix. It creates its own window and checks DLL load, version/error handling, hook install, original return forwarding, refusal to shut down during a callback, thread affinity, screen pixels driven by controlled Win32 input messages, restoration, reinitialization, target destruction and unload. [U] The same test still awaits native Windows x64 execution. [I] Commands and lifetime rules are in the [platform README](/home/john/Desktop/cheat_re/source/windows_base/README.md).

[U] Released optional domain modules compile and pass fixtures but still need specific composition or runtime inputs. Examples: MovementMain raw helper calls need explicit contexts **3f7410/3f7510** (their first Address is target code), seven private Sky material/type wrapper bindings, actual hit-storage mapping, shared classifier records, native settings iteration order and real file/allocation effects. These remain feature backlog and are listed in the release ledgers; they are not successful live integrations.

## Missing implementations and runtime bindings

[I] [minimum_path_callbacks.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/minimum_path_callbacks.json) inventories **476 direct public callback fields**, retains **29 alias/parameter declarations** for explicit review, and lists **76 operation tags** reached by the bounded existing Unity-backend initialization/resource/resize/upload/record/execute/input path and its helper branches. This is a source inventory, not a claim that every operation is mandatory for every possible minimal renderer. The [77-entry full Unity catalog](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/runtime_callback_inventory.json) is a separate superset. The native menu/profile callbacks are implemented and tested; no real game callback is bound in the current DLL; recovered local binders and fixture-return values do not change that fact.

| Dependency | Required work / priority |
| --- | --- |
| [U] IL2CPP discovery/invocation | Bind actual domain/assemblies/image/class/method/parameter queries, managed strings, allocation, arrays and exception/return handling against the matching build. Snapshot numeric keys must never be treated as callable pointers. |
| [U] Unity operation leaves | Implement actual resource creation, pinning, texture transfer, mesh upload, command recording/submission, resize and input reads listed by operation and stage in the callback inventory. IO/font/event local bodies already exist; their runtime storage bridge is still needed. |
| [U] Game hook | The recovered controller names **Client.LateUpdate**. Its actual target, signature, hidden arguments, owning thread and original ABI remain unverified. Implement its resolution, installation, original forwarding, restoration, in-flight handling and cleanup after evidence is available. The working source of the owned-window subclass supplies a platform lifecycle, not a game detour. |
| [U] Resource rollback/shutdown | Match pin/unpin, managed/native resource lifetime and destruction for every created resource. Successful frame fixtures do not establish live cleanup. |
| [U] Frame bridge | Drive one minimal input→owned geometry→real Unity submission path with optional feature queues disabled. Validate it before enabling world/aim/automation/material/config features. |
| [U] Runtime evidence | The owned-host test passes under Wine. Run it on native Windows, then record actual game initialization, hook/original behavior, rendered output/input and restoration in an authorized environment after matching adapters exist. |

[I] Context/spoof execution remains detection-only. The current analysis cache exposes that detection boundary; a live ordinary-ABI adapter must be a distinct, evidence-based implementation. A callback that simply returns true to bypass it is not acceptable.

## Needed / To do: matching game artifacts

- [U] **GameAssembly.dll — Needed / To do.** Exact running game build, Windows x64 PE; record size, SHA256, version/build identity and exports. Required for native method code, actual ABI, object/array/MethodInfo layouts and hook targets.
- [U] **UnityPlayer.dll — Needed / To do.** Same game installation/build; record size, SHA256 and Unity version. Required for compatible rendering/input/resource interfaces and native engine behavior.
- [U] **global-metadata.dat — Needed / To do.** Paired with that GameAssembly.dll; record SHA256/version and verify correspondence. Required for class/method/type identities, parameters and layout evidence. An unrelated version cannot close these requirements.

[C] The user confirmed none are downloaded locally yet. No further directory search or path request is pending. [U] Matching artifacts and an authorized Windows/game environment are external requirements. This work has not downloaded game files, run the sample, contacted IOCs or used an executable spoof context.

## Explicit optional backlog

[I] Aim/automation/ESP/world features, the remaining optional material/type wrapper compositions, item/grade actions, generic container/heap/CRT formatting branches, exhaustive native alias/ABI recovery and broader semantic reviews remain backlog. The new input wave has 34 exact generic-library frontier ranges; frame/world retains the selected-config normalization callback caveat; older Sky generic export aliases have a known dispatcher/staging review gap. Their exact existing ledgers remain authoritative. Deprioritization does not convert those gaps into completed implementations.

[I] The next blocking sequence is: **native Windows owned-host test / obtain and verify matching artifacts → minimum ordinary-ABI adapters → actual game hook and cleanup → one observed in-game frame/render/input path**. Compilation and Wine-owned-host initialization have evidence; native Windows initialization and in-game milestones remain open.
