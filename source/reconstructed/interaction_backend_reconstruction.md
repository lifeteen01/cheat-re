# Interaction console and Raycast wrappers

[C] [interaction_backend_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/interaction_backend_analysis.cpp) implements `2e5bec..2e5d49` and `2e8fac..2e90d5`. The complete native ranges, including returns, are byte-backed. [I] These are synchronous owned-data controllers with consumed callback results, not event summaries.

[C] Both wrappers set lazy bit1 before metadata resolution, dereference the selected MethodInfo's first qword, reread flags, and cache that code value. They set bit2 before observing the excluded `2cbd24` context operation. The later dispatch reloads the root after that observation, preserving callback-side mutations. A failed initialization leaves already-written flag bits intact.

| Wrapper | Metadata / cache fields | Consumed behavior |
|---|---|---|
| [C] `2e8fac` | Physics, UnityEngine, Raycast; exact six-parameter selector `334a90`; flags `3e5728`, target `3e5720`, context `3e5730` | [C] Forwards origin, direction, output bytes, distance, raw layer mask and query mode to the typed physics effect. Any nonzero returned low byte becomes true (`2e90c5..2e90c7`). |
| [C] `2e5bec` | RunConsoleCommand, empty namespace, ClientRun; selector `3349ac` with index/count -1; flags `3e4bc0`, target `3e4bb8`, context `3e4bd0` | [C] Initial `3e4240 == 0` returns immediately. Otherwise constructs the managed `inventory.endloot` string through the shared concrete `2ce718` cache, rereads console/root, then invokes the typed effect. |

[C] `bind_interaction_backend` connects the interaction predicate/action interfaces for those RVAs and retains caller callbacks for other RVAs. Snapshot and metadata-wrapper failures become explicit `GameBaseResult` statuses; the binder throws `SnapshotBindingFailure` so the outer interaction controller can return its own failure result. Earlier stores remain committed. Zero/false native results remain ordinary values.

[I] Literal stack/string constructors are represented by decoded byte strings and owned scratch storage. Addresses in `InteractionBackendCall` are evidence keys and are never invoked. [U] Matching Unity/IL2CPP/console effects and output-record ABI are supplied inputs. An empty output span explicitly denotes discarded/unmaterialized bytes; its size does not assert a native RaycastHit layout. Context/executor mechanics remain detection-only.

[C] [Fixtures](/home/john/Desktop/cheat_re/source/reconstructed/interaction_backend_checks.cpp) cover cold/warm caches, late root/console rereads, raw masks and signed zero, nonzero low-byte return, partial hit-buffer writes, missing context/metadata, bound calls and composition with `bind_metadata_wrappers`. [C] [Audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/local_interaction_audit/audit.json) independently disassembles the full wrappers and checks earlier excerpt bytes. [U] Current combined verification and broader callee closure remain tracked in [PROGRESS.md](/home/john/Desktop/cheat_re/source/PROGRESS.md).
