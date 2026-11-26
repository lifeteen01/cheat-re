#include "font_atlas_input_internal.hpp"

namespace rust_internal_re {
using namespace font_atlas_input_detail;
FontAtlasInputEffects bind_font_atlas_input_allocators(
    Snapshot &image, FontAtlasInputEffects effects,
    const re::ReFunction<Address(Address, Address, ReUSize)> &allocate,
    const re::ReFunction<void(Address, Address, Address)> &release) {
    effects.allocate_owned = [&image, allocate](ReU64 size) {
        return draw_core_allocate_395158(image, ReUSize(size), allocate);
    };
    effects.support.free_39517c = [&image, release](Address object) {
        draw_core_free_39517c(image, object, release);
    };
    return effects;
}
namespace {
template <class T> const T &argument(re::ReSpan<const UnityValue> args, ReUSize index, Rva r) {
    if (index < args.size())
        if (const auto value = re::re_get_if<T>(&args[index]))
            return *value;
    { __builtin_trap(); }
}
bool range_role(Rva r) {
    constexpr re::ReArray<Rva, 8> roles{0x3a47b4, 0x3a47cc, 0x3a4748, 0x3a47c4,
                                       0x3a4830, 0x3a4840, 0x3a4838, 0x3a4750};
    return re::re_find(roles.begin(), roles.end(), r) != roles.end();
}
} // namespace
UnityApi bind_font_atlas_input(Snapshot &image, FontTextStore &store, FontAtlasInputState &state,
                               const FontAtlasInputEnvironment &env,
                               const FontAtlasInputEffects &effects, UnityApi fallback) {
    const auto prior = fallback.external;
    fallback.external = [&image, &store, &state, env, effects, prior](
                            Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (r == 0x39f550)
            return font_config_value_39f550();
        if (range_role(r))
            return font_atlas_range_bytes(image, r, state, env);
        if (r == 0x3a3c40) {
            font_atlas_clear_3a3c40(image, argument<Address>(args, 0, r), store, state, env,
                                    effects);
            return re::ReMonostate{};
        }
        if (r == 0x39fe54) {
            const auto atlas = argument<Address>(args, 0, r);
            const auto &bytes = argument<UnityBytes>(args, 1, r);
            const auto length = argument<ReI32>(args, 2, r);
            const auto size = argument<float>(args, 3, r);
            if (args.size() < 6)
                { __builtin_trap(); }
            Context c{image, store, state, env, effects};
            // [I]Owned storage is explicit even when the original cfg transfers
            // ownership; UnityBytes has deliberately lost its native pointer.
            const auto data = c.marshal(FontAtlasInputStorage::font_bytes, bytes.bytes, r);
            const auto storage_argument = [&](ReUSize i, FontAtlasInputStorage purpose) {
                if (const auto value = re::re_get_if<Address>(&args[i]))
                    return *value;
                const auto &blob = argument<UnityBytes>(args, i, r);
                if (purpose == FontAtlasInputStorage::temporary_config && blob.bytes.size() < 0x88)
                    { __builtin_trap(); }
                return c.marshal(purpose, blob.bytes, r);
            };
            const auto config = storage_argument(4, FontAtlasInputStorage::temporary_config);
            const auto ranges = storage_argument(5, FontAtlasInputStorage::glyph_ranges);
            return font_atlas_memory_39fe54(image, atlas, data, length, size, config, ranges, store,
                                            state, env, effects);
        }
        return prior ? prior(r, args) : re::re_nullopt;
    };
    return fallback;
}
FrameDependencyApi bind_frame_font_atlas_input(Snapshot &image, FontTextStore &store,
                                               FontAtlasInputState &state,
                                               const FontAtlasInputEnvironment &env,
                                               const FontAtlasInputEffects &effects,
                                               FrameDependencyApi fallback) {
    fallback.unity = bind_font_atlas_input(image, store, state, env, effects, fallback.unity);
    return fallback;
}
} // namespace rust_internal_re
