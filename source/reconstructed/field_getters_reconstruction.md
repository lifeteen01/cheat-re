# Typed field getter reconstruction

[I] `field_getters_analysis.cpp` supplies typed, copied-memory operations for every entry in `all_simple_field_candidates.json`; names and descriptors are analysis interfaces, not verified game ABI declarations. [C] The full instruction ranges, raw bytes, both sides of each guard and every local branch destination were independently re-disassembled from `dump_analysis/unpacked/cheat.unpacked.dll` (virtual-layout file offset = RVA). See [byte audit](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/field_wrappers/byte_verification.txt).

[C] Every body first calls `0x2caf08`: `48 85 c9`, `48 8d 81 00 00 f0 ff`, `48 b9 fe ff ef ff ff 07 00 00`, `48 3b c1`, `0f 96 c0`. Its accepted numeric receiver interval is `0x100000..0x7fffffffffe`, inclusive. It does not probe memory. [C] `0x2dee3c` uses `4c 8d 04 11` for receiver+offset, and its null mask is irrelevant after the successful guard. [I] Reads use bounds-checked `Snapshot`; a valid numeric receiver with absent copied field bytes reports `missing_bytes`, distinct from an invalid receiver native return.

| Native RVA range (exclusive end) | Field offset | C++ result | Invalid receiver | Load/result bytes |
|---|---:|---|---|---|
| [C] `0x3680d4..0x3680fd` | `0x320` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x3693b0..0x3693d4` | `0x2c0` | `uint8_t` | `0` | `8a 00` |
| [C] `0x3693d4..0x3693ff` | `0x2d0` | `float` | `+0.0` | `f3 0f 10 00` |
| [C] `0x369400..0x369429` | `0x350` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x3696e4..0x36970c` | `0x708` | `uint32_t` | `0` | `8b 00` |
| [C] `0x36970c..0x369737` | `0x2cc` | `float` | `+0.0` | `f3 0f 10 00` |
| [C] `0x369738..0x369761` | `0x778` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x369764..0x36978d` | `0x300` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x36a2c8..0x36a2f1` | `0x4e8` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x36a2f4..0x36a31d` | `0x6d0` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x371294..0x3712bc` | `0x30` | `uint32_t` | `0` | `8b 00` |
| [C] `0x3715d8..0x371601` | `0x10` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x371604..0x37162d` | `0x88` | `uint32_t` | `0xffffffff` | `8b 00` |
| [C] `0x372184..0x3721b4` | `0xd8` | `bool` | `false` | `f3 0f 10 00; 0f 2f 05 a0 b0 f1 ff; 0f 97 c0` |
| [C] `0x372220..0x372249` | `0x2f8` | `uint32_t` | `0xffffffff` | `8b 00` |
| [C] `0x37236c..0x372395` | `0x58` | `uint32_t` | `0xffffffff` | `8b 00` |
| [C] `0x37261c..0x372644` | `0x20` | `uint32_t` | `0` | `8b 00` |
| [C] `0x372bcc..0x372bf4` | `0x24` | `uint32_t` | `0` | `8b 00` |
| [C] `0x373dc8..0x373df1` | `0x28` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x373df4..0x373e1d` | `0x20` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x373e20..0x373e49` | `0x30` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x373e4c..0x373e75` | `0x50` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x374210..0x374239` | `0x128` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x37423c..0x374267` | `0x144` | `float` | `+0.0` | `f3 0f 10 00` |
| [C] `0x3742ac..0x3742d4` | `0x138` | `uint32_t` | `0` | `8b 00` |
| [C] `0x3742d4..0x3742fd` | `0x120` | `Address (uint64_t)` | `0` | `48 8b 00` |
| [C] `0x374300..0x37432b` | `0x188` | `float` | `+0.0` | `f3 0f 10 00` |
| [C] `0x374348..0x374370` | `0x40` | `uint32_t` | `0` | `8b 00` |

[C] `0x371604`, `0x372220` and `0x37236c` use `83 c8 ff` on the invalid path. The raw DWORD return remains `uint32_t`; `InteractionCalls::integer` receives an equal-bit-pattern `int32_t` projection via `bit_cast`. [C] ProjectileID `0x3742ac` loads exactly four bytes at `+0x138`; no float conversion or adjacent `+0x13c` bits enter the result.

[C] `0x372184..0x3721b4` loads an intermediate float at `+0xd8`, compares with zero from literal `0x28d24c` (`00 00 00 00`) using COMISS, and returns SETA in AL. It is a boolean `value > 0.0f`; equality, negative values and unordered NaNs yield false. [U] Floating-point exception state for signaling NaNs is not modeled. [C] Scalar getters simply copy binary32 bits, including negative zero and quiet NaN payloads.

[I] `bind_field_getters_aim`, `bind_field_getters_projectile`, `bind_field_getters_interaction` and `bind_field_getters_movement` overlay these concrete typed getters onto supplied call interfaces. Existing model-state/input/movement/dead-byte and item ID/category implementations are reused. [I] Other callbacks and all extra arguments pass through unchanged; missing reached callbacks throw `SnapshotBindingFailure` with the original getter RVA. A mismatched typed getter is an explicit `missing_boundary` result. The `0x3693b0` byte is additionally projected to a predicate as nonzero, matching existing worker use.

[C] The fixture iterates all 28 descriptors, checks valid/invalid/missing bytes, raw DWORD widths and high ID bits, guard boundaries, scalar bit patterns, `0x372184` zero/NaN/infinity branches, all four binding shapes and failure propagation. Strict GCC 15.2 C++20 checks: [verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/field_wrappers/verification.txt). ASan/UBSan evidence: [sanitizer verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/field_wrappers/sanitizer_verification.txt).

[C] Remaining local ranges within these 28 catalog functions: none. [U] Other native getter ranges outside the catalog are not claimed translated by this module. [U] Foreign game/API routines reached through unknown RVAs remain supplied effects. [I] The separate parent modules retain responsibility for aggregate build/header/check registration and ledger updates; this implementation modified no existing file.
