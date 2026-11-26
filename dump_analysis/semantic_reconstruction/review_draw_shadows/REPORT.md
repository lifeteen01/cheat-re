# Independent shadow review and DS1 correction

[C] Fresh original DLL disassembly was read for all six controllers and ten small helpers. The preserved DLL SHA256 is`ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`. [I] The original source hashes are in`review_sources.json`; only parent-authorized controllers/checks/reconstruction documentation were changed after review. Clipping, geometry, internal/public shadow headers and other source files remain untouched by this agent.

## DS1 — eager shape acquisition on paths that do not read shapes (fixed)

[C] Before correction, `bind_menu_shadows` required both the draw list and a `DrawShapesResources` entry before either controller ran. This strengthened the native reached-input requirement and lost observable path/reservation prefixes.

[C] Concrete counterexamples in`binder_unused_shape.cpp`/`binder_unused_shape_result.txt`:

- Plain rectangle, valid draw list and shadow UV atlas, no shape-map entry: old binder stopped at`3a2010` with0vertices/0indices. The reached native path emits36vertices/54indices and never reads rounded/arc fields.
- Explicit-five circle with the same inputs: old binder stopped at`3a143b` with path0. The reached native path emits40vertices/54indices and clears the successful path. With missing shadow atlas it must retain the completed five-point arc before stopping at`3a1666`.

[C] Instruction evidence:

- `3a2049..3a2050` alpha gate precedes resources. `3a206f..3a208e` calls `PathRect` at`3a2095` only for positive rounding, non-`0x100` corner mask and cutout. Plain output reaches reserve`3a20f3..3a20fc`, then first UV-table acquisition`3a2129`; rectangular subtraction needs no shape fields.
- `3a1437..3a1439` skips automatic segment acquisition for explicit positive count. After clamp`3a14a6..3a14b1`, non-twelve count takes`3a14d6..3a1503` into`3a684c`. The latter's positive-count branch`3a689d..3a68bb` bypasses its first shared read`3a68c0`; `3a6b03` calls the shared-free fixed arc at`3a9110..3a921f`.
- `3a6b38`/`3a8eec` check ordered`.5>radius` before real fast-arc shared input. `3a6b78` first clamps rounding and may emit a plain four-point path; disabled/small corners append centers before the first real arc. A missing shape record can follow1/2/3new corner points plus an existing path.

[I] Fix uses lazy shape providers in the shadow controller. Parent exposed `draw_shapes_arc_fixed_3a9110` around the existing fixed-arc body and `draw_shapes_path_rect_lazy_3a6b78` as the single shared PathRect body. No dummy shared record or invented metrics is passed. Shape acquisition remains required for automatic count selection, real fast arcs, fallback general automatic arcs and real rounded corners. Atlas acquisition and successful path clearing retain their original stages.

[C] Regressions cover plain/cutout rectangles and explicit-five circles without shape data; explicit-five NaN radius; zero/small fast/fixed/prefix-selected paths; automatic/twelve/half-radius missing-shape stops; disabled corner1/2/3prefixes; small/clamped rounding; and missing UV/convex atlas while shape data is also absent. A targeted scratch reversion restores the original eager conditions and must fail the first no-shape rectangle regression.

## Other semantic checks

| Range/branch | Independent assessment |
|---|---|
|3a1410..3a1561|[C] Signed CVTT radius index, byte atshared+index+1c3, explicit clamp3..512, automatic even4..512, twelve helper0..11→fast samples0..44, path append and successful-only clear match. No circle alpha gate.|
|3a14c4..3a14cf,3a6b38,3a8eec|[C] Twelve is a routing choice, not a forced twelve-point arc. Added differing table[9]=12/table[10]=6 fixture: native auto fast step8with redistributed firststep6 yields7samples0,6,14,22,30,38,44 before missing atlas.|
|3a1564..3a18d2|[C] First-three-point winding, normalized outward edges, `.001` zero-length fallback, join threshold`0x3f7fffef`, cosine stretch and extra half-angle for cosine<=0 match. Reserve bounds are10/11vertices and12/15indices per point, with noncutout`-6`.|
|3a18d7..3a1ecd|[C] Cutout+drawlistflag4 applies fixed half-pixel normalized neighbor-normal inset. Sharp corners split into two triangles, UV formulas retain both plus terms, edge geometry uses current/next join multipliers with native grouping. Edge epsilon compares approximate length to1e-5.|
|3a1ecd..3a1fa7|[C] Interior fan is retained only without cutout. Native fan loop advances by1(the R8D increment is initialized outside the loop). Final current vertex zero-extends WORD; new high-DWORD/low-WORD and rollover fixtures verify this.|
|3a2010..3a2373|[C] X-major nine-cell traversal, cell indexx+3*y, offset on drawn rectangles but unshifted cutout, alpha gate and rounded path copy/clear order match after DS1.|
|3a2374..3a2b32|[C] Clip first; empty uses plain quad; count+4vertex/index reserve, divide-then-offset UV interpolation, raw edge-normal corner choice and winding-dependent corner walk match. Triangle suppression uses absolute raw determinant<.2. Reverse-winding overlap is native behavior, not a reconstruction defect.|
|3a2b34..3a31b9|[C] Outer invalid/containing/disjoint branches, MAXSS/MINSS right-operand behavior, twelve retained vertices and up to four six-index strips match. Current vertex is a full DWORD addition here and in polygon subtraction, unlike convex WORD publication; new fixtures verify the distinction.|
|3a3ea4..3a4380|[C] Outcode bits and unordered comparisons, all-inside copy before simplification, fixed four-plane order, capacity failure and last-emitted-point dedup match for declared disjoint spans and initialized scratch bounds. Clipping dedup compares squared distance to1e-5, unlike convex edge length.|
|3a6554,3a4b28,3933f4,39f728,38cc68,37ca00,38bc2c,383044,383070|[C] Fresh bytes confirm fallback magnitude, dot/square grouping, in-place scalar scale, subtract/divide helpers and right-operand MINSS/MAXSS behavior. No wrong Unity/foreign label substitutes for local math.|

[C] A separately written fresh-assembly clipping oracle checks20,000 cases, including finite/NaN/Inf inputs, varying polygon sizes and capacities`n..n+4`. Counts, ordered output points and failed/empty output prefixes match. [U] This is bounded evidence, not exhaustive proof of all FP payload/exception states or malformed native stack behavior.

## Explicit limits, not newly reported defects

[U] Raw aliasing was already excluded by the original reconstruction claim. `clip_alias.cpp` demonstrates the exact difference: all-inside `3a3fe1→3c8d4c` uses forward REP MOVSB; output shifted one point into input cascades the first point, while current `std::copy` behaves as an overlap-preserving copy on this toolchain(and overlapping result within input violates its standard precondition). The report does not silently broaden alias equivalence or request an unrelated source change.

[U] Negative/out-of-table circle reads beyond the optional preceding byte, undersized convex input, native stack-overrun/corrupt buffer fault prefixes, adapted allocator/container ABI and exhaustive FP exception/rounding/denormal/NaN-payload behavior remain outside the owned interface claim. No further concrete algorithmic defect was confirmed in the read-only geometry/clipping review. Numeric pointers were never executed; no sample execution, upload, network/IOC contact or preserved-input edit occurred.

[C] Final results and immutable source hashes are in`verification.json`, `sources_before.json` and`sources_after.json`. The targeted reversion is intentionally a failing executable in scratch, not a source-tree rollback.
