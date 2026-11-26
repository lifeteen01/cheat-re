# DLL menu and one-file offset configuration

[C] **Implemented and validated within the owned-host scope.** Three user-requested sub-agents implemented the native menu, profile core and catalog/consumers; parent integration and required scoped checks pass. The [acceptance record](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_offsets/acceptance.json) lists exact sources and evidence. [U] Native Windows and in-game validation are separate, unfinished requirements.

[I] This is the user's new menu/configuration objective. The legacy reconstruction remains incomplete and blocked on matching game artifacts; its goal-service record rejected replacement of an unfinished goal. It has not been falsely marked complete. Optional exhaustive reconstruction remains backlog.

## Delivered behavior

- [C] The compiled DLL includes a usable native **General / Offsets / About** menu. F1 toggles it; Escape/Close hide it. Checkbox, size slider and accent presets affect actual owned frame geometry/pixels.
- [C] One **offsets.json** beside the DLL supplies219 stable named contexts. The menu supports path selection, filtering, hex editing, Apply, atomic Save and Reload. Rebuilds preserve an existing deployed profile; external edits take effect on Reload without rebuilding.
- [C] Validation distinguishes module RVAs from member offsets, enforces schema/version/required keys/module coherence and rejects invalid data/overflow. Failed reloads retain the last valid profile; Save refuses an edited path until it has been loaded successfully.
- [C] Loaded values control28 typed owned-Snapshot getter contexts,18 numeric direct-wrapper resolvers and generic named address resolution. Tests change JSON values and prove different owned reads and addresses. The forensic literal implementations remain unchanged.
- [C] The shipped historical profile remains unverified. Empty fingerprints never report a build match. The DLL continues to report game bindings required; no successful game callback or spoof context substitutes for missing behavior.
- [C] The original ABI-v1 struct layouts and five exports remain compatible; eight configuration/menu exports extend the interface. Windows module fingerprint checks use actual loaded-module paths, on-disk SHA256 and loaded image size; matching identity alone is not proof of correct offsets or ABI.

## Evidence

| Requirement | Result |
| --- | --- |
| [C] Complete module integration | All three sub-agent code releases match their source hashes; parent documentation tagging is separately recorded. |
| [C] Combined offline strict + ASan/UBSan |328 translation units,455 identical unchanged captured inputs: [strict](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_offsets_integrated_sources.json), [sanitizer](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_offsets_sanitizer_sources.json). |
| [C] Portable profile/frame checks | [Native strict/sanitizer record](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/native_checks/verification.json). |
| [C] Windows x64 compile/link | [Direct build](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/build/verification.json) and [CMake/Ninja](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/cmake_verification.json) pass;13 exports inspected. |
| [C] Real UI/file/lifecycle compatibility test | Fresh Wine10/Xvfb prefix: controls, actual screen pixels, filter, Apply/Save/Reload, Unicode paths, atomic replacement, last-good retention, invalid input/kind/overflow, original forwarding, thread/reentry refusal, target destruction and unload: [record](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/wine_runtime/verification.json). |
| [C] Visual inspection | Actual menu captures: [General](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_offsets/screenshots/menu-general.png), [Offsets](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_offsets/screenshots/menu-offsets.png), [About](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_offsets/screenshots/menu-about.png). |
| [C] Preserved inputs | All135 supplied manifest hashes pass: [log](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/input_verification_menu_offsets.txt). |

## Use and limits

[I] Keep [re_base.dll](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/build/re_base.dll) and its [deployed offsets.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/windows_base/build/offsets.json) together. The host calls RB_Initialize with its own window; the DLL performs no initialization under loader lock. See the [API/use guide](/home/john/Desktop/cheat_re/source/windows_base/README.md) and [offset schema/catalog guide](/home/john/Desktop/cheat_re/source/windows_base/OFFSETS.md).

[U] This is new native platform UI, not a claim that the original game-feature menu or cheat features work in-game. Appearance preferences are session-only. Per-monitor DPI transitions remain unimplemented; creation DPI and normal resizing are supported. The219 entries cover the existing scoped inventory, not every possible update dependency;982 unclassified historical values remain excluded. Semantic/signature/layout changes can require code changes beyond numeric offsets.

[U] Matching GameAssembly.dll, UnityPlayer.dll and paired global-metadata.dat remain **Needed / To do**, along with an authorized native Windows/game environment for the actual game hook and live adapters. The sample was not executed, no artifacts were uploaded, no IOC was contacted and executable spoof behavior remains excluded.
