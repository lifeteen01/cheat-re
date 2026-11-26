# Menu control analysis reconstruction

[C] Evidence is the virtual-layout copied DLL (file offset equals RVA), `dump_analysis/static/cheat_annot.asm`, and the page/primitive inventories under `dump_analysis/semantic_reconstruction/frame_dependencies`. [C] No copied instruction is executed. Original DLL SHA256 is `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`.

[C] [I] `menu_controls_analysis.hpp` exposes owned requests, concrete control/input/state controllers, checked Snapshot mutations and typed data-consuming rendering boundaries. [U] This closes the listed control controllers, not all ImGui window, navigation, color-picker or shape raster dependencies.

## Controllers and effects

| Native range (exclusive end) | Concrete operations |
|---|---|
| `3bc7e0..3bcd9b` | [C] [I] ButtonBehavior: default button/press masks, child flattening, drag hold, overlap, three mouse buttons, modifiers, click/release/double/repeat, ownership, active/focus changes, nav activation/source, held and release clearing. |
| `3bc7d8..3bc7e0`, `3bcd9c..3bd069` | [C] [I] Button thunk/controller, label/default/negative size, row layout, animation, outline/fill/text arguments, skip/clipped returns. |
| `3bd114..3bde22` | [C] [I] Checkbox row/pill/knob positions, release toggles only low config byte, one-time search record, Favorites, color/key/description child order and cursor restoration. |
| `3be2ec..3bf007`, `3bf008..3bfd57` | [C] [I] C-string and owned-string combo overloads, selected lookup, animated width/open/angle/color, preview/arrow rotation, popup height/position/edges, ordered selectable loop, selected integer write, close state. Both register native type `combo`. |
| `387d18..3889e0` | [C] [I] Multi-select bool vector, literal window-width half box, joined names and byte truncation, arrow rotation, 25-visible-row height clamp, independent bool toggles, five-row spacer threshold. |
| `3c43f4..3c4436`, `3c4438..3c4476`, `3c4478..3c4e58` | [C] [I] Float/int thunks and slider root: label/bar layout, click/nav activation, scalar writes, edit flags, format text, search/Favorites format retention, animated grab extent, shadow/fill/knob/numeric text geometry. Native root passes scalar flags **zero**, including when its incoming request has flags. |
| `386438..3869b1` | [C] [I] RGBA float4 preview, three white transparency regions, animated popup and color-picker result. This routine is not a bool toggle. |
| `385b70..38610a`, `3853b0..385b70`, `388e2c..3891f2` | [C] [I] Key popup, key capture and Hold/Toggle/Always Enabled controls. Key payload is code plus mode at key RVA+4. R8 bool suppresses mode buttons. Capture clears copied legacy input, retains native literal codes `3a`, `22b`, `3e7`, scans 0..13f except 1/2/4, then 22c..22f. Game key input is typed input data. |
| `3c38a8..3c4061` | [C] [I] Selectable layout/span/spacing/disabled/behavior masks, nav-selection branches, status/overlap, animation/dot/text and popup-close gate. |
| `387664..387a4a` | [C] [I] Favorites animation, append, first label-match removal and observed membership latch, icon arguments. Full owned requests retain slider format. |
| `395964..395bc1` | [C] [I] Navigation item controller: x clip, initialization candidate, typed direction/tab score effects, active nav rect/scope/layer refresh. Scoring bodies remain below. |
| `38ec90..38edb9`, `390efc..3910e7`, `391184..3911c9` | [C] [I] Owned group save/restore, cursor/max/line/indent calculations, group item and active/hover/deactivation status transfer. |
| `398bec..398c5f`, `398c60..398cc7`, `398cc8..398d42`, `39890c..39896b`, `39896c..3989f7` | [C] [I] Color/style stack imports, native metadata type/count gate, backup/push/write, clamped reverse pops and restoration. |
| `38ec34..38ec90`, `390c80..390ce9` | [C] [I] Disabled-state item flag stack and outer-only alpha multiplication/restoration. |
| `389db4..389e81` | [C] [I] Two cache lookups on present font, native zero Vec2 on null cache entry, scaled size, hidden-`##`/NUL cutoff and existing concrete font measurement. |

[C] [I] Additional ID/hash/key ownership, mouse, focus/window ordering, layout, color conversion, cached-font, window getter/setter and typematic helpers are individually recorded in the ledger. [C] The full 256-entry table at `2a9530` is checked against the CRC polynomial. Numeric slider/key/bone/category meanings remain literal.

## Composition

```cpp
MenuControlsState controls; // caller supplies image/config/main_menu/draw
MenuControlsApi api = /* remaining typed local effects */;
api = bind_menu_controls_snapshot(controls, api);
api = bind_menu_controls_text(fonts, font_sink, api);
MenuControlInvoke invoke = bind_menu_controls(controls, api);
FrameMainMenuApi frame = bind_menu_controls_frame(controls, api, frame_fallback);
// Then parent-owned bind_menu_pages(...), then bind_frame_menu(...).
```

[C] [I] Request strings are copied at the call boundary; page-local shared localization/stack-buffer aliases are resolved by the page domain before this call. The historically named `register_search` byte is forwarded literally: checkbox sends it to keybind mode suppression, keybind consumes it as R8, and selectable uses its final bool to choose description versus label text. Native current-item flag0x800, rather than that request byte, gates one-time search insertion.

[I] `FrameMenuState::values` stores scalar config bits by value RVA. `multiselect_values` and `colors` store full typed values. `owned_integer` is an optional synchronous borrow from a stable owned map node; its owner must outlive cached requests/closures. It is never a numeric sample address cast to a host pointer. The page Favorites callback may return `controls.favorites_27f988`; its bool-vector callback converts `multiselect_values[value]` bytes with `byte != 0`.

[I] Animation maps, vectors, strings, allocation, style stacks and groups use owned standard-library storage. After first import, these owned stacks are authoritative. Copied size fields are updated; stale native capacity/data descriptors are not an executable heap ABI. Consumers must use the typed state instead of decoding newly pushed stack records through old Snapshot data pointers.

[C] [I] Text requests from native `3a31bc` retain font0/size0 so `font_text_draw_3a31f8` performs its native shared-font selection. Explicit font requests retain their copied cache result, including zero. No glyphs, metrics or input are invented. `MenuControlRectangle`, `MenuControlCircle`, `MenuControlGlowRectangle`, `MenuControlLine` and arrow arguments retain actual geometry/color/rounding/flags. The rectangle glow is not replaced with a fabricated circle/event.

[C] [I] A missing required local callback or copied input stops at its RVA through `RendererMissing`; `menu_controls_apply` returns `missing_dependency`. Prior config, copied context, cache and stack writes remain committed. A known native null cached-font branch returns zero measurement instead of treating null as missing evidence.

## Exact coverage/dependency ledger

[C] `dump_analysis/semantic_reconstruction/menu_controls/range_branch_dependency_ledger.json` contains 148 native ranges, raw-range SHA256 values, all direct branch/call sites and 436 dependency keys. It accounts for **35,837 concrete controller/helper bytes**, separately lists **9,926 specialized/adapted bytes**, and recorded 26 direct local ranges (15,618 bytes) at its frozen handback. Later modules implement those root controllers; the [current reconciliation](../../dump_analysis/semantic_reconstruction/menu_controls_current_reconciliation.json) maps every historical range to its implementation and evidence. Those counts are not a claim that the complete transitive graph is translated.

[C] Full pdata extents and manually audited leaves include blocks after early RETs. For example `3948bc` includes its true-return block at `3948d9`; `394a14` includes debug/nav branches after its earlier RET. The audit does not stop at the first RET.

[I] [U] Slider behavior covers the actual root call specialization: signed32 datatype4 or float32 datatype8, horizontal, linear and scalar flags0. The unused generic type, logarithmic, vertical and alternate flags in `3c4064`, `3b8664`, `3b95c4`, `3b5ed0`, `3b7358`, `3b64f4`, `3b7948` are not labeled full bodies. `3947ec` covers the roots' flags0; extra root/child traversal is not claimed. Window position/size helpers specialize native condition0. Native parser/CRT locale, exceptional numeric formatting, sin/cos exactness and FP exception state remain unverified; owned numeric formats outside supported conversions stop.

[C] Historical direct local roots, with exclusive ends (now implemented by the later modules linked in the reconciliation):

| Domain | Historical ranges |
|---|---|
| Picker/tooltip | `379680..379e60`, `389f18..38a3c2` |
| Window/child lifecycle | `38cfa4..38e97c`, `38e97c..38e9c1`, `390994..390a88`, `390a88..390c7f` |
| Modal/popup | `38f020..38f0ba`, `391928..3919d2`, `39031c..3903c6`, `390260..39031a` |
| Nav scoring / delayed anonymous ID | `395258..3952af`, `395bc4..395cdd`, `395db8..396133`, `392654..3926a9` |
| Raster closure | `39f874..39f926`, `3a01f4..3a0294`, `3a1148..3a1244`, `3a1244..3a12d8`, `3a1410..3a1561`, `3a2010..3a2373`, `3a7400..3a761f` |
| Columns/table channels | `3b54ac..3b54f9`, `3b54fc..3b5551`, `3b5824..3b588d`, `3b5890..3b58f2` |
| Text deactivation | `3c04d0..3c0536` |

[C] These historical root controllers have concrete implementations. [U] Their deeper text-editor closure and exact generic specializations remain tracked separately; the historical table does not prove full transitive closure. Actual game key data and runtime-created ImGui window/font/texture/input state remain supplied, typed input/effects. No live ABI is asserted.

## Verification

[C] `check_menu_controls_reconstruction()` has no main. The standalone evidence script `verify_menu_controls.sh` uses workspace GCC15, C++20, all requested warnings as errors, `_GLIBCXX_ASSERTIONS`, and `-ffp-contract=off`. Its fixtures exercise real controller/input operations rather than replacing controls with preset bools.

[C] Fixtures include CRC/###/NUL/size0 modes, typematic edges, default click-release state and ownership, PressedOnClick/NoHoldingActiveID, disabled and hit boundaries, nav activation/rect refresh, low-byte checkbox writes, one-time search/format retention, post-write missing-raster failure, skipped windows, invalid selected index, int/float/reversed/readonly/rounded-endpoint sliders, key capture exclusions and literal codes, native font-cache null/scaled measurement, style/color/disabled stacks, window truncation/settings timer, group union/status, RGBA thirds, and actual selectable-driven owned combo/multiselect writes through explicit popup input.

[C] Final strict GCC15 and nonrecovering AddressSanitizer/UndefinedBehaviorSanitizer checks both PASS. All39 recorded build inputs are unchanged after both runs; see `strict_verification.txt`, `sanitizer_verification.txt`, and `verification_inputs.json`.

[C] Logs, build-input hashes and byte audit are stored under the evidence directory. [U] Combined parent integration and broader semantic review are separate passes; compilation and offline fixtures do not establish live compatibility.
