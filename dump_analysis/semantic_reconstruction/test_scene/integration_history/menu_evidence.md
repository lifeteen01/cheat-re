# Owned scene menu evidence

[I] This is a supported subset of original controllers using owned data. The
complete original menu root and appearance are not reproduced. No numerical
fidelity estimate, including the requested95%, is supported.

[C] `menu.cpp` no longer supplies an invented`410100` dispatcher callback.
`bind_menu_pages` routes original Favorites thunk`3354b4` to body`35013c`, which
invokes real`frame_search_child_384df0`, rewrites each retained Favorite request's
native primitive/site/flags, renders it and executes the original two-child
cleanup tail. The page's `G` icon and `FAVORITE FUNCTIONS` label are recovered.
The category/window name `Owned ESP`, four Favorite labels, config cells
`410000/4/8/c`, distance range10–200 and format are authored fixture inputs,
not recovered original ESP configuration or page order.

[C] Actual`imgui_window_begin_38cfa4`/`imgui_window_end_390994` surround the page.
Child effects execute actual`38e97c/38e9c4` and`390a88` EndChild. The constructor
callback calls the actual`window_detail::create_window` body`3908d4`, then adds
fixture resource metadata; it is not a replacement constructor.
`bind_imgui_window_details` provides recovered decorations, size/position,
scrollbar, title and navigation bodies. Only reached branches count as exercised.
The successful-frame path asserts balanced native window, focus, style, color and group
stacks. Native End restores the host clip. The authored rounded panel background
was removed; recovered window/page decorations now produce its geometry.

[I] The host seeds one copied root window, viewport, style, allocation leaves and
NewFrame data. Compact dimensions340×580 are fixture choices, not the full root's
`(126*navbar_animation+850)*scale` by`580*scale`. Each child receives explicit
initial next-window size data before its real controller runs; retained-content
sizing subsequently executes in the actual child body. Initial layout input
remains an owned fixture boundary. Typed leaf adapters expose native current
window/position/width/drawlist, style push/pop/color and cursor-Y. Cursor-Y`39b44c`
matches annotated instructions`39b44c..39b486` and calls actual`35d200` marking.
CalcItemSize uses actual`menu_detail::calculate_size`; font/text effects reuse
`bind_font_frame`. Unknown effects return no result, without a success default.

[C] Favorites receives only three checkbox requests and one float slider.
Native page primitive rewrites reach real checkbox`3bd114`, button behavior
`3bc7e0` and slider`3c43f4/3c4478`. The ESP checkbox's authored request now
attaches color cell`410000`. Its actual checkbox body creates child`cbESP` and
calls real color preview`386438` with label`ESPcb`. The always-embedded
post-slider picker extension was removed completely.

[C] The preview starts closed in native animation state. Actual press/release
toggles it; native14×delta interpolation controls rendering above0.01. The real
preview calls popup style pushes, Begin`38cfa4` with original flags`6f`,
position`39bb20`, focus`38f160`, display`38f0bc`, hovered`3947ec`, clicked`3943e4`,
picker`379680` and End`390994`, followed by native style/color pops. All wrappers
forward the real effects. `bind_menu_color_picker` supplies the original picker;
there is no fabricated Begin result or initial-open shortcut. Actual native
auto-fit/retained-content sizing determines popup dimensions; no fixture230×230
window-size overwrite remains. Outside-click closing and animated fade are native.
Complete picker`379680` executes SV`37afd4`, hue`37a0b8`, alpha`378f1c` and hex
editor`3c0538`. Native COPY/PASTE uses owned float storage`402d10`, distinct from
editor clipboard text.

[C] UTF16 queues, modifier/key durations, shortcut ownership/routes, click counts
and mouse delta retain the existing input bridge. Original`3c690c` plain-token
filtering remains unchanged: ordinary typed hex tokens intentionally do not edit
the field; the actual paste path does. Parsed fourth hex channel still does not
assign alpha. Focus/hide/resize/minimize capture cancellation and release-owner
handling remain staged. No direct input-to-settings replacement is introduced.

[I] Settings populate owned config before the menu and receive actual values
afterward. `MenuTelemetry.changed` compares values, not the picker's constant true
return. Keys`esp`, `boxes`, `names`, `distance` and new`color_preview` describe
closed-menu controls. `color_popup`, `color`/`color_sv`, `color_hue`, `color_alpha`
and`color_hex` appear only when the popup renders with a nonempty visible
intersection. Presence of`color_popup` includes closing fade, not just the
animation's logical open bit. Bounds use actual native window clips intersected
with the viewport; no panel-only clip is imposed on popup telemetry. Parent
scene composition retains world-before-menu next-frame setting timing.

[C] Snapshot font ranges starting`30000` remain unchanged. ID/order/character
storage is`80000/81000/82000`, followed by clipboard procedure keys`83000`, root
name`84000`, viewport`85000/85100` and font-frame scratch`86000..87400`. Native
allocations start`100000` and stay below`180000`. Child drawlists share fixture
font/shape/shadow metadata but own independent geometry and native clips.
Resources renders the menu-selected visible lists after the ESP background. Authored5×7ASCII glyphs,
palette and font bucket aliases remain font/setup fidelity boundaries.

[C] `menu_lifecycle_checks.cpp` checks original thunk/body routing, three retained
child allocations (two page children plus`cbESP`), default-closed preview and
actual click/open/close/fade/reopen. A fourth allocation constructs the popup
once; reopening reuses it. Five drawlists exist before first opening, six
afterward including ESP/root. The checks assert balanced clips and window
effects, unchanged settings on preview activation, editor capture acquisition
and cleanup across outside click, hide, minimize and focus loss. The tests wait
48native frames after real input to observe settled animation. It also calls
actual`replay_frame_menu_35d5ac`
with an owned background-list leaf: the closed root returns, while the open root
with absent categories stops at`384cc0` without marking initialization complete.
No fabricated successful root/page is supplied by this test.

[C] The focused strict owned lifecycle probe passes after the visibility,
ordering, deactivation and IO follow-up below. It uses GCC15 C++20,
`-Wall -Wextra -Wpedantic -Werror`, `_GLIBCXX_ASSERTIONS` and
`-ffp-contract=off`. See [probe log](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/fidelity/menu_followup_probe.log),
[probe inputs/result](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/fidelity/menu_followup_probe.json)
and [runner](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/fidelity/run_menu_followup.py).
[U] Combined current-source strict/sanitizer/Wine/CMake verification remains
parent-owned; the focused probe does not substitute for those checks. [I] Trace
keys are caller attribution, not independent original instruction/branch coverage.
[U] Owned-host PASS does not establish original-output, native Windows or game fidelity.

[I] Additional reconstructed TUs beyond the prior scene manifest:
`menu_pages_analysis.cpp`, `menu_pages_config.cpp`, `menu_pages_players.cpp`,
`menu_controls_frame.cpp`, `imgui_windows_bindings.cpp`,
`frame_dependencies_analysis.cpp`. The latter also requires
`unity_backend_analysis.cpp` and its rendering/metadata link closure, integrated
by the parent. Other-family code linked by whole page TUs is not called,
registered or enabled by this fixture. No additional TU is needed for this popup
task; all bindings are already linked.

## Menu lifecycle follow-up

[C] The Snapshot now contains the actual float literal `28db30=60` used by
`393cd6..393d03` before post-Begin popup positioning. Cold child/popup constructor
positions are checked before the recovered controllers adjust them.

[C] Applicable normal-frame bookkeeping now also runs while the menu is hidden:
context frame/time advance (`397e18`), lost-alive ActiveId clearing
(`3980e5..3980f5`), previous active-window/edit/ID history
(`398123..398167`), and window WasActive/Active/BeginCount transfer
(`398347..39836f`). The bridge remains a narrowed owned NewFrame adaptation;
unrelated native input, navigation, memory-compaction and platform branches are
not claimed. Hide/focus/resize/minimize cancellation calls actual
`menu_detail::set_active` (`39b0cc`, reached by native ClearActiveID`390078`),
including the concrete `3c04d0` text export. It no longer zeroes ActiveId directly.

[C] Hover traversal follows `391a58..391c31`: reverse native display-vector
order, Active/Hidden/NoMouseInputs filters, native padding selection, hit-test
holes and moving-window/root exclusion. No allocation-address comparison decides
the hovered window. End-of-menu ordering follows `390e7c..390eaf` and recursive
`38ce6c`; child order compares Popup, Tooltip and signed BeginOrderWithinParent
as at `38fecc..38ff13`. This restoration matters after focus brings a parent
forward. Snapshot vector storage/replacement and traversal bounds are owned
adaptations; native allocator/CRT sort identity is not asserted for equal keys.

[C] Selected drawlists follow the supported `398e78..398ea6` root selection,
`394734` Active-and-not-Hidden predicate, `38cdd8` child traversal, `392ec0`
layer and `38ccd0` empty-list rules. The publisher passes ESP first, then the
actual visible root/child/popup lists to `Resources::select_lists`. Hidden and
minimized menu frames select only ESP. CPU presentation and frame export share
that selection. Hidden measuring windows still execute recovered layout/picker
work, but their lists and control telemetry are suppressed from presentation.
Closing fade remains visible while the native animation exceeds its threshold.
[I] This is a narrowed owned collector, not full native Render/finalization:
active window-switch animation at context`4a50/4a60` is rejected explicitly;
foreground/platform/native GPU setup and the remaining finalizer branches remain
separate boundaries. No full-root or whole-renderer trace was added.

[C] Valid positive finite delta is used unchanged. Direct invalid delta/mouse
inputs fail explicitly. `MenuTelemetry.io_mouse/io_delta/io_down` are read back
from the actual copied IO fields. The `.125` scene regression compares those
values against the recovered `FrameReport.io`, rejecting the former `.05` clamp.

[C] New checks cover address A<B with native display order overriding numeric
order; Hidden/NoMouse/hit-hole/padding and child ordering; cold Hidden popup
measurement without exported geometry; visible-next-frame submission; closing
fade; reopen reuse; hidden-frame Appearing; and deactivation export on hide and
focus loss. Focus loss now starts with newly acquired editor capture after the
minimize/restore check. The original reopen assertion caught missing hierarchy
sorting during integration; restoring the native ordering fixed it without
weakening the assertion. No reconstructed TU or header changed in this follow-up.

[U] Full`35d5ac/35fc8b` composition remains open. Cold startup registers and visits
21pages across seven categories and initializes random points; its initialized
graph and page effects are not provided. Success stubs or displaying every
feature page would violate this fixture's limited scope. Original main root
header/navbar/main/subtabs/content composition, search/category/subtab transitions,
preview`365038`, original font setup`35ccf4`, live Unity/game hooks and native
Windows behavior are not claimed. No sample code is executed; no foreign
address is called or dereferenced; no network is used.
