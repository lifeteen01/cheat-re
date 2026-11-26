#include "font_builder_support.hpp"
namespace rust_internal_re {
namespace {
void builder_expect(bool value) {
    if (!value)
        { /* FREESTANDING_TODO: was throw runtime_error("font builder support fixture") */ }
}
struct BuilderFixture {
    static constexpr Address base = 0x1000000, atlas = base + 0x100, font = base + 0x1000,
                             config = base + 0x2000, table = base + 0x3000;
    Snapshot image{base, re::ReVector<ReByte>(0x5000)};
    FontBuilderSupportEffects api;
    re::ReVector<Address> released;
    template <class T> void put(Address p, T value) {
        builder_expect(image.write(p, value));
    }
    template <class T> T get(Address p) {
        const auto value = image.read<T>(p);
        builder_expect(bool(value));
        return *value;
    }
    BuilderFixture() {
        api.free_39517c = [&](Address p) { released.push_back(p); };
    }
};
} // namespace
void check_font_builder_support() {
    {
        BuilderFixture f;
        f.put(f.atlas + 0x30, Address(1));
        f.put(f.atlas + 0x38, Address(2));
        f.put(f.atlas + 0x29, ReU8(1));
        f.api.free_39517c = [&](Address p) {
            f.released.push_back(p);
            if (p == 1)
                f.put(f.atlas + 0x38, Address(3));
        };
        font_clear_pixels_3a3e64(f.image, f.atlas, f.api);
        builder_expect(f.released == re::ReVector<Address>({1, 3}) &&
                       f.get<Address>(f.atlas + 0x30) == 0 && f.get<Address>(f.atlas + 0x38) == 0 &&
                       f.get<ReU8>(f.atlas + 0x29) == 0);
    }
    {
        BuilderFixture f;
        f.put(f.font + 0x28, ReU64(0x7777777777777777));
        f.put(f.font + 0x30, Address(42));
        f.api.free_39517c = [&](Address p) {
            builder_expect(p == 42 && f.get<ReU64>(f.font + 0x28) == 0);
            { __builtin_trap(); }
        };
        bool stopped = false;
        {
            font_clear_output_3a3e10(f.image, f.font, f.api);
        }
        builder_expect(stopped && f.get<Address>(f.font + 0x30) == 42 &&
                       f.get<ReU64>(f.font + 0x10) == 0);
    }
    {
        BuilderFixture f;
        f.put(f.font, ReU64(0x1122334455667788));
        font_clear_output_3a3e10(f.image, f.font, f.api);
        builder_expect(f.get<ReU64>(f.font) == 0x1122334455667788 &&
                       f.get<ReU8>(f.font + 0x60) == 1 && f.released.empty());
        f.put(f.config + 0x14, 16.0f);
        font_begin_config_3a5950(f.image, f.atlas, f.font, f.config, 12, -4, f.api);
        builder_expect(f.get<float>(f.font + 0x14) == 16 && f.get<float>(f.font + 0x68) == 12 &&
                       f.get<float>(f.font + 0x6c) == -4 &&
                       f.get<Address>(f.font + 0x40) == f.atlas &&
                       f.get<ReU16>(f.font + 0x50) == 1);
        f.put(f.config + 0x48, ReU8(1));
        f.put(f.font + 0x50, ReU16(65535));
        font_begin_config_3a5950(f.image, 0, f.font, f.config, 99, 99, f.api);
        builder_expect(f.get<ReU16>(f.font + 0x50) == 0 &&
                       f.get<float>(f.font + 0x68) == 12 &&
                       f.get<Address>(f.font + 0x40) == f.atlas);
    }
    {
        BuilderFixture f;
        f.put(f.font + 0x14, 16.0f);
        font_begin_config_3a5950(f.image, f.atlas, f.font, f.font, 12, -4, f.api);
        builder_expect(f.get<float>(f.font + 0x14) == 0 && f.get<Address>(f.font + 0x48) == f.font);
    }
    {
        BuilderFixture f;
        font_opacity_table_3a4d18(f.image, f.table, 0.5f);
        builder_expect(f.get<ReU8>(f.table + 3) == 1 &&
                       f.get<ReU8>(f.table + 255) == 127);
        font_opacity_table_3a4d18(f.image, f.table, -1);
        builder_expect(f.get<ReU8>(f.table) == 0 &&
                       f.get<ReU8>(f.table + 1) == 255);
        font_opacity_table_3a4d18(f.image, f.table, 4294967296.0f);
        builder_expect(f.get<ReU8>(f.table + 1) == 0 &&
                       f.get<ReU8>(f.table + 255) == 0);
        font_opacity_table_3a4d18(f.image, f.table, re::ReNumericLimits<float>::quiet_NaN());
        builder_expect(f.get<ReU8>(f.table + 1) == 0);
        f.put(f.table, ReU8(1));
        f.put(f.table + 1, ReU8(0));
        font_apply_opacity_3a4d50(f.image, f.table, f.table, 0, 0, 2, 1, 2, f.api);
        builder_expect(f.get<ReU8>(f.table) == 0 && f.get<ReU8>(f.table + 1) == 0);
        f.put(f.table, ReU8(3));
        f.put(f.table + 1, ReU8(4));
        f.put(f.table + 2, ReU8(3));
        f.put(f.table + 3, ReU8(8));
        f.put(f.table + 4, ReU8(9));
        font_apply_opacity_3a4d50(f.image, f.table, f.table, 1, -1, 1, 2, -1, f.api);
        builder_expect(f.get<ReU8>(f.table + 2) == 8 &&
                       f.get<ReU8>(f.table + 1) == 9);
    }
}
} // namespace rust_internal_re
