# Metadata wrapper reconstruction

[I] `bind_metadata_wrappers` supplies the nine existing `MetadataApi` roles with concrete lazy cache/flag sequencing on a copied `Snapshot`. Actual IL2CPP results are supplied typed callbacks. Numeric targets, dispatcher values, context addresses and executor RVAs are passed as evidence; no address is converted to a host pointer.

| Native range (exclusive end) | Flags DWORD | Target QWORD | Context | Export getter | Native executor |
|---|---|---|---|---|---|
| [C] `33479c..33480b` | `3f9860` | `3f9858` | `3f9870` | `3339fc` | `2dda18` |
| [C] `33480c..334893` | `3f9ef0` | `3f9ee8` | `3f9f00` | `3339e4` | `2d2094` |
| [C] `3344b0..334528` | `3f9e00` | `3f9df8` | `3f9e10` | `333a0c` | `2cb9fc` |
| [C] `334528..3345c2` | `3fa2b0` | `3fa2a8` | `3fa2c0` | `333a34` | `2cba50` |
| [C] `334660..3346e7` | `3f9950` | `3f9948` | `3f9960` | `333a2c` | `2d2094` |
| [C] `3345c4..33465d` | `3fa3a0` | `3fa398` | `3fa3b0` | `333a3c` | `332e8c` |
| [C] `335140..3351b8` | `3f9b30` | `3f9b28` | `3f9b40` | `2ee70c` | `2cb9fc` |
| [C] `335040..3350b8` | `3fa490` | `3fa488` | `3fa4a0` | `3339ec` | `2cb9fc` |
| [C] `3351b8..33523e` | `3f9a40` | `3f9a38` | `3f9a50` | `3339f4` | `32b1c8` |

[C] All nine use the same two independent flag branches: `a8 01` tests bit 1; `83 c8 01` ORs it into the DWORD and the following `89 05 disp32` commits **before** the export getter call. Its QWORD return is written to the target cell using `48 89 05 disp32`, and the flags are reloaded by `8b 05 disp32` after the callback. The alternative path reads the cached target with `4c 8b 05 disp32`. Consequently a completed zero target is cached by the wrapper flag and does not trigger another export lookup. Resolver-side flag mutations are visible at the bit 2 test.

[C] The next branch uses `a8 02`, loads dispatcher from `0x3d5e60`, computes the context address using RIP-relative LEA, ORs/stores bit 2 (`83 c8 02; ...; 89 05 disp32`) and calls `0x2cbd24` with `r9d=0` (`45 33 c9`). The final dispatcher load occurs after that callback, so callback changes to the dispatcher are observable. The locally selected target is retained for setup even if copied target storage changes during callbacks. The context observation receives the selected target and context; the typed effect receives that selection evidence and final dispatcher.

[I] `observe_context_2cbd24` is a detection-only notification. No executable context bytes, fabricated stack or native executor implementation is supplied. [U] A preinitialized copied context may encode a different native target than a subsequently changed target cell; the descriptor reports the selected cache value and context address without claiming to decode or execute that context. [C] Flags are not rewritten after setup, preserving setup-side flag mutations. Missing effects/bytes throw `MetadataWrapperFailure`, retaining preceding flag/cache writes. This is an analysis status boundary, not a recovered native exception ABI.

[C] Assembly enumeration retains the existing `MetadataApi` owned-vector projection; iteration passes the mutable iterator by reference. `334528` passes image, namespace, name in that order. `3345c4` preserves the signed 32-bit count. `335229` uses `44 8b cb` (`mov r9d,ebx`), so the parameter-name effect receives the zero-extended raw 32-bit index; `-1` becomes `0xffffffff`, not a sign-extended pointer. [U] Typed callback return values and vector storage are analysis projections of IL2CPP effects, not complete ABI definitions.

[C] The new supplemental descriptor is `getter=0x3339f4, resolver=0x3333fc, cache=0x3fa7a8, key=0xf651560800670ed3`. The getter bytes `e9 2b f3 ff ff` jump to `0x332d24`, whose cache-cell callback is `0x334470`; that leaf uses `48 8d 05 31 63 0c 00` to return `0x3fa7a8`. Its miss calls `0x3333fc`, where `0x33340f` has `48 bd d3 0e 67 00 08 56 51 f6`. The key hashes `il2cpp_method_get_param_name`. `resolve_metadata_wrapper_export` reuses the existing copied-loader scanner and delegates the parent's other twelve getter descriptors to `resolve_metadata_export`.

[C] The underlying export getter's zero cache retries (`48 85 c0; 75 08` at `332d35..332d3a`); that behavior is distinct from the wrapper flag that caches a zero once bit 1 is committed. Only completed export searches write their result. Missing copied loader/module/export bytes and analysis limits remain explicit statuses.

[C] [Byte verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/field_wrappers/byte_verification.txt) covers full wrapper branches, RIP operands, getters, executors, guard/add helpers and the supplemental resolver chain. Fixtures exercise every typed callback, both initialization branches, repeated calls, zero target caching, flag mutation/reread, dispatcher reread, retained writes after missing resolver/setup, bounds and export retry behavior. [C] Strict GCC 15.2 C++20 `-Werror -ffp-contract=off` checks: [verification](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/field_wrappers/verification.txt), [ASan/UBSan](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/field_wrappers/sanitizer_verification.txt). No copied instruction was executed.

[C] Remaining untranslated local ranges inside the nine wrappers and the supplemental export getter/resolver chain: none. [U] `0x2cbd24` and native executors `0x2dda18/0x2d2094/0x2cb9fc/0x2cba50/0x332e8c/0x32b1c8` remain excluded detection-only boundaries; their executable implementation is deliberately absent. [U] Actual IL2CPP export effects remain foreign inputs. [I] Parent integration must register the two new modules/check entrypoints and may merge the supplemental descriptor into its primary table; no existing files or ledger were changed here.
