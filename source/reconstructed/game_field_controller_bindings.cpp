#include "game_field_controllers.hpp"

namespace rust_internal_re {
namespace {
template <class T> T require(GameBaseResult<T> result) {
    if (result.status != GameBaseStatus::complete)
        { (void)(result.status, result.site); __builtin_trap(); }
    return result.value;
}
[[noreturn]] void missing(Rva role) {
    { (void)(GameBaseStatus::missing_boundary, role); __builtin_trap(); }
}
bool weapon(Rva role) {
    return role == 0x3714c4 || role == 0x371688 || role == 0x3717c0 || role == 0x371df4;
}
bool predicate(Rva role) {
    return role == 0x368244 || role == 0x368468 || role == 0x36a1e4 || role == 0x372ba4;
}
template <class F, class... A> auto fallback(const F &f, Rva role, A &&...args) {
    if (!f)
        missing(role);
    return f(re::re_forward<A>(args)...);
}
Address receiver(MovementMainArguments args, Rva role) {
    if (!args.empty())
        if (const auto p = re::re_get_if<Address>(&args[0]))
            return *p;
    missing(role);
}
ReU32 bits(const MovementMainArgument &arg, Rva role) {
    if (const auto p = re::re_get_if<ReU32>(&arg))
        return *p;
    if (const auto p = re::re_get_if<ReI32>(&arg))
        return re::re_bit_cast<ReU32>(*p);
    if (const auto p = re::re_get_if<bool>(&arg))
        return *p ? 1u : 0u;
    missing(role);
}
} // namespace
AimWeaponCalls bind_game_fields_aim(Snapshot &im, const GameHelperEnvironment &env,
                                    const GameHelperApi &api, AimWeaponCalls out) {
    const auto prior = out;
    out.object = [&im, env, api, prior](Rva role, Address p) {
        return weapon(role) ? require(game_field_weapon(im, role, p, env, api))
                            : fallback(prior.object, role, role, p);
    };
    out.vector = [&im, env, api, prior](Rva role, Address p) {
        return role == 0x3691c0 ? require(game_field_direction_3691c0(im, p, env, api))
                                : fallback(prior.vector, role, role, p);
    };
    out.predicate = [&im, prior](Rva role, Address p, ReU8 byte) {
        return predicate(role) ? require(game_field_predicate(im, role, p))
                               : fallback(prior.predicate, role, role, p, byte);
    };
    return out;
}
ProjectileBoundaries bind_game_fields_projectile(Snapshot &im, const GameHelperEnvironment &env,
                                                 const GameHelperApi &api,
                                                 ProjectileBoundaries out) {
    const auto prior = out;
    out.address = [&im, env, api, prior](Rva role, Address p, ReI32 n) {
        return weapon(role) ? require(game_field_weapon(im, role, p, env, api))
                            : fallback(prior.address, role, role, p, n);
    };
    out.vector = [&im, env, api, prior](Rva role, Address p, ReI32 n) {
        return role == 0x3691c0 ? require(game_field_direction_3691c0(im, p, env, api))
                                : fallback(prior.vector, role, role, p, n);
    };
    out.predicate = [&im, prior](Rva role, Address p) {
        return predicate(role) ? require(game_field_predicate(im, role, p))
                               : fallback(prior.predicate, role, role, p);
    };
    return out;
}
InteractionCalls bind_game_fields_interaction(Snapshot &im, const GameHelperEnvironment &env,
                                              const GameHelperApi &api, InteractionCalls out) {
    const auto prior = out;
    out.object = [&im, env, api, prior](const InteractionCall &q) {
        return weapon(q.rva) ? require(game_field_weapon(im, q.rva, q.self, env, api))
                             : fallback(prior.object, q.rva, q);
    };
    out.vector = [&im, env, api, prior](const InteractionCall &q) {
        return q.rva == 0x3691c0 ? require(game_field_direction_3691c0(im, q.self, env, api))
                                 : fallback(prior.vector, q.rva, q);
    };
    out.predicate = [&im, prior](const InteractionCall &q) {
        return predicate(q.rva) || q.rva == 0x372bf4
                   ? require(game_field_predicate(im, q.rva, q.self,
                                                  re::re_bit_cast<ReU32>(q.integer)))
                   : fallback(prior.predicate, q.rva, q);
    };
    out.action = [&im, env, prior](const InteractionCall &q) {
        if (q.rva == 0x373eb4) {
            (void)require(
                game_field_backup_373eb4(im, im, q.self, ReU8(q.integer), env.module));
            return;
        }
        fallback(prior.action, q.rva, q);
    };
    return out;
}
MovementMainCalls bind_game_fields_movement(Snapshot &im, const GameHelperEnvironment &env,
                                            const GameHelperApi &api, MovementMainCalls out) {
    const auto prior = out;
    out.pointer = [&im, env, api, prior](Rva role, MovementMainArguments args) {
        return weapon(role) ? require(game_field_weapon(im, role, receiver(args, role), env, api))
                            : fallback(prior.pointer, role, role, args);
    };
    out.vector = [&im, env, api, prior](Rva role, MovementMainArguments args) {
        return role == 0x3691c0
                   ? require(game_field_direction_3691c0(im, receiver(args, role), env, api))
                   : fallback(prior.vector, role, role, args);
    };
    out.predicate = [&im, prior](Rva role, MovementMainArguments args) {
        if (predicate(role))
            return require(game_field_predicate(im, role, receiver(args, role)));
        if (role == 0x372bf4) {
            const auto p = receiver(args, role);
            if (args.size() < 2)
                missing(role);
            return require(game_field_predicate(im, role, p, bits(args[1], role)));
        }
        return fallback(prior.predicate, role, role, args);
    };
    out.effect = [&im, env, prior](Rva role, MovementMainArguments args) {
        if (role == 0x373eb4) {
            const auto p = receiver(args, role);
            if (args.size() < 2)
                missing(role);
            (void)require(
                game_field_backup_373eb4(im, im, p, ReU8(bits(args[1], role)), env.module));
            return;
        }
        fallback(prior.effect, role, role, args);
    };
    return out;
}
UnityApi bind_game_fields_frame(Snapshot &im, const GameHelperEnvironment &env,
                                const GameHelperApi &api, UnityApi out) {
    const auto prior = out.external;
    out.external = [&im, env, api, prior](
                       Rva role, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (!weapon(role) && !predicate(role) && role != 0x3691c0 && role != 0x372bf4 &&
            role != 0x373eb4 && role != 0x32308c)
            return prior ? prior(role, args) : re::re_nullopt;
        if (args.empty() || !re::re_holds_alternative<Address>(args[0]))
            missing(role);
        const auto p = re::re_get<Address>(args[0]);
        if (weapon(role))
            return require(game_field_weapon(im, role, p, env, api));
        if (predicate(role))
            return require(game_field_predicate(im, role, p));
        if (role == 0x3691c0)
            return require(game_field_direction_3691c0(im, p, env, api));
        if (role == 0x32308c) {
            if (args.size() < 3 || !re::re_holds_alternative<Address>(args[1]) ||
                !re::re_holds_alternative<Address>(args[2]))
                missing(role);
            return require(game_field_hook_32308c(im, p, re::re_get<Address>(args[1]),
                                                  re::re_get<Address>(args[2])));
        }
        if (args.size() < 2)
            missing(role);
        ReU32 value;
        if (const auto b = re::re_get_if<bool>(&args[1]))
            value = *b ? 1u : 0u;
        else if (const auto n = re::re_get_if<ReI32>(&args[1]))
            value = re::re_bit_cast<ReU32>(*n);
        else
            missing(role);
        if (role == 0x372bf4)
            return require(game_field_predicate(im, role, p, value));
        (void)require(game_field_backup_373eb4(im, im, p, ReU8(value), env.module));
        return re::ReMonostate{};
    };
    return out;
}
} // namespace rust_internal_re
