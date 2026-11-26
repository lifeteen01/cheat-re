#include "game_root_helpers.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
namespace {
template <class T> T read(const Snapshot &image, Address p, Rva site) {
    const auto value = image.read<T>(p);
    if (!value)
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
    return *value;
}
template <class T> void write(Snapshot &image, Address p, T value, Rva site) {
    if (!image.write(p, value))
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
}
template <class T, class F> GameBaseResult<T> guarded(F &&function) {
    {
        return {function()};
    }
}
template <class T> T required(GameBaseResult<T> result) {
    if (result.status != GameBaseStatus::complete)
        { (void)(result.status, result.site); __builtin_trap(); }
    return result.value;
}
Address literal(Snapshot &globals, const GameRootEnvironment &env, ReUSize offset,
                re::ReStringView text, Rva site) {
    if (!env.literal_storage || offset > env.literal_capacity ||
        text.size() + 1 > env.literal_capacity - offset)
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
    for (ReUSize i = 0; i < text.size(); ++i)
        write(globals, env.literal_storage + offset + i, ReU8(text[i]), site);
    write(globals, env.literal_storage + offset + text.size(), ReU8(0), site);
    return env.literal_storage + offset;
}
re::ReOptional<Address> object(Snapshot &globals, const Snapshot &game,
                              const GameRootEnvironment &env, const GameRootEffects &api,
                              Rva role) {
    if (role == 0x2dda9c)
        return required(game_root_local_player_2dda9c(globals, env, api));
    if (role == 0x2e069c)
        return required(game_root_camera_2e069c(globals, game, env, api));
    return re::re_nullopt;
}
template <class F, class... A> auto fallback(const F &f, Rva r, A &&...arguments) {
    if (!f)
        { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
    return f(re::re_forward<A>(arguments)...);
}
} // namespace
GameBaseResult<Address> game_root_local_player_2dda9c(Snapshot &globals,
                                                      const GameRootEnvironment &env,
                                                      const GameRootEffects &api) {
    return guarded<Address>([&] {
        const auto base = env.module;
        auto bits = read<ReU32>(globals, base + 0x3d6f10, 0x2ddaa0);
        Address target;
        if (!(bits & 1)) {
            target = read<Address>(globals, base + 0x3d6f00, 0x2ddaab) + 0x5458c90;
            bits |= 1;
            write(globals, base + 0x3d6f10, bits, 0x2ddabc);
            write(globals, base + 0x3d6f08, target, 0x2ddac2);
        } else
            target = read<Address>(globals, base + 0x3d6f08, 0x2ddacb);
        MetadataWrapperCall call{0x2dda9c, 0x2dda18, 0, target, base + 0x3d6f20};
        if (!(bits & 2)) {
            write(globals, base + 0x3d6f10, bits | 2u, 0x2ddae1);
            call.dispatcher = read<Address>(globals, base + 0x3d5e60, 0x2ddaea);
            if (api.observe_context)
                api.observe_context(call);
        }
        call.dispatcher = read<Address>(globals, base + 0x3d5e60, 0x2ddaf6);
        MetadataWrapperEffects effect;
        effect.domain_get = api.local_player;
        return bind_metadata_argument_context(globals, re::re_move(effect)).domain_get(call);
    });
}
GameBaseResult<Address> game_root_camera_2e069c(Snapshot &globals, const Snapshot &game,
                                                const GameRootEnvironment &env,
                                                const GameRootEffects &api) {
    return guarded<Address>([&]() -> Address {
        // [C] XOR-decoded empty namespace precedes MainCamera; scratch is explicitly owned.
        const auto namespc = literal(globals, env, 0, "", 0x2cc730);
        const auto name = literal(globals, env, 16, "MainCamera", 0x2df87c);
        const auto found = resolve_class_334224(api.metadata, name, namespc, env.metadata_limits);
        if (found.status != MetadataStatus::complete)
            __builtin_trap();
        if (!sample_pointer_range(found.value))
            return 0;
        const auto fields = read<Address>(game, found.value + 0xb8, 0x2e06ed);
        if (!sample_pointer_range(fields))
            return 0;
        const auto first = read<Address>(game, fields + 0x38, 0x2e0700);
        const auto second = read<Address>(game, fields + 0x38, 0x2e070e);
        return sample_pointer_range(first) ? second : Address(0);
    });
}
GameBaseResult<ReU8> game_root_gate_2e0e4c(const Snapshot &globals, const Snapshot &game,
                                                   const GameRootEnvironment &env) {
    return guarded<ReU8>([&]() -> ReU8 {
        const auto assembly = read<Address>(globals, env.module + 0x3d6f00, 0x2e0e50);
        const auto klass = read<Address>(game, assembly + 0xf069320, 0x2e0e57);
        if (!sample_pointer_range(klass))
            return 0;
        const auto fields = read<Address>(game, klass + 0xb8, 0x2e0e6a);
        if (!sample_pointer_range(fields))
            return 0;
        const auto object = read<Address>(game, fields + 0x20, 0x2e0e7d);
        return sample_pointer_range(object) ? read<ReU8>(game, object + 0x20, 0x2e0e8d) : 0;
    });
}
AimWeaponCalls bind_game_roots_aim(Snapshot &globals, const Snapshot &game,
                                   const GameRootEnvironment &env, const GameRootEffects &api,
                                   AimWeaponCalls out) {
    const auto prior = out;
    out.object = [&globals, &game, env, api, prior](Rva r, Address receiver) {
        if (const auto value = object(globals, game, env, api, r))
            return *value;
        return fallback(prior.object, r, r, receiver);
    };
    out.predicate = [&globals, &game, env, prior](Rva r, Address receiver, ReU8 byte) {
        if (r == 0x2e0e4c)
            return required(game_root_gate_2e0e4c(globals, game, env)) != 0;
        return fallback(prior.predicate, r, r, receiver, byte);
    };
    return out;
}
ProjectileBoundaries bind_game_roots_projectile(Snapshot &globals, const Snapshot &game,
                                                const GameRootEnvironment &env,
                                                const GameRootEffects &api,
                                                ProjectileBoundaries out) {
    const auto prior = out;
    out.address = [&globals, &game, env, api, prior](Rva r, Address receiver, ReI32 i) {
        if (const auto value = object(globals, game, env, api, r))
            return *value;
        return fallback(prior.address, r, r, receiver, i);
    };
    out.predicate = [&globals, &game, env, prior](Rva r, Address receiver) {
        if (r == 0x2e0e4c)
            return required(game_root_gate_2e0e4c(globals, game, env)) != 0;
        return fallback(prior.predicate, r, r, receiver);
    };
    return out;
}
InteractionCalls bind_game_roots_interaction(Snapshot &globals, const Snapshot &game,
                                             const GameRootEnvironment &env,
                                             const GameRootEffects &api, InteractionCalls out) {
    const auto prior = out;
    out.object = [&globals, &game, env, api, prior](const InteractionCall &q) {
        if (const auto value = object(globals, game, env, api, q.rva))
            return *value;
        return fallback(prior.object, q.rva, q);
    };
    out.predicate = [&globals, &game, env, prior](const InteractionCall &q) {
        if (q.rva == 0x2e0e4c)
            return required(game_root_gate_2e0e4c(globals, game, env)) != 0;
        return fallback(prior.predicate, q.rva, q);
    };
    return out;
}
MovementMainCalls bind_game_roots_movement(Snapshot &globals, const Snapshot &game,
                                           const GameRootEnvironment &env,
                                           const GameRootEffects &api, MovementMainCalls out) {
    const auto prior = out;
    out.pointer = [&globals, &game, env, api, prior](Rva r, MovementMainArguments args) {
        if (const auto value = object(globals, game, env, api, r))
            return *value;
        return fallback(prior.pointer, r, r, args);
    };
    out.predicate = [&globals, &game, env, prior](Rva r, MovementMainArguments args) {
        if (r == 0x2e0e4c)
            return required(game_root_gate_2e0e4c(globals, game, env)) != 0;
        return fallback(prior.predicate, r, r, args);
    };
    return out;
}
LauncherApi bind_game_roots_launcher(Snapshot &globals, const GameRootEnvironment &env,
                                     const GameRootEffects &api, LauncherApi out) {
    out.local_player_2dda9c = [&globals, env, api] {
        return required(game_root_local_player_2dda9c(globals, env, api));
    };
    return out;
}
UnityApi bind_game_roots_frame(Snapshot &globals, const Snapshot &game,
                               const GameRootEnvironment &env, const GameRootEffects &api,
                               UnityApi out) {
    const auto prior = out;
    out.external = [&globals, &game, env, api,
                    prior](Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (const auto value = object(globals, game, env, api, r))
            return UnityValue(*value);
        if (r == 0x2e0e4c)
            return UnityValue(required(game_root_gate_2e0e4c(globals, game, env)) != 0);
        return prior.external ? prior.external(r, args) : re::re_nullopt;
    };
    return out;
}
} // namespace rust_internal_re
