# Run 5 · B — Kernel channel (PDFWKRNL BYOVD → KsecDD), static analysis

Static only. Nothing from the samples or drivers was executed or emulated. Tools: objdump, a pure-Python PE/PDB parser and pattern scans. Public PDBs were fetched from msdl.microsoft.com for the four Microsoft binaries only. `.ipnote` text was treated as inert data.
**Tags:** [C] confirmed by code/bytes · [I] inferred · [U] unknown/unverified.
**RVA prefixes:** S: starter `run3/dumps/process_8572/1ecadc70000.dll` · H: hooks `simple_raknet_hooks.unpacked.dll` · P: packer `packer.mapped.bin` · K: ksecdd.sys · N: ntoskrnl.exe · W: WdFilter.sys · D: PDFWKRNL.sys.
**Manager verification:**
- The embedded driver at S:0x109f60 is **80,536 bytes**; the certificate directory 0x2400 + 0x11698 ends at 0x13a98, and SHA-256 `6e8b49cf…54e1` matches the dump slice ✔.
- `3444084195` is present in the starter ✔.
- KsecDD LSA gate at K:0x3343: `mov rdi,[rbx]` (LsaProcess) → `call PsGetCurrentProcess` → `cmp rax,rdi` ✔.

## 0. Summary
1. **The reader host makes itself KsecDD's "LSA process".** The starter uses PDFWKRNL to zero `LsaProcess` (+0x00) in KsecDD's host-silo `KSECDDLSASTATE` [C]. KsecDD's own IOCTL **0x398000** then registers whichever process calls it first, which is the rundll32 reader host [C ksecdd; C hooks call].
2. **Two LSA-only fast-I/O IOCTLs become primitives:**
   - **0x390030 `KsecIoctlCopyPool`** becomes an **arbitrary kernel read/write**. The starter appends a `KSEC_VALID_ADDRESS_RANGE` covering `[0, 0xFFFFFFFFFFFFFFFF]` to `KsecValidAddresses` and increments `KsecValidAddressesCount` [C].
   - **0x39003c `KsecIoctlClientCallback` (type 3)** becomes a **TLB-flush trigger**. `gKsecpMiscExtension` is repointed to a fake one-entry table in slack at the end of KsecDD's `.data` page (RVA 0x1efe0 on this build), holding `&KeFlushCurrentTbImmediately` (Hyper-V present) or `&HalpFlushTLB` [C].
3. **PTE window:**
   1. The reader locks one user page and finds its PTE through the self-map (`MmPteBase + ((VA>>9) & 0x7FFFFFFFF8)`).
   2. It rewrites the PTE's PFN via 0x390030.
   3. It flushes via 0x39003c.
   4. It `memcpy`s from the page in user mode.

   That gives **arbitrary physical memory reads**, used to walk the donor's page tables [C hooks].
4. **The vulnerable driver is loaded for seconds only.** It's dropped, loaded, used and unloaded inside `[kernel_ch]`; then the file is overwritten with random bytes and deleted, and the service key deleted. All of that happens **before** RustClient.exe or the reader host start [C order].
5. **While loaded, it erases its own traces (kdmapper-style):**
   - PiDDBCacheTable entry unlinked and wiped;
   - CI `g_KernelHashBucketList` entry unlinked;
   - `DriverSection->BaseDllName` blanked (no MmUnloadedDrivers record);
   - **WdFilter runtime-driver record unlinked, its hash slot emptied, the count decremented.**

   No Defender code is patched and no callbacks are removed [C].
6. **Corrections to run 3:**
   - The dropped driver is **80,536 bytes, sha256 `6e8b49cf…54e1`**. The run3 hash `357dfaee…` was a dump artifact (patched SizeOfImage plus 46,600 trailing heap bytes).
   - The 0x80002028 buffer is `src=[+0x10]`, `dst=[+0x20]`, `len=[+0x28]`.
   - **`steam_appid.txt` is never planted**; it's only *deleted*, and the starter deletes it only if it contains `3444084195`.

## 1. KsecDD IOCTLs (ksecdd.sys build 26300, PDB ksecdd.pdb)
**Dispatch** [C]: fast I/O is `KsecFastIoDeviceControl` K:0x3270; the IRP path is `KsecDispatch` K:0x285c0 (major 0x0E).

**LSA gate in `KsecFastIoDeviceControl`** [C]:
1. `state = PsGetPermanentSiloContext(PsGetCurrentServerSilo(), KsecddSiloContextSlot)` (K:0x32a3–0x32b9).
2. If `PsGetCurrentProcess() == state->LsaProcess` (K:0x3343–0x3352), dispatch table 1 (K:0x343e) for codes 0x390028–0x390080.
3. Otherwise a protected process may use only 0x39005c/0x390060; every other caller gets `STATUS_ACCESS_DENIED` (K:0x35ad) or falls through to the IRP path.

| IOCTL | Path / handler | Function | Validation |
|---|---|---|---|
| **0x390030** | fast I/O, LSA only → `KsecIoctlCopyPool` K:0x78f4 [C] | in = exactly 0x20 bytes `{+0 user_buf, +8 kernel_addr, +0x10 u32 len, +0x14 u32 write, +0x18 u32 tag}`. write≠0: `RtlCopyFromUser(kernel←user)`; write=0: `RtlCopyToUser(user←kernel)` | The user range is probed against `MmUserProbeAddress`. The kernel range goes through **`KsecValidateAddress(addr,len,write)`** K:0xeaf8: under `KsecValidAddressLock` it scans `KsecValidAddresses[0..Count)` (0x30-byte entries `{Start, End, u32 ReadOnly, u32 Tag, ?, SiloContainerId[16]@+0x20}`). A hit needs `Start≤addr`, `addr+len≤End`, and the entry's SiloId equal to state+0x220/+0x228; writes also need `ReadOnly==0` [C] |
| **0x39003c** | fast I/O, LSA only → `KsecIoctlClientCallback` K:0xe578 [C] | in = exactly 0x30 bytes, out ≥ 0x10. `in.type==3` → `(*gKsecpMiscExtension)[0](in+8, in+0x10, in+0x18, &in+0x20, &out)` via `_guard_dispatch_icall` (K:0xe6aa–0xe6dc) | Only checks that the pointer and slot 0 are non-NULL. **No check that the target is inside a registered module** [C] |
| **0x398000** | outside the fast-I/O range → IRP → `KsecDispatch` K:0x289df [C] | **LSA registration.** If `state->LsaProcess==NULL`: `LsaProcess = PsGetCurrentProcess()` (referenced), `CreateClient(1)`, open a kernel handle (OBJ_KERNEL_HANDLE, access 0x478) to the caller into state+8, and write `KsecSystemProcessId` to the 4-byte output. If already set: 0xC00000BB | Only the NULL check. **No caller identity check** [C] |

**Other routing** [C]:
- In `KsecDispatch`, 0x390038 → `KsecRegisterExtension(type, table)` (K:0x26b60): 0 → BCrypt ext 2, 1 → SSL, 3 → `gKsecpDeviceControlExtension`, **4 → `gKsecpMiscExtension`** (set once, if NULL).
- Unknown codes are forwarded to `gKsecpDeviceControlExtension->fn[0]`, plausibly `cng!CngDeviceControl` (cng:0x1bba0 handles 0x39007e/0x390400) [I].
- **None of the three codes the reader uses is forwarded to cng.sys.** Which component normally registers the misc extension is [U].

**KsecDD globals (RVA, PDB)** [C]:

| Global | RVA |
|---|---|
| `KsecddSiloContextSlot` | 0x1e3e0 |
| `KsecValidAddressesCount` / `…CountPeak` / `…Size` | 0x1e6ac / 0x1e6b0 / 0x1e6b4 |
| `KsecValidAddresses` | 0x1e6b8 |
| `KsecValidAddressLock` | 0x1e698 |
| `gKsecpDeviceControlExtension` | 0x1e6c0 |
| `gKsecpMiscExtension` | 0x1e6d8 |

`KSECDDLSASTATE` is 0x230 bytes (K:0x2ced0): +0 LsaProcess, +8 handle, +0x210 refcount, +0x220 SiloContainerId (zero for the host silo).

## 2. How the starter builds the primitives (mechanism, for defenders)
**Context** [C]:
- PDFWKRNL IOCTL **0x80002028** (D:0x6c0) = `memmove(dst=[in+0x20], src=[in+0x10], len=[in+0x28])`, 0x30-byte input.
- The starter wrapper S:0x34eb0 uses a 0x40-byte VirtualAlloc'd, locked bounce buffer, so at most 0x40 bytes per operation (flag 0 = kernel read, 1 = kernel write).
- Symbols come from dbghelp/symsrv against msdl (S:0x30b90, S:0x31cb0, S:0x31af0), resolved as kernel VAs into an 11-qword table: `{PsGetPermanentSiloContext, KsecddSiloContextSlot, gKsecpMiscExtension, KsecValidAddressesCount, KsecValidAddresses, KeFlushCurrentTbImmediately, HalpFlushTLB, PsInitialSystemProcess, MmPteBase, MmPfnDatabase, MmPhysicalMemoryBlock}`.

**S:0x35100, step by step** [C unless marked]:
1. **Find the host-silo KsecDD state:**
   - scan the first 0x40 bytes of `PsGetPermanentSiloContext` for `48 8B 0D rel32` (build 26300: N:0x3f3755 `mov rcx,[PspHostSiloGlobals+0x4F0]`);
   - read that pointer → silo storage array P; read `slot = KsecddSiloContextSlot`;
   - `state = [P + 8 + slot*16] & ~1`, published as `ksec_state`.
2. **Clear `state->LsaProcess`:** if non-zero, write 8 zero bytes (S:0x35283–0x352a2). The old lsass pointer isn't saved or restored, and its reference is leaked [C]. [I] lsass stops passing the LSA gate, and the first 0x398000 caller takes the role.
3. **Choose the flush:**
   - CPUID 0x40000000 = "Microsoft Hv" → `KeFlushCurrentTbImmediately`, else `HalpFlushTLB`;
   - the env var `PDFK_FLUSH=hal|ke` overrides it; log `[ksec] hypervisor=%d flush=<name>` (S:0x352dc–0x353d8);
   - both toggle CR4.PGE or reload CR3 on **the current CPU only** (N:0x4b6f60, N:0x4f7568).
4. **Plant the fake misc extension:**
   - `fake = page_align_up(&gKsecpMiscExtension) - 0x20` = K:0x1efe0, inside the page but past `.data` VirtualSize 0xa08, so zero slack;
   - idempotent: skipped if the pointer already equals `fake`;
   - `gKsecpMiscExtension = fake` (S:0x3541e), then `*fake = &flush_fn` (S:0x35441). The old pointer isn't saved.
5. **Whitelist all memory:**
   - read `count`, append an entry at `KsecValidAddresses + count*esz` (esz = 0x30 when build > 22631, else 0x20): `{Start=0, End=~0, ReadOnly=0, Tag=0xFFFFFFFE, +0x18=state, SiloId=0}`;
   - then `Count = count+1` (S:0x354c4–0x35523);
   - the lock isn't taken and **`KsecValidAddressesSize` isn't checked**, so if `count == Size` the write overruns the pool block [C code, I impact].
6. **Hand-off:** caller S:0x356d0 **unloads the driver immediately** (S:0x35a94), then publishes the symbol VAs, build, `sys_proc` and `ksec_state` to `Local\HookProbe_KernelState_v1`. Layout (0xC0 bytes): +0 version=1, +4 ready, +8 build, +0x10..+0x60 symbols, +0x68 ksec_state, +0x70 PsInitialSystemProcess, +0x78/+0x7C error/native status.

**Consumer `HooksKsecReaderHostMain` (rundll32, H:0x1ad90)** [C code, I purpose]:
- **H:0x1adb0, open:** `\\.\KsecDD` (fallback `\\.\GLOBALROOT\Device\KSecDD`); pins the thread to the lowest CPU in its affinity mask, since the flush is per-CPU [I]; `DeviceIoControl(0x398000, out 4)`.
- **H:0x1b240 / H:0x1b6d0:** kernel VA read/write via 0x390030, used for EPROCESS walks from `PsInitialSystemProcess`.
- **H:0x1e980, window setup:** `VirtualAlloc(0x1000,RW)` → `VirtualLock` → touch → `pte_va = MmPteBase + ((W>>9) & 0x7FFFFFFFF8)` (H:0x1eb6b–0x1eb86) → read the original PTE (must be Present with a non-zero PFN). Globals: window 0xa69a8, PTE VA 0xa69b0, template 0xa69b8.
- **H:0x1b360 / H:0x1b810, physical read:** `new_pte = (template & 0xFFFF000000000FFF) | (PA & 0xFFFFFFFFF000)` → write via 0x390030 → **flush via 0x39003c type 3** → `memcpy(dst, W + (PA & 0xFFF), ≤ page)`. A failed flush is tolerated (H:0x1b574); phase markers at 0xa6758.
- **H:0x1b5d0:** 4-level page walk (1 GB/2 MB pages handled) → `translated` / `cr3_scan` / `cr3_brute` for the donor RustClient.exe; `self_map` / `self_pte` are self-map hit counters [I].
- **Teardown (H:0x8427):** restores the original PTE (H:0x21970) and flushes. Close (H:0x1b010) writes a zero qword to a stored kernel address; the target is [U], plausibly the `LsaProcess` slot.

**Persists while the game runs** (after the driver is gone): `LsaProcess` = rundll32, the whitelist entry, the redirected `gKsecpMiscExtension`, and the transiently rewritten user PTE.

```
// starter, while PDFWKRNL is loaded (description for detection logic)
st = read8(read8(rip_target(PsGetPermanentSiloContext)) + 8 + 16*read4(KsecddSiloContextSlot)) & ~1
write8(st+0, 0)                                   // vacate LsaProcess
fake = page_end(&gKsecpMiscExtension) - 0x20
write8(&gKsecpMiscExtension, fake); write8(fake, &KeFlushCurrentTbImmediately /*or HalpFlushTLB*/)
n = read4(&KsecValidAddressesCount)
write(read8(&KsecValidAddresses) + n*0x30, {0, ~0, 0, 0xFFFFFFFE, st, 0, 0}); write4(&Count, n+1)
unload PDFWKRNL
// reader host (no driver resident)
IOCTL(KsecDD, 0x398000)                  // become "LSA"
IOCTL(0x390030, {buf, pte_va, 8, 1})      // retarget own page's PTE
IOCTL(0x39003c, {type=3})                // TLB flush (this CPU)
memcpy(out, window+off, n)               // physical read
```

## 3. Signature scans (S:0x34030–0x34eab) and the effect on Defender
The scanner S:0x33b50 reads module headers through the driver and scans **only the `PAGE` section**; the RIP resolver is S:0x33ae0. Results against the build-26300 binaries:

| # | Mask @ / bytes @ | Pattern | Hit (26300) | Target |
|---|---|---|---|---|
| nt-1 | 0x109960 / 0x109990 | `8B D8 85 C0 0F 88 ?? ?? ?? ?? 65 48 8B 04 25 ?? ?? ?? ?? 66 FF 88 ?? ?? ?? ?? B2 01 48 8D 0D ?? ?? ?? ?? E8 ?? ?? ?? ?? 4C 8B ?? 24` | none | PiDDBLock (older builds) |
| nt-2 | 0x1099c0 / 0x1099c8 | `66 03 D2 48 8D 0D` | none | PiDDBCacheTable (older) |
| nt-3 | 0x1099d0 / 0x1099f0 | `48 8B 0D ?? ?? ?? ?? 48 85 C9 0F 85 ?? ?? ?? ?? 48 8D 0D ?? ?? ?? ?? E8 ?? ?? ?? ?? E8` | none | PiDDBLock alt |
| nt-4 | 0x109a10 / 0x109a40 | `8B D8 85 C0 0F 88 ?? ?? ?? ?? 65 48 8B 04 25 ?? ?? ?? ?? 48 8D 0D ?? ?? ?? ?? B2 01 66 FF 88 ?? ?? ?? ?? 90 E8 ?? ?? ?? ?? 4C 8B ?? 24` | N:0x9b1b44 in **PpCheckInDriverDatabase** | → **PiDDBLock** N:0xf8c5e0 |
| nt-5 | 0x109a70 / 0x109a80 | `48 8B F9 33 C0 48 8D 0D` | N:0x9b1cb5 in **PiLookupInDDBCache** | → **PiDDBCacheTable** N:0xfdb490 |
| ci | 0x109aa0 / 0x109ac0 | `48 8B 1D ?? ?? ?? ?? EB ?? F7 43 40 00 20 00 00`, then `48 8D 0D` within −0x32 bytes | ci.dll not provided [U] | g_KernelHashBucketList / g_HashCacheLock |
| W-A | 0x109af0 / 0x109b00 | `48 8B 0D ?? ?? ?? ?? FF 05` | W:0x65d6f in **MpImageVerificationCallback** | list head **W:0x25ae8** (resolved −8) |
| W-B | 0x109b10 / 0x109b20 | `FF 05 ?? ?? ?? ?? 48 39 11` | W:0x65d76 | runtime-driver **count W:0x25ad8**; +8 = hash-bucket array **W:0x25ae0** |
| W-C | 0x109b30 / 0x109b50 | `89 ?? 08 E8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E9` | W:0x80309 in **MpCleanupDriverInfo** | **MpFreeDriverInfoEx** W:0x6d6a4; presence gate only, never called |
| W-D | 0x109b70 / 0x109b90 | `89 ?? 08 ?? ?? ?? E8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? E9` | none (fallback) | as W-C |

The WdFilter globals are unnamed statics; public symbols put them at `MpBmDocOpenRules+0x60..+0x78`.

**What's done with the results** [C]:
- **S:0x34030, PiDDB:** walks `PiDDBCacheTable` to the driver's entry (S:0x33d30), unlinks it, and zeroes the name buffer, the UNICODE_STRING and the TimeDateStamp. It reads the lock but doesn't acquire it.
- **S:0x34360, CI:** unlinks the ci.dll hash-bucket node whose name matches the dropped file.
- **S:0x34760:** `NtQuerySystemInformation(0x40)` → its own `\\.\PdFwKrnl` FILE_OBJECT → DeviceObject → DriverObject → DriverSection+0x58 `BaseDllName`. It zeroes the name and sets Length 0, which suppresses the MmUnloadedDrivers record.
- **S:0x34a90, WdFilter:** returns success if WdFilter isn't loaded. Otherwise it walks the list from W:0x25ae8 (nodes = LIST_ENTRY at DriverInfo+0x20, UNICODE_STRING name at link+0x10) and matches the dropped name with `wcsstr`. On a match it:
  1. replaces the `link-0x10` hash node among the first 256 bucket slots with an odd "empty" marker (`&count+1`);
  2. unlinks the LIST_ENTRY;
  3. decrements the count;
  4. **doesn't free** the record (leak).

  This matches the build-26300 layout in W:0x65b50 [C]. A node that isn't at the head of its bucket chain gives error 0x201d, which aborts the whole kernel channel [C].

**Effect on Defender** [I]: WdFilter's record of the loaded driver disappears. That list is what `MpQueryRuntimeDrivers` (W:0x5ae44) reports to MsMpEng, so later Defender queries of loaded drivers don't show PDFWKRNL. It's **trace removal only**: no Defender code is patched, no callbacks are removed, and real-time protection stays on. Events emitted at load time have already fired.

## 4. Driver drop, registry, load, cleanup
**Symbol cache** [C]: S:0x30b90 creates `%TEMP%\PDFWKRNL_symbols_` + **24 characters**.
- Alphabet: wide `A–Z a–z` at **S:0x109e10**.
- Randomness: `BCryptGenRandom(NULL, 32, SYSTEM_PREFERRED_RNG)`, rejection-sampled (byte < 0xD0, then mod 52), up to 8 attempts.
- Then `SymSetOptions(0xC0702)` and `SymInitializeW("srv*<dir>*https://msdl.microsoft.com/download/symbols")`. The directory is removed recursively afterwards (S:0x31fc4) [I].

**Driver and service name** [C, S:0x33400]:
- MSVC `rand()` (S:0x4f568, LCG 0x343FD), seeded with `srand(time(NULL)*X)` (S:0x326f8). X is a VMProtect-thunked API [U].
- Length = `rand()%20 + 10` (10–29 characters), drawn from the narrow alphabet `a–z A–Z` at **S:0x109f10**.
- The same string is used as the file name and the service name.

**Drop** [C, S:0x326a0]:
1. Aborts if `\\.\PdFwKrnl` already opens (0x2015).
2. Path = `GetTempPathW()` without the trailing backslash + `\` + name, **with no `.sys` extension**.
3. `_wremove`, then `ofstream` writes **0x13A98 = 80,536 bytes** from S:0x109f60 (the full signed PE; the cert table at 0x2400, size 0x11698, ends exactly there).
4. `RtlAdjustPrivilege(SeDebugPrivilege)`.

**Registry and load** [C, S:0x32390]:
1. `RegCreateKeyW(HKLM\SYSTEM\CurrentControlSet\Services\<name>)`.
2. **`ImagePath` = REG_EXPAND_SZ `\??\<path>`**, **`Type` = REG_DWORD 1**. **No Start, ErrorControl, DisplayName or Group.**
3. `RtlAdjustPrivilege(SeLoadDriverPrivilege)`.
4. `NtLoadDriver(\Registry\Machine\System\CurrentControlSet\Services\<name>)`; on failure the key is deleted.

Then (still in S:0x326a0): open the device (GENERIC_READ|WRITE) → get the ntoskrnl base and check MZ → PiDDB → CI → MmUnloaded → WdFilter.

**Cleanup S:0x32e30** [C], on every path; on success at S:0x35a94, right after the KsecDD patching:
1. VirtualFree the bounce buffer, close the device.
2. **`NtUnloadDriver`**, then `RegDeleteKeyW`. The key is deleted even if the unload fails (0x2012).
3. Overwrite the file with `(rand()*rand()) % 2,000,000 + 81,536` bytes of `rand()%255`, then `_wremove` it.

**Timing** [C from the main sequence; dynamic timing I]. `StarterRun` runs, in order:
1. S:0x1dfaf: kill rundll32 watch hosts.
2. **S:0x1e2c9 → 0x356d0:** drop, load, scrub, patch, **unload**, wipe, delete.
3. S:0x1e7cb: preflight.
4. S:0x1e95e: autoconnect strip.
5. S:0x1eaee: cfg recover.
6. **S:0x1ee4e → 0x18650:** player launch via Explorer; reader host spawned at 0x195ba; packer map.

**NtUnloadDriver, the key deletion and the file deletion all complete before RustClient.exe or the reader host start.** PDFWKRNL is never loaded while the game or EAC runs.

## 5. Packer context: `.pkcfg` (EMUPACK1, 0x150 bytes) and the 0xC8 block
**Writer:** starter S:0x16960, from the `StarterRun(params)` globals (S:0x1ff45–0x20080), into the mapped packer's `.pkcfg`. **Reader:** packer P:0x15c0 polls up to 15 s for the magic and a valid 64-hex token. P:0x1860 wipes the config after use.

| .pkcfg off | Size | Source | Meaning | Tag |
|---|---|---|---|---|
| 0x000 | 8 | const | `EMUPACK1` | C |
| 0x008 | 8 | params+0x18 | **packer inject_id**; r13 at P:0x671e; `cheat id mismatch` if both non-zero and different (P:0x7ebc) | C |
| 0x010 | 0x40 (+NUL @0x50) | params+0x10 | **inject token** (64 hex), validated P:0x1610, copied to P:0x88900 | C |
| 0x060 | 0xC8 | — | context block (below) | C |
| 0x128 / 0x130 | 8 / 4 | params+0x40 / +0x48 | **hooks bundle** address in the player, and size | C |
| 0x138 / 0x140 | 8 / 4 | params+0x50 / +0x58 | **cheat bundle** (SYRE) address, and size | C |
| 0x148 | 8 | params+0x60 | **cheat inject_id** (P:0x3bef → job+0x18) | C |

No separate flags field. Bundles are freed by P:0x16b0/0x1770 (zeroed, then MEM_RELEASE).

**0xC8 block** (template `.pkcfg`+0x60 = P:0x8e060; copied by P:0x83b8; +0x88 overwritten with the token from P:0x88900 at P:0x847e; written to **cheat ImageBase+0xD80** at P:0x8614–0x8631):

| Off | Size | Source | Meaning | Tag |
|---|---|---|---|---|
| 0x00 | 0x40 | params+0x20 string (≤0x40) | string #1 | C / meaning U |
| 0x40 | 4 | `*(u32*)params+0x28` | u32 #1 | C / U |
| 0x44 | 4 | params+0x30 | u32 #2 (run5 A: minutes×60) | C / U |
| 0x48 | 0x40 | first half of params+0x38 string (≤0x80) = **AUTH_KEY** (run5 A) → cheat 0x40f380 | string #2 | C |
| 0x88 | 0x40 | packer token | **inject token** | C |

## 6. steam_appid.txt
**Neither the starter nor the packer writes it** [C].
- **Starter S:0xf900** (called from player launch S:0x186e0; path global S:0x162f20):
  - absent → logs `is absent before direct Player launch`;
  - a directory → error;
  - otherwise it reads and trims the content. If it equals **`3444084195`** (S:0x7a960), it calls `DeleteFileW` and logs `DeleteFileW(donor steam_appid.txt override)` / `removed obsolete shortcut AppID override…`;
  - any other value is kept and logged as a `foreign value`.
- **Packer P:0x10b39–0x10c49:** `SetFileAttributesW(NORMAL)` + `DeleteFileW` before `steam://rungameid/252490`.
- `3444084195` = 0xCD488DE3 has the high bit set, the form of a Steam non-Steam-shortcut AppID, plausibly planted by an older build [I].
- **Neither 480 nor 252490 is ever written to the file.**
  - The 480 decoy lives in the hooks' `steam_mask` (env vars, `GetAppID` hook, `RestartAppIfNecessary` swallow; H-strings 0x239fa, 0x243b3).
  - `252490` (S:0x7d6d0) is only used for process and launch identification.

## Evidence table
| Claim | Location | Tag |
|---|---|---|
| Clear LsaProcess | S:0x3515a–0x352a2; N:0x3f3755 | C |
| 0x398000 registers the first caller as LSA | K:0x289df–0x28ab6 | C |
| Fast-I/O LSA gate | K:0x3343, tables K:0x1abe4/0x1abb4 | C |
| CopyPool + KsecValidateAddress | K:0x78f4, K:0x79b9, K:0xeaf8 | C |
| ClientCallback type 3 → misc[0] | K:0xe6a3–0xe6dc | C |
| Fake misc table at page tail | S:0x352af–0x352cb, S:0x35408–0x35441 | C |
| Flush selection (Hyper-V / PDFK_FLUSH) | S:0x352dc–0x353d8 | C |
| Whitelist entry + count | S:0x3544e–0x35523 | C |
| PDFWKRNL memmove layout | D:0x6c0; S:0x34ffd–0x3506c | C |
| Unload right after patching | S:0x35a88 → 0x35a94 | C |
| kernel_ch before player launch | S:0x1e2c9, S:0x1ee4e | C |
| Name RNG / alphabets | S:0x33400, 0x109f10, 0x30c8b, 0x109e10 | C |
| ImagePath + Type=1 only; NtLoadDriver | S:0x323fc–0x32526 | C (API names I) |
| Unload / delete key / overwrite / delete | S:0x32ed2–0x3335e | C (API names I) |
| PiDDB / CI / MmUnloaded / WdFilter scrubs | S:0x34030, 0x34360, 0x34760, 0x34a90; W:0x65b50 | C |
| Reader primitives + window | H:0x1adb0, 0x1b180, 0x1b240, 0x1b360, 0x1b5d0, 0x1e980, 0x8427 | C |
| .pkcfg / block | S:0x16e50–0x16f1c; P:0x15c0, 0x671e, 0x7ebc, 0x3bef, 0x83b8–0x84af, 0x8614 | C |
| steam_appid.txt deletion only | S:0xf900–0x1010f, S:0x7a960, P:0x10b39 | C |

## Microsoft binaries (build 10.0.26300)
| File | SHA-256 | PDB (GUID+age) |
|---|---|---|
| drivers_ksecdd.sys | 7781386b4ffca21f49e6140447db755e24a25ee27263ac4f2bfd4532bdaf4218 | ksecdd.pdb 0E0268AC279CBE9BADFE89015ED7F1BF1 |
| drivers_cng.sys | 86bcadc4f7d57c5082d96b0cdacf795bc1b5628274a4ee8dae0f4c0288c5da27 | cng.pdb AC1FD0B63436F5ED861F4B5CC5BE32651 |
| drivers_WdFilter.sys | 653eb082c2820cee7c7043af89362ed343ce61e9615fc7f0b3ca7ec025d64aba | WdFilter.pdb 5B6DF9498FF42C35F3BDAD16301949661 |
| System32_ntoskrnl.exe | f6f275f67c7ef44fc2df2d828658fb31eaffd41018ac5a0fd9440e08d9912c30 | ntkrnlmp.pdb CE884F70F5A9025D53DB35D8BE8BFF791 |

**Dropped driver (embedded S:0x109f60)**

| Property | Value |
|---|---|
| Size | 80,536 bytes |
| SHA-256 | 6e8b49cf70bf854e8c59c7d27cefa89406caf8978461190dabb86dafcd8554e1 |
| SHA-1 | f329ae0fdf1e198bea6ba787e59cb73f90714002 |
| MD5 | b96d75a000367c200958089728fc5cb8 |
| Authenticode SHA-256 | fc23abdcf93928e1db8401a7ff53c86c85230a8637c4168f7434208f9e8b5ded |
| Authenticode SHA-1 | 661a1a28950cec3f2c3d0e72ab2a05d4a173cf9a |
| TimeDateStamp | 0x63A49E61 |
| Version info | AMD "USB-C Power Delivery Firmware Update Utility Driver", v1.0 |

## Detection notes
- **Kernel integrity:**
  - `gKsecpMiscExtension` pointing inside ksecdd's own image;
  - a `KsecValidAddresses` entry with `Start=0, End=~0` or `Tag=0xFFFFFFFE`;
  - `KSECDDLSASTATE.LsaProcess` ≠ lsass.exe;
  - ksecdd holding a kernel handle (access 0x478) to rundll32.
- **User mode:**
  - rundll32 with a manually mapped image opening `\Device\KSecDD` and issuing 0x398000, then 0x390030/0x39003c;
  - a pinned thread affinity and one `VirtualLock`'d page;
  - section `Local\HookProbe_KernelState_v1`.
- **Load time:**
  - a service key with only `ImagePath` (`\??\%TEMP%\[A-Za-z]{10,29}`, no extension) and `Type=1`, alive for seconds;
  - AMD signer, original filename PDFWKRNL.sys;
  - before the load, msdl fetches of ntkrnlmp.pdb/ksecdd.pdb into `%TEMP%\PDFWKRNL_symbols_[A-Za-z]{24}`;
  - the file overwritten with random data before deletion.
- **The scrubbing defeats PiDDB / MmUnloadedDrivers / WdFilter lookups.** Rely on load-time events (Sysmon 6, Defender ETW, CI events) plus the registry and file events.

## Disclosure notes
**Microsoft:**
- (a) 0x398000 grants LSA status to the first caller whenever `LsaProcess` is NULL, with no identity or PPL check.
- (b) `KsecIoctlClientCallback` calls through `gKsecpMiscExtension` without checking the target module. Consider protecting the extension pointers with KDP.
- (c) `KsecValidateAddress` trusts any range, so `[0,~0]` turns CopyPool into full kernel R/W. Validate the ranges and protect the table.
- (d) Together these give persistent kernel R/W plus a TLB-flush primitive **after** the vulnerable driver is unloaded, with no third-party driver resident.
- (e) Blocklist: check PDFWKRNL (CVE-2023-20598) against the current DriverSiPolicy by Authenticode hash `fc23abdc…` or signer+filename. Status [U].
- (f) WdFilter's runtime-driver list can be trivially unlinked from kernel memory.

**AMD:** PDFWKRNL.sys v1.0 (TimeDateStamp 0x63A49E61) exposes an unrestricted kernel memmove (IOCTL 0x80002028) to admins and is still being actively abused. Confirm revocation/replacement and support blocklisting of all affected versions.

**Epic/EAC:**
- The player runs without EAC.
- The EAC-protected donor is read **only through physical memory** from a separate rundll32 via the KsecDD PTE window: no handle to the donor, no resident driver.
- Indicators: the KsecDD state anomalies above, usermode page-table walking, `Local\HookProbe_*` objects, and two RustClient.exe instances.

## Open questions
1. The srand-seed multiplier API (S:0x35f2ae, a VMProtect thunk) [U].
2. Which component normally registers `gKsecpMiscExtension`, and what breaks in kernel SSPI when it and `LsaProcess` are overwritten [U].
3. The target of the reader's zero-write on close (H:0x1b010). Nothing in the starter undoes the whitelist entry or the misc pointer [C starter / U hooks].
4. The ci.dll pattern location [U].
5. The semantics of the 0xC8 block's strings and u32s [U].
6. The `KsecValidAddressesSize` overflow and the race from skipping the lock (bugcheck risk) [I].
7. PDFWKRNL blocklist status on build 26300 [U].

## Files in run5/B_kernel/
`PDFWKRNL.embedded_0x109f60.bin`; `pdb/` (4 public PDBs); `symbols/`; `disasm/` (ksecdd dispatch, starter kernel-channel listings); `signature_scan_results.txt`; `scripts/` (sd.py, pdbsyms.py, pedis.py, pscan.py, autodec.py, dec.py, cv.py, callers.py — parsing and disassembly only).
