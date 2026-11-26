# Draw-list core reconstruction

[I] These new offline owned C++20 types translate native draw-list math/state/geometry. They are not a runtime ImGui/Unity ABI. No frozen renderer/world/frame/build/parent ledger files were modified. No sample instructions, numeric targets or context/executor thunk execute.

## Concrete operations

| Interface | Behavior |
|---|---|
| `draw_core_reset_3a9258` | [C] [I] Merge active splitter if count>1; resize command/index/vertex vectors to zero; restore shared initial flags; zero header/current index/write cursors; clear clip/texture/path; reset splitter current0/count1; append zero56-byte command; fringe scale1. Native capacities remain retained. |
| Clip/texture change controllers | [C] [I] Exact clip16-byte/whole28-byte header equality; source-operand MAXSS clip clamp; native intersection comparisons; stack push/pop; empty texture stack becomes0; nonempty-header changes append a command. Compatible contiguous previous commands can absorb an empty tail only when previous callback is zero. |
| `draw_core_reserve_3a719c`, `draw_core_unreserve` | [C] [I] Native wrapping current-index+reservation threshold >=65536 and flag8, global vertex offset, current index reset and command update/append. Element count changes before ordered vertex/index growth and cursor establishment. Unreserve3a7224 shrinks counts without moving actual write cursors. |
| `draw_core_rectangle_3a7020`, `draw_core_image_3a0168` | [C] [I] Actual four20-byte vertices with literal positions/UV/color; six uint16 indices0,1,2,0,2,3 plus current index, retaining wrap. Alpha-zero exits before changes. Temporary texture push/reserve6+4/quad/pop uses the actual stack; it does not fabricate restoration of a stale header texture. |
| `draw_core_write_relative` | [I] Typed geometry sink for the font domain. Call native reserve first, write actual DrawVertex span and relative uint16 indices, then unreserve unused outer capacity. Updates actual write cursors/current index; supports multiple glyph writes within one native reservation. |
| Channel switch and `draw_core_merge_3a65c4` | [C] [I] Save/load descriptors, switch to0, trim trailing no-element/no-callback commands, merge compatible first channel commands, preserve callback barriers, rewrite offsets, concatenate command/index data, repair final active header and count1. No generic draw-event substitutes. |
| `DrawCoreBuffer<T>` | [C] [I] Literal signed growth selection, native logical sizes/capacities, push/resize/reserve and arbitrary-position command erase. Descriptor copies share bytes with independent metadata; reallocation copies only prior logical size. Unwritten slots are nullopt and stop on reads. |
| Snapshot import and renderer bindings | [C] [I] Copies observed vectors, commands, vertices, header, stacks, splitter and cursor offsets. The current channel descriptor is not dereferenced because it may be stale until the native save. Renderer background reset/texture/clip and image requests mutate keyed DrawCoreStore state. |
| Mesh/render export and allocator wrappers | [C] [I] Exports actual DrawList vertices/indices/offsets plus RenderListInput clip/texture values. Full command callbacks/data remain in owned records.395158/39517c preserve optional-context wrapping allocation counter and typed allocator/free target/user arguments; null free still dispatches. |

## Owned allocation boundary

[I] Native vector storage is adapted to shared owned allocation blocks. The public size/capacity fields model native descriptors; host addresses and native callback pointers are never synthesized. Sharing blocks preserves the splitter descriptor-copy semantics while preventing host double frees. Historical allocation bytes beyond logical size are not fabricated when copied or reallocated. Reaching an unwritten/missing slot, null cursor, malformed size/iterator or analysis capacity limit stops with RendererMissing. These safeguards are analyst additions, not native predicates.

[I] The owned containers replace malloc/memmove/free storage mechanics. Their host physical allocation sizes/addresses are not claimed to match native allocations. The separately exported395158/39517c wrappers model original allocation-counter effects when a consumer supplies copied Snapshot allocator keys and an actual offline allocator callback. The callback receives numeric evidence keys only.

[C] [I] Authoritative live geometry and clip/texture/current-index state live in DrawCoreStore after binding. Snapshot bytes remain imported evidence and background frame/global state. The adapter does not rewrite host vector addresses into a fabricated game ABI. Font consumers must use the owned list or typed state callbacks; reading old Snapshot+88/+98/+34 after drawing would be stale.

## Font geometry contract

```cpp
draw_core_reserve_3a719c(list, maximum_indices, maximum_vertices);
draw_core_write_relative(list, actual_vertices, relative_indices);
draw_core_unreserve(list, unused_indices, unused_vertices);
```

[C] [I] Reserve preserves the native maximum-reservation rollover before any glyph writes. Writing only exact-sized per-glyph reservations would lose that branch. DrawVertex uses existing20-byte storage: position Vec2 at0, UV Vec2 at8, color uint32 at16. Full header state is available as list.header.clip, list.header.texture, list.header.vertex_offset; list.current_vertex and list.flags retain raw numeric behavior.

## Byte/branch ledger

[C] Bounds below use original .pdata entries or directly checked tiny leaf ends. First-RET shortcuts were not used. Standard host memcmp/memmove equality/overlap operations remain separately labeled from claiming entire native CRT bodies.

| Range (end exclusive) | Bytes | Status |
|---|---:|---|
| `0x2cc340..0x2cc34d` | 13 | [C] [I] Vec2 constructor expressed by owned position/UV values |
| `0x2cc350..0x2cc36d` | 29 | [C] [I] four-float constructor expressed by owned clip values |
| `0x2db3a0..0x2db3ad` | 13 | [C] [I] zero16 constructor included in complete command zeroing |
| `0x362efc..0x362f25` | 41 | [C] signed half truncation, wrapping1.5 growth, zero→8 and signed max(required,candidate) |
| `0x37a658..0x37a69b` | 67 | [C] [I] Address vector push/growth |
| `0x37a6f8..0x37a757` | 95 | [C] [I]2-byte index reserve, logical-size copy; owned allocation adaptation |
| `0x37a758..0x37a7b9` | 97 | [C] [I]8-byte reserve, logical-size copy; owned allocation adaptation |
| `0x37a888..0x37a8ee` | 102 | [C] [I]20-byte vertex reserve, logical-size copy; owned allocation adaptation |
| `0x37a9b8..0x37aa19` | 97 | [C] [I]16-byte clip reserve, logical-size copy; owned allocation adaptation |
| `0x37aa1c..0x37aa7a` | 94 | [C] [I]56-byte command reserve, logical-size copy; owned allocation adaptation |
| `0x37ad04..0x37ad34` | 48 | [C] [I] uint16 index vector resize/growth |
| `0x37ad34..0x37ad64` | 48 | [C] [I]8-byte Address/Vec2 vector resize/growth |
| `0x37adc4..0x37adf4` | 48 | [C] [I]20-byte vertex vector resize/growth |
| `0x37ae54..0x37ae84` | 48 | [C] [I]16-byte clip vector resize/growth |
| `0x37ae84..0x37aeb4` | 48 | [C] [I]56-byte command vector resize/growth |
| `0x38a3f4..0x38a3f9` | 5 | [C] source-operand MAXSS preserved in clip clamp |
| `0x38bb84..0x38bb90` | 12 | [C] prior renderer_helpers signed32 index*8/data+8 |
| `0x38bb90..0x38bb9c` | 12 | [C] [I] owned command index stride56 |
| `0x38bb9c..0x38bba8` | 12 | [C] [I] owned channel index stride32 |
| `0x395158..0x39517b` | 35 | [C] [I] [U] optional context allocation counter increment before typed allocator(target,user,size) |
| `0x39517c..0x3951a1` | 37 | [C] [I] [U] nonnull optional-context counter decrement; null still calls typed free(target,user,object) |
| `0x39e324..0x39e333` | 15 | [C] [I] last command index(size-1) stride56; underflow stops analysis |
| `0x39eea0..0x39eea3` | 3 | [C] [I] wrapping logical command/vector decrement; underflow stops analysis |
| `0x39ef2c..0x39ef90` | 100 | [C] [I] growth then exact56-byte command append |
| `0x39f030..0x39f077` | 71 | [C] [I]16-byte clip vector push/growth |
| `0x39f294..0x39f2bf` | 43 | [C] zero all56 command bytes |
| `0x39fd18..0x39fd68` | 80 | [C] [I] zero native command, copy28-byte header, current index offset, append |
| `0x3a0168..0x3a01f3` | 139 | [C] [I] alpha gate, temporary texture, reserve6/4, rectangle, texture pop |
| `0x3a3c30..0x3a3c3e` | 14 | [C] splitter current0/count1 |
| `0x3a65c4..0x3a684c` | 648 | [C] [I] full channel0 switch/trim, header/callback merge, offset rewrite, ordered concatenation/header repair |
| `0x3a6e84..0x3a6ec8` | 68 | [C] [I] texture stack pop, empty→0/header/change |
| `0x3a7020..0x3a7199` | 377 | [C] [I] exact4 vertices position/UV/color and6 low16 indices, write-cursor/current-index updates |
| `0x3a719c..0x3a7223` | 135 | [C] [I] unsigned wrapping threshold65536/flag8 vertex offset rollover, ordered command/count/cursors |
| `0x3a7224..0x3a7268` | 68 | [C] [I] element count and logical size subtraction; actual cursors retained |
| `0x3a7268..0x3a7360` | 248 | [C] [I] ordered clip intersections, source-operand MAXSS and push/header/change |
| `0x3a73c4..0x3a7400` | 60 | [C] [I] texture stack push/header/change controller |
| `0x3a8094..0x3a815d` | 201 | [C] [I] descriptor save/load with shared allocation, current channel/index cursor/header repair |
| `0x3a8d94..0x3a8e27` | 147 | [C] [I] full clip change/bitwise header match/contiguous-command merge and callback guard |
| `0x3a8e28..0x3a8ebf` | 151 | [C] [I] full texture change/header match/contiguous-command merge and callback guard |
| `0x3a8ec0..0x3a8eea` | 42 | [C] [I] zero current vertex and append/update vertex offset |
| `0x3a9220..0x3a9258` | 56 | [C] [I] trim trailing zero-element/no-callback commands |
| `0x3a9258..0x3a931b` | 195 | [C] [I] merge if splitcount>1, logical vector/header/cursor reset, sharedflags/default command/fringe1 |
| `0x3a93cc..0x3a942e` | 98 | [C] [I] arbitrary-position command erase by overlap shift and decrement |
| `0x3a9908..0x3a990b` | 3 | [C] [I] logical vector size assignment; malformed sizes stop analysis |

[C] 36 implemented ranges / 3,852 bytes; 1,129 instruction lines byte-compared against unchanged image SHA256 `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`. [Audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/drawlist_core/audit.json) includes188 direct branch/call sites; [dependency ledger](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/drawlist_core/dependencies.json) accounts for41 direct targets. Prior renderer helper leaf operations are marked separately.

[U] Font/text/glyph/atlas work belongs to the separate font_text domain, with exact remaining priority-A ranges in the released renderer_helpers ledger. This pass does not imply closure of unrelated line/circle/radial/ImGui primitives or a complete live renderer. Actual Unity effects and numeric callback execution remain outside these owned operations.

## Verification

```sh
bash dump_analysis/semantic_reconstruction/drawlist_core/verify_drawlist.sh
RE_ANALYSIS_SANITIZE=1 bash dump_analysis/semantic_reconstruction/drawlist_core/verify_drawlist.sh
```

[I] Export `rust_internal_re::check_drawlist_core_reconstruction()`. Compile drawlist_core_*.cpp; standalone integration fixtures also link released renderer_helpers_background.cpp and renderer_helpers_widgets.cpp. No source-tree main or build edits.

[C] [I] GCC15/C++20 with Wall/Wextra/Wpedantic/Werror, assertions and ffp-contract=off; optional nonrecovering ASan/UBSan. Fixtures verify actual image vertex/UV/color/index bytes, texture command merge and callback barriers, signed-zero clips, inversion/intersection, null/unwritten slots, descriptor sharing/reallocation, outer reserve/write/unreserve, exact65536 rollover/flag-disabled wrap, active-channel switch, multi-channel command/index concatenation/callback offsets, shared-flag/frame reset, allocation/free counters and renderer-background/image integration across two frames.

[I] Actual logs: [strict](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/drawlist_core/verification.txt), [ASan/UBSan](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/drawlist_core/sanitizer_verification.txt).
