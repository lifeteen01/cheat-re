# Cheat DLL Injectable Build Loop

You are iteratively working to make the reconstructed cheat DLL a fully functional, injectable Windows DLL. The reconstruction is complete as analysis — your job is **integration**: wiring all the reconstructed subsystems together so the DLL can be injected into the game and every hook, ESP overlay, aim system, menu, and config pipeline actually executes.

## State File

Track progress in `dump_analysis/semantic_reconstruction/injectable_build_state.json`. Read it first every iteration. If it doesn't exist, create it.

State schema:
```json
{
  "iteration": 0,
  "phase": "assess|domain_dispatch|embedded_bundles|imgui_pipeline|game_memory|build_test|review",
  "completed": ["list of completed integration tasks"],
  "in_progress": "current task description",
  "blocked": ["tasks that need external deps"],
  "next_priority": ["ordered list of next tasks"],
  "build_status": "compiles|errors|not_tested",
  "last_error": "last build error if any",
  "domain_dispatch_coverage": {"wired": 0, "total": 46, "rvas_done": []},
  "notes": "free-form observations"
}
```

## Integration Tasks (Priority Order)

### 1. Domain Dispatcher (`UnityFrameApi::domain`)
The central dispatch in `game_init_runtime.cpp::build_frame_api()` is missing the `domain` callback. This routes RVA-keyed calls from `replay_unity_frame_2f8574` to:
- **Reconstructed functions** (frame_dependencies, hook_setup, menu, ESP, aim, etc.)
- **Runtime IL2CPP calls** (Screen.width, Time.deltaTime, etc. via resolved callbacks)
- **Frame dependency API calls** (file I/O, directory ops)

Build a dispatch table mapping each RVA to its handler. The handlers are already reconstructed — they just need runtime wiring.

### 2. Embedded Asset Bundles (`embedded_bytes` callback)
8 embedded blobs (ImGui fonts, UI assets) at known DLL offsets need to be read from the DLL's own image in memory. Wire `api.embedded_bytes` to read from `g_state.own_module` base + RVA.

### 3. Game Memory Access (`copied_pointer`, `copied_game`)
Wire `api.copied_pointer` to do SEH-protected reads from game memory.
Wire `api.copied_game` to build a snapshot of GameAssembly.dll for the frame.

### 4. ImGui Draw Pipeline (`finalized_draw_data_3924bc`)
Wire the ImGui rendering pipeline. The reconstructed draw list, menu, and ESP code feeds into `UnityDrawData`. The `finalized_draw_data_3924bc` callback needs to collect and return this data.

### 5. Build System
Ensure CMake cross-compilation works with MSVC or MinGW-w64 for x86-64. Test compilation incrementally.

### 6. Full Frame Pipeline Test
Once all callbacks are wired, test that `replay_unity_frame_2f8574` can execute without hitting `stop(UnityStatus::missing_dependency, ...)` for any domain dispatch.

## The Cycle (every iteration)

### Phase 1: Assess
1. Read the state file
2. Try building if not recently tested: `cd source && cmake --preset=win64 -B build_win64 && cmake --build build_win64 --target cheat 2>&1 | tail -50`
3. Determine the highest-impact task that's not blocked

### Phase 2: Implement
Pick ONE focused task from the priority list. For large tasks (like domain dispatch), break into sub-batches of 5-10 RVAs per iteration.

For domain dispatch wiring:
- Read the target RVA's reconstructed function signature
- Write the lambda/function pointer that calls it with proper argument conversion
- Add it to the dispatch table in `game_init_runtime.cpp` or a new `domain_dispatch.cpp`

For other tasks:
- Implement directly, keeping changes small and testable

### Phase 3: Build Test
Run the Windows cross-build (or at minimum compile the changed files). Fix any errors.

### Phase 4: Update State
Update the state file with what was done, what's next.

## Rules

- **One task per iteration.** Small, focused changes that can be verified.
- **Build after every change.** If it doesn't compile, fix it before moving on.
- **Never fabricate.** If a function's signature or behavior is unclear, check it against the dump with REA tools.
- **Mark blocked.** If something needs game binaries or ImGui source, note it and move on.
- **Use existing code.** The reconstructed functions already exist — you're wiring them, not rewriting them.
- **SEH for game reads.** All game memory access must be wrapped in `__try/__except` for crash safety.
- **Keep the offline build working.** Changes for the injectable build must not break `verify.sh`.
