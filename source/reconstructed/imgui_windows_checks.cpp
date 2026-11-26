#include "imgui_windows_internal.hpp"
namespace rust_internal_re {
namespace {
void expect(bool v, const char *why) {
    if (!v)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
struct Fixture {
    Snapshot image{0, re::ReVector<ReByte>(0x420000)};
    MenuControlsState controls;
    DrawCoreStore draw;
    ImguiWindowsState state;
    ImguiWindowsApi api;
    static constexpr Address c = 0x10000, a = 0x20000, b = 0x21000, d = 0x22000, order = 0x30000,
                             focus = 0x31000, popup = 0x32000, begun = 0x33000, stack = 0x34000,
                             scopes = 0x35000, draw_b = 0x50000;
    template <class T> void put(Address p, T v) {
        expect(image.write(p, v), "window fixture write");
    }
    template <class T> T get(Address p) {
        const auto v = image.read<T>(p);
        expect(bool(v), "window fixture read");
        return *v;
    }
    void text(Address p, re::ReStringView v) {
        for (ReUSize i = 0; i < v.size(); ++i)
            put(p + i, ReU8(v[i]));
        put(p + v.size(), ReU8(0));
    }
    void first_frame_data() {
        text(0x40010, "current");
        put(c + 0x3e60, 1);
        put(b + 0x260, 0);
        put(b + 0x14, 0x1001u);
        put(b + 0xf0, 1);
        put(b + 0xf4, 1);
        put(b + 0xf8, Address(0x36000));
        put(0x36000, 2u);
        put(c + 0x48d8, 1);
        put(c + 0x48e0, Address(0x37000));
        put(0x37000, Address(0x38000));
        put(0x38004, Vec2{0, 0});
        put(0x3800c, Vec2{800, 600});
        put(0x38014, Vec2{0, 0});
        put(0x3801c, Vec2{800, 600});
        put(c + 0x37d0, 1.0f);
        put(c + 0x37d8, Vec2{8, 6});
        put(c + 0x37e0, 3.0f);
        put(c + 0x37e4, 1.0f);
        put(c + 0x37e8, Vec2{16, 16});
        put(c + 0x3818, 1.0f);
        put(c + 0x381c, 8.0f);
        put(c + 0x3844, 12.0f);
        put(c + 0x18, 1.0f / 36.0f);
        put(c + 0x3c28, Address(0x39000));
        put(0x39040, Address(0x3a000));
        put(0x3a008, Address(0x1234));
        put(draw_b + 0x38, c + 0x3c38);
        put(c + 0x3c64, 5u);
        put(0x28db54, re::ReNumericLimits<float>::max());
        put(0x2a9444, -re::ReNumericLimits<float>::max());
        put(0x293134, 2.0f);
        put(0x293178, 4.0f);
        put(0x28d254, 1.0f);
        put(0x2a8204, 1.1f);
        put(0x2930a8, 0.2f);
        put(0x28d250, 0.5f);
        put(0x2931bc, 16.0f);
        put(0x2931e8, 36.0f);
        put(0x28d6e4, 255.0f);
        put(0x28d24c, 0.0f);
        put(0x2aa130, 0.0);
        put(b + 0x20, Vec2{10, 20});
        put(b + 0x28, Vec2{200, 120});
        put(b + 0x30, Vec2{200, 120});
        put(b + 0x110, Vec2{0, 0});
        put(b + 0x118, Vec2{40, 30});
        put(b + 0x120, Vec2{50, 35});
        put(b + 0x1f8, ClipRect{10, 20, 210, 140});
        put(b + 0x94, Vec2{re::ReNumericLimits<float>::max(), re::ReNumericLimits<float>::max()});
        put(b + 0xe0, Vec2{re::ReNumericLimits<float>::max(), re::ReNumericLimits<float>::max()});
    }
    Fixture() {
        controls.image = &image;
        controls.draw = &draw;
        state.controls = &controls;
        put(0x405b28, c);
        put(c + 0x3f08, b);
        put(c + 0x48e8, a);
        put(c + 0x3c34, 12.0f);
        put(c + 0x3820, 4.0f);
        put(c + 0xe08, Vec2{400, 400});
        put(c + 0x3ea8, 3);
        put(c + 0x3eac, 4);
        put(c + 0x3eb0, order);
        put(c + 0x3eb8, 3);
        put(c + 0x3ebc, 4);
        put(c + 0x3ec0, focus);
        int i = 0;
        for (auto w : {a, b, d}) {
            put(order + Address(i) * 8, w);
            put(focus + Address(i) * 8, w);
            put(w, c);
            put(w + 8, 0x40000 + Address(i) * 16);
            text(0x40000 + Address(i) * 16, i == 2 ? "third" : "same");
            put(w + 0x10, ReU32(i + 1));
            put(w + 0x378, w);
            put(w + 0xca, ReI16(i));
            put(w + 0xb7, ReU8(1));
            put(w + 0x1b0, -1);
            put(w + 0x290, 1.0f);
            put(w + 0x238, ClipRect{0, 0, 500, 500});
            put(w + 0x1b4, 1);
            ++i;
        }
        put(b + 0x370, a);
        put(b + 0x14, 0x8000000u);
        put(c + 0x48b0, 2);
        put(c + 0x48b8, popup);
        put(c + 0x48c0, 2);
        put(c + 0x48c8, begun);
        for (int j = 0; j < 2; ++j) {
            const auto w = j ? b : a;
            put(popup + Address(j) * 56, ReU32(j + 1));
            put(popup + Address(j) * 56 + 8, w);
            put(popup + Address(j) * 56 + 16, a);
            put(begun + Address(j) * 56, ReU32(j + 1));
        }
        put(c + 0x3ed8, 2);
        put(c + 0x3edc, 4);
        put(c + 0x3ee0, stack);
        ImguiWindowStackRecord record;
        record.window = a;
        put(stack, record);
        record.window = b;
        for (ReUSize j = 0; j < record.last_item.size(); ++j)
            record.last_item[j] = ReByte(j + 16);
        put(stack + 0x58, record);
        put(c + 0x4880, 2);
        put(c + 0x4884, 4);
        put(c + 0x4888, scopes);
        put(scopes, 11u);
        put(scopes + 4, 22u);
        put(b + 0x298, draw_b);
        auto &list = draw.lists[draw_b];
        list.clip_stack.push({0, 0, 500, 500});
        list.clip_stack.push({1, 2, 100, 200});
        list.header.clip = {1, 2, 100, 200};
        draw_core_add_command_39fd18(list);
    }
};
} // namespace
void check_imgui_windows_reconstruction() {
    {
        Fixture f;
        expect(imgui_window_find_391c78(f.state, "same") == f.a,
               "first duplicate native window name");
        expect(imgui_window_find_391c78(f.state, "missing") == 0, "missing window name");
    }
    {
        Fixture f;
        expect(imgui_window_modal_391928(f.state) == f.b, "last active modal");
        expect(imgui_window_modal_391928(f.state, f.b) == 0,
               "modal descendant is not blocked by itself");
        expect(imgui_window_modal_391928(f.state, f.a) == f.b, "modal parent blocked by modal");
        f.put(f.b + 0xb7, ReU8(0));
        expect(imgui_window_modal_391928(f.state) == 0, "inactive modal skipped");
    }
    {
        Fixture f;
        imgui_window_order_38f020(f.state, f.a, f.d);
        expect(f.get<Address>(f.order) == f.b && f.get<Address>(f.order + 8) == f.a &&
                   f.get<Address>(f.order + 16) == f.d,
               "move earlier root immediately below later root");
        imgui_window_order_38f020(f.state, f.d, f.b);
        expect(f.get<Address>(f.order) == f.d && f.get<Address>(f.order + 8) == f.b &&
                   f.get<Address>(f.order + 16) == f.a,
               "move later root immediately below earlier root");
    }
    {
        Fixture f;
        const auto r = imgui_window_trim_39031c(f.state, f.api, 1, false);
        expect(r.status == UnityStatus::complete && f.get<int>(f.c + 0x48b0) == 1,
               "popup trim without restore");
    }
    {
        Fixture f;
        f.put(f.a + 0xb7, ReU8(0));
        f.put(f.c + 0x3f68, 99u);
        f.put(f.c + 0x4c20, 99u);
        f.put(f.c + 0x3f88, f.b);
        const auto r = imgui_window_trim_39031c(f.state, f.api, 1, true);
        expect(r.status == UnityStatus::missing_dependency && r.stopped_at == 0x3c04d0 &&
                   f.get<int>(f.c + 0x48b0) == 0,
               "popup trims retained before missing text deactivation");
    }
    {
        Fixture f;
        const auto r = imgui_window_close_390260(f.state, f.api);
        expect(r.status == UnityStatus::complete && f.get<int>(f.c + 0x48b0) == 1 &&
                   f.get<ReU8>(f.a + 0x161) == 1,
               "close matching popup restores focus and nav suppression");
    }
    {
        Fixture f;
        f.put(f.begun + 56, 999u);
        const auto r = imgui_window_close_390260(f.state, f.api);
        expect(r.status == UnityStatus::complete && f.get<int>(f.c + 0x48b0) == 2,
               "mismatched begun/open popup ID leaves stack");
    }
    {
        Fixture f;
        const auto r = imgui_window_end_390994(f.state, f.api);
        expect(r.status == UnityStatus::complete && f.get<Address>(f.c + 0x3f08) == f.a &&
                   f.get<int>(f.c + 0x3ed8) == 1,
               "End restores parent window stack");
        expect(f.get<ReU32>(f.c + 0x4784) == 11 && f.get<int>(f.c + 0x4880) == 1,
               "End pops focus scope");
        expect(f.get<ReU8>(f.c + 0x47a4) == 16 && f.get<ReU8>(f.c + 0x47df) == 75,
               "End copies overlapping LastItemData blocks");
        expect(f.draw.lists[f.draw_b].clip_stack.size == 1 &&
                   f.get<ClipRect>(f.b + 0x238).z == 500,
               "End pops drawlist clip and window clip");
        expect(f.get<float>(f.c + 0x3c30) == 12 && f.get<ReU8>(f.a + 0x160) == 1,
               "SetCurrentWindow font size and clip-none shortcut");
    }
    {
        Fixture f;
        f.put(f.c + 0x3ed8, 1);
        f.put(f.c + 0x3e6d, ReU8(1));
        const auto r = imgui_window_end_390994(f.state, f.api);
        expect(r.status == UnityStatus::complete && f.get<int>(f.c + 0x4880) == 2 &&
                   f.draw.lists[f.draw_b].clip_stack.size == 2,
               "End fallback window guard has no stack effects");
    }
    {
        Fixture f;
        f.put(f.b + 0x14, 0u);
        f.put(f.b + 0xc2, ReI16(1));
        f.put(f.b + 0xd2, ReU8(3));
        f.put(f.b + 0x28, Vec2{2, 3});
        f.put(f.a + 0x100, Vec2{10, 20});
        f.put(f.c + 0x3f10, f.b);
        const auto r = imgui_window_end_child_390a88(f.state, f.api);
        const auto box = f.get<ClipRect>(f.c + 0x47b0);
        expect(r.status == UnityStatus::complete && box.x == 10 && box.y == 20 && box.z == 14 &&
                   box.w == 24,
               "child auto-fit minimum4 and parent item bounds");
        expect(f.get<ReU8>(f.c + 0x3e6e) == 0 &&
                   (f.get<ReU32>(f.c + 0x47ac) & 0x80) &&
                   f.get<ReU32>(f.c + 0x5cc0) == 0xff7fffff,
               "child hovered-window/status cleanup");
    }
    {
        Fixture f;
        f.put(f.b + 0xc2, ReI16(1));
        f.put(f.b + 0x15c, ReU16(1));
        f.put(f.b + 0x80, 91u);
        const auto r = imgui_window_end_child_390a88(f.state, f.api);
        expect(r.status == UnityStatus::missing_dependency && r.stopped_at == 0x3997ac &&
                   f.get<ReU32>(f.c + 0x47a4) == 91 &&
                   f.get<ReU8>(f.c + 0x3e6e) == 1,
               "child item and in-EndChild flag retained before missing highlight");
    }
    {
        Fixture f;
        f.put(f.b + 0xf0, 1);
        f.put(f.b + 0xf4, 1);
        f.put(f.b + 0xf8, Address(0x36000));
        f.put(0x36000, 2u);
        f.put(f.b + 0x208, ClipRect{0, 0, 400, 400});
        f.text(0x40010, "current");
        const auto r = imgui_window_begin_38cfa4(f.state, f.api, {"current", {}, 0});
        expect(r.result.status == UnityStatus::complete && r.window == f.b,
               "repeated Begin selects existing name and pushes stacks");
    }

    {
        Fixture f;
        Address cursor = 0x60000;
        const auto reserve = [&](ReUSize bytes) {
            const auto p = cursor;
            cursor += Address((bytes + 15) & ~ReUSize(15));
            return p;
        };
        f.api.reserve_storage = reserve;
        f.api.allocation_leaf = [&](Address target, Address, ReUSize bytes) {
            expect(target == 1, "numeric allocator key passed as data");
            return reserve(bytes);
        };
        f.put(0x27fa18, Address(1));
        f.put(0x405b68, Address(0));
        f.put(f.c + 0x48d8, 1);
        f.put(f.c + 0x48e0, Address(0x37000));
        f.put(0x37000, Address(0x38000));
        f.put(0x38004, Vec2{5, 6});
        f.put(0x28db30, 60.0f);
        f.put(0x28db54, re::ReNumericLimits<float>::max());
        f.put(0x28d250, 0.5f);
        const auto w = window_detail::create_window(f.state, f.api, "Created", 0x100);
        expect(imgui_window_find_391c78(f.state, "Created") == w && f.get<Address>(w) == f.c,
               "window allocation/name/display registration");
        expect(f.get<Vec2>(w + 0x20).x == 65 && f.get<Vec2>(w + 0x20).y == 66 &&
                   f.get<ReI8>(w + 0xd0) == 2 && f.get<ReU8>(w + 0xd3) == 1,
               "window viewport-relative defaults and auto-fit");
        expect(f.get<ReU32>(w + 0x10) == menu_controls_hash_39334c("Created") &&
                   f.get<ReU32>(w + 0x7c) ==
                       menu_controls_hash_39334c("#MOVE", menu_controls_hash_39334c("Created")),
               "window/move IDs");
        expect(f.get<ReU32>(f.c + 0xf4) == 2 && f.get<Address>(w + 0x298) == w + 0x2a0 &&
                   f.draw.lists.contains(w + 0x2a0),
               "allocation counter and embedded owned drawlist");
    }
    {
        Fixture f;
        f.first_frame_data();
        const auto r = imgui_window_begin_38cfa4(f.state, f.api, {"current", {}, 0x1001});
        expect(r.result.status == UnityStatus::missing_dependency &&
                   r.result.stopped_at == 0x39d760,
               "first-frame requires real resize controller");
        expect(f.get<ReU8>(f.b + 0xb6) == 1 && f.get<Address>(f.c + 0x3f08) == f.b &&
                   f.get<int>(f.c + 0x3ed8) == 3 && f.get<Vec2>(f.b + 0x40).x == 50,
               "native pre-resize writes and computed ideal content retained");
        expect(f.draw.lists[f.draw_b].commands.size == 1 && f.draw.lists[f.draw_b].flags == 5,
               "first-frame reset consumes copied shared flags");
    }
    {
        Fixture f;
        f.first_frame_data();
        bool resized = false, decorated = false;
        f.api.resize_39d760 = [&](Address w, Vec2 fit, int grips, ClipRect visibility) {
            expect(w == f.b && fit.x == 66 && fit.y == 47 && grips == 1 && visibility.z == 800,
                   "resize consumes exact auto-fit and viewport visibility");
            resized = true;
            return ImguiWindowResize{false, 7, {11, 22, 33, 44}};
        };
        f.api.decorations_399d88 = [&](Address w, ClipRect title, bool highlight, bool handle,
                                       int grips, const auto &colors, float grip) {
            expect(resized && w == f.b && !highlight && handle && grips == 1 && colors[2] == 33 &&
                       grip == 13 && title.w == 20,
                   "decorations consumes title/resize outputs");
            decorated = true;
        };
        const auto r = imgui_window_begin_38cfa4(f.state, f.api, {"current", {}, 0x1001});
        expect(r.result.status == UnityStatus::complete && r.visible && decorated,
               "first-frame concrete controller reaches visible return");
        const auto work = f.get<ClipRect>(f.b + 0x218), region = f.get<ClipRect>(f.b + 0x248);
        expect(work.x == 18 && work.y == 26 && work.z == 202 && work.w == 134 && region.x == 18 &&
                   region.z == 202,
               "literal work/content region calculations");
        const auto clip = f.get<ClipRect>(f.b + 0x208);
        expect(clip.x == 14 && clip.y == 21 && clip.z == 210 && clip.w == 139 &&
                   f.get<Vec2>(f.b + 0x110).x == 18,
               "inner clipping and cursor start");
        expect(f.get<float>(f.b + 0x268) == 184 && f.get<ReU8>(f.b + 0xc1) == 7 &&
                   f.get<ReU16>(f.b + 0xc2) == 1 &&
                   f.draw.lists[f.draw_b].texture_stack.at(0) == 0x1234 &&
                   f.draw.lists[f.draw_b].clip_stack.size == 2,
               "default width/resize state and actual texture+clip stacks");
    }
    {
        Fixture f;
        f.first_frame_data();
        f.api.resize_39d760 = [](Address, Vec2, int, ClipRect) { return ImguiWindowResize{}; };
        f.put(f.c + 0x38b8 + 3 * 16, re::ReArray<float, 4>{1, 0, 0, 1});
        const auto r = imgui_window_begin_38cfa4(f.state, f.api, {"current", {}, 0x1001});
        expect(r.result.status == UnityStatus::missing_dependency &&
                   r.result.stopped_at == 0x3a1244 &&
                   f.draw.lists[f.draw_b].texture_stack.size == 1 &&
                   f.get<ClipRect>(f.b + 0x1f8).z == 210 && f.get<Vec2>(f.b + 0x110).x == 0,
               "decorations stop retains rectangle and draw-state writes before layout reset");
    }
    {
        Fixture f;
        f.first_frame_data();
        f.put(f.b + 0xb9, ReU8(1));
        bool decoration = false;
        f.api.decorations_399d88 = [&](Address, ClipRect, bool, bool, int, const auto &, float) {
            decoration = true;
        };
        const auto r = imgui_window_begin_38cfa4(f.state, f.api, {"current", {}, 0x1000});
        expect(r.result.status == UnityStatus::missing_dependency &&
                   r.result.stopped_at == 0x39a7a8 && decoration &&
                   f.get<Vec2>(f.b + 0x28).y == 12 && f.get<ReU8>(f.b + 0xc1) == 255,
               "collapsed title window skips resize and requires title contents after layout");
    }
    {
        Fixture f;
        f.first_frame_data();
        f.put(f.b + 0x118, Vec2{40.9f, 30.9f});
        f.put(f.b + 0x120, Vec2{50.9f, 35.9f});
        window_detail::content_sizes(f.state, f.b);
        expect(f.get<Vec2>(f.b + 0x38).x == 40 && f.get<Vec2>(f.b + 0x40).y == 35,
               "measured content truncates maxima differences");
        f.put(f.b + 0xb9, ReU8(1));
        f.put(f.b + 0x118, Vec2{999, 999});
        window_detail::content_sizes(f.state, f.b);
        expect(f.get<Vec2>(f.b + 0x38).x == 40, "collapsed measurement preserves old content");
        f.put(f.b + 0xb9, ReU8(0));
        f.put(f.b + 0x48, Vec2{re::ReNumericLimits<float>::quiet_NaN(), 7});
        window_detail::content_sizes(f.state, f.b);
        expect(re::re_isnan(f.get<Vec2>(f.b + 0x38).x) && f.get<Vec2>(f.b + 0x40).y == 7,
               "explicit NaN and finite content propagated");
    }
    {
        Fixture f;
        f.first_frame_data();
        f.put(f.c + 0x47e0, 0x10u);
        f.put(f.c + 0x481c, Vec2{10, -1});
        f.put(f.c + 0x4824, Vec2{100, -1});
        auto v = window_detail::constrain_size(f.state, f.api, f.b, {200, 300});
        expect(v.x == 100 && v.y == 120, "constraint clamp and negative-axis full-size fallback");
        f.put(f.c + 0x4830, Address(0x7788));
        f.put(f.c + 0x4838, Address(0x5566));
        f.api.size_constraint_leaf = [&](Address target, const ImguiWindowConstraint &q) {
            expect(target == 0x7788 && q.user == 0x5566 && q.position.x == 10 &&
                       q.current.y == 120 && q.desired.x == 100,
                   "indirect size callback receives literal data fields");
            return Vec2{61.9f, 42.9f};
        };
        v = window_detail::constrain_size(f.state, f.api, f.b, {200, 300});
        expect(v.x == 61 && v.y == 42, "callback desired result consumed before truncation");
    }
    {
        Fixture f;
        f.first_frame_data();
        f.put(f.b + 0x84, Vec2{9, 19});
        f.put(f.b + 0x8c, Vec2{80, 90});
        f.put(f.b + 0x94, Vec2{120, 80});
        f.put(f.b + 0x9c, Vec2{0.5f, 1});
        f.put(f.b + 0xa4, Vec2{0, 0});
        auto v = window_detail::scroll_target(f.state, f.b);
        expect(v.x == 20 && v.y == 0, "both target axes consumed with independent center ratios");
        f.put(f.b + 0x94, Vec2{1000, 1000});
        f.put(f.b + 0x9c, Vec2{0, 0});
        v = window_detail::scroll_target(f.state, f.b);
        expect(v.x == 80 && v.y == 90, "active scroll target clamped to maximum");
        f.put(f.b + 0xbb, ReU8(1));
        v = window_detail::scroll_target(f.state, f.b);
        expect(v.x == 1000 && v.y == 1000, "skipitems omits maximum clamp");
    }
    {
        Fixture f;
        const Address cols = 0x3b000;
        f.put(cols + 0x12, ReU16(65530));
        f.put(cols + 0x14, ReU16(10));
        f.put(cols + 0x16, ReU16(0));
        f.put(cols + 0x18, ReU16(5));
        window_detail::menu_columns(f.state, cols, 3, false);
        expect(f.get<ReU32>(cols) == 15 && f.get<ReU16>(cols + 0xc) == 65533 &&
                   f.get<ReU16>(cols + 0xe) == 7 &&
                   f.get<ReU16>(cols + 0x10) == 10 &&
                   f.get<ReU64>(cols + 0x12) == 0,
               "menu column uint16 offsets and total wrap before reset");
    }
    {
        Fixture f;
        f.first_frame_data();
        re::ReVector<MenuControlRectangle> rectangles;
        f.put(f.c + 0x38b8 + 3 * 16, re::ReArray<float, 4>{1, 0, 0, 1});
        f.put(f.c + 0x38b8 + 6 * 16, re::ReArray<float, 4>{0, 1, 0, 1});
        f.api.controls.rectangle = [&](const MenuControlRectangle &q) { rectangles.push_back(q); };
        const auto r = imgui_window_begin_38cfa4(f.state, f.api, {"current", {}, 0x2b});
        expect(r.result.status == UnityStatus::complete && r.visible && rectangles.size() == 2,
               "actual main-menu flags traverse concrete resize gates and decoration branches");
        expect(rectangles[0].filled && rectangles[0].minimum.x == 10 &&
                   rectangles[0].minimum.y == 20 && rectangles[0].maximum.x == 210 &&
                   rectangles[0].maximum.y == 140 && rectangles[0].rounding == 3 &&
                   rectangles[0].flags == 0 && rectangles[0].color == 0xff0000ff &&
                   !rectangles[1].filled && rectangles[1].thickness == 1 &&
                   rectangles[1].color == 0xff00ff00,
               "main-menu background and outer border consume literal rectangles/colors");
    }
    {
        Fixture f;
        f.first_frame_data();
        re::ReVector<MenuControlRectangle> rectangles;
        f.put(f.b + 0xb9, ReU8(1));
        f.put(f.b + 0x58, 3.0f);
        f.put(f.b + 0x5c, 2.0f);
        f.put(f.c + 0x3818, 5.0f);
        f.put(f.c + 0x38b8 + 12 * 16, re::ReArray<float, 4>{1, 1, 1, 1});
        f.put(f.c + 0x38b8 + 6 * 16, re::ReArray<float, 4>{1, 0, 0, 1});
        f.put(f.c + 0x38b8 + 7 * 16, re::ReArray<float, 4>{0, 0, 1, 1});
        f.api.controls.rectangle = [&](const MenuControlRectangle &q) { rectangles.push_back(q); };
        window_detail::decorations(f.state, f.api, f.b, {10, 20, 200, 32}, true, true, 1, {}, 13);
        expect(rectangles.size() == 3 && rectangles[0].filled && rectangles[1].minimum.x == 11 &&
                   rectangles[1].minimum.y == 21 && rectangles[1].thickness == 2 &&
                   f.get<float>(f.c + 0x3818) == 5,
               "collapsed frame shadow/border geometry and temporary style restoration");
        f.api.controls.rectangle = {};
        bool stopped = false;
        {
            window_detail::decorations(f.state, f.api, f.b, {10, 20, 200, 32}, true, true, 1, {},
                                       13);
        }
        expect(stopped && f.get<float>(f.c + 0x3818) == 2,
               "collapsed temporary style remains at missing primitive stop");
    }
    {
        Fixture f;
        f.first_frame_data();
        f.put(f.b + 0x14, 0x2bu);
        f.put(f.b + 0xb5, ReU8(1));
        bool stopped = false;
        {
            window_detail::decorations(f.state, f.api, f.b, {10, 20, 210, 20}, false, true, 1, {},
                                       13);
        }
        expect(stopped && f.get<ReU8>(f.b + 0xbb) == 0,
               "scrollbar branch stops at exact local controller after skip reset");
    }
    {
        Fixture f;
        f.first_frame_data();
        auto bound = bind_imgui_windows(f.state, f.api);
        re::ReVector<MenuControlRectangle> rectangles;
        f.api.controls.rectangle = [&](const MenuControlRectangle &q) { rectangles.push_back(q); };
        bound = bind_imgui_windows(f.state, f.api);
        bound.begin_window_38cfa4("current", 0x2b);
        bound.end_window_390994();
        expect(f.get<int>(f.c + 0x3ed8) == 2 && f.get<int>(f.c + 0x4880) == 2,
               "control binder Begin/End composes copied stacks synchronously");
    }
    {
        Fixture f;
        f.first_frame_data();
        FrameDependencyResult last;
        UnityApi fallback;
        fallback.external = [](Rva role, re::ReSpan<const UnityValue>) -> re::ReOptional<UnityValue> {
            if (role == 123)
                return ReI32(42);
            return re::re_nullopt;
        };
        auto bound = bind_imgui_windows_frame(f.state, f.api, last, fallback);
        const re::ReArray<UnityValue, 3> args{re::ReString("current"), Address(0),
                                             ReI32(0x2b)};
        const auto r = bound.external(0x38cfa4, args);
        expect(r && re::re_get<bool>(*r) && last.status == UnityStatus::complete,
               "frame binder returns actual Begin visibility");
        expect(re::re_holds_alternative<re::ReMonostate>(*bound.external(0x390994, {})) &&
                   re::re_get<ReI32>(*bound.external(123, {})) == 42,
               "frame End and fallback role preservation");
    }
    {
        Fixture f;
        f.first_frame_data();
        FrameDependencyResult last;
        auto bound = bind_imgui_windows_frame(f.state, f.api, last);
        const re::ReArray<UnityValue, 3> args{re::ReString("current"), Address(0),
                                             ReI32(0x1001)};
        bool stopped = false;
        {
            (void)bound.external(0x38cfa4, args);
        }
        expect(stopped && last.stopped_at == 0x39d760 && f.get<int>(f.c + 0x3ed8) == 3,
               "frame binder propagates nested local stop and preceding state writes");
    }
    {
        Fixture f;
        f.first_frame_data();
        f.put(f.c + 0x3e60, 0);
        f.put(f.d + 0x8, Address(0x40100));
        const auto id = menu_controls_hash_39334c("Panel", 2);
        re::ReArray<char, 9> hex{};
        const auto digits = "0123456789ABCDEF";
        for (unsigned i = 0; i < 8; ++i)
            hex[i] = digits[(id >> (28 - i * 4)) & 15];
        const auto name = re::ReString("current/Panel_") + hex.data();
        f.text(0x40100, name);
        f.put(f.d + 0x14, 0x1000103u);
        f.put(f.d + 0xf0, 1);
        f.put(f.d + 0xf4, 1);
        f.put(f.d + 0xf8, Address(0x36010));
        f.put(0x36010, 3u);
        f.put(f.d + 0xdd, ReU8(15));
        f.put(f.d + 0x3c, 50.0f);
        f.put(f.d + 0x298, Address(0x51000));
        f.put(f.d + 0x208, ClipRect{0, 0, 500, 500});
        f.put(f.d + 0x20, Vec2{7, 9});
        f.put(f.b + 0x100, Vec2{30, 40});
        f.put(f.b + 0x250, Vec2{230, 240});
        auto &list = f.draw.lists[0x51000];
        list.clip_stack.push({0, 0, 500, 500});
        list.header.clip = {0, 0, 500, 500};
        draw_core_add_command_39fd18(list);
        const auto r = imgui_window_child_38e97c(f.state, f.api, "Panel", {0, 0}, false, 0);
        expect(r.result.status == UnityStatus::complete && r.window == f.d &&
                   f.get<Vec2>(f.d + 0x30).x == 200 && f.get<Vec2>(f.d + 0x30).y == 62 &&
                   f.get<ReU8>(f.d + 0xd2) == 3 && f.get<ReU32>(f.d + 0x80) == id,
               "existing child generated name, zero-axis height override and key-derived ID");
        expect(f.get<Vec2>(f.b + 0x100).x == 7 && f.get<Vec2>(f.b + 0x100).y == 9,
               "first child Begin copies child position to parent cursor");
    }
    {
        Fixture f;
        FrameDependencyResult last;
        auto api = bind_imgui_windows_frame(f.state, f.api, last);
        const re::ReArray<UnityValue, 3> pos{Vec2{12, 34}, ReI32(0), Vec2{0.5f, 1}};
        const re::ReArray<UnityValue, 2> size{Vec2{120, 50}, ReI32(4)};
        const re::ReArray<UnityValue, 1> alpha{0.25f};
        (void)api.external(0x39b734, pos);
        (void)api.external(0x39b770, size);
        (void)api.external(0x39b71c, alpha);
        expect(f.get<ReU32>(f.c + 0x47e0) == 0x43 &&
                   f.get<ReU32>(f.c + 0x47e4) == 1 &&
                   f.get<ReU32>(f.c + 0x47e8) == 4 && f.get<Vec2>(f.c + 0x47f8).y == 1 &&
                   f.get<Vec2>(f.c + 0x4800).x == 120 && f.get<float>(f.c + 0x4840) == 0.25f,
               "frame next-window setters retain independent flags, conditions, pivots and alpha");
    }
    {
        Fixture f;
        f.first_frame_data();
        f.put(f.draw_b + 0x38, Address(0x41ffe0));
        f.put(f.b + 0x1b0, 42);
        const auto r = imgui_window_begin_38cfa4(f.state, f.api, {"current", {}, 0x2b});
        expect(r.result.status == UnityStatus::missing_dependency &&
                   r.result.stopped_at == 0x3a92a9 &&
                   f.draw.lists[f.draw_b].commands.size == 0 && f.get<int>(f.b + 0x1b0) == 42,
               "draw buffers clear before unreadable shared flags and before table reset");
    }
    {
        Fixture f;
        f.put(f.b + 0xde, ReU8(15));
        window_detail::collapsed(f.state, f.b, 2, 1);
        expect(f.get<ReU8>(f.b + 0xb9) == 2 && f.get<ReU8>(f.b + 0xde) == 1,
               "collapsed setter preserves literal raw byte and clears conditional bits");
        f.put(f.b + 0xde, ReU8(0));
        window_detail::collapsed(f.state, f.b, 3, 1);
        expect(f.get<ReU8>(f.b + 0xb9) == 2,
               "collapsed condition rejection preserves byte");
    }
    {
        for (bool nan_alpha : {false, true}) {
            Fixture f;
            f.first_frame_data();
            re::ReVector<MenuControlRectangle> rectangles;
            f.put(f.c + 0x47e0, 0x40u);
            f.put(f.c + 0x4840, nan_alpha ? re::ReNumericLimits<float>::quiet_NaN() : 0.25f);
            f.put(f.c + 0x38b8 + 3 * 16, re::ReArray<float, 4>{1, 0, 0, 1});
            f.api.controls.rectangle = [&](const MenuControlRectangle &q) {
                rectangles.push_back(q);
            };
            const auto r = imgui_window_begin_38cfa4(f.state, f.api, {"current", {}, 0x2b});
            expect(
                r.result.status == UnityStatus::complete &&
                    (nan_alpha ? rectangles.empty()
                               : rectangles.size() == 1 && rectangles[0].color == 0x400000ff),
                "next background alpha uses MINSS operand order including NaN-to-CVTT zero alpha");
        }
    }
    {
        for (const auto original : {0x401u, 1u}) {
            Fixture f;
            f.first_frame_data();
            f.put(f.b + 0x14, original);
            f.put(f.c + 0x3818, 0.0f);
            f.put(f.c + 0x38b8 + 3 * 16, re::ReArray<float, 4>{1, 0, 0, 1});
            f.put(f.c + 0x38b8 + 14 * 16, re::ReArray<float, 4>{0, 1, 0, 1});
            int rectangles = 0;
            f.api.controls.rectangle = [&](const MenuControlRectangle &) {
                if (++rectangles == 1)
                    f.put(f.b + 0x14, original == 0x401 ? 1u : 0x401u);
            };
            window_detail::decorations(f.state, f.api, f.b, {}, false, false, 0, {}, 0);
            expect(
                rectangles == (original == 0x401 ? 2 : 1),
                "native saved window flags control menu branch after background callback mutation");
        }
        for (const auto original : {0x403u, 0x401u}) {
            Fixture f;
            f.first_frame_data();
            f.put(f.b + 0x14, original);
            f.put(f.b + 0x5c, 0.0f);
            f.put(f.b + 0xc1, ReI8(-1));
            f.put(f.c + 0x3818, 0.0f);
            f.put(f.c + 0x38b8 + 3 * 16, re::ReArray<float, 4>{1, 0, 0, 1});
            f.put(f.c + 0x38b8 + 14 * 16, re::ReArray<float, 4>{0, 1, 0, 1});
            int rectangles = 0;
            f.api.controls.rectangle = [&](const MenuControlRectangle &) {
                if (++rectangles == 2)
                    f.put(f.b + 0x14, original ^ 2u);
            };
            bool grip = false;
            {
                window_detail::decorations(f.state, f.api, f.b, {}, false, true, 1,
                                           {0xffffffffu, 0, 0, 0}, 5);
            }
            expect(grip == (original == 0x401),
                   "native saved flags control grip gate after menu callback mutation");
        }
    }
}
} // namespace rust_internal_re
