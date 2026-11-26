# World ESP analysis reconstruction

## Component-to-Transform correction — November 24, 2026

[C] The player iteration now preserves the original `30ec1e -> 315a54`
Component.get_transform call, the returned-pointer validity guard at `30ec29`,
and only then `30ec40 -> 3747d4` position retrieval. The previous implementation
incorrectly sent the entity key directly to the Transform position callback.
`WorldPlayerRunBackend::component_transform_315a54` is a required typed boundary;
absence stops at the actual call site, and an invalid returned Transform skips
that player without retrieving its position. Distinct owned entity/Transform keys,
receiver order, the invalid result, and the missing callback are regression-tested.

[I] The owned scene binds this boundary through the actual reconstructed cached
`game_runtime_wrapper(315a54)`, not a native function pointer. Its final
Component-to-Transform result is explicitly owned data. Warm cache targets are
numeric evidence keys; neither original instructions nor live Unity addresses are
called. [U] Matching metadata lookup, native wrapper calling convention and live
Transform lifetimes remain unverified.

[C] [I] Draw-producing APIs accept `WorldDrawOutput`, a value handle implicitly constructed from the original command vector. An optional consumer runs synchronously at each draw, preserving live window/style/font state and prior effects on failure. `bind_renderer_world_output()` supplies the concrete background accessor. Each command has an optional captured numeric `draw_list`, including an explicitly captured zero. Record-only use without a consumer remains an analysis trace and does not claim raster execution. Copies share callback state as well as the output stream; mutable callback counters remain ordered across nested calls and successive capture groups.

[C] Background lists are captured once at `30626f`, `310fa1`, and `37b77b` and reused across each tooltip/corner group, including intervening text/measurement effects. The three older custom-circle records at `2fc71b`, `2fcbc9`, and `305faf` now retain the distinct direction-marker role and their false direction gate. Their yaw is not consumed on that path. A successfully executed icon callback is recorded without executing it a second time through the synchronous consumer. [C] Regression fixtures verify capture timing/reuse, captured-null distinction, partial consumer failure and callback append safety.

[I] These are analyst-owned offline C++20 values, Snapshot reads and typed commands. They are not declarations of a game/Unity ABI. The public header includes `entities_analysis.hpp` directly. [C] The original virtual-layout DLL and assembly inputs are unmodified. No sample instructions were executed, uploaded or connected to an endpoint.

[C] [I] The classifier accounts for every one of **101 native world-record append sites**: 102 ordinary rules cover 100 category IDs, and collider append sites add IDs77/78 (75 repeats), for **102 distinct world category IDs**. Record insertion now occurs between native nearest/collider/cache phases, with collider records inserted immediately after the native side effect. World worker `2fb72c..307637` has an ordered callable controller and concrete decoders for every routed category, including all four formerly omitted rich bodies. The drawing routes intentionally leave collider-only77/78 without a display route.

[C] [I] `replay_world_overlay_3098a4` now composes the entire overlay root in native order, including auxiliary windows/status, four weapon simulation branches/cache, player iteration/inventory tooltip, labels/alerts/view/skeleton, and handcuff/history tail. All three root ranges have concrete controller/calculation coverage. [U] This is not a complete pixel renderer: sample-local ImGui/font/icon/raster callees and native container internals remain separately attributed dependencies. Six label-widget settings are copied typed inputs. True Unity/game calls remain typed required boundaries; missing required data/callbacks throw `WorldEspMissingInput` at the observed call site.

[U] The simulation format at `30d722` passes three doubles for four conversions, and `30e429` passes one. Their omitted values come from retained native argument slots/registers. This interface requires copied fourth/remaining-three argument bits before hashing/cache publication, including when trajectory drawing is disabled. It does not invent zero values. Complete reconstruction of the full renderer and propagation of all caller scratch states remains open.
## Concrete interfaces and evidence

| Interface | Recovered behavior |
|---|---|
| `classify_world_31acd0`, rule table, `replay_classifier_31acd0` | [C] [I] All ordinary predicates, literal IDs/labels, signed-byte class hashes, prefab substrings/exclusions/options, ore outer gate, workbench priority; ScientistNPC2-before-tag6 ordering, tracked-root append and player filters. Copied collection/identity/validity inputs replace matching game readers; owned vectors replace allocation. |
| `classifier_side_effects_31acd0` | [C] [I] Nearest ore/tree/two-lock publishes/clears; trap/wall/barricade/landmine/corpse collider sizes and restoration maps; immediate extra record appends; SAM ID cache, seed/position, persistence and notification. Unity component/bounds/property calls are typed dependencies. |
| `insert_world_record_3176bc`, `insert_player_record_3177b4`, `nearest_world_object` | [C] Entity-key dedup precedes validation and preserves the first category/label. World validation restores a marked collider with literal false. Five nearest selectors preserve raw predicates, distance truncation, later-on-tie replacement and preferred-player rules. |
| `closest_world_bounds_365f90`, `entity_bounds_distance_3666b0` | [C] Three observed axes/extents, y+x+z dot order, clamp/all-inside behavior, shared sample root. Game bounds result is copied80 bytes; center words4..6, extents7..9 and axes13..15/16..18/10..12. Unordered projections may return the original point. |
| `replay_world_worker_2fb72c` | [C] [I] Fishing, looked-at lock cache, saved SAM/stash drawing, stash save, per-record validity/position/projection/distance, category decoding, radar/tooltip, common crate interaction, visible labels then chams. Failed visible-label gates follow30762b→303953 and bypass chams. Metadata/collection setup and game results are inputs. |
| `decode_world_category_2fb72c` | [C] Concrete field/flag/status/health/ID/timer bodies for12/15/16/17/22/49/50/66/75/76/84/85/86 and all13 animal routes. Heli linked health/global alert, crate fire/open status, SAM dynamic masks and cupboard signed `/60` and `/1440` formatting. |
| `decode_world_turret_3012f9`, `world_item_name_316574` | [C] Full85-ID name table; turret last-nonempty inventory name, related count/flags/health filters, zero-quaternion rotation polynomial, projection/ray mask0x40a10000/query0, health/status/line rows. Unity Physics.Raycast remains a typed boundary. |
| `decode_world_owner_category_3024e7` | [C] Corpse eight-corner/twelve-edge geometry independent of display toggle; distance<10 gate; all-eight projection requirement; inventory-count color override; separate corpse/backpack owner chains and label formatting. |
| `encode_world_name_393c38`, `streamer_world_name_3661ac` | [C] UTF8 encoding of each UTF16 WORD independently, including separate surrogates,512-byte capacity and skipped oversized encodings; cached generated names with alternating literal alphabets and actual Unity Random.Range arguments. **This differs from `2d7e18`**, which copies each WORD's low byte and preserves embedded converted NUL. |
| `read_world_dropped_366724_36679c`, `decode_world_dropped_303718` | [C] Item amount/category/short/display chains; m16a2→M-16; eight signed-hash trash names and prefab seed/torch substrings; ordered collect-option/category filters, backpack pickup exception and separate option14 display rule; native count rows, weapon-vs-item styles and battle gates. Includes303953 continuation. |
| `replay_world_interaction_317928` | [C] Complete local state/range/cooldown/mode controller. Distance gate2.9 rejects unordered; mode2 sets loot-request latch before timer; strict deadline uses two time samples and0.035; literal RPC names and mode0 visibility mask0x48a12001. Unity time/physics/RPC are required callbacks. |
| `replay_world_fishing_2fb7fc`, `fishing_status_318bb8` | [C] [I] BoxStorage key96 capture, ID dedup/insertion order, count/bait/rod map lookups, ordinal/config priorities, shared interactions, throw-position/status labels, strict50-unit box labels and repeated projections;13 literal status strings. Key-edge and looked-at identity are copied inputs. |
| Cached world, scalar routes, radar, tooltip, labels, shaders | [C] [I]100 draw routes; literal config VALUE addresses and selected CFG shared suffixes; seed/map/local gates; fixed cached13-step labels; sample-root radar normalization/rotation, icons/distance; hover-radius predicate, measured/clamped tooltip; compact five rows/bar arguments; renderer-index predicates; seven shader slots and shader→`_b`→`_a` ordering. Native final shader selection reads global ItemChamsIndex3ef008. [U] Raster/font/icon internals and bitwise host-trig equivalence remain open. |
| `draw_world_crosshair_3643b4`, overlay controls/saved positions | [C] [I] All five crosshair modes, rectangle/rotating spoke/hook calculations and strict rotation reset; battle/save key state, zero clears, saved labels and marker distance/radius. Unity trigonometry and frame delta/key edge results are explicit. |
| `select_world_overlay_player_3106c9` | [C] [I] Wounded/safe/sleep/dead/friend/enemy/visibility/outside/range gates and exact color override order. Only registry kind1 can establish friend status because2cd32c is zero. Wounded color uses raw flag0x40, not the combined model-wounded predicate. |
| Skeleton tables and `draw_world_skeleton_30f089_31336a` | [C] Separate literal19-bone/18-edge paths; NPC starts47/46/14, player starts53/52/20; both end bone0. Query/project order is retained. Any projection failure prevents all segment draws. |
| Facing quad, offscreen/radar, corner and player label helpers | [C] [I] Camera-facing basis and quad arithmetic; offscreen point integer conversion/wrap, circle/triangle, radar rotation/direction; eight corner edge interpolations; five label sides, counters, spacing/font/icon key/size/fallback; six text roles and team-zero behavior. [C] [I] Font selection is a required callback over copied current-font/global state. The helper captures nominal size+14, writes line-size/nominal to+64, measures with actual font/FLT_MAX/zero-wrap, and restores current-font and current-nominal/original-nominal after text or successful icon. [U] Native widget lookup and the font-selector/raster callees remain untranslated. |
| `draw_world_tracers_30ab62`, violation bar arguments | [C] [I] Stable per-point time expiry, whole-trace empty erase, projection/glow argument order. Distinct native meter argument types preserve each native helper rather than substitute a generic invented bar. [U] Their primitive raster implementations remain untranslated. Violation type1/2 spacing is20 from the unconditional30ae3b load. |
| `world_floor_320c2c`, `simulate_world_31885c_3185a0`, simulation drawing | [C] Literal exponent/wrapped-doubling/repeated-subtraction floor; drag and gravity-only loops, first ray sample-root-zero distance, full velocity direction,0.03125 update order, hit normal+0c and distance+1c behavior. Four50-point hit-ring/path bodies retain repeated projections, zero-normal fallback and omitted final path segment. [C] [I] `replay_world_simulation_worker_30cf87` implements all four native branch priorities, repeated attachment reads, speed/drag/gravity/qualification calculations, hash cache lookup/construction with shared3,601-table builder, and enabled-draw dispatch. [U] Omitted native format arguments remain explicit copied scratch inputs. |
| `replay_world_overlay_3098a4` | [C] [I] Crosshair/FOV/radar window/decorations precede local/camera/transform guards. Battle/save/code/fishing/tracers/time/status/sign/auth, violation/teleport/warning windows, simulation/player loops and tail run in native order. Raster commands retain actual native helper arguments. |
| `replay_world_player_overlay_30ea17` | [C] [I] Player validity, handcuff accumulation, bones/quad, special-NPC health/range/snapline, general filters/looking/radar/key transitions, six labels, view and skeleton; per-frame handcuff/tooltip reset. Snapshot name/identifier/item chains preserve separate encoding rules. Required widget settings/game outputs are explicit. |
| Inventory tooltip and player actions | [C] [I] Exact adaptive scale, Hotbar/Clothing headings, invalid-slot compression, condition strips, images/count shadows/separator; one tooltip per frame. Looking/name/held/aim warning order, friend/enemy keys, selected snapline and three-line player-view geometry. |
| Auxiliary windows and status | [C] [I] Literal positions/conditions/reset latches/style offsets/flags/current positions; code expiry count capture, Unity Round/time thresholds, desync/status spacing, sign dimension/class branches, authorization/key/code/crafting labels, teleport distance/count/path. [U] ImGui primitives remain sample-local dependencies. |
| Handcuff tail and registry/grid refresh | [C] [I] Signed index promotion/unsigned modulo,2.8 range/flag gate, separate0.05/1 timers, ordered four RPCs;1.2 periodic registry/history/default insertion and rename transitions; literal team0; terrain-grid math and upward visibility `[Inside Base]` suffix. Hood inventory and actual terrain/physics data are required inputs. |

[C] Hashing sign-extends bytes. `2df5dc` is inequality, including unordered components. `2cd32c` is literal zero; no logic reader is attributed to DisablePlayerCulling. All vector magnitudes use shared `sample_sqrt_2e3c88`, including its non-IEEE zero result. Projection carries **four floats** in `ProjectionBounds`. Bone/category/option/ID meanings remain numeric where not proven.

## Complete root range/dependency ledger

[I] End addresses are exclusive. Every byte receives a disposition; this does not promote `[U]` bytes to completed translation. [C] First-RET shortcuts were not used: world30762b..307637 and classifier SAM31f613 are included, along with post-first-RET helper branches used by the name encoder and vector inequality.

| Range | Bytes | Disposition |
|---|---:|---|
| `0x31acd0..0x31aeca` | 506 | [C] [I] guard/collection/identity copied inputs and existing readers |
| `0x31aeca..0x31e04e` | 12676 | [C] [I] all literal classifier rules; nearest publishes interleaved at native insertion phases |
| `0x31e04e..0x31eedb` | 3725 | [C] [I] collider math/maps/restoration and immediate append order; Unity component calls explicit |
| `0x31eedb..0x31f1fb` | 800 | [C] [I] Landmine/SAM routing and SAM dedup/save; Unity seed/position inputs |
| `0x31f1fb..0x31fa76` | 2171 | [C] remaining literal rules/workbench priority |
| `0x31fa76..0x31fdfb` | 901 | [C] [I] Scientist/player/tracked ordering, nearest melee, existing player filters |
| `0x31fdfb..0x31fe4a` | 79 | [C] [I] owned span traversal and side-effect-free epilogue |
| `0x2fb72c..0x2fc281` | 2901 | [C] [I] ordered fishing cache/change checks/interactions/labels; key edge and game getters copied inputs |
| `0x2fc281..0x2fc42a` | 425 | [C] [I] looked-at lock ID/position cache |
| `0x2fc42a..0x2fcdaf` | 2437 | [C] [I] SAM/stash seed filtering, gates/distances/labels, Unity projections |
| `0x2fcdaf..0x2fd04b` | 668 | [C] [I] stash dedup/save/notification |
| `0x2fd04b..0x2fd156` | 267 | [C] [I] font and collection setup; owned registry traversal |
| `0x2fd156..0x2fd23c` | 230 | [C] [I] whole-worker entity validation/transform/projection/distance controller |
| `0x2fd23c..0x3012f9` | 16573 | [C] [I] literal category routes, Snapshot fields/flags/statuses and ordered interaction calls |
| `0x3012f9..0x30195b` | 1634 | [C] [I] turret inventory/85-ID names, options/health/status, zero-quaternion ray geometry |
| `0x30195b..0x3024e7` | 2956 | [C] [I] remaining traps/SAM fields/options/health and scalar routing |
| `0x3024e7..0x30305c` | 2933 | [C] [I] corpse bounds8-corner/12-edge draw; inventory/name/streamer/color rules |
| `0x30305c..0x3031a1` | 325 | [C] [I] stash route |
| `0x3031a1..0x303363` | 450 | [C] [I] backpack owner/name/streamer routes |
| `0x303363..0x303718` | 949 | [C] [I] scalar routes before dropped item |
| `0x303718..0x304474` | 3420 | [C] [I] dropped name/count/category chains, trash/pickup/display/backpack exceptions |
| `0x304474..0x3052c1` | 3661 | [C] [I] animal health and cupboard signed timer/health/ID decoding |
| `0x3052c1..0x305c1e` | 2397 | [C] [I] shared routing/ore-only radar, remaining deployables, Bear pair and candy/egg |
| `0x305c1e..0x306085` | 1127 | [C] [I] radar normalization/rotation/icons/distance arguments; trig rounding caveat |
| `0x306085..0x3066d8` | 1619 | [C] [I] tooltip hover-radius predicate, measurement/layout/clamp/draw |
| `0x3066d8..0x306752` | 122 | [C] [I] exact wide crate marker equality, SilentLoot and shared interaction argument order |
| `0x306752..0x306ebe` | 1900 | [C] [I] labels/icons/five rows/distance/bar arguments; primitive raster helpers remain U |
| `0x306ebe..0x30753d` | 1663 | [C] [I] renderer predicates/shader cache/property order; Unity resource boundaries |
| `0x30753d..0x307637` | 250 | [C] [I] owned cleanup/iteration; late30762b branch bypasses chams after failed label gates |
| `0x3098a4..0x309994` | 240 | [C] [I] signed center and five crosshair types; Unity trig and frame delta boundaries |
| `0x309994..0x309bf0` | 604 | [C] [I] [U] FOV and complete radar window position/reset/style/current-position controller; ImGui primitives unresolved |
| `0x309bf0..0x309f47` | 855 | [C] [I] radar decorations |
| `0x309f47..0x309ff4` | 173 | [C] [I] ordered local/camera/transform guard; copied orientation/position inputs in whole-overlay composition |
| `0x309ff4..0x30a1c3` | 463 | [C] [I] battle/save toggles and marker projection/radius |
| `0x30a1c3..0x30a5dd` | 1050 | [C] [I] code-lock time/count capture/reset/distance/projection and two status labels |
| `0x30a5dd..0x30a7bf` | 482 | [C] [I] [U] fishing window reset/style/layout/current-position and colored-meter arguments; primitives unresolved |
| `0x30a7bf..0x30ab62` | 931 | [C] [I] saved-position zero gates/distance/labels/projection |
| `0x30ab62..0x30ae1d` | 699 | [C] [I] stable tracer expiry/empty erase, projections/glow-line arguments |
| `0x30ae1d..0x30b140` | 803 | [C] [I] Unity Round/two-digit truncation/time-phase thresholds and label arguments |
| `0x30b140..0x30b6b3` | 1395 | [C] [I] desync meter and ordered status stack; literal3 gap and18/16 row spacing |
| `0x30b6b3..0x30bcfa` | 1607 | [C] [I] Snapshot sign dimensions and photo-frame class sizes/status |
| `0x30bcfa..0x30c3e0` | 1766 | [C] [I] [U] authorization/key/code/crafting labels and complete violation window controller; primitives unresolved |
| `0x30c3e0..0x30c8d0` | 1264 | [C] [I] [U] concrete violation meter arguments/calculations; primitive helper rasterization unresolved; second meter offset20 from30ae3b |
| `0x30c8d0..0x30cd6f` | 1183 | [C] [I] teleport count/distance formatting and projected glow path arguments |
| `0x30cd6f..0x30cf5e` | 495 | [C] [I] [U] complete warning window position/style/flags/current-position and alert cursor; primitives unresolved |
| `0x30cf5e..0x30ea17` | 6841 | [C] [I] [U] four-branch simulation/cache controller, native speed/attachment/order/parameters and ring/path bodies; branch1/3 omitted varargs require copied scratch; selectors/game inputs explicit |
| `0x30ea17..0x30ee71` | 1114 | [C] [I] complete player iteration setup/validity/handcuff accumulation/bones/facing quad; game results explicit |
| `0x30ee71..0x30f089` | 536 | [C] [I] special-NPC health/range gate/head/selected snapline |
| `0x30f089..0x30fed8` | 3663 | [C] [I] full NPC19-bone/18-edge skeleton with all-or-none projections |
| `0x30fed8..0x3106c9` | 2033 | [C] [I] [U] NPC quad projection/item-name/labels/corner/health; copied six-widget settings and explicit font dependencies |
| `0x3106c9..0x310832` | 361 | [C] [I] first player filters and registry kind1 friend predicate |
| `0x310832..0x310acd` | 667 | [C] [I] ordered looking/held/name/aim warning predicates and labels |
| `0x310acd..0x310d4c` | 639 | [C] [I] enemy/sleep/dead/visible/outside filters and color priority; game results explicit |
| `0x310d4c..0x311ce4` | 3992 | [C] [I] in-game player marker/hover/one-tooltip latch; full inventory tooltip scale/two groups/condition/icons/count/separator |
| `0x311ce4..0x31236d` | 1673 | [C] [I] map gate, offscreen circle/triangle and radar direction geometry |
| `0x31236d..0x312552` | 485 | [C] [I] foot projection/screen gates and friend/enemy key transitions |
| `0x312552..0x313020` | 2766 | [C] [I] [U] text selection/six-label placement/counters/icon fallback and font-scale restoration; copied widget settings and explicit background draw-list/measurement |
| `0x313020..0x31336a` | 842 | [C] [I] selected snapline and player-view three-line geometry/filter/projection order |
| `0x31336a..0x31416a` | 3584 | [C] [I] full player19-bone/18-edge skeleton with all-or-none projections |
| `0x31416a..0x3141bb` | 81 | [C] [I] owned loop cleanup and whole-overlay ordered composition |
| `0x3141bb..0x3143c7` | 524 | [C] [I] handcuff target/index/cooldown/ordered RPCs; hood inventory result input |
| `0x3143c7..0x3148d6` | 1295 | [C] [I] periodic registry/history/default insertion/renames/team0/grid/inside-base formatting |
| `0x3148d6..0x314929` | 83 | [C] side-effect-free epilogue |

[C] Evidence: [audit.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/world_esp/audit.json) byte-compares24,736 instruction lines against image SHA256 `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`; [dependencies.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/world_esp/dependencies.json) accounts for4,405 direct CALL sites /854 unique targets. Every unimplemented helper is explicitly `[U]`; typed call arguments do not count the callee complete. Rule/route/name/skeleton JSON and extraction scripts reside beside those ledgers under dump_analysis only.

## Verification and integration

[I] Parent integration compiles `world_esp_*.cpp`, includes the domain header and calls `rust_internal_re::check_world_esp_reconstruction()`. No source-tree main or existing build/document file was modified by this pass. Standalone main/build/evidence are under dump_analysis.

```sh
bash dump_analysis/semantic_reconstruction/world_esp/verify_world.sh
RE_ANALYSIS_SANITIZE=1 bash dump_analysis/semantic_reconstruction/world_esp/verify_world.sh
```

[C] [I] GCC15/C++20 uses Wall/Wextra/Wpedantic/Werror, `_GLIBCXX_ASSERTIONS`, `-ffp-contract=off` and optional nonrecovering ASan/UBSan. Fixtures cover all ordinary classifier rule positives/class rejection, subtype/outer gates, insertion/restoration, nearest ties/truncation, collider/SAM/stash state, player/tracked order, category Snapshot fields, name encoding/streamer cache, owner geometry, turret ray filters, dropped pickup/display/trash/backpack behavior, fishing/interaction timers, whole world-worker draw/chams gate, shader order, labels/radar/tooltips, crosshair/skeleton/selection/label placement, literal floor/trajectory update/hit normal, tracer expiry, grid/history/RPC order, missing-callback stops, four-branch cache dispatch/order, repeated attachment reads with NaN, cache-miss3,601-table construction, enabled simulation/50 projections, and omitted-vararg failures, full overlay pre-guard crosshair/window/dispatch/empty-player/tail order, copied font-scale restoration, friend-to-enemy key transitions, alert text/view-line geometry, and contiguous range coverage.

[I] Latest actual logs: [strict verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/world_esp/verification.txt), [ASan/UBSan verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/world_esp/sanitizer_verification.txt). A running check is not reported as a pass before its exit status. [U] These fixtures do not establish a live Unity ABI or complete pixel renderer/full overlay.
