from pathlib import Path
import json
out=Path('/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics');rs=json.loads((out/'literals.json').read_text())
s='''#include "game_input_physics_internal.hpp"
namespace rust_internal_re::game_input_detail {
namespace {
struct LiteralPart {
    Rva source;
    std::uint64_t immediate;
    std::size_t destination, size;
    Rva load, store;
    bool is_immediate;
};
'''
for r in rs:
 name=r['constructor'][2:];s+=f'// [C] {r["constructor"]}..{r["end"]}; decoded '+repr(r['decoded'].rstrip('\0'))+'.\n'
 s+=f'constexpr LiteralPart literal_{name}[]{{\n'
 for p in r['parts']:
  s+='    {'+f'{p.get("source","0")}, {p.get("immediate","0")}ULL, {p["destination"]}, {p["size"]}, {p["load"]}, {p["store"]}, '+str('immediate'in p).lower()+'},\n'
 s+='};\n'
s+='''} // namespace
std::vector<std::byte> literal_bytes(const Snapshot &image, Address module, Rva constructor) {
    std::span<const LiteralPart> parts;
    std::size_t length = 0;
    switch (constructor) {
'''
for r in rs:s+=f'    case {r["constructor"]}: parts = literal_{r["constructor"][2:]}; length = {r["length"]}; break;\n'
s+='''    default: throw SnapshotBindingFailure(GameBaseStatus::missing_boundary, constructor);
    }
    // [I] Native temporary literal storage is an owned value, not a fabricated
    // stack address. Each module load retains its native width and load order.
    std::vector<std::size_t> order(parts.size());
    for (std::size_t i = 0; i < order.size(); ++i)
        order[i] = i;
    std::stable_sort(order.begin(), order.end(), [&](auto a, auto b) {
        return parts[a].load < parts[b].load;
    });
    std::vector<std::array<std::byte, 16>> loaded(parts.size());
    for (auto index : order) {
        const auto &p = parts[index];
        if (p.is_immediate) {
            std::memcpy(loaded[index].data(), &p.immediate, p.size);
        } else {
            extent(image, module + p.source, p.size, p.load);
            for (std::size_t n = 0; n < p.size; ++n)
                loaded[index][n] = read<std::byte>(image, module + p.source + n, p.load);
        }
    }
    std::vector<std::byte> value(length);
    for (std::size_t i = 0; i < parts.size(); ++i)
        std::copy_n(loaded[i].begin(), parts[i].size, value.begin() + std::ptrdiff_t(parts[i].destination));
    // [C] All reached decoder specializations use the sentinel at N-1 and
    // XOR every byte (including that sentinel) with55+(index%52).
    if (value.back() != std::byte(0))
        for (std::size_t i = 0; i < value.size(); ++i)
            value[i] ^= std::byte(55 + i % 52);
    return value;
}
std::string literal_string(const Snapshot &image, Address module, Rva constructor) {
    const auto bytes = literal_bytes(image, module, constructor);
    std::string result;
    for (const auto b : bytes) {
        if (b == std::byte(0))
            return result;
        result.push_back(char(std::to_integer<std::uint8_t>(b)));
    }
    throw SnapshotBindingFailure(GameBaseStatus::missing_bytes, constructor);
}
Address store_literal(Snapshot &image, const GameInputPhysicsEnvironment &env, Address offset,
                        std::string_view value, Rva site) {
    if (!env.literal_storage || offset > env.literal_capacity ||
        value.size() + 1 > env.literal_capacity - offset)
        throw SnapshotBindingFailure(GameBaseStatus::missing_bytes, site);
    for (std::size_t i = 0; i < value.size(); ++i)
        write(image, env.literal_storage + offset + i, std::uint8_t(value[i]), site);
    write(image, env.literal_storage + offset + value.size(), std::uint8_t(0), site);
    return env.literal_storage + offset;
}
} // namespace rust_internal_re::game_input_detail
'''
Path('/home/john/Desktop/cheat_re/source/reconstructed/game_input_physics_literals.cpp').write_text(s)
