# Frame inventory and naming composition

[I] `bind_frame_game_helpers` connects the frame's typed value interface to the28 field getters, concrete inventory/count/index/texture/held wrappers and reconstructed player/item names. Other domain operations retain their supplied adapter. Snapshots, name state, RNG effects and the result slot remain borrowed; callers must preserve their lifetimes.

[C] `37224c` retains raw DWORD count bits through an int32 projection. `3722f0` retains the caller's index bits and the helper's wrapping32-bit multiplication/zero-extension, without adding a count check. `371c38` remains texture retrieval; `372398` supplies naming. Metadata/game effects still flow through their concrete wrapper/cache bodies before supplied leaf results are consumed.

[C] Missing bytes/effects propagate through `SnapshotBindingFailure` with the original RVA, and the frame overlay's result boundary now converts those typed failures without losing prior writes. The last binding result remains available separately. Native zero pointers, false predicates and empty names remain ordinary values. [C] [Fixtures](/home/john/Desktop/cheat_re/source/reconstructed/frame_game_binding_checks.cpp) cover raw count/ID bits, indexed retrieval independent of count, NPC naming, missing snapshot fields and a typed font-measurement failure returned by the text fitter.

[U] This does not complete every frame domain or ImGui primitive. Menu pages/custom controls, further rendering composition and matching Unity/game/ABI data remain separately tracked in [PROGRESS.md](/home/john/Desktop/cheat_re/source/PROGRESS.md). No copied address is invoked and no native filesystem call is made by these bindings.
