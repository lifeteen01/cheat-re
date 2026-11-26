# Run 4: runtime-unpacked hooks + cheat DLLs (static analysis)

**Samples** (memory images in virtual layout, file offset == RVA):

| File | Runtime base | SHA-256 |
|---|---|---|
| `unpacked/simple_raknet_hooks.unpacked.dll` | 0x7ffa2e5a0000 | `81d0d6e7d8af6d01499d8b1e9ebbaa2e578defde0e0f72f64c408da37b3ab80a` |
| `unpacked/cheat.unpacked.dll` | 0x7ffa2a960000 | `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090` |

**Method.** Static only: a stdlib PE parser, a stdlib minidump reader, objdump disassembly, and pure-Python decoding of string data. No sample code was executed or emulated, and no IOC was contacted (I read the run4 pcap offline only).

**Confidence tags:** [C] confirmed in bytes/disassembly · [I] inferred with high confidence · [U] uncertain.

**Addresses** are RVAs. Hooks strings are cited by their decode-site RVA in `hooks_decstr.txt`; cheat strings by their getter RVA in `cheat_decstr.txt`.

The hooks `.ipnote` section (0x505 bytes, "MORPHINE-EMU-PROPRIETARY; LEGAL NOTICE …") again contains text aimed at analysts and AI tools. It is inert data inside the sample and was ignored.

---

## 0. Summary verdict

### `simple_raknet_hooks.dll`

It is the "EMU" engine and does much more than relay traffic.

**What it does in the player `RustClient.exe`** [C]:
- Puts **7 MinHook inline hooks on Facepunch's `RakNet.dll` exports**: `NET_StartClient`, `NET_Close`, `NET_Receive`, `NETRCV_RawData`, `NETRCV_UnreadBits`, `NETSND_WriteBytes`, `NETSND_Send`.
- Patches IAT entries in `baselib.dll` (`GetProcAddress`, `LoadLibraryW`) and `UnityPlayer.dll` (`LoadLibraryW`).
- Starts **its own RakNet server**, through RakNet.dll's `NET_Create`/`NET_StartServer`, on `0.0.0.0:28015`.

**How the session is spliced** [C strings + code]:
- **Auth:** the relay sends the donor `0x9D` (RequestUserInformation). It caches the donor's `0x9E` (GiveUserInformation), signals `Local\EmuPacker.FirstAuth`, and **substitutes that cached packet for the player's own `0x9E`** when the player connects to the real server.
- **EAC traffic:** every server→player **`0xA2` (EAC) message** is forwarded to the donor and hidden from the player's game. The donor's `0xA2` replies are sent to the real server on the player's connection.
- **Encryption level 2 ("mode2"):** the hooks hide the server's encryption mode from the game and do **AES-256-GCM themselves**. They use a session key ("H") that a **kernel-assisted reader in a separate `rundll32` host extracts from the donor process's memory**, by scanning for AES-256 key schedules [C scanner code / I purpose].
- **Other masking:** it fakes Steam/EOS identity (SpaceWar 480 decoy; EOS SDK facade) and moves the player's sqlite databases into memory.

**In vanilla powershell** it did nothing [C]: DllMain only starts its worker if the process image is `RustClient.exe`. The minidump shows phase 0 (`not_entered`), empty `.injtok`, and no telemetry.

### `cheat.dll` ("Rust Internal Pro")

A full-featured **internal Rust cheat** [C strings].

**Features:**
- ESP/chams for players, NPCs, animals, loot, ores, deployables, vehicles and traps.
- Aimbot with pSilent and bone selection, plus prediction.
- Recoil, spread and sway modifiers.
- A long list of exploits: desync/"manipulated" shots, instant hit, bullet TP, thick bullet, flyhack, speedhack, noclip/"interactive", spiderman, teleport, anti-violation limiters.
- Automation: auto-farm, auto-loot, fishing bot, codelock brute-force/auto-lock, shopfront stealer, handcuff abuse, door spam.
- Radar, player list, configs.

**How it works:**
- Dear ImGui menu, rendered through Unity's own pipeline (Mesh + CommandBuffer + a shader from an embedded AssetBundle). No D3D Present hook was found.
- Hooks only at the **il2cpp level**: MethodInfo->methodPointer swaps and Il2CppClass vtable-slot swaps. No GameAssembly code bytes are patched.
- il2cpp exports are resolved by **FNV-1a hash**.
- It carries **call-stack spoofing** scaffolding (synthetic `BaseThreadInitThunk`/`RtlUserThreadStart` frames).

**Scope beyond cheating:** no network, licensing, credential theft, persistence or kernel code was found in the unpacked cheat. File I/O is limited to configs in `C:\Spotify\*.bin` and an image for the sign-painter feature. Clipboard use is limited to copying Steam profile links [C strings, I absence].

**Crash at 0x2ce1d4 explained:** it is not a packer parameter. 0x2ce1d4 returns the **exception directory** (DataDirectory[3]) of a module. The cheat's main thread calls it on `GetModuleHandle("UnityPlayer.dll")` / `("GameAssembly.dll")`, which are NULL in powershell [C].

**Real entry contract:** the packer writes a **0xC8-byte context block at ImageBase+0xD80** (header slack). The cheat's DllMain copies it to a global before starting its thread [C both sides].

---

## A. Hooks / relay (`simple_raknet_hooks.dll`)

### A0. Layout and string protection [C]

- `.text` 0x1000–0x49354 is unpacked. The exception directory is valid in the VMP section (0x13dddd0: 1,843 RUNTIME_FUNCTIONs, 960 of them in `.text`).
- Exports:
  - `HooksSetInjectToken` 0x8100 → 0x28d70 (validates a 64-hex token).
  - `HooksSetDatabaseLogSink` 0x8110 (takes a 0x198-byte sink struct).
  - `HooksGetStartupStatus` 0x8240 (returns `[a62ec]<<32 | [a62e4]`).
  - `HooksGetRelayStats` 0x8260 (returns polls/packets).
  - `HooksKsecReaderHostMain` 0x1ad90.
  - DllMain 0x8280.
- **String scheme is the same as the starter/packer:** `out[i] = enc[i] ^ ((i>>3) + K + 13*i)`, with byte and UTF-16 variants, K as an immediate or in a register, and buffers assembled from xmm/rip loads plus immediates.
  - 356 of 374 decode sites decoded cleanly (`hooks_decstr.txt`).
  - The few undecoded ones include the XOR-TCP key `a3 5f 7b e2 14 d6 8a 91`, which decodes as raw bytes (sites 0x2745b/0x2779a/0x280ca).
- Calls to addresses above 0x49354 go to VMP import thunks or virtualized code.

### A1. DllMain / worker / modules_wait

**DllMain (0x8280)** [C]:
- On `DLL_PROCESS_ATTACH` it calls 0x13f0. That function compares the process image name against the decoded string **`RustClient.exe`** (0x14e3).
- Only if that matches does it set state=1 and start the worker at **0x2180**.
- In powershell the check fails. The minidump shows all phase/status globals (0xa62e0/e4/ec, 0xa66f8, 0xa6708) as 0, no RakNet handle (0xa6528=0), and `.injtok` = `'E'` + 64 zero bytes. **The hooks DLL was inert in the vanilla process** [C].

**Worker 0x2180, in order** [C strings, order from code]:
1. `build=telemetry-20260916 code_seal=off worker_started`.
2. **guard** (fn 0x1650), see A5.
3. `runtime_begin standalone=true interposer=false asm=false donor_relay=true phase1_source=remote_h steam_apps_lookup=direct_user_v1`.
4. Player sqlite redirection (`player_database`).
5. `eos_preloaded library="%ls"`.
6. **modules_wait:** `waiting_for_unity_baselib_gameassembly`. It waits for **`UnityPlayer.dll`, `baselib.dll`, `GameAssembly.dll`** (decoded at 0x2dca / 0x2e5a / 0x2eea), then logs `required_modules_present` and `module_ready name=GameAssembly.dll`.
7. `initializing_xor_tcp` (steam_api stage), connecting to **185.207.15.140** (0x271fb). Logs `xor_tcp_ready` / `xor_tcp_winsock_failed`.
8. `hooks mapped into player` / `hooks mapped, inject token missing`.
9. **raknet_load:** `load_official_RakNet`. It loads `RustClient_Data\Plugins\x86_64\RakNet.dll` (0x1600a).
10. Kernel channel: opens `Local\HookProbe_KernelState_v1_Attached` and `Local\HookProbe_HState_v2`.
    - Logs `init backend=ksecdd_host channel_ok=%u`.
    - If unavailable: **"external KsecDD H host is required; HV fallback is disabled"** (0x401d).
11. **hook_install** (`installing_routing`):
    - IAT hooks `hook_install baselib!GetProcAddress source=PE_imports`, `baselib!LoadLibraryW`, `UnityPlayer!LoadLibraryW`.
    - MinHook on the RakNet exports.
    - `steam_mask status=deferred waiting_for_steam_api`.
    - `routing_stabilized`.
12. **relay_start:** `starting_local_server` → `local_server_started`.
13. **peer:** connect thread.
14. `runtime_ready hooks=10 routing=raknet_exports server=0.0.0.0:%u payload_mutation=true donor_relay=true phase1_source=remote_h`.
15. Protection thread.
16. Signal **`Local\EmuPacker.RelayReady`** (`relay_ready`).
17. Polling loop: `relay_traffic polls=%llu packets=%llu`, `relay_idle`, and `hook_cell_changed` if a hook is overwritten.

Local logs go to `%LOCALAPPDATA%\logs\` (`hooks.log`, and `*.elog` named `%s-YYYYMMDD-HHMMSS-<pid>-<hex>.elog`). The `.elog` files are encrypted with **AES-GCM under an embedded RSA-3072 public key** (`RSAPUBLICBLOB`, BCRYPT `RSA1` blob at RVA 0x57140), so only the operator can read them [C strings/blob; I use].

### A2. Hook targets

**RakNet export hooks.** Hook table built in 0x15ae0. Exports are resolved by `GetProcAddress(RakNet.dll, …)`, then each is MinHook'd [C]:

| RakNet.dll export | Detour | Role |
|---|---|---|
| `NET_StartClient` | 0x12160 `HookStartClient` | Player connecting to a real server. Ignores loopback (`status=ignored_loopback reason=steam_uri_broadcast`). Starts a **donor cycle** and waits for a fresh donor `0x9E` (`donor_cycle status=wait timeout_ms… cache…`, `joining_without_fresh_donor` on timeout). Resets mode2 key/epoch, then calls the original (`HookStartClient official_result=%d`). Logs `phase1_connection_epoch status=started key_source=a2_packets`. |
| `NET_Close` | 0x12f70 `HookClose` | `mode2_session_key status=cleared source=connection_lifecycle`, `packet_h epoch status=reset`. |
| `NET_Receive` | 0x13300 | Inbound classifier (see the message map below): **0xA2 → relay to donor and consume** (`a2_packet action=relay_and_consume`; code at 0x13447 `cmp dil,0xa2`, then NETSND_Start/WriteBytes/Send to the donor GUID). **0x8F Approved → `mode_select … field=12 selected_mode game_sees=0 wrap`**. Mode2 packets → AES-GCM decrypt (`mode2_unprotect status=authenticated action=deliver … trailer_removed=22`), or drop on failure (`decrypt_or_tag_failed`, `session_key_unavailable`, …). |
| `NETRCV_RawData` | 0x144a0 | Returns the decrypted buffer to the game. |
| `NETRCV_UnreadBits` | 0x144b0 | `mode2_length_override status=consumed … returned_bits`. |
| `NETSND_WriteBytes` | 0x146c0 | Outbound: **if `0x9E` and a donor cache exists, write the cached donor packet instead** (`hook_call api=NETSND_WriteBytes cache_available=1 … action=substitute`, code 0x14978 `cmp bl,0x9e`; otherwise `cache_available=0 message_id=0x9E action=passthrough`). Logs any `0xA2` the game itself emits (`source=GameAssembly`). Mode2 packets → AES-GCM encrypt (`mode2_protect status=encrypted … key_slot=%ls domain=%u sequence_le=0x%08X … trailer_added=22`). |
| `NETSND_Send` | 0x150f0 | `hook_call api=NETSND_Send …` (send accounting). |

Also resolved but not hooked: `NETRCV_GUID`, `NETSND_Start`, `NET_Create`, `NET_StartServer`, `NET_CloseConnection` (used by the relay server). `hooks=10` = these 7 + 3 IAT hooks [I].

**IAT hooks** [C]:
- `HookBaselibLoadLibraryW` and `HookUnityLoadLibraryW` intercept loading of **`EOSSDK-Win64-Shipping.dll`** and return an **"eos_facade"**. The facade resolves `EOS_Initialize`, `EOS_Platform_Create`, `EOS_Platform_GetAntiCheatClientInterface`, `EOS_Logging_*`, `EOS_GetVersion` (reported version string `1.19.0.3-49960398`), and logs `eos_facade return=success`, `unresolved_passthrough`.
- So the player's game gets a stub Epic SDK and never runs the EAC client [I].
- `baselib!GetProcAddress` lets it redirect export lookups [I].

**Signature scans:** none in the hooks. All targets are export names or PE imports [C].

**Rust message IDs**, from the code's own labels (fn 0x142a8 switch, wide strings at 0x58660…): **ID = Facepunch `Message.Type` + 140** [C].

| ID | Label in code | Type |
|---|---|---|
| 0x8F | `approved` | Approved (3) |
| 0x9D | `request_user_information` | RequestUserInformation (17) |
| 0x9E | `give_user_information` | GiveUserInformation (18) |
| 0xA2 | `eac` | EAC (22) |
| 0x13 | (RakNet) | ID_NEW_INCOMING_CONNECTION, on the local server |

### A2a. Relay server (fn 0x17ba0 start, 0x18570 loop) [C]

- `server_call NET_Create result=%p`, then `server_call NET_StartServer bind=0.0.0.0 port=%u max=%d` (port 28015, from the donor `client.cfg` template). Logs `relay_listen`.
- **Only one client is accepted:** `server_reject extra_client existing=0x… new=0x…`. Then `local_connection_accepted` → `donor_connected`.
- On the donor's new connection (`Initializing donor by 0x13, guid: %llu`), the relay **acts as a Rust server**: it sends **`0x9D`** (`packet=0x9D send_result=%u`, `donor_auth_request`).
- The donor replies **`0x9E`** (`Received 0x9E response from donor stored=%d pending=%d bytes=%llu`). This is cached as `first_auth_packet`, or rejected with `packet_rejected_donor_mismatch` / `Received 0x9E ignored non_donor`.
- The relay then signals **`Local\EmuPacker.FirstAuth`** (fn 0x16323/0x16425: `packet=0x9E cached=1`, `first_auth_signal`).
- Donor **`0xA2`** packets (`Received %02X response from donor`, `a2_packet direction=donor … donor_match=%u`) are sent to the **real server over the player's game connection** by `game_relay` (fn 0x15830: NETSND_Start/WriteBytes/Send on the stored player context 0xa66a0 / server GUID 0xa66a8; `game_relay status=send guid… id=0x%02X`).

**Donor cycle** (fn 0x16920, thread 0x199d0) [C]:
- `donor_cycle status=start` / `kicked guid=…`.
- Reconnects the donor through **`steam://run/252490/connect/+connect%20127.0.0.1:<port>%20+d<token>`** (ShellExecute; logs `steam_connect token=%u uri=%ls`, `_retry`, `_failed`).
- Ends with `reconnected cache=…` or `reconnect_timeout`.
- This gives a fresh donor 0x9E (a fresh Steam auth ticket) for each real-server join [I].
- Steam may also broadcast that URI to the player. The player's `HookStartClient` ignores loopback for that reason, and a Steam vtable hook swallows it (`steam_launch status=swallowed text=%hs`, `installed how=vtable slot=0x%02X`) [C strings / I].

### A2b. Concrete packet flow

```
 DONOR RustClient.exe (official, EAC + Steam)           PLAYER RustClient.exe (cheat; EOS facade, no EAC)            REAL SERVER
 client.autoconnect 127.0.0.1:28015                      simple_raknet_hooks: local RakNet server 0.0.0.0:28015
                                                          + hooked RakNet client (game's own connection)

 (1) donor connects ──RakNet──► local server: 0x13 NEW_INCOMING_CONNECTION
 (2)                 ◄── 0x9D RequestUserInformation (relay pretends to be the server)
 (3) 0x9E GiveUserInformation (Steam ticket etc.) ──► cached; Local\EmuPacker.FirstAuth set
                                                          → packer maps cheat.dll, restores client.cfg
 (4)                                                      game calls NET_StartClient(real server) ──► HookStartClient:
                                                          ensures a fresh donor 0x9E (donor_cycle via steam://…connect 127.0.0.1)
 (5)                                                      ◄────────────── 0x9D RequestUserInformation ───────────────
 (6)                                                      game writes its own 0x9E ─► NETSND_WriteBytes hook
                                                          SUBSTITUTES the cached donor 0x9E ─────────────────────────► server
 (7)                                                      ◄────────────── 0x8F Approved (field 12 = mode) ───────────
                                                          hook: selected_mode recorded, game_sees=0 (game thinks plaintext)
 (8)                 ◄── 0xA2 (server_relay) ◄──────────── NET_Receive hook: 0xA2 relay_and_consume ◄───── 0xA2 EAC ─
     donor's genuine EAC client answers
 (9) 0xA2 reply ───────► local server ── game_relay ──────► sent on player's connection ───────────────────► server
(10) rundll32 "H host" (HooksKsecReaderHostMain) scans DONOR memory for AES-256 key schedule
     → publishes key H in Local\HookProbe_HState_v2 → player installs mode2_session_key slot1 (aes-256-gcm)
(11)                                                      inbound mode2 packet: NET_Receive → AES-GCM decrypt (strip 22-byte
                                                          trailer) → NETRCV_RawData/UnreadBits return plaintext to game
                                                          outbound: NETSND_WriteBytes → AES-GCM encrypt (+22-byte trailer,
                                                          sequence_le, domain 1 out / 2 in) → server
```

Confidence:
- Steps 1–9 and 11 are [C] at the string/code level.
- Step 10 is the code's own vocabulary (`phase1_source=remote_h`, `source=external_H_double_H`, `aes_scan`, `h_client_accepted`, `session packet before H delivered`). That the key is EAC's network-protection session key is [I].
- The 22-byte trailer layout (most likely a 16-byte GCM tag plus sequence/checked fields) is [U].
- A hard-coded 32-byte hex value `70748db6439e4e4c36ef91d43d3745734a5142b7b93bebe10ba367a1eac7353a` sits next to the labels `bootstrap/session/slot0/slot1/fixed` (fn 0x11070). Its role is [U]: perhaps the fixed/bootstrap key slot.

**Net effect** [I]: the server sees the donor's genuine Steam auth and genuine EAC challenge/response, plus correctly encrypted level-2 traffic. Meanwhile, the client actually playing runs no EAC and carries the cheat.

### A3. What it patched in vanilla powershell (pe-sieve) [C]

| Module | Finding | Attribution |
|---|---|---|
| ntdll.dll | `NtProtectVirtualMemory` (RVA 0x1617b0) → `jmp` to an allocation at 0x7ffa83ef0000. It holds an original-stub trampoline (`mov r10,rcx; mov eax,0x50; jmp ntdll+0x1617b8`) and `jmp [rip]` → **hooks+0xb3b10** (cheat run: **cheat+0x41eb10**). | Both targets lie in the **VMProtect sections** (`.!cw` / `.B-)`), and the same hook appears for both payloads. It is VMProtect's runtime memory-protection guard, not payload logic. |
| clr.dll | 22 patches/hooks (→ windows.storage.dll) | Identical in both processes and pointing into Windows modules: CLR/PowerShell environment, not the sample [I]. |
| simple_raknet_hooks.dll | "unpacked_sections" | VMP self-unpacking. |
| Implanted PEs (`24d808be958.dll`, `24dfa940000.dll`; cheat run `29c01cdbaf8.dll`) | 32-bit .NET assemblies (`4zhyy4sa.dll`, `lojypeys.dll`) | PowerShell `Add-Type` harness assemblies, not the sample. |

The hooks' own guard/early hooks never ran, because the worker was not started (A1).

### A4. `HooksKsecReaderHostMain` (kernel reader host, runs in rundll32) [C strings/code, I semantics]

- **Shared state:** opens `Local\HookProbe_KernelState_v1` (+`_Attached`), published by the starter with `sys_proc`, `ksec_state` and build. It logs `ksecdd_reader status=started sys_proc=0x%llX ksec_state=0x%llX build=%u` and `build=%u excluded_player_pid=%lu`.
- **KsecDD device:** opens `\\.\KsecDD` / `\\.\GLOBALROOT\Device\KSecDD` (fn 0x1adb0) and uses **IOCTLs 0x390030, 0x39003c and 0x398000** (input sizes 0x20/0x30). The 0x398000 function code is outside the stock KsecDD range, so it is plausibly made reachable by the starter's `KsecValidAddresses` manipulation [U].
- **Address-space access:** a page-table "window": `cr3_scan … pages chunks self_pte metadata self_map translated mz validator_rejects`. It reads physical memory by repointing a self-mapped PTE [I].
- **Target process:**
  - Walks EPROCESS (`eproc sys=… pid_off=… links_off=…`) to find **`RustClient.exe` other than the player PID**, i.e. the **donor**.
  - Brute-forces the donor's CR3 (`cr3_brute pid=%lu sec=0x%llX peb=0x%llX`, `is_donor=1`).
  - Handles `donor status=gone/stale`.
- **What it reads:**
  - **`aes_scan`**: fn 0x1d3c0 is an **AES-256 key expansion** (240-byte schedule, S-box at 0x5ce00). The scanner looks for 32-byte keys followed by their valid expanded schedule in donor pages (aeskeyfind-style): `scan status=ok h=%ls ctxs=%d distinct=%zu pages=%zu stale=%zu`.
  - The found key "H" is published to `Local\HookProbe_HState_v2` with generation/epoch (`h_host_publish`, `epoch_reset`). The player consumes it (`h_client_candidate`, `h_client_accepted`, `mode2_session_key status=installed … source=external_H_double_H`).
- **Lifetime** is tied to `Local\EmuPacker.WatchAbort`. Logs `KsecDD and shared H channel ready`, `reader stopped`.
- **Purpose** [I]: steal the donor's EAC-negotiated packet-encryption key without opening a handle to the EAC-protected donor.
- There is no sign that it reads the EAC driver itself. The WdFilter scan stays in the starter (run3).

### A5. Guard, anti-analysis and telemetry [C]

- **Guard (fn 0x1650):** `debugger`, `code_integrity` (`code_capture`, `code_seal=off`), `analysis_environment`.
  - `NtQueryInformationProcess` classes **7 (DebugPort), 0x1E (DebugObjectHandle), 0x1F (DebugFlags)**.
  - A **Sleep(125 ms) timing check** against a 1000 ms threshold.
  - Results are reported as `INJECT_GUARD_` (fn 0x2a3b0).
- **Also:** a protection thread (`protection_thread_creation_failed`) and hook-cell integrity monitoring (`hook_cell_changed` → `runtime_failed`).
- **Telemetry:** XOR-TCP to **185.207.15.140** (port 6060 per run3), key `a35f7be214d68a91`.
  - Formats: `INJECT_LOG_` + `%s%s$%llu$%s$%s$%s$%s\n` (fn 0x29d90) and `INJECT_GUARD_` + `%s%s\n`.
  - Named object `Local\EmuPacker.LogClock` (SDDL `D:(A;;GA;;;WD)(A;;GA;;;AC)(A;;GA;;;S-1-15-2-1)`).
- **Run4 pcap:** 0 packets to/from 185.207.15.140 or 77.91.102.245, consistent with phase `not_entered`.

### A6. Other player-side manipulation [C strings]

- **steam_mask** (hooks `steam_api64.dll` exports once loaded, using `LdrRegisterDllNotification`):
  - `SteamAPI_Init/InitSafe/InitEx/SteamInternal_SteamAPI_Init`.
  - `SteamAPI_RestartAppIfNecessary` (`restart_swallowed app=%u decoy=%u`).
  - `ISteamUtils_GetAppID` (`getappid_split rust=%u decoy=%u`; decoy **480**).
  - `BIsSubscribed(App)`, `GetSteamID` (`fake_steamid id=%llu`), `BLoggedOn`, `GetPersonaName`, `IsSteamRunning`.
  - Rewrites the `SteamAppId` / `SteamGameId` / `SteamOverlayGameId` environment variables (`steam_appid_removed`).
  - Hides `GameOverlayRenderer64.dll`-related ids.
  - This explains the SpaceWar (480) decoy from run3: the player runs as app 480 but the game sees 252490 [I].
- **player_db:** hooks `sqlite3_open/open16/open_v2` in `RustClient_Data\Plugins\x86_64\sqlite3.dll`. It snapshots each DB into an in-memory `memdb` VFS (`/emu-player-%lu-%08lX%08lX-`), so the player and donor do not fight over the same files [I].

---

## B. Cheat (`cheat.dll`, product string **"Rust Internal Pro"**)

### B1. String protection [C]

- **Different scheme from the starter/packer/hooks.** Each string is a template object:
  - A **getter** copies the ciphertext into a buffer (rip loads plus immediates).
  - A **size-specialised decryptor** checks the last byte (still encrypted if non-zero; e.g. fn 0x2ce594) and decrypts in place: **`out[i] = enc[i] ^ (0x37 + (i mod M))`, with M = 52 (magic 0x4ec4ec4f) or 56 (magic 0x24924925)**. Examples: fn 0x2cdba0 (len 12), 0x2cd9e4 (len 5).
- **3,881 strings decoded** (2,899 unique) → `cheat_decstr.txt`.
- **Module and API names are hashed:** **FNV-1a 32-bit over the lowercased name, with seed = high dword and target = low dword of a 64-bit constant** (fn 0x2cc124 step, 0x3c81b0 loop over `LDR_DATA_TABLE_ENTRY.BaseDllName`).
  - Resolved: `UnityPlayer.dll` (0xb06a766b030bd1d7, 0x2d981b4631949c20).
  - il2cpp exports: `il2cpp_assembly_get_image`, `class_from_name`, `class_get_method_from_name`, `class_get_type`, `image_get_class`, `image_get_class_count`, `method_get_param`, `method_get_param_count`, `method_get_param_name`, `method_get_return_type`, `object_new`, `string_new_wrapper`, `type_get_name`, `type_get_object`.
  - Plain-decoded: `il2cpp_array_new`, `il2cpp_resolve_icall`.

### B2. Features (from decoded menu labels, tooltips and config keys)

| Feature area | Evidence (decoded strings) | Conf. |
|---|---|---|
| **Player ESP** | `Bools.PlayerESP`, `Box`/`CornerBox`/`DBox`, `Skeleton`, `HealthBar`, `healthvalue`, `name`, `HeldItem`/`hotbar`, `Snapline`/`tracers`, `ViewDirection`, `OOF` (out-of-view indicators), `Sleepers`/`DrawOnlineSleepers`, `Wounded`, `TeamID`, `[Inside Base]`, `Shows if player is outside`, `Alerts when player looks at you` (` IS LOOKING AT YOU `, ` IS AIMING AT YOU `) | C |
| **World / loot ESP and icons** | Crates (`Elite/Military/Normal/Basic/Tool/Food/Medical/Locked/Heli/Bradley`, water crates), barrels, ores (`Stone/Metal/Sulfur/HQM`, `ChamOres`), collectibles (hemp, mushrooms, berries, …), animals (bear, wolf, boar, stag, shark, croc, tiger, panther, snake …), vehicles (mini, scrap heli, RHIB, sub, car, bikes, train, tugboat), traps (turret, shotgun/flame trap, landmine, bear/snap trap, SAM), deployables (TC + upkeep, sleeping bags, stashes `StashesHidden`), raids (`Raids`, `YOUR HOUSE IS GETTING RAIDED!!!`), item icons from embedded `rusticons` bundle (`assets/_iconstage/`) | C |
| **Chams** | `Player/NPC/Animal/Container/Deployable/Food/Ore/Trap/Vehicle/ViewModel/Hand Chams`, `Hit Chams`, materials `Iridescent`, `StarryNight`, `Glow`, `Rainbow`, `Flat`, `Plasma/Solid/Mesh Vischeck`; shaders from embedded AssetBundles | C |
| **Aimbot** | `AIMBOT##aimbot`, `Bools.Aimbot`, `i.AimbotFOV`, `i.AimbotSmoothing`, `i.aimbone`, `Secondary Aimbone`/`K.SecondAimbotVirtualKey`, `Bools.AimPrediction`, `AimbotVischeck`, `KeepTarget`, `TargetHelicopter`, `aimwounded`, `aiminmountable`, `AimAtMarker`, `Humanizes your aim`, `Snaps onto your target` | C |
| **Silent aim / hit manipulation** | `Bools.PSilent`, `Headsilent/Necksilent/Spinesilent/lowerspinesilent`, `hitscan`, `HitOverride` (`Override hit bone`), `F.Hitbonechance`, `usemisschance`, `BoneRandomization`, `MagicBoolet` (`Curves your projectiles towards the target`), `Pierce` (`Pierce through objects`), `ShootThroughWalls`, `ShootThroughFriends`, `thickbullet`/`RageBigBullet`, `LegitBulletTP`, `instanthit`/`Instant projectile hit`, `InstantKill`, `DoFatBulletHit`, `simulateproj` | C |
| **Recoil / weapon** | `recoilmod` (`Recoil X/Y`, `i.Recoilpercent`), `RageRecoil`, `recoilcomp`, `nospread`/`Spread Amount`, `NoSway`, `noweaponbob`, `noweaponlowering`, `fastfire`, `fullauto`, `RemoveMinigunwait`, `fastbow`, `BowAimcone`, `Eoka hitchance`, `projectilespeed`, `LowVelocity`, `IncreaseVelocity`, `GrenadeAngles` (`High Grenade Prediction`) | C |
| **Movement / exploits** | `Flyhack`/`FlyBypass`/`SmoothFlyhack`, `Spiderman`, `OmniSprint`, `Jesus` (walk on water), `InjJump`, `NoFall`, `NoCollision`, `interactive` (noclip/debug-camera), `teleport5m` (`66 Positions`), `SafeTeleport`, `FakeLag`, desync (`ShouldAttempDesync`, `F.MaxDesync`, `Freeze player during desync`, `Manipulated`), speedhack (`Fast/Slow Speedhack`, `AutoAdjustSpeed`), **`AntiViolations`** (`Stops you from generating violations on the server`: `AntiFly/AntiSpeed/AntiNoclip/AntiTerrain`) | C |
| **Automation** | `AutoFarmOre`/`SilentFarmOre/Tree`, `SilentMeleePlayers`, `HeliSilentMelee`, `autostrike`, `AutoLoot`/`SilentLoot`/`InstantLoot` (Loot Through Walls), `AutoCollect`, `autoeat/AutoHeal/AutoDrink`, `AutoUpgrade`/`DemolishEnabled`, `FishingBot` (auto cast/reel/bait/deposit), `AutoRespawn`, `AntiAFK`, `refill jackhammer`, `AutoStack` (stack walls/TC), `Rotate Buildings` | C |
| **Griefing exploits** | `BruteForceCodes` (`BruteForce Codelocks`), `Autolock`, `autoauth`, `StealUnlockedDoors` (code change + lock), `AutoKnock`/`Spam Doors`, `Shopfront Stealer` (`Removes all but 2 shopfront contents and scam the other user`), handcuff abuse (`HandcuffStuff`, `Spam Handcuffs`, `Keep In Handcuffs`, `instantunlockhandcuff`), `GestureSpam`, `signpainter` (uploads `Image.png`/JPG from the Rust folder), `weaponspammer` | C |
| **Visual world mods** | `Dayhack`, `Ambient`, `SkyChanger`, `BrightStars`, `NoFog/NoRain/nograss/nosmoke/noflash/NoWaterBlur`, `FovChanger`, `Zoom`, `thirdperson`, `AspectChanger`, `removelayer` (see-through layers), `DisablePlayerCulling` | C |
| **Radar / map / lists** | `radar`, `Ingame Map Players/Raids/Entities/LocalStashes/Scientist`, `PLAYER LIST` (friends/enemies, `Copy Steam Link` → `https://steamcommunity.com/profiles/`), `StreamerMode`/`namespooftest` (randomises names) | C |
| **Debug / console** | `demo.record`/`demo.stop`, `debug_camera.prefab`, `craft.canceltask`, `craft.fasttracktask`, `inventory.endloot`, `RunConsoleCommand`; RPCs `RPC_OpenLoot`, `RPC_LootCorpse`, `RPC_KnockDoor`, `RPC_ChangeCode`, `RPC_Unlock`, `RPC_TakeLock`, `RPC_ReqRemoveCuffs`, `RPC_ReqForceMountNearest`, `RPC_KeepAlive`, `RPC_PickUp` … | C |
| **Menu / config** | Tabs `AIMBOT`, `EXPLOITS##aimbot`, `VISUALS##…` (PLAYERS / ORE / LOOTABLES / DEPLOYABLES / WORLD / RESOURCES), `AUTOMATIONS##MISC`, `MOVEMENT##MISC`, `UTILITY##MISC`, `WEAPON##MISC`, `PLAYER LIST`, `Configs##CONFIG`, `Settings##CONFIG`, `FAVORITES`, `Search for functions...`, `Feature Hotkeys` window; config key prefixes `Bools.` / `F.` / `i.` / `K.` (virtual keys) / `C.` (colours) / `V2.` / `V3.` / `S.` / `VectorBools.`; files **`C:\Spotify\DefaultCfg.bin`, `StashList.bin`, `SamSitelist.bin`, `*.bin`** (read/written via il2cpp `System.IO.File`/`Directory` icalls); fonts Stolzl, Smallest Pixel-7, Minecraftia, `C:\Windows\Fonts\msyhbd.ttc` | C |
| **Offensive content** | A racial slur and Nazi-themed crosshair options (`SwasticaCross`, `Nazi`) among the menu strings | C |

### B3. Technical internals

**Entry contract** [C, both sides]:
- Packer (run3 `packer.dll` 0x8614–0x8631): after mapping, `write(cheat_base + 0xD80, block, 0xC8)`.
  - The block template comes from packer `.data` 0x8e060.
  - 0x40 bytes from packer 0x88900 (checked non-empty) are copied in at +0x88.
- Cheat DllMain **0x3cad10** (reason==1):
  - Copies `[hinst+0xD80 .. +0xE48)` to global 0x40f2b0.
  - Copies the 64-char field at block+0x48 to 0x40f380 and NUL-terminates it (likely the inject token/ID string [I]).
  - Then calls **CreateThread(0x3cabc0)** and CloseHandle. This is the only CreateThread call site in `.5ba23b`.
- In the LoadLibrary test the block was all zeros.

**Main thread 0x3cabc0:**
1. Resolves `UnityPlayer.dll` and `GameAssembly.dll` (0x3caccc / 0x3cac88), with sleep/retry, and fetches their **exception directories via 0x2ce1d4**. The NULL module handle in powershell is what crashed at 0x2ce1d4.
2. Runs static initialisers.
3. Calls 0x35d31c, then **0x362118**: GameAssembly handle, config dir `C:\Spotify`, load `DefaultCfg.bin`, install hooks.

**Call-stack spoofing** [C code / I purpose]: fn 0x2ce130 resolves `KERNEL32.DLL!BaseThreadInitThunk` and `ntdll.dll!RtlUserThreadStart`. Fn 0x2cbd5x looks up their RUNTIME_FUNCTION/unwind data (0x2ce1f0, 0x2ce3dc) and builds a 0xd8-byte context. These are synthetic return frames, so calls made from cheat code look like they come from a normal thread start.

**Game hooks** (`cheat_hooks.txt`; no inline patching of game code) [C]:

| Mechanism | Hooked method | Detour |
|---|---|---|
| fn 0x2ea90c: swap `MethodInfo->methodPointer` | `Projectile.Update` | 0x32ae10 |
| | `WaterOverlay.Update` | 0x332554 |
| | `SmokeGrenade.Update` | 0x32f038 |
| | `<obfuscated class>.LateUpdate` | 0x32f408 |
| | **`Client.LateUpdate`** (main per-frame tick) | 0x2f8574 |
| fn 0x2ea978: find the method pointer inside the Il2CppClass vtable (scan ≤ klass+0x1500) and swap the slot | `ItemIcon.%ff5c768a…` | 0x3215cc |
| | `PlayerWalkMovement.%123bd3a0…` | 0x32a9f8 |
| | `PlayerWalkMovement.%9a4b1fd1…` | 0x324b30 |
| | `PlayerWalkMovement.%1d9a027b…` | 0x322aec |

- Further hooks may live in the 883 functions inside the VMP section `.B-)` [U].

**Finding game internals:**
- il2cpp reflection through the hashed API: `class_from_name`, `get_method_from_name`, parameter-count/type/return-type matching for obfuscated methods.
- Rust's obfuscated type/method names (`%<sha1>`, 13 distinct).
- Unity icalls via `il2cpp_resolve_icall`, e.g. `UnityEngine.Physics::IgnoreLayerCollision()`, `Time::get_timeScale()`, `Mesh::*_Injected`, `Collider::get_isTrigger_Injected`, `RectTransform::set_sizeDelta_Injected`, `UnsafeUtility::PinSystemObjectAndGetAddress`.
- Two **byte signatures scanned in UnityPlayer.dll**: `C7 44 24 ? ? ? ? ? 8B 44 24 ? E9 ? ? ? ? CC` and `40 53 48 83 EC ? 48 8B D9 48 83 F9`. Their targets are [U].
- Class names in clear include BasePlayer, HeldEntity, BaseMelee, BaseLauncher, BaseProjectile-related `ItemModProjectile`/`ProjectileWeaponMod`, `PlayerWalkMovement`, `MainCamera`, `LootContainer`, `BuildingPrivlidge`, `OreResourceEntity`, `TreeEntity`, and many more. Field names are absent, so field access is presumably by **hard-coded offsets** [I].

**Rendering** [I, strong]:
- Dear ImGui with the tables API, ≥1.80 (`Size all columns to fit###SizeAll`, `Reset order###ResetOrder`, `###NavWindowingList`, `(Main menu bar)`); no version string is present.
- Draw data goes into a Unity `Mesh` via the `SetVertexBufferParamsFromPtr`/`InternalSetVertexBufferData`/`SetIndexBufferParams` icalls, and is executed with a `CommandBuffer` (`ExecuteCommandBuffer`, `SetRenderTarget`, `BackBuffer`, `EnableScissorRect`).
- The shader and material come from an embedded AssetBundle: `Assets/AssetBundleData/guish.shader`, `RenderTexture.renderTexture`, `SystemUI.prefab`.
- A helper GameObject is named **`Sussy Object`** / mesh `SussyMesh` (`Internal_CreateGameObject`, `Internal_AddComponentWithType`).
- **No D3D11/DXGI/Present strings or hooks exist**.
- Input comes from `UnityEngine.InputSystem` (Keyboard/Mouse controls).

**Threads, network, licensing:** one CreateThread. **No sockets, URLs (besides the Steam profile link), licence/HWID or telemetry strings** in the cheat. Licensing and telemetry live in the loader, starter, packer and hooks [C absence in decoded set / I].

### B4. Anything beyond cheating?

**Nothing found in the cheat** [I]:
- No credential/file theft.
- No persistence.
- No kernel interaction.
- No outbound network.
- File I/O limited to `C:\Spotify\*.bin` configs, a sign image from the Rust install, and clipboard (Steam links).

"Steal" features are in-game item theft from other players.

**The kernel-level component in the chain is the hooks DLL's KsecDD/PTE reader** (with the starter's BYOVD), which reads another process's memory to lift a cryptographic key.

---

## C. IOCs

| Type | Value |
|---|---|
| SHA-256 hooks (unpacked image) | `81d0d6e7d8af6d01499d8b1e9ebbaa2e578defde0e0f72f64c408da37b3ab80a` |
| SHA-256 cheat (unpacked image) | `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090` |
| Network | 185.207.15.140 (XOR-TCP, key `a35f7be214d68a91`, `INJECT_LOG_`/`INJECT_GUARD_`, build `telemetry-20260916`); local UDP **0.0.0.0:28015** RakNet server in RustClient.exe |
| URI | `steam://run/252490/connect/+connect%20127.0.0.1:<port>%20+d<token>` |
| Named objects | `Local\EmuPacker.RelayReady`, `Local\EmuPacker.FirstAuth`, `Local\EmuPacker.WatchAbort`, `Local\EmuPacker.LogClock`, `Local\HookProbe_KernelState_v1`(+`_Attached`), **`Local\HookProbe_HState_v2`** (new) |
| Devices / IOCTLs | `\\.\KsecDD`, `\\.\GLOBALROOT\Device\KSecDD`; IOCTL 0x390030, 0x39003c, 0x398000 from rundll32 |
| Files | `%LOCALAPPDATA%\logs\hooks.log`, `%LOCALAPPDATA%\logs\*-YYYYMMDD-HHMMSS-<pid>-<hex>.elog` (RSA-3072 + AES-GCM); **`C:\Spotify\DefaultCfg.bin`, `StashList.bin`, `SamSitelist.bin`** (cheat configs); in-memory sqlite `/emu-player-<pid>-…` |
| Embedded key material | RSA-3072 `RSA1` BCRYPT blob (hooks RVA 0x57140, blob SHA-256 `9d145c7e18e436b4b2483339f4bc7e24e786e06856d965e4c1093412d2a56c11`, modulus prefix `96f3ffb4d19689f3…`); 32-byte hex `70748db6439e4e4c36ef91d43d3745734a5142b7b93bebe10ba367a1eac7353a` |
| Strings (hooks) | `runtime_ready hooks=10 routing=raknet_exports`, `donor_relay=true`, `mode2_session_key`, `external KsecDD H host is required; HV fallback is disabled`, `Initializing donor by 0x13`, `eos_facade`, `steam_mask`, `/emu-player-%lu-%08lX%08lX-` |
| Strings (cheat) | `Rust Internal Pro`, `Sussy Object`, `SussyMesh`, `Assets/AssetBundleData/guish.shader`, `C:\Spotify` |
| Code signatures (YARA-able) | Hooks string decode: `imul ecx,eax,0xd; … shr r,3; add …; xor` (shared with starter/packer). Cheat decrypt: `mov eax,0x4ec4ec4f; mul; shr edx,4; imul edx,eax,0x34; …; add al,0x37; xor al,[r10+r9]` and the `0x24924925 … imul ecx,eax,0x38 … add al,0x37` variant. Cheat FNV-1a: `xor r8d,ecx; imul eax,r8d,0x1000193` with ASCII-lowercase. Hooks AES-256 key expansion with rcon loop to 0x3c words (0x1d3c0). |
| Behaviour | `RustClient.exe` loading `EOSSDK` but getting a stub; MinHook trampolines on RakNet.dll exports; rundll32 opening KsecDD; VMP NtProtectVirtualMemory hook in ntdll |

---

## D. Open questions

1. **H key semantics** [U]: whether H is EAC's network-protection session key or a Rust key derived from it. Also the meaning of `inbound_domain=2/outbound_domain=1`, the 22-byte trailer layout, and the role of the fixed hex key / `bootstrap` slot. Needs the EOS anti-cheat network-protection format.
2. **KsecDD IOCTL 0x398000** and how the starter's `KsecValidAddresses` change makes these IOCTLs a read/PTE primitive. Needs the ksecdd.sys build used.
3. **The two UnityPlayer signatures' targets**, and whether more hooks or features sit in the cheat's 883 VMP-virtualized functions (`.B-)`). The aimbot math and some exploits may live there.
4. **The packer's 0xC8 context-block fields** other than the 64-char token at +0x48/+0x88.
5. **Steam broadcast handling:** which Steam interface vtable slot is hooked (`steam_launch … slot=0x%02X`), and whether the player really runs as app 480.
6. Exact Rust build: obfuscated `%sha1` names → real types (BasePlayer/PlayerWalkMovement methods). This needs the matching GameAssembly metadata.

---

## Artifacts (`~/malware-lab/analysis/run4/static/`)

- `hooks_decstr.txt` (374 sites, 356 clean), `hooks_strings.txt`, `hooks_xref.txt` (per-function strings/calls), `hooks_text.asm`, `hooks_annot.asm` (decoded strings inline).
- `cheat_decstr.txt` (3,881 decoded), `cheat_strings.txt`, `cheat_hooks.txt`, `cheat_text.asm` (0x2b2000–0x3cf000), `cheat_annot.asm`.
- `scripts/`: `pe.py`, `mdmp.py` (stdlib minidump reader), `decstr2.py` (hooks/starter scheme), `cheat_decstr.py` (cheat scheme), `xref.py`, `annot.py`. All are data decoders/parsers; none execute sample code.
