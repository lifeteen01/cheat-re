# Working evidence

[C] Original inputs remain under the manifest-listed paths; this folder contains new analysis artifacts only. [I] The extraction scripts use the virtual-layout rule (file offset equals RVA), existing annotated disassembly, decoded strings and PE exception-directory metadata. [C] No sample code is executed by the scripts.

[C] `evidence.py` emits function excerpts with bytes, normalized getter targets and config-value references; `supplement.py` emits bounded negative string searches, explicit assembly spans, independent raw objdump checks, embedded UnityFS headers and the complete zero-reader config inventory.

[C] `audit_reconstruction.py` independently checks corrected branch bytes and direct-call targets against the preserved DLL, decodes the short `TOD_Sky` getter, checks the zero-reader inventory and scans the supplied disassembly for culling-value references. [C] Its outputs are [independent_audit.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/independent_audit.json) and [raw_metadata.asm](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/raw_metadata.asm). [U] Static inventory/reference absence is bounded to these supplied inputs.

[U] Leaf/code ranges without pdata use a first-return/next-entry heuristic unless explicitly bounded. Such excerpts can omit alternate-return tails or contain neighboring leaf routines; trust cited instruction spans, explicit-range files and raw byte re-disassembly rather than treating every heuristic header as a proven original function boundary. [C] Important multi-return/assembly routines `0x2caf08`, `0x315bd0`, `0x3cdbd4`, `0x3cdbba` have explicit bounds.

[C] Explicit bounds also cover vector inequality `0x2df5dc`, nullable string equality `0x334ff4` and signed-byte string comparison `0x3ca884`. [C] Independent disassembly exposed alternate returns omitted by the earlier first-return heuristic. [I] New translations must inspect branch targets beyond a heuristic excerpt before assigning comparison semantics.

[C] [audit_excerpt_bytes.py](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/audit_excerpt_bytes.py) compares every recognized recorded byte span in the excerpt files against the preserved DLL and writes [byte_span_audit.json](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/byte_span_audit.json). [U] Byte agreement does not prove function bounds or semantic equivalence of the C++ translation.

[C] Main outputs are in `/home/john/Desktop/cheat_re/source/`; `build_verification.txt` records successful native analysis checks and `input_verification_final.txt` records repeated manifest verification. [C] `OUTPUTS.sha256` holds exact byte hashes for all source deliverables, including both README files under source; README hashes live outside those files to avoid self-reference.
