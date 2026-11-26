# Main movement worker recovery

[I] The four files in this contribution are an owned-memory C++20 analysis translation. The public entries are `replay_movement_main_324b30` and the independently reusable transitive launch worker `replay_launch_aim_317c3c`; the fixture entry is `rust_internal_re::check_movement_main_reconstruction()`. These files supply neither `main` nor a DLL entry, live-memory access or a spoof executor. [U] This is not an original SDK declaration or a demonstrated working game modification.

[C] Evidence starts at RVA `0x324b30` and ends **exclusively** at `0x32911e`: 17,902 bytes, 4,099 decoded instructions, 510 direct branches. Both supplied excerpts cover the same complete contiguous range. [C] The final instruction is a **tail jump** at `0x329119` to `0x329aa0`; it is represented by the final collision call. There is no first-RET truncation. [C] Every in-range branch target lands on a decoded instruction boundary. See [byte audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/movement_main_byte_audit.txt), [exact raw objdump](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/movement_main_exact_objdump.asm), [hook excerpt](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/01_hooks/324b30.asm), [server excerpt](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/05_server/324b30.asm), and [static listing](/home/john/Desktop/cheat_re/dump_analysis/static/cheat_annot.asm).

[C] The preserved DLL uses virtual layout, so the audit reads `bytes[RVA]`, without a section-file-offset conversion. Its SHA-256 remains `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`. [I] Raw helper excerpts were also generated over complete pdata intervals under [movement_main_helpers](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/movement_main_helpers). No sample instruction, binary, endpoint, or IOC is executed or contacted by these checks.

## Contiguous main-body range accounting

[I] These half-open intervals form one partition: there are no omitted instruction spans. [C] Operations inside each row are concrete code, rather than branch notifications or a caller-supplied decision for the row. [U] Calls crossing the separately listed game/dependency boundaries still need matching inputs and implementations.

| Range | Bytes | Translation |
|---|---:|---|
| `0x324b30..0x324bb4` | 132 | [I] ABI save frame projected into owned C++ locals and the three numeric input arguments; [C] initial key arguments and zero/one state. |
| `0x324bb4..0x324d16` | 354 | [C] Short-circuit aim-key OR and all 15 ordered key-record updates. |
| `0x324d16..0x324def` | 217 | [C] 66-position clear, fly eligibility, spike-slow pointer/write, cached fly/frozen state, CanShoot latch and pre-original flags. |
| `0x324def..0x324e64` | 117 | [C] Original resolution/dispatch bits, target cache and exactly one original invocation. |
| `0x324e64..0x324f75` | 273 | [C] Post-original crouch/fly flags, encoded CanShoot write and three once-only hook installations. |
| `0x324f75..0x325412` | 1,181 | [C] Local-player gates, crafting/cancellation, console-object capture, crate/door actions, GUI write, crouch/desync caches and healing. |
| `0x325412..0x325a05` | 1,523 | [C] Low-velocity item/projectile chain, mixed bones, visibility gate, counter gate, 5/15/25/35 trials, formatted hash keys, 1,000-slot pool, prediction, trajectory checks, failure and success stores. |
| `0x325a05..0x3261af` | 1,962 | [C] Trap and target grenade scans, native solver call semantics, +20/-40 repeated binary32 scan increments, trace, strict miss/zero tests and shared scan restoration. |
| `0x3261af..0x326214` | 101 | [C] Grenade AutoFire component/cooldown gate and the concrete launch worker described below. |
| `0x326214..0x3266e4` | 1,232 | [C] Sign commands, admin setter pairing, demo start/stop/disable state, lazy method/dispatch caches and string construction folds. |
| `0x3266e4..0x326dca` | 1,766 | [C] Cuff removal/mount/push/unlock actions, rotation keys and restoration, fast placement, torch state, revive modes/friend map and cooldown reset. |
| `0x326dca..0x32711d` | 851 | [C] Authorization/lock/code-change/steal gates, raw flags, independent timers, respawn command and suicide. |
| `0x32711d..0x327537` | 1,050 | [C] Code selection/tried-list traversal, ID/time/count maps, integer indices, interleaved admin enable/toggle/disable and restoration. |
| `0x327537..0x327ca7` | 1,904 | [C] Debug ray, entity/class traversal, door actions, hammer/tier gates, grade RPC, pickup, oven, corpse, demolition and rotation. |
| `0x327ca7..0x327ec9` | 546 | [C] Debug timer, saved anchor, frozen/recovery position setters, movement zeroing and latch retention until expiry. |
| `0x327ec9..0x327f37` | 110 | [C] Separate eligibility and setter predicates, player-state write and crouch-model flag. |
| `0x327f37..0x3282e7` | 944 | [C] Grass XOR/restore, six selected layer XORs, smoke-alpha cache/dispatch and noflash class-only lookup. |
| `0x3282e7..0x3286a2` | 955 | [C] Baseline capture, rotated directional noclip inputs, speed precedence, signed qword restoration, encoded movement setters, NoFall/rope flags and model-state writes. |
| `0x3286a2..0x328d66` | 1,732 | [C] Fat-bullet gates/counters, mixed bone eye, radius decay, direction regeneration, translated points, direct and candidate visibility/prediction paths, three-way trajectory result and all resets. |
| `0x328d66..0x328ebb` | 341 | [C] OmniSprint speed states, penalty/bonus terms, literal magnitude, model flag and horizontal-only rescaling. Invalid-player paths also enter this span. |
| `0x328ebb..0x3290c7` | 524 | [C] Box capture/resize, midpoint query, Jesus layer call and final collision arguments. |
| `0x3290c7..0x32911e` | 87 | [I] Native frame restores projected into ordinary C++ local lifetime; [C] final `0x329aa0` tail-call arguments and ordering. |

## Additional concrete callees and folds

| Evidence | Implementation |
|---|---|
| `0x329754..0x3297ee` | [C] Menu gate, key mode 0/1/2/other, press-edge latch, toggle, release, disabled clearing, and the early path that retains both stored bytes. |
| `0x2caf08..0x2caf29`, `0x2e0e9c..0x2e0ec9`, `0x2e5a54..0x2e5a80` | [C] Existing unsigned numeric-range predicate; concrete nonzero `+0x48` validity and validated class/name pointer chain. |
| `0x2d6354`, `0x2e5b4c`, `0x2cd32c` | [C] Reuse signed-byte hash and the existing literal-zero apparent team getter. Team equality is not fabricated from callback values. |
| `0x2ef7fc..0x2ef800`, `0x2e5b7c..0x2e5bc3`, `0x2e6a6c..0x2e6a81` | [C] Config `+0x48` read, strict cooldown with two samples on success, and exact visibility-mask selection. |
| `0x324904..0x324b30`, `0x329328..0x32957b` | [C] Full copied crafting-list traversal, signed integer task IDs, fasttrack only at index 1, 1.2-second timer, separate resolution/dispatch bitfields and console command construction. |
| `0x329120..0x329325` | [C] Owned record-copy traversal, all state/friend/point gates, literal-zero team getters, SSE-style truncating distance and later-record selection on integer ties. |
| `0x318724..0x31885b` | [C] Target-velocity filtering and shared motion writes. [U] `0x31492c` crosses to matching-game Vector3.Lerp. |
| `0x32a014..0x32a16b` | [C] Console-presence gate, respawn command and independent original resolution/dispatch caches. |
| `0x2e0e20..0x2e0e4c`, `0x2dfe64..0x2dfed0`, `0x2e3a70..0x2e3aa1` | [C] Hash lookup/allocation over 1,000 48-byte slots; parameters and owned candidate buffers; use the existing 3,601-table builder. |
| `0x2e2374..0x2e2472`, existing `0x2e2474` analysis | [C] Concrete default adapter to the existing predictor, threshold/normalization and reached instant-hit predicate. [I] Optional adapter override accepts matching owned domain inputs. |
| `0x3295bc..0x329713`, `0x32a454..0x32a4ee` | [C] Golden-angle directions with the literal sample root, game Cos/Sin calls, component multiply then add, and count-change regeneration. |
| `0x329b50..0x32a012` | [C] Entire low-velocity trajectory loop, 0.001/0.03125 steps, closest-point refinement, the unusual no-advance-on-improvement edge, ray checks, drag/gravity and final two visibility tests. |
| `0x32a4f0..0x32a76f`, `0x32a770..0x32a866` | [C] Entire alternate trajectory loop and the caller's integer 0/1/2 result behavior. No EAX result is routed through float. |
| `0x317c3c..0x3185a0` | [C] Full launch-aim controller, trap/target grenade solving, projectile branch, pool keys, predictor calls, integer/float literal preservation and concrete orientation setter reuse. [U] Its unwritten fourth format stack argument is an explicit owned input, described below. |
| `0x317194..0x3176ba`, `0x315690..0x315777` | [C] Grenade speed/gravity chain, target-motion adjustment, 100-trial angle refinement and solved/direction output; shared time update. |
| `0x320f88..0x3211ef` | [C] Entire 0.03125-step closest-segment flight solver and velocity/time/error outputs. |
| `0x32a16c..0x32a452` | [C] Entire grenade trace body including non-first-RET `0x32a3e0..0x32a451` tail, zero-distance collision behavior, separate getter cache and BasePlayer hit handling. |
| `0x2e0ff0..0x2e124a`, `0x31530c..0x315515`, `0x318a14..0x318bb5`, `0x320db4..0x320f57` | [C] Look rotation, Euler conversion/wrapping, quaternion construction, quaternion/vector multiplication and exact scalar staging; reuse recovered angle polynomials. [U] Game Cos/Sin results remain inputs. |
| `0x329a68..0x329a85`, `0x329a88..0x329a9e` | [C] Concrete wrapping integer rotations/XORs for movement `+0x118` and `+0x120` stores. |
| Native std::string/vector/map constructors, accessors and destructors within the body | [I] Owned standard containers model content and mutation order. Native allocator internals, allocation addresses and exception unwinding are not represented as executable sample code. |

## Boundary inventory and remaining dependencies

[I] `MovementMainCalls` separates pointer, uint32, scalar, predicate, vector, quaternion, string and effect classes. Arguments use an owned tagged value. These signatures describe analysis data, not a verified Windows ABI. [C] Every required callback is checked before invocation; missing callbacks return `missing_boundary` with the target RVA. Copied-memory faults return `missing_bytes` with the read/write address. Already performed stores and lazy bits remain observable on a stop. [I] An explicitly supplied pointer value zero is a native invalid-object input; it is not the fallback for an absent callback.

| Boundary class | Required targets |
|---|---|
| [U] Pointer/game/metadata results | `0x2cb9fc`, `0x2ce5d8`, `0x2dda9c`, `0x2e02b0`, `0x2e069c`, `0x315924`, `0x315a24`, `0x315a54`, `0x32957c`, `0x329714`, `0x3297f0`, `0x329920`, `0x329a38`, `0x334224`, `0x35d31c`, `0x368a84`, `0x369298`, `0x369764`, `0x36a2f4`, `0x36b938`, `0x370508`, `0x371464`, `0x37154c`, `0x371688`, `0x3716e0`, `0x3717c0`, `0x371df4`, `0x371eb8`, `0x372abc`, `0x372b30`, `0x372efc`, `0x37628c`. |
| [U] Integer results | `0x322580`, `0x36c79c`, `0x37261c`. Item IDs retain all 32 bits. |
| [U] Scalar results | `0x2dff68`/`0x2e0198` (matching-game Cos/Sin), `0x2e071c`, `0x2e6240`, `0x31581c`, `0x3666b0`, `0x36970c`. |
| [U] Predicates/input/physics | `0x2e2320`, `0x2e5e4c`, `0x2e6744`, `0x2e8910`, `0x2e89e4`, `0x2f7dd0`, `0x2f824c`, `0x3247cc`, `0x368244`, `0x368468`, `0x3693b0`, `0x36a0e0`, `0x36a1e4`, `0x36a20c`, `0x36a238`, `0x36b288`, `0x372bf4`. |
| [U] Vector/quaternion/string results | Vectors: `0x31492c`, `0x368100`, `0x368b9c`, `0x368be8`, `0x369164`, `0x3691c0`, `0x36924c`, `0x369790`, `0x369c1c`, `0x3743f8`, `0x3747d4`; quaternions: `0x3738cc`, `0x3739c4`, `0x373c60`, `0x374aa4`; owned identifier string: `0x369e70`. |
| [U] Original/game/dispatch side effects | `0x2cba50`, `0x2cbd24`, `0x2d2094`, `0x2e480c`, `0x32225c`, `0x32308c`, `0x329aa0`, `0x366c30`, `0x366ccc`, `0x366d7c`, `0x366e38`, `0x366ef0`, `0x36817c`, `0x36ad68`, `0x36ae90`, `0x36b004`, `0x36b758`, `0x36ba2c`, `0x36cbe4`, `0x36ce18`, `0x370968`, `0x370b50`, `0x3721b4`, `0x372c1c`, `0x373eb4`, `0x373f0c`, `0x375140`. |
| [U] Method resolution | `0x3349ac` returns a copied MethodInfo address; the implementation dereferences its first qword, preserves resolve-before-dispatch and sets initialization bits before crossing the boundary. Namespace/class/method and both selectors `-1,-1` are explicit. |
| [U] Raycast | `0x2e8fac` supplies hit flag, point, distance and numeric collider key. Arguments retain origin, direction, maximum distance, uint32 mask and query mode. |
| [U] Unavailable copied stack datum | In the additional launch worker, `0x3183e3` calls `0x2ee714` with the four-field format from `0x2f37f0`, but initializes only speed, gravity and drag. The fourth double comes from the unwritten caller stack qword `rsp+0x28`. `launch_format_fourth` supplies that owned datum explicitly; absent data stops with `missing_bytes`, boundary `0x2ee714`, address **stack offset** `0x28`. No default value is invented. The constructor at `0x31841c` separately supplies fourth parameter zero. |

[U] Matching GameAssembly/global metadata, game-object relationships and API implementations remain unavailable inputs. Existing reconstructed target selection (`0x2e02b0`) and point selection (`0x369790`) may be bound using their owned domain interfaces; this file does not invent their missing game data. [C] There are no deliberately omitted branches inside `0x324b30..0x32911e`. [U] Completion of these bodies does not supply unavailable game/metadata data, the unwritten stack datum, the broader progress ledger, the live game ABI or server behavior.

## Literal behavior and analysis safeguards

- [C] `0x2df5dc` is false for equal vectors and true for unequal or unordered coordinates. `0x2e3b58` is true only when all coordinates compare equal to zero, including signed zeros. The literal root is reused; `std::sqrt` is not substituted for it.
- [C] CanShoot performs its pre-original encoded qword write on enable and once on disable; the post-original read is the same config's `+0x48` getter. The original may change copied fields between those writes.
- [C] Noclip restoration sign-extends saved dword `0x3f75ec` and writes a qword to movement `+0xb8`. The capture sentinel is zero, so a captured zero can be recaptured later.
- [C] Low-velocity success stores Z, scale, XY, then its validity latch. Its visibility failure stores zero XY/Z, scale 1, then clears the latch. Ordinary failed trials store scale, latch, then zero XY/Z.
- [C] Grenade speed subtracts binary64 `0x3fdd000010000000`, approximately `0.4531250149011612`; the scan adds `0.05f` 20 times or `-0.05f` 40 times, rather than substituting a single addition. Counter and NaN/strict-comparison paths retain their native branch directions.
- [C] Native fat-bullet candidate `i=0` uses the neck. For `i>0`, `0x328aca` reads element `i+1`, up to two elements past logical size. [I] `candidate_backing_tail` supplies copied capacity bytes explicitly. Missing capacity data stops at dependency `0x2ef7d0`; the translation neither corrects the index nor substitutes a zero candidate.
- [C] Launch RPC `0x366ef0` receives float bits `0x4e7e0000` (1,065,353,216.0), not float 1 or an integer ID. Projectile launches preserve their always-orientation-write branch even with AutoFire enabled.
- [I] Formatting is bounded by the observed 32-byte buffer. Oversized output stops explicitly; MSVC truncation/locale behavior and reads following an unterminated truncated native buffer are not fabricated.
- [C] The helper `0x318724` updates shared target motion after the earlier automation/trajectory branches; subsequent invocations therefore see the updated values.
- [I] Iteration limits, finite/int32 checks around the floor-like `0x320c2c` loop count, copied-memory bounds and explicit capacity checks are offline safeguards, not attributed native protections. [U] Floating-point exception flags, denormal controls, directed rounding, locale-specific formatting and allocation/exception behavior are not verified.
- [I] `globals` owns byte-addressed module-relative data; `Snapshot` owns copied object data. Consumers supply those separate numeric domains and matching owned container content, including existing candidate buffers for nonempty copied pool records. No address is dereferenced as a host pointer.

## Validation and integration handoff

[C] Both strict GCC 15 fixtures and ASan/UBSan fixtures passed. The builds use C++20, `-Wall -Wextra -Wpedantic -Werror`, `_GLIBCXX_ASSERTIONS`, `-O1`, and `-ffp-contract=off`; sanitizers use nonrecovering errors. [I] Driver and toolchain wrappers remain under `dump_analysis`; no existing build or source documentation was edited by this contribution.

```sh
bash dump_analysis/semantic_reconstruction/check_movement_main.sh
bash dump_analysis/semantic_reconstruction/check_movement_main.sh sanitize
```

[I] The wrapper uses the exact workspace-local GCC/sysroot setup from the package README. Logs: [strict fixtures](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/movement_main_verification.txt), [sanitizer fixtures](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/movement_main_sanitizer_verification.txt).

[C] Fixtures exercise original/tail ordering, missing callbacks/bytes, preserved lazy bits on stops, invalid-player cleanup, key-edge/menu state, CanShoot enable/disable, 66-position reset, once-only hook order, signed noclip restoration, encoded setters, unordered OmniSprint, cooldown equality/NaN, demo transitions, tried-code maps and negative indices, grass restoration, frozen-position recovery, low-velocity pool/build/concrete-default-prediction/trajectory, candidate capacity failures, grenade pitch refinement, handcuff integer-distance ties and both crafting traversals, launch gating, unavailable format-argument failure, projectile orientation with AutoFire, grenade RPC scalar bits and trap launch behavior. [U] These tests cover those properties; they do not establish exhaustive path equivalence for all 510 branches or execute the preserved sample.

[I] Parent integration consists of adding the new header to the domain include aggregator, the implementation/check files to the build, and one call to `check_movement_main_reconstruction()` in the combined fixture driver. The additional `replay_launch_aim_317c3c` entry can bind the existing launcher domain's worker callback using the shared owned movement state. Parent-owned progress, input/output manifests and dependency accounting should retain the explicit stack-datum and matching-game limits above.

## Independent movement/launch corrections

[C] A fresh [semantic audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/review_movement/REPORT.md) confirmed and corrected three translation errors. Both low-velocity and launch constructors now map projectile/ammo+`0x34` to table+4 drag and +`0x38` to table+8 gravity. Native `2df2e8` stores incoming xmm3 at +4 and xmm2 at +8; the format key independently retains speed,+34,+38,fourth order. Launch constructor fields reload after formatting, while its fourth constructor parameter remains zero and its unwritten fourth format argument remains explicit input.

[C] Grenade solver `317194` now returns the initial launch velocity of the selected trial, matching the copy through rbp+44..4c to output+10/+18; the previously returned integrated flight velocity is a separate native field. Low-velocity MINSS caps now use literal bits `0x3fbf5c29` (1.495f) from `28daf8` at both `3254d5` and `3257a1`, while the committed chosen scale can still be1.5. The target grenade scan already preserved NaN angle correctly; its inaccurate reset comment was corrected.

[C] New regressions use unequal drag/gravity fields, inspect exact pool offsets and format-derived hashes, verify capped first-trial speed bits `0x426f3333` (59.80 text at base speed40), and select a positive-flight-time grenade whose returned initial Y velocity remains zero despite accumulated gravity. The typed-failure catch/test added by the parent remains intact. [C] Strict and ASan/UBSan fixtures pass after the fixes, and four isolated deliberate reversions fail their intended assertions: [strict log](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/review_movement/strict_verification.txt), [sanitizer log](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/review_movement/sanitizer_verification.txt), [reversion evidence](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/review_movement/regression_reversions.json). [U] The audit's510-branch inventory is not exhaustive dynamic path equivalence; foreign game effects, FP environment, native container/exception ABI, unavailable format qword and detection-only executor limits remain explicit.
