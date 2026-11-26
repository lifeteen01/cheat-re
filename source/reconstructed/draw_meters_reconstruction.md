# Meter geometry reconstruction

[C] All seven previously outstanding meter controllers now produce actual owned vertex/index buffers through the released drawlist core and shape implementations. They are not draw-intent events. Numeric addresses remain data keys; no sample/game instruction, numeric function pointer, executor, network endpoint or live Unity function was executed.

[C] The new implementation is confined to `draw_meters_*` files. Existing shape, font, world, Unity-math and build/ledger files were not edited. [I] Names such as ring, pulse, meter and tension are descriptive roles, not recovered original source identifiers.

## Concrete native closure

| Native range, exclusive end | Implemented behavior |
|---|---|
| `35ac38..35af6a` | [C] MINSS value/maximum selection, ordered negative clamp, ratio, inset radii and100 fixed segments. Each segment performs four separate Sin/Cos pairs in native order, rereads the input color, optionally computes HSV rainbow color, then acquires the current-window drawlist independently for a filled quad and two half-alpha edge lines. Existing paths are consumed as native does. |
| `35b0fc..35b507` | [C] First-viewport foreground list, rounded background, positive-value clamped fill with literal integer packing, border, and ratio>0.5 pulse. Copied static phase at`3fdac4` is advanced by twice context+18 before the typed Sin call; two pulse outlines follow. |
| `35bab8..35bc6f` | [C] Quarter palette, black background, wrapping signed(width-2), CVTT32 fill width, signed minimum and positive-width branch, integer inner offsets/dimensions. |
| `35b850..35bab7` | [C] Float quarter palette, outer border at position-4.2 and size+8.4, supplied background, and untruncated float inner width. The background pointer is read after the first outer rectangle. |
| `35b508..35b681` | [C] Copied scale at`3ed668` times literal485.47, clamped inner radius, midpoint, and independently positive first/second ring requests. First is rainbow; second is raw cyan with alpha192. |
| `35c938..35cb16` | [C] Copied scale and literal8.44568157 offsets. Third ring is unconditional, then positive first ring, then positive second ring. First two are rainbow; final raw cyan alpha192 ring clamps its inner radius atzero. |
| `36232c..3627cf` | [C] Exact integer geometry, ratio clamp, literal ceil/count conversion, rounded background, active segment fills using native interpolation and final remaining-width branch, fixed gray50 separators and gray70 border. Repeated reads use the retained native window. |
| `3612f8..36135a`, `3904e0..39062b`, `3c8a6c..3c8bd0` | [C] HSV wrapper, all six sectors and default/unordered branch; native float remainder via integer significand/exponent operations. Zero saturation bypasses hue processing; invalid remainder uses product/product. No host fmod is used in production code. |
| `362200..36226d`, `362fc0..362fc5`, `3c8918..3c899a` | [C] Four-float interpolation, ceil thunk and literal bitwise ceil. Alpha interpolation and floating operation grouping remain explicit. |
| `3925a4..3925c9`, `39256c..3925a2` | [C] Context+48d8 vectorindex0 viewport, decoded `##Foreground` name and list index1, dispatched to the existing concrete`392dcc` allocation/reset/texture/clip/frame controller. |
| `38c6f0..38c712`, `39eb2c..39eb52`, `39e77c..39e7ac`, `2ce59c..2ce5a4` | [C]13-byte literal foreground name copy, conditional decode predicate and XOR((i%49)+55). Both encrypted and already-clear paths are represented; decoded storage remains an owned adapter. |
| `392ecc..392ee1`, `3926ac..3926b8`, `35d200..35d21d` | [C] Current-window drawlist/mark/reload and context+8 getter. `392ecc` is a current-window accessor; it is distinct from background`392198` and foreground`3925a4`. |
| `3a1084..3a10ea`, `35c738..35c889`, `392260..392295`, `2d484c..2d486f`, `2e5a44..2e5a54` | [C] [I] Required four-point path fill, float-rectangle/window/style fold, color wrapper and ordered clamp are concrete through owned values and released shape/font APIs. |

[C] The new audit inventories27 ranges/6802 bytes,1579 decoded instruction lines,215 direct branch/call sites and14 original world E8 routes. Some shared folds overlap previously credited shape coverage; these totals must not be added as disjoint new bytes. [C] Every direct dependency is either implemented here or names a concrete released implementation in [dependencies.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/draw_meters/dependencies.json). There are no remaining untranslated local bodies in the seven-controller dependency inventory.

## Integration contracts

[I] `DrawMetersContext` borrows the Snapshot, authoritative `DrawCoreStore`, supplied/copied `DrawShapesResources` and a mutable `DrawMetersBackend`. Its lifetime must cover any bound callback using it. The existing renderer uses module-RVA Snapshot keys, including global`405b28`; this domain follows that convention.

[C] [I] `draw_meters_world(context,command)` returnsfalse only for another domain's command type. Its14 supported native source-site/helper pairs are validated. `bind_draw_meters_world(context,fallback)` provides a synchronous `WorldDrawOutput` consumer; the fallback handles shapes/font/images. Use it while root window/style state is live. Meter helpers perform their own native current-window/foreground accessors; an inherited raw command`draw_list` field does not override them.

[C] [I] `WorldNativeMeterDraw.integer_geometry` must contain exact signed x,y,width,height for`35bab8` and`36232c`. Missing data stops explicitly; the adapter does not reconstruct integers from float values that may already have lost precision. Parent world roots populate this field before float conversion. `WorldRingMeterDraw.filled` is a compatibility field for the native rainbow/HSV override boolean; it does not select whether the ring is filled.

[C] [I] `draw_meters_frame_role` and `bind_draw_meters_frame` consume seven wrapper RVAs. Typed argument slots follow native ABI order, with unused receiver atslot0. Integer/segmented helpers take int32 x,y,width,height; remaining scalar geometry values arefloat. Native color pointers are Address values copied from Snapshot at the actual reached stage. This preserves input-color changes during typed trigonometry callbacks and delayed background-color reads.

| Role | Slots after unused receiver |
|---|---|
| `35ac38` | float x,y,value,maximum,outer,inner; Address color; bool rainbow |
| `35b0fc` | float x,y,value,maximum,width,height |
| `35bab8` | int32 x,y; float value,maximum; int32 width,height |
| `35b850` | float x,y,value,maximum,width,height; Address background color |
| `35b508` | float x,y,first,first_max,second,second_max |
| `35c938` | float x,y,first,first_max,second,second_max,third,third_max |
| `36232c` | int32 x,y; float value,maximum; int32 width,height,segments |

[C] [I] `DrawMetersBackend.foreground` uses the released `RendererBackgroundBackend`. Compose reset/texture/clip with `bind_drawlist_core_background`; provide owned literal-name storage and the required typed allocator. Allocated keys must name mapped copied Snapshot storage, and `DrawShapesResources` for a newly allocated list must be supplied/imported by the owner. The foreground wrapper itself performs native lazy-list construction, frame gating and all returned-key consumption through the existing controller. No native allocation is executed.

[C] [I] [U] `bind_draw_meters_math(image,environment,effects)` calls the released `unity_math_scalar` wrappers for`2e0198` and`2dff68`. It reuses their actual metadata/cache/context/argument-store logic, then consumes the explicitly supplied actual Unity result. It does not duplicate cache logic or substitute host sine/cosine. Missing actual results retain prior wrapper stores and meter geometry and propagate typed failure. Context observation remains detection-only.

[C] Ring and pulse primitives preserve raw colors. Integer/colored float-rectangle wrappers apply current style alpha through their native wrapper fold. Input color is loaded before a rainbow override, even when that override discards its values.

## Verification and limits

[C] `check_draw_meters_reconstruction()` verifies actual geometry counts, positions, indices and colors; all integer quarter thresholds; exact integer wrapping; partial failure after geometry/phase stores; HSV sectors/NaN/zero saturation;10,000 seeded finite bitwise remainder comparisons against an independent host fmod oracle; ring800-call order, live color/window mutations and transparency gates; segmented count/gap/final-width branches; foreground same-frame reuse and lazy allocation through concrete core adapters; and cached Unity-math binding stores/failure.

[C] Focused strict and sanitizer commands are in [build.sh](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/draw_meters/build.sh). Fresh original-byte/PE-exception/branch evidence is in [audit.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/draw_meters/audit.json), generated by [audit.py](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/draw_meters/audit.py). [C] The original DLL hash remains`ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`.

[I] [U] Owned container allocation, literal-name storage and typed copied inputs adapt the native ABI. Arbitrary corrupt/overlapping native pointers or uninitialized stack bytes are not fabricated. `DrawMetersBackend.maximum_segments` is an explicit analysis bound, separate from native counts; exceeding it stops while retaining committed output. Hardware/host MXCSR exception flags, FTZ/DAZ, NaN payload portability and Windows/game/device rendering are not claimed. Font metrics/atlas values come from supplied/copied shape resources. Actual Unity scalar results and allocator leaf values remain external typed inputs; no required local meter controller is left as a foreign callback.
