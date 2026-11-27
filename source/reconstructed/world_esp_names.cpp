#include "world_esp_analysis.hpp"
namespace rust_internal_re {
re::ReString encode_world_name_393c38(re::ReSpan<const ReU16> wide, ReUSize capacity) {
    re::ReString out;
    if (capacity == 0)
        return out;
    for (const auto c : wide) {
        if (out.size() >= capacity - 1 || c == 0)
            break;
        re::ReArray<char, 3> bytes{};
        ReUSize n = 0;
        if (c < 0x80) {
            bytes[0] = char(c);
            n = 1;
        } else if (c < 0x800) {
            bytes[0] = char(0xc0 + (c >> 6));
            bytes[1] = char(0x80 | (c & 0x3f));
            n = 2;
        } else {
            bytes[0] = char(0xe0 + (c >> 12));
            bytes[1] = char(0x80 | ((c >> 6) & 0x3f));
            bytes[2] = char(0x80 | (c & 0x3f));
            n = 3;
        }
        // [C] 393a04 returns zero if this WORD's encoding does not fit; caller advances input anyway.
        // Surrogate words are encoded independently, exactly as the sample, without pair merging.
        if (n <= capacity - 1 - out.size())
            out.append(bytes.data(), n);
    }
    return out;
}
re::ReString streamer_world_name_3661ac(re::ReStringView input, WorldNameState &state,
                                       WorldNameBackend &b) {
    const re::ReString key(input);
    if (auto it = state.substitutions_3fdad0.find(key); bool(it))
        return **it;
    if (!b.random_2e3d5c)
        { __builtin_trap(); }
    const auto count = world_cvttss2si(b.random_2e3d5c(4, 8));
    const float parity = b.random_2e3d5c(0, 1);
    const int alternate = parity == 0.0f ? 1 : 0;
    re::ReString result;
    if (count > 1000000)
        { __builtin_trap(); }
    for (ReI32 i = 0; i < count; ++i) {
        const auto alphabet = ((~i) & 1) == alternate ? re::ReStringView("bcdfghjklmnpqrstvwxyz")
                                                      : re::ReStringView("aeiou");
        float value = b.random_2e3d5c(0, float(alphabet.size() - 1));
        const float two63 = re::re_bit_cast<float>(0x5f000000u);
        ReU64 high = 0;
        if (value >= two63) {
            value -= two63;
            if (value < two63)
                high = 1ULL << 63;
        }
        const auto signed_index =
            (value >= -two63 && value < two63) ? ReI64(value) : INT64_MIN;
        const ReU64 index = ReU64(signed_index) + high;
        if (index >= alphabet.size())
            { __builtin_trap(); }
        result.push_back(alphabet[ReUSize(index)]);
    }
    state.substitutions_3fdad0[key] = result;
    return result;
}
re::ReOptional<re::ReString> world_owner_name_3663d4_3665b8(const Snapshot &im, Address entity,
                                                          bool corpse, const WorldEspConfig &c,
                                                          WorldNameState &state,
                                                          WorldNameBackend &b) {
    if (!sample_pointer_range(entity))
        return re::ReString{};
    const auto pointer = im.read<Address>(entity + (corpse ? 0x348 : 0x2e8));
    if (!pointer)
        return {};
    if (!sample_pointer_range(*pointer) || !sample_pointer_range(*pointer + 0x14))
        return re::ReString{};
    const auto wide = read_utf16z_snapshot(im, *pointer + 0x14);
    if (!wide)
        return {};
    auto name = encode_world_name_393c38(*wide);
    if (name.empty())
        return name;
    if (c.boolean(0x3fc4c8))
        name = streamer_world_name_3661ac(name, state, b);
    return name;
}
} // namespace rust_internal_re
