#include "game_local_literals_analysis.hpp"
#include "game_direct_wrappers_internal.hpp"
#include "entities_analysis.hpp"
namespace rust_internal_re {
namespace {
using namespace direct_detail;
#include "game_local_literals_catalogue.inc"
const GameLocalLiteralSpec &spec(Rva r, Rva converter) {
    for (const auto &s : literal_specs)
        if (s.getter == r && (!converter || s.converter == converter))
            return s;
    throw SnapshotBindingFailure(GameBaseStatus::missing_boundary, converter ? converter : r);
}
std::uint8_t byte(const Snapshot &game, const GameLocalLiteralValue &v, std::size_t n, Rva site) {
    if (v.address)
        return read<std::uint8_t>(game, *v.address + n, site);
    if (n >= v.bytes.size() || !v.bytes[n])
        throw SnapshotBindingFailure(GameBaseStatus::missing_bytes, site);
    return *v.bytes[n];
}
void store(Snapshot &game, GameLocalLiteralValue &v, std::size_t n,
           std::span<const std::uint8_t> data, Rva site) {
    if (v.address)
        extent(game, *v.address + n, 1, site);
    if (v.bytes.size() < n + data.size())
        v.bytes.resize(n + data.size());
    for (std::size_t i = 0; i < data.size(); ++i) {
        if (v.address)
            write(game, *v.address + n + i, data[i], site);
        v.bytes[n + i] = data[i];
    }
}
} // namespace
std::span<const GameLocalLiteralSpec> game_local_literal_specs() {
    return literal_specs;
}
GameBaseResult<GameLocalLiteralValue> game_local_literal(Snapshot &im, Snapshot &game, Rva getter,
                                                         Rva converter,
                                                         const GameLocalLiteralEnvironment &env) {
    GameBaseResult<GameLocalLiteralValue> result;
    try {
        const auto &s = spec(getter, converter);
        if (const auto it = env.aliases.find(getter); it != env.aliases.end())
            result.value.address = it->second;
        std::array<std::vector<std::uint8_t>, 5> slots;
        for (std::uint32_t n = 0; n < s.operation_count; ++n) {
            const auto &op = literal_operations[s.operation_begin + n];
            if (op.kind == GameLocalLiteralOperationKind::store) {
                if (slots[op.slot].size() < op.width)
                    throw SnapshotBindingFailure(GameBaseStatus::missing_bytes, op.site);
                store(game, result.value, op.offset, std::span(slots[op.slot]).first(op.width),
                      op.site);
                continue;
            }
            auto &v = slots[op.slot];
            v.resize(op.width);
            if (op.kind == GameLocalLiteralOperationKind::load) {
                const auto address = env.direct.module + op.source_or_value;
                extent(im, address, op.width,
                       op.site); // Full native load before any register payload changes.
                for (std::size_t i = 0; i < op.width; ++i)
                    v[i] = read<std::uint8_t>(im, address + i, op.site);
            } else {
                for (std::size_t i = 0; i < op.width; ++i)
                    v[i] = std::uint8_t(op.source_or_value >> (8 * i));
            }
        }
        if (byte(game, result.value, s.guard_offset, s.guard)) {
            for (std::uint32_t i = 0; i < s.count; ++i) {
                const auto decoded = std::uint8_t(byte(game, result.value, i, s.decode) ^
                                                  std::uint8_t(i % s.modulus + 55));
                store(game, result.value, i, std::span(&decoded, 1), s.decode);
            }
        }
        // Projection stays within bytes the producer actually wrote. Native
        // conversion returns its pointer without demanding a later terminator.
        for (std::size_t i = 0; i < result.value.bytes.size(); ++i) {
            const auto c = byte(game, result.value, i, s.converter);
            if (!c) {
                result.value.terminated = true;
                break;
            }
            result.value.text.push_back(char(c));
        }
    } catch (const SnapshotBindingFailure &e) {
        result.status = e.status;
        result.site = e.site;
    }
    return result;
}
GameBaseResult<std::uint64_t> game_local_literal_hash(Snapshot &im, Snapshot &game, Rva getter,
                                                      Rva converter, std::uint64_t seed,
                                                      const GameLocalLiteralEnvironment &env) {
    try {
        const auto value = require(game_local_literal(im, game, getter, converter, env));
        if (value.address)
            return {entity_name_hash_2d6354(text(game, *value.address, env.maximum_bytes, 0x2e5b4c),
                                            seed)};
        if (!value.terminated)
            throw SnapshotBindingFailure(GameBaseStatus::missing_bytes, 0x2e5b4c);
        return {entity_name_hash_2d6354(value.text, seed)};
    } catch (const SnapshotBindingFailure &e) {
        return {0, e.status, e.site};
    }
}
GameBaseResult<std::uint64_t> game_local_name_hash_2d6354(const Snapshot &game, Address address,
                                                          std::size_t maximum) {
    try {
        return {entity_name_hash_2d6354(text(game, address, maximum, 0x2d6378))};
    } catch (const SnapshotBindingFailure &e) {
        return {0, e.status, e.site};
    }
}
GameBaseResult<int> game_local_literal_compare(Snapshot &im, Snapshot &game, Address name,
                                               Rva getter, Rva converter,
                                               const GameLocalLiteralEnvironment &env) {
    try {
        const auto value = require(game_local_literal(im, game, getter, converter, env));
        for (std::size_t i = 0; i < env.maximum_bytes; ++i) {
            // [C]3ca884 first loads right, then left, then compares signed bytes.
            const auto rhs = byte(game, value, i, i ? 0x3ca897 : 0x3ca884);
            const auto lhs = read<std::uint8_t>(game, name + i, i ? 0x3ca89f : 0x3ca889);
            if (lhs != rhs) {
                const auto a = read<std::int8_t>(game, name + i, 0x3ca8a5);
                const auto b = std::bit_cast<std::int8_t>(byte(game, value, i, 0x3ca8aa));
                return {int(a) - int(b)};
            }
            if (!read<std::uint8_t>(game, name + i, 0x3ca891))
                return {0};
        }
        return {0, GameBaseStatus::analysis_limit, 0x3ca884};
    } catch (const SnapshotBindingFailure &e) {
        return {0, e.status, e.site};
    }
}
GameBaseResult<Address> game_local_literal_managed(Snapshot &im, Snapshot &game, Rva getter,
                                                   Rva converter,
                                                   const GameLocalLiteralEnvironment &env,
                                                   const GameDirectEffects &fx) {
    try {
        const auto value = require(game_local_literal(im, game, getter, converter, env));
        GameDirectRequest q;
        auto effects = fx;
        const auto leaf = effects.shared.string_new_2ce718;
        effects.shared.string_new_2ce718 = [&](std::string_view) {
            if (value.address)
                return need(leaf,
                            0x2ce78b)(text(game, *value.address, env.maximum_bytes, 0x2ce78b));
            if (!value.terminated)
                throw SnapshotBindingFailure(GameBaseStatus::missing_bytes, 0x2ce78b);
            return need(leaf, 0x2ce78b)(value.text);
        };
        return {managed(im, value.text, value.address, q, env.direct, effects)};
    } catch (const SnapshotBindingFailure &e) {
        return {0, e.status, e.site};
    } catch (const MetadataWrapperFailure &e) {
        return {0, game_base_status(e.status), e.site};
    }
}
} // namespace rust_internal_re
