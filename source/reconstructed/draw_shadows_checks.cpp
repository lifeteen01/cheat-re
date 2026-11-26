#include "draw_shadows_analysis.hpp"
namespace rust_internal_re {
namespace {
void expect(bool condition, const char *reason) {
    if (!condition)
        { /* FREESTANDING_TODO: was throw runtime_error(reason) */ }
}
DrawCoreList list() {
    DrawCoreList d;
    d.header.clip = {-100, -100, 100, 100};
    draw_core_add_command_39fd18(d);
    return d;
}
Vec2 position(const DrawVertex &v) {
    Vec2 p;
    re::re_memcpy(&p, v.data(), 8);
    return p;
}
Vec2 uv(const DrawVertex &v) {
    Vec2 p;
    re::re_memcpy(&p, v.data() + 8, 8);
    return p;
}
ReU32 color(const DrawVertex &v) {
    ReU32 c;
    re::re_memcpy(&c, v.data() + 16, 4);
    return c;
}
float area(const DrawCoreList &d) {
    float result = 0;
    for (int i = 0; i < d.indices.size; i += 3) {
        const auto a = position(d.vertices.at(d.indices.at(i)));
        const auto b = position(d.vertices.at(d.indices.at(i + 1)));
        const auto c = position(d.vertices.at(d.indices.at(i + 2)));
        result += re::re_fabs((b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x)) * 0.5f;
    }
    return result;
}
DrawShapesShared shapes() {
    DrawShapesShared s;
    s.circle_error = 0.3f;
    s.arc_fast_radius_cutoff = 100;
    s.circle_segments.fill(12);
    for (ReUSize i = 0; i < 48; ++i) {
        const auto angle = double(i) * 6.283185307179586 / 48;
        s.arc_fast[i] = {float(re::re_cosf(angle)), float(re::re_sinf(angle))};
    }
    return s;
}
DrawShadowsShared shadows() {
    DrawShadowsShared s;
    s.atlas_width = 100;
    s.atlas_height = 100;
    for (ReUSize i = 0; i < 10; ++i)
        s.uv[i] = {float(i) / 10, 0.2f, float(i + 1) / 10, 0.4f};
    return s;
}
} // namespace
void check_draw_shadows_reconstruction() {
    const re::ReArray<Vec2, 4> box{{{0, 0}, {10, 0}, {10, 10}, {0, 10}}};
    re::ReArray<Vec2, 8> output{};
    expect(draw_shadows_clip_3a3ea4(box, {-1, -1}, {11, 11}, output) == 4,
           "clip all-inside path copies without simplification");
    expect(draw_shadows_clip_3a3ea4(box, {11, 0}, {20, 10}, output) == 0,
           "clip shared outcode returns empty");
    expect(draw_shadows_clip_3a3ea4(box, {0, 0}, {5, 5}, re::ReSpan<Vec2>(output).subspan(0, 2)) == -1,
           "clip explicit output-capacity failure");
    const auto count = draw_shadows_clip_3a3ea4(box, {2, 3}, {8, 9}, output);
    expect(count == 4, "four-pass clipping removes repeated boundary points");
    float clipped_area = 0;
    for (int i = 0; i < count; ++i) {
        const auto a = output[ReUSize(i)], b = output[ReUSize((i + 1) % count)];
        expect(a.x >= 2 && a.x <= 8 && a.y >= 3 && a.y <= 9, "clipped polygon bounds");
        clipped_area += a.x * b.y - a.y * b.x;
    }
    expect(re::re_fabs(clipped_area) == 72, "independent clipped rectangle area");
    {
        auto d = list();
        draw_shadows_subtract_rect_3a2b34(d, {0, 0}, {10, 10}, {0, 0}, {1, 1}, {2, 3}, {8, 9},
                                          0xff123456);
        expect(d.vertices.size == 12 && d.indices.size == 24 && area(d) == 64,
               "rectangle hole emits four exact strips and keeps twelve vertices");
        expect(uv(d.vertices.at(4)).x == 0.2f && uv(d.vertices.at(4)).y == 0.3f &&
                   color(d.vertices.at(11)) == 0xff123456,
               "subtracted rectangle UV interpolation and color");
        expect(d.commands.at(0).element_count == 24 && d.current_vertex == 12,
               "rectangle reserve/unreserve command count");
    }
    {
        auto d = list();
        draw_shadows_subtract_rect_3a2b34(d, {0, 0}, {10, 10}, {}, {1, 1}, {-1, -1}, {11, 11},
                                          0xffffffff);
        expect(d.vertices.size == 0 && d.indices.size == 0, "containing hole early return");
        draw_shadows_subtract_rect_3a2b34(d, {0, 0}, {10, 10}, {}, {1, 1}, {20, 20}, {30, 30},
                                          0xffffffff);
        expect(d.vertices.size == 4 && d.indices.size == 6 && area(d) == 100,
               "disjoint hole preserves plain rectangle");
    }
    const re::ReArray<Vec2, 4> hole{{{2, 3}, {8, 3}, {8, 9}, {2, 9}}};
    for (bool reverse : {false, true}) {
        auto polygon = hole;
        if (reverse)
            re::re_reverse(polygon.begin(), polygon.end());
        auto d = list();
        draw_shadows_subtract_polygon_3a2374(d, {0, 0}, {10, 10}, {}, {1, 1}, polygon, 0xffabcdef);
        expect(d.vertices.size == 8 && d.indices.size == 24 && area(d) == (reverse ? 256 : 64),
               "polygon subtraction preserves native winding-sensitive corner selection");
    }
    {
        const re::ReArray<Vec2, 3> triangle{{{2, 2}, {8, 2}, {5, 8}}};
        auto d = list();
        draw_shadows_subtract_polygon_3a2374(d, {0, 0}, {10, 10}, {}, {1, 1}, triangle, 0xffffffff);
        expect(area(d) == 82 && d.indices.size <= 21,
               "triangle cutout area and reserved index upper bound");
    }
    {
        auto d = list();
        draw_shadows_rect_3a2010(d, shapes(), shadows(), {0, 0}, {10, 10}, 0xff123456, 2, {1, 3}, 0,
                                 9);
        expect(d.vertices.size == 36 && d.indices.size == 54 && area(d) == 196,
               "plain rectangle shadow reserves once and emits nine cells");
        expect(position(d.vertices.at(0)).x == -1 && position(d.vertices.at(0)).y == 1 &&
                   position(d.vertices.at(4)).x == -1 && position(d.vertices.at(4)).y == 3 &&
                   uv(d.vertices.at(4)).x == shadows().uv[3][0],
               "native X-major traversal and y-major atlas cell selection");
    }
    {
        auto d = list();
        draw_shadows_rect_3a2010(d, shapes(), shadows(), {0, 0}, {10, 10}, 0xffffffff, 2, {}, 0x200,
                                 0);
        expect(area(d) == 96, "rectangle shadow interior subtraction area");
        auto empty = list();
        empty.path.push({-5, -5});
        draw_shadows_rect_3a2010(empty, shapes(), shadows(), {}, {}, 0, 5, {}, 0x200, 5);
        expect(empty.path.size == 1 && empty.vertices.size == 0,
               "transparent shadow rectangle returns before path changes");
    }
    {
        auto d = list();
        draw_shadows_convex_3a1564(d, shadows(), box, 0xffffffff, 2, {1, 3}, 0);
        expect(d.vertices.size == 44 && d.indices.size == 54 && d.current_vertex == 44,
               "right-angle convex shadow uses two corner triangles, edge quads and fill");
        expect(position(d.vertices.at(d.vertices.size - 4)).x == 1 &&
                   position(d.vertices.at(d.vertices.size - 4)).y == 3,
               "convex interior uses original offset points");
        expect(d.commands.at(0).element_count == ReU32(d.indices.size),
               "convex maximum reserve trims to actual geometry");
        for (int i = 0; i < d.indices.size; ++i)
            expect(d.indices.at(i) < d.vertices.size,
                   "all convex shadow indices initialized/in range");
        auto cutout = list();
        cutout.flags = 4;
        draw_shadows_convex_3a1564(cutout, shadows(), box, 0xffffffff, 2, {}, 0x200);
        expect(cutout.vertices.size == 40 && cutout.indices.size == 48 &&
                   position(cutout.vertices.at(0)).x > 0 && position(cutout.vertices.at(0)).y > 0,
               "cutout shadow AA flag insets the hole and omits interior fan");
    }
    {
        auto d = list();
        d.path.push({-20, -20});
        draw_shadows_circle_3a1410(d, shapes(), shadows(), {5, 7}, 10, 0, 3, {}, 0x200, 12);
        expect(d.path.size == 0 && d.vertices.size > 0,
               "shadow circle appends existing path, emits even transparent color and clears path");
        for (int i = 0; i < d.vertices.size; ++i)
            expect(color(d.vertices.at(i)) == 0, "transparent convex shadow retains exact colors");
        auto automatic = list();
        draw_shadows_circle_3a1410(automatic, shapes(), shadows(), {}, 10, 0xffffffff, 3, {}, 0, 0);
        expect(automatic.vertices.size == 96 && automatic.indices.size == 138,
               "automatic shadow count twelve uses fast twelve-point arc");
    }
    {
        DrawCoreStore store;
        store.lists[1] = list();
        DrawShapesResources shape_resources{{1, shapes()}};
        DrawShadowsResources shadow_resources{{1, shadows()}};
        auto api = bind_menu_shadows(store, shape_resources, shadow_resources);
        api.glow_rectangle_3a2010({1, {0, 0}, {10, 10}, 0xff123456, 2, {}, 0x200, 0});
        expect(area(store.lists[1]) == 96,
               "menu binder produces real rectangle shadow geometry");
        api.glow_rectangle_3a2010({9, {}, {}, 0, 0, {}, 0, 0});
        bool stopped = false;
        {
            api.circle({9, {}, 10, 3, {}, 0, 0, 12, false});
        }
        expect(stopped, "circle lacks rectangle alpha gate and requires actual copied atlas");
        store.lists[2] = list();
        shape_resources[2] = shapes();
        stopped = false;
        {
            api.circle({2, {}, 10, 3, {}, 0, 0xffffffff, 12, false});
        }
        expect(stopped && store.lists[2].path.size == 12,
               "missing shadow atlas preserves the circle path appended before convex entry");
        store.lists[2].path.resize_existing(0);
        stopped = false;
        {
            api.glow_rectangle_3a2010({2, {}, {10, 10}, 0xffffffff, 3, {}, 0, 0});
        }
        expect(stopped && store.lists[2].vertices.size == 36 &&
                   store.lists[2].indices.size == 54 &&
                   store.lists[2].commands.at(0).element_count == 54,
               "plain shadow reserve precedes first missing atlas-cell acquisition");
        store.lists[2] = list();
        stopped = false;
        {
            api.glow_rectangle_3a2010({2, {}, {10, 10}, 0xffffffff, 3, {}, 0x200, 2});
        }
        expect(stopped && store.lists[2].path.size == 0 && store.lists[2].path.capacity > 0 &&
                   store.lists[2].vertices.size == 0,
               "rounded cutout copies and clears path before missing atlas cell");
    }
    {
        Snapshot image(0, re::ReVector<ReByte>(0x1000));
        expect(image.write<Address>(0x100 + 0x218, 0x400) && image.write<Address>(0x108, 0x600) &&
                   image.write<Address>(0x640, 0x700) && image.write<ReI32>(0x740, 256) &&
                   image.write<ReI32>(0x744, 128),
               "copied atlas fixture pointers");
        for (ReUSize i = 0; i < 10; ++i)
            expect(image.write(0x400 + i * 16, shadows().uv[i]), "copied atlas UV fixture");
        const auto copied = copy_draw_shadows_shared(image, 0x100);
        expect(copied.atlas_width == 256 && copied.atlas_height == 128 &&
                   copied.uv[9] == shadows().uv[9],
               "copied tenth UV entry and signed atlas dimensions");
    }
    {
        DrawCoreStore store;
        DrawShapesResources no_shapes;
        DrawShadowsResources atlas{{1, shadows()}};
        auto api = bind_menu_shadows(store, no_shapes, atlas);
        store.lists[1] = list();
        api.glow_rectangle_3a2010({1, {0, 0}, {10, 10}, 0xffffffff, 2, {}, 0, 0});
        expect(store.lists[1].vertices.size == 36 && store.lists[1].indices.size == 54,
               "plain shadow needs atlas cells but no rounded-path or arc shared fields");
        store.lists[1] = list();
        api.glow_rectangle_3a2010({1, {0, 0}, {10, 10}, 0xffffffff, 2, {}, 0x200, 0});
        expect(area(store.lists[1]) == 96,
               "rectangular cutout also bypasses unused shape resource acquisition");
        store.lists[1] = list();
        api.circle({1, {}, 10, 2, {}, 0, 0xffffffff, 5, false});
        expect(store.lists[1].vertices.size == 40 && store.lists[1].indices.size == 54 &&
                   store.lists[1].path.size == 0,
               "explicit nonfast circle reuses shared-free fixed arc before convex atlas");
        store.lists[1] = list();
        api.circle(
            {1, {}, re::ReNumericLimits<float>::quiet_NaN(), 2, {}, 0, 0xffffffff, 5, false});
        expect(store.lists[1].vertices.size == 5 && store.lists[1].indices.size == 9,
               "unordered radius with explicit nonfast count does not acquire unused shared data");
        for (const auto request :
             re::ReArray<re::RePair<int, float>, 3>{{{12, 0}, {5, 0.25f}, {0, 0}}}) {
            store.lists[1] = list();
            store.lists[1].path.push({0, 0});
            store.lists[1].path.push({2, 0});
            atlas.at(1).circle_zero_radius_count = 12;
            api.circle({1, {0, 2}, request.second, 1, {}, 0, 0xffffffff, request.first, false});
            expect(store.lists[1].vertices.size > 0 && store.lists[1].path.size == 0,
                   "small-radius fast/fixed/prefix-selected arc appends center before shared read");
        }
        for (const int count : {0, 12}) {
            store.lists[1] = list();
            store.lists[1].path.push({-1, -1});
            bool stopped = false;
            {
                api.circle({1, {}, 10, 2, {}, 0, 0xffffffff, count, false});
            }
            expect(stopped && store.lists[1].path.size == 1 &&
                       store.lists[1].vertices.size == 0,
                   "automatic and fast circles stop at reached shared read before path mutation");
        }
        store.lists[1] = list();
        bool stopped = false;
        {
            api.circle({1, {}, 0.5f, 2, {}, 0, 0xffffffff, 12, false});
        }
        expect(stopped && store.lists[1].path.size == 0,
               "radius half takes the real fast arc and requires shared data");
        for (auto [flags, prefix] :
             re::ReArray<re::RePair<ReU32, int>, 3>{{{0x220, 1}, {0x280, 2}, {0x240, 3}}}) {
            store.lists[1] = list();
            store.lists[1].path.push({-20, -20});
            stopped = false;
            {
                api.glow_rectangle_3a2010({1, {}, {10, 10}, 0xffffffff, 2, {}, flags, 2});
            }
            expect(stopped && store.lists[1].path.size == prefix + 1 &&
                       store.lists[1].vertices.size == 0 && store.lists[1].indices.size == 0,
                   "rounded path retains disabled corner centers before first missing real arc");
            const auto first = store.lists[1].path.at(1);
            expect(first.x == 0 && first.y == 0,
                   "disabled top-left rounded corner appends exact original minimum");
        }
        {
            const re::ReArray<re::ReTuple<Vec2, float, float>, 2> _tbl{
                 {{{10, 10}, 0.25f, 96}, {{2, 2}, 2, 32}}};
            for (const auto& _entry : _tbl) {
            auto maximum = re::re_get<0>(_entry);
            auto rounding = re::re_get<1>(_entry);
            auto expected_area = re::re_get<2>(_entry);
            store.lists[1] = list();
            api.glow_rectangle_3a2010({1, {}, maximum, 0xffffffff, 2, {}, 0x200, rounding});
            expect(store.lists[1].path.size == 0 && area(store.lists[1]) == expected_area,
                   "small or clamped rounding builds plain hole path without shared data");
        }
        }
        store.lists[2] = list();
        stopped = false;
        {
            api.circle({2, {}, 10, 2, {}, 0, 0xffffffff, 5, false});
        }
        expect(stopped && store.lists[2].path.size == 5 && store.lists[2].vertices.size == 0,
               "missing convex atlas retains explicit arc even without unrelated shape resource");
        store.lists[2] = list();
        stopped = false;
        {
            api.glow_rectangle_3a2010({2, {}, {10, 10}, 0xffffffff, 2, {}, 0, 0});
        }
        expect(stopped && store.lists[2].vertices.size == 36 &&
                   store.lists[2].indices.size == 54,
               "plain reserve precedes missing atlas even when shape data is also absent");
        store.lists[2] = list();
        stopped = false;
        {
            api.glow_rectangle_3a2010({2, {}, {10, 10}, 0xffffffff, 2, {}, 0x200, 0.25f});
        }
        expect(stopped && store.lists[2].path.size == 0 && store.lists[2].path.capacity > 0 &&
                   store.lists[2].vertices.size == 0,
               "small rounded hole copies and clears four-point path before missing atlas without "
               "shapes");
    }
    {
        DrawCoreStore store;
        store.lists[1] = list();
        DrawShapesResources shape_resources{{1, shapes()}};
        DrawShadowsResources no_atlas;
        auto &shared = shape_resources[1];
        shared.circle_segments[9] = 12;
        shared.circle_segments[10] = 6;
        auto api = bind_menu_shadows(store, shape_resources, no_atlas);
        bool stopped = false;
        {
            api.circle({1, {1, 2}, 10, 2, {}, 0, 0xffffffff, 0, false});
        }
        const re::ReArray<int, 7> samples{0, 6, 14, 22, 30, 38, 44};
        expect(stopped && store.lists[1].path.size == int(samples.size()),
               "twelve-count route retains automatic fast step from separately indexed table");
        for (ReUSize i = 0; i < samples.size(); ++i) {
            const auto p = store.lists[1].path.at(int(i));
            const auto sample = shared.arc_fast[ReUSize(samples[i])];
            expect(p.x == 10 * sample.x + 1 && p.y == sample.y * 10 + 2,
                   "fast arc remainder distributes first step and retains exact endpoint");
        }
    }
    {
        constexpr ReU32 base = 0x1234fff0;
        auto convex = list();
        convex.current_vertex = base;
        draw_shadows_convex_3a1564(convex, shadows(), box, 0xffffffff, 2, {}, 0);
        expect(convex.current_vertex == 28 && convex.indices.at(0) == 0xfff0 &&
                   convex.indices.at(48) == 24 && convex.indices.at(53) == 27,
               "convex final current vertex zero-extends native WORD including fill fan");
        auto rolled = list();
        rolled.flags = 8;
        rolled.current_vertex = base;
        draw_shadows_convex_3a1564(rolled, shadows(), box, 0xffffffff, 2, {}, 0);
        expect(rolled.current_vertex == 44 && rolled.indices.at(0) == 0,
               "convex captures WORD base after native reserve vertex-offset rollover");
        auto rectangle = list();
        rectangle.current_vertex = base;
        draw_shadows_subtract_rect_3a2b34(rectangle, {}, {10, 10}, {}, {1, 1}, {2, 3}, {8, 9},
                                          0xffffffff);
        expect(rectangle.current_vertex == base + 12,
               "rectangle complement retains full DWORD current vertex addition");
        auto polygon = list();
        polygon.current_vertex = base;
        draw_shadows_subtract_polygon_3a2374(polygon, {}, {10, 10}, {}, {1, 1}, hole, 0xffffffff);
        expect(polygon.current_vertex == base + 8,
               "polygon complement retains full DWORD current vertex addition");
    }
}
} // namespace rust_internal_re
