#pragma once
#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_test_detail {
inline void expect(bool yes, const char *why) {
    if (!yes)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
struct MenuFixture {
    Snapshot image{0, re::ReVector<ReByte>(0x420000)};
    FrameMenuState config;
    FrameMainMenuState menu;
    DrawCoreStore draw;
    MenuControlsState state;
    MenuControlsApi api;
    re::ReVector<MenuControlRectangle> rectangles;
    re::ReVector<MenuControlText> texts;
    re::ReVector<MenuControlCircle> circles;
    static constexpr Address c = 0x10000, w = 0x20000, font = 0x30000, adv = 0x31000,
                             stack = 0x32000, order = 0x33000, drawlist = 0x40000;
    template <class T> void put(Address a, T value) {
        expect(image.write(a, value), "fixture write");
    }
    template <class T> T get(Address a) {
        const auto v = image.read<T>(a);
        expect(bool(v), "fixture read");
        return *v;
    }
    MenuFixture() {
        state.image = &image;
        state.config = &config;
        state.main_menu = &menu;
        state.draw = &draw;
        menu.search_groups.emplace_back();
        put(0x405b28, c);
        put(c + 0x3f08, w);
        put(c + 0x3f10, w);
        put(c + 0x48e8, w);
        put(c + 0x3c28, font);
        put(c + 0x3c30, 10.0f);
        put(c + 0x37d0, 1.0f);
        put(c + 0x18, 0.01f);
        put(c + 0x3c, 0.25f);
        put(0x3fc0f8, 1.0f);
        put(0x3fc0fc, 1.0f);
        put(0x2a823c, 17.0f);
        put(0x2a868c, 0.72f);
        put(0x28e1c8, 0.3f);
        put(0x28db28, 40.0f);
        put(0x28db54, re::ReNumericLimits<float>::max());
        put(c + 0x40, 0.1f);
        put(c + 0x380c, Vec2{4, 3});
        put(c + 0x381c, Vec2{8, 4});
        put(c + 0x384c, 10.0f);
        put(c + 0xe08, Vec2{5, 5});
        put(w + 0x238, ClipRect{0, 0, 500, 500});
        put(w + 0x298, drawlist);
        put(w + 0xf0, ReI32(1));
        put(w + 0xf8, stack);
        put(stack, 0u);
        put(w + 0x378, w);
        put(w + 0x390, w);
        put(w + 0x1bc, 100.0f);
        put(w + 0x1b4, 1u);
        put(w + 0x28, Vec2{200, 200});
        put(w + 0x220, Vec2{200, 200});
        put(w + 0x250, Vec2{200, 200});
        put(w + 0xb7, ReU8(1));
        put(c + 0x3eb8, 1u);
        put(c + 0x3ec0, order);
        put(c + 0x3ea8, 1u);
        put(c + 0x3eb0, order);
        put(order, w);
        put(font, ReI32(128));
        put(font + 8, adv);
        put(font + 0x10, 5.0f);
        put(font + 0x14, 10.0f);
        for (int i = 0; i < 128; ++i)
            put(adv + Address(i) * 4, 5.0f);
        put(0x248ee8, 1.0f);
        put(0x2930a8, 0.1f);
        put(0x2a9424, 1.5707964f);
        put(0x2a9428, 4.712389f);
        for (unsigned i = 0; i < 55; ++i)
            put(c + 0x38b8 + i * 16, re::ReArray<float, 4>{float(i) / 60, 0.3f, 0.4f, 1});
        for (int i = 0; i < 3; ++i) {
            put(c + 0x3fb0 + Address(0x281 + i - 0x200) * 12, 0xffffffffu);
            put(c + 0x3778 + Address(i) * 4, -1.0f);
        }
        config.font_buckets[0].fonts[12] = font;
        config.font_buckets[1].fonts[12] = font;
        config.font_buckets[2].fonts[10] = font;
        config.font_buckets[2].fonts[15] = font;
        config.font_buckets[2].fonts[16] = font;
        draw.lists[drawlist] = DrawCoreList{};
        api.rectangle = [&](const auto &r) { rectangles.push_back(r); };
        api.text = [&](const auto &r) { texts.push_back(r); };
        api.circle = [&](const auto &r) { circles.push_back(r); };
        api.glow_rectangle_3a2010 = [](const auto &) {};
        api.push_vec2_398c60 = [](auto, auto) {};
        api.pop_style_39896c = [](auto) {};
    }
    void click() {
        put(c + 0xe10, ReU8(1));
        put(c + 0x3778, 0.0f);
        put(c + 0x3752, ReU16(1));
    }
    void release() {
        put(c + 0xe10, ReU8(0));
        put(c + 0x3766, ReU8(1));
        put(c + 0x378c, 0.01f);
        put(c + 0x3778, -1.0f);
        put(c + 0x375c, ReU16(1));
        put(c + 0x3f74, ReU8(0));
    }
    void cursor(Vec2 p = {}) {
        put(w + 0x100, p);
        put(w + 0x128, Vec2{});
        put(w + 0x138, 0.0f);
        put(w + 0x140, ReU16(0));
    }
};
} // namespace rust_internal_re::menu_test_detail
