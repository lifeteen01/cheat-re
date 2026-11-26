#include "font_atlas_input_internal.hpp"

namespace rust_internal_re {
using namespace font_atlas_input_detail;
void font_ranges_unpack_3a8bec(Snapshot &image, ReI32 base, Address deltas,
                               ReI32 count, Address output, FontAtlasInputState &state,
                               const FontAtlasInputEnvironment &env) {
    for (ReI32 i = 0; i < count; ++i) {
        if (ReUSize(i) >= env.maximum_steps)
            { __builtin_trap(); }
        const auto p = deltas + ReU32(i) * Address(2);
        const auto delta = get<ReU16>(image, state, p, 0x3a8bf7);
        const auto value = ReU16(ReU32(base) + delta);
        put(image, state, output + 2, value, 0x3a8bfc);
        put(image, state, output, value, 0x3a8c01);
        output += 4;
        const auto reloaded = get<ReI16>(image, state, p, 0x3a8c09);
        base = signed32(ReU32(base) + ReU32(ReI32(reloaded)));
    }
    put(image, state, output, ReU16(0), 0x3a8c1a);
}
Address font_atlas_ranges(Snapshot &image, Rva getter, FontAtlasInputState &state,
                          const FontAtlasInputEnvironment &env) {
    const auto module = env.module;
    switch (getter) {
    case 0x3a47b4:
        return module + 0x2ace30;
    case 0x3a4748:
        return module + 0x2aa308;
    case 0x3a47c4:
        return module + 0x2aa2e0;
    case 0x3a4830:
        return module + 0x2aa2f0;
    case 0x3a4840:
        return module + 0x2ace58;
    case 0x3a4838:
        return module + 0x2ace48;
    case 0x3a47cc: {
        const auto output = module + 0x408870;
        if (!get<ReU16>(image, state, output, 0x3a47d0)) {
            const auto first = get<ReU16>(image, state, module + 0x27fa40, 0x3a47da);
            const auto chunk =
                get<re::ReArray<ReByte, 16>>(image, state, module + 0x27fa42, 0x3a47e8);
            put(image, state, output, first, 0x3a47ef);
            const auto last = get<ReU16>(image, state, module + 0x27fa52, 0x3a47fd);
            put(image, state, output + 0x12, last, 0x3a480f);
            put(image, state, output + 2, chunk, 0x3a4816);
            font_ranges_unpack_3a8bec(image, 0x4e00, module + 0x2ab6c0, 0xbb7, output + 0x14, state,
                                      env);
        }
        return output;
    }
    case 0x3a4750: {
        const auto output = module + 0x406140;
        if (!get<ReU16>(image, state, output, 0x3a4754)) {
            const auto first = get<ReU16>(image, state, module + 0x27fa28, 0x3a475e);
            const auto chunk =
                get<re::ReArray<ReByte, 16>>(image, state, module + 0x27fa2a, 0x3a476c);
            const auto last = get<ReU64>(image, state, module + 0x27fa38, 0x3a4780);
            put(image, state, output + 2, chunk, 0x3a478d);
            put(image, state, output, first, 0x3a4794);
            put(image, state, output + 0x10, last, 0x3a479b);
            font_ranges_unpack_3a8bec(image, 0x4e00, module + 0x2aa330, 0x9c4, output + 0x18, state,
                                      env);
        }
        return output;
    }
    default:
        { __builtin_trap(); }
    }
}
UnityBytes font_atlas_range_bytes(Snapshot &image, Rva getter, FontAtlasInputState &state,
                                  const FontAtlasInputEnvironment &env) {
    const auto key = font_atlas_ranges(image, getter, state, env);
    UnityBytes bytes;
    for (ReUSize i = 0; i < env.maximum_bytes / 2; ++i) {
        const auto word = get<ReU16>(image, state, key + i * 2, getter);
        bytes.bytes.push_back(ReByte(word & 255));
        bytes.bytes.push_back(ReByte(word >> 8));
        if (!word)
            return bytes;
    }
    { __builtin_trap(); }
}
void font_atlas_input_require_font_bytes(const Snapshot &image, Address key,
                                         const FontAtlasInputState &state,
                                         const FontAtlasInputEnvironment &env) {
    const auto count = get<ReI32>(image, state, key + 0x78, 0x3a59bc);
    const auto data = get<Address>(image, state, key + 0x80, 0x3a59bc);
    const auto extent = [&](Address p, ReUSize length) {
        if (length > env.maximum_bytes || !image.contains(p, length))
            { __builtin_trap(); }
        for (const auto &[base, region] : state.regions)
            if (p >= base && (p == base || p - base < region.initialized.size()) &&
                length > region.initialized.size() - ReUSize(p - base))
                __builtin_trap();
    };
    for (ReI32 i = 0; i < count; ++i) {
        if (ReUSize(i) >= env.maximum_steps)
            { __builtin_trap(); }
        const auto config = data + offset(i) * 0x88;
        const auto pointer = get<Address>(image, state, config, 0x3a59bc);
        const auto length =
            ReUSize(offset(get<ReI32>(image, state, config + 8, 0x3a59bc)));
        extent(pointer, length);
        check_known(state, pointer, length, 0x3a59bc);
        auto ranges = get<Address>(image, state, config + 0x38, 0x3a59bc);
        if (!ranges)
            ranges = env.module + 0x2aa2d8; // [C]Frozen builder's literal default range.
        bool terminated = false;
        for (ReUSize n = 0; n < env.maximum_steps; ++n) {
            extent(ranges, n * 4 + 2);
            if (!get<ReU16>(image, state, ranges + n * 4, 0x3a59bc)) {
                terminated = true;
                break;
            }
            extent(ranges, n * 4 + 4);
            (void)get<ReU16>(image, state, ranges + n * 4 + 2, 0x3a59bc);
        }
        if (!terminated)
            { __builtin_trap(); }
    }
}
} // namespace rust_internal_re
