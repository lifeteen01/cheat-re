#include "game_local_literals_analysis.hpp"
#include "game_direct_wrappers_internal.hpp"
namespace rust_internal_re {
namespace {
using namespace direct_detail;
bool known(Rva getter, Rva converter = 0) {
    for (const auto &s : game_local_literal_specs())
        if (s.getter == getter && (!converter || s.converter == converter))
            return true;
    return false;
}
void check(GameDirectResult r) {
    if (r.status != GameBaseStatus::complete)
        { (void)(r.status, r.site); __builtin_trap(); }
}
} // namespace
ProjectileBoundaries bind_game_local_literals_projectile(Snapshot &im, Snapshot &game,
                                                         const GameLocalLiteralEnvironment &env,
                                                         const GameDirectEffects &fx,
                                                         ProjectileBoundaries prior) {
    auto b = prior;
    b.material = [&im, &game, env, prior](Rva getter, Rva converter) {
        if (!known(getter, converter))
            return need(prior.material, converter)(getter, converter);
        const auto literal = require(game_local_literal(im, game, getter, converter, env));
        if (!literal.address)
            { (void)(GameBaseStatus::missing_boundary, getter); __builtin_trap(); }
        return *literal.address;
    };
    b.hash_name_2d6354 = [&game, env](Address name) {
        return require(game_local_name_hash_2d6354(game, name, env.maximum_bytes));
    };
    b.hash_literal_2e5b4c = [&im, &game, env, prior](Rva getter, Rva converter,
                                                     ReU64 seed) {
        if (!known(getter, converter))
            return need(prior.hash_literal_2e5b4c, converter)(getter, converter, seed);
        return require(game_local_literal_hash(im, game, getter, converter, seed, env));
    };
    b.compare_class = [&im, &game, env, prior](Address name, Rva getter, Rva converter) {
        if (!known(getter, converter))
            return need(prior.compare_class, converter)(name, getter, converter);
        return require(game_local_literal_compare(im, game, name, getter, converter, env));
    };
    b.managed_string_2ce5dc = [&im, &game, env, fx](Address value) {
        GameDirectRequest request;
        auto effects = fx;
        const auto leaf = effects.shared.string_new_2ce718;
        effects.shared.string_new_2ce718 = [&](re::ReStringView) {
            return need(leaf, 0x2ce78b)(text(game, value, env.maximum_bytes, 0x2ce78b));
        };
        {
            return managed(im, {}, value, request, env.direct, effects);
        }
    };
    return b;
}
InteractionCalls bind_game_local_literals_interaction(Snapshot &im, Snapshot &game,
                                                      const GameLocalLiteralEnvironment &env,
                                                      const GameDirectEffects &fx,
                                                      InteractionCalls prior) {
    auto b = prior;
    b.object = [&im, &game, env, fx, prior](const InteractionCall &call) {
        if (call.rva == 0x2ce5dc && call.literal && known(call.literal))
            return require(game_local_literal_managed(im, game, call.literal, 0, env, fx));
        return need(prior.object, call.rva)(call);
    };
    b.action = [&im, &game, env, fx, prior](const InteractionCall &call) {
        if ((call.rva == 0x366c30 || call.rva == 0x36c274) && call.literal && known(call.literal)) {
            const auto literal = require(game_local_literal(im, game, call.literal, 0, env));
            GameDirectRequest request;
            request.receiver = call.self;
            request.text[0] = literal.text;
            if (literal.address)
                request.arguments[0] = *literal.address;
            auto effects = fx;
            const auto leaf = effects.shared.string_new_2ce718;
            effects.shared.string_new_2ce718 = [&](re::ReStringView) {
                if (literal.address)
                    return need(leaf, 0x2ce78b)(
                        text(game, *literal.address, env.maximum_bytes, 0x2ce78b));
                if (!literal.terminated)
                    { (void)(GameBaseStatus::missing_bytes, 0x2ce78b); __builtin_trap(); }
                return need(leaf, 0x2ce78b)(literal.text);
            };
            check(game_direct_wrapper(im, game, call.rva, request, env.direct, effects));
            return;
        }
        // Other consumer bodies keep their existing owner. The public producer
        // API above supplies their literal bytes without forwarding that producer.
        need(prior.action, call.rva)(call);
    };
    return b;
}
} // namespace rust_internal_re
