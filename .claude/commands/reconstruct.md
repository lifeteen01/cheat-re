# Cheat DLL Full Reconstruction Manager Loop

You are the **manager** of an iterative reconstruction effort. The goal: produce a complete, working C++ source reconstruction of every function in the original cheat DLL (`dump_analysis/dumps/pesieve_cheat/process_4248/7ffa2a960000.cheat.dll`), targeting **95% semantic match** — no stubs, no shortcuts, every callback implemented with real logic.

## Architecture

You run in a loop. Each iteration you do ONE round of the cycle below, then yield. You NEVER get stuck — if something is blocked, you note it and move to the next workable item.

## The Cycle (every iteration)

### Phase 1: Assess (you do this yourself, quickly)

1. Read `dump_analysis/semantic_reconstruction/reconstruct_loop_state.json` — this is your persistent state file tracking what's done, what's in-progress, and what's next.
2. If the state file doesn't exist, create it by reading the completion ledger (`source/reconstructed/completion_ledger.json`) and inventorying the current reconstruction.
3. Determine what the NEXT highest-impact batch of work is. Priority order:
   - Functions with 0% coverage (completely missing from reconstruction)
   - Stub callbacks/returns that can be filled from the dump's own bytes
   - Functions that are translated but have known byte mismatches
   - Review/audit of recently completed work
   - Internal wiring (connecting already-reconstructed functions to each other)
   - Game API boundary stubs (mark these as "needs game binaries" and skip)

### Phase 2: Dispatch Reconstruction (spin up sub-agents)

Launch **2-3 sub-agents in parallel** (use `Agent` tool with `subagent_type: "fork"`), each assigned a specific focused task:
- Each agent gets a SPECIFIC list of functions/RVAs to reconstruct or fix
- Each agent is told to use REA tools (`open_binary`, `procedure_pseudo_code`, `procedure_assembly`) on the cheat DLL dump to decompile the target functions
- Each agent writes its reconstructed C++ to new or existing files in `source/reconstructed/`
- Each agent updates the specific functions it touched

**Agent prompt template** — adapt per task:
```
You are reconstructing functions from a cheat DLL dump. The dump is at:
  dump_analysis/dumps/pesieve_cheat/process_4248/7ffa2a960000.cheat.dll
The existing reconstruction is in: source/reconstructed/

Your specific task: [DESCRIBE EXACT FUNCTIONS/RVAS/FILES]

Steps:
1. Open the dump in REA with open_binary
2. For each target function, use procedure_pseudo_code to decompile it
3. Write semantically equivalent C++ that matches the original logic
4. Use the existing code style (see nearby .cpp files for patterns)
5. Verify byte sequences from the dump appear in your reconstruction comments
6. Update the file and ensure it compiles with the existing build

Write all changes directly to source/reconstructed/. Report what you did in your final message.
```

### Phase 3: Wait & Collect

Wait for sub-agents to complete. Read their results.

### Phase 4: Review (spin up review agents)

For each batch of work that completed, launch **1-2 review agents** that:
- Read the NEW or CHANGED .cpp files
- Cross-reference against the dump bytes (use REA or read .asm excerpts)
- Check for: wrong control flow, missing branches, incorrect constants/offsets, simplified logic, false assumptions about struct layouts
- Fix any issues they find directly in the source files
- Report confirmed issues vs false positives

**Review agent prompt template:**
```
You are reviewing reconstructed C++ for byte-accuracy against the original dump.
The dump is at: dump_analysis/dumps/pesieve_cheat/process_4248/7ffa2a960000.cheat.dll

Review these files that were just written/changed: [LIST FILES]

Steps:
1. Open the dump in REA
2. For each function in the files, decompile the original with procedure_pseudo_code
3. Compare the reconstruction against the decompilation — check every branch, every constant, every struct offset
4. Fix any discrepancies directly in the source files
5. Report: what was correct, what you fixed, what remains uncertain
```

### Phase 5: Update State

Update `reconstruct_loop_state.json` with:
- What was completed this round
- What was attempted but failed/blocked
- What review found
- What the next priority batch should be
- Running totals: functions_done, functions_remaining, stubs_remaining, accuracy_estimate

### Phase 6: Navigate (if unsure what's next)

If you're not sure what to work on next, spin up a **navigator agent** (fork):
```
Read the reconstruction state at dump_analysis/semantic_reconstruction/reconstruct_loop_state.json
and the completion ledger at source/reconstructed/completion_ledger.json.
Compare against the dump's function table. Identify the highest-impact next batch
of work — functions that are (a) uncharted, (b) called by existing code, (c) large enough
to matter. Prioritize internal cheat logic over library code.
Report: the top 10 functions to reconstruct next with their RVAs and why they matter.
```

Then follow the navigator's recommendation on the next iteration.

## Rules

- **Never get stuck.** If a function needs game binaries you don't have, mark it `blocked:game_artifacts` and move on.
- **Batch small.** 2-3 agents per round, 3-5 functions each. Quality over quantity.
- **Always verify.** Every reconstruction round gets a review round.
- **Track everything.** The state file is your memory across iterations.
- **Use REA.** The reverse engineering tools can decompile any function in the dump — use them.
- **Compile check.** After changes, run the build to verify nothing broke.
- **95% semantic match** means: same control flow, same data access patterns, same side effects. Register allocation and instruction scheduling differences from compiler choice are acceptable.
- **No fabrication.** If you can't determine what a function does from the dump, say so. Don't invent behavior.
