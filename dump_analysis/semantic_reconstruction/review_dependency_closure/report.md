# Dependency closure reconciliation

[C] All484 imported documented RVA records have a scope classification in `reconciliation.json`, retaining their original references, current production body/descriptor hits and coverage-ledger statuses. [I] This is a scope and routing audit, not an equivalence review of every released function. No existing source, build, progress file or completion ledger was edited. The explicitly authorized NEW`game_aux_helpers_*` files are the only production additions.

[C] `exact_remaining.json` identifies65 distinct native function ranges still requiring local implementation in this audited scope:61 starts from the484 records, plus four directly exposed children (`2e0bf0`, `2e0f10`, `372ba4`, `322f30`). Each has its exact PE runtime extent, byte count/hash, copied assembly, direct local dependencies and current forwarding evidence. These are scoped findings, not a global count of missing functions. Generic CRT and released-domain descendant closures are not silently counted complete. Five projectile literal/conversion/comparison binding gaps and eight specialized menu ranges are recorded separately.

[C] The previous64-body preliminary list omitted the owner`322f30..323006` (214 bytes): imported token`323004` is inside that unimplemented metadata collider helper, reached by`322ef8`. The corrected inventory records the owner once; it does not count the interior token as another function.

## Actual remaining local scope

| Group | Functions | Native bytes | Why this is local work |
|---|---:|---:|---|
| Frame collections/world controllers | 6 | 2,911 | `2d60d0`, `3211f0`, `3684e0`, `316540`, `318f34`, `3096c4` still reach `UnityFrameApi::domain`; there is no production controller/binder for these native bodies. |
| Time/camera/transform metadata wrappers | 20 | 5,970 | Exact guards, cache flag/target/context cells, metadata selection and known argument staging remain before the actual foreign Unity/game result. |
| Direct game-target wrappers | 13 | 2,095 | Native wrappers still perform recoverable guard/cache/argument work before their typed final effect. |
| Small composite/field controllers | 14 | 1,212 | Remaining predicates, classifiers, setters and compositions include`368244`, `368468`, `3691c0`, `36a0e0`, `36a1e4`, `3714c4`, `371688`, `3717c0`, `371df4`, `372bf4`, `373eb4`, `322ef8`, `36ba2c`, `32308c`. |
| Key/physics controllers | 4 | 627 | `2e2320`, `2e5e4c`, `2e8910`, `329aa0` retain local branching/query preparation or cheat-owned latch/cache behavior. |
| Known argument stores before excluded executor | 3 | 424 | `2e480c`, `3214f4`, `32225c` have recoverable known data stores; execution/context machinery stays detection-only. |
| Newly exposed immediate children | 4 | 731 | Three missing child functions plus collider metadata owner`322f30`. |
| Mouse-wheel input queue | 1 | 154 | `38cd28..38cdc2` is enqueued through the backend's generic local callback; its ImGui event-container behavior is distinct from a foreign game effect. |

[C] The65 ranges total14,124 bytes. [I] Parent assigned the20 metadata-wrapper roots plus time child`2e0bf0` as the next implementation wave in NEW`game_runtime_wrappers_*`; assignment does not yet mark them translated. Other groups remain separate work. The parent owns`2dda9c/2e069c/2e0e4c`; font-atlas-input and text-editor/input pipeline agents retain their active scopes.

## Closed local omissions from this audit

[C] NEW`game_aux_helpers_*` implements12 whole bodies (644 bytes,16 conditional branches): vectors`3740e0/374124/3743f8`, pointer`37628c`, writes`36ad68/36ae90/372c1c`, predicate`374268`, static chains`315a24/32957c/329714/329a38`. All five generic domain binders are provided. Strict GCC15/Werror C++20 and ASan/UBSan fixtures pass with unchanged source hashes. These bodies have no remaining foreign effect; only actual copied data is required.

[C] Minimal discriminating cases are in`game_aux_helpers_checks.cpp`:

- Raw vector source words`{1,2,3}`, output at source+4 produces`{1,2,2}`: native reads/stores eight bytes before reading/storing the final four. A single aggregate copy gets this wrong.
- Invalid vector receiver calls`3c7bbc`, whose actual bytes write zero8+4. It is not an unwritten-output branch. A missing final store retains the initial zeroQWORD write.
- Setter input`0x100` has zeroDL and clears the selected bit; treating the whole operand as a boolean incorrectly sets it.
- One-hop static lookup can return raw`+b8==1`; only the two-hop variants guard that pointer before reading`+20/+28`. Adding a final validity test changes behavior.
- `374268` rejects equality and unordered comparisons, and skips the upper field/threshold when the first comparison is false. Its threshold is actually copied from`2a8ecc` (bits`40fccccd`,7.900000095367432); no inferred game meaning is assigned.

## References that do not identify missing functions

[C] Sixty imported tokens occur only as documented range endpoints. For example, renderer documentation's`39fd18..39fd68` does not itself request a missing function at`39fd68` (which separately belongs to the active font constructor scope). Named bodies and nearest pdata owners do not alter that reference's role.

[C] Shared descriptor interpreters are authoritative implementations too. The metadata wrapper specs,28 field getter specs, game-helper direct/composite dispatch, sky descriptor dispatcher, Unity cache catalog, generated menu page bodies and font/draw coverage tables must be examined with their controller/binder. Lack of a separately suffixed function does not show omission. Conversely, fixture tables are excluded from implementation evidence: the old movement fixture's`{0x372bf4,false}` is a mock result, not a getter implementation.

[I] Owned `std::map`/vector/string equivalents, explicit TargetRecord input spans, copied font metrics and allocator leaves retain their declared native-layout/ABI limitations. They are not automatically missing game functions. Some binding work remains even where the local behavior is already available: Aim's scalar-format/destructor callbacks, visibility's owned-registry insertion path and projectile class/literal conversions/comparisons are kept explicit. Five projectile binding segments are listed separately in`exact_remaining.json`; they are not relabeled foreign merely because a callback currently supplies them.

[C] Several old renderer coverage rows still say`[U]` for bodies implemented by newer modules, such as`3a31f8`, default builder`3a59bc` and the drawlist/shape implementations. Reconciliation retains both the old statement and the current production evidence. It does not rewrite the original ledger or infer equivalence from successful compilation.

[U] Omitted native stack/argument bytes remain actual input limits: icon transition's seven tail bytes, invalid quaternion scratch, launch's fourth formatting argument and the overlay's omitted format arguments. No byte recovery from those machine-code ranges proves the missing runtime values. Likewise, matching`GameAssembly.dll`, `UnityPlayer.dll` and`global-metadata.dat` are not downloaded locally yet and remain Needed/to do. Their absence does not excuse a recoverable sample-local guard/cache/selector/field/argument operation; their actual effects and ABI remain unavailable.

## Independent root review

[C] Fresh slices were read directly from the unchanged virtual-layout DLL and disassembled with system`objdump`: `2dda9c..2ddb0d`(113), `2e069c..2e071c`(128), `2e0e4c..2e0e99`(77), totaling318 bytes. Exact slice hashes are in`root_review_bytes.json`. No sample instruction was executed. The review also read all five added domain adapters in`game_root_domain_bindings.cpp` and their public declarations.

[C] No concrete mismatch was found in that scope. Checked distinctions include saved cache flags, target-cell ordering, dispatcher reread after context observation, zero-arity known argument store, MainCamera's class/static-field guards, its unconditional second`+38`read in the AND-mask path, gate's raw low-byte result and generic bool projection, fresh repeated local-player queries, preservation of unrelated callbacks and typed failure propagation through frame/raid adapters.

[C] An independent strict C++ probe passes cold/warm local-player behavior, observer mutation of the dispatcher, metadata literal argument order, camera/gate reads, noncanonical gate byte`fe`, and tick/instant/frame/raid composition. `root_review_verification.json/.txt` record the tested source hashes and result. [U] This short review does not validate the unavailable final GameAssembly effect, executor implementation or live ABI; it finds no discrepancy in the recovered local controller/adaptation scope.
