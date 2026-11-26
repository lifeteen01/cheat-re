# Aim and weapon reconstruction, second wave

[I] Analyst-authored human-readable C++20 for vendor analysis; this is neither recovered original source nor a drop-in DLL. [C] Only owned `Snapshot` bytes and ordinary fixture code are read or changed. [C] No sample instructions, game calls, IOC connections, uploads, or stack-spoof executor are used. [I] The shared [entities_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/entities_analysis.hpp) and [server_analysis.hpp](/home/john/Desktop/cheat_re/source/reconstructed/server_analysis.hpp) are included directly. [C] The combined build includes both translation units and calls `rust_internal_re::check_aim_weapon_reconstruction()`; this domain has no separate deliverable `main`.

[C] Source evidence is the preserved [virtual-layout DLL](/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll) (SHA-256 `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`), original [assembly](/home/john/Desktop/cheat_re/dump_analysis/static/cheat_annot.asm), original [decoded string getters](/home/john/Desktop/cheat_re/dump_analysis/static/cheat_decstr.txt) and [configuration cross-references](/home/john/Desktop/cheat_re/dump_analysis/C_vmp/cfg_users.json). Actual instruction bytes were extracted using [evidence.py](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/evidence.py) into [aim/weapon evidence](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/aim_weapon/primary.asm). [C] The original input/manifest binaries were not edited.

| Implemented operation | RVA interval, exclusive end | Scope |
|---|---|---|
| `replay_aim_2f9988` | `0x2f9988..0x2fa2fd`, 2,421 bytes | [C] Entire worker control flow, all four subtype branches, marker retention/clear rules, prediction arguments, angle writes, smoothing and early-return order. [U] Explicit getter, prediction, format, transform and helicopter boundaries below. |
| `replay_weapon_319024` | `0x319024..0x3192da`, 694 bytes | [C] Entire dispatcher control flow: melee byte, Eoka options, conditional view chain, recoil worker, baseline lookup, fast-fire scaling/restoration, auto/sway calls. [U] This does not complete all weapon modifications elsewhere in the DLL. |
| `aim_point_369790` | `0x369790..0x369c1b`, 1,163 bytes | [C] Primary/secondary bone modes, priority indices, exact ScientistNPC2 hash distinction, mixed-coordinate points and final fat/pierce/PSilent override. [U] Bone access, dynamic choice, key state and class-name retrieval supplied. |
| `select_target_2e02b0` | `0x2e02b0..0x2e069a`, 1,002 bytes | [C] KeepTarget, validity/category/local gates, projection, friend and enemy records, visibility, distance, ordinary FOV ranking and enemy override. [I] Owns/copies the container input instead of claiming its STL/game ABI. |
| `target_eligible_36aec4` | `0x36aec4..0x36af58`, 148 bytes | [C] Scientist, dead, category, player-only, wounded and sleeper gates with lazy predicate calls. |
| `replay_recoil_36bc14` | `0x36bc14..0x36be9a`, 646 bytes | [C] First-use delay/recoil capture, optional recoil pointer override, local recoil compensation/clear, rage scaling and restoration to captured baselines when disabled. |
| `full_auto_36b434`, `no_sway_36be9c` | `0x36b434..0x36b457`; `0x36be9c..0x36bebc` | [C] Observed byte/qword writes after numeric range checks. No invented reverse writes. |
| `melee_id_371828`, `projectile_id_3719e8` | `0x371828..0x3719e6`; `0x3719e8..0x371c36` | [C] All 42 / 54 immediate-ID members, both return tails. |
| `classify_weapon_subset` | gates from `0x3721b4..0x37221f`, `0x371464..0x3714c2`, `0x371eb8..0x371f24`, `0x3716e0..0x371761` | [C] Range, ID and category decisions. [U] The native definition/category getter sequences remain callback boundaries in the worker; the pure function consumes their copied outputs. |
| `approximate_sqrt_2e3c88` | `0x2e3c88..0x2e3ce2`, 90 bytes | [C] Magic inverse-root seed, arithmetic shift, two Newton steps and reciprocal. `0x3c8f34` jumps here. |
| `approximate_asin_3c85e8`, `approximate_atan2_3c86ac` | `0x3c85e8..0x3c86a9`; `0x3c86ac..0x3c87ef` | [C] Literal mixed-f32/f64 polynomial stages and quadrant tests. [U] Floating-point exception state and signaling-NaN equivalence are not claimed. |
| `aim_angles_2f80bc` | `0x2f80bc..0x2f817e`, 194 bytes | [C] Origin minus point, approximate magnitude, pitch asin, negative atan2 yaw, exact f32 degrees multiplier. [C] The native discarded `0x3c8e0c` rounding result does not feed subsequent arithmetic. [U] Its possible floating-point exception effects are omitted. |
| `wrap_angles_316fd0`, `wrap_once_2f84e8` | `0x316fd0..0x31703c`; `0x2f84e8..0x2f8540` | [C] Repeated versus one-step +/-360 operations with +/-180 inclusive endpoints. [I] Non-progressing native loops stop with a status. |
| `clamp_dispatch_2ed2ac` | `0x2ed2ac..0x2ed301` with comparator `0x2dde88..0x2dde94` | [C] The second comparison uses the original value, retaining unordered values. |
| Small inlined operations | `0x2e1278..0x2e12df`, `0x2e0ee8..0x2e0f10`, `0x2dff30..0x2dff65`, `0x2ef814..0x2ef834`, `0x36b504..0x36b52e` | [C] Normalization, exact magnitude addition order, distance, smoothing multiplication, and item-ID-specific `+1` velocity scale. |

[C] Byte excerpts below are actual preserved bytes; consult full extracted functions for intervening instructions. [C] `primary.asm`, `helpers.asm`, `more_helpers.asm`, `exact_math_tails.asm`, `id_tables.asm`, `sqrt_dependency.asm`, `distance_dependency.asm`, `power_dependency.asm`, and `minmax.asm` contain the corresponding disassembly. [I] Explicit leaf limits were supplied to `evidence.py` for alternate return tails; its default first-RET heuristic is insufficient for those helpers.

| Site | Bytes | Consequence |
|---|---|---|
| `0x2f99df` | `40 38 3d 42 df 0e 00` | [C] Aimbot value at `0x3e7928`; then aimmarker/PSilent/TargetHelicopter form an OR gate. |
| `0x2f9b29` / `0x2f9b38` | `f3 41 0f 10 85 f8 03 00 00` / `f2 0f 5c 05 d0 95 f9 ff` | [C] Read thrown field `+0x3f8`, promote to double and subtract double at `0x293110`. |
| `0x293110` | `00 00 00 10 00 00 dd 3f` | [C] Double is `0.4531250149011612`, not `0.25` or an integer-rounded approximation. |
| `0x2f9e7e` / `0x2f9e86` | `f3 0f 10 35 22 e2 0d 00` / `f3 0f 5d 35 6a 3c f9 ff` | [C] `F.projectilespeed` then MINSS with `1.495f`, not a lower clamp. |
| `0x2fa243` / `0x2fa25f` | `e8 54 54 fe ff` / `e8 b0 55 ff ff` | [C] Wrapped desired-minus-old angle then `0x2ef814` multiplies by smoothing. |
| `0x2e0617` / `0x2e0640` | `0f 2f fe` / `48 8b f7` | [C] Visible enemy records can replace selection outside FOV without updating ordinary `best` distance. |
| `0x2e0661` / `0x2e0663` | `74 07` / `48 89 35 26 38 10 00` | [C] Retained target is updated only for a nonzero scan result. Empty scan returns zero but does not clear it. |
| `0x369b50` / `0x369b5d` / `0x369b6a` | `80 3d 01 e5 06 00 00` / `80 3d 64 e3 06 00 00` / `80 3d 07 e3 06 00 00` | [C] DoFatBulletHit, Pierce and PSilent must all be set for the final point override. |
| `0x319138` | `c7 87 d8 04 00 00 00 3c 1c c6` | [C] Eoka index 2 stores literal float bits `0xc61c3c00` at held `+0x4d8`. |
| `0x319191` / `0x319198` | `e8 72 1d fb ff` / `0f 84 2a 01 00 00` | [C] Invalid inner view chain aborts the remaining dispatcher. An invalid outer getter only skips the view branch. |
| `0x36bcde` | `c6 47 14 01` | [C] Baseline capture flag is set before local/input validation. Disabled recoil can restore captured original values. |
| `0x2e3c9e` | `b8 df 59 37 5f` | [C] Approximate magnitude seed `0x5f3759df`; replacing it with std::sqrt changes boundary decisions. |
| `0x2931f4` | `e0 2e 65 42` | [C] Degrees factor is exact binary32 `57.2957763671875`. |

[C] Config references in the worker include Aimbot `0x3e7928`, aimmarker `0x3ea6c8`, PSilent `0x3d7e78`, TargetHelicopter `0x3e9d68`, PlayerMaxDistance `0x3d8148`, IncreaseVelocity `0x3d7ce8`, projectilespeed `0x3d80a8`, instanthit `0x3d7fb8`, usesmooth `0x3e9b38`, FloatSmoothing `0x3edd48`. [C] Dispatcher references include nomeleeslow `0x3e94f8`, eokatap `0x3e97c8`, AutoFire `0x3e5098`, EokaIndex `0x3eea68`, SuccessRate `0x3ed8e8`, noweaponbob `0x3e9e08`, fastfire `0x3e9778`, ViewValue `0x3ed7f8`, fullauto `0x3e9728`, NoSway `0x3e96d8`. [U] Unnamed bytes `0x3d72a0`, `0x3d8301`, `0x3e4238`, `0x3d82a1`, `0x3efba1`, `0x3efc01` retain their addresses as identifiers.

[C] Decoded strings cross-checked against actual call sites include `FlintStrikeWeapon` getter `0x2f1f88` at `0x3190e5`, `ScientistNPC2` getter `0x367adc` at `0x3697fa`, `ItemModProjectile, Assembly-CSharp` at `0x371663` / `0x36b97b`, and `Projectile, Assembly-CSharp` / `ServerProjectile, Assembly-CSharp` at `0x372b0d` / `0x372b81`. [C] Name hashing uses the existing signed-byte helper rather than guessed item names for numeric IDs.

[U] The following full native callees are not translated here. All intervals are exclusive-end pdata ranges except explicitly marked thunks. A callback receives the listed observed role; it does not execute an address or assign success. [C] [boundary_ranges.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/aim_weapon/boundary_ranges.json) preserves the range extraction. [I] Pure gates and directly reconstructed small helpers above do not make these game/metadata bodies complete.

| Callee interval | Observed input/output boundary |
|---|---|
| `0x2fa300..0x2fabf6` | [U] Separate helicopter aim worker, context/local input. Called only when ordinary selected pointer is out of numeric range, followed by clearing the ordinary marker. |
| `0x2e0e9c..0x2e0ec9` | [U] Entity predicate; involves encoded/field access `0x2dee3c(entity,0x48)` and tests returned qword. |
| `0x368a84..0x368b0f` | [U] Held-object getter, local receiver. |
| `0x369164..0x3691be`; `0x368100..0x36817a` | [U] Local origin and motion vector getters. |
| `0x315a54..0x315b82`; `0x3747d4..0x374929` | [U] Transform receiver lookup and transform point getter. |
| `0x2e2374..0x2e2472` | [U] Prediction wrapper. Caller supplies origin, target point, motion `0x3d7248`, table/context `0x3e5718`; callback returns vector tested by zero predicate. Existing server prediction helpers can be wired separately with matching context. |
| `0x2d9540..0x2d955b` -> `0x2d955c..0x2d95cb`; thunk `0x2cc4f4..0x2cc4f9` -> `0x2cd69c..0x2cd6f5` | [U] Scalar `%f` string formatting and destruction. Explicit callbacks preserve branch call/cleanup order; no synchronization or executable formatting ABI is claimed. |
| `0x369738..0x369761` | [U] Local input-object getter; resulting copied angle pair is read/written at `+0x44`. |
| `0x374aa4..0x374bf8`; `0x31530c..0x315515` | [C] Euler conversion is concrete in `quaternion_euler_31530c`; [U] the matching-game Quaternion getter remains a boundary. Worker subtraction/wrapping is translated. |
| `0x36b758..0x36b938` | [C] Attachment traversal and speed aggregation are concrete in `attachment_velocity_36b758`, bound by `bind_snapshot_aim`; [U] Unity name retrieval remains external. Scalar called once for threshold and again when nonzero and byte `0x3e4238` is clear; both calls are retained. Full attachment logic is not silently replaced by a constant. |
| `0x37154c..0x3715d7`; `0x37261c..0x372644`; `0x37236c..0x372395` | [U] Definition, integer item ID and integer category getters used by native weapon classifiers. Integer EAX results use a separate callback from scalar XMM0 results. |
| `0x3721b4..0x37221f`; `0x371464..0x3714c2`; `0x371eb8..0x371f24`; `0x3716e0..0x371761` | [U] Full getter chains remain external in worker/dispatcher. Their pure range/ID/category gates are supplied separately by `classify_weapon_subset`, including complete 42/54-ID predicates. |
| `0x36b938..0x36b99d`; `0x371630..0x371685` | [U] Weapon/item definition -> ItemModProjectile component chains. |
| `0x372abc..0x372b2f`; `0x372b30..0x372ba3` | [U] Projectile/ServerProjectile resource and component chains; range gates and reads of resulting copied fields are translated. |
| `0x367668..0x367684`; `0x2ef724..0x2ef752` | [U] Integer record ID and cheat-owned baseline lookup from global `0x3e5f10`. Cache allocation/map internals are supplied; baseline initialization/read/write behavior is translated. |
| `0x3714c4..0x37154a` | [U] Outer view-model getter. Resulting copied `+0x218 -> +0x28 -> +0xf0 -> WORD+0x20` chain is translated. |
| `0x368be8..0x368c60`; `0x368cb0..0x368f4f` | [C] Both sample-local bodies are concrete in the shared [base/bindings](/home/john/Desktop/cheat_re/source/reconstructed/game_base_reconstruction.md). [U] Final Transform/physics/projection game calls remain explicit. |
| `0x2e5e4c..0x2e5eec`; `0x2e5a54..0x2e5a80` | [U] Key query `(second_key,true)` and class-name retrieval. Class hash callback returns nullopt for an out-of-range class-name pointer. |
| `0x2e0e4c..0x2e0e99`; `0x2e069c..0x2e071c`; `0x2dda9c..0x2ddb0d` | [U] Selector global early predicate, camera and local getters are copied inputs. |
| `0x2e3afc..0x2e3b2e`; thunk `0x2df480..0x2df485` -> `0x2e2eec..0x2e2f3f` | [U] Global `0x2187d0` container snapshot/release. Replaced by owned `span<TargetRecord>` input, not a fabricated native container ABI. |
| `0x2e0af0..0x2e0bef`; `0x2e09f0..0x2e0aef` | [U] Integer viewport dimensions are copied inputs in `TargetConfig`. |
| `0x36cd20..0x36cdc3`; `0x36ca34..0x36caa6` | [C] Projection controller and camera-position reads are concrete in the shared base; projection bounds are x/y/width/height. [U] Actual game world-to-screen dispatch remains external. [C] `0x2cb3a4..0x2cb3a8` is a no-op constructor, so initial screen scratch is caller-supplied and failed projections can retain it across records. |
| `0x369e70..0x369f6b`; `0x2df608..0x2df636` | [U] Category-sensitive identity string and friend/enemy map lookup returning record `+0x24`. Two lookups on an eligible nonfriend are preserved. |
| `0x36a178..0x36a19d`; `0x3693b0..0x3693d4`; `0x36acb8..0x36acde`; `0x36b288..0x36b2ae`; `0x36a20c..0x36a238`; `0x36b244..0x36b288` | [U] Scientist/dead/player-only/wounded/sleeper/visibility predicates, supplied lazily with receiver and observed category/zero byte where relevant. |

[I] Added bounds/status and non-progress checks are analysis safeguards. Native partial effects are retained up to a dependency stop, but malformed snapshots are not claimed to model native faults or every component-level partial store. [U] Allocation exceptions, x87/SSE exception flags, signaling NaNs, exact string allocator/cleanup internals, dynamic changes to globals during a call, live IL2CPP/Unity APIs and Windows calling conventions remain unverified. [C] Config/state input structs intentionally freeze a copied invocation state. No default callback claims success.

[C] [Offline fixture output](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/aim_weapon/build_verification.txt) passes under local GCC 15.2 with C++20, `-Wall -Wextra -Wpedantic -Werror`, `_GLIBCXX_ASSERTIONS` and `-ffp-contract=off`. Fixtures exercise the four prediction branches, early marker retention and clearing, absent tables, cleanup ordering, integer-ID scale branch, repeated attachment queries, zero-prediction angle tail, parent yaw, smoothing multiplication, wrap/NaN/infinite cases, mixed/priority/secondary/fat bones, enemy/FOV/retained ranking, eligibility gates, all ID-table endpoints, recoil capture/override/compensation/restoration, fast-fire restoration, Eoka sentinel/AutoFire, view-chain abort versus skip and explicit missing-byte/missing-callback stops. [I] The harness and executable are analysis-only files under `dump_analysis/semantic_reconstruction/aim_weapon`; no sample instruction is executed.

[C] Reproducible standalone check (the harness only calls the exported check function):

```sh
re_aim_sysroot=/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/toolchain
"$re_aim_sysroot/usr/bin/x86_64-linux-gnu-g++-15" \
  -std=c++20 -Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS \
  -ffp-contract=off -O1 -g --sysroot="$re_aim_sysroot" \
  -B"$re_aim_sysroot/usr/lib/gcc/x86_64-linux-gnu/15/" \
  -B"$re_aim_sysroot/usr/libexec/gcc/x86_64-linux-gnu/15/" \
  -L/usr/lib/x86_64-linux-gnu -Isource/reconstructed \
  source/reconstructed/aim_weapon_analysis.cpp source/reconstructed/aim_weapon_checks.cpp \
  source/reconstructed/04_esp_entities.cpp \
  dump_analysis/semantic_reconstruction/aim_weapon/harness.cpp \
  -o dump_analysis/semantic_reconstruction/aim_weapon/checks
dump_analysis/semantic_reconstruction/aim_weapon/checks
```

## Independent projectile/aim review corrections

[C] Fresh original bytes/pdata review under `dump_analysis/semantic_reconstruction/review_projectile_aim` corrected four aim/weapon mismatches. A1 preserves independent scalar angle stores2fa2a4(+44),2fa2a9(+48), so a later copied-range failure retains the first store. A2 captures the retained entity at2e0323 through validation/predicate calls, while the successful return reloads the global at2e0357; a validation callback can change the returned global without changing the predicate receiver. A3 preserves scalar read/store interleaving36be0b..36be25 and36be64..36be73 for recoil restoration; baseline/destination alias fixtures distinguish this from aggregate Vec2 operations. The zero recoil accumulator write also retains native8+4 stores36bdac/36bdb7.

[C] A4 preserves a native register-carry quirk in369790: active secondary mode3 jumps369aaa→369b50, bypassing369b4b's EBX=15 reset. ScientistNPC2 with all fat/pierce/psilent gates consequently uses mixed bones(11,52), not(11,15). The ordinary branch remains(55,54); other secondary modes/no active secondary retain scientist(11,15). This reflects the observed bytes, including an apparently unintended original behavior.

[C] Added regressions cover post-read Snapshot replacement causing a second scalar-store failure, retained-target mutation during validation, overlapping recoil baseline/destination and the secondary3 scientist override. Static comparison verifies every ID immediate in the42-entry melee and54-entry projectile predicates in order. All four isolated reversions A1..A4 are rejected. The separate helicopter controller was audited against fresh bytes, including health equality/unordered handling, repeated attachment query, speed grouping, mutable final gates and independent stores; no additional helicopter source correction was confirmed in this pass.

[I] [U] Existing game/base/getter/registry/name/helper bindings supply numerous local operations listed as boundaries in the initial reconstruction above. The new review report identifies which were assessed and which remain explicit; the original boundary table is not a claim that every listed callee still lacks a shared implementation. Numerical environment, foreign game effects and full native allocation/ABI equivalence remain unverified.
