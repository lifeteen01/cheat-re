#include "game_input_physics_internal.hpp"

namespace rust_internal_re {
using namespace game_input_detail;
GameBaseResult<bool> game_input_query_2e0f10(Snapshot &image, GameInputPhysicsRequest q,
                                             const GameInputPhysicsEnvironment &env,
                                             const GameInputPhysicsEffects &effects) {
    return protect<bool>([&] {
        q.final_integer = 0;
        const auto call = game_input_pack_2de874(image, physics_prepare(image, env, effects), q);
        return need(effects.query, 0x2e0fd1)(call, q) != 0;
    });
}
GameBaseResult<bool> game_input_query_pointers_2e0f10(
    Snapshot &image, const Snapshot &game, Address first, Address second, ReU32 mask,
    float radius, float first_scalar, float second_scalar, const GameInputPhysicsEnvironment &env,
    const GameInputPhysicsEffects &effects, const GameInputStackEvidence &stack) {
    return protect<bool>([&] {
        GameInputPhysicsRequest q;
        q.mask = mask;
        q.radius = radius;
        q.first_scalar = first_scalar;
        q.second_scalar = second_scalar;
        q.first_pointer = first;
        q.second_pointer = second;
        q.stack = stack;
        const auto call = game_input_pack_2de874(image, physics_prepare(image, env, effects), q);
        // [I]Typed final effect consumes copied pointee values after known native
        // argument stores. This preserves input/context aliasing without execution.
        q.first = read<Vec3>(game, first, 0x2e0fd1);
        q.second = read<Vec3>(game, second, 0x2e0fd1);
        return need(effects.query, 0x2e0fd1)(call, q) != 0;
    });
}
GameBaseResult<bool> game_input_query_2e2320(Snapshot &image, Vec3 first, Vec3 second,
                                             ReU32 mask, float a, float b,
                                             const GameInputPhysicsEnvironment &env,
                                             const GameInputPhysicsEffects &effects,
                                             const GameInputStackEvidence &stack) {
    GameInputPhysicsRequest q;
    q.first = first;
    q.second = second;
    q.mask = mask;
    q.radius = 0;
    q.first_scalar = a;
    q.second_scalar = b;
    q.stack = stack;
    return game_input_query_2e0f10(image, q, env, effects);
}
GameBaseResult<bool> game_input_query_copy_2e2320(Snapshot &image, const Snapshot &game,
                                                  Address first, Address second, ReU32 mask,
                                                  float a, float b,
                                                  const GameInputPhysicsEnvironment &env,
                                                  const GameInputPhysicsEffects &effects) {
    return protect<bool>([&] {
        const auto second_xy = read<ReU64>(game, second, 0x2e2324);
        const auto second_z = read<ReU32>(game, second + 8, 0x2e2328);
        const auto first_xy = read<ReU64>(game, first, 0x2e2336);
        const auto first_z = read<ReU32>(game, first + 8, 0x2e2353);
        const auto make = [](ReU64 xy, ReU32 z) {
            return re::re_bit_cast<Vec3>(
                re::ReArray<ReU32, 3>{ReU32(xy), ReU32(xy >> 32), z});
        };
        return required(game_input_query_2e2320(
            image, make(first_xy, first_z), make(second_xy, second_z), mask, a, b, env, effects));
    });
}
GameBaseResult<bool> game_input_ignore_329aa0(Snapshot &image, const Snapshot &game,
                                              ReI32 first, ReI32 second,
                                              ReU8 byte,
                                              const GameInputPhysicsEnvironment &env,
                                              const GameInputPhysicsEffects &effects,
                                              const GameInputStackEvidence &stack) {
    return protect<bool>([&] {
        const auto call = game_input_pack_3232d0(image, layer_prepare(image, game, env, effects),
                                                 first, second, byte, stack);
        need(effects.ignore_layer, 0x329b3b)(call, first, second, byte);
        return true;
    });
}
// [C] 0x2e98d8..0x2e98eb: adapter thunk discarding first argument (rcx).
// [C] Delegates second argument (rdx) through stride-24 offset computation (0x2e4404)
// and tail-calls null-guarded managed resolution (0x2cb050).
// [U] The managed resolution target at 0x2cb050 (→0x2ce5a4) is an unresolved effect.
Address game_input_stride_delegate_2e98d8(ReUSize index) {
    // [C] 0x2e4404: index * 24 with overflow guard against 0x0aaaaaaaaaaaaaaa.
    if (index > 0x0aaaaaaaaaaaaaaa)
        { (void)(GameBaseStatus::analysis_limit, 0x2e4404); __builtin_trap(); }
    const Address byte_offset = Address(index) * 24;
    // [C] 0x2cb050: returns 0 for null/zero input.
    if (!byte_offset) return 0;
    // [U] Remaining resolution at 0x2cb050+0x16 is an unresolved managed-object effect.
    return byte_offset;
}
} // namespace rust_internal_re
