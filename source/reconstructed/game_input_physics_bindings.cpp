#include "game_input_physics_internal.hpp"

namespace rust_internal_re {
using namespace game_input_detail;
namespace {
template <class T, class V> T argument(re::ReSpan<const V> values, ReUSize n, Rva site) {
    if (n < values.size())
        if (const auto p = re::re_get_if<T>(&values[n]))
            return *p;
    { (void)(GameBaseStatus::missing_boundary, site); __builtin_trap(); }
}
template <class V> ReU32 integer(re::ReSpan<const V> values, ReUSize n, Rva site) {
    if (n < values.size()) {
        if (const auto p = re::re_get_if<ReU32>(&values[n]))
            return *p;
        if (const auto p = re::re_get_if<ReI32>(&values[n]))
            return ReU32(*p);
    }
    { (void)(GameBaseStatus::missing_boundary, site); __builtin_trap(); }
}
template <class V> ReI32 key(re::ReSpan<const V> values, ReUSize n, Rva site) {
    return re::re_bit_cast<ReI32>(integer(values, n, site));
}
} // namespace
UnityApi bind_game_input_physics_frame(Snapshot &image, const Snapshot &game,
                                       GameInputKeyStore &store,
                                       const GameInputPhysicsEnvironment &env,
                                       const GameInputPhysicsEffects &effects, UnityApi api) {
    const auto prior = api.external;
    api.external = [&image, &game, &store, env, effects,
                    prior](Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (r == 0x2e6744)
            return required(game_input_captured_2e6744(image, env, effects));
        if (r == 0x2e5e4c)
            return required(game_input_key_2e5e4c(image, game, argument<ReI32>(args, 0, r),
                                                  argument<bool>(args, 1, r), env, effects));
        if (r == 0x2e8910)
            return required(game_input_edge_2e8910(image, game, store,
                                                   argument<ReI32>(args, 0, r),
                                                   argument<bool>(args, 1, r), env, effects));
        if (r == 0x2e9c7c)
            return required(
                game_input_key_mode_2e9c7c(image, game, argument<ReI32>(args, 0, r),
                                           argument<ReI32>(args, 1, r), env, effects));
        if (r == 0x2e68b8 || r == 0x2e90d8 || r == 0x2e8e88)
            return required(
                game_input_button(image, r, argument<Address>(args, 0, r), env, effects));
        if (r == 0x2e5eec || r == 0x2e5ff8)
            return required(game_input_object(
                image, r, r == 0x2e5eec ? 0 : argument<Address>(args, 0, r), env, effects));
        if (r == 0x2e2320)
            return required(game_input_query_2e2320(
                image, argument<Vec3>(args, 0, r), argument<Vec3>(args, 1, r),
                ReU32(argument<ReI32>(args, 2, r)), argument<float>(args, 3, r),
                argument<float>(args, 4, r), env, effects));
        if (r == 0x329aa0) {
            required(game_input_ignore_329aa0(
                image, game, argument<ReI32>(args, 0, r), argument<ReI32>(args, 1, r),
                ReU8(argument<bool>(args, 2, r)), env, effects));
            return re::ReMonostate{};
        }
        // [I]Raw3214f4/32225c/2e480c require an explicit GameInputCall context.
        // Legacy domain arguments contain target code, which cannot identify it.
        return prior ? prior(r, args) : re::re_nullopt;
    };
    return api;
}
FrameDependencyApi bind_game_input_physics_dependencies(Snapshot &image, const Snapshot &game,
                                                        GameInputKeyStore &store,
                                                        const GameInputPhysicsEnvironment &env,
                                                        const GameInputPhysicsEffects &effects,
                                                        FrameDependencyApi api) {
    api.unity = bind_game_input_physics_frame(image, game, store, env, effects, api.unity);
    api.key_2e5e4c = [&image, &game, env, effects](ReI32 key, bool suppress) {
        return re::ReOptional<bool>(
            required(game_input_key_2e5e4c(image, game, key, suppress, env, effects)));
    };
    api.input_captured_2e6744 = [&image, env, effects] {
        return re::ReOptional<bool>(required(game_input_captured_2e6744(image, env, effects)));
    };
    return api;
}
MovementMainCalls bind_game_input_physics_movement(Snapshot &image, const Snapshot &game,
                                                   GameInputKeyStore &store,
                                                   const GameInputPhysicsEnvironment &env,
                                                   const GameInputPhysicsEffects &effects,
                                                   MovementMainCalls calls) {
    const auto prior_predicate = calls.predicate;
    calls.predicate = [&image, &game, &store, env, effects,
                       prior_predicate](Rva r, MovementMainArguments a) {
        if (r == 0x2e6744)
            return required(game_input_captured_2e6744(image, env, effects));
        if (r == 0x2e5e4c)
            return required(game_input_key_2e5e4c(image, game, key(a, 0, r),
                                                  argument<bool>(a, 1, r), env, effects));
        if (r == 0x2e8910)
            return required(game_input_edge_2e8910(image, game, store, key(a, 0, r),
                                                   argument<bool>(a, 1, r), env, effects));
        if (r == 0x2e2320)
            return required(game_input_query_2e2320(
                image, argument<Vec3>(a, 0, r), argument<Vec3>(a, 1, r), integer(a, 2, r),
                argument<float>(a, 3, r), argument<float>(a, 4, r), env, effects));
        return need(prior_predicate, r)(r, a);
    };
    const auto prior_effect = calls.effect;
    calls.effect = [&image, &game, env, effects, prior_effect](Rva r, MovementMainArguments a) {
        if (r == 0x329aa0) {
            required(game_input_ignore_329aa0(image, game, key(a, 0, r), key(a, 1, r),
                                              ReU8(argument<bool>(a, 2, r)), env, effects));
            return;
        }
        // [I]Do not mistake MovementMain's first raw helper value (target code)
        // for the missing native context pointer. Parent binds those caller sites.
        need(prior_effect, r)(r, a);
    };
    return calls;
}
ProjectileBoundaries bind_game_input_physics_projectile(Snapshot &image,
                                                        const GameInputPhysicsEnvironment &env,
                                                        const GameInputPhysicsEffects &effects,
                                                        ProjectileBoundaries calls) {
    calls.query_2e2320 = [&image, env, effects](Vec3 first, Vec3 second, ReU32 mask,
                                                float a, float b) {
        return required(game_input_query_2e2320(image, first, second, mask, a, b, env, effects));
    };
    return calls;
}
AimWeaponCalls bind_game_input_physics_aim(Snapshot &image, const Snapshot &game,
                                           const GameInputPhysicsEnvironment &env,
                                           const GameInputPhysicsEffects &effects,
                                           AimWeaponCalls calls) {
    calls.key_2e5e4c = [&image, &game, env, effects](ReI32 key, bool suppress) {
        return required(game_input_key_2e5e4c(image, game, key, suppress, env, effects));
    };
    return calls;
}
} // namespace rust_internal_re
