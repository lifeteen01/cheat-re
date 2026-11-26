# 03 — Synthetic stacks and spoof-call gate

Current implementation update: the recovered126-instruction executor/restoration
slice now has an executable, freestanding translation in
[gate_x64.S](/home/john/Desktop/cheat_re/source/freestanding/gate_x64.S), with a no-CRT,
no-import Windows DLL and owned ABI/restoration checks. Full context/module scanners,
native unwind-chain validity and scene/base integration remain unfinished. The
metadata-only implementation described below is the older analysis module; it is
not evidence that the new executor selects a complete live context. See
[component evidence and limits](/home/john/Desktop/cheat_re/source/freestanding/README.md).

[C] The sample contains a shared call gate that constructs stack contents before transferring to resolved UnityPlayer/GameAssembly functions. [I] Its purpose is to make native calls appear to have ordinary image-backed ancestry. [U] No live unwinder, CET state or sampled thread stack was supplied, so the exact stack a particular Windows walker produces is not a runtime-confirmed result.

## Evidence chain

| Function | Confirmed semantics |
|---|---|
| `0x2ce130` | [C] Resolves `KERNEL32.DLL!BaseThreadInitThunk` and `ntdll.dll!RtlUserThreadStart`, saving module bases and export addresses. Decoded getters/calls: `0x2cc684`/`0x2ce143`, `0x2cc718`/`0x2ce165`, `0x2cc770`/`0x2ce18b`, `0x2cc7c4`/`0x2ce1ae`. |
| `0x2ce1d4` | [C] Reads exception-directory RVA and byte Size from NT headers `+0xa0/+0xa4`; returns module+RVA and copies Size unchanged to output (`0x2ce1d8–0x2ce1e9`). |
| `0x2ce1f0` | [C] Searches 12-byte runtime-function entries for **exact BeginAddress equality** with the module-relative address (`0x2ce221–0x2ce226`); it does not test a containing interval. [C] Its loop bound uses the unchanged byte Size as record count (`0x2ce209`, `0x2ce22b`), allowing traversal beyond the declared table. |
| `0x2ce3dc` | [C] Parses unwind encodings and accumulates frame/stack allocation information. [I] This supplies sizes needed to make synthetic frames traversable by a normal x64 unwinder. |
| `0x2cbd24` | [C] Clears a `0xd8`-byte context, stores the target, obtains thread-start addresses through `0x2ce130` if not supplied, finds their runtime-function/unwind information, and invokes further module/unwind scanners. |
| `0x3cdbd4` | [C] Saves caller state, changes RSP, writes a chain of apparent return addresses and stack slots, loads integer/floating arguments according to context flags, and **jumps** to the target (`0x3cddee`). |
| `0x3cdbba` | [C] Restores the saved stack position and registers and returns to the real caller. [I] This is the restoration continuation for the synthetic call sequence. |

[C] Primary evidence: [resolver](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/03_stack/2ce130.asm), [context setup](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/03_stack/2cbd24.asm), [exception lookup](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/03_stack/2ce1f0.asm), [unwind parser](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/03_stack/2ce3dc.asm), [exact executor range](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/03_stack/executor_exact.asm), [restoration](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/03_stack/restore_exact.asm). [C] Independent objdump output from the DLL bytes is retained in [raw stack evidence](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/raw_spoof.asm).

[C] The executor places addresses inside the two resolved thread-start routines into its new stack (`0x3cdc3e–0x3cdc4c`) and adjusts stack spacing with context-derived frame sizes (`0x3cdc35–0x3cdc70`). It also installs module-selected return/continuation values and a restoration address (`0x3cdc01–0x3cdc29`, `0x3cdc61–0x3cdc7e`). [I] These are fabricated caller frames: their presence is caused by stores/pushes in the gate, not by the target having been reached through that historical chain of calls. [U] Symbolic names for every module-selected continuation/gadget are not recovered here.

## Literal metadata audit and detection-only implementation

[C] The parser at `0x2ce3dc–0x2ce559` has behavior that differs from the standard Windows unwind interpretation. [I] [03_stack_spoof_spoofcall.cpp](/home/john/Desktop/cheat_re/source/reconstructed/03_stack_spoof_spoofcall.cpp) keeps `analyze_sample_unwind_2ce3dc` separate from `summarize_unwind`, which is an analyst-written conventional allocation summary. [U] Neither implements a Windows stack walker or restored register state.

| Literal byte-backed observation | Consequence represented in the parser |
|---|---|
| [C] `0x2ce3f8` zeroes the output accumulator; a chain jumps back to `0x2ce3ec`. | [C] Each chained entry resets the previous accumulated size rather than adding it. |
| [C] `0x2ce4b0` reads byte `[code+3]`, shifts its high nibble, and chooses the large-allocation form. | [C] The operand slot's high nibble selects scaled 16-bit versus combined 32-bit allocation, rather than the current opcode's OpInfo. Slot traversal can exceed CountOfCodes. |
| [C] `0x2ce490–0x2ce49b` and `0x2ce438–0x2ce44f` handle save-register forms. | [C] Non-register-4 encodings clear the accumulated size and consume two/three slots. They do not simply preserve allocation. |
| [C] `0x2ce4f1–0x2ce4f7`, `0x2ce484–0x2ce48a`, `0x2ce438–0x2ce43e` reject register number 4. | [C] Return EAX is zero, but preceding output-accumulator contents remain. The result exposes both separately. |
| [C] Immediates `41 83 00 40` / `41 83 00 48` at `0x2ce529` / `0x2ce532`. | [C] Machine-frame contribution is hexadecimal `0x40` / `0x48`, unlike conventional decimal 40 / 48. |
| [C] `0x2ce469–0x2ce47c` rounds code count to an even number and reads the chained UnwindData RVA. | [C] The parser follows that metadata reference. [I] Owned-buffer bounds, cycle detection and a 64-entry traversal limit replace native unsafe reads and unbounded loops. |

[C] Context setup reads the parser's output local after each call (`0x2cbdd4`, `0x2cbdfd`); EAX is not used for those sizes. [I] `audit_context_metadata` therefore retains the literal output accumulator, separate returned size/rejection flag and conventional summary side by side. `reconstruct_context_evidence` uses the literal accumulator and exact-start lookup; `find_runtime_function` remains a distinct conventional containing-interval helper. [U] Missing exact entries are reported as unavailable rather than modeling the sample's subsequent unchecked dereference. [C] The lookup treats directory byte Size as record count; the literal helper permits that over-traversal while bounding every read by the owned image. [I] The conventional lookup respects the declared table byte extent. PE export resolution reports forwarded/null targets as unresolved.

[I] The audit representation contains export labels, numeric addresses, runtime-function records and metadata summaries only. `describe_executor_3cdbd4` remains a detection-level event sequence. The analysis module itself supplies no executable context or executor. The separate freestanding translation now supplies the literal executor/marshalling/restoration; native context and continuation selection remain unfinished. [U] The module-scanning callees after `0x2cbe0c` remain unported; complete context construction and live ancestry cannot be claimed.

[I] [hooks_checks.cpp](/home/john/Desktop/cheat_re/source/reconstructed/hooks_checks.cpp) includes owned PE/unwind fixtures checking exact-start versus containing lookup, byte-Size-as-count over-traversal, parser return/output divergence at rejected RSP pushes, caller use of the output accumulator, conventional/literal machine-frame differences, save-register accumulator reset, operand-selected allocation form, count overrun, chained-entry reset and cycle bounds. [C] These tests passed in the dedicated local GCC 15 build. [C] A direct byte audit matched all 1,286 encoded instructions in the selected 14 hook/setup/parser/context excerpts against the read-only DLL; this confirms excerpt provenance, not runtime success. Primary input and prior objdump ranges are linked above.

## UnityPlayer allocator use

[C] `0x3caccc` resolves UnityPlayer.dll and records its base and exception directory for the gate; the allocator wrappers use gate object `0x40f098`. [C] Two lazy signature resolvers scan UnityPlayer, cache a target, initialize a spoof-call context and route the allocation/free argument through the executor. [I] Borrowing UnityPlayer's allocator gives the cheat engine-owned heap allocations and an image-backed apparent caller chain. [U] Exact allocator symbol identity remains inferred because the matching UnityPlayer DLL/symbols are not an input.

| Signature / route | Evidence and interpretation |
|---|---|
| `C7 44 24 ? ? ? ? ? 8B 44 24 ? E9 ? ? ? ? CC` | [C] Pattern getter `0x3c7e28` (inventory `0x3c7e26`); scan wrapper `0x3c7e70`; lazy resolver `0x3c8bd0`; target cached at `0x40f198`; context `0x40f1b0`. [C] Thunk `0x38a3cc` tail-jumps to this wrapper, which passes one pointer-like argument through `0x2cb9fc` → `0x3cdbd4`. [I] UnityPlayer's statically linked CRT `free`, based on callsites and its role releasing allocator/qsort scratch buffers. |
| `40 53 48 83 EC ? 48 8B D9 48 83 F9` | [C] Getter `0x3c7e4c`; scan wrapper `0x3c7ea8`; lazy resolver `0x3c8c70`; target cached at `0x40f0b0`; context `0x40f0c0`. [C] Thunk `0x38a3c4` tail-jumps to this wrapper, then `0x3c7c98` → `0x3cdbd4`; one size-like integer argument and a returned value. [I] CRT `malloc`/`_malloc_base`, consistent with its allocation uses and UCRT-shaped prologue. |

[C] These are **call targets**, with no observed signature-site patching in the wrappers. Sources: [free resolver](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/03_stack/3c8bd0.asm), [malloc resolver](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/03_stack/3c8c70.asm), [thunks](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/03_stack/allocator_thunks_exact.asm), [one-argument gate](/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/03_stack/3c7c98.asm), [prior signature/callsite inventory](/home/john/Desktop/cheat_re/dump_analysis/C_vmp/VMP_INVENTORY_REPORT.md).

[C] The same gate is used for saved originals and many game calls, not only allocations: e.g. `Projectile.Update` detour obtains its saved original, calls context setup at `0x32aed7`, then tail-enters the argument wrapper at `0x32aef7`. [I] A detector should therefore look beyond a single malloc/free signature.

## What a walker may see

[I] While stopped inside the target, a permissive x64 walk can report the real target in UnityPlayer, module-backed intermediate continuations and apparent `BaseThreadInitThunk`/`RtlUserThreadStart` ancestry. The actual cheat caller may be absent from the principal unwind chain or remain only in saved stack material. [C] The executor separately preserves the real state and restores it after the call (`0x3cdbd4–0x3cdc08`, `0x3cdbba–0x3cdbd3`). [U] Exact ordering/depth depends on the resolved module entries, OS build, sampled instruction and walker policy; a diagram of one fixed live stack would overstate the available evidence.

[I] Relevant stack-walk checks, motivated by the executor's writes and terminal jump, are:

- [I] **Return-address versus unwind consistency:** validate each frame's stack allocation, saved nonvolatile registers and continuation location against the actual function's unwind program, not just whether the address belongs to a signed module. The gate deliberately uses unwind-derived sizes; some ordinary checks may pass.
- [I] **Callsite consistency:** inspect whether an apparent return address corresponds to a plausible call into the next frame. A real module address can be used synthetically; the transfer into the target at `0x3cddee` is a jump. Tail calls and legitimate thunks require allowance, so this is a correlation signal.
- [I] **Code and unwind provenance:** cross-check runtime-function metadata with executable-page/file backing and registered image ranges. Suspicious continuations or saved state may point into private/manually mapped memory, including the cheat restoration routine. [U] Unbacked frames are not guaranteed to appear in a successful spoofed walk.
- [I] **Independent stack history:** when available, compare ordinary unwind results with hardware shadow-stack/control-flow history or trusted tracing. [U] Whether this sample runs under enforced hardware shadow stacks, or what fault it would produce there, was not established.

[I] Repeated allocator/game calls with the same unusual ancestry, combined with foreign IL2CPP pointers or an executable private region, provide stronger evidence than a thread-start frame alone. [U] Stack spoofing success against a specific Microsoft/EAC collector remains a lab-validation question; the report establishes the construction mechanism and detection invariants, not a bypass recipe.
