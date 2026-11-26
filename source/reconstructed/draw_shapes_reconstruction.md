# Shape geometry reconstruction

[C] New offline shape implementations write actual `DrawCoreList` vertex/index buffers. Numeric addresses select owned lists; they never become executable pointers. No DLL/sample instruction, game process, network endpoint, or live Unity callback was executed. [I] Descriptive shape names identify recovered behavior, not original source names.

[C] `check_draw_shapes_reconstruction()` is the fixture entry point. Build this domain's five `.cpp` files with the existing drawlist core and font math/color implementations. The focused harness is `dump_analysis/semantic_reconstruction/draw_shapes/build.sh`; append `sanitize` for ASan/UBSan. Both use GCC15, C++20, warnings as errors, library assertions, and `-ffp-contract=off`.

## Implemented geometry and integration

| Native ranges, exclusive end | Behavior |
|---|---|
| `3a0294..3a1082`, `39f928..39fcc8` | [C] Non-AA line quads; AA thin/thick/textured polylines; convex fans and transparent fringes. Closed/open edges, atlas line UVs, exact index order, fringe scale and low-word current-vertex increments are retained. |
| `3a01f4..3a0294`, `398758..39878c`, `378a14..378a3d` | [C] Half-pixel line wrapper, path stroke/fill, and path clear after return. Existing path contents are consumed; transparent primitive early returns preserve paths where native does. |
| `3a1148..3a1244`, `3a1244..3a12d8`, `3a12d8..3a140e`, `3a6ec8..3a7020`, `3a3338..3a3391` | [C] Outline/filled/gradient rectangles, white-UV rectangle writes, and triangle fills. Non-AA outline maximum adjusts by literal0.49. Gradient colors remain independent and raw alpha is preserved. |
| `39f7ac..39f872`, `39f874..39f926` | [C] Outline and filled circles; automatic or clamped explicit segments, outline radius minus0.5, duplicate automatic endpoint removed. |
| `3a684c..3a6b37`, `3a6b38..3a6b77`, `3a6b78..3a6e32`, `3a8eec..3a910f`, `3a9110..3a921f` | [C] Automatic/explicit and 48-entry table arcs, reverse/wrapped table indices, adjusted first step, exact endpoint sample, rounded rectangle corner masks and compatibility flags. |
| `3a8cb4..3a8d37`, `3a4588..3a45b4`, `3a6594..3a6599`, `3930e8..39310d`, `3c8918..3c899a`, `3c8e6c..3c8f33`, `3c852c..3c85e7` | [C] Segment recommendation, corner flags, hardware RSQRTSS, literal floor/ceil and polynomial sine/acos. Acos uses the existing literal square-root body through `3c8f34→2e3c88`; line normalization uses RSQRTSS. |
| `35a804..35a8bd`, `35af6c..35b03a`, `35b03c..35b0fb`, `35c25c..35c30b`, `35c88c..35c937`, `35c738..35c889`, `35b684..35b84e` | [C] Polygon/circle/line/triangle/float-rectangle wrappers and health bar. Window marking/reloads, style-alpha conversion, bounds and integer conversion order remain explicit. Exact exception-directory bounds are also emitted in `audit.json`; that file is authoritative if a neighboring padding extent differs. |
| `35c30c..35c578` | [C] Glow layers use literal0.2/index alpha, ignoring original glow alpha after the otherwise-dead first style conversion. Optional black outline follows layers; final base line uses the initially captured packed color. Each draw rereads the retained window's drawlist. |
| `35c578..35c736`, `362270..3622c0`, `3622c0..36230f`, `35d4c8..35d5a9`, `35aa88..35aad5`, `320cd0..320cf6` | [C] Custom ring, filled center and black outline, literal configuration, optional open three-point direction stroke, native repeated degree wrap and scaled/add/subtract rotation grouping. Flags become `(old & ~2)|5` and are restored to the retained window's final drawlist only after successful return. |
| `35d200..35d21d`, `392260..392295` | [C] Current-window mark/reload and style-alpha/color packing fold. |

[C] `draw_shapes_coverage()` exposes all40 translated range records; byte coverage is12695 bytes. The audit also decodes the seven untranslated roots, for4252 checked instruction lines total. This is provenance plus an independently checked branch graph, not a claim that every possible input or FP state was tested.

[I] `DrawShapesShared` is caller-supplied/copied shared draw data. `copy_draw_shapes_shared` reads white UV at+0, circle error+18, table48 at+40, cutoff+1c0, segment bytes64 at+1c4, and optional line-UV pointer+208. No circle table, font, metric, or atlas is invented. `DrawCoreStore` owns live list flags, clip/texture/header, paths, buffers and cursors; snapshot drawlist bytes are never treated as continuously updated runtime ABI.

[C] [I] `draw_shapes_frame_role` handles raw primitive roles `3a01f4/3a1148/3a1244/3a12d8/3a3338/39f7ac/39f874` through typed `UnityValue` arguments. `bind_draw_shapes_frame` composes this dispatch with a fallback for other roles. Alpha/radius gates precede drawlist/shared lookup when native does.

[C] [I] `draw_shapes_world(snapshot,module,store,resources,command,font_image,raw_draw_list,math)` dispatches one command synchronously. Parent roots should emit through `WorldDrawOutput` while native window/style/font state is live. Font/image commands use the separate supplied domain adapter. Raw commands prefer the command's `optional<Address> draw_list`; captured zero remains distinct from absent input. The optional site-key provider is a fallback for uncaptured inputs, not permission to resolve a fresh drawlist after root completion.

[U] `DrawShapesMath` contains only typed `sin_2e0198` and `cos_2dff68` effects. Custom direction execution requires them at the actual reached stage, after ring geometry. Missing cosine preserves the prior sine effect and preceding geometry; any failure preserves changed flags as native has no exception cleanup. `draw_shapes_custom_ring_35c578` is also public for direct typed requests. Incoming custom packed color is not multiplied by style alpha.

## Raw accessor and missing-argument evidence

| Accessor and retained register | Raw call sites |
|---|---|
| [C] `30626f→392198`, `30628a RDI=RAX` | `3062c0→3a1244`, `306316→3a1148` |
| [C] `310fa1→392198`, `310faf R14=RAX` | `3112a1/3114da/31154d/3115bc/3119f8/311a68/311acc→3a1244`, `3112e8→3a1148`, `3117fc→3a01f4` |
| [C] `37b77b→392198`, `37b7b5 RSI=RAX` | `37b84e/37b8e2/37b976/37ba0a/37ba9c/37bb2b/37bbb9/37bc47→3a01f4` |

[C] These keys persist across intervening text/measurement callbacks. The131-entry raw E8 route map is `all_world_shape_routes.json`. Raw rectangle sites pass corner flags0; this adapter does not infer generalized missing flags.

[C] `2fc71b`, `2fcbc9`, `305faf` and `310e4c` call custom`35c578`, distinct from raw`39f7ac` or wrappers`35af6c/35b03c`. At`2fc6ff`/`2fcbad`, `[rsp+28]=XMM11`; at`2fc713`/`2fcbc1`, direction byte`[rsp+20]=0`; radius isXMM6. With directionfalse the helper never consumes yaw. At`305f97`, yaw isXMM11;`305fa4` storesDIL; radius isXMM7. At`310e35`, yaw isXMM6;`310e41` storesDIL; radius isXMM7. Parent owns tracing/capturing root values and emits `WorldDirectionMarkerDraw`; stale `WorldCircleDraw` requests at these sites fail explicitly rather than flattening the helper.

## Exact remaining inventory

[U] The following complete local controller bodies remain untranslated and fail at the reached helper boundary. They are not classified as Unity/foreign effects, and their geometry is not replaced by successful draw-intent records.

| Range | Reached source sites / remaining behavior |
|---|---|
| `35ac38..35af6a` | `30c8cb` and wrappers below:100-segment ring quad/path fills, repeated current-window getter`392ecc`, optionalHSV color, half-alpha boundary lines. |
| `35b0fc..35b507` | `30c47b/30c4b8/30c655`: native rounded meter, clamped fill, pulse branch. `35b3cd→3926ac` yieldscontext+8, read+10; static`3fdac4` advances before typed Unity sine. |
| `35bab8..35bc6f` | `30b19b/30c4f8/30c539/30c69a`: integer meter, min-clamped integer width and positive-width branch. |
| `35b850..35bab7` | `30a7ba`: three-layer colored float meter. |
| `35b508..35b681` | `30c76a`: two-value violation ring wrapper, copied global scale at`3ed668`. |
| `35c938..35cb16` | `30c816`: three-value violation ring wrapper, copied global scale and conditional subrings. |
| `36232c..3627cf` | `30c582/30c5c7/30c6e1`: segmented meter; ceil thunk and four-float interpolation. |

[U] Additional precise local folds reached only by these untranslated controllers: `3612f8..36135a→3904e0..39062b` HSV conversion; `3a1084..3a10ea` four-point path fill; `392ecc..392ee1→35d200` current-window drawlist; `3925a4..3925c9→38bb84` context+48d8 vectorindex0 then`39256c..3925a2`; `3926ac..3926b8` context+8 getter; `2e5a44..2e5a54` ordered clamp; `2d484c..2d486f→2cc350` four-float constructor; `362fc0..362fc5→3c8918` ceil thunk; `362200..36226d` four-float interpolation. These leaf inventories are not credited as completed standalone bodies merely because their operations are understood.

[I] [U] Geometry uses bounded owned vectors/temporary point copies; allocation/growth failure ABI, malformed native memory aliasing beyond the typed copied buffers, native memory corruption and unbounded loops are not emulated. A million-point/path/loop bound stops with `RendererMissing` and retains preceding committed geometry. Host allocation failures remain host failures. Hardware RSQRTSS is used on an SSE host; CPU approximation, MXCSR/FTZ/DAZ, exception flags and NaN payloads are not claimed portable. Float arithmetic grouping and unordered branch destinations are preserved with contraction disabled. Default whiteUV/tables must come from copied/supplied evidence.

## Verification

[C] Fixtures exercise actual positions/UVs/colors/indices, AA thin/thick/texture/fan topologies, rollover, native low16 index increments, path aliases, shared-data offsets, missing UV after index writes, transparency gates, NaN thickness/radius/counts, zero-width arcs, automatic-count overflow/clamp, rounded corners/reverse arcs, capturedzero/raw keys, wrapper marking/style alpha, health-bar CVTT64-low32 behavior, glow layering and custom direction callback order/partial failure/state changes.

[C] Byte audit: `dump_analysis/semantic_reconstruction/draw_shapes/audit.py`, `audit.json`, `dependencies.json`, fresh native `.asm` excerpts. [C] Semantic decisions and branch-to-fixture notes: `dump_analysis/semantic_reconstruction/draw_shapes/SEMANTIC_REVIEW.md`. [U] No live rendering, device backend, game integration or sample execution was tested.
