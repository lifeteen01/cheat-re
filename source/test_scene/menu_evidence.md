# Menu root and lifecycle evidence

`menu.cpp` now calls actual `replay_frame_menu_35d5ac` / `frame_main_menu_35fc8b`.
Cold startup builds the21-page graph across seven categories, initializes144 random
points through its typed Random.Range boundary and visits all original page thunks.
The graph flags `3fd7b8/3fdab8` are written by recovered code, never seeded. Per-page
trace entries and a21-unique-page check accompany the successful cold-graph marker.

## Integration fixes and their evidence

The previously bound tooltip now links `menu_tooltip_analysis.cpp` through the scene
manifest. Full traversal subsequently exposed missing `3a7400` arrows, page boolean
vectors and `3bfe4c` Dummy layout. The scene uses the Snapshot-aware existing arrow
binder and actual multiselect storage, forwards page dependency state and executes
the Dummy item-size/item-add sequence (including SkipItems) from `3bfe4c..3bfeba`.
Config/player-page text requests with hint/size/int capacity reach the reconstructed
editor rather than being interpreted as the root's different request signature.
Preparation failures retain their underlying diagnostic in FrameReport, still
stopping the controller instead of returning success.

The full Settings page initializes `3fd7bc` from `3fcc88`, then derives `248ee8` as
percentage/100. The owned configuration now supplies `3fcc88=100`, consistent with
scale1. Static dump bytes at3fcc88/3fd7bc are zero;100 is an explicit owned config
input, not a recovered dump default or bypass of the Settings initializer.
The earlier direct3fd7bc seed was overwritten by real initialization and rejected
as an ineffective fix. The watchpoint record is retained under
`dump_analysis/semantic_reconstruction/test_scene/integration_scale.log`.

Read-only virtual-layout dump extraction supplies arrow literals:
2931a4=`00003041`(11),293144=`00002040`(2.5),2930bc=`6666e63e`(.45),
2a9424=`db0fc93f` and2a9428=`e4cb9640`. Their reads are in annotated
388138..388280. The existing28db30=60 constructor literal remains checked.
No original input was modified.

## Executed root and controls

After cold traversal, the owned selection starts at Favorites. Each visible frame
runs recovered root/header/name/navbar/main/content and page composition, using the
original850×580 scale-dependent sizing. Favorites thunk3354b4 calls body35013c,
real search-child/layout, three checkbox requests and one distance slider. The ESP
checkbox's owned color cell reaches native386438 preview, real animated popup,
complete379680 picker and real hex editor. Settings change through those consumers,
affecting next frame's ESP in the recovered world-before-menu order.

Native Begin/End, children, retained window construction3908d4, decorations,
focus/order, styles/colors/groups, clips and editor deactivation remain composed
from the reconstructed backends. Visible-list collection follows supported
398e78/394734/38cdd8/392ec0/38ccd0 branches. Cold Hidden popup geometry is excluded;
closing fade is included and reopened windows are reused. Tests check allocation
retention after the full cold graph, eight root/page children per warm frame,
actual popup lifecycle and balanced native stacks. The old five-list and no-root
trace assertions were replaced by full-graph and warm-retention assertions.

`prepare_ui` prepares once before ESP and supplies the same window backend for both
mandatory world windows. `finish_frame` runs once before export. Hidden positive
frames execute the closed root and collect any visible world lists; minimized
frames cancel capture and select only the background. Tests make otherwise empty
world windows nonempty with explicitly authored glyph probes, then verify actual
frame export/submission both hidden and open. These are collector tests, not
recovered status-bar output. Frame export and CPU presentation share list order.

## Boundaries still open

Category/subtab labels/icons, palette, fonts/atlas aliases, Random.Range values,
configuration and Favorites requests are owned inputs. Interactive non-Favorites
selection remains refused; full navigation/search/subtabs, original asset/font setup,
scale rebuild, complete native NewFrame/finalization and native switch animation
remain unfinished. Current tests prove selected recovered control flow and local
composition, not complete original source/pixels or live game behavior.

Fresh integrated strict/sanitizer/Wine/CMake results and counts belong to
VALIDATION.md and final_audit.json. Earlier focused probes do not validate later
edits. The previous menu evidence is preserved in integration_history/menu_evidence.md.
Executable spoofing, no CRT/imports and live GPU/hook requirements remain open in
REQUIREMENTS.md rather than excluded by the earlier fixture scope.
