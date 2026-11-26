#include "game_aux_helpers_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class T> T value(GameBaseResult<T> v) {
    if (v.status != GameBaseStatus::complete)
        { (void)(v.status, v.site); __builtin_trap(); }
    return v.value;
}
[[noreturn]] void missing(Rva r) {
    { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
}
bool static_known(Rva r) {
    return r == 0x315a24 || r == 0x32957c || r == 0x329714 || r == 0x329a38;
}
bool pointer_known(Rva r) {
    return static_known(r) || r == 0x37628c;
}
bool vector_known(Rva r) {
    for (const auto &s : game_aux_vector_specs())
        if (s.getter == r)
            return true;
    return false;
}
bool write_known(Rva r) {
    return r == 0x36ad68 || r == 0x36ae90 || r == 0x372c1c;
}
Address pointer(const Snapshot &globals, const Snapshot &game, Rva r, Address p,
                const GameAuxEnvironment &env) {
    return r == 0x37628c ? value(game_aux_pointer_37628c(game, p))
                         : value(game_aux_static_pointer(globals, game, r, env));
}
template <class F, class... Args> auto foreign(const F &f, Rva r, Args &&...args) {
    if (!f)
        missing(r);
    return f(r, re::re_forward<Args>(args)...);
}
Address receiver(MovementMainArguments args, Rva r) {
    if (args.empty() || !re::re_holds_alternative<Address>(args[0]))
        missing(r);
    return re::re_get<Address>(args[0]);
}
ReU32 bits(const MovementMainArgument &a, Rva r) {
    if (const auto *v = re::re_get_if<ReU32>(&a))
        return *v;
    if (const auto *v = re::re_get_if<ReI32>(&a))
        return re::re_bit_cast<ReU32>(*v);
    if (const auto *v = re::re_get_if<bool>(&a))
        return *v ? 1u : 0u;
    missing(r);
}
Address unity_receiver(re::ReSpan<const UnityValue> a, Rva r) {
    if (a.empty() || !re::re_holds_alternative<Address>(a[0]))
        missing(r);
    return re::re_get<Address>(a[0]);
}
ReU32 unity_bits(const UnityValue &a, Rva r) {
    if (const auto *v = re::re_get_if<ReI32>(&a))
        return re::re_bit_cast<ReU32>(*v);
    if (const auto *v = re::re_get_if<bool>(&a))
        return *v ? 1u : 0u;
    missing(r);
}
} // namespace
AimWeaponCalls bind_game_aux_aim(const Snapshot &globals, const Snapshot &game,
                                 const GameAuxEnvironment &env, AimWeaponCalls base) {
    auto out = base;
    out.object = [&globals, &game, env, base](Rva r, Address p) {
        return pointer_known(r) ? pointer(globals, game, r, p, env) : foreign(base.object, r, p);
    };
    out.vector = [&game, base](Rva r, Address p) {
        return vector_known(r) ? value(game_aux_vector(game, r, p)) : foreign(base.vector, r, p);
    };
    out.predicate = [&globals, &game, env, base](Rva r, Address p, ReU8 b) {
        return r == 0x374268 ? value(game_aux_predicate_374268(globals, game, p, env))
                             : foreign(base.predicate, r, p, b);
    };
    return out;
}
ProjectileBoundaries bind_game_aux_projectile(const Snapshot &globals, const Snapshot &game,
                                              const GameAuxEnvironment &env,
                                              ProjectileBoundaries base) {
    auto out = base;
    out.address = [&globals, &game, env, base](Rva r, Address p, ReI32 n) {
        return pointer_known(r) ? pointer(globals, game, r, p, env)
                                : foreign(base.address, r, p, n);
    };
    out.vector = [&game, base](Rva r, Address p, ReI32 n) {
        return vector_known(r) ? value(game_aux_vector(game, r, p)) : foreign(base.vector, r, p, n);
    };
    out.predicate = [&globals, &game, env, base](Rva r, Address p) {
        return r == 0x374268 ? value(game_aux_predicate_374268(globals, game, p, env))
                             : foreign(base.predicate, r, p);
    };
    return out;
}
InteractionCalls bind_game_aux_interaction(const Snapshot &globals, Snapshot &game,
                                           const GameAuxEnvironment &env, InteractionCalls base) {
    auto out = base;
    out.object = [&globals, &game, env, base](const InteractionCall &c) {
        if (pointer_known(c.rva))
            return pointer(globals, game, c.rva, c.self, env);
        if (!base.object)
            missing(c.rva);
        return base.object(c);
    };
    out.vector = [&game, base](const InteractionCall &c) {
        if (vector_known(c.rva))
            return value(game_aux_vector(game, c.rva, c.self));
        if (!base.vector)
            missing(c.rva);
        return base.vector(c);
    };
    out.predicate = [&globals, &game, env, base](const InteractionCall &c) {
        if (c.rva == 0x374268)
            return value(game_aux_predicate_374268(globals, game, c.self, env));
        if (!base.predicate)
            missing(c.rva);
        return base.predicate(c);
    };
    out.action = [&game, base](const InteractionCall &c) {
        if (write_known(c.rva)) {
            (void)value(
                game_aux_write(game, c.rva, c.self, re::re_bit_cast<ReU32>(c.integer)));
            return;
        }
        if (!base.action)
            missing(c.rva);
        base.action(c);
    };
    return out;
}
MovementMainCalls bind_game_aux_movement(const Snapshot &globals, Snapshot &game,
                                         const GameAuxEnvironment &env, MovementMainCalls base) {
    auto out = base;
    out.pointer = [&globals, &game, env, base](Rva r, MovementMainArguments a) {
        if (pointer_known(r))
            return pointer(globals, game, r, static_known(r) ? 0 : receiver(a, r), env);
        return foreign(base.pointer, r, a);
    };
    out.vector = [&game, base](Rva r, MovementMainArguments a) {
        return vector_known(r) ? value(game_aux_vector(game, r, receiver(a, r)))
                               : foreign(base.vector, r, a);
    };
    out.predicate = [&globals, &game, env, base](Rva r, MovementMainArguments a) {
        return r == 0x374268 ? value(game_aux_predicate_374268(globals, game, receiver(a, r), env))
                             : foreign(base.predicate, r, a);
    };
    out.effect = [&game, base](Rva r, MovementMainArguments a) {
        if (write_known(r)) {
            const auto p = receiver(a, r);
            if (a.size() < 2)
                missing(r);
            (void)value(game_aux_write(game, r, p, bits(a[1], r)));
            return;
        }
        foreign(base.effect, r, a);
    };
    return out;
}
UnityApi bind_game_aux_frame(const Snapshot &globals, Snapshot &game, const GameAuxEnvironment &env,
                             UnityApi base) {
    auto out = base;
    out.external = [&globals, &game, env,
                    base](Rva r, re::ReSpan<const UnityValue> a) -> re::ReOptional<UnityValue> {
        if (pointer_known(r))
            return pointer(globals, game, r, static_known(r) ? 0 : unity_receiver(a, r), env);
        if (vector_known(r))
            return value(game_aux_vector(game, r, unity_receiver(a, r)));
        if (r == 0x374268)
            return value(game_aux_predicate_374268(globals, game, unity_receiver(a, r), env));
        if (write_known(r)) {
            const auto p = unity_receiver(a, r);
            if (a.size() < 2)
                missing(r);
            (void)value(game_aux_write(game, r, p, unity_bits(a[1], r)));
            return re::ReMonostate{};
        }
        return base.external ? base.external(r, a) : re::re_nullopt;
    };
    return out;
}
} // namespace rust_internal_re
