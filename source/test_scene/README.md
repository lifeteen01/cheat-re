# Reconstructed internal-menu / ESP owned scene

This scene now executes the recovered menu root `35d5ac/35fc8b`, including all
21 original page initializations, and the full ESP root `3098a4`. It presents their
owned draw buffers together. This is local reconstructed execution over explicit
fixtures, not proof of equivalence to the dump or working live Rust integration.
The requested base is unfinished; [REQUIREMENTS.md](REQUIREMENTS.md) retains every
open requirement, including spoofcall, no CRT/imports, live hooks and Unity GPU work.

## Reproduce

From the workspace root, using the extracted local toolchains:

```sh
python3 source/test_scene/verify.py --mode strict
python3 source/test_scene/verify.py --mode sanitizer
python3 source/test_scene/verify.py --mode windows
python3 source/test_scene/verify_cmake.py
python3 dump_analysis/semantic_reconstruction/run_verification.py test_scene_fidelity_regression_strict --cached
python3 dump_analysis/semantic_reconstruction/run_verification.py test_scene_fidelity_regression_sanitizer --cached --sanitize
python3 dump_analysis/semantic_reconstruction/test_scene/fidelity/check_evidence_pairing.py
python3 source/test_scene/audit.py
```

Each runtime verifier uses a bounded600-second runtime limit (overridable with
`--timeout`), records timeouts as failures, hashes build dependencies/artifacts and checks all **135**
original manifest inputs before/after execution. Objects are reused only with
matching compiler, flags, dependencies and object bytes; linking and tests still run.
The audit rejects stale builds, evidence pairing, captures and source sets.
Evidence lives under `dump_analysis/semantic_reconstruction/test_scene/`.
The aggregate `final_audit.json` distinguishes owned verification from completion of
the requested internal base. Do not reuse historical PASS results after edits.

Windows mode cross-compiles the authored scene and runs it in an owned Wine/Xvfb
prefix. It compares actual Win32 client captures pixel-for-pixel with the CPU scene
buffer and checks event routing and shutdown. Native Windows and inside Rust remain
unvalidated. `build.py --mode windows` builds without running. On Windows, launch
`owned_scene.exe --profile C:\path\to\offsets.json`; without `--self-test` it runs
a 16ms timer/message loop. F1 toggles the menu through the persistent recovered edge
controller; arrows move the owned camera, A/D move entities, F5 reloads, Escape exits.
Editor capture suppresses scene shortcuts; recovered frame F1 uses its actual
ignore-capture argument. Presses entirely between sampled frames are not buffered.

CMake remains opt-in (`RE_BUILD_TEST_SCENE=ON`); `verify_cmake.py` supplies the local
compiler/sysroot and records configure/build/CTest hashes. The existing Windows
base remains separately preserved.

## Executed composition

`prepare_ui` consumes routed recovered IO, prepares the shared window backend once,
and binds it to ESP. ESP runs before menu contents. `finish_frame` collects visible
world/menu/child/popup lists once before frame export/submission. Hidden menu frames
still prepare/collect world windows and execute the closed menu root; minimized
frames cancel menu capture without running the Unity frame controller. Tests use
explicit owned glyph probes to make otherwise empty mandatory world-window lists
nonempty, then verify their actual export/submission with the menu hidden/open.
Those probes are not recovered overlay geometry.

Cold startup runs the real page graph rather than seeding its initialized flags.
The Settings page copies the explicit owned scale percentage `3fcc88=100` into its
own initialized cell and derives scale1. Category/subtab names/icons, palette,
font buckets, deterministic random source and initial configuration are fixture
inputs. Interactive selection outside Favorites is still refused and remains open.
The full root uses its recovered 850-by-580 scale-dependent sizing and header,
navbar, main/content composition; the old compact selected-page bypass is gone.

Favorites requests still contain the three ESP/Boxes/Names checkboxes, distance
slider and ESP color cell. They reach real reconstructed controls, animated popup,
complete color picker and hex editor. The original ordinary-character no-insert
and alpha-parsing quirks remain; paste/selection uses an explicit owned clipboard
string. Menu changes affect **next frame's** ESP, preserving recovered ordering.

The full ESP root executes mandatory violation/warning windows, player selection,
projection/boxes/names, disabled-feature simulation/cache and registry time/cooldown.
The five owned entities, final Unity object/Transform values, pinhole camera,
empty registry/candidate spans and disabled optional features remain inputs.
Actual `36cd20` depth/bounds/Y-flip and `361bcc` font selection/nine text passes feed
the shared recovered draw-core buffers. ASCII atlas pixels and CPU/GDI rendering
remain authored backends, not original fonts or Unity GPU submission.

The recovered Client initializer/signature traversal/copied MethodInfo installer
supplies the saved original key used by the frame controller. Numeric keys are
bounded owned data; no executable original or native game hook is called. Unity
resource/upload/command controllers record typed effects and real geometry payloads;
`submitted` means an owned command sink accepted them. GPU execution remains false.

## Offset consumer

The profile preserves **219 named entries**. The scene consumes
`field.player_display_name_reference.338`: changing `0x338` to `0x340` and reloading
changes actual bounded source-field reads and rendered names to Alt Aster/Birch/Cedar.
A host layout adapter stages that pointer into the forensic worker's fixed layout;
it does not claim a current game ABI. Other218 values are validated/preserved but
not scene consumers. Incompatible reloads retain the last valid profile.

## Evidence and remaining requirements

[VALIDATION.md](VALIDATION.md) records fresh commands/results and capture semantics;
[SEMANTIC_FIDELITY.md](SEMANTIC_FIDELITY.md) distinguishes recovered work from host
boundaries. Module details are in `menu_evidence.md`, `esp_evidence.md`,
`frame_evidence.md` and `resources_evidence.md`. `runtime_evidence.html` references
current Wine captures. Pre-integration versions of these records are retained in
`dump_analysis/semantic_reconstruction/test_scene/integration_history/`.

No original-source fidelity percentage is established. The separate [freestanding executor](/home/john/Desktop/cheat_re/source/freestanding/README.md) now runs without CRT/import dependencies. Native context selection, scene/base gate integration and the remainder of the freestanding runtime remain local implementation work. The current
Windows demo imports msvcrt, KERNEL32, USER32 and GDI32; the audit inspects its PE.
Actual Unity GPU submission, live ESP and native game hooks/original-call ABI require
matching **GameAssembly.dll, UnityPlayer.dll and global-metadata.dat**, plus runtime
validation. Their absence does not excuse local composition/runtime work.

The preserved dump SHA256 is
`ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`;
its layout is virtual (file offset equals RVA). Originals are not executed, modified
or uploaded, listed IOCs are not contacted, and `~/malware-lab/analysis/` is untouched.
