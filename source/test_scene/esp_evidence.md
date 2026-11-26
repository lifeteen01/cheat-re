# Owned ESP scene evidence

[I] `esp.cpp` implements the `EspScene` pimpl against the existing reconstructed
analysis interfaces. All entities, managed strings, bone arrays, transform results,
camera state and draw resources are authored owned fixtures. Numeric addresses are
keys into bounded `Snapshot` storage or owned maps. No game/process binding, copied
instruction execution, native address invocation or spoof executor is supplied.

[C/I] The actual recovered controller path is:

* `replay_world_overlay_3098a4` executes the recovered full overlay root with valid
  owned local/camera keys, an explicit camera-transform-valid value, the five
  fixture player records and empty owned lock/teleport/registry candidate spans.
  It receives the routed menu-open state as218818 (including the native2b/2f violation-window flag transition), and executes mandatory window, simulation and registry transitions before
  returning. The root invokes the player worker below in its recovered order.
* `replay_world_player_overlay_30ea17` reads entity validity, bones, player state and
  identifiers, calls `select_world_overlay_player_3106c9`, constructs
  `world_facing_quad_30ec65`, and applies the real player distance/configuration gates.
* `bind_world_player_helpers` composes `bind_snapshot_aim` and game helpers.
  `entity_valid_2e0e9c` reads `entity+0x48`; `bone_position_368be8` follows
  `entity+0x1d0 -> model+0x50 -> array+0x20+index*8` for bones 7 and 53.
  `read_player_state_31fb93` reads flags/prefab/dead/model-state fields. Owned fixtures
  use ordinary alive human players, with explicitly zero other optional ESP options.
* The worker's component lookup calls the real `game_runtime_wrapper(0x315a54)`
  with its typed request and cached target/context bytes. The final owned object
  leaf maps each entity to a distinct Component Transform key, separate from both
  bone Transform keys. The worker validates that returned pointer before calling
  `position_3747d4` on the Transform. Final Unity object/position effects remain
  authored owned inputs; no entity key is forwarded as a Transform receiver.
* The root's real `game_helper_orientation(0x36920c)` follows the cached `0x369298`
  eyes wrapper and `0x3739c4` orientation wrapper. Their numeric context/target setup
  is reconstructed; final object/orientation values come from typed owned leaves.
* The authored host camera implements only the unresolved
  `ProjectionQueries::world_to_screen_36c3d4` effect. Camera yaw is radians, vertical
  FOV is degrees, and position/entity shift changes world coordinates. Its Y-up
  projection feeds actual `project_screen_36cd20`, which rejects depth below 0.001,
  applies `contains_projection_36c638` lower-inclusive/upper-exclusive bounds, then
  flips Y using the supplied viewport height. No screen clamping is performed.
* `draw_world_corner_box_37b724` emits eight recovered corner segments through
  `bind_world_shape_output -> bind_renderer_world_output -> draw_shapes_world ->
  draw_shapes_line_3a01f4`, writing `Resources::draw` with its shared shape resources.
  Captured background selection uses real `renderer_background_392198/392164/392dcc`
  and bound draw-core reset/texture/clip consumers.
* Names pass through the worker's actual `player_name` field read, UTF-16 conversion,
  `world_player_label_texts_31265f`, `prepare_copied_world_labels` and
  `draw_world_player_label_37bc98`. The renderer background wrapper reads the copied
  current font, and `bind_world_font_measurements` uses `Resources::fonts` with real
  `renderer_measure_3a3874`. The final font-command submission is an explicit host
  adapter to `bind_font_frame`, which requires helper `0x361bcc` and stages all six
  typed arguments into the actual `font_text_plain_361bcc` controller. Its eight
  black outline passes and final configured-color pass use the selected font at
  size10 and write the same draw-core store through the real glyph raster path.
  Ordinary label placement reads shared size `0x248ed0` at recovered `0x37bda7`.
  The owned scene explicitly starts that cell at16, matching the recovered image.
  The real `361bcc` consumer writes its selected size10 at `0x361d30`, including
  empty label commands. The bound background/font refresh rereads the cell before
  each later label, so subsequent slots, entities and frames measure and place at10.
  Explicit contexts use their actual copied value; unbound analysis callers retain
  the historical16 default in `WorldLabelFonts`. The family2 indicator override
  remains10. This is shared mutable state, not a permanent layout/render size split.
  `name_raster_passes` counts glyph
  reservations, not arbitrary native function invocations; the baseline three
  names produce27 reservations. Zero foreground alpha retains eight black outline
  passes. Semantic checks independently assert outline offsets, vertex colors,
  selected size and the names gate.

[C/I] The focused shared-size semantic check composes actual label measurement,
renderer binding and `361bcc` output. It requires cold16→10, an empty label reading
22 then writing10, later-slot spacing/centering at10, entity/frame persistence,
an explicit13 input, the indicator override and font restoration. The scene check
also compares cold/warm first-name placement while the next entity stays stable.

[I] Exact explicit calls and callback entrypoints are counted in `Resources::trace`.
Box/label controller trace counts are inferred from their uniquely attributed output
commands; they do not imply a separate second invocation. `selected` counts the
player worker's post-selection rotation calls, including a selected offscreen player.
`bounds` records the successful projected quad immediately before label preparation,
independently of whether boxes or names are enabled. Bound keys are stable fixture
names; `labels` contains the actual nonempty text commands submitted for rendering.

[C/I] Settings are real recovered configuration consumers: ESP at `0x3e7248`, boxes
at `0x3e9d18`, names at `0x3e7798`, maximum distance at `0x3d8148` (native integer
conversion), and ordinary player color at `0x3ecab8`. The baseline fixtures are Aster,
Birch, Cedar, Behind camera and Distant. With the default camera/distance, four are
selected and only the first three have drawable projected quads.

[I] The supported file-backed key is
`field.player_display_name_reference.338` (`field_offset`, empty module). Each
immutable source entity has independent name-pointer slots at `0x338` (Aster,
Birch, Cedar, ...) and `0x340` (Alt Aster, Alt Birch, Alt Cedar, ...).
`resolve_profile_address` resolves the configured source field and a bounded
`Snapshot::read<Address>` reads its actual pointer. The explicit owned host layout
adapter stages that pointer into the worker image's historical `entity+0x338`, so
the recovered worker reads and renders the selected string. The historical literal
getter is unchanged. Switching profiles back restores original names because the
source slots are independent of the worker image.

[I] Parent `Scene::reload` must parse and validate the complete catalog into a
candidate, enforce this key's kind/empty module and exactly `0x338` or `0x340`, and
only then replace the active profile. `EspScene::frame` independently checks the
consumed key before modifying state or drawing. Incompatible fields/overflow are
never silently clamped. Owned camera, viewport, color, distance and entity-shift
inputs also have finite/capacity bounds before mutation. No other catalog offset is
consumed by this scene.

## Full overlay composition and owned boundaries

[C/I] `EspScene::frame` now calls the actual `replay_world_overlay_3098a4` rather
than directly invoking its selected-player worker. `WorldFullOverlayState` persists
the recovered player, window, simulation and registry cooldown state across frames.
`replay_world_overlay_3098a4` records entry; its `:complete` key is recorded only
after the actual root returns. The preserved `replay_world_player_overlay_30ea17`
key records the completed root's one nested worker invocation. A missing mandatory
binding throws; the scene never falls back to a player-only result.

[C] With a valid local key, valid camera key and explicitly valid camera-transform
input, the recovered whole root always calls the Anti Violations Bar window layout
and Warning Bar Window layout. Configuring violation/radar/warning drawing off
does not gate these window-lifecycle calls. Its simulation worker always reads
direction and held item before considering trajectory drawing settings. Registry
refresh always queries time even for an empty candidate span. Bypassing any of
these calls with an invalid local/held key or success-only callbacks would not
establish full-root composition.

[C/I] The parent supplies `InternalMenu::world_windows()` after one shared
`prepare_frame`. This bridge uses the menu's actual copied Snapshot,
`ImguiWindowsState`, detail controllers, style address and Begin/End bindings.
The root's Anti Violations Bar (`0x2f`) and Warning Bar Window (`0xaf`) therefore
create and update real recovered windows even when their feature visuals and the
menu are disabled. Position/size staging, style writes, Begin, current-position
reads and End all execute. `finish_frame` publishes the actual visible draw lists
after world and menu work; nonempty window geometry is presented and exported in
addition to the background ESP list. The scene does not own a second simplified
window implementation or discard these lists.

[C/I] `bind_world_simulation_helpers` composes the existing game helpers and
snapshot classifiers. A separate valid owned local key has a valid eyes key;
`368100 -> 36920c -> 369298 -> 3739c4 -> quaternion_vector_2ef834` computes direction
from the supplied host yaw quaternion. Local position follows `369164 -> 369298 ->
373a68` and consumes the explicit host camera position. `368a84` returns a valid
owned held key; all four recovered kind classifiers call the actual `37154c`
definition wrapper and read the owned definition's ID/category bytes. ID
`0x0892448f`, category0 selects actual branch3 through `3716e0`; the other kinds
fail their real membership tables. No invalid held/local key bypass is used.

[I] The owned held `+0x3f8` float is `10.453125`, producing speed10 after the
recovered subtraction. Branch3's three omitted native format arguments are
explicitly supplied owned zero doubles in `WorldSimulationState::branch3_varargs`;
they are fixture values, not recovered volatile-register contents. The real
format/hash/cache insertion and `build_candidate_tables_2e3aa4` execute before the
disabled trajectory drawing gate. Later frames reuse that cache. Trajectory
output, raycasts, aiming, automation, materials and RPC effects remain disabled.

[C/I] Registry refresh uses actual `game_runtime_wrapper(0x2e6240)` cache/context
and scalar packaging, with a typed owned elapsed-clock leaf. Empty registry
candidates still execute the real time comparison and deadline update. The first
frame and later expired deadlines call time twice; an unexpired deadline calls
it once. No history records are fabricated for the empty candidate span.

[I] The time metadata target cache starts with bit1 set and explicit numeric
target key `0x10000018`; bit2 setup and scalar context writes still run. This is a
checked owned warm metadata fixture, as is the existing component-transform
target cache, and does not establish metadata discovery or native Unity calls.
The direct held/eyes/orientation wrappers retain their real cold cache setup.
Elapsed time accumulates validated positive finite host frame deltas, bounded at
60 seconds per frame. Camera/transform/time outputs remain owned host effects.

[C/I] `esp_root_checks.cpp::check_esp_root_boundary` executes the real whole root
with explicit owned full-frame inputs, a valid local/camera and a nonempty player
record span. ESP/box/name gates are enabled; extra root feature gates are explicitly
off with an owned zero image for other fields. Its first invocation must throw
`WorldEspMissingInput(site=0x30c298, dependency=0x39b734)` before emitting commands
or touching player callbacks. A second invocation binds the actual recovered
`39b734` window-position staging through `bind_imgui_windows_frame`. It verifies
bounded context flag/condition/position writes, then must throw at missing style
`0x30c311 -> 0x392ca4`. This is partial mutation followed by a required stop,
not a completed window or completed overlay.

[C/I] Separate direct negative calls verify mandatory missing-input behavior:
simulation stops at `0x30cf87 -> 0x368100` with drawing disabled, and empty registry
refresh stops at `0x3143d6 -> 0x2e6240`. These checks do not jump past missing
windows inside a claimed full-root run. They require no commands, trajectory-cache
publication or history deadline updates on the missing effects. The runtime scene
does not catch these failures and substitute a fabricated full-root result; the
negative checks are separate from the positive composed-root checks.

[C/I] The positive root check prepares a real shared menu/window provider with the
menu hidden, wraps its actual Begin/current-position/End calls to record order,
and executes `EspScene::frame`. It requires both window lifecycles, four selected
players, three boxes/names, five profile reads and27 real name glyph reservations.
It also requires valid held-item classification, four definition-wrapper effects,
a real cache build, cache reuse while ESP is disabled, and the actual registry
time/cooldown counts over0.5/0.5/0.8-second frames. Any newly created nonempty
world-window draw list must be included in actual presentation order.

[U] This composes the recovered3098a4 root for explicit owned fixture inputs. It
does not establish upstream game entity collection/classification, live camera
acquisition, native Unity effects, nonempty game registry history or off-scope
feature branches. Its empty candidate spans and disabled options are explicit
owned inputs; mandatory calls are still consumed. Original code is never executed.

[C] Historical TU-only checkpoint: the ESP translation unit passed GCC15 C++20 with `-Wall -Wextra -Wpedantic
-Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off`. [U] That translation-unit compile alone did not establish runtime behavior or game
compatibility. Current combined results are recorded separately below.

[I] Scene link dependencies are `world_esp_player_worker`, `world_snapshot_bindings`,
`snapshot_bindings`, `game_helpers_analysis`, `game_base_analysis`,
`renderer_helpers_world`, `renderer_helpers_background`, `font_frame_bindings`,
`world_render_bindings`, `draw_shapes_bindings`, `drawlist_core_bindings`,
`offset_profile`, and the player/config/name/geometry/font helper translation units
those implementations call. The runtime full root and its checks additionally link
`world_esp_overlay_worker`, `world_esp_overlay_controls`, `world_esp_overlay`,
`world_esp_windows`, `world_esp_status`, `world_esp_sign_status`,
`world_esp_overlay_aux`, `world_esp_simulation_worker`, `world_esp_simulation`,
`world_esp_overlay_tail`, `world_esp_grid`, `05_server_observable` and
`imgui_windows_bindings`. The scene build archives the explicit link
closure in `reconstruction_sources.txt`; shared units can contain unrelated functions
whose presence is not execution evidence. No new external package dependency is
introduced. Final integrated runtime/sanitizer/Wine results are in `VALIDATION.md`.

## Combined lifecycle validation

The positive root test now uses actual FrameLifecycle prepare/ESP/menu/finalization
callbacks and checks complete recorded submission, selected/exported list equality,
and preparation/finalization once per frame. Explicit owned glyph probes make the
mandatory world windows nonempty on warm frames; they reach actual export with the
menu hidden and alongside actual menu geometry when open. They are not claimed as
recovered overlay output. The mandatory-call/cache/cooldown and missing-dependency
checks remain. Direct ESP tests supply the required shared backend/lifecycle.

Current combined results are recorded in VALIDATION.md/final_audit.json. Old TU-only
or focused audit results do not establish freshness for the current composition.
