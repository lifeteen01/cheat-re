# Portable external offset profile core

This is analyst-authored C++20 configuration code, not recovered game ABI code. It has no JSON dependency and performs no network access, pointer dereference, target execution, module measurement, or game calls. The parent owns menu, DLL/build integration, the actual reference catalog, and Windows host testing. Matching game artifacts/current-build identities remain **Needed / To do**.

## Version 1 contract

All six root fields are required; no unknown or duplicate fields are accepted at any object level, including escaped spellings of a key. Maps are keyed by stable context-specific names. A minimal reference example (synthetic values only) is:

```json
{
  "schema_version": 1,
  "profile_id": "offline-example",
  "game_build": "unverified",
  "provenance": "Synthetic reference example, not game evidence",
  "modules": {"example.dll": {"sha256": "", "image_size": 0}},
  "offsets": {
    "example.function": {"kind": "module_rva", "module": "example.dll", "value": "0x20"},
    "example.object.member": {"kind": "field_offset", "module": "", "value": "0x10"}
  }
}
```

`schema_version` must be the JSON unsigned integer 1. `image_size` is an unsigned JSON integer through UINT64_MAX; fractional/exponential, signed, leading-zero, boolean, null, and string representations are rejected. Offset `value` is exactly `0x` and 1–16 hexadecimal digits, with no whitespace, suffix or truncation. Zero is valid. Hexadecimal digits may use either case; the prefix is lowercase. Serialization orders maps deterministically and writes lowercase offset digits.

Limits apply before expensive parsing: input/load at most 1 MiB; at most 128 modules and 4096 offsets; names/profile ID at most 256 bytes of nonempty printable ASCII without spaces; game_build/provenance each nonempty, at most 4096 UTF-8 bytes. Strings reject malformed escapes, unpaired UTF-16 surrogates, overlong/truncated/invalid UTF-8, Unicode values beyond U+10FFFF, and embedded NUL. Proper escape sequences and Unicode scalar values in metadata roundtrip. Parser nesting is fixed by this schema; arrays/general recursive JSON are unsupported and rejected.

Module identities require either an empty hash or exactly 64 ASCII hex digits. `module_rva` requires a named module present in `modules`, value at most UINT32_MAX, and value strictly below `image_size` when that size is nonzero. `field_offset` requires the empty module and value at most 16 MiB inclusive. This deliberately keeps member offsets separate from module-relative addresses. Unknown enum values and incoherent directly constructed profiles are also rejected.

## API behavior

Parse/load validate into a temporary and leave the supplied output unchanged on every reported failure. Missing required fields cannot produce successful defaults. `serialize_offset_profile` returns empty for invalid profiles or serialized output exceeding 1 MiB. `set_profile_offset` edits only existing named entries and validates the entire candidate before replacing the profile. It never adds keys or changes kinds/modules.

`get_profile_offset` checks the requested kind. `resolve_profile_address` checks that kind and uint64 addition overflow; it returns the arithmetic result only. Outputs remain unchanged on failure. A field offset may be resolved against a caller-supplied object base only when requested as a field offset. **The caller must supply the correct module/object base and enforce verification before use.** These APIs neither discover bases nor prove a pointer safe. The existing signature carries no separate expected-module argument; context-specific key and stored module bind that choice for the caller.

`validate_profile_modules` never measures anything itself. It requires every listed module to have a complete nonempty expected SHA-256, nonzero expected image size, and a corresponding caller-supplied observed identity matching both. Hash hex case is ignored; module name case is exact. Missing, malformed, empty, or mismatched observed identities fail. An empty module map fails verification. Empty hashes or unspecified sizes can be loaded/edited as reference data but can never verify successfully. Successful offline fixture comparison is not evidence of any game build.

## File replacement

Saving first validates and serializes the complete candidate. It exclusively creates a temporary beside the destination, writes all bytes, flushes and closes it, then replaces the destination. POSIX uses `mkstemp`, a bounded write loop, `fsync`, `close`, and `rename`. Windows uses wide-path `CreateFileW(CREATE_NEW)`, `WriteFile`, `FlushFileBuffers`, `CloseHandle`, and `MoveFileExW(REPLACE_EXISTING | WRITE_THROUGH)`. Failure before/replacing the destination removes the temporary best-effort and preserves the prior destination. No delete-then-rename gap is used. The parent directory must already exist. Concurrent saves are last-successful-replacement wins; no merge/locking or conflict detection is promised. POSIX directory fsync and crash/power-loss durability of directory entries are not claimed. OS/filesystem atomic-rename guarantees are assumed; hostile filesystem races are outside the contract.

## Focused evidence

Run from the workspace:

```sh
bash dump_analysis/semantic_reconstruction/menu_offsets/profile/verify.sh strict
bash dump_analysis/semantic_reconstruction/menu_offsets/profile/verify.sh sanitize
```

The script uses the existing local GCC 15 toolchain and verify.sh's sysroot/B/L pattern. It builds only owned portable sources and the scratch driver; no sample/game/spoof code runs. It records owned source hashes before/after compilation and execution, and fails on any difference. Strict flags include C++20, Wall/Wextra/Wpedantic/Werror and libstdc++ assertions. The sanitizer mode adds ASan+UBSan, static sanitizer runtimes, no recovery, frame pointers, and no PIE for stable local sanitizer startup. The check source exports `check_offset_profile()` and contains no main.

Coverage includes deterministic roundtrip, missing/bad schema, duplicate/unknown fields, Unicode/escape errors, bounded input/entries/strings, wrong types/modules/kinds, uint64 numeric boundaries, RVA/member limits, zero, strict malformed edits, unchanged error outputs, arithmetic overflow, actual edit/save/reload changing resolution, failed save preserving a valid file, failed replacement preserving its destination directory, absent/oversized/malformed loads, and temporary cleanup. Filesystem failure injection, disk-full/power-loss behavior, and execution of the Windows branch are not part of these Linux focused tests.

`fixture-abc.bin` is exactly ASCII `abc` (3 bytes); `fixture-hello.bin` is exactly ASCII `hello` (5 bytes). `fixture.sha256`/`fixture.sizes` independently record their measured hashes/sizes. These known offline bytes back the explicit supplied fingerprint match/mismatch/refusal checks; they are not PE modules. Tests separately exercise case-insensitive hashes, absent modules, mismatched hashes/sizes, empty hashes, and zero expected sizes.

Final `strict.log`, `sanitize.log`, corresponding before/after hashes, and `RELEASE.sha256` identify the frozen source release. No external library/license integration is required.
