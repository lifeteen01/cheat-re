# Resources shadow follow-up: confirmed host atlas input defect

[C] Review scope: current Resources font/shadow atlas, shadow bindings, recovered atlas math and the local Wine captures [01](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/windows/runtime/01_menu_and_esp_window.png) and [03](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/windows/runtime/03_color_changes_esp_window.png). Both captures visibly show repeated sharp bands in the toggle glow and a patterned rectangular halo at Distance. This review changes no source or existing build/runtime output. A separate authored probe was compiled against the existing strict reconstructed archive; no original sample code was executed, no network access occurred, and `~/malware-lab/analysis/` was untouched.

## P1 / high confidence: exponent2 drives recovered approximate power outside an alpha-safe range

[C] The fixable cause is the authored `a.exponent = 2` at [resources.cpp:159](/home/john/Desktop/cheat_re/source/test_scene/resources.cpp:159). The recovered atlas calls `font_text_power_3c8da8(1-normalized_distance, exponent)` at [font_text_atlas.cpp:17](/home/john/Desktop/cheat_re/source/reconstructed/font_text_atlas.cpp:17). Distances at or beyond the configured radius produce an exactly zero base. The recovered approximate-power implementation is a bit-based approximation without zero handling; the actual linked routine gives:

```text
font_text_power_3c8da8(0, 2) = -4.23193359375
font_text_power_3c8da8(1, 2) =  1.0579833984375
font_text_power_3c8da8(0, 1) =  0
font_text_power_3c8da8(1, 1) =  1
```

[C] These negative exterior values enter the recovered blur before the pixel conversion. The atlas writes `uint8_t(cvtt(alpha*255))` with no clamp at [font_text_atlas.cpp:36](/home/john/Desktop/cheat_re/source/reconstructed/font_text_atlas.cpp:36) and [font_text_atlas.cpp:43](/home/john/Desktop/cheat_re/source/reconstructed/font_text_atlas.cpp:43). Negative and above-one results therefore wrap modulo256. That produces bands and opaque exterior texels in the atlas itself, before any menu geometry, CPU sampling, GDI or Wine presentation. This is a concrete alpha-data defect, independent of an aesthetic preference for smaller glows.

[C] A probe supplied the exact Resources atlas dimensions, rectangles, radius12, inner4, zero offset, RGBA storage and blur setting to the actual recovered `font_text_shapes_3a5204`. Its current-exponent circle alpha row at texture `y=88`, `x=48..64` is:

```text
100 100 100 100 100 255 200 10 29 45 64 86 108 135 167 196 209
```

[C] Changing only that probe's supplied exponent to1 leaves all UVs unchanged and gives this exterior-to-center row:

```text
7 7 7 7 7 22 41 62 83 104 125 146 167 187 206 221 228
```

[C] The recovered rounded-shadow row exhibits the same defect: exponent2 produces `...218 250 9 12 9 250` near the middle plateau, whereas exponent1 produces `...232 246 253 254 253 246`. Probe [log](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/fidelity/resources_alpha_probe.log) and [source/command/input hashes](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/test_scene/fidelity/resources_alpha_probe.json) retain the exact evidence. The isolated probe compiled with C++20, `-Wall -Wextra -Wpedantic -Werror`, assertions and disabled FP contraction; build/run exit0. All tracked source/capture hashes before and after the probe match.

## UV/atlas field mapping checked

[C] I found no swapped table, circle field or font-texel binding behind this defect. [resources.cpp:198](/home/john/Desktop/cheat_re/source/test_scene/resources.cpp:198) copies the nine `a.rounded` entries into shadow UV entries0..8 and `a.circle` into entry9. Recovered atlas layout places nine float4 entries at `atlas+0x4a4` followed immediately by the circle float4 at `atlas+0x534` (`0x4a4 + 9*16`). The recovered shadow consumer loads the ten-entry table through `shared+0x218`, uses index9 for convex shadows, and derives dimensions from `shared.font.atlas`: [draw_shadows_controllers.cpp:29](/home/john/Desktop/cheat_re/source/reconstructed/draw_shadows_controllers.cpp:29). The owned binding supplies those same data and128x128 dimensions.

[C] With the current Resources rectangles, actual generated circle UV bounds in texels are `(48,72,64,88)`; rounded entry0 is `(2,66,14,78)`. The convex consumer correctly uses `(u1,v1)` as its inner sample and `(u0,v1)` as its outer sample: [draw_shadows_geometry.cpp:13](/home/john/Desktop/cheat_re/source/reconstructed/draw_shadows_geometry.cpp:13). The bad values above are on that exact inner-to-outer sampling line. The authored font glyph pixels lie above the shadow regions, so this observed failure does not require sampling any bitmap-letter data.

[C] Static original excerpts also agree with the relevant reconstructed behavior: [power3c8da8](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_text/3c8da8.asm) has no zero-base guard; [atlas3a5204](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/font_text/3a5204.compact) uses the power result, optional blur and low-byte conversion, and writes its rounded/circle UVs at the stated offsets. No original instructions were executed.

## Concrete parent action after active builds finish

[I] Change only the authored Resources atlas exponent from2 to1, retain the recovered power/atlas/shadow implementations and current UV bindings, and regenerate the captures/evidence after the current builds finish. Exponent1 is already used by the reconstructed font/atlas/builder fixture inputs, and the isolated actual-routine probe confirms alpha-safe endpoints and removal of the demonstrated wrapped bands. Add a focused assertion on the actual generated circle inner-to-outer alpha row so future authored atlas-input changes cannot reintroduce this failure. Do not replace the recovered power implementation with `std::pow`, clamp the reconstructed low-byte semantics, swap the circle UV endpoints, or disable the shadow callback to conceal the defect.

[C] The broad glow extent itself has recovered support: the checkbox requests shadow thickness `70*scale*checked` at [menu_controls_checkbox.cpp:97](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_checkbox.cpp:97), and the slider requests `20*scale` at [menu_controls_slider.cpp:330](/home/john/Desktop/cheat_re/source/reconstructed/menu_controls_slider.cpp:330). Preserve those extents. [U] This review does not establish the original initialized atlas exponent/radius/blur or exact original rendered appearance; exponent1 is a verified correction to this host-owned input contract, not a recovered claim about those unavailable original resources. Full-scene captures with the proposed single-input correction have not been produced by this read-only review.
