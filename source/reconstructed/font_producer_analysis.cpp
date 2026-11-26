#include "font_producer_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class T> T pixels_read(const Snapshot &im, Address p, Rva at) {
    const auto value = im.read<T>(p);
    if (!value)
        { __builtin_trap(); }
    return *value;
}
template <class T> void pixels_write(Snapshot &im, Address p, T value, Rva at) {
    if (!im.write(p, value))
        { __builtin_trap(); }
}
FontProducerPixels describe_pixels(const Snapshot &im, Address atlas, bool rgba) {
    return {pixels_read<Address>(im, atlas + (rgba ? 0x38 : 0x30), rgba ? 0x3a4a79 : 0x3a49b6),
            pixels_read<ReI32>(im, atlas + 0x40, rgba ? 0x3a4a85 : 0x3a49c2),
            pixels_read<ReI32>(im, atlas + 0x44, rgba ? 0x3a4a90 : 0x3a49cc), rgba ? 4 : 1};
}
Address ensure_alpha(Snapshot &im, Address atlas, const FontProducerEnvironment &env,
                     const FontProducerEffects &api) {
    if (!pixels_read<Address>(im, atlas + 0x30, 0x3a499e))
        (void)build_font_atlas_3a3394(im, atlas, env, api);
    return pixels_read<Address>(im, atlas + 0x30, 0x3a49b6);
}
void ensure_rgba(Snapshot &im, Address atlas, const FontProducerEnvironment &env,
                 const FontProducerEffects &api) {
    if (pixels_read<Address>(im, atlas + 0x38, 0x3a4a00))
        return;
    // [C] The temporary Alpha8 pointer is initialized0, then always overwritten
    // by3a4994. Its stack address is unobservable to the atlas builder.
    const auto alpha = ensure_alpha(im, atlas, env, api);
    if (!alpha)
        return;
    const auto width = pixels_read<ReI32>(im, atlas + 0x40, 0x3a4a3c);
    const auto height = pixels_read<ReI32>(im, atlas + 0x44, 0x3a4a40);
    const auto requested = ReU64(ReI64(width) * ReI64(height)) << 2;
    if (!api.allocate_owned)
        { __builtin_trap(); }
    const Address rgba = api.allocate_owned(requested);
    // [C] Native dimensions are reloaded after allocation; IMUL is32-bit here.
    const auto post_height = pixels_read<ReU32>(im, atlas + 0x44, 0x3a4a51);
    const auto post_width = pixels_read<ReU32>(im, atlas + 0x40, 0x3a4a54);
    const auto count = re::re_bit_cast<ReI32>(post_width * post_height);
    pixels_write(im, atlas + 0x38, rgba, 0x3a4a58);
    for (ReI32 n = 0; n < count; ++n) {
        if (ReUSize(n) >= env.maximum_pixel_steps)
            { __builtin_trap(); }
        const auto byte = pixels_read<ReU8>(im, alpha + ReU32(n), 0x3a4a5e);
        if (!rgba)
            { __builtin_trap(); }
        pixels_write(im, rgba + 4ULL * ReU32(n), (ReU32(byte) << 24) | 0xffffffu,
                     0x3a4a6d);
    }
}
} // namespace
bool build_font_atlas_3a3394(Snapshot &im, Address atlas, const FontProducerEnvironment &env,
                             const FontProducerEffects &api) {
    if (pixels_read<ReI32>(im, atlas + 0x78, 0x3a339a) == 0)
        { __builtin_trap(); }
    auto builder = pixels_read<Address>(im, atlas + 0x488, 0x3a33a4);
    if (!builder) {
        // [C]3a653c publishes the default local builder target every call.
        builder = env.module + 0x406130;
        pixels_write(im, builder, env.module + 0x3a59bc, 0x3a6543);
    }
    const auto target = pixels_read<Address>(im, builder, 0x3a33bd);
    if (!api.build)
        __builtin_trap();
    return api.build(target, atlas);
}
FontProducerPixels font_alpha_3a4994(Snapshot &im, Address atlas,
                                     const FontProducerEnvironment &env,
                                     const FontProducerEffects &api) {
    (void)ensure_alpha(im, atlas, env, api);
    return describe_pixels(im, atlas, false);
}
FontProducerPixels font_rgba_3a49ec(Snapshot &im, Address atlas, const FontProducerEnvironment &env,
                                    const FontProducerEffects &api) {
    ensure_rgba(im, atlas, env, api);
    return describe_pixels(im, atlas, true);
}
void font_alpha_into_3a4994(Snapshot &im, Address atlas, Address pixels, Address width,
                            Address height, Address channels, const FontProducerEnvironment &env,
                            const FontProducerEffects &api) {
    const auto alpha = ensure_alpha(im, atlas, env, api);
    if (!pixels)
        { __builtin_trap(); }
    pixels_write(im, pixels, alpha, 0x3a49ba);
    if (width)
        pixels_write(im, width, pixels_read<ReI32>(im, atlas + 0x40, 0x3a49c2), 0x3a49c5);
    if (height)
        pixels_write(im, height, pixels_read<ReI32>(im, atlas + 0x44, 0x3a49cc), 0x3a49cf);
    if (channels)
        pixels_write(im, channels, ReI32(1), 0x3a49db);
}
void font_rgba_into_3a49ec(Snapshot &im, Address atlas, Address pixels, Address width,
                           Address height, Address channels, const FontProducerEnvironment &env,
                           const FontProducerEffects &api) {
    ensure_rgba(im, atlas, env, api);
    if (!pixels)
        { __builtin_trap(); }
    pixels_write(im, pixels, pixels_read<Address>(im, atlas + 0x38, 0x3a4a79), 0x3a4a7d);
    if (width)
        pixels_write(im, width, pixels_read<ReI32>(im, atlas + 0x40, 0x3a4a85), 0x3a4a88);
    if (height)
        pixels_write(im, height, pixels_read<ReI32>(im, atlas + 0x44, 0x3a4a90), 0x3a4a93);
    if (channels)
        pixels_write(im, channels, ReI32(4), 0x3a4a9f);
}
UnityApi bind_font_pixels(Snapshot &im, const FontProducerEnvironment &env,
                          const FontProducerEffects &api, UnityApi out) {
    const auto prior = out.external;
    out.external = [&im, env, api,
                    prior](Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (r != 0x3a49ec)
            return prior ? prior(r, args) : re::re_nullopt;
        if (args.empty() || !re::re_holds_alternative<Address>(args[0]))
            __builtin_trap();
        {
            const auto result = font_rgba_3a49ec(im, re::re_get<Address>(args[0]), env, api);
            const auto count = ReI64(result.width) * result.height;
            if (count < 0 || ReU64(count) > env.maximum_pixel_steps)
                { __builtin_trap(); }
            UnityFontPixels value{result.width, result.height, result.channels, {}};
            const auto bytes = ReU64(count) * 4;
            if (bytes && !result.pixels)
                { __builtin_trap(); }
            value.bytes.reserve(ReUSize(bytes));
            for (ReU64 n = 0; n < bytes; ++n)
                value.bytes.push_back(pixels_read<ReByte>(im, result.pixels + n, r));
            return value;
        }
    };
    return out;
}
} // namespace rust_internal_re
