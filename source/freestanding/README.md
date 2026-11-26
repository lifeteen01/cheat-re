# Freestanding recovered executor component

This is a separate production building block for the requested no-CRT/no-import
base. It does not convert the existing scene or Windows base: those still use
standard-library/runtime facilities and Windows imports, and still call ordinarily.
The overall requirements remain unmet until their active paths are ported and bound.

## Implemented

`gate_x64.S` translates the126 ordered instructions of the recovered restoration
`3cdbba..3cdbd4` and executor `3cdbd4..3cddf0` into assembly mnemonics. It actually
saves caller state, constructs the supplied synthetic stack, marshals0..9 positional
integer/FP arguments, jumps to the target and restores the real caller afterward.
Original redundant reads/writes and fall-through jumps remain. No sample executable
bytes are loaded or invoked. The audit verifies original excerpt bytes against the
preserved virtual-layout DLL, then compares authored disassembly operands, branch
destinations and the restoration reference. This establishes fidelity of this
instruction slice, not equivalence of the complete base.

`gate.h` defines the literal0xd8 context layout without CRT, SDK or STL headers.
`gate.cpp` supplies a versioned API and separate authored admission guards for its
supported stack shape, count, flags and result-storage aliasing. The raw native
executor falls through to nine arguments for an invalid count; the public guarded
API rejects counts above9. The return shim captures RAX and low64 XMM0 bits without
changing the recovered restoration. `saved_slot_68` is a native diagnostic write to
caller-stack storage, not a persistent owned pointer usable after return.

The Windows `re_gate.dll` links with `-nostdlib -nodefaultlibs -nostartfiles` and an
explicit entry. There are no CRT/startup/allocator/exception/TLS/global-constructor
dependencies, imported libraries, IAT entries or delay imports. Its own object has
only the internal `re_gate_capture` reference; the link map contains no archive
members. GNU ld retains an empty import-descriptor terminator (directory RVA4000,
size24 in the verified artifact); it names no module and imports no function.
The report retains the raw directory fields rather than calling that directory zero.

## Reproduce and evidence

From the workspace root:

```sh
python3 source/freestanding/verify.py --mode strict
python3 source/freestanding/verify.py --mode sanitizer
python3 source/freestanding/verify.py --mode windows
```

Results, compiler/link commands, source/object/artifact/log hashes and135 original
input checks before/after each mode are under
`dump_analysis/semantic_reconstruction/freestanding_gate/<mode>/verification.json`.
The hosted test driver is separately identified and is allowed its own CRT/OS
imports; its imports are inventoried separately from the delivered DLL.

Strict Linux and ASan/UBSan runs exercise the Windows x64 ABI via `ms_abi`. Wine
loads the actual freestanding Windows DLL and resolves only its three API exports.
The tests execute160 count/FP-mask combinations, mixed typed integer/double/float
targets, real nine-argument stack forwarding, floating return, nested invocation,
literal stack-slot observations, RSP/RBP/RBX/R15/R12 restoration and rejected inputs.
They use supplied owned marker/continuation functions. They do not fabricate a
successful native module/context scan or a successful live stack-walk verdict.
The sanitizer covers C++ support/driver code; handwritten assembly itself is not
sanitizer-instrumented, so its accesses are checked through explicit observations.
There is no Windows sanitizer or native-Windows/in-game claim.

A standalone CMake project also builds the component and owns one CTest. The local
Linux CMake/CTest result is in `freestanding_gate/cmake_strict/`; it is separate from
the scene's CMake build. `audit_negative_controls.json` records rejection of mutated
thread-offset, branch-destination and restoration-reference objects. These mutated
objects are disassembled only, never executed.

## Still required

The complete `2cbd24` context initializer and its module scanners `2cdfc4/2ce074/
2cdea8`, native export/module discovery and continuation/unwind selection remain
unported to this freestanding component. The caller must supply a complete context
with trusted executable addresses, sufficient committed stack and exclusively owned
readable/writable storage. No fabricated ready flag or ordinary-call fallback is
used by `ReGateInvoke`.

Live unwind-chain validity, exceptions crossing the gate, hardware shadow-stack/CFG
compatibility and actual game ABI remain unverified. SIMD values wider than64bits,
unknown aggregate/varargs ABIs and arbitrary untrusted pointers are unsupported.
Matching engine/game artifacts are needed for their native bindings and validation;
they are not needed to continue local freestanding/runtime/context-scanner work.

The scene/base still require their no-CRT/no-import port and actual gate integration,
along with original-call forwarding, live hooks and Unity GPU work. A passing gate
component does not close those requirements.
