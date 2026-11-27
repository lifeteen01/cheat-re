# Cheat DLL Reconstruction Project

## Overview
Reverse engineering reconstruction of a Rust game cheat DLL from memory dumps. The goal is complete C++ source that semantically matches every function in the original binary (95%+ match).

## Key Paths
- **Original dump**: `dump_analysis/dumps/pesieve_cheat/process_4248/7ffa2a960000.cheat.dll` (27MB PE, virtual layout)
- **Reconstructed source**: `source/reconstructed/` (336 .cpp files, 241 .o outputs)
- **Completion ledger**: `source/reconstructed/completion_ledger.json` (66 units, tracks status)
- **Loop state**: `dump_analysis/semantic_reconstruction/reconstruct_loop_state.json`
- **Byte excerpts**: `dump_analysis/semantic_reconstruction/*/` (.asm files with verified dump bytes)
- **Build script**: `source/reconstructed/verify.sh`

## Reconstruction Approach
- Write C++ that implements the same logic as the original x86-64 machine code
- The original was compiled with MSVC; reconstruction compiles with GCC/Clang
- Byte-level match of excerpts is verified; semantic equivalence is the primary goal
- Functions use callback interfaces where game API calls occur (these are the "stubs")

## Build
```bash
cd source/reconstructed && bash verify.sh
```

## Commands
- `/reconstruct` — Manager loop: spins up sub-agents to reconstruct functions from the dump, then review agents to verify. Tracks state across iterations. Run with `/loop /reconstruct` for continuous operation.

## Blockers
Three units require matching game binaries not present in the dump:
- `GameAssembly.dll` — IL2CPP runtime, game class layouts
- `UnityPlayer.dll` — Unity engine APIs
- `global-metadata.dat` — IL2CPP metadata for type resolution

## Rules for Reconstruction Agents
- Use REA tools (`open_binary`, `procedure_pseudo_code`, `procedure_assembly`) to decompile from the dump
- Match control flow, constants, struct offsets, and data access patterns from the original
- Never fabricate behavior — if unsure, mark as uncertain
- All game API boundary calls that need external binaries: mark `blocked:game_artifacts`, don't stub with fake logic
- Keep the existing code style (see `.clang-format` in reconstructed/)
