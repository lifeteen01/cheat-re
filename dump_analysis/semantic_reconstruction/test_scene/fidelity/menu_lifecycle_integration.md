# Menu lifecycle integration handoff

[C] Read reconstructed/README.md, windows_base/README.md, menu_review.md,
current menu.cpp, semantic_checks.cpp, page/control/window/font bindings and
annotated instruction leaves. No sample execution or network operations.

[C] Implementation files are source/test_scene/menu.cpp and new
source/test_scene/menu_lifecycle_checks.cpp. Evidence is
source/test_scene/menu_evidence.md. No scene.hpp, host, build manifest or
reconstructed production source was edited by this implementation task.

[C] Strict GCC15 syntax validation passed for both TUs together on2026-11-24,
with C++20, -Wall -Wextra -Wpedantic -Werror, _GLIBCXX_ASSERTIONS and
-ffp-contract=off using the existing extracted compiler/sysroot.

[U] Runtime validation remains parent-owned. Syntax success is not runtime,
sanitizer, Wine, native Windows, Unity or original-output fidelity evidence.
The parent confirmed additional linked dependencies resolve. Initial broad build
was rejected by input-stability checks during concurrent edits, before runtime.

[C] Sources frozen for parent runtime after strict syntax at these SHA256s:

- menu.cpp: 4b8a5020b78c378ac8022730b364a620b945718e15d85d40286d7650ee8f9ea7
- menu_lifecycle_checks.cpp: 2cc9b4ef0a2bd0c890c2786e955cbb2c24179445cce724ffbded150f655105ad

[C] First exact-current parent runtime linked147 reconstructed TUs successfully,
then stopped at39334c in the original search-child controller. The owned effect
bridge lacked its label hash leaf. Added delegation to actual
menu_controls_hash_39334c with original string/count/seed and signed return bits.
Both TUs again pass strict syntax; no runtime PASS claimed for this revision yet.
Revised frozen SHA256s:

- menu.cpp: c242f42613e9db02fa43e89965b5ba8d033bc2c3a9a57557c2787b523a385eab
- menu_lifecycle_checks.cpp: 4d8bacb7be7645ab1d51b8a7432e2a472d86d3c42447e51ca77ccb668496a90b

[C] Parent subsequently reports exact-current strict147TU integration PASS,
103frames, all existing control/editor/ESP/capture checks and new native Favorites
retention/stack-balance/root-boundary regressions. Current source hashes match
the revised frozen hashes above. Strict runtime.log contains both new PASS lines.
No additional source edits after that successful revision. Parent continues
sanitizer/Wine/CMake validation on the same sources; these are not claimed here.

[I] Supported native route is dispatcher388b4c -> Favorites3354b4/35013c ->
search-child384df0 -> real nested child Begin/End and recovered controls.
Actual root Begin38cfa4/End390994, constructor3908d4 and window detail bindings
operate on stable owned Snapshot/draw/font resources. Only permitted Favorite
checkbox/slider requests execute. Embedded full picker remains an explicitly
authored callback extension, with the established editor plain-token/paste quirk.

[U] Full35d5ac/35fc8b root is intentionally not claimed. Regression exercises
its closed exit and missing initialized-category boundary rather than supplying
fake root/page success. Cold startup's21page registration/previsit and full
category/search/header/navbar/subtab/content graph remain unbound. Original
color-preview popup and original font setup remain unexercised. No95% claim.

[I] Extra reconstructed TUs: menu_pages_analysis.cpp, menu_pages_config.cpp,
menu_pages_players.cpp, menu_controls_frame.cpp, imgui_windows_bindings.cpp,
frame_dependencies_analysis.cpp, plus parent-integrated unity_backend_analysis.cpp
and that backend's rendering/metadata dependencies. Include new check TU in
CMake and invoke owned_scene::check_menu_lifecycle() from parent self-tests.
