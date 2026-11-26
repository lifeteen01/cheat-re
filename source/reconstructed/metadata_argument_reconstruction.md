# Metadata argument packaging

[C] `bind_metadata_literal_wrappers` composes the existing nine metadata cache controllers with six concrete local argument-packaging helpers, then invokes a supplied typed IL2CPP effect. `bind_metadata_argument_context` is the lower-level composition step. The dispatcher, target, context and arguments remain numeric copied-data keys; no executor or target address is called.

| Native helper | Known copied context writes in native order |
| --- | --- |
| `2dda18..2dda33` | QWORD arity0 at`+80`, then gate unknown return-slot pointer at`+78` |
| `2cb9fc..2cba4f` | Arity1, pointer argument at`+88`, full DWORD type-store gate at`+D0` with known low byte0, return-slot gate |
| `2d2094..2d2106` | Unknown WORD`+D2` gate, return-slot gate, full 16-byte argument-store gate with known first pointer, WORD types0, arity2 |
| `2cba50..2cbae2` | WORD types0, next type byte0, unknown fourth type byte gate, first two pointers, return-slot gate, third pointer, arity3 |
| `332e8c..332f1d` | Same three-argument prefix; third argument has only its low DWORD initialized, and the full QWORD write is bounds-checked |
| `32b1c8..32b239` | Unknown type WORD and return-slot gates, full 16-byte argument-store gate, pointer plus low DWORD index, WORD types0, arity2 |

[I] The owned assemblies/iterator APIs expose vectors or references, so their native scratch argument pointer is unavailable. That slot stays unmaterialized. Upper DWORDs of integer argument slots, stack-derived type tails and return-slot pointers likewise remain unmaterialized. A native-width extent check occurs at each such store before subsequent known effects, preserving failure order without fabricating pointers or zeros. The unchanged bytes left in those slots are not asserted to equal the native unwritten stack values.

[C] The raw pointer and DWORD packers `2cc268..2cc26f` and `2df370..2df376` confirm widths. A fresh audit also checks the nine metadata wrapper bodies: resolver-side flags are reloaded here, dispatcher acquisition precedes bit2 commit, and the warm tail reload still occurs. These wrapper bodies differ from the interaction controllers that retain captured flags. [The audit](../../dump_analysis/semantic_reconstruction/metadata_arguments/audit.json) covers 17 ranges, 1,823 bytes, 418 instruction lines, 40 branches and 31 direct calls. It verifies bytes and branch destinations, and records the reviewed ordering; it is not exhaustive semantic proof.

[C] Focused fixtures inspect context fields from inside the typed effects, verify untouched unknown bytes, integer sign/index bits, reference/vector results, missing-type failure prefixes, and complete warm-cache→packaging→effect composition. Missing matching effects fail explicitly after the reached local stores. Strict GCC15 C++20/Werror/`-ffp-contract=off` and ASan/UBSan logs live under [metadata_arguments](../../dump_analysis/semantic_reconstruction/metadata_arguments/).

[U] Matching IL2CPP behavior, real native scratch values, live allocation/reference ABI, arbitrary source/context aliases and context/executor execution are excluded. The existing `bind_metadata_wrappers` remains a separately exposed cache-only layer; consumers wanting both layers use `bind_metadata_literal_wrappers`. This addition does not implement stack fabrication, continuation selection, restoration or execution.
