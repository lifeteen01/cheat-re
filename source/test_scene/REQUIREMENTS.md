# Requested Rust internal base: open requirements

This ledger retains the user's overall requirements. Historical scope exclusions,
owned-host PASS results and missing game files do not close local implementation
gaps. No source-fidelity percentage or original-runtime equivalence is established.

| Requirement | Current implementation and exact remaining work |
|---|---|
| Menu root and cold startup | Actual `35d5ac/35fc8b`, 21 registered page initializations, native root/header/navbar/main/content and Favorites controls execute. No root/page initialization flags are seeded. Category/subtab names/icons, font buckets, palette, random generator, configuration and Favorites requests are owned inputs. Interactive non-Favorites page selection is still refused. Full category/subtab/search behavior, original font/assets/setup and scale-rebuild handling remain open. |
| Working ESP | Actual `3098a4` composes mandatory windows, player worker, disabled-feature simulation/cache and registry time/cooldown. Real reconstructed projection/box/name consumers produce owned geometry. Native entity collection, object lifetimes, camera/Transform bindings, nonempty registry/history/other world branches and live game behavior remain open. |
| Shared frame lifecycle and hotkey | Recovered frame controller receives persistent raw F1 levels. Shared window preparation precedes ESP; menu follows ESP; list collection precedes export. Native NewFrame/finalizer, wheel event consumer and input/platform branches outside the owned adaptation remain open. |
| Rendering for the new Rust pipeline | Reconstructed Unity resource/upload/command/submission controllers exist. Their scene leaves record typed arguments and payloads; CPU/GDI presents the owned scene. Real Unity resource creation/pinning/upload/submission, shader/texture/font assets, device-loss/resize/rollback/teardown and observed in-game GPU output remain open. No current pipeline compatibility claim. |
| Hooks with original-call forwarding | Recovered Client signature traversal/copied MethodInfo installer supplies the frame's saved original key. The separate Windows base has an owned-window subclass/original-chain harness. Neither is a live Client/game detour. Matching target/signature/hidden ABI, executable original dispatch, all required hook installation/forwarding/restoration, in-flight lifetime and native cleanup remain open. |
| Stack spoofing / spoofcall | Literal PE/unwind metadata parsing and a detection-level executor description exist. The separate freestanding component now executes the recovered argument marshalling, synthetic stack construction and return/restoration. Full context/continuation scanners, native unwind validation and gate integration into the scene/base remain absent. This is unfinished implementation, not an artifact-only blocker or an excluded requirement. All scene calls remain ordinary calls. |
| No CRT dependencies or imports | Unmet. The scene uses C++ standard-library containers, strings, exceptions, filesystem/streams and compiler runtime support. The Windows demo imports CRT and Windows libraries. The separate executor DLL has verified zero imported libraries/IAT and no CRT/archive linkage. The active scene/base still require a freestanding runtime/allocation/error/formatting/container port and PE/link-level verification; no matching game file is needed to begin that work. Removing imports alone would not prove absence of statically linked CRT dependencies. |
| Source fidelity | Byte-backed controllers and explicit host boundaries have evidence, but authored inputs/backend behavior and unrecovered native branches prevent equivalence claims. Passing offline fixtures or similar pixels does not establish equivalence to the dump. |
| Input preservation | The preserved DLL must remain SHA256 `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`. It has virtual layout (file offset = RVA). All 135 entries in `dump_analysis/MANIFEST.sha256` remain required and are checked before/after runs. |

Local work can continue on the executable gate, freestanding/no-import runtime,
remaining menu/frame composition and source-backed adapters. The unavailable
**matching GameAssembly.dll, UnityPlayer.dll and global-metadata.dat** are required
to resolve and validate the actual build's method/field/ABI and engine interfaces.
Their absence prevents honest live compatibility/GPU/hook verdicts; it does not
prevent the local work above. Native Windows execution and an authorized game
runtime are also still needed for the corresponding platform/runtime verdicts.

The visual-fidelity gap is specifically local: the five embedded font spans have
now been extracted and identified in
[original_ui_assets/recovery.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/original_ui_assets/recovery.json).
They remain unconnected to the scene, which still uses a handmade5x7 atlas, aliased
font families, authored palette/style and placeholder navigation data. Recovered
color/style initializers already exist in `frame_dependencies_theme.cpp`. Missing
game files do not explain or excuse those substitutions or blocked page navigation.

Aim, automation, materials and any remaining advertised feature families retain
their existing reconstruction backlogs. They are not silently completed or removed
by the owned scene's narrower execution paths.

The executable component and its exact boundaries are documented in [freestanding/README.md](/home/john/Desktop/cheat_re/source/freestanding/README.md). Its success does not make the current scene/base compliant.
