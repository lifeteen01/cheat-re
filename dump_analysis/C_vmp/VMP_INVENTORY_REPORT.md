# Run 5 / C: VMProtect inventory of the loader, starter, hooks and cheat (static)

**Inputs** (memory images in virtual layout, file offset = RVA):

| Tag | File |
|---|---|
| loader | `run2/dumps/process_7144/7ff6187a0000.AcerQuickAccess.exe` |
| starter | `run3/dumps/process_8572/1ecadc70000.dll` |
| hooks | `run4/unpacked/simple_raknet_hooks.unpacked.dll` |
| cheat | `run4/unpacked/cheat.unpacked.dll` |

**Method.** Static only:
- A stdlib PE parser and objdump.
- A batch disassembler: many 96-byte windows per objdump run.
- An instruction-boundary vote: decode from 32 earlier offsets and require convergence on the site.
- A stub tracer that follows `jmp`/`call` and resolves only conditional jumps that are decidable from flag-clearing instructions (`test/and/or/xor` make CF=OF=0).
- A small abstract stack of known constants. It follows VMP's `call X; add [rsp],C; ret` pseudo-jumps and stops at the first `ret` whose target is not a code constant.

Constraints honoured:
- No sample code was executed or emulated, and no memory values were fed through stub arithmetic. No VM bytecode was touched.
- No IOC was contacted.
- `.ipnote` text was ignored.

**Confidence tags:** [C] confirmed in bytes/disassembly · [I] inferred, strong · [U] uncertain. All addresses are RVAs.

**Outputs** in `run5/C_vmp/`:
- `vmp_inventory.csv`: 6,581 rows of image, rva, kind, callers, notes.
- `scripts/`: every analysis script.
- `cfg_users.json`: cheat config key → global → reader functions.
- `cheat_reach.json`: which functions each hook detour reaches.
- `final_sites.json`: every import call site.
- `summary.json`: per-function thunk counts with string context.

---

## 0. Headline

1. **No application function is virtualized or mutated in any of the four images** [C].
   - None of the 1,086 / 1,725 / 2,837 / 9,681 function entries checked (pdata starts plus direct-call targets) begins with a `jmp`, or a `push imm32; call/jmp`, into a VMP section.
   - No absolute pointer in the data sections points into a VMP section, and no rip-relative operand in the normal code section references one.
   - Every call from normal code into VMP is a **VMP3 import-protection call**.
2. **Calls into VMP from normal code:**

   | Image | Import calls | Of which `push reg; call` | Of which `call; db pad` |
   |---|---|---|---|
   | loader | 1,005 | 549 | 456 |
   | starter | 1,003 | 500 | 503 |
   | hooks | 821 | 447 | 374 |
   | cheat | 2 | 2 | 0 |

   Every target is distinct (one stub per call site). VM entries from normal code: **0**. Redirected mutated functions: **0**.
3. **The "883 functions in the cheat's `.B-)`" are VMProtect's own template, not cheat code** [C].
   - They are really 850 in `.B-)` plus 33 in `.wWM`.
   - Hooks and starter have exactly the same 883.
   - The loader EXE has 953: the same 777-function runtime plus a larger EXE loader block.
4. **The cheat's features are all native.** Aimbot, smoothing, target selection, projectile prediction, pSilent, desync and anti-violations are implemented in readable functions in `.5ba23b`, driven from il2cpp hook detours.
   - 390 of the 1,066 config keys have **no reader anywhere**. These include `Bools.AimPrediction`, `F.MaxDesync`, `Bools.MagicBoolet`, `Headsilent/Necksilent/…`, `i.aimbone`, `F.Smoothness` and `Bools.thirdperson`.
   - They are dead or legacy entries (registered and saved only), not hidden VM code.
5. **UnityPlayer signatures:** sig 2 is UCRT `malloc` (`_malloc_base`) and sig 1 is the matching `free` inside UnityPlayer.dll [I, strong].
   - They are **called, not hooked or patched**, through the cheat's return-address-spoofing call gate.
   - They serve as the cheat's heap: thunks 0x38a3c4 (malloc) and 0x38a3cc (free), plus the qsort helper 0x3c7ee0.
6. **New:** `cheat_hooks.txt` missed **6 hooks** that are installed by a third mechanism, 0x3163d8 (BasePlayer ×3, BaseMelee, BaseLauncher, `%de96eb58.%fa0c08e0`). That brings the total to **15 hooks** (§3.3).
7. **Correction:** in the starter dump the `.sD]` header says VS=0x34000, but VMP code and pdata extend to **0x16e000–0x911000** [C]. Using the header range misses about 900 of the starter's 1,003 import calls.

---

## 1. Classification of every call or jump from normal code into VMP

### 1.1 Collection and validation [C]

**Scan.**
1. Raw scan of every E8/E9 rel32 in the normal code section whose target is in a VMP section.
   - Normal code is `.text` for loader, starter and hooks, and 0x2b2000–0x3cf000 for the cheat (§3.1).
2. Instruction-boundary vote: ≥50% of decodes started 1–32 bytes earlier must land on the site.
3. `push reg` / stub `pop reg` pairing.

| Image | Raw E8/E9 into VMP | Boundary-valid / paired | Rejected (inside other instructions or data) | Into 2nd VMP section (packed blob) |
|---|---|---|---|---|
| loader | 1,092 | **1,005** | 43 + 36 `.OVb` + others | 1 boundary-valid site; its target decodes as `(bad)` in the packed `.OVb` → false positive |
| starter (corrected range) | ≈1,050 | **1,003** | 33 + 13 `.FY[` | 1 likewise (false positive) |
| hooks | 859 | **821** | 25 + 8 `.5}"` | 0 |
| cheat (code area) | 35 | **2** (+8 inside VMP fragments, §3.1) | 25 | 0 |

**Reconciling the old numbers.**
- The earlier "998 calls / 998 targets" came from an objdump linear sweep. The sweep desyncs after the 1-byte pad of the `call; db pad` variant, so it missed 7 genuine back-to-back calls. Example: 0x43ba3 is `call+pad` with pad byte 0xe8, immediately followed by `push rax; call` at 0x43ba9.
- "1019" matches neither count. It most likely includes raw E8 false positives.

**All jump sites are false positives** [C]:
- No boundary-valid `jmp` from normal code into VMP exists in any image.
- All 26 / 25 / 14 / 189 call targets that begin with a `jmp` jump to normal code; 21 / 20 / 11 / 134 of them land on pdata starts.

### 1.2 (a) Import-protection thunks: identification [C site shape, I stub semantics]

**Site shape** [C]. VMP3 rewrites the 6-byte `FF 15 disp32` (`call [rip+IAT]`) and `FF 25` (`jmp`) into one of two shapes:

| Variant | Site bytes | Stub head | Count L/S/H/C |
|---|---|---|---|
| A | `5x` or `41 5x` (`push reg`) + `E8 rel32` | `pop <same reg>`: 100% of the 549/500/447/2 stubs | 549 / 500 / 447 / 2 |
| B | `E8 rel32` + **1 junk byte** | `push reg`: 100% of the 456/503/374 stubs | 456 / 503 / 374 / 0 |

**Proof that the variant-B pad byte is junk** [C]:
- Site+5 takes 205 / 44 / 193 distinct values. Only 41/456, 49/503 and 42/374 fall in the 24-opcode "common instruction start" set, about 9%, which is chance level.
- Site+6 is in that set 411/456, 470/503 and 351/374 times. That is the same distribution as site+5 of variant A, where the top bytes are `48` (REX.W) and `85` (`test eax,eax`, typical after a BOOL API).
- So none of these are genuine 5-byte calls, i.e. none can be a call to a relocated or virtualized function.

**Tail-call imports** (`jmp [IAT]`, variant A followed by `CC`/`C3`/`90`): 25 / 15 / 18 / 1.
- Out-of-function variant-A sites (CRT/Rust import-thunk functions): 11 / 11 / 7 / 2.

**Stub semantics** [I]: each target is used once (max reuse = 1 in all four images). A fully decided loader exemplar, site 0x85a4e (`56 e8 eb a9 39 00` = `push rsi; call 0x42043f`):

```
42043f pop rsi                          ; rsi = return address (site+6)
420440 call 2a1409 -> call 494d56       ; pushes code constants 0x420445 / 0x2a140e
494d56 xchg [rsp+0x10],rsi ; mov [rsp+8],rsi ; pushfq
494d61 add  qword [rsp+8],0xa45c1       ; 0x420445+0xa45c1 = 0x4c4a06 -> slot in .*YW
2e9246 mov  rsi,[rsp+rsi+0x10]          ; (rsi zeroed) rsi = &slot
2e924e mov  rsi,[rsi]                   ; load encrypted import pointer
2e9251 lea  rsi,[rsi-0xef8a86a]         ; decrypt
4a3d01 xchg [rsp+0x28],rsi              ; plant API address, restore rsi
4a3d06 push [rsp+0x18] ; popfq ; lea rsp,[rsp+0x28] ; ret   ; -> API, returns to site+6
```

**Trace statistics** [C for counts; the tracer is deliberately conservative]:
- Ending in `ret` to a non-constant (i.e. memory-loaded) target, the API transfer: 579/1,005 (L), 605/1,003 (S) and 448/821 (H).
- All fully decided traces end that way or at an untracked `rsp` write: 27+3 (L), 19+5+1 (S), 14+5 (H).
- A push-all (VM-entry-like) block is reached only after an undecidable opaque branch: 26 (L), 0 (S), 7 (H), and **0** on fully decided paths.
- So the stubs are mutated native code, not VM entries [I].

**Typical byte patterns** (for YARA/detection):

| Element | Bytes |
|---|---|
| Call site, variant A | `5? E8 ?? ?? ?? ??` or `41 5? E8 ?? ?? ?? ??` |
| Call site, variant B | `E8 ?? ?? ?? ?? ??` |
| Stub tail | `FF 74 24 ?? 9D 48 8D 64 24 ?? C3` (`push [rsp+x]; popfq; lea rsp,[rsp+y]; ret`) |
| Return-address fix | `48 81 44 24 ?? imm32` (`add qword [rsp+x], imm`) |
| Slot decrypt | `48 8B 36 48 8D B6 imm32` (`mov rsi,[rsi]; lea rsi,[rsi+imm]`), registers vary |

### 1.3 (b) VM entries from normal code: **none** [C]

No `push imm32; call vm_enter` shape, and no mutated equivalent such as `mov [rsp+x],imm; popfq; lea rsp; call`, is reachable from any normal-code instruction, function entry, data pointer or rip-relative reference.

VM entries do exist **inside** the VMP sections. They protect VMProtect's own runtime and loader (§2.2).

### 1.4 (c) Mutated or redirected native code: **none** [C]

- No function entry is replaced by a `jmp` into VMP. Checked for all pdata starts and direct-call targets: 2,837 loader, 1,725 starter, 1,086 hooks, 9,681 cheat.
- No function body was moved.
- The only VMP-shaped code inside an original section is in the cheat's slack (0x2808e0–0x28cf0b and 0x2b2440–0x2b25c8). It is reached exclusively from `.B-)`/`.wWM` (140 rel32 refs, 0 from cheat code), so it is VMP placing its own fragments there.

---

## 2. Per-image counts and inventory

### 2.1 Counts [C]

| | loader | starter | hooks | cheat |
|---|---|---|---|---|
| Normal code | `.text` 0x1000–0xd8000 | `.text` 0x1000–0x6c000 | `.text` 0x1000–0x49354 | `.5ba23b` code 0x2b2000–0x3cf000 |
| VMP sections | `.*YW` 0x113000–0xaee000, `.OVb` 0xaf0000– | `.sD]` **0x16e000–0x911000** (header VS wrong in dump), `.FY[` 0x912000– | `.!cw` 0xae000–0x7c6676, `.5}"` 0x7c8000– | `.B-)` 0x419000–0xb581b6, `.wWM` 0xb5a000– |
| RUNTIME_FUNCTIONs total | 3,582 | 2,447 | 1,843 | 5,412 |
| … in normal code | 2,629 | 1,564 | 960 | 4,529 |
| … in VMP sections | 953 | 883 | 883 | 883 (850 `.B-)` + 33 `.wWM`) |
| **Import thunks (a)** | **1,005** (549 A / 456 B; 25 tail) | **1,003** (500 / 503; 15 tail) | **821** (447 / 374; 18 tail) | **2** (0x3cddf0, 0x3cddf6) |
| Functions containing thunk calls | 247 | 256 | 220 | 0 (2 thunk stubs) |
| **VM entries from normal code (b)** | 0 | 0 | 0 | 0 |
| **Mutated / redirected functions (c)** | 0 | 0 | 0 | 0 |
| **Virtualized application functions** | **0** | **0** | **0** | **0** |
| Data pointers / rip-relative operands into VMP | 0 / 0 | 0 / 0 | 0 / 0 | 0 / 0 |

### 2.2 What the VMP sections actually contain (same template in all four) [C]

| Class (CSV `kind`) | loader | starter | hooks | cheat | Evidence |
|---|---|---|---|---|---|
| `vmp_runtime_native`: VMP runtime library fns, **byte-identical in all 4 images** | 324 | 324 | 324 | 324 | Plain MSVC code (e.g. 0x41be00 vector push-back) |
| `vmp_runtime_overwritten`: same runtime fns whose bodies VMP replaced with mutated/VM fragments | 453 | 453 | 453 | 453 | Identical layout, different bytes |
| Runtime block span | 0x113000–0x13c1be | 0x16e000–0x1971be | 0xae000–0xd71be | 0x419000–0x4421be | The first 777 entries have identical (relative offset, size) pairs in all 4 images |
| `vmp_loader_mutated`: contiguous image-specific block | 142 (0xad8e0c–0xadc73f) | 72 (0x9007d8–0x9028d6) | 72 (0x7b79aa–0x7b99da) | 72 (0xb4c19c–0xb4e39a) | The EXE flavour is larger (the EXE has extra resource-protection hooks) [I] |
| `vmp_vm_region`: one RUNTIME_FUNCTION spanning MBs of handlers and bytecode | 5 (first-section span 0x710aaf, +0x3c835d) | 5 (0x4f9ad1, +0x406d07) | 4 (0x402166, +0x3b5844) | 4 (0x73e3dd, +0x40ddbf) | Similar ~4 MB in every image regardless of application size |
| `vmp_sec2_func` (packed-loader section) | 29 | 29 | 30 | 30 | |
| `vm_internal_rebase_site`: `movabs reg,<image delta>` inside VM code (e.g. `movabs rcx,delta; sub rbx,rcx`) | 20 + 19 | 19 (+0 in `.FY[`) | 20 + 20 | 20 + 20 | Constant count per section → VMP template |

**Interpretation** [I, strong]:
- A per-section VM footprint that is identical whatever the application size, together with zero entries from application code, means VMP was used for three things only: packing/unpacking, import protection, and protecting its own runtime.
- That runtime covers the loader, import resolver, the `NtProtectVirtualMemory` guard seen in run 4, and the integrity and anti-debug checks.
- **The same VMProtect build protected all four stages**: identical 777-function runtime layout and 324 byte-identical functions across an EXE and three DLLs. That is a useful attribution and clustering signal.

### 2.3 Table of virtualized routines

**Application-level virtualized routines: none in any image** [C]. So there are no callers, nearby strings or purposes to tabulate.

The only virtualized code is VMP-internal (§2.2). It is listed in the CSV as:
- `vmp_runtime_overwritten`: 453 per image.
- `vm_internal_rebase_site`: 19–40 per image.
- `vmp_vm_region`: 4–5 per image.
- `vmp_fragment_in_original_section`: 2 in the cheat.

Its purposes are VMProtect's generic loader, import, integrity and anti-debug functions [I].

For context, these are the application functions with the most protected API calls (CSV `import_thunk` rows carry `site=…, func=…, ctx=<decoded strings of that function>`):

| Image | Function | Import calls | Context strings |
|---|---|---|---|
| loader | 0x86830 | 58 | `ntdll.dll`, `SeDebugPrivilege`, `win32kfull.sys`, `system_eproc unresolved` |
| loader | 0x1640 | 46 | `--ui-smoke-test`, `--session-restarted`, … (WinMain/UI) |
| loader | 0x7ea10 | 28 | `powershell.exe -NoLogo …`, `LOADER_SESSION_READY/ERROR` |
| loader | 0x8c9a0 | 25 | `\bootmgfw.original.efi`, `VirtualAlloc` |
| loader | 0x95a30 | 21 | `GET_FILE_`, `GET_DLL_`, `Connection failed (NET:` |
| loader | 0x81690 | 18 | `MachineGuid`, `SELECT SerialNumber FROM MSFT_PhysicalDisk` (HWID) |
| starter | 0x22b10 | 44 | `player pid missing; refusing to touch Steam`, `SteamPath` |
| starter | 0x356d0 | 20 | `Local\HookProbe_KernelState_v1`, SDDL strings |
| starter | 0x3360 | 15 | `\rundll32.exe`, `LoadLibraryW` |
| starter | 0x2a4c0 | 14 | `.hookprobe.bak`, `cannot back up steam vdf` |
| hooks | 0x2180 | 65 | `build=telemetry-20260916 code_seal=off worker_started`, `debugger` |
| hooks | 0x20ce9 | 26 | `ksecdd_reader status=started sys_proc=…` |
| hooks | 0x1e980 | 23 | `ksecdd_reader eproc … cr3_brute …` |
| hooks | 0xc0e0 | 19 | `player_database status=installed …`, `sqlite3_close` |
| hooks | 0x8c0c | 16 | `RSAPUBLICBLOB`, `SHA256`, `ChainingModeGCM` |
| hooks | 0x25990 | 16 | `steam_mask status=utils_getappid_hooked …` |
| cheat | 0x3cddf6 / 0x3cddf0 | 1 each | `jmp [IAT]` thunks used by DllMain 0x3cae31/0x3cae3e = **CreateThread(…, 0x3cabc0, …)** and **CloseHandle** [I] |

---

## 3. The cheat specifically

### 3.1 What the "883 functions" in `.B-)` are [C]

There are 850 in `.B-)` and 33 in `.wWM`. They are **the VMProtect runtime template**, the same entries found in all four protected images:

| Category | Count |
|---|---|
| Runtime functions, byte-identical native code | 324 |
| Runtime functions overwritten by VMP code | 453 |
| Mutated loader block (0xb4c19c–0xb4e39a) | 72 |
| VM-region covers (0x73e3dd, 0xb68edf, 0xf06c4e, 0x15cc7fd) | 4 |
| `.wWM` loader functions | 30 |

They are **not** VMP-virtualized cheat handlers, not moved cheat code, and not cheat logic.

**Layout of `.5ba23b`** (one RWX section):

| Range | Content |
|---|---|
| 0x1000–~0x211000 | Embedded assets (AssetBundles, fonts, icons; entropy about 7.1–7.3) |
| ~0x211000–0x2b2000 | rdata-like |
| 0x2808e0–0x28cf0b | VMP fragments within the rdata-like region |
| 0x2b2440–0x2b25c8 | VMP fragment |
| 0x2b25c8–0x3ce882 | **Code**: 4,529 pdata functions |
| 0x3d1000–0x418000 | data/bss |

The cheat's own IAT: VMP left 8 kernel32 entries in `.#L@` 0xb59000, and none of them is referenced by code. Two VMP import thunks replace the original `jmp [IAT]` stubs:

| Thunk | Bytes | API [I] |
|---|---|---|
| 0x3cddf0 | `53 E8 → 0x6a4c6d` | CloseHandle |
| 0x3cddf6 | `57 E8 → 0x72da20` | CreateThread |

Everything else in the cheat resolves APIs itself (FNV-1a).

### 3.2 Features without a native implementation

**Answer: no feature is hidden in VMP.** There is no path from cheat code into any VM. For each config key, the global's static initializer was found (getter → decrypt 0x2cde5c → register fn, e.g. 0x2df16c bool / 0x2df024 float / 0x2def84). Every rip-relative reader of the object (value at **+0x48**) was then mapped to its pdata function. The 16 ImGui tab functions were separated out as "menu".

| Readers | Keys |
|---|---|
| Native logic reader | 652 |
| Menu only | 24 |
| **No reader at all** (only their initializer touches them; globals clustered at 0x40f000–0x417fff) | **390** |

**Feature → native implementation** (key globals in brackets; RVA = reader function):

| Feature | Live keys | Native implementation | Reached from (hook) |
|---|---|---|---|
| Aimbot / aim apply | `Bools.Aimbot` [0x3e78e0], `Bools.usesmooth`, `F.FloatSmoothing`, `Bools.TargetHelicopter`, `K.AimbotVirtualKey` | **0x2f9988** (0x975 B), **0x2fa300**; angle helpers 0x31530c, 0x2f80bc (load 57.2958 rad→deg) | Client.LateUpdate 0x2f8574 |
| Target selection / FOV | `i.AimbotFOV`, `Bools.KeepTarget`, `Bools.AimbotVischeck` | **0x2e02b0**, 0x314bb4; FOV circle drawn in 0x3098a4 | LateUpdate, Projectile.Update, PWM |
| **Prediction** (projectile simulation) | `Bools.instanthit` (10 readers), `Bools.WaitForinstanthit`, `Bools.GrenadeAngles` ("High Grenade Prediction"), `Bools.simulateproj` (overlay) | **0x2e2474, 0x2e3734**: only functions loading g=9.81f together with the 1/32 s step; 0x330b38 | LateUpdate / PWM / Projectile.Update |
| pSilent ("Curves your projectiles towards the target") | `Bools.PSilent` [0x3d7e30], `Bools.UseRageSilent`, `Bools.usemisschance`/`F.misschance`, `i.BoneIndex1/2/3` | 0x32c0d4 (via BasePlayer.%3d67d36f detour 0x32cae8; uses AnimationCurve.Evaluate), 0x330b38, 0x369790, 0x2f9988 | hooks |
| Hit manipulation | `Pierce`, `PierceFr`, `ShootThroughFriends`, `LegitBulletTP`, `F.BulletSize1`, `thickbullet`, `DoFatBulletHit`, `IncreaseVelocity`, `LowVelocity` | **0x330b38** (Projectile.Update; hit-material table Flesh/Glass/Metal/…), 0x321d60, 0x32c0d4, 0x324b30 | Projectile.Update / PWM |
| Recoil / spread / fire | `recoilmod`, `RageRecoil`, `i.Recoilpercent(1)`, `nospread`, `F.SpreadAmount`, `fastfire`, `fullauto` | 0x36bc14, 0x32c0d4, 0x319024 | LateUpdate |
| **Desync** | `Bools.ShouldAttempDesync` [0x3ea5e0], `Bools.desyncnotvisible`, `F.MinimumDesyncInstantkill` | **0x32cea8** (detour of `%de96eb58.%fa0c08e0`), 0x324b30; "Manipulated" indicator in 0x3098a4; 0x2e6b20 | hook (§3.3) |
| **Anti-violations** | `Bools.AntiViolations` [0x3e9e60], `VectorBools.ViolationOptions`, `V2.ViolationsPosition` | **0x32cea8**, overlay 0x3098a4 | hook |
| Movement | `Flyhack`, `SmoothFlyhack`, `Spiderman`, `NoFall`, `Jesus`, `InjJump`, `OmniSprint`, `NoCollision`, `interactive` (noclip), `teleport5m`, speedhack keys | **0x324b30** (PWM.%9a4b1fd1 detour), 0x322aec, 0x322ef8, 0x32dbb0 | PWM hooks |
| Silent melee / farm | `SilentMeleePlayers`, `SilentFarmOre/Tree`, `HeliSilentMelee`, `i.SilentMeleeBone` | **0x2e12e0** (BaseMelee.%63e89e5a detour), 0x2f9138, 0x2f94ac, 0x2f96f4 | hook |
| Automation / griefing | `AutoUpgrade`, `BruteForceCodes`, `autolootstuff`, `InstantKill`, shopfront, code-lock | 0x2e6b20 (via BasePlayer detour 0x2e91fc), 0x324b30 (RPC strings) | hook |
| ESP / radar / visuals | `PlayerESP`, `Skeleton`, `radar*`, world ESP, `Dayhack`, `Zoom`, `FovChanger` | 0x2fb72c (0xbf0b B entity loop), 0x3098a4 (0xb085 B overlay), 0x31acd0, 0x341bd8, 0x2f8574, 0x32f408 | LateUpdate |

**Keys with no reader anywhere** [C]. They are dead or legacy (registered and saved in `DefaultCfg.bin`, never used) [I]. The live menu binds other keys (e.g. "Use Smoothing" → `Bools.usesmooth`, "Hitscan Priority" → `i.BoneIndex1`). Examples:
- **Aim / prediction / silent:** `Bools.AimPrediction`, `AimAtMarker`, `MagicBoolet`, `Headsilent`, `Necksilent`, `Spinesilent`, `lowerspinesilent`, `hitscan`, `HitScanVisCheck`, `ShootThroughWalls`, `RageBigBullet`, `recoilcomp`, `BoneRandomization`, `locktarget`, `stickysmooth`, `safesilent`, `silentnospread`, `psilentheli`, `SilentReload`, `NoAimblock`, `aiminmountable`.
- **Float and int keys:** `F.Hitbonechance`, `F.MagicPoints`, `F.Smoothness`, `F.MaxDesync`, `F.ProjectileDesync`, `F.Silent_maxDist`, `i.aimbone`, `i.AimbotSmoothing`, `i.BoneIndex`.
- **Vector keys:** `V3.AimbotTargetPos`, `V3.SilentAimTargetPos`, `V3.bulletendpos`.
- **Misc:** `Bools.FakeLag`, `SafeTeleport`, `thirdperson`, `F.ThirdPersonValue`.

The prior report's feature table lists `thirdperson`, `FakeLag`, `MagicBoolet` and `AimPrediction` as features. In this build they are inert keys, and the visible "magic bullet" tooltip is wired to `Bools.PSilent`.

### 3.3 Hook list, corrected (15 hooks) [C]

Hook setup function **0x315c34** uses three installers.

**Via 0x2ea90c** (swap `MethodInfo->methodPointer`) and **0x2ea978** (swap the Il2CppClass vtable slot), as already in `cheat_hooks.txt`:

| Hooked method | Detour |
|---|---|
| Projectile.Update | 0x32ae10 |
| WaterOverlay.Update | 0x332554 |
| SmokeGrenade.Update | 0x32f038 |
| LateUpdate | 0x32f408 |
| ItemIcon.%ff5c768a | 0x3215cc |
| PlayerWalkMovement.%123bd3a0 | 0x32a9f8 |
| PlayerWalkMovement.%9a4b1fd1 | 0x324b30 |
| PlayerWalkMovement.%1d9a027b | 0x322aec |
| Client.LateUpdate | 0x2f8574 (installed by 0x362118) |

**Missing from `cheat_hooks.txt`**: installer **0x3163d8**, which saves the original pointer to a global. Methods are resolved by name and parameter count via 0x334224/0x3349ac.

| Hooked method | Detour | Original saved at | Role |
|---|---|---|---|
| `BasePlayer.%3d67d36f…` | 0x32cae8 | 0x3e6918 | → 0x32c0d4 projectile/pSilent/spread |
| `BasePlayer.%ab2af99e…` | 0x32b62c | 0x3e68e0 | → 0x32b3a8 bone selection |
| `BasePlayer.<method>` | 0x2e91fc | 0x3e4de8 | → 0x2e6b20 automation |
| `BaseMelee.%63e89e5a…` | 0x2e12e0 | 0x3e3f88 | Silent melee/farm |
| `BaseLauncher.%4cc4b6b1…` | 0x2ddb10 | 0x3d6ff8 | |
| `%de96eb58….%fa0c08e0…` | **0x32cea8** | 0x3f0888 | Desync / anti-violations / teleport |

---

## 4. The two UnityPlayer.dll signatures [C mechanics, I target identity]

| | Sig 1 `C7 44 24 ? ? ? ? ? 8B 44 24 ? E9 ? ? ? ? CC` | Sig 2 `40 53 48 83 EC ? 48 8B D9 48 83 F9` |
|---|---|---|
| Pattern getter (decrypted string) | 0x3c7e28 (`cheat_decstr` 0x3c7e26) | 0x3c7e4c |
| Module lookup | 0x3c7d04: FNV hash 0xb06a766b030bd1d7 = UnityPlayer.dll | 0x3c7d78: 0x2d981b4631949c20 = UnityPlayer.dll |
| Scan wrapper → scanner | 0x3c7e70 → 0x3caf5c | 0x3c7ea8 → 0x3caf5c |
| Lazy resolver (one-time guard bit 1) | **0x3c8bd0**: result cached at **0x40f198** | **0x3c8c70**: cached at **0x40f0b0** |
| Use | **Called**, never hooked or patched. Guard bit 2 builds a spoof-call context, `0x2cbd24(gate=0x40f098, ctx=0x40f1b0, target, 0)`. The call then goes through 0x2cb9fc → **0x3cdbd4**, the stack-spoofing executor: `[ctx+0x88]`=arg, `[ctx+0x80]`=1 arg, `[ctx+0xd0]`=0 → integer argument in rcx, return value read back | Same scheme: ctx 0x40f0c0, 0x3c7c98 → 0x3cdbd4; one integer argument, returns a value |
| Callers | `free` thunk **0x38a3cc** (`jmp 0x3c8bd0`, **26** call sites, e.g. 0x2cb3ce/0x2cb3fd/0x2cc7fd); qsort 0x3c7ee0 @0x3c80ce (releases its scratch buffer) | `malloc` thunk **0x38a3c4** (`jmp 0x3c8c70`, **6** call sites incl. the first action of main thread 0x3cabc0: `malloc(0x18)`); qsort 0x3c7ee0 @0x3c7f59 (scratch ≥ 0x400 bytes; smaller requests use alloca 0x2cd050) |
| **Inferred target** | UnityPlayer's statically linked CRT **`free`**: a tiny stub that tail-jumps to the real free [I] | UnityPlayer's statically linked UCRT **`malloc` / `_malloc_base`**. The bytes match the UCRT prologue exactly: `push rbx; sub rsp,20h; mov rbx,rcx; cmp rcx,-20h` (size > `_HEAP_MAXREQ` check) [I, strong] |
| Calling convention | Win64, one pointer argument, void | Win64, one `size_t`, returns a pointer |

**Purpose** [I]:
- The cheat is manually mapped with no CRT. It has only 8 kernel32 imports and no heap API in use.
- It borrows the game's own CRT heap for its Rust global allocator and its C/ImGui `qsort`. So its allocations come from UnityPlayer's heap.
- Every allocation call goes through the spoofed-frame gate, set up by 0x3caccc(0x40f098) with UnityPlayer's base and exception directory. Call stacks therefore show UnityPlayer and thread-start frames instead of an unbacked module.
- No other use of the resolved addresses exists.

---

## 5. Version coupling (cheat)

**Obfuscated Rust names (13 distinct)** [C strings / I roles]:

| Name | Class / role | Use site |
|---|---|---|
| `%ff5c768a…` | ItemIcon method | Hook 0x3215cc |
| `%123bd3a0…` | PlayerWalkMovement method | Hook 0x32a9f8 |
| `%9a4b1fd1…` | PlayerWalkMovement method (main movement tick) | Hook 0x324b30 |
| `%1d9a027b…` | PlayerWalkMovement method | Hook 0x322aec |
| `%3d67d36f…` | BasePlayer method | Hook 0x32cae8 |
| `%ab2af99e…` | BasePlayer method | Hook 0x32b62c |
| `%63e89e5a…` | BaseMelee method | Hook 0x2e12e0 |
| `%4cc4b6b1…` | BaseLauncher method | Hook 0x2ddb10 |
| `%de96eb58…` | Obfuscated class | Hook 0x32cea8 |
| `%fa0c08e0…` (×2) | Its method | Hook 0x32cea8 |
| `%0e7b8295…` (×4) | Type/member checked in the entity loops 0x2fb72c and 0x31acd0, next to `StashContainer`, `Landmine`, "Successfully saved stash/sam" | [U] |
| `%9336ed08…` | Used in the BaseMelee detour 0x2e12e0 between `Strike` and `Flesh` (likely the melee hit/attack method) | [U] |
| `%adb7a5f1…` | Another PlayerWalkMovement member | 0x373f0c [U] |

**il2cpp API surface** (FNV-hashed and plain), 16 functions:
- Image and class: `assembly_get_image`, `class_from_name`, `image_get_class(_count)`, `class_get_type`.
- Methods: `class_get_method_from_name`, `method_get_param(_count|_name)`, `method_get_return_type`.
- Objects and types: `object_new`, `string_new_wrapper`, `type_get_name`, `type_get_object`, `array_new`.
- Icalls: `resolve_icall`.

There are **no field APIs**: no `class_get_field_from_name` and no `field_get_offset`. No offsets are loaded from globals (0 candidates). Field access is by **hard-coded displacements** [C]:
- About 215 distinct displacements ≥0x100 (1,153 uses) and 160 distinct in 0x10–0xff (6,786 uses).
- That is an upper bound: it mixes game-object fields with ImGui and own structures.
- Examples on `this` in detours: PlayerWalkMovement `+0x20/+0x30/+0x44/+0x4c` (0x324b30), BaseMelee `+0x3b8` (0x2e12e0), SmokeGrenade `+0x2f8`.

**il2cpp ABI assumptions** [C code / I]:
- `MethodInfo->methodPointer` sits at +0 (swap).
- The Il2CppClass vtable sits within klass+0x1500 (0x2ea978 scan).
- Methods are matched by name, parameter count, parameter names and return type.

**Unity assumptions** [I]:
- `*_Injected` icall bindings, the Mesh advanced API (`SetVertexBufferParamsFromPtr_Injected`, `InternalSetVertexBufferData_Injected`, `SetAllSubMeshesAtOnceFromNativeArray_Injected`), `UnsafeUtility::PinSystemObjectAndGetAddress`, and the `UnityEngine.InputSystem` package. Together these imply Unity 2019.3 or later; no exact version string is present.
- `GetOffsetOfInstanceIDInCPlusPlusObject` is used for native-object access, a version-tolerant trick.
- The two UnityPlayer signatures target MSVC CRT routines that stay stable across Unity versions built with the same toolset.

**Estimate** [I]:
- **Tightly locked to one Rust client build.**
  - The 13 `%sha1` names are regenerated by Facepunch's obfuscator at least every monthly update.
  - The 15 hooks resolve methods by those names.
  - Field displacements shift whenever the classes change.
  - Expect breakage on every Rust update and likely on hotfixes.
- **Loosely coupled to Unity:** icall names, CRT signatures and il2cpp APIs survive Unity minor updates.
- Rebuild cost per Rust patch: update about 13 names and the affected offsets. That fits a subscription cheat with frequent builds.

---

## 6. What can and cannot be recovered statically

**Recoverable statically, and largely done or doable by hand** [C]:
- All application logic in all four stages. Nothing is virtualized:
  - loader licensing, HWID, C2 and the BYOVD helpers;
  - starter Steam/hook-probe logic;
  - hooks EMU/KsecDD reader/telemetry;
  - all cheat features, including aim, prediction, desync and anti-violations.
- Earlier caveats like "VMP-virtualized routines stay opaque" (FAQ/RUN3) should be **withdrawn**.
- The "aimbot math may live in `.B-)`" hypothesis (RUNTIME_UNPACK_REPORT §B3/§D3) is **refuted**.

**Not recovered statically:**

| Item | Why | Practical route |
|---|---|---|
| Per-site API name of the 2,831 import thunks | The stub computes `[slot]+K` at runtime; reading it would mean evaluating stub arithmetic over sample memory, i.e. emulation | vmpfix or VMPImportFixer (in `re-tools/`, Unicorn-based) **run inside the isolated VM** on the dumps, about 1–2 h. Alternatively use pe-sieve `/imp` rebuilds, already partial. Value: completes call graphs, which helps the writeup |
| VMP's own runtime (453 overwritten functions plus 4–5 VM regions per image) | Truly virtualized | **Not worth it.** It is VMProtect's generic loader, import resolver, CRC, anti-debug and `NtProtectVirtualMemory` guard, identical across all four images. It is template behaviour, not actor logic |
| Names behind the 13 `%sha1` members and the displacements | Needs the matching Rust build's `GameAssembly.dll` plus `global-metadata.dat` | Il2CppDumper/Cpp2IL on that build. **Highest value** for detection and disclosure |

**If devirtualization were ever needed** (e.g. a future build that does virtualize application code):

| Tool | Fit | Notes |
|---|---|---|
| NoVmp | VTIL-based; good on VMP 3.0–3.5 x64 | May fail on newer 3.6+ handler shapes; the exact VMP version here is [U] |
| VMPAttack | VTIL-based, VMP 3.x x64 | Same version caveats |
| Mergen | LLVM lifting of VMP/Themida | Newer-version support |
| VTIL-Core | Building block for the two above | |
| Trace-based | x64dbg trace or TTD in the VM, then Triton or a custom lifter offline | |

Effort: days to weeks per VM instance, with handler-by-handler validation. For this chain the ROI is nil, since no application routine is virtualized.

**Worth doing instead** (detection and disclosure value):
1. Name the 13 obfuscated members and the offsets (above).
2. Manual RE of these native routines:
   - 0x32cea8: the desync/anti-violation algorithm, which defines the server-side violation pattern.
   - 0x2e2474/0x2e3734: projectile prediction (g=9.81, dt=1/32).
   - 0x2f9988/0x2fa300/0x2e02b0: aim apply and target selection.
   - 0x330b38: Projectile.Update hit manipulation, i.e. what the server sees.
   - 0x3cdbd4 + 0x2cbd24: the spoofed-call gate; a detection opportunity is UnityPlayer CRT malloc/free called with synthetic frames.
3. Use the VMP template fingerprint (324 identical native runtime functions, a fixed 777-entry pdata layout, 20 rebase sites per section) to cluster other builds from the same protector.

**Not worth it:** devirtualizing VMP runtime regions, and resolving the 2 cheat thunks, which are already identified as CreateThread/CloseHandle by context.

---

### Corrections to earlier reports

| Earlier claim | Correction |
|---|---|
| WRITEUP/FAQ: "998 calls … look like import thunks" | Confirmed, and refined to 1,005 (+7 missed by sweep desync); the shape test is [C] |
| PAYLOADS_REPORT / RUN3: starter VMP thunks in `.sD]`/`.FY[` | They are in `.sD]` 0x16e000–0x911000 (1,003 sites), not `.FY[` |
| RUNTIME_UNPACK_REPORT: "883 functions in `.B-)`" | 850 + 33, all VMP template |
| RUNTIME_UNPACK_REPORT: "9 hooks" | 15 hooks |
| RUNTIME_UNPACK_REPORT: signature targets [U] | malloc/free [I] |
| RUNTIME_UNPACK_REPORT feature table | `AimPrediction`/`MagicBoolet`/`thirdperson`/`FakeLag` are dead keys in this build |
