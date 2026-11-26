# Window details reconstruction

[C] This module closes the nine typed window controller prerequisites left in the released `imgui_windows_*` model, the entire interactive resize controller, and the resize-grip/held-border drawing interiors. [I] It operates on the same owned `Snapshot`, numeric addresses, `DrawCoreStore` and typed input/render bindings as that model. Numeric sample targets are never executed.

[C] The read-only inventory is `dump_analysis/semantic_reconstruction/imgui_window_details/range_branch_dependency_ledger.json`. It enumerates 51 nonoverlapping function ranges, 16,588 native bytes, 272 conditional branch sites and 150 immediate call/tail dependencies, with copied excerpts and byte hashes. Extents use PE runtime records or individually audited leaf/tail boundaries, including blocks after an earlier RET. [I] Of the inventoried bytes, 13,912 are concrete controllers/calculations, 960 use owned container adaptation, and 1,716 are explicitly scoped helper specializations. The decoration inventory includes 991 bytes composed from the released prefix, so these counts are not all newly authored native-function equivalents. Enumeration and fixture success are not proof of whole-program equivalence.

## Controller ranges

[C] All ends below are exclusive. The nine requested roots total 4,057 bytes.

| Native range | Concrete behavior |
|---|---|
| `39138c..3915b3` | Popup/menu/tooltip auto positioning, viewport safety insets, navigation/mouse preference, consumed direction writes. |
| `3921c0..3921c5` | Table-pool tail thunk; signed index and literal `0x238` stride through `3786d8..3786e7`. |
| `394dd4..394e59` | Newline append, configured clipboard target/user dispatch, log flags and buffer cleanup in native order. |
| `395500..3955bb` | Navigation ID/scope/layer restoration or initialization, rectangle clears and request refresh. |
| `3997ac..399993` | Suppression predicates, clip intersection/expansion, real temporary clip stack changes and thick/thin highlight rectangles. |
| `39a64c..39a7a8` | Native sine/cosine shadow offset; two shadow calls with dimensions reread for the second. |
| `39a7a8..39ac03` | Close/collapse buttons, deferred collapse/close byte writes, button positions, balanced label padding, hidden-ID suffix, marker and clipped font geometry. |
| `3b4f94..3b530a` | EndColumns width/clip/splitter restoration, separator interaction, normalized resize propagation and work-rectangle cleanup. |
| `3c3234..3c338d` | Axis-specific scrollbar ID/bounds/corner flags and signed64 scroll roundtrip through the concrete core. |

[C] Additional previously missing bodies/interiors total 3,224 bytes: `39d760..39e0f5` (2,453), `39a167..39a2c3` (348) and `39a3ce..39a575` (423). The binder supplies the entire decoration controller through the released prefix plus owned grip/outer-border code. It handles corner/edge dragging, double-click auto-fit, size constraints, navigation analog inputs, accumulated integer resizing, dirty state, grip triangles/arcs and held-border strokes. The native resize return becomes true only for double-click auto-fit; ordinary resizing can write size/position while returning false.

[C] Further concrete closure includes `3915b4..391925` (all placement modes and late blocks), `3929e8..392a99`, `3952b0..395465`, `394e5c..395020` (rendered logging), `3c3390..3c3890` (scrollbar core), `3bff14..3bff58`/`3bff58..3c0020` (ID/bounds), `38f5d0..38f6b9`, `392a9c..392bba`, `392724..392798`, `3bde30..3be111`, `3be114..3be2eb`, `39be68..39beee`, both `3bd06c..3bd113` modes and complete `391dd0..391df6` cached-offset/chunk-lookup paths. [I] Columns' generic null-current-columns interfaces and generic text pointer/measurement overloads are retained as reached specializations in the ledger; their whole generic ABI is not claimed.

## Composition and data

[I] Include `imgui_window_details_analysis.hpp`, with direct domain includes. Set `ImguiWindowDetailsState.windows` to the existing `ImguiWindowsState`; that state must refer to the shared `MenuControlsState`/Snapshot. Call `bind_imgui_window_details(details_state, details_api, base_window_api)` before passing the resulting `ImguiWindowsApi` to `bind_imgui_windows` or the frame binder. The resulting API supplies the nine prerequisite callbacks plus resize and decorations. Capture lifetimes are synchronous; all referenced states, font resources, sinks and draw resources must outlive bound calls. Optional logging/start-move overrides are unnecessary for closure: their absence selects the concrete owned implementations.

[I] `ImguiWindowDetailsApi.fonts` and `.text_sink` use the released font geometry implementation; `.shape_resources` provides copied white UV, arc/segment and stroke data. Rectangle/line/circle/arrow/shadow callbacks consume actual geometry and compose with released shape/shadow binders. Missing required data or a callback throws `RendererMissing` at its reached site, preserving earlier copied-state/geometry changes. No font metric, glyph, atlas, initialized style/input state or external callback result is synthesized.

[I] `column_splitters` maps the separate native columns-splitter numeric identity to owned channels. A merge temporarily uses that splitter on the actual owned drawlist, restores the drawlist's previous splitter, and preserves partial state on failure. This is storage adaptation, not a native heap/header ABI declaration. Log growth uses caller-owned writable Snapshot storage through `reserve_storage`; configured frees retain the released native counter wrapper and required free leaf. Clipboard dispatch passes the numeric target, user and owned text to `.clipboard_leaf`; there is no host clipboard call or execution of that numeric target.

[C] Native literals remain literal: numeric IDs/bits/directions have no invented semantic names. `2d4870` writes zero Vec2. Mouse validity uses `2aa15c=-256000`; direction arrays are copied before iteration. Native signed-byte/cvtt/NaN/MINSS/MAXSS and binary32 sequencing are retained where consumed. Shared settings scanning honors signed cached byte offsets, deleted-record byte `+e`, duplicate order and the trailing header's `+4` end rule.

[C] Saved-entry decoration flags/collapsed/border/rounding survive drawing callbacks; later outer-border fields are read fresh. The parent-owned prefix contains the matching saved-flags correction at `399f3c`/`39a0f2`. Highlight pop uses its reloaded drawlist and that list's shared clip. Title text selects the current window after the marker callback. These distinctions have explicit mutation fixtures.

## Verification and limits

[C] `check_imgui_window_details_reconstruction()` exports the offline fixtures with no source-file main. The evidence-only `check_main.cpp` invokes it. There are 38 focused fixture scenarios, covering all nine roots, all three new interiors and consumed helpers: forced/restored/disabled navigation, popup modes/fallback/invalid cached direction, repeated-shadow rereads, exact glyph geometry/fine clipping, close/collapse release and drag, scrollbar drag/page seek and skip behavior, column merge/restoration, log allocation/cleanup/failure retention, settings duplicates/deletion/offsets, menu-column wrapping, geometry missing-data stops, corner/edge/keyboard/double-click resizing and callback read lifetimes.

[C] Run `bash dump_analysis/semantic_reconstruction/imgui_window_details/verify_imgui_window_details.sh`; use `RE_ANALYSIS_SANITIZE=1` for nonrecovering ASan/UBSan. The local compiler is GCC15.2, C++20, `-Wall -Wextra -Wpedantic -Werror`, `_GLIBCXX_ASSERTIONS` and `-ffp-contract=off`. `verify_manifest.py` records before/after hashes around each actual build/run. The strict/sanitizer reports and source manifests are in this evidence directory. Parent integration/combined fixtures remain a separate checkpoint.

[U] Generic formatting remains a specialization: `395038..395073`, `395074..3950c1` and `39e280..39e304` are implemented only for the recovered newline and `%*s%.*s` argument forms. Arbitrary formatting reaches `393270..3932af ->3214dc..3214f2 ->2d96c0..2d970e`, then CRT configuration/import handling; generic native varargs/locale/runtime ABI are not reconstructed here. An unsupported newline format stops explicitly. Negative/overflowing malformed container extents stop at documented analysis bounds rather than being attributed native safety behavior.

[U] This release does not close the default font/atlas producer, foreign allocation/free/size-constraint/clipboard results, generic text-editor/input/navigation closure, or live ImGui/game/runtime ABI. Their typed requirements and released per-domain limitations remain explicit in the dependency ledger. No sample instruction, input binary or IOC was executed or contacted.
