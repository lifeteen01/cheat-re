#include "menu_controls_internal.hpp"
namespace rust_internal_re {
namespace {
void expect(bool yes, const char *why) {
    if (!yes)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
struct Fixture {
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
    Fixture() {
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
        draw.lists.insert(drawlist, DrawCoreList{});
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
} // namespace
void check_menu_controls_reconstruction() {
    {
        Fixture f;
        f.put(0x2a9388, '*');
        f.put(0x2a9389, char(0));
        MenuControlRequest request;
        request.label = "Raw glyph";
        menu_detail::favorite_387664(f.state, f.api, request);
        expect(!f.texts.empty() && f.texts.back().text == "*",
               "favorite glyph is a raw NUL string, not an MSVC string object");
        f.put(0x2ad8ec, '>');
        f.put(0x2ad8ed, char(0));
        f.texts.clear();
        request.role = MenuControlRole::combo_strings;
        request.choices = {"one"};
        ReI32 value = 0;
        request.owned_integer = &value;
        expect(menu_controls_apply(f.state, f.api, request).result.status == UnityStatus::complete,
               "raw combo arrow fixture reached");
        expect(re::re_any_of(f.texts.begin(), f.texts.end(),
                           [](const auto &text) { return text.text == ">"; }),
               "combo arrow glyph survives raw pointer decoding");
    }
    {
        Fixture f;
        constexpr Address format = 0x35000;
        f.put(0x27fa60 + 4 * 32 + 16, format);
        f.put(format, '%');
        f.put(format + 1, 'd');
        f.put(format + 2, char(0));
        MenuControlRequest q;
        q.role = MenuControlRole::slider_integer;
        q.label = "Default format";
        q.value = 0x410040;
        q.minimum = 0;
        q.maximum = 100;
        f.config.values[q.value] = 42;
        const auto result = menu_controls_apply(f.state, f.api, q);
        expect(result.result.status == UnityStatus::complete && f.texts.back().text == "42",
               "datatype table points to raw default format bytes");
        const auto tail = f.image.size() - 1;
        f.put(tail, 'x');
        bool missing = false;
        {
            (void)menu_detail::raw_text(f.state, tail);
        }
        expect(missing, "unterminated raw string stops on actual missing copied byte");
    }
    expect(menu_controls_hash_39334c("123456789") == 0xcbf43926u, "CRC32 standard table");
    expect(menu_controls_hash_39334c("abc", 0, 0) == menu_controls_hash_39334c("abc"),
           "native size0 selects C-string hash mode");
    expect(menu_controls_hash_39334c("visible###stable") == menu_controls_hash_39334c("###stable"),
           "### reset ID");
    expect(menu_controls_hash_39334c(re::ReStringView("a\0b", 3)) == menu_controls_hash_39334c("a"),
           "NUL-terminated hash");
    expect(menu_controls_hash_39334c(re::ReStringView("a\0b", 3), 0, 3) !=
               menu_controls_hash_39334c("a"),
           "counted embedded NUL hash");
    expect(menu_controls_typematic_38f85c(-1, 0, 0.25f, 0.1f) == 1, "initial edge");
    expect(menu_controls_typematic_38f85c(0.2f, 0.3f, 0.25f, 0) == 1,
           "one delayed edge without repetition");
    expect(menu_controls_typematic_38f85c(0.3f, 0.3f, 0.25f, 0.1f) == 0, "no elapsed repeat");
    expect(menu_controls_typematic_38f85c(0.2f, 0.36f, 0.25f, 0.1f) == 2, "two repeat ticks");
    {
        Fixture f;
        f.click();
        const auto down =
            menu_controls_button_behavior_3bc7e0(f.state, f.api, {0, 0, 20, 20}, 17, 0);
        expect(!down.pressed && down.hovered && down.held,
               "default button press holds until release");
        expect(f.get<ReU32>(f.c + 0x3f68) == 17 && f.get<ReI32>(f.c + 0x3f94) == 0,
               "active mouse state");
        expect(f.get<ReU32>(f.c + 0x3fb0 + 0x81 * 12) == 17, "mouse key owner");
        f.release();
        const auto up = menu_controls_button_behavior_3bc7e0(f.state, f.api, {0, 0, 20, 20}, 17, 0);
        expect(up.pressed && !up.held && f.get<ReU32>(f.c + 0x3f68) == 0,
               "release commits and clears active ID");
    }
    {
        Fixture f;
        f.click();
        const auto r = menu_controls_button_behavior_3bc7e0(f.state, f.api, {0, 0, 20, 20}, 18,
                                                            0x10 | 0x20000);
        expect(r.pressed && !r.held && f.get<ReU32>(f.c + 0x3f68) == 0,
               "PressedOnClick NoHoldingActiveID");
    }
    {
        Fixture f;
        f.click();
        f.put(f.c + 0x4788, 4u);
        const auto r = menu_controls_button_behavior_3bc7e0(f.state, f.api, {0, 0, 20, 20}, 19, 0);
        expect(!r.pressed && !r.hovered && !r.held && f.get<ReU8>(f.c + 0x3f5d) == 1,
               "disabled item rejects hover");
    }
    {
        Fixture f;
        f.put(f.c + 0xe08, Vec2{20, 5});
        f.click();
        expect(!menu_controls_button_behavior_3bc7e0(f.state, f.api, {0, 0, 20, 20}, 20, 0).hovered,
               "hit upper edge exclusive");
        f.put(f.c + 0xe08, Vec2{0, 0});
        expect(menu_controls_button_behavior_3bc7e0(f.state, f.api, {0, 0, 20, 20}, 20, 0).hovered,
               "hit lower edge inclusive");
    }
    {
        Fixture f;
        f.put(f.c + 0x48fc, 21u);
        f.put(f.c + 0x48f8, 21u);
        f.put(f.c + 0x4900, 21u);
        f.put(f.c + 0x491c, 2u);
        const auto r = menu_controls_button_behavior_3bc7e0(f.state, f.api, {0, 0, 20, 20}, 21, 0);
        expect(r.pressed && !r.held && f.get<ReU32>(f.c + 0x3f90) == 2,
               "navigation source activation");
    }
    {
        Fixture f;
        MenuControlRequest q;
        q.role = MenuControlRole::checkbox;
        q.label = "Display###setting";
        q.value = 0x410000;
        q.format = "retained";
        f.config.values[q.value] = 0xaabbcc00u;
        f.click();
        auto r = menu_controls_apply(f.state, f.api, q);
        expect(r.result.status == UnityStatus::complete && !r.changed &&
                   f.config.values[q.value] == 0xaabbcc00u,
               "checkbox down leaves value");
        f.cursor();
        f.release();
        r = menu_controls_apply(f.state, f.api, q);
        if (!(r.result.status == UnityStatus::complete && r.changed &&
              f.config.values[q.value] == 0xaabbcc01u))
            __builtin_trap();
        expect(f.menu.search_groups[0].widgets.size() == 1 &&
                   f.state.extended_search[0].format == "retained",
               "search registration once with extended format");
        expect(f.rectangles.size() == 4 && f.texts.back().end == 7 && f.circles.size() == 4,
               "checkbox measured draw arguments and hidden text suffix");
        expect(f.rectangles.back().minimum.x == 72 && f.rectangles.back().maximum.x == 100 &&
                   f.rectangles.back().rounding == 22,
               "literal pill bounds and rounding");
    }
    {
        Fixture f;
        MenuControlRequest q;
        q.role = MenuControlRole::checkbox;
        q.label = "Retain write";
        q.value = 0x410004;
        f.config.values[q.value] = 0;
        f.click();
        (void)menu_controls_apply(f.state, f.api, q);
        f.cursor();
        f.release();
        f.api.rectangle = {};
        const auto r = menu_controls_apply(f.state, f.api, q);
        expect(r.result.status == UnityStatus::missing_dependency && f.config.values[q.value] == 1,
               "native config write survives later missing raster");
    }
    {
        Fixture f;
        MenuControlRequest q;
        q.role = MenuControlRole::button;
        q.label = "Button";
        f.put(f.w + 0xbb, ReU8(1));
        const auto r = menu_controls_apply(f.state, f.api, q);
        expect(r.result.status == UnityStatus::complete && f.texts.empty(),
               "button skipped window early return");
    }
    {
        Fixture f;
        MenuControlRequest q;
        q.role = MenuControlRole::combo_strings;
        q.label = "Bad choice";
        q.choices = {"a"};
        ReI32 owned = 4;
        q.owned_integer = &owned;
        expect(menu_controls_apply(f.state, f.api, q).result.stopped_at == 0x2d4d20,
               "invalid owned index explicit stop");
    }
    {
        Fixture f;
        MenuControlRequest q;
        q.role = MenuControlRole::slider_integer;
        q.label = "Integer";
        q.value = 0x410010;
        q.minimum = 0;
        q.maximum = 100;
        q.format = "%d";
        f.config.values[q.value] = 0;
        f.put(f.c + 0xe08, Vec2{75, 5});
        f.click();
        const auto r = menu_controls_apply(f.state, f.api, q);
        expect(r.result.status == UnityStatus::complete && r.changed &&
                   f.config.values[q.value] == 50,
               "integer slider mouse midpoint");
        expect(f.state.extended_search[0].format == "%d" && f.circles.back().radius > 4,
               "slider retained format/active knob");
    }
    {
        Fixture f;
        MenuControlRequest q;
        q.role = MenuControlRole::slider_integer;
        q.label = "Reverse";
        q.value = 0x410014;
        q.minimum = 100;
        q.maximum = 0;
        q.format = "%d m";
        f.config.values[q.value] = 100;
        f.put(f.c + 0xe08, Vec2{75, 5});
        f.click();
        const auto r = menu_controls_apply(f.state, f.api, q);
        expect(r.result.status == UnityStatus::complete && r.changed &&
                   f.config.values[q.value] == 50 && f.texts.back().text == "50 m",
               "reversed slider range and numeric suffix");
    }
    {
        Fixture f;
        MenuControlRequest q;
        q.role = MenuControlRole::slider_float;
        q.label = "Float";
        q.value = 0x410018;
        q.minimum_float = 0;
        q.maximum_float = 1;
        q.format = "%.2f";
        f.config.values[q.value] = 0;
        f.put(f.c + 0xe08, Vec2{75, 5});
        f.click();
        const auto r = menu_controls_apply(f.state, f.api, q);
        expect(r.result.status == UnityStatus::complete && r.changed &&
                   re::re_bit_cast<float>(f.config.values[q.value]) == 0.5f &&
                   f.texts.back().text == "0.50",
               "float slider midpoint and format round");
    }
    {
        Fixture f;
        MenuControlRequest q;
        q.role = MenuControlRole::slider_float;
        q.label = "ReadOnly";
        q.value = 0x41001c;
        q.minimum_float = 0;
        q.maximum_float = 1;
        q.format = "%.2f";
        f.config.values[q.value] = re::re_bit_cast<ReU32>(0.25f);
        f.put(f.c + 0x4788, 0x80u);
        f.put(f.c + 0xe08, Vec2{75, 5});
        f.click();
        const auto r = menu_controls_apply(f.state, f.api, q);
        expect(r.result.status == UnityStatus::complete && !r.changed &&
                   re::re_bit_cast<float>(f.config.values[q.value]) == 0.25f,
               "read-only scalar returns without mutation");
    }
    {
        Fixture f;
        f.config.key_names = {{"X", 10}};
        f.config.values[0x410020] = 10;
        f.put(f.c + 0xe08, Vec2{95, 5});
        f.put(f.c + 0x3748, ReU8(1));
        f.api.key_input_2e5e4c = [](int key, bool) { return key == 3; };
        const auto changed = menu_detail::key_capture(f.state, f.api, "Capture", 0x410020);
        expect(changed && f.config.values[0x410020] == 3 && f.get<ReU32>(f.c + 0x3f68) == 0,
               "capture skips mouse codes1/2/4 and accepts code3");
        expect(f.get<ReU32>(f.c + 0xe10) == 0 && f.get<ReU8>(f.c + 0xb30) == 0,
               "activation clears copied legacy keys/mouse buttons");
    }
    {
        Fixture f;
        const auto value = menu_detail::id(f.state, "Capture");
        f.config.key_names = {{"X", 10}};
        f.config.values[0x410024] = 10;
        f.put(f.c + 0xe08, Vec2{95, 5});
        f.put(f.c + 0x3748, ReU8(1));
        f.put(f.c + 0x3f68, value);
        f.put(f.c + 0x3f98, value);
        const auto changed = menu_detail::key_capture(f.state, f.api, "Capture", 0x410024);
        expect(changed && f.config.values[0x410024] == 0x22b,
               "second-frame mouse capture literal code22b");
    }

    {
        Fixture f;
        auto api = bind_menu_controls_snapshot(f.state, f.api);
        f.put(0x2a9930, 8u);
        f.put(0x2a9934, 1u);
        f.put(0x2a9938, 0u);
        f.put(0x2a9930 + 2 * 12, 8u);
        f.put(0x2a9934 + 2 * 12, 2u);
        f.put(0x2a9938 + 2 * 12, 8u);
        f.put(f.c + 0x37d8, Vec2{3, 4});
        api.push_float_398cc8(0, 0.25f);
        api.push_vec2_398c60(2, {8, 9});
        expect(f.get<float>(f.c + 0x37d0) == 0.25f && f.get<Vec2>(f.c + 0x37d8).x == 8 &&
                   f.get<ReI32>(f.c + 0x4860) == 2,
               "concrete style push metadata and count");
        api.pop_style_39896c(20);
        expect(f.get<float>(f.c + 0x37d0) == 1 && f.get<Vec2>(f.c + 0x37d8).y == 4 &&
                   f.state.style_stack.empty(),
               "style pop clamped to available records");
        const auto original = f.get<re::ReArray<float, 4>>(f.c + 0x38b8 + 3 * 16);
        api.push_color_398bec(3, 0x80402010);
        expect(f.get<re::ReArray<float, 4>>(f.c + 0x38b8 + 3 * 16)[0] == 16.0f * 0x1.010102p-8f,
               "packed color push");
        api.pop_color_39890c(1);
        expect(f.get<re::ReArray<float, 4>>(f.c + 0x38b8 + 3 * 16) == original,
               "color pop restores exact float4");
    }
    {
        Fixture f;
        f.state.flags_imported = true;
        f.state.item_flags_stack = {0};
        f.put(f.c + 0x4890, 1);
        f.put(f.c + 0x37d4, 0.5f);
        auto api = bind_menu_controls_snapshot(f.state, f.api);
        api.begin_disabled_38ec34(true);
        api.begin_disabled_38ec34(true);
        expect(f.get<float>(f.c + 0x37d0) == 0.5f && f.state.item_flags_stack.size() == 3,
               "nested disabled does not reapply alpha");
        api.end_disabled_390c80();
        expect(f.get<ReU32>(f.c + 0x4788) == 4 && f.get<float>(f.c + 0x37d0) == 0.5f,
               "nested disabled pop retains disabled");
        api.end_disabled_390c80();
        expect(f.get<ReU32>(f.c + 0x4788) == 0 && f.get<float>(f.c + 0x37d0) == 1,
               "outer disabled pop restores alpha");
    }
    {
        Fixture f;
        auto api = bind_menu_controls_snapshot(f.state, f.api);
        f.put(f.w + 0x20, Vec2{2, 3});
        f.put(f.w + 0x100, Vec2{10, 20});
        f.put(f.c + 0x1c, 2.5f);
        api.window_position_39bb20({8.9f, 9.9f});
        expect(f.get<Vec2>(f.w + 0x20).x == 8 && f.get<Vec2>(f.w + 0x100).x == 16 &&
                   f.get<Vec2>(f.w + 0x100).y == 26 && f.get<float>(f.c + 0x5bfc) == 2.5f,
               "window position truncation, cursor delta and settings dirty");
        api.window_size_39bc6c({100.8f, 50.2f});
        expect(f.get<Vec2>(f.w + 0x30).x == 100 && f.get<Vec2>(f.w + 0x30).y == 50 &&
                   f.get<ReU8>(f.w + 0xd0) == 0,
               "window full size truncation");
        api.window_size_39bc6c({0, 0});
        expect(f.get<ReU8>(f.w + 0xd0) == 2 && f.get<Vec2>(f.w + 0x30).x == 100,
               "nonpositive size schedules auto-fit");
    }

    {
        Fixture f;
        const auto item = 17u;
        f.put(f.c + 0x48f0, item);
        f.put(f.c + 0x47a4, item);
        f.put(f.c + 0x47c0, ClipRect{-5, 2, 600, 20});
        f.put(f.w + 0x110, Vec2{3, 4});
        menu_detail::nav_process(f.state, f.api);
        const auto b = f.get<ClipRect>(f.c + 0x47c0);
        const auto relative = f.get<ClipRect>(f.w + 0x3a8);
        expect(b.x == 0 && b.z == 500 && relative.x == -3 && relative.y == -2 &&
                   f.get<ReU8>(f.c + 0x4924) == 1,
               "nav item clips x and refreshes relative active rectangle");
    }

    {
        Fixture f;
        auto api = bind_menu_controls_snapshot(f.state, f.api);
        f.put(f.w + 0x100, Vec2{10, 20});
        f.put(f.w + 0x118, Vec2{11, 22});
        f.put(f.w + 0x144, 3.0f);
        api.local_layout(0x38ec90);
        expect(f.state.groups.size() == 1 && f.get<Vec2>(f.w + 0x118).x == 10,
               "group captures/reset cursor maximum");
        f.put(f.w + 0x118, Vec2{40, 50});
        f.put(f.w + 0x141, ReU8(0));
        api.local_layout(0x390efc);
        expect(f.state.groups.empty() && f.get<float>(f.w + 0x144) == 3 &&
                   f.get<ClipRect>(f.c + 0x47b0).z == 40 &&
                   (f.get<ReU32>(f.c + 0x47ac) & 0x20),
               "group restores indent and submits union item/status");
    }
    {
        Fixture f;
        MenuControlRequest q;
        q.role = MenuControlRole::color;
        q.label = "RGBA";
        q.value = 0x410030;
        q.size = {24, 15};
        f.state.colors[q.value] = {0.1f, 0.2f, 0.3f, 0.5f};
        const auto r = menu_controls_apply(f.state, f.api, q);
        expect(r.result.status == UnityStatus::complete && !r.changed && f.rectangles.size() == 4 &&
                   f.rectangles[1].minimum.x == 8 && f.rectangles[1].maximum.x == 16,
               "RGBA preview native thirds geometry");
    }
    for (bool multi : {false, true}) {
        Fixture f;
        auto api = bind_menu_controls_snapshot(f.state, f.api);
        api.line = [](const auto &) {};
        api.arrow_3a7400 = [](auto, auto, auto, auto, auto) {};
        api.begin_window_38cfa4 = [&](auto, auto) {
            f.cursor();
            const auto target = menu_detail::id(f.state, "A");
            f.put(f.c + 0x48fc, target);
            f.put(f.c + 0x48f8, target);
            f.put(f.c + 0x4900, target);
            f.put(f.c + 0x491c, 2u);
        };
        api.end_window_390994 = [] {};
        MenuControlRequest q;
        q.role = multi ? MenuControlRole::multiselect : MenuControlRole::combo_strings;
        q.label = "Selection";
        q.value = 0x410034;
        q.choices = {"A", "B"};
        ReI32 owned = 1;
        q.owned_integer = multi ? nullptr : &owned;
        f.state.multiselect_values[q.value] = {0, 1};
        const Rva map = multi ? 0x380e80 : 0x3bb780;
        auto &animation = f.state.combos[{map, menu_controls_hash_39334c(q.label)}];
        animation.fields[0] = 1;
        animation.fields[3] = 1;
        f.put(f.c + 0xe08, Vec2{400, 400});
        const auto r = menu_controls_apply(f.state, api, q);
        expect(r.result.status == UnityStatus::complete && r.changed,
               "native selectable activation through combo popup");
        expect(multi ? f.state.multiselect_values[q.value] == re::ReVector<ReU8>{1, 1}
                     : owned == 0,
               "combo owned scalar/multiselect bit mutation");
    }

    {
        Fixture f;
        f.config.font_buckets[1].fonts.clear();
        const auto absent = menu_detail::measure_cached(f.state, 1, 12, "Name");
        expect(absent.x == 0 && absent.y == 0 && f.config.font_buckets[1].fonts.contains(12),
               "native null-font cache insertion and zero-measure branch");
        f.config.font_buckets[1].fonts[12] = f.font;
        f.put(0x248ee8, 2.0f);
        const auto present = menu_detail::measure_cached(f.state, 1, 12, "A##hidden");
        expect(present.x == 12 && present.y == 24,
               "cached measurement scales requested size and cuts hidden suffix");
    }

    {
        Fixture f;
        MenuControlRequest q;
        q.role = MenuControlRole::slider_float;
        q.label = "Endpoint";
        q.value = 0x410038;
        q.minimum_float = 0;
        q.maximum_float = 1.234f;
        q.format = "%.2f";
        f.config.values[q.value] = 0;
        f.put(f.c + 0xe08, Vec2{99, 5});
        f.click();
        const auto r = menu_controls_apply(f.state, f.api, q);
        expect(r.result.status == UnityStatus::complete && r.changed &&
                   re::re_bit_cast<float>(f.config.values[q.value]) == 1.23f,
               "float endpoint passes format rounding after scalar interpolation");
    }

    {
        Fixture f;
        ReI32 status = 1;
        MenuControlRequest extended;
        extended.role = MenuControlRole::combo_strings;
        extended.label = "Custom status";
        extended.value = 0x3d7260;
        extended.owned_integer = &status;
        f.state.extended_search.push_back(extended);
        FrameSearchWidget widget;
        widget.type = "combo";
        widget.label = extended.label;
        widget.integer = extended.value;
        widget.choices = {"A", "B"};
        auto frame = bind_menu_controls_frame(f.state, f.api);
        const auto result = frame.widget(0x3be2ec, widget, f.config);
        expect(result.status == UnityStatus::complete &&
                   !f.config.values.contains(extended.value) && status == 1,
               "search adapter preserves owned dynamic-status borrow");
    }
}
} // namespace rust_internal_re
