# Run 5 / A — hooks "mode2" crypto, key slots, steam_mask, AUTH_KEY flow, version coupling

**Sample:** `run4/unpacked/simple_raknet_hooks.unpacked.dll` (virtual layout, file offset = RVA, runtime base 0x7ffa2e5a0000). **Cross-referenced:** loader (run2 dump, base 0x7ff6187a0000), starter (run3 `1ecadc70000.dll`), packer (run3 `extracted/packer.mapped.bin`), cheat (run4 `cheat.unpacked.dll`).
**Method:** static only (objdump, pure-Python byte reads, RIP-relative xref scan). Nothing executed or emulated; no IOC contacted. `.ipnote` text ignored as inert sample data.
**Tags:** [C] confirmed · [I] inferred · [U] uncertain. Addresses are hooks RVAs unless another module is named. BCrypt and other imports are called through VMProtect thunks, so API names are inferred from arguments and adjacent property strings [I].
**Manager verification:** raw key bytes at 0x59638 = `70748db6…7353a` and its UTF-16 hex at 0x59660 ✔; `STEAMAPPS_INTERFACE_VERSION008` at 0x5d530 ✔; `add rcx,0xd0` at 0x22c0e ✔; starter 0x16eda copies global 0x164ba0 (0x80 bytes) into the EMUPACK1 build ✔.

## 0. Key findings
1. **22-byte trailer** [C]: `id(1, clear) ‖ AES-256-GCM ciphertext ‖ seq_le32(4) ‖ checked(1) ‖ phase(1) ‖ tag(16)`. Nonce = `seq_le32 ‖ 00000000 ‖ domain_le32`. **No AAD.** The clear ID byte and the trailer bytes aren't authenticated; seq and domain are bound in only through the nonce.
2. **`70748db6…7353a` = the slot0 "bootstrap/fixed" AES-256-GCM key** [C]. Raw bytes at 0x59638, imported in fn 0xfb60 with BCryptGenerateSymmetricKey (AES, Microsoft Primitive Provider, ChainingModeGCM, 16-byte tag). The hex string at 0x59660 is only used by the logger, which prints it in clear; the session key is logged as `installed_redacted`.
3. **"double_H" = a 16-byte H used as the AES-256 key `H‖H`** [C]. The player duplicates H (0x62c4/0x62cb). The donor scanner accepts only AES-256 contexts whose 32-byte key has identical halves (0x1d7f3–0x1d80f). Matched context `{u64 nr=14; u64 rk=&self+0x10; u8 rk[240]}`, which looks like an mbedTLS-2.x / PolarSSL `aes_context` [I].
4. **Domain = `1 + (phase XOR outbound)`** [C]. In the session phase: client→server = 1, server→client = 2 (matches the log `inbound_domain=2 outbound_domain=1`). In bootstrap the labels are swapped.
5. **steam_launch hook = ISteamApps (`STEAMAPPS_INTERFACE_VERSION008`), vtable byte offset 0xD0 = index 26 = `GetLaunchCommandLine`** (offset [C], index→name from the public SDK header [I]). It blanks the command line when it contains `127.0.0.1` / `localhost`. The log's `slot=0xD0` is a byte offset.
6. **AUTH_KEY is passed down the chain to cheat context block +0x48** [C at every hop]: loader → StarterRun params+0x38 → starter global 0x164ba0 → `EMUPACK1`/`.pkcfg`+0xA8 → cheat block+0x48 → cheat global 0x40f380. Block +0x88, `HooksSetInjectToken` and the hooks `.injtok` all carry the **inject token**, not AUTH_KEY. The cheat has no *native* consumer of AUTH_KEY; the hooks never see it.

## 1. "mode2" encryption

### 1.0 Components and globals
| Item | RVA | Notes | Tag |
|---|---|---|---|
| slot0 init | fn 0xfb60 (0xfb9d–0xffc1) | OpenAlgorithmProvider(L"AES" @0x57030, Microsoft Primitive Provider) 0xfbdd; SetProperty ChainingModeGCM 0xfc25; GetProperty AuthTagLength (checks 16) 0xfc77–0xfcc3; GenerateSymmetricKey(key@0x59638, 0x20) 0xfd1c; logs `mode2_crypto status=ready … slot=slot0 key_bytes=32 tag_bytes=16 aad_bytes=0 provider=primitive` (0xff4a) | C (API names I) |
| hAlg / slot0 hKey / init status | 0xa6550 / 0xa64a8 / 0x6c0c4 | written 0xfe67 / 0xfe80 / 0xfe92 | C |
| slot1 hKey | 0xa6548 | set 0x6869; cleared 0x12457 (StartClient), 0x1307b (Close) | C |
| current H (16 B) | 0xa6560 | set 0x6870; zeroed 0x12463 / 0x13087 | C |
| session-installed flag | 0xa6570 | set 0x6877; cleared 0x12465 / 0x13089 | C |
| outbound sequence counter | 0xa649c | `lock xadd` 0x105ef; reset 0x12b8c / 0x1302b | C |
| selected mode | 0xa64a0 | written 0x13d49 | C |
| crypto lock | 0xa6578 | held around every BCrypt call | C |
| unprotect / protect | fn 0xffd0 / fn 0x10400 | called 0x13ef1 / 0x14c83 | C |
| diagnostic parser/logger | fn 0x11070 | logs only, no decryption | C |
| software AES-256 key expansion | fn 0x1d3c0 | used only by the donor scanner (0x1d982) | C |

### 1.a Trailer (L = packet length, p = packet)
| Offset | Size | Field | Evidence | Tag |
|---|---|---|---|---|
| 0 | 1 | `clear_id`: Rust message ID, in clear | 0x11cae; encrypt copies src[0] 0x104cb–0x104d6 | C |
| 1..L−23 | L−23 | GCM ciphertext (no padding) | BCryptDecrypt(p+1, L−0x17) 0x10201–0x10236 | C |
| L−22 | 4 | `sequence_le` | 0x1110d; written 0x106cf | C |
| L−18 | 1 | `checked`: must be ≤1 (else `invalid_checked`); encryptor writes 1 | 0x10068, 0x106d3, 0x11ca4 | C (meaning U) |
| L−17 | 1 | `phase_raw`: bit 0; 0 = bootstrap/slot0/fixed, 1 = session/slot1/session_H_double_H | 0x10088–0x10092, 0x118f5–0x11921, 0x106d9 | C |
| L−16 | 16 | GCM tag | 0x10123, cbTag=0x10 0x101a3; written 0x106e6 | C |

- Length checks [C]: minimum 0x17 bytes (else `short_packet`); bit count a multiple of 8 (else `not_byte_aligned`). On success `output_bytes = L−22`, `output_bits = in_bits − 176`. The plaintext is copied back in place at p+1 (0x102cf–0x102d6), and the game reads it through the `NETRCV_UnreadBits` override.
- There's no length or flags field [C], and no inbound replay or sequence-window check in 0xffd0 [C absence].

### 1.b Nonce / AAD
From the `BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO` built at 0x100fc–0x101a3 / 0x104e5–0x10604 (`cbSize=0x58, ver=1, cbNonce=0xC, pbAuthData=NULL, cbTag=0x10`) [C]:
```
nonce[0..3]  = seq (u32 LE, same 4 bytes as the trailer)
nonce[4..7]  = 00 00 00 00
nonce[8..11] = domain (u32 LE, 1 or 2)
AAD          = none
```
The logger rebuilds the same layout (0x11b52–0x11c99) [C]. Outbound seq = ++counter, so it starts at 1 after each `NET_StartClient`/`NET_Close` [C]. No epoch in the nonce; epochs exist only in the H delivery channel [C].

### 1.c `inbound_domain=2 / outbound_domain=1`
Outbound (0x104af–0x104c7): `domain = session_installed ? 1 : 2`. Inbound (0x10119): `domain = (phase&1) + 1` [C].

| | bootstrap (fixed key) | session (H‖H) |
|---|---|---|
| outbound (client→server) | 2 | **1** |
| inbound (server→client) | 1 | **2** |

`domain = 1 + (phase XOR outbound)` [C]. In the session phase it's a per-direction label, matching the install log line (0x692a). The purpose is nonce separation: one shared key plus per-direction sequences that both restart at 1 would otherwise reuse GCM nonces [I]. Why the bootstrap labels are swapped is [U].

### 1.d Key-slot state machine
- **NET_StartClient detour (0x12160)** [C]:
  - resets mode, slot1, H, the installed flag and the once-flags, and destroys the old key (0x1242c–0x12486);
  - increments `HState.epoch_request` (0x1258b, `packet_h epoch status=reset`);
  - resets the outbound counter (0x12b8c);
  - logs `phase1_connection_epoch status=started key_source=a2_packets`.
- **NET_Close detour (0x12f70)** does the same resets (0x13018–0x13096) [C].
- **Approved 0x8F** [C]:
  - protobuf-style varint scan for **field 12** (0x13bd2–0x13d49), value stored as the mode;
  - the single varint byte is patched to 0 in place (0x13cbc), so the game sees mode 0 (`game_sees=0`); `wrap = (mode==2)`.
- **First 0xA2 on a connection** (once-flag 0xa6520) logs `phase1_handshake_epoch status=marked key_ready=<installed> key_source=a2_packets` (0x1353a). All 0xA2 packets are relayed to the donor and consumed [C].
- **Install (worker 0x5fe5–0x6877)** [C], when the channel is OK, HState version is 1, the seqlock is even, `epoch_request == epoch_applied`, and the generation is new:
  1. `h_client_candidate` / `h_client_accepted`;
  2. if H changed: key = H‖H (0x62c4/0x62cb);
  3. `BCryptGenerateSymmetricKey(…, key, 32)` (0x6308);
  4. slot1 = new handle, H saved, installed = 1;
  5. logs `mode2_session_key status=installed … source=external_H_double_H …`; telemetry `phase1_h … slot1=installed` (or `install_failed`).
- **Per-packet key** [C]:
  - outbound (0x105d7–0x105e2): slot1 if installed, else slot0;
  - inbound (0x101e6–0x101f0): chosen by the *sender's* phase bit; phase 1 with no slot1 gives `session_key_unavailable`;
  - a once-only `session packet before H delivered` warning is sent to telemetry (0x11935–0x11adb, flag 0xa6540).
- **Gating** [C]: crypto applies only when mode == 2 **and** the message ID is in the protected set (mask `0x1C5CFFF`; 0x133e8 / 0x14c6a).
  - Protected IDs: 0x91–0x9C, 0x9F–0xA1, 0xA3, 0xA7–0xA9, i.e. Rust `Message.Type` 5–16, 19–21, 23, 27–29.
  - Left in clear: handshake (1–4), user info (17/18), EAC (22), and 24–26.
- **Failures** [C]:
  - inbound decrypt failure **drops** the packet (`mode2_unprotect … action=drop`);
  - outbound encrypt failure **sends plaintext** (`passthrough_on_error`, 0x15033–0x150a9), which is a **server-side detection opportunity** [I].
- **Logging** [C]:
  - outbound `mode2_protect … key_slot=%ls domain=%u sequence_le=…` (slot0/slot1, 0x14cf3 / 0x14d63);
  - the inbound logger 0x11070 runs for the first 16 protected packets, then every 256th, and on every failure;
  - it prints the fixed key hex for bootstrap packets and `installed_redacted` / `unavailable` for session packets. **H is never logged.**
- **`Local\HookProbe_HState_v2` layout** [C fields, I names]: +0x04 version (=1), +0x10 host status, +0x18 seqlock, +0x20 generation, +0x30 epoch_request (player 0x1258b), +0x38 epoch_applied (host 0x1a97d), +0x40 H (16 B; zeroed on epoch reset 0x1a958).
- **H host** [C code / I intent]:
  - a new epoch bumps the scan generation (0x6c0d8), forgets known contexts and zeroes H (`epoch_reset`);
  - it publishes only an H found in the current generation that differs from the last one (`h_host_publish`, 0x1aa6d–0x1aae6);
  - contexts from before the new connection are logged as `stale` and ignored.

### 1.e The 32-byte value `70748db6439e4e4c36ef91d43d3745734a5142b7b93bebe10ba367a1eac7353a`
- Raw bytes at 0x59638 = the slot0 AES-256-GCM key, imported 0xfcc6–0xfd1c, handle stored at 0xa64a8 [C].
- The UTF-16 hex at 0x59660 is only the logger's `key_hex` when phase is 0 (0x11b43), labelled `bootstrap / slot0 / fixed` [C].
- So it's a **fixed bootstrap encryption key**, not a test vector, KDF/HMAC constant or pinned hash; those two references are its only consumers [C].
- It isn't SHA-256 / SHA3-256 / BLAKE2s / SHA-512[:32] of obvious strings [C negative, limited test].
- **Origin** [I moderate / U]: it's used to encrypt to, and decrypt from, the *genuine* server before H exists. That only works if the server knows it, so it's most likely a pre-handshake protocol constant extracted by the authors. The alternative is an unused or untested path.

### 1.f What H is
**Proven:**
1. H is a 16-byte secret; the key is H‖H [C].
2. H is lifted from the donor RustClient.exe by scanning for live AES-256 key schedules (scanner 0x1d4e0) [C].
3. The code labels it `key_source=a2_packets`. Key readiness is tied to the first 0xA2 (Message.Type.EAC) packet, and 0xA2 traffic is relayed to the donor [C].
4. The player's EOS SDK is replaced by a facade (0xf31d–0xf614) [C]:
   - `EOS_Platform_Create` → fake handle `0xDEADBEEFCAFEBEEF` (0xf010);
   - `EOS_Platform_GetAntiCheatClientInterface` → NULL (0xf0f0);
   - `EOS_Initialize` / `EOS_Logging_*` → 0 (0xef40);
   - `EOS_GetVersion` → `"1.19.0.3-49960398"` (0xf1d0).

   So the player has no anti-cheat client and is told the encryption mode is 0.
5. Only mode 2 is handled [C].

**Inference [I, high]:** mode 2 is Rust's **EAC-backed encryption level**, normally provided by the EOS anti-cheat client's message protection. H is the **per-connection session secret negotiated by the EAC/EOS client and server over 0xA2**, read out of the donor's anti-cheat memory. It isn't a key derived in Rust's C# code.

**Not provable without the EOS SDK, EAC binaries or a capture:**
- that the format, the H‖H expansion and the fixed key are exactly EOS ProtectMessage's [U];
- which donor module holds the AES context [U];
- that Approved field 12 is named `encryption` [I];
- whether 1.19.0.3-49960398 is the version Rust actually ships [U].

```
protect:   out[0]=id; phase=installed?1:0; domain=phase?1:2; seq=++ctr
           nonce=le32(seq)||0^4||le32(domain); ct,tag=GCM(key=phase?H||H:FIXED, nonce, aad=none, body)
           out = id||ct||le32(seq)||01||phase||tag
unprotect: phase=p[L-17]&1; domain=phase+1; nonce=p[L-22..L-18)||0^4||le32(domain)
           body=GCM_open(phase?H||H:FIXED, nonce, aad=none, p[1..L-22), tag=p[L-16..L))
```

## 2. steam_mask

### 2.1 The vtable hook (`steam_launch status=swallowed`)
- **Installer fn 0x229e0** [C]:
  - resolves `SteamAPI_GetHSteamUser`, `SteamAPI_GetHSteamPipe`, `SteamInternal_FindOrCreateUserInterface`;
  - calls `FindOrCreateUserInterface(hUser, "STEAMAPPS_INTERFACE_VERSION008")` at 0x22a7e (`steam_apps_lookup=direct_user_v1`);
  - takes `slot = vtbl + 0xD0` (0x22c0e) and saves the original to 0xa69c8;
  - VirtualProtect, write detour 0x227f0, restore protection;
  - logs `installed how=vtable slot=0x%02X` with edx = 0xD0 (0x22e11).
- **ISteamApps** [C]. Offset 0xD0 = index 26 = `int GetLaunchCommandLine(char*, int)` per the public isteamapps v008 header [I].
- **Detour 0x227f0** [C]: calls the original. If the result contains `"127.0.0.1"` or `"localhost"` (0x22835 / 0x22863), it logs `swallowed text=%hs` and sets `buf[0]=0` (0x229cc).
- What it swallows: the relay's `steam://run/252490/connect/+connect%20127.0.0.1:%u%20+d%u` donor-reconnect broadcast (0x16e03). The `NET_StartClient` loopback check is a second guard [C/I].

### 2.2 Other vtable patches (init_real, fn 0x25990 / 0x26830) [C offsets, I names]
| Interface | Offset (index) | Replacement | Effect |
|---|---|---|---|
| ISteamApps008 | 0x00 (0) BIsSubscribed | 0x24530 (`mov al,1; ret`) | always subscribed |
| ISteamApps008 | 0x30 (6) BIsSubscribedApp | 0x24530 | always subscribed |
| ISteamUtils (SteamUtils010/009/008, table 0x6c0e0) | 0x40 (8) GetAppID | 0x241b0 | AppID split |

### 2.3 steam_api64.dll exports hooked with MinHook (table fn 0x26030, installer 0x24ea0) [C]
Spoof flag at 0xa6a48 (`init_spoof … fallback_fake_user=1`).
- **RestartAppIfNecessary** (0x24540): never restarts (`restart_swallowed app=%u decoy=%u`).
- **Init / InitSafe / InitEx / SteamInternal_SteamAPI_Init** (0x26270 / 0x262d0 / 0x26330 / 0x263a0):
  - log `init_ask` / `init_forced`;
  - rewrite `SteamAppId` / `SteamGameId` / `SteamOverlayGameId` (decoy **480**, `steam_appid_removed`);
  - try `init_real`, else fall back to spoofing.
- **ISteamUtils_GetAppID** (0x24760 → 0x241b0): walks a 16-frame caller backtrace. If the caller is UnityPlayer, GameAssembly or the exe (and not GameOverlayRenderer(64)), it returns **252490**; otherwise **480** (`getappid_split`).
- **ISteamApps_BIsSubscribed / BIsSubscribedApp** (0x24530): always true.
- **IsSteamRunning** (0x24770): true when spoofing; otherwise the real call, with a once-only log `IsSteamRunning=0 steam_must_stay_open`.
- **GetHSteamUser** (0x24910) → 1 and **GetHSteamPipe** (0x24940) → 0 when spoofing.
- **SteamInternal_FindOrCreateUserInterface** (0x24960): `fake_interface ver=%hs` when spoofing.
- **ISteamUser_GetSteamID** (0x24a90): **fake SteamID**. Reads `HKCU\Software\Valve\Steam\SteamPath`, then `%s\config\loginusers.vdf`, and takes the first `"765…` 17-digit ID. Fallback **0x0110000112F206E9 = 76561198278117097** (0x24d4f).
- **ISteamUser_BLoggedOn** (0x24e50): true. **ISteamFriends_GetPersonaName** (0x24e70): `"Player"`.
- Arming (0x265c0): installs immediately if steam_api64 is loaded, else via `LdrRegisterDllNotification`. Exports at shared or unverified addresses are skipped.

## 3. AUTH_KEY (run3 conn024) — passed down the chain to cheat block +0x48
1. **Loader:**
   - fn 0x71f40 sends `GET_AUTH_KEY_<session>|Rust Internal` and parses `AUTH_KEY:`;
   - caller 0x947bc ("Getting auth key..." at 0xeff70) stores the key's c_str at **StarterRun params+0x38** (0x9487d);
   - it then calls `StarterRun(&params)` through r15 at **0x94b2d** (r15 = GetProcAddress "StarterRun", 0x94166–0x94175);
   - a second, similar caller at 0x972f8 [I].
2. **Starter:**
   - StarterRun 0x1fa90 copies params+0x38 into global **0x164ba0** (0x80 bytes, 0x2005a–0x20080);
   - the packer-config builder (0x16e5e–0x16f23) creates the **EMUPACK1** block (magic 0x314B434150554D45): +0x10 inject token (64 hex, 0x50 B), +0x60 params+0x20 string (0x40 B), +0xA0 / +0xA4 dwords, **+0xA8 AUTH_KEY** (0x16eda–0x16eed);
   - it's tagged `.pkcfg` (0x16ef2), sizes 0x150 / 0x128; the packer's `.pkcfg` VirtualSize is 0x150.
3. **Packer:**
   - the cheat context block = **`.pkcfg`+0x60..+0x128 (0xC8 bytes)**, copied at 0x83b8–0x8467, so **block+0x48 = `.pkcfg`+0xA8 = AUTH_KEY**;
   - block+0x88 is then overwritten with the **inject token** from 0x88900 (0x846e–0x84af);
   - `hooks!HooksSetInjectToken(.pkcfg+0x10)` passes the inject token (0x648d–0x64bd).
4. **Cheat:**
   - DllMain 0x3cad10 copies block+0x48 to **0x40f380** (0x3caddb–0x3cae2a). This corrects run 4's "likely inject token" label.
   - A whole-image RIP-relative scan finds only DllMain writers. A reader inside VMP-virtualized code can't be excluded [U].
5. **Hooks:** no AUTH references; `.injtok` holds the inject token [C].

Purpose [U]: perhaps a licence or anti-tamper check inside VMP-protected cheat code. It isn't the SYRE or packer key (run 3).

## 4. Version coupling (hooks side)
| Dependency | Hard-coded value | Location | Breaks when | Tag |
|---|---|---|---|---|
| Module names/paths | `RustClient.exe`; `UnityPlayer.dll` / `baselib.dll` / `GameAssembly.dll`; `RustClient_Data\Plugins\x86_64\RakNet.dll`, `sqlite3.dll`; `EOSSDK-Win64-Shipping.dll`; `steam_api64.dll` | 0x14e3, 0x2dca–0x2eea, 0x1600a, 0x57a20, 0xec0a | rename or relocation | C |
| RakNet export names | 7 hooked + 5 used; log `exports=11 resolved_by_name=true build_independent=true` | 0x57bc8–0x57c38, 0x58a68–0x58aa8 | rename only | C |
| RakNet ABI | `Receive(ctx)→bool`, `RawData(ctx)→ptr`, `UnreadBits(ctx)→bits`, `GUID(ctx)→u64`, `WriteBytes(ctx,p,n)`, `Send(ctx,guid,2,3,0)` | 0x13357–0x13411, 0x137f3–0x13847 | signature change | C (enum names I) |
| Message IDs | Type + 140 (0x8F, 0x9D/0x9E, 0xA2, 0x13) | 0x13447, 0x13a76, 0x14978 | enum renumbering | C |
| Protected set | 0x1C5CFFF | 0x133e8, 0x14c6a | a new encrypted type gets sent in plaintext, or ciphertext reaches the game | C |
| Approved schema | field 12 varint, value 2, one-byte patch | 0x13bd2–0x13d49 | field or encoding change | C (name I) |
| Mode2 format | trailer, nonce, domain rule, no AAD, fixed key, H‖H | §1 | protocol change: drops and server rejects | C |
| Donor AES context | `{14; self+0x10; rk[240]}`, equal halves, 16-byte stride | 0x1d7c0–0x1da5f | library change: H never found | C (lib I) |
| EOS facade | `1.19.0.3-49960398`; Initialize / Logging_* / Platform_Create / GetAntiCheatClientInterface / GetVersion stubbed; everything else passes through | 0x57c78–0x57d18, 0xf2a0–0xf7a5 | a newer SDK calling other Platform_* functions with fake handle 0xDEADBEEFCAFEBEEF | C |
| Steam | `STEAMAPPS_INTERFACE_VERSION008` (0x00/0x30/0xD0); SteamUtils010/009/008 (+0x40); flat exports §2.3 | 0x5d530, 0x5d948–0x5dab8 | Steamworks bump or vtable reorder | C/I/U |
| AppIDs / URI | 252490 / 480; `steam://run/252490/connect/…` | 0x24323, 0x239fa, 0x16e03 | low risk | C |

**Overall:** there are no signature scans, so ordinary Rust rebuilds survive. The hooks are tightly bound to Rust's message enum and Approved schema, the anti-cheat protection format and its in-memory key layout, the EOS 1.19 facade surface, and the ISteamApps008 / ISteamUtils vtables. An update to any of these breaks the chain at the network layer [I].

## Evidence table
| # | Claim | RVA | Tag |
|---|---|---|---|
| 1 | Minimum length 23, byte aligned | 0x10054, 0x1005d | C |
| 2 | seq LE at L−22 | 0x1110d, 0x106cf | C |
| 3 | checked at L−18 ≤1; encrypt writes 1 | 0x10068, 0x106d3 | C |
| 4 | phase at L−17, bit 0 selects key | 0x10088, 0x106d9 | C |
| 5 | 16-byte tag at L−16 | 0x10123, 0x106e6 | C |
| 6 | Ciphertext p[1..L−22); ID in clear | 0x10201–0x10233, 0x104cb | C |
| 7 | Nonce seq‖0⁴‖domain; 12-byte nonce, 16-byte tag, no AAD | 0x100fc–0x101a3, 0x104e5–0x10604 | C |
| 8 | Inbound domain = phase+1; outbound = installed?1:2 | 0x10119, 0x104af–0x104c7 | C |
| 9 | seq = ++0xa649c; reset on start/close | 0x105ef, 0x12b8c, 0x1302b | C |
| 10 | Fixed key 0x59638 → slot0 | 0xfb9d–0xfd1c, 0xfe80 | C |
| 11 | Fixed key hex logged only for bootstrap | 0x11b43 | C |
| 12 | Session key = H‖H | 0x6132, 0x62c4–0x6308, 0x6869–0x6877 | C |
| 13 | Scanner: nr=14, rk=self+0x10, equal halves, expansion match | 0x1d7cb–0x1d80f, 0x1d982, 0x1da5f | C |
| 14 | HState layout | 0x6040–0x6193, 0x1a949–0x1a97d, 0x1aad6–0x1aaee, 0x1258b | C |
| 15 | Approved field 12 parsed and zeroed | 0x13bd2–0x13d49 | C |
| 16 | Protected-ID mask | 0x133e8, 0x14c6a | C |
| 17 | Decrypt failure drops; encrypt failure sends plaintext | 0x14297, 0x15033–0x150a9 | C |
| 18 | H never logged | 0x11b2d–0x11b3d | C |
| 19 | EOS facade stubs | 0xf0ce, 0xf1b0, 0xf28e, 0xf31d–0xf614 | C |
| 20 | H = EAC/EOS session secret | strings and flow | I |
| 21 | Bootstrap key is a protocol constant | — | I/U |
| 22 | ISteamApps008 +0xD0 = GetLaunchCommandLine | 0x22a7e, 0x22c0e, 0x22d1c, 0x22e11 | C/I |
| 23 | Loopback command lines blanked | 0x227f0–0x229ce | C |
| 24 | BIsSubscribed(App) vtable → true | 0x25c55–0x25d44 | C/I |
| 25 | GetAppID split 252490/480 | 0x25a9b–0x25b08, 0x241b0–0x24328 | C/I |
| 26 | Fake SteamID / fallback 76561198278117097 | 0x24a90–0x24dd3 | C |
| 27 | Loader AUTH_KEY → params+0x38 → StarterRun | loader 0x947bc–0x9487d, 0x94b2d | C |
| 28 | Starter → 0x164ba0 → EMUPACK1+0xA8 | starter 0x2005a, 0x16eda, 0x16ef2 | C |
| 29 | Packer block+0x48 = AUTH_KEY; +0x88 = token | packer 0x83b8–0x84af | C |
| 30 | HooksSetInjectToken gets the inject token | packer 0x648d–0x64bd | C |
| 31 | Cheat 0x40f380 = AUTH_KEY; no native reader | cheat 0x3caddb–0x3cae2a | C (VMP: U) |

## Open questions
1. Is the bootstrap phase used by real servers, and why are its domains swapped? A capture of the first protected packets of a real mode-2 session would settle whether `70748db6…` is a protocol constant.
2. What does the `checked` byte mean? It's always 1 on output.
3. Which donor module holds the AES context, and is H‖H what EOS ProtectMessage does? Needs the EOS 1.19 / EasyAntiCheat_EOS binaries.
4. Is Approved field 12 really `encryption`? Needs Rust's protobuf metadata (plus confirmation that it's always a single-byte varint).
5. Does the server enforce replay protection? The hooks do none on inbound.
6. Is AUTH_KEY used inside the cheat's VMP code? Also the meaning of cheat block +0x00 (a 0x40-byte loader string, global 0x7ff6188a6d60), +0x40, and +0x44 (a minutes×60 value).
7. Is GetAppID at +0x40 in SteamUtils009 too?
8. What does the spoof-mode fake interface (fn 0x24960) emulate?

## Evidence files (`run5/A_crypto/evidence/`)
hooks_0f900-1080d_slot0init_unprotect_protect.asm, hooks_11070_mode2_packet_logger.asm, hooks_13300_NET_Receive.asm, hooks_146c0_NETSND_WriteBytes.asm, hooks_1a892_h_host_publish.asm, hooks_1d4e0_aes_scan.asm, hooks_227f0-22e4d_steam_launch_vtable.asm, hooks_241b0_getappid_split.asm, hooks_5ea5-68e3_H_install_slot1.asm, hooks_f1d0-f7d0_eos_facade.asm
