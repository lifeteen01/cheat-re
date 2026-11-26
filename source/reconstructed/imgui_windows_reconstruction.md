# Copied ImGui window lifecycle

[C] `imgui_windows_*` translates the complete controller ranges Begin `38cfa4..38e97c`, End `390994..390a88`, named child `38e97c..38e9c1`, child-by-ID `38e9c4..38ec34`, EndChild `390a88..390c7f`, modal order `38f020..38f0ba`, modal traversal `391928..3919d2`, popup trim `39031c..3903c6` and close-current-popup `390260..39031a`. [U] Complete controller coverage does **not** close every reached local callee or arbitrary ImGui widget/window behavior.

[C] Begin includes the first-frame span `38d48b..38e73c`: raw name lookup/create, appearing/condition flags, copied window/focus/popup stacks, next-window requests, content and ideal-content sizes, viewport and style selection, collapse request, auto-fit and size constraints, parent child registration, pivot position, visibility clamp, resize entry gates, scrollbar cross-coupling, outer/inner/work/content rectangles, scroll interpolation, texture/clip stack changes, optional parent drawlist borrowing, layout reset, binary64 cursor start and binary32 precision loss, nav/title prerequisites, last-item fields, hidden/skip and debug return gates. Same-frame Begin takes the native shorter path. Numeric flags retain their literal meanings; `0x800000` parent traversal is not assigned an unsupported semantic name.

[C] Supporting native calculations include content sizing `38fac8`, auto-fit `38f8b4`, constraints `38fbe8`, scroll target `38f3ec`/edge snapping `38f744`, visibility clamp `38ff14`, font/title/menu metrics `38f1fc`/`39bf80`/`3951a4`, title rectangle `39bfb8`, condition masks and raw collapse/position/size setters, focus/root links, stack sizes and menu-column reset. [C] Frame bindings also perform next-position `39b734`, next-size `39b770`, next-alpha `39b71c` and next-constraint `39b7a0` writes. The IO helper returns context+8, so the first-frame interpolation reads delta time at context+18. Native constants come from the supplied Snapshot, including the binary64 cursor-X addend at `2aa130` (zero in the supplied image).

[C] The main-menu flags `0x2b` traverse actual resize early-return gates and concrete background/border drawing. Decoration translation emits the actual rectangle/line arguments through the released `MenuControlsApi` geometry backends. It includes background style routing/alpha override, title fills, menu rectangles/separators, collapsed frame border/shadow rectangles and ordinary outer borders. [C] Saturation preserves the native `MINSS(1, alpha)` operand order, including NaN conversion to a zero high alpha byte. [U] The active grip and held-border paths below remain explicit stops, not fabricated geometry.

[I] `Snapshot` is copied storage and numeric addresses are data keys. `reserve_storage(bytes)` supplies caller-owned, nonoverlapping writable Snapshot storage for vector growth. Growth copies existing elements in order; native heap allocation/free/header equivalence is not claimed for this adaptation. Window ID storage is an owned `std::map<uint32_t, Address>` equivalent of key replacement, not an invented native `ImGuiStorage` layout. Window/name creation and rename use the released native allocation/free counter wrappers with explicit allocator leaves. The constructor's overwritten initializers are folded into its observed zero/store sequence. Native drawlist buffers/commands/stacks are represented by `DrawCoreStore`.

[I] Window stack records have the observed stride `0x58`, but only the 86 initialized bytes are written: native final padding is left as copied bytes. No font metrics, glyphs, mouse state, viewport, native callback target or allocator storage is synthesized. Strings are raw NUL-terminated byte strings; they are not MSVC string objects. Malformed copied vectors, missing bytes, invalid indices and analysis bounds stop explicitly. ABI/heap identity, host CRT implementation details, floating-point exception flags and live compatibility remain unverified.

[C/I] Public composition:

```cpp
ImguiWindowsState windows{.controls = &controls};
ImguiWindowsApi windows_api;
windows_api.controls = existing_controls_api;
// Supply only reached remaining local bodies and allocator/storage leaves.
auto controls_api = bind_imgui_windows(windows, windows_api, existing_controls_api);
FrameDependencyResult last_window_result;
auto frame_unity = bind_imgui_windows_frame(
    windows, windows_api, last_window_result, existing_frame_unity);
```

[C] Both binders operate synchronously on the same copied state. Frame Begin/child return the computed visibility; failures propagate their exact nested dependency and retain earlier native writes. Direct functions return `FrameDependencyResult` / `ImguiWindowResult`. [U] A failed Begin is a partially mutated native path; the adapter does not roll it back or silently proceed to End. Caller-owned callbacks must implement their documented native Snapshot effects, not merely return a successful event.

[U] Exact remaining local ranges (exclusive ends):

| Range | Bytes | Required behavior |
|---|---:|---|
| `3bd07c..3bd0ab` | 47 | Unexposed recompute=false column branch |
| `391ddb..391dee` | 19 | Unexposed arbitrary existing settings-index branch |
| `39138c..3915b3` | 551 | Popup/tooltip automatic position, consumed Vec2 result |
| `3921c0..3921c5` | 5 | Table pool lookup thunk; deeper `3786d8` tracked in dependencies |
| `394dd4..394e59` | 133 | Log finalization |
| `395500..3955bb` | 187 | Nav initialization |
| `3997ac..399993` | 487 | Child nav-highlight controller |
| `39a167..39a2c3` | 348 | Nontransparent resize-grip path inside decoration body |
| `39a3ce..39a575` | 423 | Held resize-border path |
| `39a64c..39a7a8` | 348 | Window shadow controller; parent owns `draw_shadows_*` raster |
| `39a7a8..39ac03` | 1,115 | Title/button/text controller |
| `39d805..39e0a0` | 2,203 | Interactive resize body; entry early gates and return translated |
| `3b4f94..3b530a` | 886 | EndColumns |
| `3c3234..3c338d` | 345 | Scrollbar controller; deeper `3c3390` tracked in dependencies |

[S/I] Other explicitly limited native ranges are `391dd0` (new-window settings index -1 path), `38b9e8` (copied stack-backup construction), `3992a0` (border=true call specialization), and `3bd06c` (recompute=true column branch). These are not full arbitrary-input body claims. The range ledger separately partitions the full `399d88`, `39a308` and `39d760` extents, with no omitted bytes. Existing controls retain their separately tracked deep nav/text-edit prerequisites.

[C] Evidence: `dump_analysis/semantic_reconstruction/imgui_windows/range_branch_dependency_ledger.json`, generated by `build_audit.py`. It records 76 exact function extents / 24,623 bytes, 226 direct dependency keys and 515 conditional branches. 49 ranges / 13,479 bytes are concrete controller/math translations, 11 / 1,787 bytes use owned representation adaptations, 7 / 5,300 bytes are specialized ranges, and 9 / 4,057 bytes are remaining whole local callees. Specialized extents additionally contain the 3,040 remaining interior bytes listed above. Branch inventory does not mean every branch was exercised by fixtures. PE exception-directory extents and manual leaf/tail audits include post-first-RET blocks, notably `391c78` and `391928`. Raw bytes are SHA-256 hashed; offset equals RVA in the supplied virtual-layout DLL.

[C] `check_imgui_windows_reconstruction()` tests duplicate-name order, modal/descendant traversal, display relocation, popup trims and retained writes at missing prerequisites, End stack/LastItemData/clip restoration, child bounds and navigation stops, constructor/name/ID/allocation counters, first-frame and same-frame Begin, direct region/clip/font/delta-time/texture calculations, collapsed sizing, native callback consumption, integer column wrap, raw collapse bytes, next-window setters, named child height/ID rules, both binders, NaN alpha and draw-buffer clearing before a missing shared-data read. Strict GCC15 C++20/Werror/`-ffp-contract=off` and nonrecovering ASan/UBSan are run by `audit_verification.py`; verification results and before/after input hashes are saved alongside the evidence.

[C] Final focused verification: strict and sanitizer checks both PASS, with 40 inputs unchanged across each compile/run. See `strict_verification.txt`, `strict_sources.json`, `sanitizer_verification.txt` and `sanitizer_sources.json` in the evidence directory. The sanitizer run enables AddressSanitizer, UndefinedBehaviorSanitizer and leak detection; sample code is never executed. The supplied DLL SHA-256 remains `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`.
