#include "game_input_physics_internal.hpp"
namespace rust_internal_re::game_input_detail {
namespace {
struct LiteralPart {
    Rva source;
    ReU64 immediate;
    ReUSize destination, size;
    Rva load, store;
    bool is_immediate;
};
// [C] 0x2cc730..0x2cc737; decoded ''.
constexpr LiteralPart literal_2cc730[]{
    {0, 0x37ULL, 0, 1, 0x2cc730, 0x2cc730, true},
};
// [C] 0x2e5730..0x2e5749; decoded 'get_visible'.
constexpr LiteralPart literal_2e5730[]{
    {0x28de58, 0ULL, 0, 8, 0x2e5736, 0x2e573e, false},
    {0x28de60, 0ULL, 8, 4, 0x2e5730, 0x2e5742, false},
};
// [C] 0x2e5574..0x2e558d; decoded 'UnityEngine'.
constexpr LiteralPart literal_2e5574[]{
    {0x28de48, 0ULL, 0, 8, 0x2e557a, 0x2e5582, false},
    {0x28de50, 0ULL, 8, 4, 0x2e5574, 0x2e5586, false},
};
// [C] 0x2e53f8..0x2e5418; decoded 'Cursor'.
constexpr LiteralPart literal_2e53f8[]{
    {0x28de40, 0ULL, 0, 4, 0x2e53f8, 0x2e53fe, false},
    {0x28de44, 0ULL, 4, 2, 0x2e5400, 0x2e5407, false},
    {0x28de46, 0ULL, 6, 1, 0x2e540b, 0x2e5411, false},
};
// [C] 0x2e56b8..0x2e56d1; decoded 'get_current'.
constexpr LiteralPart literal_2e56b8[]{
    {0x28df80, 0ULL, 0, 8, 0x2e56be, 0x2e56c6, false},
    {0x28df88, 0ULL, 8, 4, 0x2e56b8, 0x2e56ca, false},
};
// [C] 0x2e5504..0x2e551f; decoded 'UnityEngine.InputSystem'.
constexpr LiteralPart literal_2e5504[]{
    {0x28df68, 0ULL, 0, 16, 0x2e5504, 0x2e5516, false},
    {0x28df78, 0ULL, 16, 8, 0x2e550e, 0x2e5519, false},
};
// [C] 0x2e538c..0x2e53a5; decoded 'Keyboard'.
constexpr LiteralPart literal_2e538c[]{
    {0x28df58, 0ULL, 0, 8, 0x2e5392, 0x2e539a, false},
    {0x28df60, 0ULL, 8, 1, 0x2e538c, 0x2e539e, false},
};
// [C] 0x2e56d4..0x2e56ed; decoded 'get_keys'.
constexpr LiteralPart literal_2e56d4[]{
    {0x28dfb8, 0ULL, 0, 8, 0x2e56da, 0x2e56e2, false},
    {0x28dfc0, 0ULL, 8, 1, 0x2e56d4, 0x2e56e6, false},
};
// [C] 0x2e5520..0x2e553b; decoded 'UnityEngine.InputSystem'.
constexpr LiteralPart literal_2e5520[]{
    {0x28dfa0, 0ULL, 0, 16, 0x2e5520, 0x2e5532, false},
    {0x28dfb0, 0ULL, 16, 8, 0x2e552a, 0x2e5535, false},
};
// [C] 0x2e53a8..0x2e53c1; decoded 'Keyboard'.
constexpr LiteralPart literal_2e53a8[]{
    {0x28df90, 0ULL, 0, 8, 0x2e53ae, 0x2e53b6, false},
    {0x28df98, 0ULL, 8, 1, 0x2e53a8, 0x2e53ba, false},
};
// [C] 0x2e574c..0x2e5770; decoded 'get_isPressed'.
constexpr LiteralPart literal_2e574c[]{
    {0x28dea0, 0ULL, 0, 8, 0x2e5752, 0x2e575a, false},
    {0x28dea8, 0ULL, 8, 4, 0x2e574c, 0x2e575e, false},
    {0x28deac, 0ULL, 12, 2, 0x2e5761, 0x2e5768, false},
};
// [C] 0x2e5590..0x2e55b2; decoded 'UnityEngine.InputSystem.Controls'.
constexpr LiteralPart literal_2e5590[]{
    {0x28de78, 0ULL, 0, 16, 0x2e5596, 0x2e55a4, false},
    {0x28de88, 0ULL, 16, 16, 0x2e559d, 0x2e55a7, false},
    {0x28de98, 0ULL, 32, 1, 0x2e5590, 0x2e55ab, false},
};
// [C] 0x2e5434..0x2e5458; decoded 'ButtonControl'.
constexpr LiteralPart literal_2e5434[]{
    {0x28de68, 0ULL, 0, 8, 0x2e543a, 0x2e5442, false},
    {0x28de70, 0ULL, 8, 4, 0x2e5434, 0x2e5446, false},
    {0x28de74, 0ULL, 12, 2, 0x2e5449, 0x2e5450, false},
};
// [C] 0x2e57a0..0x2e57b9; decoded 'get_wasReleasedThisFrame'.
constexpr LiteralPart literal_2e57a0[]{
    {0x28df38, 0ULL, 0, 16, 0x2e57a0, 0x2e57b1, false},
    {0x28df41, 0ULL, 9, 16, 0x2e57aa, 0x2e57b4, false},
};
// [C] 0x2e55f4..0x2e5616; decoded 'UnityEngine.InputSystem.Controls'.
constexpr LiteralPart literal_2e55f4[]{
    {0x28df10, 0ULL, 0, 16, 0x2e55fa, 0x2e5608, false},
    {0x28df20, 0ULL, 16, 16, 0x2e5601, 0x2e560b, false},
    {0x28df30, 0ULL, 32, 1, 0x2e55f4, 0x2e560f, false},
};
// [C] 0x2e5490..0x2e54b4; decoded 'ButtonControl'.
constexpr LiteralPart literal_2e5490[]{
    {0x28df00, 0ULL, 0, 8, 0x2e5496, 0x2e549e, false},
    {0x28df08, 0ULL, 8, 4, 0x2e5490, 0x2e54a2, false},
    {0x28df0c, 0ULL, 12, 2, 0x2e54a5, 0x2e54ac, false},
};
// [C] 0x2e5770..0x2e578b; decoded 'get_wasPressedThisFrame'.
constexpr LiteralPart literal_2e5770[]{
    {0x28dee8, 0ULL, 0, 16, 0x2e5770, 0x2e5782, false},
    {0x28def8, 0ULL, 16, 8, 0x2e577a, 0x2e5785, false},
};
// [C] 0x2e55b4..0x2e55d6; decoded 'UnityEngine.InputSystem.Controls'.
constexpr LiteralPart literal_2e55b4[]{
    {0x28dec0, 0ULL, 0, 16, 0x2e55ba, 0x2e55c8, false},
    {0x28ded0, 0ULL, 16, 16, 0x2e55c1, 0x2e55cb, false},
    {0x28dee0, 0ULL, 32, 1, 0x2e55b4, 0x2e55cf, false},
};
// [C] 0x2e5458..0x2e547c; decoded 'ButtonControl'.
constexpr LiteralPart literal_2e5458[]{
    {0x28deb0, 0ULL, 0, 8, 0x2e545e, 0x2e5466, false},
    {0x28deb8, 0ULL, 8, 4, 0x2e5458, 0x2e546a, false},
    {0x28debc, 0ULL, 12, 2, 0x2e546d, 0x2e5474, false},
};
// [C] 0x32392c..0x323943; decoded 'GameAssembly.dll'.
constexpr LiteralPart literal_32392c[]{
    {0x293ba8, 0ULL, 0, 16, 0x323932, 0x323939, false},
    {0x293bb8, 0ULL, 16, 1, 0x32392c, 0x32393c, false},
};
// [C] 0x323b58..0x323b73; decoded 'il2cpp_resolve_icall'.
constexpr LiteralPart literal_323b58[]{
    {0x293bc0, 0ULL, 0, 16, 0x323b58, 0x323b6a, false},
    {0x293bcd, 0ULL, 13, 8, 0x323b62, 0x323b6d, false},
};
// [C] 0x3238f4..0x323918; decoded 'UnityEngine.Physics::IgnoreLayerCollision()'.
constexpr LiteralPart literal_3238f4[]{
    {0x293bd8, 0ULL, 0, 16, 0x3238f4, 0x323905, false},
    {0x293be8, 0ULL, 16, 16, 0x3238fe, 0x32390f, false},
    {0x293bf4, 0ULL, 28, 16, 0x323908, 0x323913, false},
};
} // namespace
re::ReVector<ReByte> literal_bytes(const Snapshot &image, Address module, Rva constructor) {
    re::ReSpan<const LiteralPart> parts;
    ReUSize length = 0;
    switch (constructor) {
    case 0x2cc730:
        parts = literal_2cc730;
        length = 1;
        break;
    case 0x2e5730:
        parts = literal_2e5730;
        length = 12;
        break;
    case 0x2e5574:
        parts = literal_2e5574;
        length = 12;
        break;
    case 0x2e53f8:
        parts = literal_2e53f8;
        length = 7;
        break;
    case 0x2e56b8:
        parts = literal_2e56b8;
        length = 12;
        break;
    case 0x2e5504:
        parts = literal_2e5504;
        length = 24;
        break;
    case 0x2e538c:
        parts = literal_2e538c;
        length = 9;
        break;
    case 0x2e56d4:
        parts = literal_2e56d4;
        length = 9;
        break;
    case 0x2e5520:
        parts = literal_2e5520;
        length = 24;
        break;
    case 0x2e53a8:
        parts = literal_2e53a8;
        length = 9;
        break;
    case 0x2e574c:
        parts = literal_2e574c;
        length = 14;
        break;
    case 0x2e5590:
        parts = literal_2e5590;
        length = 33;
        break;
    case 0x2e5434:
        parts = literal_2e5434;
        length = 14;
        break;
    case 0x2e57a0:
        parts = literal_2e57a0;
        length = 25;
        break;
    case 0x2e55f4:
        parts = literal_2e55f4;
        length = 33;
        break;
    case 0x2e5490:
        parts = literal_2e5490;
        length = 14;
        break;
    case 0x2e5770:
        parts = literal_2e5770;
        length = 24;
        break;
    case 0x2e55b4:
        parts = literal_2e55b4;
        length = 33;
        break;
    case 0x2e5458:
        parts = literal_2e5458;
        length = 14;
        break;
    case 0x32392c:
        parts = literal_32392c;
        length = 17;
        break;
    case 0x323b58:
        parts = literal_323b58;
        length = 21;
        break;
    case 0x3238f4:
        parts = literal_3238f4;
        length = 44;
        break;
    default:
        { (void)(GameBaseStatus::missing_boundary, constructor); __builtin_trap(); }
    }
    // [I] Native temporary literal storage is an owned value, not a fabricated
    // stack address. Each module load retains its native width and load order.
    re::ReVector<ReUSize> order(parts.size());
    for (ReUSize i = 0; i < order.size(); ++i)
        order[i] = i;
    re::re_sort(order.begin(), order.end(),
                     [&](auto a, auto b) { return parts[a].load < parts[b].load; });
    re::ReVector<re::ReArray<ReByte, 16>> loaded(parts.size());
    for (auto index : order) {
        const auto &p = parts[index];
        if (p.is_immediate) {
            re::re_memcpy(loaded[index].data(), &p.immediate, p.size);
        } else {
            extent(image, module + p.source, p.size, p.load);
            for (ReUSize n = 0; n < p.size; ++n)
                loaded[index][n] = read<ReByte>(image, module + p.source + n, p.load);
        }
    }
    re::ReVector<ReByte> value(length);
    for (ReUSize i = 0; i < parts.size(); ++i)
        re::re_copy_n(loaded[i].begin(), parts[i].size,
                    value.begin() + ReISize(parts[i].destination));
    // [C] All reached decoder specializations use the sentinel at N-1 and
    // XOR every byte (including that sentinel) with55+(index%52).
    if (value.back() != ReByte(0))
        for (ReUSize i = 0; i < value.size(); ++i)
            value[i] ^= ReByte(55 + i % 52);
    return value;
}
re::ReString literal_string(const Snapshot &image, Address module, Rva constructor) {
    const auto bytes = literal_bytes(image, module, constructor);
    re::ReString result;
    for (const auto b : bytes) {
        if (b == ReByte(0))
            return result;
        result.push_back(char(static_cast<ReU8>(b)));
    }
    { (void)(GameBaseStatus::missing_bytes, constructor); __builtin_trap(); }
}
Address store_literal(Snapshot &image, const GameInputPhysicsEnvironment &env, Address offset,
                      re::ReStringView value, Rva site) {
    if (!env.literal_storage || offset > env.literal_capacity ||
        value.size() + 1 > env.literal_capacity - offset)
        { (void)(GameBaseStatus::missing_bytes, site); __builtin_trap(); }
    for (ReUSize i = 0; i < value.size(); ++i)
        write(image, env.literal_storage + offset + i, ReU8(value[i]), site);
    write(image, env.literal_storage + offset + value.size(), ReU8(0), site);
    return env.literal_storage + offset;
}
} // namespace rust_internal_re::game_input_detail
