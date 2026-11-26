# Windows x64 DLL: menu and external offset profile

[I] This is the preserved external settings/DLL base. The internal-menu/ESP objective is implemented separately in the [owned continuous test scene](/home/john/Desktop/cheat_re/source/test_scene/README.md), using recovered controls/controllers rather than this panel or marker. Its owned-host/Wine validation does not establish native Windows or Rust compatibility.

[C] The built DLL has a native General / Offsets / About menu and reads one versioned [offsets.json](/home/john/Desktop/cheat_re/source/windows_base/offsets.json). Its working controls, file operations and value consumers pass the authored host test under Wine10/Xvfb. [U] Native Windows and in-game behavior remain unvalidated; this menu does not enable unavailable game features.

## Build and files

[I] Run `python3 source/windows_base/build.py`, or `python3 source/windows_base/verify_cmake.py` with the locally extracted CMake/Ninja/MinGW tools. Both produce `re_base.dll` and the authored `windows_host_checks.exe`. The DLL links the owned draw-core, native menu, profile loader, catalog and profile-aware consumers. Its13 C exports are checked against [base_api.h](/home/john/Desktop/cheat_re/source/windows_base/base_api.h). Compiler runtime libraries are static; Windows system libraries remain normal imports.

[I] Keep **re_base.dll and offsets.json together**. First build/deployment copies the shipped historical example only when the destination file does not exist. Rebuilding preserves an existing edited profile. The DLL chooses the file beside itself, independently of the process working directory. `RB_LoadOffsets` or the menu can select another path. Explicit paths accept UTF-8; the native menu uses Unicode paths.

## Use the menu

- [I] The menu opens after explicit `RB_Initialize` on the owner thread. **F1** toggles it through the owner window; F1, Escape and Close hide it when a menu control has focus. Close does not unload the DLL.
- [I] **General:** Show marker, size8–96, and four accent presets change actual owned frame geometry/pixels. These appearance preferences are session settings and reset at shutdown; the Offsets tab's Save button saves the offset profile.
- [I] **Offsets:** edit the path and choose Reload; filter the named entries; select a row; edit its hex value; choose Apply, then Save. External file edits take effect on Reload. Apply changes the active in-memory profile immediately; Save persists it by atomic file replacement.
- [I] **About:** identifies the platform UI and the unavailable game integration. No game feature is reported as working by a placeholder callback.

[I] Invalid reloads retain the last valid profile. Invalid edits retain the previous value. A newly typed path must be loaded successfully before Save can write it, preventing an accidental save of an old profile over an un-loaded candidate. Diagnostics are visible in the menu and through `RB_GetMenuStatus`. Unsupported schema, duplicate/unknown JSON fields, missing required keys, kind/module mismatch, malformed values and overflow produce errors rather than defaults.

## Offset updates

[I] The single file contains **219 named contexts**:142 member-field contexts and77 GameAssembly reference sites. It covers the prior scoped inventory's77 distinct field values and64 distinct RVAs. Equal numeric values on different receivers keep different keys so they can move independently. Unknown semantic names use stable historical getter/site identifiers; these do not change when the configured value changes. See [OFFSETS.md](/home/john/Desktop/cheat_re/source/windows_base/OFFSETS.md) for schema, mapping and limits.

[I] `RB_GetOffset` reads the active file-backed value; `RB_ResolveOffset` adds it to an explicit base with kind/overflow checks. The reusable [profile-aware adapters](/home/john/Desktop/cheat_re/source/reconstructed/offset_profile_bindings.hpp) use loaded values for28 typed owned-Snapshot getter contexts and18 numeric direct-wrapper resolvers. The original literal forensic reconstructions remain unchanged. Other named entries support generic lookup/resolution; no claim is made that all original game controllers have live bindings.

[U] The shipped file is **historical and unverified**, with empty module SHA256 and zero image sizes. `RB_VerifyOffsets` refuses to report a build match for it. For a fully specified profile, verification measures the actual loaded modules' on-disk SHA256 and loaded image sizes using Windows APIs and compares them with the profile. A label alone is insufficient. Matching fingerprints do not prove the offsets or native ABI are correct, and `RB_GAME_BINDINGS_REQUIRED` remains set.

[U] Updating numeric values can avoid a rebuild for supported consumers. A game update that changes signatures, layouts beyond the configured fields, object lifetimes, metadata or algorithm behavior can still require code changes. This is not automatic offset discovery or proof of current-game compatibility. Matching GameAssembly.dll, UnityPlayer.dll and paired global-metadata.dat remain **Needed / To do**;982 unclassified historical literal values remain outside the catalog.

## Exported lifecycle and configuration API

- [I] `RB_QueryAbi`, `RB_Initialize`, `RB_GetStatus`, `RB_Frame`, `RB_Shutdown` retain the original ABI-v1 layouts. New exports extend it without changing those structures.
- [I] `RB_SetMenuVisible`, `RB_GetMenuStatus` expose the actual menu and current profile diagnostics.
- [I] `RB_LoadOffsets`, `RB_SetOffset`, `RB_SaveOffsets`, `RB_GetOffset`, `RB_ResolveOffset`, `RB_VerifyOffsets` expose the file-backed configuration. Address resolution is numeric; it neither calls nor dereferences game addresses.

[I] All stateful calls run on the owner window thread, outside DllMain. Initialization verifies the caller-owned HWND, creates owned state/menu and installs the owner subclass last. Shutdown refuses during active callbacks, restores the original owner chain, destroys the menu and unregisters its window class before releasing state. The host must retain its LoadLibrary reference until shutdown succeeds and all calls return. Owner destruction and repeated shutdown are tested. DllMain only records its own module handle; it performs no lifecycle work.

## Validation

[C] `python3 source/windows_base/verify_native.py` runs strict and ASan/UBSan tests of the bounded JSON/file/profile APIs, all219 catalog entries, changed owned reads/address resolution and marker pixels. [C] `python3 source/windows_base/verify_wine.py` runs the hash-checked authored Windows host/DLL under a fresh local Wine10/Xvfb prefix. It verifies native checkbox/slider/combo controls, keyboard hiding/reopening, list filtering, menu Apply/Save/Reload, Unicode paths, atomic Windows replacement, last-good retention, resolver updates, identity refusal, original forwarding and cleanup/unload. [U] Wine evidence is not native Windows or in-game evidence.

[I] On native Windows, run the authored host with an absolute DLL path:

```powershell
$dll = (Resolve-Path .\re_base.dll).Path
.\windows_host_checks.exe $dll
```

[I] The harness creates its own window and temporary profile copies. It never executes the supplied sample or loads a game. The Wine runner accepts no foreign PE input, uses its own prefix/display and stops only its own processes. Runtime environment mappings supply verified packaged NLS/INF/zlib resources; no system installation is made. See [readiness](/home/john/Desktop/cheat_re/source/BASE_READINESS.md) and the [new goal record](/home/john/Desktop/cheat_re/source/MENU_OFFSETS_GOAL.md) for current milestones and evidence.
