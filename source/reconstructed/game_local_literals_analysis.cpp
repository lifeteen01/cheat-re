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
    { (void)(GameBaseStatus::missing_boundary, converter ? converter : r); __builtin_trap(); }
}
ReU8 byte(const Snapshot &game, const GameLocalLiteralValue &v, ReUSize n, Rva site) {
    if (v.address)
        return read<ReU8>(game, *v.address + n, site);
    if (n >= v.bytes.size() || !v.bytes[n])
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
    return *v.bytes[n];
}
void store(Snapshot &game, GameLocalLiteralValue &v, ReUSize n,
           re::ReSpan<const ReU8> data, Rva site) {
    if (v.address)
        extent(game, *v.address + n, data.size(), site);
    if (v.bytes.size() < n + data.size())
        v.bytes.resize(n + data.size());
    for (ReUSize i = 0; i < data.size(); ++i) {
        if (v.address)
            write(game, *v.address + n + i, data[i], site);
        v.bytes[n + i] = data[i];
    }
}
} // namespace
re::ReSpan<const GameLocalLiteralSpec> game_local_literal_specs() {
    return literal_specs;
}
GameBaseResult<GameLocalLiteralValue> game_local_literal(Snapshot &im, Snapshot &game, Rva getter,
                                                         Rva converter,
                                                         const GameLocalLiteralEnvironment &env) {
    GameBaseResult<GameLocalLiteralValue> result;
    {
        const auto &s = spec(getter, converter);
        if (const auto it = env.aliases.find(getter); bool(it))
            result.value.address = **it;
        re::ReArray<re::ReVector<ReU8>, 5> slots;
        for (ReU32 n = 0; n < s.operation_count; ++n) {
            const auto &op = literal_operations[s.operation_begin + n];
            if (op.kind == GameLocalLiteralOperationKind::store) {
                if (slots[op.slot].size() < op.width)
                    { (void)(GameBaseStatus::missing_bytes, op.site); __builtin_trap(); }
                store(game, result.value, op.offset, re::ReSpan(slots[op.slot]).subspan(0, op.width),
                      op.site);
                continue;
            }
            auto &v = slots[op.slot];
            v.resize(op.width);
            if (op.kind == GameLocalLiteralOperationKind::load) {
                const auto address = env.direct.module + op.source_or_value;
                extent(im, address, op.width,
                       op.site); // Full native load before any register payload changes.
                for (ReUSize i = 0; i < op.width; ++i)
                    v[i] = read<ReU8>(im, address + i, op.site);
            } else {
                for (ReUSize i = 0; i < op.width; ++i)
                    v[i] = ReU8(op.source_or_value >> (8 * i));
            }
        }
        if (byte(game, result.value, s.guard_offset, s.guard)) {
            for (ReU32 i = 0; i < s.count; ++i) {
                const auto decoded = ReU8(byte(game, result.value, i, s.decode) ^
                                                  ReU8(i % s.modulus + 55));
                store(game, result.value, i, re::ReSpan(&decoded, 1), s.decode);
            }
        }
        // Projection stays within bytes the producer actually wrote. Native
        // conversion returns its pointer without demanding a later terminator.
        for (ReUSize i = 0; i < result.value.bytes.size(); ++i) {
            const auto c = byte(game, result.value, i, s.converter);
            if (!c) {
                result.value.terminated = true;
                break;
            }
            result.value.text.push_back(char(c));
        }
    }
    return result;
}
GameBaseResult<ReU64> game_local_literal_hash(Snapshot &im, Snapshot &game, Rva getter,
                                                      Rva converter, ReU64 seed,
                                                      const GameLocalLiteralEnvironment &env) {
    {
        const auto value = require(game_local_literal(im, game, getter, converter, env));
        if (value.address)
            return {entity_name_hash_2d6354(text(game, *value.address, env.maximum_bytes, 0x2e5b4c),
                                            seed)};
        if (!value.terminated)
            { (void)(GameBaseStatus::missing_bytes, 0x2e5b4c); __builtin_trap(); }
        return {entity_name_hash_2d6354(value.text, seed)};
    }
}
GameBaseResult<ReU64> game_local_name_hash_2d6354(const Snapshot &game, Address address,
                                                          ReUSize maximum) {
    {
        return {entity_name_hash_2d6354(text(game, address, maximum, 0x2d6378))};
    }
}
GameBaseResult<int> game_local_literal_compare(Snapshot &im, Snapshot &game, Address name,
                                               Rva getter, Rva converter,
                                               const GameLocalLiteralEnvironment &env) {
    {
        const auto value = require(game_local_literal(im, game, getter, converter, env));
        for (ReUSize i = 0; i < env.maximum_bytes; ++i) {
            // [C]3ca884 first loads right, then left, then compares signed bytes.
            const auto rhs = byte(game, value, i, i ? 0x3ca897 : 0x3ca884);
            const auto lhs = read<ReU8>(game, name + i, i ? 0x3ca89f : 0x3ca889);
            if (lhs != rhs) {
                const auto a = read<ReI8>(game, name + i, 0x3ca8a5);
                const auto b = re::re_bit_cast<ReI8>(byte(game, value, i, 0x3ca8aa));
                return {int(a) - int(b)};
            }
            if (!read<ReU8>(game, name + i, 0x3ca891))
                return {0};
        }
        return {0, GameBaseStatus::analysis_limit, 0x3ca884};
    }
}
GameBaseResult<Address> game_local_literal_managed(Snapshot &im, Snapshot &game, Rva getter,
                                                   Rva converter,
                                                   const GameLocalLiteralEnvironment &env,
                                                   const GameDirectEffects &fx) {
    {
        const auto value = require(game_local_literal(im, game, getter, converter, env));
        GameDirectRequest q;
        auto effects = fx;
        const auto leaf = effects.shared.string_new_2ce718;
        effects.shared.string_new_2ce718 = [&](re::ReStringView) {
            if (value.address)
                return need(leaf,
                            0x2ce78b)(text(game, *value.address, env.maximum_bytes, 0x2ce78b));
            if (!value.terminated)
                { (void)(GameBaseStatus::missing_bytes, 0x2ce78b); __builtin_trap(); }
            return need(leaf, 0x2ce78b)(value.text);
        };
        return {managed(im, value.text, value.address, q, env.direct, effects)};
    }
}
} // namespace rust_internal_re
