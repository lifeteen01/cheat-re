#include "game_runtime_wrappers_domains.hpp"
#include "game_runtime_wrappers_internal.hpp"
namespace rust_internal_re {
namespace {
auto scalar(Snapshot &image, Snapshot &game, const GameRuntimeEnvironment &env,
            const GameRuntimeEffects &fx, Rva r) {
    return [&image, &game, env, fx, r] {
        auto value = runtime_detail::required(game_runtime_wrapper(image, game, r, {}, env, fx));
        if (const auto *result = re::re_get_if<float>(&value))
            return *result;
        { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
    };
}
} // namespace
MovementTickCalls bind_game_runtime_tick(Snapshot &image, Snapshot &game,
                                         const GameRuntimeEnvironment &env,
                                         const GameRuntimeEffects &fx, MovementTickCalls out) {
    out.time_31581c = scalar(image, game, env, fx, 0x31581c);
    out.time_2e6240 = scalar(image, game, env, fx, 0x2e6240);
    return out;
}
FrameRaidApi bind_game_runtime_raid(Snapshot &image, Snapshot &game,
                                    const GameRuntimeEnvironment &env, const GameRuntimeEffects &fx,
                                    FrameRaidApi out) {
    out.frame.effects =
        bind_game_runtime_dependencies(image, game, env, fx, re::re_move(out.frame.effects));
    return out;
}
WorldInteractionBackend bind_game_runtime_world_interaction(Snapshot &image, Snapshot &game,
                                                            const GameRuntimeEnvironment &env,
                                                            const GameRuntimeEffects &fx,
                                                            WorldInteractionBackend out) {
    out.time_2e6240 = scalar(image, game, env, fx, 0x2e6240);
    return out;
}
WorldFullOverlayBackend bind_game_runtime_world_overlay(Snapshot &image, Snapshot &game,
                                                        const GameRuntimeEnvironment &env,
                                                        const GameRuntimeEffects &fx,
                                                        WorldFullOverlayBackend out) {
    out.realtime_31581c = scalar(image, game, env, fx, 0x31581c);
    out.interaction =
        bind_game_runtime_world_interaction(image, game, env, fx, re::re_move(out.interaction));
    return out;
}
WorldWorkerBackend bind_game_runtime_world_worker(Snapshot &image, Snapshot &game,
                                                  const GameRuntimeEnvironment &env,
                                                  const GameRuntimeEffects &fx,
                                                  WorldWorkerBackend out) {
    out.interaction =
        bind_game_runtime_world_interaction(image, game, env, fx, re::re_move(out.interaction));
    return out;
}
} // namespace rust_internal_re
