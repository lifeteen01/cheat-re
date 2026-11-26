#include "game_direct_wrappers_internal.hpp"
namespace rust_internal_re {
namespace {
using namespace direct_detail;
bool known(Rva root) {
    return spec(root) || root == 0x322ef8 || root == 0x322f30 || root == 0x36ba2c;
}
template <class T> T value(GameDirectResult r, Rva root) {
    if (r.status != GameBaseStatus::complete)
        { (void)(r.status, r.site); __builtin_trap(); }
    if (!r.value || !re::re_holds_alternative<T>(*r.value))
        { (void)(GameBaseStatus::missing_boundary, root); __builtin_trap(); }
    return re::re_get<T>(*r.value);
}
void action(GameDirectResult r) {
    if (r.status != GameBaseStatus::complete)
        { (void)(r.status, r.site); __builtin_trap(); }
}
template <class T, class V> const T &arg(re::ReSpan<const V> args, ReUSize i, Rva root) {
    if (i >= args.size() || !re::re_holds_alternative<T>(args[i]))
        { (void)(GameBaseStatus::missing_boundary, root); __builtin_trap(); }
    return re::re_get<T>(args[i]);
}
template <class V> ReU8 byte(re::ReSpan<const V> args, ReUSize i, Rva root) {
    if (i >= args.size())
        { (void)(GameBaseStatus::missing_boundary, root); __builtin_trap(); }
    return re::re_visit(
        [&](const auto &v) -> ReU8 {
            using T = re::re_decay_t<decltype(v)>;
            if constexpr (re::re_is_integral_v<T>)
                return ReU8(v);
            { (void)(GameBaseStatus::missing_boundary, root); __builtin_trap(); }
        },
        args[i]);
}
template <class V> GameDirectRequest request(Rva root, re::ReSpan<const V> args) {
    GameDirectRequest q;
    q.receiver = arg<Address>(args, 0, root);
    const auto string = [&](ReUSize index, unsigned n) {
        if (index >= args.size())
            { (void)(GameBaseStatus::missing_boundary, root); __builtin_trap(); }
        if (const auto *s = re::re_get_if<re::ReString>(&args[index]))
            q.text[n] = *s;
        else
            q.arguments[n] = arg<Address>(args, index, root);
    };
    const auto vector = [&](ReUSize index, unsigned n) {
        if (index >= args.size())
            { (void)(GameBaseStatus::missing_boundary, root); __builtin_trap(); }
        if (const auto *v = re::re_get_if<Vec3>(&args[index])) {
            if (n == 1)
                q.first_vector = *v;
            else
                q.second_vector = *v;
        } else
            q.arguments[n] = arg<Address>(args, index, root);
    };
    switch (root) {
    case 0x322580:
    case 0x36c0f0:
    case 0x36ba2c:
        q.scalar = arg<float>(args, 1, root);
        break;
    case 0x366c30:
    case 0x36c274:
        string(1, 0);
        break;
    case 0x366ccc:
        string(1, 0);
        q.byte = byte(args, 2, root);
        break;
    case 0x366d7c:
    case 0x366e38:
        string(1, 0);
        string(2, 1);
        if (root == 0x366e38)
            q.byte = byte(args, 3, root);
        break;
    case 0x366ef0:
    case 0x374168:
        q.arguments[0] = arg<Address>(args, 1, root);
        vector(2, 1);
        vector(3, 2);
        if (root == 0x366ef0)
            q.scalar = arg<float>(args, 4, root);
        break;
    case 0x322f30:
        string(1, 0);
        q.arguments[1] = arg<Address>(args, 2, root);
        break;
    default:
        break;
    }
    return q;
}
} // namespace
UnityApi bind_game_direct_frame(Snapshot &im, Snapshot &game, const GameDirectEnvironment &env,
                                const GameDirectEffects &fx, UnityApi fallback) {
    auto bound = fallback;
    bound.external = [&im, &game, env, fx, fallback](
                         Rva root, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (!known(root))
            return fallback.external ? fallback.external(root, args) : re::re_nullopt;
        auto r = game_direct_wrapper(im, game, root, request(root, args), env, fx);
        if (r.status != GameBaseStatus::complete)
            { (void)(r.status, r.site); __builtin_trap(); }
        if (!r.value)
            { (void)(GameBaseStatus::missing_boundary, root); __builtin_trap(); }
        return re::re_visit(
            [&](const auto &v) -> re::ReOptional<UnityValue> {
                using T = re::re_decay_t<decltype(v)>;
                if constexpr (re::re_is_same_v<T, Orientation>)
                    { (void)(GameBaseStatus::missing_boundary, root); __builtin_trap(); }
                else if constexpr (re::re_is_same_v<T, ReU8>)
                    return UnityValue(v != 0);
                else
                    return UnityValue(v);
            },
            *r.value);
    };
    return bound;
}
MovementMainCalls bind_game_direct_movement(Snapshot &im, Snapshot &game,
                                            const GameDirectEnvironment &env,
                                            const GameDirectEffects &fx,
                                            MovementMainCalls fallback) {
    auto b = fallback;
    b.pointer = [&im, &game, env, fx, fallback](Rva r, MovementMainArguments a) {
        if (known(r))
            return value<Address>(game_direct_wrapper(im, game, r, request(r, a), env, fx), r);
        return need(fallback.pointer, r)(r, a);
    };
    b.scalar = [&im, &game, env, fx, fallback](Rva r, MovementMainArguments a) {
        if (known(r))
            return value<float>(game_direct_wrapper(im, game, r, request(r, a), env, fx), r);
        return need(fallback.scalar, r)(r, a);
    };
    b.predicate = [&im, &game, env, fx, fallback](Rva r, MovementMainArguments a) {
        if (known(r))
            return value<ReU8>(game_direct_wrapper(im, game, r, request(r, a), env, fx),
                                       r) != 0;
        return need(fallback.predicate, r)(r, a);
    };
    b.effect = [&im, &game, env, fx, fallback](Rva r, MovementMainArguments a) {
        if (known(r)) {
            action(game_direct_wrapper(im, game, r, request(r, a), env, fx));
            return;
        }
        need(fallback.effect, r)(r, a);
    };
    b.quaternion = [&im, &game, env, fx, fallback](Rva r, MovementMainArguments a) {
        if (r == 0x373c60) {
            const auto v =
                value<Orientation>(game_direct_wrapper(im, game, r, request(r, a), env, fx), r);
            return re::ReArray<float, 4>{v.x, v.y, v.z, v.w};
        }
        return need(fallback.quaternion, r)(r, a);
    };
    return b;
}
AimWeaponCalls bind_game_direct_aim(Snapshot &im, Snapshot &game, const GameDirectEnvironment &env,
                                    const GameDirectEffects &fx, AimWeaponCalls fallback) {
    auto b = fallback;
    b.object = [&im, &game, env, fx, fallback](Rva r, Address a) {
        if (known(r)) {
            GameDirectRequest q;
            q.receiver = a;
            return value<Address>(game_direct_wrapper(im, game, r, q, env, fx), r);
        }
        return need(fallback.object, r)(r, a);
    };
    b.scalar = [&im, &game, env, fx, fallback](Rva r, Address a) {
        if (known(r)) {
            GameDirectRequest q;
            q.receiver = a;
            return value<float>(game_direct_wrapper(im, game, r, q, env, fx), r);
        }
        return need(fallback.scalar, r)(r, a);
    };
    b.predicate = [&im, &game, env, fx, fallback](Rva r, Address a, ReU8 x) {
        if (known(r)) {
            GameDirectRequest q;
            q.receiver = a;
            q.byte = x;
            return value<ReU8>(game_direct_wrapper(im, game, r, q, env, fx), r) != 0;
        }
        return need(fallback.predicate, r)(r, a, x);
    };
    return b;
}
ProjectileBoundaries bind_game_direct_projectile(Snapshot &im, Snapshot &game,
                                                 const GameDirectEnvironment &env,
                                                 const GameDirectEffects &fx,
                                                 ProjectileBoundaries fallback) {
    auto b = fallback;
    b.address = [&im, &game, env, fx, fallback](Rva r, Address a, ReI32 i) {
        if (known(r)) {
            GameDirectRequest q;
            q.receiver = a;
            return value<Address>(game_direct_wrapper(im, game, r, q, env, fx), r);
        }
        return need(fallback.address, r)(r, a, i);
    };
    b.scalar = [&im, &game, env, fx, fallback](Rva r, Address a, ReI32 i, ReI32 j) {
        if (known(r)) {
            GameDirectRequest q;
            q.receiver = a;
            return value<float>(game_direct_wrapper(im, game, r, q, env, fx), r);
        }
        return need(fallback.scalar, r)(r, a, i, j);
    };
    b.predicate = [&im, &game, env, fx, fallback](Rva r, Address a) {
        if (known(r)) {
            GameDirectRequest q;
            q.receiver = a;
            return value<ReU8>(game_direct_wrapper(im, game, r, q, env, fx), r) != 0;
        }
        return need(fallback.predicate, r)(r, a);
    };
    b.hit_374168 = [&im, &game, env, fx](Address p, Address h, Vec3 point, Vec3 normal) {
        GameDirectRequest q;
        q.receiver = p;
        q.arguments[0] = h;
        q.first_vector = point;
        q.second_vector = normal;
        action(game_direct_wrapper(im, game, 0x374168, q, env, fx));
    };
    return b;
}
InteractionCalls bind_game_direct_interaction(Snapshot &im, Snapshot &game,
                                              const GameDirectEnvironment &env,
                                              const GameDirectEffects &fx,
                                              InteractionCalls fallback) {
    auto b = fallback;
    const auto q = [](const InteractionCall &c) {
        GameDirectRequest r;
        r.receiver = c.self;
        r.arguments = {c.other, c.third, Address(0)};
        r.scalar = c.scalar;
        r.byte = ReU8(c.integer);
        return r;
    };
    b.object = [&im, &game, env, fx, fallback, q](const InteractionCall &c) {
        if (known(c.rva))
            return value<Address>(game_direct_wrapper(im, game, c.rva, q(c), env, fx), c.rva);
        return need(fallback.object, c.rva)(c);
    };
    b.scalar = [&im, &game, env, fx, fallback, q](const InteractionCall &c) {
        if (known(c.rva))
            return value<float>(game_direct_wrapper(im, game, c.rva, q(c), env, fx), c.rva);
        return need(fallback.scalar, c.rva)(c);
    };
    b.predicate = [&im, &game, env, fx, fallback, q](const InteractionCall &c) {
        if (known(c.rva))
            return value<ReU8>(game_direct_wrapper(im, game, c.rva, q(c), env, fx),
                                       c.rva) != 0;
        return need(fallback.predicate, c.rva)(c);
    };
    b.action = [&im, &game, env, fx, fallback, q](const InteractionCall &c) {
        if (known(c.rva)) {
            auto r = q(c);
            if (c.literal)
                r.text[0] = direct_detail::literal(im, game, c.literal, {}, env);
            action(game_direct_wrapper(im, game, c.rva, r, env, fx));
            return;
        }
        need(fallback.action, c.rva)(c);
    };
    return b;
}
} // namespace rust_internal_re
