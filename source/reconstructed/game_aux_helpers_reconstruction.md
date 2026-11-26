# Auxiliary copied game helpers

[C] The 12 complete native bodies below total 644 bytes and 16 conditional branches. Exact PE extents, call sites, branch sites, byte hashes and copied excerpts are recorded in `dump_analysis/semantic_reconstruction/game_aux_helpers/range_branch_dependency_ledger.json`. Every body is a literal copied-data operation; no sample target is invoked.

| Native range (exclusive end) | Concrete operation |
|---|---|
| `3740e0..374123`, `374124..374167`, `3743f8..37443b` | Guard receiver, copy raw Vec3 at `+178`, `+16c`, `+338`, respectively. |
| `37628c..3762ac` | Guard receiver, return QWORD at `+200`; invalid receiver returns zero. |
| `36ad68..36ad9b`, `36ae90..36aec3` | Set/clear bits`4`/`20` at DWORD`+708`, according to the low byte of the second input. |
| `372c1c..372c35` | Guard receiver, OR the full DWORD input into field`+24`. |
| `374268..3742ac` | Guard receiver, existing getter`37423c` (`+144`) strictly above copied zero, then existing getter`374300` (`+188`) strictly below copied`2a8ecc`; unordered comparisons return false. |
| `315a24..315a52`, `329a38..329a66` | Read copied GameAssembly base, literal static class cell at`+f0c8518`/`+f0083d0`, range-check class, return its QWORD`+b8`. |
| `32957c..3295ba`, `329714..329752` | Read base-relative class at`+f0e86e8`/`+f0a3650`; range-check class and its QWORD`+b8`, then return QWORD`+28`/`+20`. |

[C] Invalid vector receivers reach`3c7bbc..3c7bc8`, which actually writes a zero QWORD and then zero DWORD. This is confirmed code, not an invented initialization or an unwritten-stack path. `game_aux_vector_into` preserves the valid-path eight-byte read/store followed by four-byte read/store, including overlapping source/output and earlier writes on a later missing read/store. Its result is the numeric output address. [I] `game_aux_vector` projects the same data to the existing typed Vec3 callbacks, whose output storage does not alias the Snapshot. `game_aux_write` returns an analysis did-write boolean; it is not attributed as the native setters' return value.

[I] Include `game_aux_helpers_analysis.hpp`. `GameAuxEnvironment.module` locates copied DLL globals; globals and game bytes may use separate Snapshots, and may alias if the caller supplies one Snapshot. The four static chains read the copied GameAssembly pointer at`module+3d6f00` unconditionally, before validating the class pointer. The one-hop variants do not add an extra guard on the returned`+b8` value. The two-hop variants guard it before reading the final field. No final returned pointer gets a fabricated validity check.

[C] `bind_game_aux_aim`, `bind_game_aux_projectile`, `bind_game_aux_interaction`, `bind_game_aux_movement` and `bind_game_aux_frame` handle the matching generic object/vector/predicate/action roles and retain supplied fallbacks for unrelated roles. Static roots accept the no-argument movement/frame calls. Missing required copied bytes propagate `SnapshotBindingFailure`; malformed owned argument arrays stop explicitly. These adapters borrow both Snapshots, which must outlive them. The existing field getter implementation is reused for both scalar children of`374268`. No parent source/build/ledger is modified.

[C] `check_game_aux_helpers_reconstruction()` has no source-file main. Fixtures exercise all12 bodies, rawNaN/signed-zero vector bits, actual invalid-vector zero stores, overlapping8+4copies, partial-write failure retention, pointer guard/missing bytes, DL-only setter behavior, unrelated-bit retention, raw signed32OR arguments, module relocation and all four static chains, guard depth, strict/unordered/infinite predicate comparisons, short-circuit missing-data order, and all five domain bindings/fallbacks/typed failures. Strict GCC15/Werror C++20 with`-ffp-contract=off`, `_GLIBCXX_ASSERTIONS`, and ASan/UBSan checks run through the evidence-only`game_aux_helpers/verify.sh`; corresponding verification/source manifests record the actual result.

[U] Native runtime/object ABI and real GameAssembly/Unity effects are not inferred. These12 routines themselves require no foreign effect and leave no untranslated local branch. Other recoverable local dependencies remain separately inventoried in `review_dependency_closure/exact_remaining.json`; the three parent-owned game-root helpers, font-atlas inputs and text-input work are outside this module.
