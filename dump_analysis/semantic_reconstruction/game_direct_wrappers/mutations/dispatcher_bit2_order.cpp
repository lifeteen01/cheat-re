#include "game_direct_wrappers_internal.hpp"
namespace rust_internal_re {
namespace {
#include "game_direct_wrappers_specs.inc"
}
std::span<const GameDirectSpec> game_direct_wrapper_specs() {
    return direct_specs;
}
namespace direct_detail {
const GameDirectSpec *spec(Rva root) {
    for (const auto &s : game_direct_wrapper_specs())
        if (s.wrapper == root)
            return &s;
    return nullptr;
}
GameDirectCall prepare(Snapshot &im, const GameDirectSpec &s, const GameDirectEnvironment &env,
                       const GameDirectEffects &fx) {
    const auto g = [&](Rva r) { return env.module + r; };
    auto bits = read<std::uint32_t>(im, g(s.flags), s.flags_read);
    Address target;
    if (!(bits & 1)) {
        target = read<Address>(im, g(0x3d6f00), s.base_read) + s.game_offset;
        bits |= 1;
        write(im, g(s.flags), bits, s.flag_one);
        write(im, g(s.target), target, s.target_store);
    } else
        target = read<Address>(im, g(s.target), s.warm_target);
    GameDirectCall call;
    call.wrapper = s.wrapper;
    call.executor = s.executor;
    call.target = target;
    call.context = g(s.context);
    if (!(bits & 2)) {
        if (!s.setup_root_before_flag_two)
            call.dispatcher = read<Address>(im, g(0x3d5e60), s.setup_root);
        write(im, g(s.flags), bits | 2u, s.flag_two);
        if (!!s.setup_root_before_flag_two)
            call.dispatcher = read<Address>(im, g(0x3d5e60), s.setup_root);
        if (fx.observe_context)
            fx.observe_context(call);
    }
    return call;
}
std::string text(const Snapshot &s, Address p, std::size_t maximum, Rva site) {
    std::string result;
    for (std::size_t i = 0; i < maximum; ++i) {
        const auto byte = read<std::uint8_t>(s, p + i, site);
        if (!byte)
            return result;
        result.push_back(char(byte));
    }
    throw SnapshotBindingFailure(GameBaseStatus::analysis_limit, site);
}
std::string request_text(const Snapshot &game, const GameDirectRequest &q, unsigned n,
                         const GameDirectEnvironment &env) {
    if (q.arguments[n])
        return text(game, q.arguments[n], env.maximum_string_bytes, 0x2ce5dc);
    if (q.text[n]) {
        const auto &s = *q.text[n];
        return s.substr(0, s.find('\0'));
    }
    throw SnapshotBindingFailure(GameBaseStatus::missing_boundary, 0x2ce5dc);
}
GameDirectResult invalid(const GameDirectSpec &s, const GameDirectRequest &q) {
    GameDirectResult result;
    switch (s.role) {
    case GameDirectRole::action:
        result.value = std::monostate{};
        break;
    case GameDirectRole::predicate:
        result.value = std::uint8_t(0);
        break;
    case GameDirectRole::scalar:
        result.value = 0.0f;
        break;
    case GameDirectRole::orientation:
        if (q.initial_output)
            result.value = *q.initial_output;
        if (q.output_address) {
            result.raw_return = *q.output_address;
            result.unmaterialized_return_bytes = 0;
        }
        break;
    case GameDirectRole::object:
        if (q.receiver) {
            result.raw_return = (q.receiver - 0x100000) & ~Address(255);
            result.unmaterialized_return_bytes = 0;
        } else {
            result.raw_return = 0; // Only AL is known zero after XOR AL,AL.
            result.unmaterialized_return_bytes = 0xfe;
        }
        break;
    }
    return result;
}
GameDirectResult invoke(Snapshot &im, Snapshot &game, const GameDirectSpec &s, GameDirectCall call,
                        const GameDirectRequest &q, std::span<const GameDirectArgument> args,
                        const GameDirectEnvironment &env, const GameDirectEffects &fx) {
    call.dispatcher = read<Address>(im, env.module + 0x3d5e60, s.effect_root);
    call.raw_argument_keys = q.raw_argument_keys;
    package(im, call, args, q.return_address);
    GameDirectResult result;
    switch (s.role) {
    case GameDirectRole::action:
        need(fx.action, s.effect_site)(call, args);
        result.value = std::monostate{};
        break;
    case GameDirectRole::object:
        result.value = need(fx.object, s.effect_site)(call, args);
        result.raw_return = std::get<Address>(*result.value);
        result.unmaterialized_return_bytes = 0;
        break;
    case GameDirectRole::scalar:
        result.value = need(fx.scalar, s.effect_site)(call, args);
        break;
    case GameDirectRole::predicate: {
        if (s.wrapper == 0x36a238) {
            const auto value = need(fx.scalar, s.effect_site)(call, args);
            result.value = std::uint8_t(value >= read<float>(im, env.module + 0x2930c8, 0x36a2b6));
        } else if (s.wrapper == 0x36a0e0) {
            const auto value = need(fx.object, s.effect_site)(call, args);
            result.value = std::uint8_t(sample_pointer_range(value));
        } else {
            const auto value = need(fx.predicate, s.effect_site)(call, args);
            result.value = std::uint8_t(value != 0);
        }
        break;
    }
    case GameDirectRole::orientation: {
        const auto value = need(fx.orientation, s.effect_site)(call, args);
        if (q.temporary_address)
            write(game, *q.temporary_address, value, 0x373ce5);
        if (q.output_address)
            write(game, *q.output_address, value, 0x373cef);
        result.value = value;
        if (q.output_address) {
            result.raw_return = *q.output_address;
            result.unmaterialized_return_bytes = 0;
        }
        break;
    }
    }
    return result;
}
} // namespace direct_detail
} // namespace rust_internal_re
