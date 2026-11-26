# Remaining model, weapon and copied-state controllers

[C] Twelve local roots now perform their recovered predicates, classification, direction composition and state writes. `bind_game_fields_{aim,projectile,interaction,movement,frame}` installs reached roles in the existing typed APIs and retains unknown-role fallbacks. Full DWORD masks are exposed by the direct predicate API and the interaction/movement/frame adapters; the narrower aim/projectile predicate signatures bind only the fixed-mask roots.

| Native range, exclusive end | Concrete controller |
| --- | --- |
| `368244..36827e`, `368468..3684a7` | Guard receiver and model-state pointers; test model bit`1000` or bit`1`. |
| `372ba4..372bca`, `372bf4..372c1b` | Guard and test model DWORD flags with fixed`1000` or the caller's complete DWORD mask. |
| `36a1e4..36a20a` | Guard and test player DWORD bit`10000000`. |
| `3714c4..37154a` | Match existing projectile or melee ID tables; accept category0 or reread category and accept5. |
| `371688..3716df` | Match all three literal IDs; never read category. |
| `3717c0..371826`, `371df4..371e5a` | Match their two literal IDs before requiring category1 or6. |
| `3691c0..36920a` | Guard player and eyes results; consume existing concrete eyes/vector cache wrappers. |
| `373eb4..373f09` | Independently capture two raw DWORDs when their global caches are zero; optionally restore both captured words. |
| `32308c..3230cf` | Read copied hook kind; if zero, save old slot, write replacement, then kind4; return native true. |

[C] `32308c` writes only owned Snapshot bytes and does not execute a target or install a live hook. It retains the native absence of a range guard on record/slot: bounds checks are the analysis safeguard. Overlapping slot/kind storage retains the literal store order. The shared`3164fc` kind guard is concrete.

[C] Shared `GameHelper` controllers now call the existing argument-packaging bodies before their final typed effects. One-argument getters write count, receiver and the known type byte in native order. Component lookups stage the known receiver and Type pointer; vector/quaternion results retain their unknown raw output-pointer slot. Indexed-object getters preserve the known low DWORD and unknown upper argument bytes. Missing final effects retain preceding context writes. Native unknown type/return spans still fail at their reached bounds before later argument stores.

[I] The string-construction API supplies owned text, so its native C-string pointer is unmaterialized. Public `metadata_argument_one_2cb9fc`, `metadata_argument_two_2d2094`, and `metadata_argument_index_32b1c8` share the existing native packing bodies; no numeric pointer is fabricated. `3691c0` returns an owned Vec3 projection instead of claiming arbitrary native output-pointer aliasing. The backup helper's result bool reports whether the guarded analysis path ran; its native body is void. Matching GameAssembly effects and native calling conventions remain supplied/excluded boundaries.

[C] Fixtures distinguish all ID/category paths, skipped missing category bytes, high-bit masks, invalid pointers versus unavailable bytes, zero-cache recapture, low-byte restore truth, overlapping copied-hook stores, real argument fields observed inside final effects and native failure prefixes. Movement's ignored result from setter`322580` now uses its action interface; its fixture rejects an integer-result substitute.

[C] Fresh disassembly, exact hashes and all ten shared staging caller routes are recorded in [the audit](../../dump_analysis/semantic_reconstruction/game_field_controllers/audit.json). [U] The other small-controller roots`322ef8/322f30/36a0e0/36ba2c` belong to the separately active direct-wrapper module; their presence in the historical inventory is not a claim that these twelve functions close that separate work.
