# Independent interaction review findings

Input: preserved `cheat.unpacked.dll`, SHA256 `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`.
All RVAs and order below are derived from the input bytes checked by `extract.py`.

## I1 [C]: resolver reentry changes a captured flag test

`Replay::initialize` originally referenced the mutable flag cell across the resolver callback. Native melee captures `[3e3fd0]` in EBX at `2e1300`, commits bit1 at `2e1345`, calls `2ce5d8` at `2e134b`, and tests captured BL bit2 at `2e1360`. Forwarding captures `[3e5bd8]` at `2e9236`, commits bit1 at `2e924b`, calls the resolver at `2e9251`, tests captured BL at `2e9266`, and commits captured bits|2 at `2e9282`.

Minimal counterexample: starting flags0; resolver sets the state flag cell to3. Native still calls setup because captured BL is1. Original C++ observes3 and skips setup. A second case starts flags2 and resolver clears the cell: native skips setup using captured3, whereas the original implementation initializes again. High unrelated bits changed by resolver are also overwritten only when native performs the captured second commit.

Proposed correction: retain a local captured flags word through both tests and use it for native stores. Do not resample state following the resolver. Fixtures cover both wrappers and four reentry cases each.

## I2 [C]: rejected transfer items bypass required early reads

Native transfer captures qword UID `[item+88]` at `2e813a`, dword count `[item+30]` at `2e8148`, then category word `[definition+58]` at `2e8152`. Category filters begin at `2e8162`; maximum `[definition+78]` is read later at `2e82d0`. The final move uses captured count/UID at `2e82f0/2e82f3`.

Original C++ reads category/filter first, then maximum/count, then UID only if it moves the item. With an item at Snapshot.end-0x40, readable definition pointer and count, and definition category1 rejected by the mask, native replay needs missing UID bytes and must return `snapshot_bounds`. Original C++ reports `returned` without reading them.

Proposed correction: capture UID/count in native order before category; keep maximum after category filters; pass captured fields to the move effect. Do not move the trade-loop UID read, whose native load is conditional at `2e7f7e`.

## L1 [U]: copied class-name boundary cannot model delayed byte mutation

The lock branch captures a numeric class-name pointer at `2e839f..2e83a7`, validates it, calls held/tool/timer helpers, and hashes bytes only at `2e8404`. `InteractionCalls::class_name_2e5a54` instead returns an owned string captured at getter time, and `hash()` immediately hashes it. If intervening effects mutate native name bytes, the current value API cannot represent the mutation. This is an explicit copied-string boundary limitation, not a claim of sample-equivalent live aliasing. A future pointer-token plus copied-byte-reader interface would be needed to preserve that alias case. No pointer is executed and no live ABI is claimed.
