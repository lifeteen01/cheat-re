# Copied-loader export resolution

[C] [metadata_export_analysis.cpp](/home/john/Desktop/cheat_re/source/reconstructed/metadata_export_analysis.cpp) translates twelve cached hash resolvers and their loader/export-table search. [I] The copied loader list's initial node replaces GS/PEB access. All addresses remain numeric snapshot keys; no resolved function is executed.

[C] `0x2cc0fc/0x2cc124` fold ASCII A..Z, sign-extend other nonzero bytes, XOR the seed and multiply at32 bits by `0x1000193`. The key's high DWORD supplies the seed and its low DWORD the expected hash (`0x2ce23c/0x2ce238`). [C] Each module's named exports are visited in descending index order, then the matched name ordinal selects the function-table RVA. Directory byte Size is read but unused by this search. An RVA inside the export directory is returned literally; the code does not resolve forwarder strings.

| Cached getter | Search body | Cache RVA | Matching candidate spelling |
|---|---|---|---|
| [C] `0x3339fc` | [C] `0x333804` | [C] `0x3fa7b8` | [I] `il2cpp_domain_get` |
| [C] `0x3339e4` | [C] `0x333600` | [C] `0x3fa788` | [I] `il2cpp_domain_get_assemblies` |
| [C] `0x333a0c` | [C] `0x3330a0` | [C] `0x3fa790` | [I] `il2cpp_assembly_get_image` |
| [C] `0x333a34` | [C] `0x333350` | [C] `0x3fa768` | [I] `il2cpp_class_from_name` |
| [C] `0x333a3c` | [C] `0x33314c` | [C] `0x3fa760` | [I] `il2cpp_class_get_method_from_name` |
| [C] `0x333a2c` | [C] `0x3338b0` | [C] `0x3fa7b0` | [I] `il2cpp_class_get_methods` |
| [C] `0x2ee70c` | [C] `0x2ee43c` | [C] `0x3f0968` | [I] `il2cpp_method_get_param_count` |
| [C] `0x2cc164` | [C] `0x2cbef8` | [C] `0x3d6148` | [I] `il2cpp_string_new_wrapper` |
| [C] `0x2cc16c` | [C] `0x2cbfa4` | [C] `0x3d6140` | [I] `il2cpp_type_get_object` |
| [C] `0x2cc174` | [C] `0x2cc050` | [C] `0x3d6138` | [I] `il2cpp_class_get_type` |
| [C] `0x2dee4c` | [C] `0x2decb8` | [C] `0x3e3fc0` | [I] `il2cpp_object_new` |
| [C] `0x3339ec` | [C] `0x3336ac` | [C] `0x3fa758` | [I] `il2cpp_method_get_name` |

[C] [Additional resolver bodies](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/metadata_export_additional.asm), [cache branches](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/metadata_export_additional_caches.asm) and [cache cells](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/metadata_export_additional_cells.asm) support the final four rows. [C] Every candidate above hashes to its recorded literal key. [U] Hash agreement alone does not prove a unique original spelling. [C] A nonzero cache returns immediately; zero triggers another search and is written back even on a completed miss. Lookup faults leave the cache unchanged. [I] Bounds and finite name/module limits distinguish missing data from native no-match results; these checks are analysis safeguards.

[C] Selection helper `select_counted_method_334a90` additionally implements nullable name equality followed by exact parameter-count equality, including negative requested counts. It does not share `0x33416c`'s unusual non-equal-name/occurrence rule. [C] Both variants are fixture-tested independently.

[C] Evidence: [wrapper and counted-selector bytes](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/metadata_adapters_evidence.asm), [cached resolver bodies](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/metadata_export_resolvers_bodies.asm), [hash keys/cache cells](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/metadata_export_lookup_bodies.asm), [export-table traversal](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/export_hash_dependencies.asm) and [hash/loader helpers](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/export_hash_and_loader.asm).

[C] [Strict fixtures](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/metadata_export_verification.txt) and [sanitizer fixtures](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/metadata_export_sanitizer_verification.txt) pass. Fixtures cover all twelve keys/cache cells, reverse duplicate matches, ordinal indirection, raw forwarder RVAs, signed bytes, zero retries, loader termination, malformed cycles, missing bytes and limits.

[C] Signature/CRC lookup `0x333d10` is now translated in the [signature module](/home/john/Desktop/cheat_re/source/reconstructed/metadata_signature_reconstruction.md). [U] Remaining local work includes wrapper lazy-context state and native cache storage. Matching external export implementations, loader provenance and live calling conventions remain unavailable. [I] Spoof-context/executor behavior stays within the user's detection-level scope.

[C] The method-name resolver/cache chain has separate [byte evidence](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/metadata_method_name_export.asm). It supports wrappers whose name getter differs from direct MethodInfo field reads.

[C] Full guarded selector `resolve_export_named_method_333bf4` now includes class resolution, numeric method/name guards, export-based name retrieval, all parameter-index/count paths and the dash sentinel. It is separate from direct-field selector `0x3349ac`. See [complete bytes](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/guarded_method_selector.asm) and [strict fixtures](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/guarded_selector_verification.txt).
