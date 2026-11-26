# Runtime metadata/cache wrappers

[C] This module translates all 21 assigned native controller roots:20 entries from the closure audit's `time_camera_transform_metadata_wrappers` group plus `2e0bf0`. Their exclusive PE extents cover 6,225 bytes and 55 conditional branches. Fresh DLL byte slices disassembled with`objdump` match every direct call/jump/conditional target in the supplied static listing. Exact ranges, byte hashes, branch sites, cache/metadata descriptors and 103 distinct direct dependencies are recorded in `dump_analysis/semantic_reconstruction/game_runtime_wrappers/range_branch_dependency_ledger.json`.

| Native roots | Recovered operation before the actual matching-game effect |
|---|---|
| `2e081c`, `2e0bf0`, `2e6240`, `31581c` | `Time.get_fixedDeltaTime/get_smoothDeltaTime/get_time/get_realtimeSinceStartup`: distinct caches, zero-arity float packaging and consumed float results. |
| `315924` | `Camera.get_main`: separate cached metadata wrapper, not the parent-owned MainCamera static-chain root`2e069c`. |
| `315a54`, `3297f0`, `32be08`, `330700` | Four independently cached `Component.get_transform` wrappers with receiver guards. |
| `329920` | `RaycastHit.get_transform`; its value receiver has no numeric range gate. |
| `370508` | Guarded `Component.get_gameObject`. |
| `3247cc` | First composes the concrete aux`329714` static chain, then guarded `Behaviour.get_enabled`, normalized from AL to boolean. |
| `36c79c`, `36cbe4` | Guarded `Camera.get_cullingMask/set_cullingMask`, retaining all 32 result/argument bits. |
| `36ce18` | Guarded `Behaviour.set_enabled`; the low input byte is retained, including noncanonical values. |
| `370968` | Guarded `BoxCollider.set_size`, with typed Vec3 and separately tracked raw input pointer. |
| `373f0c` | Guarded `PlayerWalkMovement` method literal `%adb7a5f1f195e60174cae56fc8b24e1362215881`, pointer/float packaging. No inferred method meaning is assigned. |
| `31492c` | `Vector3.Lerp`, caller-output clear, three raw pointer slots plus float slot, produced vector consumed. |
| `3738cc` | `Quaternion.Inverse`, exact-count 1 selector`334a90`, output not precleared. |
| `374bf8`, `374d60` | Guarded `Transform.InverseTransformDirection/InverseTransformPoint`, local temporary clear and final eight/four-byte output stores. |

[C] `game_runtime_specs()` exports the literal domain table. It is static C++ data, not a runtime assembly/bytecode interpreter. `game_runtime_wrapper()` performs native guards, exact copied cache-field reads/writes, metadata traversal through existing selectors, dispatcher observation/reloads, known argument stores and returned-value/output behavior. The final Unity/game methods are required typed callbacks in `GameRuntimeEffects`; a missing callback stops after the reached local writes. It never executes a numeric target or returns an event as a substitute for a result.

## State and ordering

[C] Each cache sets bit1 before metadata/literal work, then reads the selected MethodInfo code pointer, reloads flags and stores the target. Bit2 setup reads the dispatcher before storing bit2; the observer sees the committed flags. The invocation reloads the dispatcher while retaining its local target. Metadata/context callback mutation and reentry therefore remain observable. `3247cc` obtains and validates its actual`329714` receiver before reading any wrapper cache. Other wrappers preserve their individual guard presence or absence.

[C] The normal selectors are `3349ac` with parameter index/count`-1` and the native empty parameter-name input. `3738cc` alone uses the already released exact-count`334a90` with count 1. Class and namespace literal order is retained; the obfuscated PlayerWalkMovement method has empty namespace. Fixed encoded literal constructors/decoders are adapted to owned decoded strings. The previously unannotated immediate literals for `Vector3` and `Inverse` are byte-confirmed by XOR(index+37h), including their NUL byte. Generic native string object/decoder ABI is not claimed.

[I] `GameRuntimeEnvironment` supplies the copied DLL module address and an explicit owned literal area. The `image` Snapshot contains globals, that area and metadata records consumed by the existing selectors. The `game` Snapshot contains copied struct input/output and the aux static chain; both references may identify the same Snapshot. Numeric keys remain data, never host pointers. The caller must provide actual copied bytes rather than infer runtime metadata from the unavailable game artifacts.

## Known and unmaterialized argument bytes

[C] Shared `metadata_argument_one_2cb9fc`, `metadata_argument_two_2d2094` and `metadata_argument_index_32b1c8` supply their supported common cases. Optional actual return keys preserve their native store location; unknown-first/output and supplied-return-order cases use explicitly scoped private folds. The zero-arity Camera bridge reuses the released argument binder; its discarded adapter return is not the wrapper's result, which is produced separately by the required typed effect.

[C] The remaining reached packaging follows literal byte widths: pointer slots are eight bytes; integer/scalar slots materialize only their lowDWORD; boolean slots materialize one byte. Known type bytes and arity are written in native order. Unknown stack-high/type bytes and raw pointer values are span-gated and left unmaterialized. Private reached cases for `3214f4/32225c` are not competing standalone implementations or whole-body coverage claims: the separate `game_input_physics_*` owner supplies those public APIs.

[I] `GameRuntimeCall.unmaterialized_argument_bytes` gives a byte mask for each active raw argument slot, `unmaterialized_type_bytes` covers the four type bytes, and `unmaterialized_return_pointer` tracks the raw return-slot key. Masks are meaningful at the final typed effect; they do not imply that the pointed-to return storage is implemented as a native ABI. Typed owned values are passed separately. No unknown address is replaced by host address conversion or zero.

[C] When actual numeric keys are provided, Lerp clears its caller output before reloading the dispatcher and reading aliased input vectors. Inverse transforms instead clear their separate `temporary_address` after cache setup, leave caller output intact until the final copy, and pass that temporary as raw argument0. Inverse quaternion does not clear output. The actual typed result is consumed and materialized at supplied output keys. Earlier cache/argument/output writes remain if a later required byte/callback is missing.

[U] Value-only requests without raw numeric keys adapt the native pointer/alias ABI. Their known values are concrete, but unknown native caller/temp/return addresses remain explicitly unmaterialized; this is not a claim to reproduce every possible stack overlap or foreign implementation's partial struct write. The actual matching Unity/game effect must supply the result. No raw runtime ABI, full dispatcher/executor or unknown stack data is synthesized.

## Binders and checks

[I] `game_runtime_wrappers_analysis.hpp` provides typed generic binders for Aim, Projectile, Movement, Interaction, UnityApi/frame dependencies and OrientationApi. `game_runtime_wrappers_domains.hpp` composes legacy movement-tick time, frame/raid time and world interaction/worker/full-overlay time callbacks. All binders borrow the Snapshots, retain unrelated callbacks and capture environment/effects by value. State and callback lifetimes must exceed bound calls.

[C] `check_game_runtime_wrappers_reconstruction()` exports the fixtures, with no main in production sources. Every one of the21 roots is exercised cold and warm. Other cases cover guarded early returns, the unguarded RaycastHit path, exact-count versus negative-index metadata selection, failed metadata and effect retention, metadata reentry/flag mutation, target-versus-dispatcher callback rereads, byte/DWORD unknown masks, Lerp input/output/dispatcher aliasing, transform temporary versus caller output, uninitialized quaternion output preservation, partial argument-store failure, raw integer/byte/NaN payload forwarding and the domain bindings.

[C] Strict GCC15 C++20 uses `-Wall -Wextra -Wpedantic -Werror`, `_GLIBCXX_ASSERTIONS` and `-ffp-contract=off`. The evidence-only `game_runtime_wrappers/verify.sh` also supports nonrecovering ASan/UBSan with leak detection. `verify_manifest.py` records before/after hashes around each actual build/run. Parent combined integration is a separate checkpoint.

[U] No assigned root branch remains an untranslated local controller. Remaining requirements are actual typed final effects, missing copied metadata/runtime/scratch values, documented fixed-literal/storage ABI specializations and the excluded execution machinery. Matching `GameAssembly.dll`, `UnityPlayer.dll` and `global-metadata.dat` are not downloaded locally and remain Needed/to do. Other closure-audit groups remain separately assigned or unimplemented; this 21-root release is not whole-game closure. No copied sample instruction, external input binary or IOC was executed, changed, uploaded or contacted.
