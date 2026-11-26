# Frozen popup/Favorites follow-up review

[C] Read-only audit, 2026-11-24. Reviewed frozen `menu.cpp`, `menu_lifecycle_checks.cpp`, recovered `386438`, Favorites `3354b4 -> 35013c`, window controllers, and native NewFrame/render/hover assembly. No production edits, builds or runtime tests were performed; active parent verification was left alone. Only review artifacts were written under `dump_analysis`. No original instructions were executed, no network was used, and `~/malware-lab/analysis/` was untouched.

Markers: **[C]** checked source/assembly fact; **[I]** implication or proposed regression; **[U]** not runtime-verified here. Native references are RVAs in [cheat_annot.asm](/home/john/Desktop/cheat_re/dump_analysis/static/cheat_annot.asm). [Input hashes](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/fidelity/menu_popup_review_inputs.json) identify the reviewed source snapshot.

## Concrete integration findings

### P1 — Native hidden-window filtering is lost at final draw submission

[C] Cold popup Begin receives no explicit initial size. Recovered `38d5fa` sets `window+d9=1` for a newly created, incompletely sized window; `38e895` makes `window+bd` true. The body can still run to measure content. Native rendering distinguishes that from presentation: `398e85 -> 394734` requires `Active(+b6) && !Hidden(+bd)` before `398ea1 -> 38cdc4`; child recursion repeats this visibility check at `38ce40`.

[C] Scene [finalized export](/home/john/Desktop/cheat_re/source/test_scene/frame.cpp:251) appends every registered drawlist, and [CPU presentation](/home/john/Desktop/cheat_re/source/test_scene/resources.cpp:250) rasterizes every list, with no window visibility selection. Begin emits decorations and the measuring picker can emit geometry before Hidden suppresses native submission. Thus measuring-window geometry is eligible for owned export/presentation even though the original excludes that window. [U] The exact first-open pixel difference was not captured by this static audit.

[I] Fix the selection of submitted window lists, preserving native visibility and parent/child order, and share that selection between export and CPU presentation. Preserve independent ESP/background lists. **Regression:** on the first cold opening, assert Hidden and continued measuring-controller execution, but no submitted/rendered geometry from that hidden window; verify the following visible frame and closing fade separately. The existing 48-frame settle skips this transition.

### P2 — Hover and presentation use address order instead of native display order

[C] [Menu hover selection](/home/john/Desktop/cheat_re/source/test_scene/menu.cpp:554) chooses the greatest numeric window address among previous-active hit rectangles. It omits Hidden (`+bd`), NoMouseInputs (`flags&200`), native hit expansion and hit-test-hole checks. Native `391a58` instead scans `context+3ea8` **back to front** (`391aaf..391ae1`), skips inactive/hidden/no-mouse windows (`391ae4..391b03`), expands the rectangle and handles holes before publishing HoveredWindow (`391c31`). Recovered `38f0bc` changes that display vector; the host selector and numeric drawlist renderer do not consume the changed order.

[I] This is a real contract mismatch even though allocation order happens to place the single settled popup after its existing children. In particular, the cold popup's previous-active Hidden frame is eligible in the host but explicitly rejected natively. **Regression:** use two overlapping owned windows with addresses A<B and display order ending in A; assert A wins both hit testing and rendering. Repeat with B Hidden and NoMouseInputs. Include the cold-open frame, not only settled rectangles. Forwarding `38f0bc` and observing a trace count does not establish its visible ordering effect.

### P2 — Capture cancellation bypasses native text deactivation and active-ID history

[C] On hide/focus loss/resize, [menu.cpp:523](/home/john/Desktop/cheat_re/source/test_scene/menu.cpp:523) writes ActiveId (`+3f68`) directly to zero and resets mouse ownership. Native ClearActiveID is `390078 -> 39b0cc`; `39b115` calls `3c04d0` for the active text editor **before** clearing its ID. That controller exports the deactivated ID to `+5aa8` and UTF-8/NUL text to `+5ab0/+5ab8` ([implementation](/home/john/Desktop/cheat_re/source/reconstructed/imgui_navigation_text.cpp:49)). The setter also clears active-window, edit/overlap and key-use state; the raw stores do not.

[C] The bridge resets active-alive `+3f6c` but never performs native `398123..398160` previous-active history transfer (`+3fa0`, `+3f9d`, `+3f98`) or native `3980e5..3980f5` lost-alive clearing. Those fields feed actual recovered group/editor deactivation branches, including `3c1cda..3c1d2a` ([commit](/home/john/Desktop/cheat_re/source/reconstructed/imgui_text_input_commit.cpp:169)).

[I] Clearing telemetry capture is therefore weaker than native lifecycle cleanup. Use the recovered active-ID/deactivation path and stage the required NewFrame history in native order. **Regression:** focus and edit/paste into hex, cancel by each supported host event, and inspect deactivated ID/text, active-window/key-use state and previous-active history as well as `keyboard_capture`. Verify reopening neither applies stale deactivation text nor reacquires capture without input. No claim of observed data loss is made here.

### P2 — Hidden menu frames do not advance the native context frame

[C] [menu.cpp:534](/home/john/Desktop/cheat_re/source/test_scene/menu.cpp:534) returns before incrementing `frame_number`, advancing context time, or resetting window activity. Native NewFrame increments `context+3e60` at `397e18` regardless of whether the later menu root chooses to draw. Begin computes Appearing from `LastFrameActive < FrameCount-1` (`38d017..38d0b8`). The scene turns a hide/reopen gap into adjacent native window frames, suppressing the original Appearing path and retaining pre-hide activity for hover selection.

[I] Run the applicable context bookkeeping on non-minimized frames even while the menu is closed, while retaining the preview's independent logical open/animation state. **Regression:** hide for two normal frames, reopen, and assert frame count/time/activity and Appearing match the native predicate, with the same retained window/drawlist allocation. Merely checking reuse and preserved open state does not cover this.

### P2 test gap — Focus-loss cleanup is asserted without active capture

[C] [Lifecycle checks:133](/home/john/Desktop/cheat_re/source/test_scene/menu_lifecycle_checks.cpp:133) acquires capture, then minimizes and restores. It settles before setting `focused=false` at line143, without focusing the editor again. Capture has already been cleared by minimization. The final assertion can pass if focused-editor cancellation is removed.

[I] Refocus `color_hex` and assert capture immediately before focus loss; check native cleanup fields above afterward. Add a negative control removing only focus-loss cancellation. Existing hide/minimize checks do begin with active capture and should remain separate.

## Position, animation, Favorites and trace conclusions

[C] The direct recovered `386438` route now exists: actual checkbox color child `cbESP` calls preview `ESPcb`; native press/release toggles `a.open`. The preview's interpolation is `(target-current)*(14*delta)+current`, rendering above `0.01`. Native position is `x=preview_right-230*scale`, `y=preview_top+10*scale+20*scale*(1-animation)`, **after Begin** (`3868be`, `386911`); outside close requires `!WindowHovered && MouseClicked && !preview_hovered` (`386932..38694e`). It still calls the picker and End during closing fade. Current wrappers forward those effects. I found no new mismatch in that direct position/formula/call ordering; moving the setter before Begin or stopping picker work immediately when `a.open` becomes false would change the evidenced behavior.

[C] One constructor input is missing: original float at RVA `28db30` is `60.0` (bytes `00007042`, read locally without execution). `window_detail::defaults` consumes it for new-window position (`393cd6..393d03`), but the zero-filled scene Snapshot never seeds it. [I] Seed this literal and assert cold constructor position before the native post-Begin popup setter. Its significance is the cold layout/clip state, not the settled popup position; fixing final visibility remains necessary.

[C] Favorites thunk/body dispatch and native two-child cleanup now execute, with fixture-supplied requests clearly identified. No full-root execution is claimed by scene traces. Popup/focus/hover counts are forwarded-call attribution, as documented. `menu_color_popup_outside_click_38693f` counts **queries**, including false results, not successful outside closes. The disappearance/reopen assertions supply behavioral evidence beyond that count. [I] Add per-frame animation/position/visible-selection and close-result assertions to the settle-based tests; do not relabel counters as independent branch coverage.

[U] Original OS/game hooks, native Windows behavior, exact original fonts/style and full menu-root setup remain outside this follow-up. These boundaries do not prevent fixing the local visibility, ordering and lifecycle discrepancies above.
