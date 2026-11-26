# Independent scalar/helper review

[C] Review begins read-only while parent immutable builds run. No source edits. Preserved DLL SHA256 and independently derived pdata/next-pdata extents are in byte_audit.json; all307150 disassembly fragments compare to virtual-layout DLL bytes. Full alternate tails are retained in math.asm, projectile.asm, font.asm and game.asm. No sample/executor execution.

## SG1 — game metadata/string setup root read precedes flag store

[C] game_helpers_analysis.cpp metadata_call/string_object set initialization bit2 before context() reads dispatcher3d5e60. Native371c38 reads dispatcher371d4a before flag store371d5e;370884 reads37092a before37093e;370aa4 reads370ae2 before370af6. Component3703ec/GameObject370638 have the opposite order and must remain distinct.

[I] Minimal copied-data counterexample: warm target/flags1 and readable cache cells, but missing dispatcher bytes. The literal ordered model stops before setting bit2, leaving flags1. Current C++ leaves3. Concrete affected wrappers:371c38,370884,370aa4. Parent accepted and reserved game_helpers_analysis.cpp/checks; edits await explicit build-settlement go.

## SG2 — spread local argument-packaging fields omitted

[C] projectile_spread_32bd4c calls api.spread directly at role32b7a0, omitting local deterministic context writes. Native32b800 writes DWORD ctx+D0=0x100;32b80a writes output pointer at+88 and spread low32 at+90;32b811 writes QWORD ctx+80=4;32b81c writes direction pointer at+98 and raw flag low8 at+A0. Unknown scalar-slot high bits, boolean-slot high bits and native return-slot pointer remain explicitly excluded.

[I] Minimal ordinary counterexample: fill context withAA, use a warm cache and valid output/direction, inspect known context fields from the typed spread effect. Native packaging changes them, but current C++ exposesAA. Materialize known fields before the actual matching-game effect; never execute a numeric target/context.

## SG3 — curve partial-failure argument mutation precedes omitted earlier spans

[C]32b728 writes unknown native WORD ctx+D2 at32b760 and unknown return-slot QWORD ctx+78 at32b76c, then known arguments at32b770. Current evaluate writes receiver/argument first, with no span checks atD2/+78.

[I] Copied snapshot ending atctx+98: current C++ changes+88/+90 before failing atD0. The literal ordered model must stop on unavailableD2 before either argument changes. Range-gate unknown stores in instruction order while retaining their unmaterialized bits. The Unity math module already uses this approach.

[U] Review is ongoing. No full goal-level pass is claimed from these findings. Matching external effects, excluded executor behavior and original native uninitialized bits remain limitations.

## SG4 — quaternion scalar-SSE NaN operand priority

[C] Native z term2ef959 adds xw+yz with xw in destinationxmm14. The prior C++ expression used yz+xw. With quaternion `{1, qNaN(7fc00011), 1, qNaN(7fc00022)}` and vector `{0,1,0}`, compiled GCC15 -O1 C++ returns z7fc00011, while an independent analyst-written per-operation SSE oracle returns7fc00022. No DLL instruction is executed. `quaternion_nan.cpp` and `nan_pairs.cpp/.txt` retain this evidence.

[C/I] Reordering the C++ expression alone still permits compiler commutation and fails the counterexample. The correction uses private ordered add/subtract/multiply helpers: choose the first NaN operand, quiet its signaling bit, otherwise perform ordinary binary32 arithmetic. Written groups follow native registers. Exception flags/traps and arbitrary FP environment remain excluded. This also avoids a compiler negating the sign of a source NaN during subtraction rewriting.

[C] Parent explicitly authorized edits to four reserved source files after both prior immutable builds passed. SG1-SG4 fixes and focused regressions are now implemented in those files; validation/reversions are recorded separately below. No other source/build/ledger was edited.
