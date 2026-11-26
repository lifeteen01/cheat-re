#include "font_atlas_input_internal.hpp"

namespace rust_internal_re {
using namespace font_atlas_input_detail;
Address font_config_ctor_39f550(Snapshot &image, Address key, FontAtlasInputState &state) {
    put(image, state, key + 0x24, std::uint64_t(0), 0x2d4870);
    put(image, state, key + 0x2c, std::uint64_t(0), 0x2d4870);
    // [C]3c8d70 is forward REP STOSB. The earlier Vec2 writes are overwritten.
    for (std::size_t i = 0; i < 0x88; ++i)
        put(image, state, key + i, std::uint8_t(0), 0x39f576);
    put(image, state, key + 0x0c, std::uint8_t(1), 0x39f57e);
    put(image, state, key + 0x18, std::int32_t(3), 0x39f582);
    put(image, state, key + 0x1c, std::int32_t(1), 0x39f589);
    put(image, state, key + 0x44, std::uint32_t(0x7f7fffff), 0x39f590);
    put(image, state, key + 0x50, std::uint32_t(0x3f800000), 0x39f597);
    put(image, state, key + 0x54, std::uint16_t(0xffff), 0x39f59e);
    return key;
}
UnityBytes font_config_value_39f550() {
    Snapshot image(0, std::vector<std::byte>(0x88));
    FontAtlasInputState state;
    font_config_ctor_39f550(image, 0, state);
    UnityBytes result;
    result.bytes.reserve(0x88);
    for (Address i = 0; i < 0x88; ++i)
        result.bytes.push_back(*image.read<std::byte>(i));
    return result;
}
Address font_ctor_39f3d0(Snapshot &image, Address key, FontTextStore &store,
                         FontAtlasInputState &state) {
    for (const auto displacement : {0u, 0x18u, 0x28u}) {
        put(image, state, key + displacement, std::uint64_t(0), 0x2db3a2);
        auto &f = store.fonts[key];
        if (displacement == 0)
            f.measure.advances.clear();
        else if (displacement == 0x18)
            f.lookup.clear();
        else
            f.glyphs.clear();
        put(image, state, key + displacement + 8, std::uint64_t(0), 0x2db3a5);
    }
    auto &f = store.fonts.at(key);
    put(image, state, key + 0x52, std::uint32_t(0xffffffff), 0x39f3f2);
    f.fallback_character = f.ellipsis_character = 0xffff;
    put(image, state, key + 0x10, std::uint64_t(0), 0x39f3fb);
    f.measure.fallback = f.measure.nominal = 0;
    put(image, state, key + 0x58, std::uint64_t(0), 0x39f3ff);
    f.ellipsis_width = f.ellipsis_step = 0;
    put(image, state, key + 0x56, std::uint16_t(0), 0x39f403);
    f.ellipsis_count = 0;
    put(image, state, key + 0x38, Address(0), 0x39f407);
    f.fallback.reset();
    put(image, state, key + 0x40, Address(0), 0x39f40b);
    f.atlas = 0;
    put(image, state, key + 0x48, Address(0), 0x39f40f);
    put(image, state, key + 0x50, std::uint16_t(0), 0x39f413);
    put(image, state, key + 0x60, std::uint8_t(0), 0x39f417);
    f.dirty = false;
    put(image, state, key + 0x64, std::uint64_t(0x3f800000), 0x39f41a);
    put(image, state, key + 0x6c, std::uint64_t(0), 0x39f422);
    f.surface = 0;
    put(image, state, key + 0x74, std::uint16_t(0), 0x39f426);
    f.used_pages = 0;
    // [C]No fill at38bb6c. Bytes61..63 and76..77 remain untouched.
    return key;
}
Address font_atlas_add_39fd68(Snapshot &image, Address key, Address source, FontTextStore &store,
                              FontAtlasInputState &state, const FontAtlasInputEnvironment &env,
                              const FontAtlasInputEffects &effects) {
    Context c{image, store, state, env, effects};
    if (!c.read<std::uint8_t>(source + 0x48, 0x39fd77)) {
        auto font = c.allocate(0x78, 0x39fd8a);
        if (font)
            font = font_ctor_39f3d0(image, font, store, state);
        c.append_font(key, font);
    }
    c.append_config(key + 0x78, source);
    const auto count = c.read<std::int32_t>(key + 0x78, 0x3a931c);
    const auto config = c.element(key + 0x78, signed32(std::uint32_t(count) - 1u), 0x88, 0x3a9329);
    if (!c.read<Address>(config + 0x80, 0x39fdd5)) {
        const auto fonts = c.read<std::int32_t>(key + 0x58, 0x39e314);
        const auto back = c.element(key + 0x58, signed32(std::uint32_t(fonts) - 1u), 8, 0x39e31b);
        c.write(config + 0x80, c.read<Address>(back, 0x39fde8), 0x39fdeb);
    }
    if (!c.read<std::uint8_t>(config + 0xc, 0x39fdf2)) {
        const auto length = c.read<std::int32_t>(config + 8, 0x39fdf8);
        const auto input = c.read<Address>(source, 0x39fe0f);
        const auto data = c.allocate(offset(length), 0x39fdfc);
        const auto copy_length = c.read<std::int32_t>(config + 8, 0x39fe01);
        c.write(config, data, 0x39fe08);
        c.write(config + 0xc, std::uint8_t(1), 0x39fe0b);
        c.copy(data, input, offset(copy_length), 0x39fe12);
    }
    const auto font = c.read<Address>(config + 0x80, 0x39fe17);
    (void)c.font(font, 0x39fe23);
    if (c.read<std::uint16_t>(font + 0x54, 0x39fe23) == 0xffff) {
        const auto ellipsis = c.read<std::uint16_t>(source + 0x54, 0x39fe29);
        c.write(font + 0x54, ellipsis, 0x39fe2d);
        c.font(font, 0x39fe2d).ellipsis_character = ellipsis;
    }
    c.write(key + 0x28, std::uint8_t(0), 0x39fe34);
    c.atlas(key, 0x39fe34).ready = false;
    c.clear_pixels(key);
    return c.read<Address>(config + 0x80, 0x39fe3d);
}
Address font_atlas_memory_39fe54(Snapshot &image, Address key, Address data, std::int32_t length,
                                 float size, Address config, Address ranges, FontTextStore &store,
                                 FontAtlasInputState &state, const FontAtlasInputEnvironment &env,
                                 const FontAtlasInputEffects &effects) {
    auto bytes = font_config_value_39f550();
    std::array<bool, 0x88> initialized;
    initialized.fill(true);
    if (config) {
        // [I]The two unobservable native stack copies are one owned value. No
        // callbacks occur until AddFont; raw source bytes are copied before it.
        constexpr std::array<Rva, 9> loads{0x39fe82, 0x39fe85, 0x39fe8d, 0x39fe95, 0x39fe9d,
                                           0x39fea5, 0x39fead, 0x39feb5, 0x39feb9};
        for (std::size_t i = 0; i < bytes.bytes.size(); ++i) {
            const auto value = image.read<std::byte>(config + i);
            if (!value)
                throw RendererMissing(loads[i / 16], 0, "font stack config copy unavailable");
            bytes.bytes[i] = *value;
            initialized[i] = known(state, config + i, 1);
        }
    }
    const auto write_value = [&]<class T>(std::size_t at, T value) {
        std::memcpy(bytes.bytes.data() + at, &value, sizeof(T));
        std::fill_n(initialized.begin() + std::ptrdiff_t(at), sizeof(T), true);
    };
    write_value(0, data);
    write_value(8, length);
    if (size > 0.0f)
        write_value(0x14, size);
    if (ranges)
        write_value(0x38, ranges);
    Context c{image, store, state, env, effects};
    const auto temporary =
        c.marshal(FontAtlasInputStorage::temporary_config, bytes.bytes, 0x39ff63);
    for (std::size_t i = 0; i < initialized.size(); ++i)
        if (!initialized[i])
            mark(state, temporary + i, 1, false);
    return font_atlas_add_39fd68(image, key, temporary, store, state, env, effects);
}
} // namespace rust_internal_re
