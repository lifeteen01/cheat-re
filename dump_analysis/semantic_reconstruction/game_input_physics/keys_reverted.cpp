#include "game_input_physics_internal.hpp"

namespace rust_internal_re {
using namespace game_input_detail;
namespace game_input_detail {
void key_initialize(GameInputKeyStore &s) {
    // [I]Owned specialization of2e4dd0/2e4bf8: sentinel/list/bucket allocation
    // stays owned rather than fabricating native addresses. The visible payload
    // is int32+byte; native node padding is not represented as initialized data.
    s.entries.clear();
    s.maximum_load = 1;
    s.buckets = 8;
    s.initialized = true;
}
std::optional<std::size_t> key_find(const GameInputKeyStore &s, std::int32_t key) {
    if (!s.initialized)
        throw SnapshotBindingFailure(GameBaseStatus::missing_bytes, 0x2d8880);
    const auto hash = baseline_hash_2d0ae4(std::uint32_t(key));
    // [C]2cf0e4→2d553c→2d6fa0 uses the existing four-byte FNV specialization;
    // 2d07d4 walks the bucket from last toward first and compares the full key.
    for (std::size_t n = s.entries.size(); n != 0; --n)
        if (s.entries[n - 1].hash == hash && s.entries[n - 1].key == key)
            return n - 1;
    return {};
}
std::size_t key_insert(GameInputKeyStore &s, std::int32_t key, std::size_t maximum) {
    if (const auto found = key_find(s, key))
        return *found;
    if (!s.buckets || s.entries.size() >= maximum)
        throw SnapshotBindingFailure(GameBaseStatus::analysis_limit, 0x2e4488);
    // [C]New key/value construction precedes the load-factor/rehash test. The
    // native default-inserting pair constructor writes key and valuebyte0 only.
    const GameInputKeyEntry entry{key, 0, baseline_hash_2d0ae4(std::uint32_t(key))};
    const float needed = float(s.entries.size() + 1);
    if (needed / float(s.buckets) > s.maximum_load) {
        const double request = std::ceil(double(needed / s.maximum_load));
        if (!std::isfinite(request) || request < 0 ||
            request > double(std::numeric_limits<std::size_t>::max() / 8))
            throw SnapshotBindingFailure(GameBaseStatus::analysis_limit, 0x2e9738);
        auto wanted = std::max(std::size_t(8), std::size_t(request));
        if (s.buckets < 512 && s.buckets * 8 >= wanted)
            wanted = s.buckets * 8;
        s.buckets = std::bit_ceil(wanted);
        // [C]Same unique-key list/bucket specialization as the existing registry:
        // visit old list forward and splice repeated buckets before their first.
        const auto old = s.entries;
        std::vector<std::optional<std::int32_t>> first(s.buckets);
        for (const auto &e : old) {
            const auto bucket = std::size_t(e.hash) & (s.buckets - 1);
            if (first[bucket]) {
                const auto current = std::find_if(s.entries.begin(), s.entries.end(),
                                                  [&](const auto &v) { return v.key == e.key; });
                const auto copy = *current;
                s.entries.erase(current);
                const auto before =
                    std::find_if(s.entries.begin(), s.entries.end(),
                                 [&](const auto &v) { return v.key == *first[bucket]; });
                s.entries.insert(before, copy);
            }
            first[bucket] = e.key;
        }
    }
    const auto bucket = std::size_t(entry.hash) & (s.buckets - 1);
    const auto before = std::find_if(s.entries.begin(), s.entries.end(), [&](const auto &v) {
        return (std::size_t(v.hash) & (s.buckets - 1)) == bucket;
    });
    const auto index = std::size_t(before - s.entries.begin());
    s.entries.insert(before, entry);
    return index;
}
} // namespace game_input_detail
GameBaseResult<Address> game_input_object(Snapshot &image, Rva wrapper, Address receiver,
                                          const GameInputPhysicsEnvironment &env,
                                          const GameInputPhysicsEffects &effects) {
    return protect<Address>([&] {
        if (wrapper != 0x2e5eec && wrapper != 0x2e5ff8)
            throw SnapshotBindingFailure(GameBaseStatus::missing_boundary, wrapper);
        auto call = method_prepare(image, wrapper, env, effects);
        call = wrapper == 0x2e5eec ? pack_zero_object(image, call)
                                   : pack_object(image, call, receiver);
        return need(effects.object, call.packer)(call, receiver);
    });
}
GameBaseResult<bool> game_input_captured_2e6744(Snapshot &image,
                                                const GameInputPhysicsEnvironment &env,
                                                const GameInputPhysicsEffects &effects) {
    return protect<bool>([&] {
        auto call = pack_zero_predicate(image, method_prepare(image, 0x2e6744, env, effects));
        // [C]2e49ec normalizes the complete returned machine word.
        return std::uint8_t(need(effects.predicate, 0x2e4a07)(call, 0)) != 0;
    });
}
GameBaseResult<bool> game_input_button(Snapshot &image, Rva wrapper, Address receiver,
                                       const GameInputPhysicsEnvironment &env,
                                       const GameInputPhysicsEffects &effects) {
    return protect<bool>([&] {
        if (wrapper != 0x2e68b8 && wrapper != 0x2e90d8 && wrapper != 0x2e8e88)
            throw SnapshotBindingFailure(GameBaseStatus::missing_boundary, wrapper);
        const auto call =
            pack_object(image, method_prepare(image, wrapper, env, effects), receiver);
        return std::uint8_t(need(effects.predicate, 0x2cb9fc)(call, receiver)) != 0;
    });
}
GameBaseResult<bool> game_input_key_mode_2e9c7c(Snapshot &image, const Snapshot &game,
                                                std::int32_t key, std::int32_t mode,
                                                const GameInputPhysicsEnvironment &env,
                                                const GameInputPhysicsEffects &effects) {
    return protect<bool>([&] {
        const auto keyboard = required(game_input_object(image, 0x2e5eec, 0, env, effects));
        if (!sample_pointer_range(keyboard))
            return false;
        const auto keys = required(game_input_object(image, 0x2e5ff8, keyboard, env, effects));
        if (!sample_pointer_range(keys) || key < 0)
            return false;
        const auto count = read<std::int32_t>(game, keys + 0x18, 0x2e9cba);
        if (key >= count)
            return false;
        const auto button =
            read<Address>(game, keys + Address(std::int64_t(key)) * 8 + 0x20, 0x2e9cbf);
        if (!sample_pointer_range(button))
            return false;
        const auto wrapper = mode == 0   ? 0x2e8e88u
                             : mode == 1 ? 0x2e90d8u
                             : mode == 2 ? 0x2e68b8u
                                         : 0u;
        if (!wrapper)
            return false;
        return required(game_input_button(image, wrapper, button, env, effects));
    });
}
GameBaseResult<bool> game_input_key_2e5e4c(Snapshot &image, const Snapshot &game, std::int32_t key,
                                           bool suppress, const GameInputPhysicsEnvironment &env,
                                           const GameInputPhysicsEffects &effects) {
    return protect<bool>([&] {
        // [C]3926ac runs first; retain this IO key across cursor callbacks.
        const auto io = read<Address>(image, env.module + 0x405b28, 0x3926ac) + 8;
        if (required(game_input_captured_2e6744(image, env, effects)) && suppress)
            return false;
        if (key >= 0x22b && key <= 0x22f) {
            constexpr std::array<Rva, 5> sites{0x2e5e84, 0x2e5e94, 0x2e5ea4, 0x2e5eb4, 0x2e5ee0};
            if (read<std::uint8_t>(game, io + 0xe08 + std::uint32_t(key - 0x22b),
                                   sites[std::size_t(key - 0x22b)]))
                return true;
        }
        return required(game_input_key_mode_2e9c7c(image, game, key, 2, env, effects));
    });
}
GameBaseResult<bool> game_input_edge_2e8910(Snapshot &image, const Snapshot &game,
                                            GameInputKeyStore &store, std::int32_t key,
                                            bool suppress, const GameInputPhysicsEnvironment &env,
                                            const GameInputPhysicsEffects &effects) {
    return protect<bool>([&] {
        if (required(game_input_captured_2e6744(image, env, effects)) && suppress)
            return false;
        const auto flags = read<std::uint32_t>(image, env.module + 0x3e4cf0, 0x2e8934);
        if (!(flags & 1)) {
            write(image, env.module + 0x3e4cf0, flags | 1u, 0x2e894c);
            key_initialize(store); // [C]2cd32c registration callee is literally XOR EAX,EAX;RET.
        }
        const bool down = required(game_input_key_2e5e4c(image, game, key, false, env, effects));
        const auto found = key_find(store, key);
        const bool edge = (!found || !store.entries[*found].previous) && down;
        const auto position = key_insert(store, key, env.maximum_steps);
        store.entries[position].previous = std::uint8_t(down);
        return edge;
    });
}
} // namespace rust_internal_re
