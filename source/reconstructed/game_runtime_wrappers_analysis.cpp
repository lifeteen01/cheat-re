#include "game_runtime_wrappers_internal.hpp"
namespace rust_internal_re {
namespace {
#include "game_runtime_wrappers_specs.inc"
}
re::ReSpan<const GameRuntimeSpec> game_runtime_specs() {
    return runtime_specs;
}
namespace runtime_detail {
const GameRuntimeSpec *spec(Rva r) {
    for (const auto &s : game_runtime_specs())
        if (s.wrapper == r)
            return &s;
    return nullptr;
}
namespace {
Address literal(Snapshot &im, const GameRuntimeEnvironment &env, Address offset,
                re::ReStringView bytes, Rva site) {
    if (!env.literal_storage || offset > env.literal_capacity ||
        bytes.size() + 1 > env.literal_capacity - offset)
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
    for (ReUSize n = 0; n < bytes.size(); ++n)
        write(im, env.literal_storage + offset + n, ReU8(bytes[n]), site);
    write(im, env.literal_storage + offset + bytes.size(), ReU8(0), site);
    return env.literal_storage + offset;
}
GameRuntimeCall prepare(Snapshot &im, const GameRuntimeSpec &s, const GameRuntimeEnvironment &env,
                        const GameRuntimeEffects &fx, Address receiver) {
    const auto g = [&](Rva r) { return env.module + r; };
    auto bits = read<ReU32>(im, g(s.flags), s.flags_read);
    Address target;
    if (!(bits & 1)) {
        write(im, g(s.flags), bits | 1, s.flag_one);
        Address empty = 0;
        if (s.selector != 0x334a90)
            empty = literal(im, env, 0, "", s.wrapper);
        const auto method = literal(im, env, 64, s.method, s.wrapper);
        const auto ns = literal(im, env, 256, s.namespc, s.wrapper);
        const auto klass_name = literal(im, env, 384, s.klass, s.wrapper);
        const auto klass =
            metadata_value(resolve_class_334224(fx.metadata, klass_name, ns, env.limits), 0x334224);
        const auto selected =
            s.selector == 0x334a90
                ? select_counted_method_334a90(im, fx.metadata, klass, method, 1, env.limits)
                : select_parameter_method_3349ac(im, fx.metadata, klass, method, -1, empty, -1,
                                                 env.limits);
        const auto info = metadata_value(selected, s.selector);
        target = read<Address>(im, info, s.target_read);
        bits = read<ReU32>(im, g(s.flags), s.flags_reload);
        write(im, g(s.target), target, s.target_store);
    } else
        target = read<Address>(im, g(s.target), s.warm_target);
    GameRuntimeCall call{s.wrapper, s.executor, target, g(s.context), 0, receiver};
    if (!(bits & 2)) {
        call.dispatcher = read<Address>(im, g(0x3d5e60), s.setup_root);
        write(im, g(s.flags), bits | 2, s.flag_two);
        if (fx.observe_context)
            fx.observe_context(call);
    }
    return call;
}
void zero_vector(Snapshot &game, Address out) {
    write(game, out, ReU64(0), 0x3c7bbe);
    write(game, out + 8, 0u, 0x3c7bc1);
}
void vector_output(Snapshot &game, Address out, Vec3 v, Rva site) {
    const auto words = re::re_bit_cast<re::ReArray<ReU32, 3>>(v);
    write(game, out, ReU64(words[0]) | (ReU64(words[1]) << 32), site);
    write(game, out + 8, words[2], site);
}
GameRuntimeValue invalid(const GameRuntimeSpec &s, Snapshot &game, const GameRuntimeRequest &q) {
    switch (s.role) {
    case GameRuntimeRole::object_one:
    case GameRuntimeRole::object_zero:
        return Address(0);
    case GameRuntimeRole::predicate:
        return ReU8(0);
    case GameRuntimeRole::integer:
        return ReU32(0);
    case GameRuntimeRole::transform:
        if (q.output_address)
            zero_vector(game, *q.output_address);
        return Vec3{};
    default:
        return re::ReMonostate{};
    }
}
} // namespace
} // namespace runtime_detail
GameBaseResult<GameRuntimeValue> game_runtime_wrapper(Snapshot &im, Snapshot &game, Rva r,
                                                      GameRuntimeRequest q,
                                                      const GameRuntimeEnvironment &env,
                                                      const GameRuntimeEffects &fx) {
    using namespace runtime_detail;
    {
        const auto *found = spec(r);
        if (!found)
            return {{}, GameBaseStatus::missing_boundary, r};
        const auto &s = *found;
        if (s.guard == GameRuntimeGuard::root_329714)
            q.receiver = required(game_aux_static_pointer(im, game, 0x329714, {env.module}));
        if (s.guard != GameRuntimeGuard::none && !sample_pointer_range(q.receiver))
            return {invalid(s, game, q)};
        auto call = prepare(im, s, env, fx, q.receiver);
        // [C] Lerp clears CALLER output after cache setup; inverse-transform clears only its local temporary.
        if (s.role == GameRuntimeRole::lerp && q.output_address)
            zero_vector(game, *q.output_address);
        if (s.role == GameRuntimeRole::transform && q.temporary_address)
            zero_vector(game, *q.temporary_address);
        call.dispatcher = read<Address>(im, env.module + 0x3d5e60, s.effect_root);
        GameRuntimeValue result;
        package(im, call, s, q, [&] {
            switch (s.role) {
            case GameRuntimeRole::scalar:
                result = need(fx.scalar, s.effect_site)(call);
                break;
            case GameRuntimeRole::object_zero:
            case GameRuntimeRole::object_one:
                result = need(fx.object, s.effect_site)(call);
                break;
            case GameRuntimeRole::predicate:
                result = ReU8(need(fx.predicate, s.effect_site)(call) != 0);
                break;
            case GameRuntimeRole::integer:
                result = need(fx.integer, s.effect_site)(call);
                break;
            case GameRuntimeRole::set_integer:
                need(fx.set_integer, s.effect_site)(call, q.integer);
                result = re::ReMonostate{};
                break;
            case GameRuntimeRole::set_byte:
                need(fx.set_byte, s.effect_site)(call, q.byte);
                result = re::ReMonostate{};
                break;
            case GameRuntimeRole::set_scalar:
                need(fx.set_scalar, s.effect_site)(call, q.scalar);
                result = re::ReMonostate{};
                break;
            case GameRuntimeRole::set_vector: {
                const auto v =
                    q.first_address ? read<Vec3>(game, *q.first_address, s.effect_site) : q.first;
                need(fx.set_vector, s.effect_site)(call, v);
                result = re::ReMonostate{};
                break;
            }
            case GameRuntimeRole::lerp: {
                const auto a =
                    q.first_address ? read<Vec3>(game, *q.first_address, s.effect_site) : q.first;
                const auto b = q.second_address ? read<Vec3>(game, *q.second_address, s.effect_site)
                                                : q.second;
                result = need(fx.lerp, s.effect_site)(call, a, b, q.scalar);
                break;
            }
            case GameRuntimeRole::transform: {
                const auto v =
                    q.first_address ? read<Vec3>(game, *q.first_address, s.effect_site) : q.first;
                result = need(fx.transform, s.effect_site)(call, v);
                break;
            }
            case GameRuntimeRole::inverse: {
                const auto v = q.first_address
                                   ? read<Orientation>(game, *q.first_address, s.effect_site)
                                   : q.rotation;
                result = need(fx.inverse, s.effect_site)(call, v);
                break;
            }
            }
        });
        if (s.role == GameRuntimeRole::transform && q.temporary_address)
            vector_output(game, *q.temporary_address, re::re_get<Vec3>(result), s.effect_site);
        if (q.output_address) {
            if (const auto *v = re::re_get_if<Vec3>(&result))
                vector_output(game, *q.output_address, *v, r == 0x31492c ? 0x314a4b : 0x374d35);
            else if (const auto *v = re::re_get_if<Orientation>(&result))
                write(game, *q.output_address, *v, s.effect_site);
        }
        return {result};
    }
}
} // namespace rust_internal_re
