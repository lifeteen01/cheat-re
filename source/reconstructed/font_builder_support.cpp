#include "font_builder_support.hpp"
namespace rust_internal_re {
namespace {
template <class T> T font_get(const Snapshot &image, Address address, Rva site) {
    const auto value = image.read<T>(address);
    if (!value)
        { __builtin_trap(); }
    return *value;
}
template <class T> void font_put(Snapshot &image, Address address, T value, Rva site) {
    if (!image.write(address, value))
        { __builtin_trap(); }
}
void free_font_memory(Address pointer, const FontBuilderSupportEffects &api, Rva site) {
    if (!api.free_39517c)
        { __builtin_trap(); }
    api.free_39517c(pointer);
}
void clear_vector_379578(Snapshot &image, Address descriptor,
                         const FontBuilderSupportEffects &api) {
    const auto pointer = font_get<Address>(image, descriptor + 8, 0x379581);
    if (pointer) {
        font_put(image, descriptor, ReU64(0), 0x37958a);
        free_font_memory(pointer, api, 0x379591);
        font_put(image, descriptor + 8, Address(0), 0x379596);
    }
}
ReU64 signed_offset(ReI32 value) {
    return ReU64(ReI64(value));
}
} // namespace
void font_clear_pixels_3a3e64(Snapshot &image, Address atlas,
                              const FontBuilderSupportEffects &api) {
    const auto alpha = font_get<Address>(image, atlas + 0x30, 0x3a3e6d);
    if (alpha)
        free_font_memory(alpha, api, 0x3a3e76);
    const auto rgba = font_get<Address>(image, atlas + 0x38, 0x3a3e7b);
    if (rgba)
        free_font_memory(rgba, api, 0x3a3e84);
    font_put(image, atlas + 0x30, Address(0), 0x3a3e89);
    font_put(image, atlas + 0x38, Address(0), 0x3a3e91);
    font_put(image, atlas + 0x29, ReU8(0), 0x3a3e99);
}
void font_clear_output_3a3e10(Snapshot &image, Address font, const FontBuilderSupportEffects &api) {
    font_put(image, font + 0x10, ReU64(0), 0x3a3e19);
    clear_vector_379578(image, font + 0x28, api);
    clear_vector_379578(image, font, api);
    clear_vector_379578(image, font + 0x18, api);
    font_put(image, font + 0x38, Address(0), 0x3a3e3b);
    font_put(image, font + 0x40, Address(0), 0x3a3e43);
    font_put(image, font + 0x60, ReU8(1), 0x3a3e4b);
    font_put(image, font + 0x68, ReU64(0), 0x3a3e4f);
    font_put(image, font + 0x70, ReU32(0), 0x3a3e57);
}
void font_begin_config_3a5950(Snapshot &image, Address atlas, Address font, Address config,
                              float ascent, float descent, const FontBuilderSupportEffects &api) {
    if (!font_get<ReU8>(image, config + 0x48, 0x3a595f)) {
        font_clear_output_3a3e10(image, font, api);
        const auto size = font_get<ReU32>(image, config + 0x14, 0x3a597f);
        font_put(image, font + 0x14, size, 0x3a5988);
        font_put(image, font + 0x50, ReU16(0), 0x3a598d);
        font_put(image, font + 0x68, ascent, 0x3a5991);
        font_put(image, font + 0x6c, descent, 0x3a5996);
        font_put(image, font + 0x48, config, 0x3a599b);
        font_put(image, font + 0x40, atlas, 0x3a599f);
    }
    const auto count = font_get<ReU16>(image, font + 0x50, 0x3a59a3);
    font_put(image, font + 0x50, ReU16(count + 1u), 0x3a59a3);
}
void font_opacity_table_3a4d18(Snapshot &image, Address table, float scale) {
    for (ReU32 i = 0; i < 256; ++i) {
        const float value = float(i) * scale;
        const auto integer = re::re_isfinite(value) && double(value) >= -9223372036854775808.0 &&
                                     double(value) < 9223372036854775808.0
                                 ? ReI64(value)
                                 : INT64_MIN;
        const auto low = ReU32(ReU64(integer));
        font_put(image, table + i, ReU8(low > 255 ? 255 : low), 0x3a4d3f);
    }
}
void font_apply_opacity_3a4d50(Snapshot &image, Address table, Address pixels, ReI32 x,
                               ReI32 y, ReI32 width, ReI32 height,
                               ReI32 stride, const FontBuilderSupportEffects &api) {
    const auto product = re::re_bit_cast<ReI32>(ReU32(y) * ReU32(stride));
    Address cursor = pixels + signed_offset(product) + signed_offset(x);
    if (height <= 0)
        return;
    const auto step = re::re_bit_cast<ReI32>(ReU32(stride) - ReU32(width));
    ReUSize operations = 0;
    for (ReI32 row = 0; row < height; ++row) {
        if (ReUSize(row) >= api.maximum_pixel_steps)
            { __builtin_trap(); }
        for (ReI32 col = 0; col < width; ++col) {
            if (operations++ >= api.maximum_pixel_steps)
                { __builtin_trap(); }
            const auto pixel = font_get<ReU8>(image, cursor, 0x3a4d8a);
            const auto mapped = font_get<ReU8>(image, table + pixel, 0x3a4d90);
            font_put(image, cursor, mapped, 0x3a4d93);
            ++cursor;
        }
        cursor += signed_offset(step);
    }
}
} // namespace rust_internal_re
