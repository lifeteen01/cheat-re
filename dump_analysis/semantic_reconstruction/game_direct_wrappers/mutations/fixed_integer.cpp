#include "game_direct_wrappers_internal.hpp"
namespace rust_internal_re::direct_detail {
namespace {
GameDirectArgument pointer(std::optional<Address> value) {
    return value ? GameDirectArgument(*value) : GameDirectArgument(std::monostate{});
}
Address string_argument(Snapshot &im, Snapshot &game, const GameDirectRequest &q, unsigned n,
                        const GameDirectEnvironment &env, const GameDirectEffects &fx) {
    return managed(im, request_text(game, q, n, env),
                   q.arguments[n] ? std::optional<Address>(q.arguments[n]) : std::nullopt, q, env,
                   fx);
}
const GameDirectValue &require_result(const GameDirectResult &r, Rva site) {
    if (r.status != GameBaseStatus::complete)
        throw SnapshotBindingFailure(r.status, r.site);
    if (!r.value)
        throw SnapshotBindingFailure(GameBaseStatus::missing_boundary, site);
    return *r.value;
}
GameDirectResult selector(Snapshot &im, Snapshot &game, Rva root, const GameDirectRequest &q,
                          const GameDirectEnvironment &env) {
    if (root == 0x322f30 && (!q.receiver || (!q.arguments[0] && !q.text[0]))) {
        GameDirectResult zero;
        zero.value = Address(0);
        zero.raw_return = 0;
        zero.unmaterialized_return_bytes = 0;
        return zero;
    }
    const auto label = root == 0x322ef8 ? literal(im, game, 0x3229d8, q.literal_address, env)
                       : q.arguments[0] ? std::string{}
                                        : request_text(game, q, 0, env);
    const auto raw = root == 0x322ef8 ? q.literal_address
                     : q.arguments[0] ? std::optional<Address>(q.arguments[0])
                                      : std::nullopt;
    const auto cache = root == 0x322ef8 ? env.module + 0x3f2490 : q.arguments[1];
    const auto result =
        game_direct_find_322f30(im, game, q.receiver, label, cache, env.maximum_string_bytes, raw);
    const auto object = require(result);
    GameDirectResult out;
    out.value = object;
    out.raw_return = object;
    out.unmaterialized_return_bytes = 0;
    return out;
}
GameDirectResult composite(Snapshot &im, Snapshot &game, GameDirectRequest q,
                           const GameDirectEnvironment &env, const GameDirectEffects &fx) {
    GameDirectResult done;
    done.value = std::monostate{};
    if (!sample_pointer_range(q.receiver))
        return done;
    const auto ready = run(im, game, 0x36bacc, q, env, fx);
    if (!std::get<std::uint8_t>(require_result(ready, 0x36ba49)))
        return done;
    const auto busy = run(im, game, 0x36b9a0, q, env, fx);
    if (std::get<std::uint8_t>(require_result(busy, 0x36ba55)))
        return done;
    const auto limit = read<float>(im, env.module + 0x294e3c, 0x36ba5e);
    if (!(limit > q.scalar)) // COMISS/JBE rejects unordered values too.
        return done;
    auto command = q;
    command.text[0] = literal(im, game, 0x36b3bc, q.literal_address, env);
    command.arguments[0] = q.literal_address.value_or(0);
    (void)require_result(run(im, game, 0x36c274, command, env, fx), 0x36ba88);
    auto scalar = q;
    scalar.scalar = read<float>(game, q.receiver + 0x304, 0x36ba8d);
    (void)require_result(run(im, game, 0x36c0f0, scalar, env, fx), 0x36ba98);
    command.text[0] = literal(im, game, 0x36b420, q.second_literal_address, env);
    command.arguments[0] = q.second_literal_address.value_or(0);
    (void)require_result(run(im, game, 0x366c30, command, env, fx), 0x36baba);
    return done;
}
} // namespace
GameDirectResult run(Snapshot &im, Snapshot &game, Rva root, GameDirectRequest q,
                     const GameDirectEnvironment &env, const GameDirectEffects &fx) {
    if (root == 0x322ef8 || root == 0x322f30)
        return selector(im, game, root, q, env);
    if (root == 0x36ba2c)
        return composite(im, game, std::move(q), env, fx);
    const auto *s = spec(root);
    if (!s)
        throw SnapshotBindingFailure(GameBaseStatus::missing_boundary, root);
    if (s->guard && !sample_pointer_range(q.receiver))
        return invalid(*s, q);
    std::vector<GameDirectArgument> args{q.receiver};
    // [C] Conversion ordering precedes direct target/cache work in these roots.
    switch (root) {
    case 0x366c30:
    case 0x366ccc:
    case 0x366d7c:
    case 0x366e38:
        args.push_back(string_argument(im, game, q, 0, env, fx));
        if (root == 0x366d7c || root == 0x366e38)
            args.push_back(string_argument(im, game, q, 1, env, fx));
        if (root == 0x366ccc || root == 0x366e38)
            args.push_back(q.byte);
        break;
    case 0x366ef0:
    case 0x374168:
        args.push_back(q.arguments[0]);
        if (q.first_vector) {
            args.push_back(*q.first_vector);
            if (q.arguments[1])
                q.raw_argument_keys[2] = q.arguments[1];
        } else
            args.push_back(q.arguments[1]);
        if (q.second_vector) {
            args.push_back(*q.second_vector);
            if (q.arguments[2])
                q.raw_argument_keys[3] = q.arguments[2];
        } else
            args.push_back(q.arguments[2]);
        if (root == 0x366ef0)
            args.push_back(q.scalar);
        break;
    case 0x370b50: {
        const auto label = literal(im, game, 0x370b1c, q.literal_address, env);
        const auto converted = managed(im, label, q.literal_address, q, env, fx);
        args.push_back(converted);
        args.push_back(std::uint8_t(1));
        break;
    }
    case 0x373c60:
        args = {pointer(q.temporary_address), q.receiver};
        break;
    case 0x36b004:
        args.push_back(std::int32_t(-49));
        break;
    case 0x322580:
    case 0x36c0f0:
        args.push_back(q.scalar);
        break;
    case 0x36c274: {
        const auto first = string_argument(im, game, q, 0, env, fx);
        if (!sample_pointer_range(first))
            return invalid(*s, q);
        q.receiver = read<Address>(game, q.receiver + 0x218, 0x36c2a9);
        if (!sample_pointer_range(q.receiver))
            return invalid(*s, q);
        args[0] = q.receiver;
        break;
    }
    default:
        break;
    }
    auto call = prepare(im, *s, env, fx);
    if (root == 0x36c274) {
        // [C] Native re-converts the original char* after context preparation.
        // Callback mutation of the supplied numeric buffer is observable here.
        args.push_back(string_argument(im, game, q, 0, env, fx));
        args.push_back(std::int32_t(0));
    }
    return invoke(im, game, *s, call, q, args, env, fx);
}
} // namespace rust_internal_re::direct_detail
namespace rust_internal_re {
GameDirectResult game_direct_wrapper(Snapshot &im, Snapshot &game, Rva root, GameDirectRequest q,
                                     const GameDirectEnvironment &env,
                                     const GameDirectEffects &fx) {
    try {
        return direct_detail::run(im, game, root, std::move(q), env, fx);
    } catch (const SnapshotBindingFailure &e) {
        GameDirectResult result;
        result.status = e.status;
        result.site = e.site;
        return result;
    } catch (const MetadataWrapperFailure &e) {
        GameDirectResult result;
        result.status = game_base_status(e.status);
        result.site = e.site;
        return result;
    }
}
} // namespace rust_internal_re
