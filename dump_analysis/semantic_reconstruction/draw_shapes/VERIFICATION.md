# Focused verification

[C] `./dump_analysis/semantic_reconstruction/draw_shapes/build.sh` compiled and ran the final five shape translation units and fixture entry point successfully under GCC15 C++20, `-Wall -Wextra -Wpedantic -Werror -D_GLIBCXX_ASSERTIONS -ffp-contract=off`. Output: `draw_shapes checks passed`.

[C] `./dump_analysis/semantic_reconstruction/draw_shapes/build.sh sanitize` compiled and ran the same final implementation/fixtures with nonrecovering AddressSanitizer and UndefinedBehaviorSanitizer. Output: `draw_shapes checks passed`. The original DLL was only read, never loaded/executed.

[C] `python3 dump_analysis/semantic_reconstruction/draw_shapes/audit.py` passed:4252 original instruction lines byte-checked,518 direct branch/call sites with in-range targets validated,40 translated ranges/12695bytes,131 E8 world routes checked. Seven untranslated controllers total4949bytes and remain explicit failures. No unclassified direct dependencies in the audited range inventory.

[C] Preserved original DLL SHA256: `ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090`.

[U] Full parent combined build, live game/Windows/Unity/device behavior, all CPU floating-point environments and unresolved meter implementations are outside this focused verification. No existing build/ledger/source files outside the assigned new draw_shapes files were edited.
