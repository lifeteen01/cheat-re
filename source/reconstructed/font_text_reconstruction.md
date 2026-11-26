# Font, text, glyph and atlas reconstruction

[C] [I] These analyst-authored C++20 files translate the supplied DLL's font/text controllers into owned fonts, atlas pixels and actual drawlist geometry. They do not execute numeric targets or any sample instruction. The inputs are copied state; no live rendering, game/OS/Unity calls, context fabrication or executor is supplied.

[C] Evidence is the preserved virtual-layout `dump_analysis/unpacked/cheat.unpacked.dll`, SHA256 `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`. RVAs equal offsets in this preserved image. Fresh disassembly, `.pdata` bounds, instruction-byte comparisons, branches, call classification and an independent binary32 scalar oracle are under `dump_analysis/semantic_reconstruction/font_text`. No input was modified.

## Concrete entrypoints

| Native range, end exclusive | Translation and significant branches |
|---|---|
| `36135c..361bca` | [C] [I] Four style selectors, invalid-size retention of the current font, family-specific size overrides/output globals, measurement/centering, eight black outline positions and final color. Current window marking and each drawlist/font/text reload remain concrete. |
| `361bcc..362116` | [C] [I] Uncentered counterpart, including invalid-size initial-record+10 font, the otherwise-unused measurement, style4 worker+8/size10 override and nine passes. |
| `3a31f8..3a3335` | [C] [I] Alpha early return before acquisition, implicit-NUL/explicit end, empty early return, independent shared font/size defaults, native MAXSS/MINSS clip intersection and actual raster dispatch. |
| `3a33c0..3a36df` | [C] [I] Lookup/advance rebuild, last duplicate wins, page bitmap, tab synthesis/reuse, space/tab visibility including fallback, ellipsis/dot selection, configured/alternative/last-glyph fallback and negative-only advance replacement. NaN advances survive. This routine builds lookup tables; it is not the rasterizer. |
| `3a37c8..3a3856` | [C] [I] Custom atlas rectangle to min/max UV, with zero-extended 16-bit fields and 32-bit extent addition. This routine does not find glyphs. |
| `3a4b40..3a4caf` | [C] [I] White, line and shape mutation order; custom-rectangle glyph append; dirty-font lookup rebuild; ready byte last. Missing custom font/atlas stops explicitly with preceding writes retained. |
| `3a4f38..3a5008` | [C] [I] Four white pixel stores in native bottom-right/bottom-left/top-right/top-left order, alpha8 preference/RGBA32 alternative, white center UV. |
| `3a5008..3a5202` | [C] [I] Flags&4 gate; all64 baked line rows, transparent-white RGBA packing, centered extents and half-row UVs. Native unsigned x conversion retained. |
| `3a5204..3a594f` | [C] [I] Rounded-box and circle distance images, literal approximate length/power/cosine, optional15-tap separable blur, alpha/RGBA conversion, rounded3x3 UV slices with reversed final edges, padded/clamped circle copies and inset circle UV. |
| `3a792c..3a7f71` | [C] [I] Actual text rasterizer: integer-truncated origin, above-clip line skipping, >10000-byte no-wrap scan optimization, byte-count maximum outer reservation, wrap/newline/CR/UTF8 handling, glyph lookup/fallback, visibility, colored-glyph tint, horizontal unordered rejection, ordered fine-clip interpolation and unordered vertical acceptance, actual vertices/indices and unused reservation shrink. |

[C] All ten ranges match their `.pdata` ends. No part of these primary ranges remains represented by an event list or an unresolved sample-local callback. [I] Allocation/container representations differ from the native ABI as explained below.

## Interfaces and ownership

[I] `font_text_analysis.hpp` is the public interface. `FontTextStore` owns fonts/atlases keyed by numeric addresses. `copy_font_text_font` reads advance/lookup/glyph descriptors, glyph40byte records, the actual fallback pointer identity and font fields. `copy_font_text_atlas` reads pixel allocations, rectangle32byte records, font keys and baked UV/state fields. No glyph dimensions, font pointers, returns, defaults or UVs are generated to replace missing copied data.

[C] [I] `font_text_find_3a4554` returns no fallback; `font_text_find_3a4520` uses the stored fallback. `font_text_add_glyph_39ff7c` implements optional advance clamp, truncation-based pixel snap, centered x adjustment, spacing, visibility, dirty state and wrapping surface accounting. Lookup/visibility/resize helpers are folded into these owned values. Native low16 lookup indexes and sentinelFFFF remain distinct; repeated glyph codes overwrite earlier indexes.

[I] `FontTextSink` exposes typed clip/shared/reserve/write/unreserve operations. `bind_font_text_draw_core` binds them to the separately reconstructed `DrawCoreStore`, writing actual `DrawVertex`/uint16 index buffers and command counts. Clip/flags/current vertex/cursors remain authoritative in that owned drawlist. Snapshot drawlist bytes are not treated as an updated native ABI. Shared default font/size are supplied in a separate map keyed by drawlist address. The map and stores must outlive the bound callbacks.

[C] Text reserves six indices and four vertices **per remaining UTF8 byte** in one outer call, before emitting visible quads. Unused slots are removed after writes. A reservation can therefore cause native65536 rollover even when most characters are invisible. Per-quad allocation would change that behavior. The binder preserves it through `draw_core_reserve_3a719c`, relative writes and native3a7224 unreserve.

[C] [I] The controller functions take a mutable owned `Snapshot`, module base, existing `FrameMenuState`, font store, sink and `FontTextControllerRequest`. Text and position remain copied numeric addresses. Font families and deferred size requests reuse `FrameMenuState.fonts` and `font_buckets[1]`; cache hit/miss/deduplication and canonical requested sizes are concrete. Size globals and window+b8 are written into the copy. Native `2cd7ec` chooses inline/heap bytes by capacity>15 and scans to NUL; the stored string length is deliberately ignored here. The separate existing `renderer_string` retains its stored-length semantics.

[C] [I] `FontTextControllerRequest.color_address`, when present, reads native float4 color for the final pass and uses the literal clamp/round/channel packing in `font_text_color_2ef80c`. Otherwise `color` is an explicitly supplied already-decoded value of that operation. Outline color is the observed constructor(0,0,0,255) result. `copy_font_text_worker_35d31c` imports an existing32byte worker. [C] Parent-added `font_text_worker_35d31c` also translates the cold path: request32 owned bytes, perform the identity constructor, store the returned address including zero, and return it. No allocated byte is initialized or invented. The controller's `FrameMenuState` is supplied initialized state, not an invented allocation result.

## Byte and semantic audit

[C] `audit.py` freshly decodes3022 instruction spans across51 ranges and compares1891 archived spans to the actual image bytes. It inventories269 conditional/unconditional jumps and81 distinct direct call targets; `dependencies.json` classifies every target as a concrete fold, reused renderer/drawlist implementation or declared owned-container/allocation adaptation. Byte matching is provenance, not a semantic equivalence proof.

[C] The scalar oracle independently rounds every cosine polynomial step to binary32 and reads the15 blur weights from the preserved DLL in native table order `2acf10,2acf30,2acf20`, followed by the final three words. Cosine(pi/4) is `3f3504f2`, not the host-library cosine value. The shape power function implements native high-double-word approximation3c8da8, not `std::pow`.

[C] Manual branch review specifically checked native `JB` unordered horizontal rejection at3a7c71/3a7c8e, fine-clip vertical `JB` unordered acceptance at3a7de6, ordered wrap/newline clipping, fallback-enabled visibility clearing, existing ellipsis-step reuse, signed/unsigned conversion sites, and atlas ready/dirty/write order. The nine outline positions and per-pass reloads were reviewed against both controller bodies.

[C] `check_font_text_reconstruction()` has no `main`. Meaningful fixtures exercise copied native layouts and lookup/measurement consumers, duplicate/tab/fallback/ellipsis/NaN behavior, text defaults/early returns, actual geometry/topology/UV/color, CR/LF/wrap/UTF8 byte reservation, large-text skipping, outer-reservation rollover, alpha/RGBA atlas stores/lines/shapes/blur, literal math bits, custom glyph metrics/finalization/failure order, cached font selection, window/size writes, centered/plain pass order and drawlist reloads. Four independently compiled scratch mutations fail the fixtures: wrong outer byte count, colored-glyph tint removal, rounded UV reversal removal, and ordered-only horizontal rejection.

[C] Focused GCC15.2 C++20 checks use `-Wall -Wextra -Wpedantic -Werror`, `_GLIBCXX_ASSERTIONS`, `-ffp-contract=off`, and pass both strict and AddressSanitizer/UndefinedBehaviorSanitizer runs with nonrecovering errors. Scratch build/driver/oracle/mutations are under `dump_analysis/semantic_reconstruction/font_text`. The parent owns combined build/ledger integration.

## Exact remaining limits

| Range/boundary | Status and remaining work |
|---|---|
| Ten primary ranges above | [C] [I] All data/control branches translated. No omitted primary interval. Full native ABI and allocation alias equivalence are not asserted. |
| `35d31c..35d34d`, allocation at35d32f → `38a3c4..38a3c9` →3c8c70 | [I] [U] Cold/warm local allocation control is concrete through an owned allocator callback; zero results are stored. No worker contents are fabricated. The copy-only helper requires readable supplied32bytes; raw allocator execution and invented font pointers remain excluded. |
| `364aec..364ba2`, bucket-index leaf `3367b8..3367c0` | [C] [I] Size-cache hit/miss/request dedup/result branches implemented with existing `FrameFontBucket`. [U] Exact RB-tree/vector header/allocation mechanics through364a9c/2d86b8/2cc534/2d87b0/2d7d90/3360f8/3360cc/2d4da0 are adapted, not original container ABI translations. |
| Native vector helpers39f630/379578/38bb78/39f604/3a9330/37ad94/38bb9c/38bb84/3a97b8/3a96cc; CRT3c8d70/3c8cf0/3ca904 | [I] Explicit owned vectors and bounded fill/search/NUL scan implement the consumed operations. Native allocation addresses, capacity timing, stale-pointer relocation, aliasing/corrupt descriptors and SIMD/CRT exception behavior are not emulated. No sample-local raster operation is hidden behind them. |
| Stack temporary probes2cd050 in3a45b4/3a5204 | [I] Bounded owned buffers replace native scratch stack allocation. [U] Native stack overflow/probing/allocator failures are outside the model. No executable stack is fabricated. |
| Copied inputs and numerical environment | [I] [U] Fonts, glyph metrics, atlas dimensions/rectangles/pixels and valid shared state must be supplied. Font-file parsing and metrics generation are outside these consuming entrypoints; no missing producer is labeled Unity/foreign. Floating-point exception flags, rounding/denormal modes, NaN payload propagation and corrupted/overlapping native allocations remain unverified. |
| Cross-domain integration | [U] Parent must add these new files/check to its combined build and bind stores for world/frame consumers. Focused checks do not prove a complete frame pipeline or matching game ABI. |

[I] Analysis safeguards stop instead of reading/writing unavailable bytes:1MiB NUL scans, bounded copied vectors/pixels, shape temporary side<=4096, finite integer-conversion emulation, explicit zero/uninitialized worker failure and an iteration bound on potentially nonprogressing copied text. These are analyst safeguards, not attributed native checks. Prior observable owned writes are retained on failures; no transaction rollback is invented.

[C] Builder review corrected the missing-atlas prefix in custom-glyph finalization: native `3a00ff` acquires the atlas and `3a0108` reads padding before dirty is written at `3a010d`. The owned missing-metrics branch now retains the appended glyph and the old dirty value. Separate false/true dirty fixtures cover both prior states; later raw height/width failures are handled by the staged builder adapter.
