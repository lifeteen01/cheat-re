#include "game_runtime_wrappers_internal.hpp"
namespace rust_internal_re {
namespace {
using namespace runtime_detail;
bool role(Rva r, GameRuntimeRole k) {
    const auto *s = spec(r);
    return s && s->role == k;
}
bool object_role(Rva r) {
    return role(r, GameRuntimeRole::object_zero) || role(r, GameRuntimeRole::object_one);
}
bool setter(Rva r) {
    const auto *s = spec(r);
    return s && (s->role == GameRuntimeRole::set_integer || s->role == GameRuntimeRole::set_byte ||
                 s->role == GameRuntimeRole::set_vector || s->role == GameRuntimeRole::set_scalar);
}
struct Bound {
    Snapshot &image;
    Snapshot &game;
    GameRuntimeEnvironment env;
    GameRuntimeEffects fx;
    template <class T> T get(Rva r, GameRuntimeRequest q = {}) const {
        auto v = required(game_runtime_wrapper(image, game, r, q, env, fx));
        if (const auto *p = re::re_get_if<T>(&v))
            return *p;
        { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
    }
};
template <class F, class... A> auto foreign(const F &f, Rva r, A &&...a) {
    return need(f, r)(r, re::re_forward<A>(a)...);
}
template <class T> T argument(MovementMainArguments a, ReUSize n, Rva r) {
    if (n >= a.size() || !re::re_holds_alternative<T>(a[n]))
        { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
    return re::re_get<T>(a[n]);
}
ReU32 integer(MovementMainArguments a, ReUSize n, Rva r) {
    if (n >= a.size())
        { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
    if (const auto *p = re::re_get_if<ReI32>(&a[n]))
        return re::re_bit_cast<ReU32>(*p);
    if (const auto *p = re::re_get_if<ReU32>(&a[n]))
        return *p;
    if (const auto *p = re::re_get_if<bool>(&a[n]))
        return *p ? 1 : 0;
    { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
}
GameRuntimeRequest movement_request(Rva r, MovementMainArguments a) {
    const auto *s = spec(r);
    if (!s)
        { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
    GameRuntimeRequest q;
    if (s->guard != GameRuntimeGuard::root_329714 && s->role != GameRuntimeRole::object_zero &&
        s->role != GameRuntimeRole::scalar && s->role != GameRuntimeRole::inverse &&
        s->role != GameRuntimeRole::lerp)
        q.receiver = argument<Address>(a, 0, r);
    switch (s->role) {
    case GameRuntimeRole::set_integer:
        q.integer = integer(a, 1, r);
        break;
    case GameRuntimeRole::set_byte:
        q.byte = ReU8(integer(a, 1, r));
        break;
    case GameRuntimeRole::set_scalar:
        q.scalar = argument<float>(a, 1, r);
        break;
    case GameRuntimeRole::set_vector:
    case GameRuntimeRole::transform:
        q.first = argument<Vec3>(a, 1, r);
        break;
    case GameRuntimeRole::lerp:
        q.first = argument<Vec3>(a, 0, r);
        q.second = argument<Vec3>(a, 1, r);
        q.scalar = argument<float>(a, 2, r);
        break;
    case GameRuntimeRole::inverse: {
        const auto v = argument<re::ReArray<float, 4>>(a, 0, r);
        q.rotation = {v[0], v[1], v[2], v[3]};
        break;
    }
    default:
        break;
    }
    return q;
}
} // namespace
AimWeaponCalls bind_game_runtime_aim(Snapshot &im, Snapshot &game,
                                     const GameRuntimeEnvironment &env,
                                     const GameRuntimeEffects &fx, AimWeaponCalls base) {
    const Bound b{im, game, env, fx};
    auto out = base;
    out.object = [b, base](Rva r, Address p) {
        if (object_role(r)) {
            GameRuntimeRequest q;
            q.receiver = p;
            return b.get<Address>(r, q);
        }
        return foreign(base.object, r, p);
    };
    out.scalar = [b, base](Rva r, Address p) {
        return role(r, GameRuntimeRole::scalar) ? b.get<float>(r) : foreign(base.scalar, r, p);
    };
    out.integer = [b, base](Rva r, Address p) {
        if (role(r, GameRuntimeRole::integer)) {
            GameRuntimeRequest q;
            q.receiver = p;
            return b.get<ReU32>(r, q);
        }
        return foreign(base.integer, r, p);
    };
    out.predicate = [b, base](Rva r, Address p, ReU8 v) {
        return role(r, GameRuntimeRole::predicate) ? b.get<ReU8>(r) != 0
                                                   : foreign(base.predicate, r, p, v);
    };
    return out;
}
ProjectileBoundaries bind_game_runtime_projectile(Snapshot &im, Snapshot &game,
                                                  const GameRuntimeEnvironment &env,
                                                  const GameRuntimeEffects &fx,
                                                  ProjectileBoundaries base) {
    const Bound b{im, game, env, fx};
    auto out = base;
    out.address = [b, base](Rva r, Address p, ReI32 n) {
        if (object_role(r)) {
            GameRuntimeRequest q;
            q.receiver = p;
            return b.get<Address>(r, q);
        }
        return foreign(base.address, r, p, n);
    };
    out.scalar = [b, base](Rva r, Address p, ReI32 a, ReI32 c) {
        return role(r, GameRuntimeRole::scalar) ? b.get<float>(r)
                                                : foreign(base.scalar, r, p, a, c);
    };
    out.integer = [b, base](Rva r, Address p, ReI32 n) {
        if (role(r, GameRuntimeRole::integer)) {
            GameRuntimeRequest q;
            q.receiver = p;
            return b.get<ReU32>(r, q);
        }
        return foreign(base.integer, r, p, n);
    };
    out.predicate = [b, base](Rva r, Address p) {
        return role(r, GameRuntimeRole::predicate) ? b.get<ReU8>(r) != 0
                                                   : foreign(base.predicate, r, p);
    };
    out.transform = [b, base](Rva r, Address p, Vec3 v) {
        if (role(r, GameRuntimeRole::transform)) {
            GameRuntimeRequest q;
            q.receiver = p;
            q.first = v;
            return b.get<Vec3>(r, q);
        }
        return foreign(base.transform, r, p, v);
    };
    return out;
}
MovementMainCalls bind_game_runtime_movement(Snapshot &im, Snapshot &game,
                                             const GameRuntimeEnvironment &env,
                                             const GameRuntimeEffects &fx, MovementMainCalls base) {
    const Bound b{im, game, env, fx};
    auto out = base;
    out.pointer = [b, base](Rva r, MovementMainArguments a) {
        return object_role(r) ? b.get<Address>(r, movement_request(r, a))
                              : foreign(base.pointer, r, a);
    };
    out.scalar = [b, base](Rva r, MovementMainArguments a) {
        return role(r, GameRuntimeRole::scalar) ? b.get<float>(r) : foreign(base.scalar, r, a);
    };
    out.integer = [b, base](Rva r, MovementMainArguments a) {
        return role(r, GameRuntimeRole::integer) ? b.get<ReU32>(r, movement_request(r, a))
                                                 : foreign(base.integer, r, a);
    };
    out.predicate = [b, base](Rva r, MovementMainArguments a) {
        return role(r, GameRuntimeRole::predicate) ? b.get<ReU8>(r) != 0
                                                   : foreign(base.predicate, r, a);
    };
    out.vector = [b, base](Rva r, MovementMainArguments a) {
        return role(r, GameRuntimeRole::lerp) || role(r, GameRuntimeRole::transform)
                   ? b.get<Vec3>(r, movement_request(r, a))
                   : foreign(base.vector, r, a);
    };
    out.quaternion = [b, base](Rva r, MovementMainArguments a) {
        if (role(r, GameRuntimeRole::inverse)) {
            const auto v = b.get<Orientation>(r, movement_request(r, a));
            return re::ReArray<float, 4>{v.x, v.y, v.z, v.w};
        }
        return foreign(base.quaternion, r, a);
    };
    out.effect = [b, base](Rva r, MovementMainArguments a) {
        if (setter(r)) {
            (void)b.get<re::ReMonostate>(r, movement_request(r, a));
            return;
        }
        foreign(base.effect, r, a);
    };
    return out;
}
OrientationApi bind_game_runtime_orientation(Snapshot &im, Snapshot &game,
                                             const GameRuntimeEnvironment &env,
                                             const GameRuntimeEffects &fx, OrientationApi base) {
    const Bound b{im, game, env, fx};
    base.inverse_3738cc = [b](Orientation v) {
        GameRuntimeRequest q;
        q.rotation = v;
        return b.get<Orientation>(0x3738cc, q);
    };
    return base;
}
InteractionCalls bind_game_runtime_interaction(Snapshot &im, Snapshot &game,
                                               const GameRuntimeEnvironment &env,
                                               const GameRuntimeEffects &fx,
                                               InteractionCalls base) {
    const Bound b{im, game, env, fx};
    auto out = base;
    out.object = [b, base](const InteractionCall &c) {
        if (object_role(c.rva)) {
            GameRuntimeRequest q;
            q.receiver = c.self;
            return b.get<Address>(c.rva, q);
        }
        return need(base.object, c.rva)(c);
    };
    out.scalar = [b, base](const InteractionCall &c) {
        return role(c.rva, GameRuntimeRole::scalar) ? b.get<float>(c.rva)
                                                    : need(base.scalar, c.rva)(c);
    };
    out.integer = [b, base](const InteractionCall &c) {
        if (role(c.rva, GameRuntimeRole::integer)) {
            GameRuntimeRequest q;
            q.receiver = c.self;
            return re::re_bit_cast<ReI32>(b.get<ReU32>(c.rva, q));
        }
        return need(base.integer, c.rva)(c);
    };
    out.predicate = [b, base](const InteractionCall &c) {
        return role(c.rva, GameRuntimeRole::predicate) ? b.get<ReU8>(c.rva) != 0
                                                       : need(base.predicate, c.rva)(c);
    };
    out.action = [b, base](const InteractionCall &c) {
        if (setter(c.rva)) {
            GameRuntimeRequest q;
            q.receiver = c.self;
            q.integer = re::re_bit_cast<ReU32>(c.integer);
            q.byte = ReU8(q.integer);
            q.scalar = c.scalar;
            q.first = c.first;
            (void)b.get<re::ReMonostate>(c.rva, q);
            return;
        }
        need(base.action, c.rva)(c);
    };
    out.orientation = bind_game_runtime_orientation(im, game, env, fx, out.orientation);
    return out;
}
UnityApi bind_game_runtime_frame(Snapshot &im, Snapshot &game, const GameRuntimeEnvironment &env,
                                 const GameRuntimeEffects &fx, UnityApi base) {
    const Bound b{im, game, env, fx};
    auto out = base;
    out.external = [b, base](Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        const auto *s = spec(r);
        if (!s || s->role == GameRuntimeRole::inverse)
            return base.external ? base.external(r, args) : re::re_nullopt;
        re::ReVector<MovementMainArgument> a;
        a.reserve(args.size());
        for (const auto &v : args) {
            if (const auto *p = re::re_get_if<Address>(&v))
                a.push_back(*p);
            else if (const auto *p = re::re_get_if<ReI32>(&v))
                a.push_back(*p);
            else if (const auto *p = re::re_get_if<bool>(&v))
                a.push_back(*p);
            else if (const auto *p = re::re_get_if<float>(&v))
                a.push_back(*p);
            else if (const auto *p = re::re_get_if<Vec3>(&v))
                a.push_back(*p);
            else
                { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
        }
        const auto q = movement_request(r, a);
        const auto value = required(game_runtime_wrapper(b.image, b.game, r, q, b.env, b.fx));
        if (const auto *p = re::re_get_if<re::ReMonostate>(&value))
            return *p;
        if (const auto *p = re::re_get_if<Address>(&value))
            return *p;
        if (const auto *p = re::re_get_if<ReU32>(&value))
            return re::re_bit_cast<ReI32>(*p);
        if (const auto *p = re::re_get_if<ReU8>(&value))
            return *p != 0;
        if (const auto *p = re::re_get_if<float>(&value))
            return *p;
        if (const auto *p = re::re_get_if<Vec3>(&value))
            return *p;
        { (void)(GameBaseStatus::missing_boundary, r); __builtin_trap(); }
    };
    return out;
}
FrameDependencyApi bind_game_runtime_dependencies(Snapshot &im, Snapshot &game,
                                                  const GameRuntimeEnvironment &env,
                                                  const GameRuntimeEffects &fx,
                                                  FrameDependencyApi base) {
    const Bound b{im, game, env, fx};
    const auto old = base.time;
    base.time = [b, old](Rva r) -> re::ReOptional<float> {
        return role(r, GameRuntimeRole::scalar) ? re::ReOptional<float>(b.get<float>(r))
                                                : (old ? old(r) : re::re_nullopt);
    };
    base.unity = bind_game_runtime_frame(im, game, env, fx, re::re_move(base.unity));
    return base;
}
} // namespace rust_internal_re
