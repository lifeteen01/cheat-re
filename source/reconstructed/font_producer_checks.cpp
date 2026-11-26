#include "font_producer_analysis.hpp"
namespace rust_internal_re {
namespace {
void pixels_check(bool value) {
    if (!value)
        { /* FREESTANDING_TODO: was throw runtime_error("font producer fixture") */ }
}
struct PixelsFixture {
    static constexpr Address b = 0x1000000, atlas = b + 0x1000, alpha = b + 0x2000,
                             rgba = b + 0x3000, out = b + 0x4000;
    Snapshot image{b, re::ReVector<ReByte>(0x420000)};
    FontProducerEnvironment env{b};
    FontProducerEffects api;
    ReU64 requested{};
    int allocations{}, builds{};
    template <class T> void put(Address p, T value) {
        pixels_check(image.write(p, value));
    }
    template <class T> T get(Address p) {
        const auto value = image.read<T>(p);
        pixels_check(bool(value));
        return *value;
    }
    PixelsFixture() {
        put(atlas + 0x30, alpha);
        put(atlas + 0x40, ReI32(3));
        put(atlas + 0x44, ReI32(1));
        put(atlas + 0x78, ReI32(1));
        put(alpha, ReU8(0));
        put(alpha + 1, ReU8(127));
        put(alpha + 2, ReU8(255));
        api.allocate_owned = [&](ReU64 bytes) {
            ++allocations;
            requested = bytes;
            return rgba;
        };
        api.build = [&](Address target, Address object) {
            ++builds;
            pixels_check(target == b + 0x3a59bc && object == atlas);
            put(atlas + 0x30, alpha);
            return false;
        };
    }
};
} // namespace
void check_font_producer_reconstruction() {
    {
        PixelsFixture f;
        const auto p = font_rgba_3a49ec(f.image, f.atlas, f.env, f.api);
        pixels_check(p.pixels == f.rgba && p.width == 3 && p.height == 1 && p.channels == 4 &&
                     f.requested == 12 && f.allocations == 1);
        pixels_check(f.get<ReU32>(f.rgba) == 0x00ffffff &&
                     f.get<ReU32>(f.rgba + 4) == 0x7fffffff &&
                     f.get<ReU32>(f.rgba + 8) == 0xffffffff);
        (void)font_rgba_3a49ec(f.image, f.atlas, f.env, {});
        pixels_check(f.allocations == 1);
        const auto bound = bind_font_pixels(f.image, f.env, {});
        const re::ReArray<UnityValue, 1> args{f.atlas};
        const auto result = bound.external(0x3a49ec, args);
        pixels_check(bool(result));
        const auto pixels = re::re_get<UnityFontPixels>(*result);
        pixels_check(pixels.bytes.size() == 12 && pixels.bytes[3] == ReByte(0) &&
                     pixels.bytes[7] == ReByte(127) && pixels.bytes[11] == ReByte(255));
        font_rgba_into_3a49ec(f.image, f.atlas, f.atlas + 0x40, f.out, f.out + 4, f.out + 8, f.env,
                              {});
        pixels_check(f.get<ReI32>(f.out) == ReI32(f.rgba) &&
                     f.get<ReI32>(f.out + 4) == 0 && f.get<ReI32>(f.out + 8) == 4);
    }
    {
        PixelsFixture f;
        f.put(f.atlas + 0x30, Address(0));
        const auto p = font_alpha_3a4994(f.image, f.atlas, f.env, f.api);
        pixels_check(p.pixels == f.alpha && f.builds == 1 &&
                     f.get<Address>(f.b + 0x406130) == f.b + 0x3a59bc &&
                     f.get<Address>(f.atlas + 0x488) == 0);
        f.put(f.atlas + 0x30, Address(0));
        bool missing = false;
        {
            (void)font_alpha_3a4994(f.image, f.atlas, f.env, {});
        }
        pixels_check(missing && f.get<Address>(f.b + 0x406130) == f.b + 0x3a59bc);
    }
    {
        PixelsFixture f;
        f.api.allocate_owned = [&](ReU64 bytes) {
            pixels_check(bytes == 12);
            f.put(f.atlas + 0x40, ReI32(1));
            return f.rgba;
        };
        f.put(f.rgba + 4, ReU32(0xa5a5a5a5));
        const auto p = font_rgba_3a49ec(f.image, f.atlas, f.env, f.api);
        pixels_check(p.width == 1 && f.get<ReU32>(f.rgba) == 0xffffff &&
                     f.get<ReU32>(f.rgba + 4) == 0xa5a5a5a5);
    }
    {
        PixelsFixture f;
        const auto tail = f.b + f.image.size() - 1;
        f.put(tail, ReU8(0x12));
        f.put(f.atlas + 0x30, tail);
        f.put(f.atlas + 0x40, ReI32(2));
        f.put(f.rgba + 4, ReU32(0xa5a5a5a5));
        bool missing = false;
        {
            (void)font_rgba_3a49ec(f.image, f.atlas, f.env, f.api);
        }
        pixels_check(missing && f.get<Address>(f.atlas + 0x38) == f.rgba &&
                     f.get<ReU32>(f.rgba) == 0x12ffffff &&
                     f.get<ReU32>(f.rgba + 4) == 0xa5a5a5a5);
    }
    {
        PixelsFixture f;
        f.put(f.atlas + 0x40, ReI32(-1));
        f.put(f.atlas + 0x44, ReI32(2));
        f.put(f.rgba, ReU32(0xa5a5a5a5));
        const auto p = font_rgba_3a49ec(f.image, f.atlas, f.env, f.api);
        pixels_check(p.width == -1 && f.requested == ReU64(-8) &&
                     f.get<ReU32>(f.rgba) == 0xa5a5a5a5);
    }
    {
        constexpr Address atlas = 0x100000;
        Snapshot narrow(atlas, re::ReVector<ReByte>(0x38));
        pixels_check(narrow.write(atlas + 0x30, Address(0x123456)));
        font_alpha_into_3a4994(narrow, atlas, atlas + 8, 0, 0, 0, {}, {});
        pixels_check(narrow.read<Address>(atlas + 8) == 0x123456);
    }
}
} // namespace rust_internal_re
