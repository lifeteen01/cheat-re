#include "game_input_physics_internal.hpp"

namespace rust_internal_re::game_input_detail {
namespace {
struct MethodSpec {
    Rva wrapper, flags, target, context, flags_read, flag_one, target_read, flags_reload,
        target_store, warm_target, setup_root, flag_two, effect_root, observe_site,
        method_constructor, namespace_constructor, class_constructor, packer;
};
#include "game_input_physics_specs.inc"
const MethodSpec &method(Rva r) {
    for (const auto &s : method_specs)
        if (s.wrapper == r)
            return s;
    { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
}
void setup(Snapshot &image, GameInputCall &call, ReU32 flags, Address cell, Rva root_read,
           Rva flag_store, Rva site, const GameInputPhysicsEnvironment &env,
           const GameInputPhysicsEffects &effects) {
    if (!(flags & 2)) {
        call.dispatcher = read<Address>(image, env.module + 0x3d5e60, root_read);
        write(image, cell, flags | 2u, flag_store);
        need(effects.observe_context, site)(call);
    }
}
Address resolve_icall(Snapshot &image, const Snapshot &game, re::ReStringView name,
                      const GameInputPhysicsEnvironment &env,
                      const GameInputPhysicsEffects &effects) {
    const auto g = [&](Rva r) { return env.module + r; };
    auto flags = read<ReU32>(image, g(0x3f2840), 0x32a942);
    Address target;
    if (!(flags & 1)) {
        write(image, g(0x3f2840), flags | 1u, 0x32a95c);
        // [C]Module/export literals are decoded before the copied loader walk.
        const auto export_name =
            store_literal(image, env, 512, literal_string(image, env.module, 0x323b58), 0x32a962);
        const auto module_name =
            store_literal(image, env, 640, literal_string(image, env.module, 0x32392c), 0x32a97c);
        const auto module = game_input_module_3cb058(image, game, module_name, env);
        target = game_input_export_3caed0(game, image, module, export_name, env.maximum_steps);
        write(image, g(0x3f2838), target, 0x32a99f);
        flags = read<ReU32>(image, g(0x3f2840), 0x32a9a6);
    } else
        target = read<Address>(image, g(0x3f2838), 0x32a9ae);
    GameInputCall call{0x32a938, 0x2cb9fc, 0x3cdbd4, 0, target, g(0x3f2850)};
    setup(image, call, flags, g(0x3f2840), 0x32a9b9, 0x32a9cd, 0x32a9d3, env, effects);
    call.dispatcher = read<Address>(image, g(0x3d5e60), 0x32a9d8);
    // [I]The actual native stack pointer to name is unmaterialized. The owned
    // string is consumed separately by the required typed IL2CPP effect.
    call = pack_object(image, call, re::re_nullopt);
    return need(effects.resolve_icall, 0x2cb9fc)(call, name);
}
} // namespace
GameInputCall method_prepare(Snapshot &image, Rva wrapper, const GameInputPhysicsEnvironment &env,
                             const GameInputPhysicsEffects &effects) {
    const auto &s = method(wrapper);
    const auto g = [&](Rva r) { return env.module + r; };
    auto flags = read<ReU32>(image, g(s.flags), s.flags_read);
    Address target;
    if (!(flags & 1)) {
        write(image, g(s.flags), flags | 1u, s.flag_one);
        const auto empty =
            store_literal(image, env, 0, literal_string(image, env.module, 0x2cc730), 0x2cc730);
        const auto method_name =
            store_literal(image, env, 64, literal_string(image, env.module, s.method_constructor),
                          s.method_constructor);
        const auto ns = store_literal(image, env, 192,
                                      literal_string(image, env.module, s.namespace_constructor),
                                      s.namespace_constructor);
        const auto class_name =
            store_literal(image, env, 320, literal_string(image, env.module, s.class_constructor),
                          s.class_constructor);
        const auto klass = metadata_value(
            resolve_class_334224(effects.metadata, class_name, ns, env.metadata_limits), 0x334224);
        const auto info = metadata_value(
            select_parameter_method_3349ac(image, effects.metadata, klass, method_name, -1, empty,
                                           -1, env.metadata_limits),
            0x3349ac);
        target = read<Address>(image, info, s.target_read);
        // [C]These six bodies reload flags BEFORE the cached target store.
        flags = read<ReU32>(image, g(s.flags), s.flags_reload);
        write(image, g(s.target), target, s.target_store);
    } else
        target = read<Address>(image, g(s.target), s.warm_target);
    GameInputCall call{wrapper, s.packer, 0x3cdbd4, 0, target, g(s.context)};
    setup(image, call, flags, g(s.flags), s.setup_root, s.flag_two, s.observe_site, env, effects);
    call.dispatcher = read<Address>(image, g(0x3d5e60), s.effect_root);
    return call;
}
GameInputCall physics_prepare(Snapshot &image, const GameInputPhysicsEnvironment &env,
                              const GameInputPhysicsEffects &effects) {
    const auto g = [&](Rva r) { return env.module + r; };
    auto flags = read<ReU32>(image, g(0x3e3ea0), 0x2e0f1f);
    Address target;
    if (!(flags & 1)) {
        // [C]GameAssembly base acquisition precedes the first flag store here.
        target = read<Address>(image, g(0x3d6f00), 0x2e0f3d) + 0x3118820;
        flags |= 1;
        write(image, g(0x3e3ea0), flags, 0x2e0f4f);
        write(image, g(0x3e3e98), target, 0x2e0f56);
    } else
        target = read<Address>(image, g(0x3e3e98), 0x2e0f5f);
    GameInputCall call{0x2e0f10, 0x2de874, 0x3cdbd4, 0, target, g(0x3e3eb0)};
    setup(image, call, flags, g(0x3e3ea0), 0x2e0f6c, 0x2e0f7e, 0x2e0f88, env, effects);
    call.dispatcher = read<Address>(image, g(0x3d5e60), 0x2e0fa9);
    return call;
}
GameInputCall layer_prepare(Snapshot &image, const Snapshot &game,
                            const GameInputPhysicsEnvironment &env,
                            const GameInputPhysicsEffects &effects) {
    const auto g = [&](Rva r) { return env.module + r; };
    auto flags = read<ReU32>(image, g(0x3f2930), 0x329ab0);
    Address target;
    if (!(flags & 1)) {
        write(image, g(0x3f2930), flags | 1u, 0x329acc);
        const auto name = literal_string(image, env.module, 0x3238f4);
        target = resolve_icall(image, game, name, env, effects);
        write(image, g(0x3f2928), target, 0x329aea);
        flags = read<ReU32>(image, g(0x3f2930), 0x329af1);
    } else
        target = read<Address>(image, g(0x3f2928), 0x329af9);
    GameInputCall call{0x329aa0, 0x3232d0, 0x3cdbd4, 0, target, g(0x3f2940)};
    setup(image, call, flags, g(0x3f2930), 0x329b04, 0x329b18, 0x329b1e, env, effects);
    call.dispatcher = read<Address>(image, g(0x3d5e60), 0x329b23);
    return call;
}
} // namespace rust_internal_re::game_input_detail
