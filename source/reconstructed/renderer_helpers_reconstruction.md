# Renderer helper reconstruction

[I] New offline C++20 helpers only; the released world, frame, build and parent ledger files were not edited. Addresses identify copied Snapshot data and native RVAs; no function address is cast or executed. [C] Original sample SHA256 is `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`; file offset equals RVA.

[C] **Corrections:** `392198` is the first viewport background draw-list accessor (`##Background`), not a font selector. `2eec7c` copies the complete vector of `0x68`-byte widgets; it is not key lookup. The current font is separately read at context `+3c28`.

[C] Parent review also aligned the bounded-read order in `392dcc`: viewport slot `392dde` precedes global context `392de6`. A missing-both-fields fixture verifies which dependency stops first; valid copied-data behavior is unchanged.

## Concrete interfaces

| Interface | Recovered behavior |
|---|---|
| `copy_renderer_widgets_2eec7c`, `read_renderer_widget` | [C] [I] Signed count division by104, ordered full-vector copy; stored-length SSO/heap strings including embedded NULs; key/base/text/opaque/flag/icon fields. Owned C++ storage replaces native allocation. Padding receives no fabricated ABI meaning. |
| `find_renderer_widget`, `set_renderer_widget_text` | [C] First-match/end semantics for2ee154→DisplayName,2ee1d0→HeldEntity,2ee24c→Indicator,2ee2c8→Indicator0,2ee344→Indicator2,2ee0d8→Indicator3. Stride68. Missing-key caller dereference stops explicitly. |
| `prepare_renderer_world_labels`, `make_renderer_world_label_preparer` | [C] [I] Copy full widget vector, update six keys in native order, change HeldEntity icon only if supplied, return first six records preserving original order/duplicates. Keys beyond six are found and updated although not drawn. Factory captures full vector and matches the parent callbacks. |
| `renderer_measure_3a3874`, `renderer_wrap_3a3aa4` | [C] [I] Font nominal/advance/fallback reads; size/nominal scaling; newline/CR, word/blank/punctuation handling, wrap boundaries, equal max-width exclusion, final line height, remaining byte position. No fabricated font advances or glyph metrics. |
| `renderer_utf8_39357c`, blank/skip helpers | [C] Exact five literal tables, overlong/surrogate/aboveFFFF rejection and replacementFFFD, consumption=min(expected,number of nonzero copied bytes), byte and Unicode blank distinctions, forced wrap byte progress. |
| `renderer_measure_38f79c` | [C] [I] Separate current font/current size, optional first##/NUL cutoff, float width+literal0.9999899864 then CVTTSS2SI. Explicit bounds remain distinct from C-string ends. |
| `renderer_background_392198/392164/392dcc` | [C] [I] [U] First viewport, literal background name/index0; lazyc8 allocation, full zero constructor/shared-data pointer; list/name/viewport writes; frame gate, required reset/texture/clip and post-effect frame reread. Native sample-local primitive dependencies remain explicit. |
| `renderer_icon_2cc8d0`, bundle/load/draw helpers | [C] [I] Positive/negative cache and stale erase/reload; permanent failed entries; one-attempt bundle latch; embedded35c0 length21514e; exact asset path/runtime type; validity and BOTH signed-int dimensions before positivity gate; default/square half extents/UV/tint; post-first-RET immediate successful draw. |
| `renderer_implicit_2ccc0c`, dimension/asset/type wrappers | [C] [I] [U] Snapshot target/cache flags with flag writes before failure/reentrancy, signature IDs, concrete parent class/exact-count/export-named selection, guarded class/type/object, managed path after cache. Detection-only context observer; actual Unity/export effects require matching typed implementations. |
| `bind_renderer_helpers_world`, `bind_renderer_icon_unity` | [I] Borrowed-lifetime closures connect concrete copied metrics/background/widget/icon behavior. Context/global font reads remain separate from background accessor. Existing caller-supplied game/bone callbacks remain available. |

## Data and dependency limits

[I] Text payload views in this domain explicitly promise their known native C-string zero terminator immediately after the payload. An explicit end processes embedded NULs; an omitted end uses the first NUL. Reads beyond the supplied payload and that known terminator stop. Font advance arrays, nominal size and fallback must be copied; missing bytes stop rather than generating metrics. Allocation/vector capacity and iteration bounds are analysis safeguards, not attributed native checks.

[U] Background reset/texture/clip routines and image/glyph/atlas raster closure are not completed merely because this pass builds their arguments. Matching Unity object validity, texture dimensions, managed strings, asset load and embedded-bundle effects remain external. Native context/executor setup stays detection-only. Parent-owned metadata/export and embedded-bundle implementations can supply those wrappers; no duplicate runtime ABI is declared.

## Exact range ledger

[C] Bounds use the original exception directory BeginAddress/EndAddress where present; tiny leaf/thunk ends were checked directly. No first-RET shortcut is used. `[C] [I]` ranges replace native allocator/string/container storage with owned values as explicitly stated; unresolved callees are separately listed, not credited as complete.

| Begin..end (exclusive) | Bytes | Status |
|---|---:|---|
| `0x2cae08..0x2cae85` | 125 | [C] [I] [U] full signature C0505EDA target/context cache; matching dimension leaf required |
| `0x2cae88..0x2caf05` | 125 | [C] [I] [U] full signature3A81CD35 target/context cache; matching dimension leaf required |
| `0x2caf28..0x2cb04d` | 293 | [C] [I] [U] full export-named load cache and managed-string conversion order; matching Unity leaf required |
| `0x2cc8ac..0x2cc8d0` | 36 | [C] [I] bundle nonzero/implicit predicate |
| `0x2cc8d0..0x2cca45` | 373 | [C] [I] complete positive/negative icon cache, stale erase/reload and post-first-RET branch2cca12 |
| `0x2cca48..0x2ccb69` | 289 | [C] [I] [U] positive requested square/default dimensions, half extents, actual image request |
| `0x2ccb6c..0x2ccbd9` | 109 | [C] [I] [U] one-attempt embedded bundle load at35c0 length21514e; actual Unity effect required |
| `0x2ccbdc..0x2ccc0a` | 46 | [C] [I] [U] concrete class resolution then guarded class-type/runtime-type chain; matching exports required |
| `0x2ccc0c..0x2ccd11` | 261 | [C] [I] [U] complete range gate/exact-count metadata cache/target/context flag ordering; detection-only context; matching Unity leaf required |
| `0x2ccd14..0x2cce77` | 355 | [C] [I] [U] complete path/type/load/validity/two-dimension/read/write ordering; matching Unity effects required |
| `0x2cd7f4..0x2cd86c` | 120 | [U] parent class_get_type export wrapper |
| `0x2ce5dc..0x2ce5e1` | 5 | [U] parent managed-string conversion wrapper dependency |
| `0x2cea84..0x2ceafc` | 120 | [U] parent type_get_object export wrapper |
| `0x2db3ec..0x2db425` | 57 | [C] [I] copies key,side20,raw24..2b,byte2c into owned record |
| `0x2db470..0x2db4b5` | 69 | [C] [I] copies key/base fields,text,opaque50,byte60,icon64 into owned record |
| `0x2ee0d8..0x2ee152` | 122 | [C] [I] first Indicator3 find, stride68/end preservation |
| `0x2ee154..0x2ee1ce` | 122 | [C] [I] first DisplayName find |
| `0x2ee1d0..0x2ee24a` | 122 | [C] [I] first HeldEntity find |
| `0x2ee24c..0x2ee2c6` | 122 | [C] [I] first Indicator find |
| `0x2ee2c8..0x2ee342` | 122 | [C] [I] first Indicator0 find |
| `0x2ee344..0x2ee3be` | 122 | [C] [I] first Indicator2 find |
| `0x2eec7c..0x2eecee` | 114 | [C] [I] full widget-vector copy controller; owned allocation and strings |
| `0x2ef7c8..0x2ef7d0` | 8 | [C] [I] widget stride68 indexed access; owned vector bounds explicit |
| `0x2f61e0..0x2f6211` | 49 | [C] [I] literal Indicator3 predicate; encoded literal storage replaced by decoded value |
| `0x2f7230..0x2f7261` | 49 | [C] [I] literal DisplayName predicate |
| `0x2f739c..0x2f73cd` | 49 | [C] [I] literal HeldEntity predicate |
| `0x2f7518..0x2f7549` | 49 | [C] [I] literal Indicator predicate |
| `0x2f76c0..0x2f76f1` | 49 | [C] [I] literal Indicator0 predicate |
| `0x2f78fc..0x2f792d` | 49 | [C] [I] literal Indicator2 predicate |
| `0x36135c..0x361bca` | 2158 | [U] world text style/outline/font selection and glyph dispatch |
| `0x361bcc..0x362116` | 1354 | [U] label text rectangle/style/outline glyph dispatch |
| `0x375c08..0x375d2f` | 295 | [U] parent Unity embedded bundle wrapper; consume existing implementation |
| `0x37897c..0x37898c` | 16 | [C] blank bytes20,9 |
| `0x37a658..0x37a69b` | 67 | [U] texture Address-vector push/grow |
| `0x38a4ac..0x38a528` | 124 | [C] [I] full constructor observable writes: zero c8 then shared-data pointer+38 |
| `0x38bb84..0x38bb90` | 12 | [C] signed32 index*8 added to vector+8 |
| `0x38f79c..0x38f859` | 189 | [C] [I] current-font/current-size, hidden ## cutoff, trunc(width+0.99999) |
| `0x391c50..0x391c78` | 40 | [C] [I] first NUL or ## cutoff before supplied end |
| `0x392164..0x392197` | 51 | [C] [I] literal ##Background and index0 |
| `0x392198..0x3921bd` | 37 | [C] [I] first viewport lookup and background draw-list dispatch; NOT a font selector |
| `0x392dcc..0x392ea0` | 212 | [C] [I] [U] full lazy draw-list/create/reset/texture/clip/frame controller; local callees tracked separately |
| `0x39357c..0x393a04` | 1160 | [C] full literal table decoder/error/consumption; missing bytes explicit |
| `0x395158..0x39517b` | 35 | [U] ImGui allocation dispatcher; use existing owned allocator boundary |
| `0x39eea0..0x39eea3` | 3 | [U] remove/merge last draw command |
| `0x39ef2c..0x39ef90` | 100 | [U] append native initial command |
| `0x39f030..0x39f077` | 71 | [U] clip float4-vector push/grow |
| `0x39f294..0x39f2bf` | 43 | [U] zero default draw command |
| `0x39fd18..0x39fd68` | 80 | [U] append native draw command |
| `0x3a0168..0x3a01f3` | 139 | [U] image alpha gate/texture switch/reserve6indices4vertices/quad/texture pop |
| `0x3a31f8..0x3a3335` | 317 | [U] font text renderer and glyph geometry |
| `0x3a33c0..0x3a36df` | 799 | [U] font glyph raster/quad renderer dependency |
| `0x3a37c8..0x3a3856` | 142 | [U] font glyph lookup dependency |
| `0x3a3874..0x3a3a70` | 508 | [C] [I] full font-advance/scale/maxwidth/wrap/newline/remaining measurement, no fabricated glyph metrics |
| `0x3a3a70..0x3a3aa1` | 49 | [C] native byte blanks then one newline skip |
| `0x3a3aa4..0x3a3c2f` | 395 | [C] [I] full native wrapping word/blank/punctuation widths and forced-byte-progress |
| `0x3a4b10..0x3a4b28` | 24 | [C] blank codepoints20,9,3000 |
| `0x3a4b40..0x3a4caf` | 367 | [U] font atlas build controller |
| `0x3a4f38..0x3a5008` | 208 | [U] font atlas build dependency |
| `0x3a5008..0x3a5202` | 506 | [U] font atlas build dependency |
| `0x3a5204..0x3a594f` | 1867 | [U] font atlas build dependency |
| `0x3a65c4..0x3a684c` | 648 | [U] splitter merge |
| `0x3a6e84..0x3a6ec8` | 68 | [U] texture pop/header update |
| `0x3a7020..0x3a7199` | 377 | [U] image rectangle primitive index/vertex writes |
| `0x3a719c..0x3a7223` | 135 | [U] primitive reserve/16-bit vertex limit and index/vertex buffer growth |
| `0x3a7268..0x3a7360` | 248 | [U] clip clamp/intersect/push/header→3a8d94 |
| `0x3a73c4..0x3a7400` | 60 | [U] push texture stack and header update→3a8e28 |
| `0x3a8d94..0x3a8e27` | 147 | [U] clip-change draw-command merge/new-command controller |
| `0x3a8e28..0x3a8ebf` | 151 | [U] texture-change draw-command merge/new-command controller |
| `0x3a9258..0x3a931b` | 195 | [U] reset draw list; includes splitter merge when count>1, vector sizes, header/init command |

[C] Audit: 4,372 instruction lines byte-compared, 69 ranges inventoried, 39 implemented helper ranges / 6,103 bytes, including typed required dependencies. [Audit JSON](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/renderer_helpers/audit.json) records every conditional/unconditional direct branch and direct call; [dependency ledger](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/renderer_helpers/dependencies.json) records target/site attribution. [Literal tables](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/renderer_helpers/literal_tables.json) are read directly from the preserved virtual image.

## Checks and integration

[I] Compile all new `renderer_helpers_*.cpp` plus existing `metadata_analysis.cpp`, include renderer_helpers_analysis.hpp (or renderer_helpers_world.hpp for bindings), call `rust_internal_re::check_renderer_helpers_reconstruction()`. No source-tree main/build edit. Standalone scripts/main and logs remain under dump_analysis.

```sh
bash dump_analysis/semantic_reconstruction/renderer_helpers/verify_renderer.sh
RE_ANALYSIS_SANITIZE=1 bash dump_analysis/semantic_reconstruction/renderer_helpers/verify_renderer.sh
```

[C] [I] GCC15/C++20, Wall/Wextra/Wpedantic/Werror, assertions and ffp-contract=off; optional nonrecovering ASan/UBSan. Fixtures cover full-vector string ownership, first duplicates/order/missing keys, UTF8 malformed/truncated/non-BMP/surrogate behavior, exact copied advances/scale/empty/newline/wrap/max-width/remaining, background constructor/frame/write order, current-font binding, positive/negative/stale cache, default/requested image dimensions, failed first-attempt latch, width-zero still reading height, typed missing inputs/cache flags, concrete metadata exact-count resolution and wrapper conversion arguments.

[I] Actual verification logs: [strict](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/renderer_helpers/verification.txt), [ASan/UBSan](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/renderer_helpers/sanitizer_verification.txt). Passing these offline fixtures does not establish a live ABI or finish glyph rasterization.
