# Analysis dependency failure propagation

[I] Error statuses and exceptions are analyst interfaces, not native game exception semantics. [C] `analysis_failure.hpp` maps metadata-wrapper status to snapshot-domain status while preserving the reached RVA. Valid native zero/false results remain distinct from missing bytes/effects.

[C] Composition review found that allocation/cache bindings threw a generic runtime error, while several result-returning sky, Unity, interaction, projectile-update and movement routines did not catch the typed failures their concrete dependencies emit. Those paths now return the domain's failure status and original dependency RVA. They preserve earlier mutations, including lazy flag stores and projectile field clears. Unrelated exceptions are not converted into fabricated native success.

[C] Fixtures compose the actual metadata-wrapper binder into curve, model, Raycast and Unity cache controllers. Missing export resolution stops after both levels' bit1 writes. Separate fixtures check a missing curve effect through its public binding, failed allocator reservation, projectile clear-before-failure and the launch controller's typed getter failure. [U] This is not proof that all transitive bindings are complete; renderer/menu/game effects and broader independent reviews remain listed in [PROGRESS.md](/home/john/Desktop/cheat_re/source/PROGRESS.md).
