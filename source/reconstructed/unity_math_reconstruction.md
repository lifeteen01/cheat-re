# Unity scalar wrapper reconstruction

[C] [I] [unity_math_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/unity_math_analysis.cpp) translates cache/metadata/context/argument setup for `2dff68..2e0080` (Cos), `2e0198..2e02b0` (Sin), and `2e3d5c..2e3e91` (Random.Range). Addresses remain numeric keys in owned copied data.

[C] Cold paths set bit1 before metadata lookup, select `UnityEngine.Mathf.Cos/Sin` or `UnityEngine.Random.Range` through the concrete class/parameter selector, read the method code, reload flags, and store the target. The context root is read before bit2 is set. Every path reloads the root before argument packaging, including warm caches. Metadata failures preserve prior flag writes; reentrant flag changes remain observable.

[C] [I] Known scalar low32/type/arity stores from `2de97c`, `2de9d4`, and `2ddbf8` are materialized. [U] Scalar-slot high32, type-tag high bytes and stack return-slot addresses are uninitialized or unavailable and remain unmaterialized. Context/executor execution stays detection-only. Actual Unity math/RNG results are required typed effects; no host math or RNG is substituted.

[C] `bind_projectile_random()` and `bind_interaction_random()` compose these wrappers. Other consumers can call `unity_math_scalar()` and propagate its status/site. [I] Literal staging uses supplied owned storage; borrowed snapshots and effect state must outlive bindings.

[C] [Fixtures](/home/john/Desktop/cheat_re/source/reconstructed/unity_math_checks.cpp) cover cold/warm caches, signed zero, NaN result bits, metadata/context failure order, both root reads, reentrant flags and domain bindings. The [byte audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/unity_math/audit.json) checks eight ranges, 1,228 bytes and 298 instructions, with independent XOR literal checks. [I] Reproduce using [audit.py](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/unity_math/audit.py) and [build.sh](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/unity_math/build.sh); pass `sanitize` for ASan/UBSan. The script also checks font pixel acquisition/conversion.
