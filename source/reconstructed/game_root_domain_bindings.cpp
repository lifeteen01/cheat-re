#include "game_root_domain_bindings.hpp"

namespace rust_internal_re {
namespace {
template <class T> T require(GameBaseResult<T> result) {
    if (result.status != GameBaseStatus::complete)
        { (void)(result.status, result.site); __builtin_trap(); }
    return result.value;
}
auto local(Snapshot &globals, GameRootEnvironment env, GameRootEffects api) {
    return
        [&globals, env, api] { return require(game_root_local_player_2dda9c(globals, env, api)); };
}
auto camera(Snapshot &globals, const Snapshot &game, GameRootEnvironment env, GameRootEffects api) {
    return [&globals, &game, env, api] {
        return require(game_root_camera_2e069c(globals, game, env, api));
    };
}
auto gate(const Snapshot &globals, const Snapshot &game, GameRootEnvironment env) {
    return
        [&globals, &game, env] { return require(game_root_gate_2e0e4c(globals, game, env)) != 0; };
}
} // namespace
MovementTickCalls bind_game_roots_tick(Snapshot &globals, const Snapshot &game,
                                       const GameRootEnvironment &env, const GameRootEffects &api,
                                       MovementTickCalls out) {
    out.player_2dda9c = local(globals, env, api);
    out.context_2e069c = camera(globals, game, env, api);
    out.predicate_2e0e4c = gate(globals, game, env);
    return out;
}
BoneQueries bind_game_roots_bones(Snapshot &globals, const Snapshot &game,
                                  const GameRootEnvironment &env, const GameRootEffects &api,
                                  BoneQueries out) {
    out.local_2dda9c = local(globals, env, api);
    out.camera_2e069c = camera(globals, game, env, api);
    return out;
}
InstantHitQueries bind_game_roots_instant(Snapshot &globals, const Snapshot &game,
                                          const GameRootEnvironment &env,
                                          const GameRootEffects &api, InstantHitQueries out) {
    out.game = bind_game_roots_aim(globals, game, env, api, re::re_move(out.game));
    out.local_2dda9c = local(globals, env, api);
    return out;
}
FrameDependencyApi bind_game_roots_dependencies(Snapshot &globals, const Snapshot &game,
                                                const GameRootEnvironment &env,
                                                const GameRootEffects &api,
                                                FrameDependencyApi out) {
    out.unity = bind_game_roots_frame(globals, game, env, api, re::re_move(out.unity));
    out.player_2e069c = camera(globals, game, env, api);
    out.disconnected_2e0e4c = gate(globals, game, env);
    return out;
}
FrameRaidApi bind_game_roots_raid(Snapshot &globals, const Snapshot &game,
                                  const GameRootEnvironment &env, const GameRootEffects &api,
                                  FrameRaidApi out) {
    out.frame.effects =
        bind_game_roots_dependencies(globals, game, env, api, re::re_move(out.frame.effects));
    out.camera_2e069c = camera(globals, game, env, api);
    out.player_2dda9c = local(globals, env, api);
    return out;
}
} // namespace rust_internal_re
