#include "imgui_window_details_internal.hpp"
namespace rust_internal_re {
namespace {
void expect(bool value, const char *reason) {
    if (!value)
        { /* FREESTANDING_TODO: was throw runtime_error(reason) */ }
}
struct Fixture {
    Snapshot image{0, re::ReVector<ReByte>(0x420000)};
    MenuControlsState controls;
    ImguiWindowsState windows;
    ImguiWindowDetailsState state;
    ImguiWindowsApi api;
    ImguiWindowDetailsApi details;
    DrawCoreStore draws;
    FontTextStore fonts;
    FontTextSink sink;
    re::ReMap<Address, FontTextShared> shared;
    re::ReVector<MenuControlRectangle> rectangles;
    re::ReVector<MenuControlLine> lines;
    re::ReVector<MenuControlCircle> circles;
    static constexpr Address c = 0x10000, w = 0x20000, other = 0x21000, key = 0x40000,
                             font = 0x50000, adv = 0x51000, ids = 0x60000, buffer = 0x70000,
                             viewport = 0x80000;
    template <class T> void put(Address p, T value) {
        expect(image.write(p, value), "details fixture write");
    }
    template <class T> T get(Address p) {
        const auto value = image.read<T>(p);
        expect(bool(value), "details fixture read");
        return *value;
    }
    void text(Address p, re::ReStringView value) {
        for (ReUSize i = 0; i < value.size(); ++i)
            put(p + i, ReU8(value[i]));
        put(p + value.size(), ReU8(0));
    }
    Fixture() {
        controls.image = &image;
        controls.draw = &draws;
        windows.controls = &controls;
        state.windows = &windows;
        put(0x405b28, c);
        put(c + 0x3f08, w);
        put(c + 0x48e8, w);
        put(c + 0x3c28, font);
        put(c + 0x3c30, 10.0f);
        put(c + 0x37d0, 1.0f);
        put(c + 0x380c, Vec2{2, 3});
        put(c + 0x3814, 4.0f);
        put(c + 0x3824, Vec2{8, 4});
        put(c + 0x3840, 5.0f);
        put(c + 0x384c, 10.0f);
        put(c + 0x3848, 2.0f);
        put(c + 0xe08, Vec2{-100, -100});
        put(c + 0x37f8, -1);
        put(c + 0x48d8, 1);
        put(c + 0x48e0, Address(0x81000));
        put(0x81000, viewport);
        put(viewport + 4, Vec2{0, 0});
        put(viewport + 0xc, Vec2{300, 200});
        put(w, c);
        put(w + 0x378, w);
        put(w + 0x390, w);
        put(w + 0xb7, ReU8(1));
        put(w + 0x298, key);
        put(w + 0xf0, 1);
        put(w + 0xf4, 4);
        put(w + 0xf8, ids);
        put(ids, 123u);
        put(w + 0x1b0, -1);
        put(w + 0x1b4, 1u);
        put(w + 0x238, ClipRect{0, 0, 300, 200});
        put(w + 0x1e8, ClipRect{0, 0, 300, 200});
        put(w + 0x20, Vec2{0, 0});
        put(w + 0x28, Vec2{100, 100});
        put(w + 0x30, Vec2{100, 100});
        put(w + 0x1f8, ClipRect{0, 0, 90, 90});
        put(w + 0xac, Vec2{10, 10});
        put(w + 0xd4, -1);
        put(0x28d254, 1.0f);
        put(0x28d250, 0.5f);
        put(0x28d24c, 0.0f);
        put(0x293134, 2.0f);
        put(0x293158, 3.0f);
        put(0x293178, 4.0f);
        put(0x293260, -1.0f);
        put(0x2930a8, 0.2f);
        put(0x2930d4, 0.8f);
        put(0x2931bc, 16.0f);
        put(0x2931d0, 24.0f);
        put(0x28e1e0, 8.0f);
        put(0x28dafc, 1.5f);
        put(0x2ad9a8, -0.25f);
        put(0x2ad988, 0.7071f);
        put(0x2aa15c, -256000.0f);
        put(0x28db54, re::ReNumericLimits<float>::max());
        put(0x2a9444, -re::ReNumericLimits<float>::max());
        put(0x2aa160, re::ReArray<int, 4>{1, 3, 2, 0});
        put(0x2aa170, re::ReArray<int, 4>{3, 1, 0, 2});
        put(font, 128);
        put(font + 8, adv);
        put(font + 0x10, 4.0f);
        put(font + 0x14, 10.0f);
        for (int i = 0; i < 128; ++i)
            put(adv + Address(i) * 4, 4.0f);
        auto &d = draws.lists[key];
        d.clip_stack.push({0, 0, 300, 200});
        d.header.clip = {0, 0, 300, 200};
        draw_core_add_command_39fd18(d);
        api.controls.rectangle = [&](const auto &r) { rectangles.push_back(r); };
        api.controls.line = [&](const auto &r) { lines.push_back(r); };
        api.controls.circle = [&](const auto &r) { circles.push_back(r); };
    }
    void color(unsigned index, re::ReArray<float, 4> value = {1, 1, 1, 1}) {
        put(c + 0x38b8 + Address(index) * 16, value);
    }
    void resize_setup() {
        put(0x2930fc, 1.35f);
        put(0x2941b4, 0.75f);
        put(0x2aa13c, 0.04f);
        put(0x2aa150, 600.0f);
        put(0x2a9460, re::ReArray<float, 4>{1, 1, -1, -1});
        put(0x2a9470, 0);
        put(0x2a9474, 3);
        put(0x2a9478, re::ReArray<float, 4>{0, 1, 1, -1});
        put(0x2a9488, 3);
        put(0x2a948c, 6);
        put(0x2a9490, re::ReArray<float, 4>{0, 0, 1, 1});
        put(0x2a94a0, 6);
        put(0x2a94a4, 9);
        put(0x2a94a8, re::ReArray<float, 4>{1, 0, -1, 1});
        put(0x2a94b8, 9);
        put(0x2a94bc, 12);
        put(0x2a94c0, re::ReArray<float, 7>{1, 0, 0, 1, 0, 0, 3.141592741f});
        put(0x2a94dc, re::ReArray<float, 7>{-1, 0, 1, 0, 1, 1, 0});
        put(0x2a94f8, re::ReArray<float, 7>{0, 1, 0, 0, 1, 0, 4.71238898f});
        put(0x2a9514, re::ReArray<float, 7>{0, -1, 1, 1, 0, 1, 1.57079637f});
    }
    void active_mouse(ReU32 id) {
        put(c + 0x3f68, id);
        put(c + 0x3f90, 1u);
        put(c + 0x3f94, 0);
        put(c + 0x3f88, w);
        put(c + 0xe10, ReU8(1));
        put(c + 0x3fb0 + Address(0x281 - 0x200) * 12, id);
    }
    ReU32 resize_id(ReU32 index) {
        const auto scope = menu_controls_hash_39334c("#RESIZE", 123);
        re::ReArray<char, 4> bytes{};
        for (unsigned i = 0; i < 4; ++i)
            bytes[i] = char((index >> (i * 8)) & 255);
        return menu_controls_hash_39334c(re::ReStringView(bytes.data(), 4), scope, 4);
    }
    void font_sink() {
        auto &f = fonts.fonts[font];
        f.measure.nominal = 10;
        f.measure.fallback = 4;
        f.measure.advances.assign(128, 4);
        f.lookup.assign(128, 0xffff);
        f.lookup['A'] = 0;
        f.glyphs.push_back({(ReU32('A') << 2) | 2, 4, 0, 0, 4, 8, 0, 0, 1, 1});
        f.fallback = 0;
        shared[key] = {font, 10};
        sink = bind_font_text_draw_core(draws, shared);
        details.fonts = &fonts;
        details.text_sink = &sink;
    }
};
} // namespace
void check_imgui_window_details_reconstruction() {
    {
        Fixture f;
        f.put(f.c + 0x4b70, Address(0x90000));
        expect(imgui_window_details_table_3921c0(f.state, 3) == 0x906a8 &&
                   imgui_window_details_table_3921c0(f.state, -1) == 0x8fdc8,
               "native table signed index stride and absence of invented pool gate");
    }
    {
        Fixture f;
        f.put(f.w + 0x14, 0x40000u);
        f.put(f.w + 0x3c8, 99u);
        f.put(f.c + 0x48f0, 77u);
        f.put(f.c + 0x4929, ReU8(7));
        imgui_window_details_nav_initialize_395500(f.state, f.w, false);
        expect(f.get<ReU32>(f.c + 0x48f0) == 0 &&
                   f.get<ReU32>(f.c + 0x48f4) == 99 &&
                   f.get<ReU8>(f.c + 0x4929) == 7,
               "nav disabled branch writes ID/scope without initialization request");
    }
    {
        Fixture f;
        f.put(f.w + 0x378, f.other);
        f.put(f.w + 0x3a0, 77u);
        f.put(f.w + 0x3c8, 88u);
        imgui_window_details_nav_initialize_395500(f.state, f.w, false);
        expect(f.get<ReU32>(f.c + 0x48f0) == 77 && f.get<ReU32>(f.c + 0x48f4) == 88,
               "nav child restores last ID when not forced");
        f.put(f.c + 0x4920, 1);
        f.put(f.w + 0x3a4, 55u);
        imgui_window_details_nav_initialize_395500(f.state, f.w, true);
        expect(f.get<ReU32>(f.w + 0x3a4) == 0 && f.get<ClipRect>(f.w + 0x3b8).w == 0 &&
                   f.get<ReU16>(f.c + 0x4929) == 1 &&
                   f.get<ReU8>(f.c + 0x4928) == 1,
               "forced nav request clears selected layer rectangle and refreshes active request");
    }
    {
        Fixture f;
        f.color(50);
        f.put(f.c + 0x48f0, 7u);
        f.put(f.w + 0x238, ClipRect{0, 0, 10, 10});
        auto &list = f.draws.lists[f.key];
        list.header.clip = {0, 0, 10, 10};
        list.clip_stack.write(0, list.header.clip);
        imgui_window_details_nav_highlight_3997ac(f.state, f.api, {2, 3, 8, 9}, 7, 3);
        expect(f.rectangles.size() == 2 && f.rectangles[0].minimum.x == -1 &&
                   f.rectangles[0].maximum.y == 12 && f.rectangles[0].thickness == 2 &&
                   f.rectangles[1].minimum.x == -2 && f.rectangles[1].thickness == 1 &&
                   list.clip_stack.size == 1 && list.header.clip[2] == 10,
               "nav thick/thin geometry and temporary clip restoration");
        f.put(f.c + 0x4926, ReU8(1));
        f.rectangles.clear();
        imgui_window_details_nav_highlight_3997ac(f.state, f.api, {0, 0, 10, 10}, 7, 2);
        expect(f.rectangles.empty(), "nav suppression gate");
    }
    {
        Fixture f;
        f.color(50);
        f.put(f.c + 0x48f0, 7u);
        f.api.controls.rectangle = {};
        bool stopped = false;
        {
            imgui_window_details_nav_highlight_3997ac(f.state, f.api, {0, 0, 300, 200}, 7, 1);
        }
        expect(stopped && f.draws.lists[f.key].clip_stack.size == 2,
               "highlight temporary clip retained when primitive stops");
    }
    {
        Fixture f;
        f.color(54);
        f.put(f.c + 0x38ac, 12.0f);
        f.put(f.c + 0x38b0, 5.0f);
        f.put(f.c + 0x38b4, 0.0f);
        f.put(f.w + 0x58, 3.0f);
        re::ReVector<MenuControlGlowRectangle> calls;
        f.api.controls.glow_rectangle_3a2010 = [&](const auto &r) {
            calls.push_back(r);
            if (calls.size() == 1)
                f.put(f.w + 0x28, Vec2{110, 120});
        };
        imgui_window_details_shadow_39a64c(f.state, f.api, f.w);
        expect(calls.size() == 2 && calls[0].shadow_size == 12 && calls[0].offset.x == 5 &&
                   calls[0].offset.y == 0 && calls[0].flags == 0x200 && calls[1].maximum.x == 110,
               "window shadows double-submit with literal trig offset and post-call dimensions "
               "reread");
    }
    {
        Fixture f;
        f.put(f.c + 0x5c90, ReU8(1));
        f.put(f.c + 0x5c94, 4);
        f.put(f.c + 0x5ca0, 2);
        f.put(f.c + 0x5ca4, 8);
        f.put(f.c + 0x5ca8, f.buffer);
        f.text(f.buffer, "A");
        f.text(0x2aa12c, "\n");
        f.put(f.c + 0xb8, Address(9));
        f.put(f.c + 0xc0, Address(8));
        f.put(f.c + 0xf4, 10u);
        f.put(0x27fa20, Address(11));
        re::ReString copied;
        f.details.clipboard_leaf = [&](Address target, Address user, re::ReStringView v) {
            expect(target == 9 && user == 8, "clipboard numeric callback arguments");
            copied = v;
        };
        f.api.free_leaf = [&](Address target, Address, Address object) {
            expect(target == 11 && object == f.buffer, "log free leaf input");
        };
        imgui_window_details_log_finish_394dd4(f.state, f.details, f.api);
        expect(copied == "A\n" && f.get<ReU8>(f.c + 0x5c90) == 0 &&
                   f.get<Address>(f.c + 0x5ca8) == 0 && f.get<unsigned>(f.c + 0xf4) == 9,
               "log newline append, clipboard data consumption and native free counter");
    }
    {
        Fixture f;
        f.put(f.c + 0x5c90, ReU8(1));
        f.put(f.c + 0x5c94, 4);
        f.put(f.c + 0x5ca0, 2);
        f.put(f.c + 0x5ca4, 8);
        f.put(f.c + 0x5ca8, f.buffer);
        f.text(f.buffer, "A");
        f.text(0x2aa12c, "\n");
        f.put(f.c + 0xb8, Address(9));
        bool stopped = false;
        {
            imgui_window_details_log_finish_394dd4(f.state, f.details, f.api);
        }
        expect(stopped && f.get<int>(f.c + 0x5ca0) == 3 && f.get<ReU8>(f.c + 0x5c90) == 1,
               "log append retained before missing configured clipboard leaf");
    }
    {
        Fixture f;
        int direction = -1;
        auto p = window_details::popup_position(f.state, {20, 20}, {50, 40}, direction,
                                                {0, 0, 300, 200}, {20, 20, 30, 30}, 0);
        expect(direction == 1 && p.x == 30 && p.y == 20, "popup priority direction literal1");
        direction = -1;
        p = window_details::popup_position(f.state, {20, 20}, {400, 400}, direction,
                                           {0, 0, 300, 200}, {20, 20, 30, 30}, 2);
        expect(direction == -1 && p.x == 22 && p.y == 22, "tooltip no-fit reference plus literal2");
        direction = -1;
        p = window_details::popup_position(f.state, {20, 20}, {50, 40}, direction, {0, 0, 300, 200},
                                           {20, 20, 70, 30}, 1);
        expect(direction == 3 && p.x == 20 && p.y == 30,
               "combo placement mode1 uses separate priority and candidate formulas");
    }
    {
        Fixture f;
        f.put(f.w + 0x14, 0x4000000u);
        f.put(f.w + 0x20, Vec2{20, 20});
        f.put(f.w + 0x28, Vec2{50, 40});
        const auto p = imgui_window_details_auto_position_39138c(f.state, f.w);
        expect(p.x == 20 && p.y == 20 && f.get<int>(f.w + 0xd4) == 1,
               "popup auto-position root commits numeric direction");
        f.put(f.w + 0x14, 0x2000000u);
        f.put(f.c + 0xe08, Vec2{30, 40});
        f.put(f.c + 0x389c, 1.0f);
        f.put(f.w + 0xd4, -1);
        const auto tooltip = imgui_window_details_auto_position_39138c(f.state, f.w);
        expect(tooltip.x == 55 && tooltip.y == 40,
               "tooltip preferred mouse reference and scaled avoidance");
    }
    {
        Fixture f;
        f.put(f.c + 0x37f0, Vec2{0.5f, 0.5f});
        f.color(1);
        f.font_sink();
        imgui_window_details_title_39a7a8(f.state, f.details, f.api, f.w, {10, 20, 110, 40},
                                          "A##hidden", {});
        const auto &list = f.draws.lists[f.key];
        expect(list.vertices.size == 4 && f.get<ReU32>(f.w + 0x158) == 0 &&
                   f.get<ReU32>(f.c + 0x4788) == 0,
               "title alignment emits real glyph geometry and restores layer/item flags");
        re::ReArray<float, 2> p{};
        re::re_memcpy(p.data(), list.vertices.at(0).data(), 8);
        expect(p[0] == 58 && p[1] == 25,
               "title measured-label alignment controls native glyph positions");
    }
    {
        Fixture f;
        f.color(1);
        f.put(f.c + 0x4788, 8u);
        bool stopped = false;
        {
            imgui_window_details_title_39a7a8(f.state, f.details, f.api, f.w, {10, 20, 110, 40},
                                              "A", {});
        }
        expect(stopped && f.get<unsigned>(f.c + 0x4788) == 8 && f.get<unsigned>(f.w + 0x158) == 0,
               "missing title font sink stops after native item-state restoration");
    }
    {
        Fixture f;
        f.put(f.w + 0x1a8, Address(0x90000));
        f.put(f.w + 0x1c8, 1);
        f.put(f.w + 0x1cc, 1);
        f.put(f.w + 0x1d0, Address(0x91000));
        f.put(0x91000, 45.0f);
        f.put(0x90010, 1);
        f.put(0x90020, 30.0f);
        f.put(f.w + 0x104, 40.0f);
        f.put(0x90028, 60.0f);
        f.put(f.w + 0x228, ClipRect{1, 2, 3, 4});
        f.put(0x9004c, ClipRect{5, 6, 7, 8});
        f.put(f.w + 0x144, 2.75f);
        f.put(f.w + 0x20, Vec2{10, 20});
        imgui_window_details_end_columns_3b4f94(f.state, f.api);
        expect(f.get<float>(f.w + 0x1bc) == 45 && f.get<int>(f.w + 0x1c8) == 0 &&
                   f.get<float>(f.w + 0x104) == 40 && f.get<float>(f.w + 0x118) == 60 &&
                   f.get<Address>(f.w + 0x1a8) == 0 && f.get<ClipRect>(f.w + 0x218).x == 1 &&
                   f.get<ClipRect>(f.w + 0x228).x == 5 && f.get<float>(f.w + 0x100) == 12,
               "single-column End restores width, work rectangles and cursor with CVTT truncation");
    }
    {
        Fixture f;
        f.color(15);
        f.color(16);
        f.put(f.w + 0x14, 1u);
        f.put(f.w + 0x50, Vec2{0, 0});
        f.put(f.w + 0x38, Vec2{200, 200});
        imgui_window_details_scrollbar_3c3234(f.state, f.api, 1);
        expect(f.rectangles.size() == 2 && f.rectangles[0].minimum.x == 90 &&
                   f.rectangles[0].maximum.x == 100 && f.rectangles[0].flags == 0x1a0 &&
                   f.rectangles[1].minimum.y == 3 &&
                   f.rectangles[1].maximum.y == 40.799999237060547f,
               "vertical scrollbar bounds, rounded flags and proportional thumb");
    }
    {
        Fixture f;
        f.put(f.w + 0xbb, ReU8(1));
        f.put(f.w + 0x84, Vec2{9.9f, 19.9f});
        imgui_window_details_scrollbar_3c3234(f.state, f.api, 0);
        expect(f.get<float>(f.w + 0x84) == 9 && f.rectangles.empty(),
               "skipitems scrollbar still preserves wrapper CVTT64/float roundtrip");
    }
    {
        Fixture f;
        const auto bound = bind_imgui_window_details(f.state, f.details, f.api);
        f.put(f.c + 0x4b70, Address(0x90000));
        expect(bound.table_by_index_3921c0(2) == 0x90470 && bool(bound.title_contents_39a7a8) &&
                   bool(bound.scrollbar_3c3234) && bool(bound.end_columns_3b4f94),
               "typed binder supplies all nine exact window prerequisites");
    }
    {
        Fixture f;
        DrawShapesResources resources;
        resources[f.key].white_uv = {0.25f, 0.75f};
        f.details.shape_resources = &resources;
        f.put(f.w + 0x14, 0x81u);
        f.put(f.w + 0x5c, 1.0f);
        f.put(f.w + 0xc1, ReU8(255));
        f.put(0x2a9460, re::ReArray<float, 4>{1, 1, -1, -1});
        f.put(0x2a9470, 0);
        f.put(0x2a9474, 3);
        imgui_window_details_decorations_399d88(f.state, f.details, f.api, f.w, {0, 0, 100, 0},
                                                false, true, 1, {0xff0000ff, 0, 0, 0}, 10);
        const auto &list = f.draws.lists[f.key];
        re::ReArray<float, 4> point{};
        re::re_memcpy(point.data(), list.vertices.at(0).data(), 16);
        expect(
            list.vertices.size == 3 && list.indices.size == 3 && list.path.size == 0 &&
                point[0] == 90 && point[1] == 99 && point[2] == 0.25f,
            "native nontransparent grip creates literal triangle geometry through owned path fill");
    }
    {
        Fixture f;
        f.put(f.w + 0x14, 0x81u);
        f.put(f.w + 0xc1, ReU8(255));
        f.put(0x2a9460, re::ReArray<float, 4>{1, 1, -1, -1});
        f.put(0x2a9470, 0);
        f.put(0x2a9474, 3);
        bool stopped = false;
        {
            imgui_window_details_decorations_399d88(f.state, f.details, f.api, f.w, {0, 0, 100, 0},
                                                    false, true, 1, {0xffffffff, 0, 0, 0}, 10);
        }
        expect(stopped && f.draws.lists[f.key].path.size == 3 &&
                   f.draws.lists[f.key].vertices.size == 0,
               "missing grip shared UV data stops after concrete path points");
    }
    {
        Fixture f;
        DrawShapesResources resources;
        resources[f.key].white_uv = {0.25f, 0.75f};
        f.details.shape_resources = &resources;
        f.put(f.w + 0x14, 0x81u);
        f.put(f.w + 0xc1, ReU8(0));
        f.color(30);
        f.put(0x2aa148, 0.7853981852531433f);
        f.put(0x2a94c0, re::ReArray<float, 7>{1, 0, 0, 1, 0, 0, 3.1415927410125732f});
        imgui_window_details_decorations_399d88(f.state, f.details, f.api, f.w, {0, 0, 100, 0},
                                                false, true, 0, {}, 10);
        const auto &list = f.draws.lists[f.key];
        expect(list.vertices.size == 4 && list.indices.size == 6 && list.path.size == 0,
               "held resize border zero-radius arc endpoints create stroked owned geometry");
        float minimum = 1000, maximum = -1000;
        for (int i = 0; i < list.vertices.size; ++i) {
            float x;
            re::re_memcpy(&x, list.vertices.at(i).data(), 4);
            minimum = re::re_min(minimum, x);
            maximum = re::re_max(maximum, x);
        }
        expect(re::re_fabs(minimum + 0.5f) < 0.001f && re::re_fabs(maximum - 1.5f) < 0.001f,
               "held border native half-pixel center and minimum thickness2");
    }

    {
        Fixture f;
        const auto id = menu_controls_hash_39334c("#SCROLLY", 123);
        f.put(f.w + 0x50, Vec2{0, 0});
        f.put(f.w + 0x38, Vec2{200, 200});
        f.put(f.c + 0x3f68, id);
        f.put(f.c + 0x3f90, 1u);
        f.put(f.c + 0x3f94, 0);
        f.put(f.c + 0xe10, ReU8(1));
        f.put(f.c + 0xe08, Vec2{95, 60});
        f.put(f.c + 0x3fb0 + Address(0x281 - 0x200) * 12, id);
        imgui_window_details_scrollbar_3c3234(f.state, f.api, 1);
        expect(f.get<float>(f.w + 0x88) == 90 && f.get<unsigned>(f.c + 0x3f54) == id,
               "held vertical scrollbar computes literal signed64 scroll and hovered ID");
    }
    {
        Fixture f;
        const auto id = menu_controls_hash_39334c("#SCROLLY", 123);
        f.color(18);
        f.put(f.w + 0x50, Vec2{0, 0});
        f.put(f.w + 0x38, Vec2{200, 200});
        f.put(f.w + 0x204, 14.0f);
        f.put(f.w + 0x88, 19.9f);
        f.put(f.c + 0x3f68, id);
        f.put(f.c + 0x3f90, 1u);
        f.put(f.c + 0x3f94, 0);
        f.put(f.c + 0xe10, ReU8(1));
        f.put(f.c + 0xe08, Vec2{95, 6});
        f.put(f.c + 0x3fb0 + Address(0x281 - 0x200) * 12, id);
        imgui_window_details_scrollbar_3c3234(f.state, f.api, 1);
        expect(f.get<float>(f.w + 0x88) == 19 && f.rectangles.size() == 1 &&
                   (f.rectangles[0].color >> 24) == 170,
               "partially faded scrollbar rejects interaction while retaining alpha-scaled held "
               "geometry");
    }
    {
        Fixture f;
        const Address open = 0xa0000;
        f.put(open, ReU8(1));
        const auto id = menu_controls_hash_39334c("#CLOSE", 123);
        f.put(f.c + 0x3f10, f.w);
        f.put(f.c + 0x3f68, id);
        f.put(f.c + 0x3f90, 1u);
        f.put(f.c + 0x3f94, 0);
        f.put(f.c + 0x3f88, f.w);
        f.put(f.c + 0xe08, Vec2{100, 25});
        f.put(f.c + 0x3fb0 + Address(0x281 - 0x200) * 12, id);
        imgui_window_details_title_39a7a8(f.state, f.details, f.api, f.w, {10, 20, 110, 40}, "A",
                                          open);
        expect(f.get<ReU8>(open) == 0 && f.get<unsigned>(f.c + 0x3f68) == 0,
               "native title close button release clears copied open byte and active ID");
    }
    {
        Fixture f;
        f.put(f.c + 0x37f8, 0);
        const auto id = menu_controls_hash_39334c("#COLLAPSE", 123);
        f.put(f.c + 0x3f10, f.w);
        f.put(f.c + 0x3f68, id);
        f.put(f.c + 0x3f90, 1u);
        f.put(f.c + 0x3f94, 0);
        f.put(f.c + 0x3f88, f.w);
        f.put(f.c + 0xe08, Vec2{15, 25});
        f.put(f.c + 0x3fb0 + Address(0x281 - 0x200) * 12, id);
        bool arrow = false;
        f.api.controls.arrow_3a7400 = [&](Address key, Vec2 p, unsigned, int direction,
                                          float scale) {
            arrow = key == f.key && p.x == 12 && p.y == 23 && direction == 3 && scale == 1;
        };
        imgui_window_details_title_39a7a8(f.state, f.details, f.api, f.w, {10, 20, 110, 40}, "A",
                                          {});
        expect(arrow && f.get<ReU8>(f.w + 0xba) == 1,
               "native collapse release requests deferred collapse and consumes arrow geometry");
    }
    {
        Fixture f;
        f.resize_setup();
        f.color(31);
        const auto r = imgui_window_details_resize_39d760(f.state, f.api, f.w, {120, 130}, 1,
                                                          {0, 0, 300, 200});
        expect(!r.changed && r.held == -1 && r.colors[0] == 0xffffffff &&
                   f.get<int>(f.w + 0xf0) == 1 &&
                   f.get<unsigned>(f.ids + 4) == menu_controls_hash_39334c("#RESIZE", 123) &&
                   f.get<unsigned>(f.w + 0x158) == 0 && f.get<Vec2>(f.w + 0x28).x == 100,
               "inactive manual resize uses literal scope ID, returns native false, and restores "
               "ID/nav layer");
    }
    {
        Fixture f;
        f.resize_setup();
        f.color(33);
        f.active_mouse(f.resize_id(0));
        f.put(f.c + 0xe08, Vec2{150, 160});
        const auto r = imgui_window_details_resize_39d760(f.state, f.api, f.w, {120, 130}, 1,
                                                          {0, 0, 300, 200});
        expect(!r.changed && r.held == -1 && r.colors[0] == 0xffffffff &&
                   f.get<Vec2>(f.w + 0x30).x == 150 && f.get<Vec2>(f.w + 0x28).y == 160 &&
                   f.get<unsigned>(f.c + 0x4a88) == 6,
               "held corner applies size/position and cursor while native return remains false");
    }
    {
        Fixture f;
        f.resize_setup();
        f.active_mouse(f.resize_id(0));
        f.put(f.c + 0x3752, ReU16(2));
        const auto r = imgui_window_details_resize_39d760(f.state, f.api, f.w, {120, 130}, 1,
                                                          {0, 0, 300, 200});
        expect(r.changed && f.get<Vec2>(f.w + 0x30).x == 120 && f.get<Vec2>(f.w + 0x28).y == 130 &&
                   f.get<unsigned>(f.c + 0x3f68) == 0,
               "double-click corner applies constrained auto-fit, clears active ID and returns "
               "native true");
    }
    {
        Fixture f;
        f.resize_setup();
        f.put(f.c + 0x7e, ReU8(1));
        f.active_mouse(f.resize_id(5));
        f.put(f.c + 0xe08, Vec2{150, 50});
        const auto r = imgui_window_details_resize_39d760(f.state, f.api, f.w, {120, 130}, 0,
                                                          {0, 0, 300, 200});
        expect(r.held == 1 && f.get<Vec2>(f.w + 0x30).x == 154 &&
                   f.get<Vec2>(f.w + 0x30).y == 100 && f.get<unsigned>(f.c + 0x4a88) == 4,
               "held border uses numeric edge1, outer offset4 and matching cursor/held outputs");
    }
    {
        Fixture f;
        f.resize_setup();
        f.put(f.c + 0x4a50, f.w);
        f.put(f.c + 0x491c, 2u);
        f.put(f.c + 0xe25, ReU8(1));
        f.put(f.c + 0x18, 0.01f);
        f.put(f.c + 0x70, 1.0f);
        f.put(f.c + 0x74, 1.0f);
        f.put(f.c + 0xe2c + Address(0x202) * 16 + 12, 1.0f);
        const auto r = imgui_window_details_resize_39d760(f.state, f.api, f.w, {120, 130}, 0,
                                                          {0, 0, 300, 200});
        expect(!r.changed && f.get<Vec2>(f.w + 0x30).x == 106 && f.get<Vec2>(f.w + 0x30).y == 100 &&
                   f.get<Vec2>(f.c + 0x4a7c).x == 0 && f.get<ReU8>(f.c + 0x4927) == 1,
               "keyboard resize consumes analog key vector, scale/delta and integer accumulation");
    }
    {
        Fixture f;
        f.resize_setup();
        f.put(f.c + 0x4a50, f.w);
        f.put(f.c + 0x491c, 2u);
        f.put(f.c + 0x4a7c, Vec2{2, 3});
        (void)imgui_window_details_resize_39d760(f.state, f.api, f.w, {120, 130}, 0,
                                                 {0, 0, 300, 200});
        expect(f.get<Vec2>(f.w + 0x30).x == 100 && f.get<Vec2>(f.c + 0x4a7c).x == 2,
               "native2d4870 zero Vec2 makes inactive keyboard resize branch inert");
    }
    {
        Fixture f;
        f.put(f.c + 0x37f8, 2);
        bool arrow = false;
        f.api.controls.arrow_3a7400 = [&](Address, Vec2 p, unsigned, int, float) {
            arrow = p.x == 2 && p.y == 3;
        };
        imgui_window_details_title_39a7a8(f.state, f.details, f.api, f.w, {10, 20, 110, 40}, "A",
                                          {});
        expect(arrow, "other menu-button directions use actual2d4870 zero position rather than "
                      "invented missing stack data");
    }
    {
        Fixture f;
        f.put(f.c + 0x5c90, ReU8(1));
        f.put(f.c + 0x5ca0, 1);
        f.put(f.c + 0x5ca4, 128);
        f.put(f.c + 0x5ca8, f.buffer);
        f.text(f.buffer, "");
        f.text(0x2aa12c, "\n");
        f.put(f.c + 0x5cc4, ReU8(1));
        f.put(f.c + 0x5cc0, 20.0f);
        f.put(f.w + 0x188, 3);
        f.put(f.c + 0x5cc8, 1);
        f.put(f.c + 0x5cb0, Address(0xa0000));
        f.put(f.c + 0x5cb8, Address(0xa0100));
        f.text(0xa0000, "[");
        f.text(0xa0100, "]");
        imgui_window_details_log_text_394e5c(f.state, f.api, Vec2{0, 20}, "A\nB");
        const auto bytes = window_detail::cstring(f.windows, f.buffer, 0x394e5c);
        expect(bytes == "        [ A\n        B ]" && f.get<int>(f.c + 0x5ca0) == 24 &&
                   f.get<Address>(f.c + 0x5cb0) == 0 && f.get<Address>(f.c + 0x5cb8) == 0,
               "rendered logging consumes prefix/suffix, native indentation, line spacing and "
               "owned byte appends");
    }
    {
        Fixture f;
        f.put(f.c + 0x37f8, 0);
        const auto id = menu_controls_hash_39334c("#COLLAPSE", 123);
        f.active_mouse(id);
        f.put(f.c + 0x3f10, f.w);
        f.put(f.c + 0xe08, Vec2{15, 25});
        f.put(f.c + 0x38, 1.0f);
        f.put(f.c + 0x37a0, 4.0f);
        f.put(f.c + 0x36f8, Vec2{17, 29});
        f.put(f.w + 0x7c, 99u);
        f.put(f.c + 0x3eb8, 1);
        f.put(f.c + 0x3ec0, Address(0xa2000));
        f.put(f.c + 0x3ea8, 1);
        f.put(f.c + 0x3eb0, Address(0xa2000));
        f.put(0xa2000, f.w);
        f.api.controls.arrow_3a7400 = [](Address, Vec2, unsigned, int, float) {};
        imgui_window_details_title_39a7a8(f.state, f.details, f.api, f.w, {10, 20, 110, 40}, "A",
                                          {});
        expect(f.get<unsigned>(f.c + 0x3f68) == 99 && f.get<Vec2>(f.c + 0x3f7c).x == 17 &&
                   f.get<Vec2>(f.c + 0x3f7c).y == 29 && f.get<Address>(f.c + 0x3f20) == f.w &&
                   f.get<unsigned>(f.c + 0x4778) == 15 && f.get<ReU16>(f.c + 0x4940) == 0,
               "held collapse drag composes native focus/active/move origin and navigation cancel "
               "writes");
    }
    {
        Fixture f;
        const Address columns = 0xa3000;
        f.put(columns + 8, ReU16(3));
        f.put(columns + 0xc, ReU16(77));
        f.put(columns + 0xe, ReU16(88));
        f.put(columns + 0x10, ReU16(99));
        f.put(columns + 0x12, re::ReArray<ReU16, 4>{10, 0, 20, 30});
        imgui_window_details_menu_columns_3bd06c(f.state, columns, false);
        expect(f.get<unsigned>(columns + 4) == 66 && f.get<ReU16>(columns + 0xc) == 77 &&
                   f.get<ReU16>(columns + 0xe) == 88 &&
                   f.get<ReU16>(columns + 0x10) == 99,
               "menu-column false mode computes total without overwriting offsets");
        imgui_window_details_menu_columns_3bd06c(f.state, columns, true);
        expect(f.get<unsigned>(columns + 4) == 66 && f.get<ReU16>(columns + 0xc) == 10 &&
                   f.get<ReU16>(columns + 0xe) == 13 &&
                   f.get<ReU16>(columns + 0x10) == 36,
               "menu-column true mode inserts spacing only between nonempty columns");
        f.put(columns + 0x12, re::ReArray<ReU16, 4>{65535, 1, 0, 0});
        imgui_window_details_menu_columns_3bd06c(f.state, columns, false);
        expect(f.get<unsigned>(columns + 4) == 3, "native menu-column sum wraps at sixteen bits");
    }
    {
        Fixture f;
        f.put(f.c + 0x5c28, Address(0xa4000));
        f.put(f.w + 0x294, 8);
        expect(imgui_window_details_settings_391dd0(f.state, f.w) == 0xa4008,
               "cached settings index is a byte offset rather than a record index");
        f.put(f.w + 0x294, -4);
        expect(imgui_window_details_settings_391dd0(f.state, f.w) == 0xa3ffc,
               "cached settings index preserves signed arithmetic");
        f.put(f.w + 0x294, -1);
        f.put(f.w + 0x10, 42u);
        f.put(f.c + 0x5c20, 96);
        for (unsigned i = 0; i < 3; ++i) {
            const Address header = 0xa4000 + 32 * i;
            f.put(header, 32);
            f.put(header + 4, 42u);
        }
        f.put(0xa4004 + 0xe, ReU8(1));
        expect(imgui_window_details_settings_391dd0(f.state, f.w) == 0xa4024,
               "settings walk skips deleted equal IDs and returns first live duplicate in chunk "
               "order");
        f.put(f.w + 0x10, 43u);
        expect(imgui_window_details_settings_391dd0(f.state, f.w) == 0,
               "settings chunk termination includes native trailing header offset four");
        f.put(f.c + 0x5c28, Address(0));
        expect(imgui_window_details_settings_391dd0(f.state, f.w) == 0,
               "empty settings chunk vector has no first record");
    }
    {
        Fixture f;
        DrawShapesResources resources;
        resources[f.key].white_uv = {0.25f, 0.75f};
        f.details.shape_resources = &resources;
        f.put(f.w + 0x14, 1u);
        f.put(f.w + 0x5c, 1.0f);
        f.put(f.w + 0xc1, ReU8(255));
        f.put(0x2a9460, re::ReArray<float, 4>{1, 1, -1, -1});
        f.put(0x2a9470, 0);
        f.put(0x2a9474, 3);
        f.color(3);
        f.color(6);
        bool changed = false;
        f.api.controls.rectangle = [&](const MenuControlRectangle &r) {
            f.rectangles.push_back(r);
            if (!changed) {
                changed = true;
                f.put(f.w + 0x14, 3u);
                f.put(f.w + 0xb9, ReU8(1));
                f.put(f.w + 0x5c, 7.0f);
                f.put(f.w + 0x58, 9.0f);
            }
        };
        imgui_window_details_decorations_399d88(f.state, f.details, f.api, f.w, {0, 0, 100, 0},
                                                false, true, 1, {0xffffffff, 0, 0, 0}, 10);
        const auto &list = f.draws.lists[f.key];
        re::ReArray<float, 4> point{};
        re::re_memcpy(point.data(), list.vertices.at(0).data(), 16);
        expect(changed && list.vertices.size == 3 && point[0] == 90 && point[1] == 99 &&
                   f.rectangles.size() == 2 && f.rectangles.back().rounding == 9 &&
                   f.rectangles.back().thickness == 7,
               "grip uses entry collapsed/flags/border/rounding across callbacks; outer border "
               "reads fresh fields");
    }
    {
        Fixture f;
        int direction = 99;
        const auto p = window_details::popup_position(f.state, {50, 60}, {10, 10}, direction,
                                                      {0, 0, 100, 100}, {40, 40, 50, 50}, 1);
        expect(p.x == 0 && p.y == 0 && direction == 99,
               "popup mode1 clears candidate with native2d4870 before unmatched cached direction");
    }
    {
        Fixture f;
        const Address second = 0xb0000, shared = 0xb1000;
        auto &popped = f.draws.lists[second];
        popped.clip_stack.push({0, 0, 10, 10});
        popped.header.clip = {0, 0, 10, 10};
        draw_core_add_command_39fd18(popped);
        f.put(second + 0x38, shared);
        f.put(shared + 0x1c, re::ReArray<float, 4>{7, 8, 70, 80});
        f.color(50);
        f.put(f.c + 0x48f0, 7u);
        f.put(f.w + 0x238, ClipRect{0, 0, 10, 10});
        f.api.controls.rectangle = [&](const auto &) { f.put(f.w + 0x298, second); };
        imgui_window_details_nav_highlight_3997ac(f.state, f.api, {2, 3, 8, 9}, 7, 1);
        expect(popped.clip_stack.size == 0 && popped.header.clip[0] == 7 &&
                   popped.header.clip[3] == 80 && f.draws.lists[f.key].clip_stack.size == 2,
               "highlight reloaded drawlist pop uses that list's copied shared full-screen clip");
    }
    {
        Fixture f;
        const Address second = 0xb0000, native_shared = 0xb1000;
        f.font_sink();
        f.color(1);
        f.put(f.w + 0x14, 0x100000u);
        f.put(f.key + 0x38, native_shared);
        f.put(native_shared + 0x10, 10.0f);
        f.put(f.other + 0x298, second);
        auto &list = f.draws.lists[second];
        list.clip_stack.push({0, 0, 300, 200});
        list.header.clip = {0, 0, 300, 200};
        draw_core_add_command_39fd18(list);
        f.shared[second] = {f.font, 10};
        f.api.controls.circle = [&](const auto &) { f.put(f.c + 0x3f08, f.other); };
        imgui_window_details_title_39a7a8(f.state, f.details, f.api, f.w, {0, 0, 100, 20}, "A", {});
        expect(list.vertices.size == 4 && f.draws.lists[f.key].vertices.size == 0,
               "title clipped-text wrapper selects current window after native marker callback");
    }
}
} // namespace rust_internal_re
