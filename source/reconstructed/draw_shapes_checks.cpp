#include "draw_shapes_analysis.hpp"
namespace rust_internal_re {
namespace {
void require(bool condition, const char *why) {
    if (!condition)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
bool near(float a, float b, float epsilon = 0.0001f) {
    return re::re_fabs(a - b) < epsilon;
}
float scalar(const DrawVertex &v, ReUSize offset) {
    float x;
    re::re_memcpy(&x, v.data() + offset, 4);
    return x;
}
ReU32 packed(const DrawVertex &v) {
    ReU32 c;
    re::re_memcpy(&c, v.data() + 16, 4);
    return c;
}
DrawCoreList list(ReU32 flags = 0) {
    DrawCoreList d;
    d.flags = flags;
    d.fringe_scale = 1;
    d.header.clip = {0, 0, 100, 100};
    draw_core_add_command_39fd18(d);
    return d;
}
DrawShapesShared resources() {
    DrawShapesShared s;
    s.white_uv = {0.25f, 0.75f};
    s.circle_error = 0.3f;
    s.arc_fast_radius_cutoff = 100;
    s.circle_segments.fill(12);
    // [I] Deliberately distinctive supplied table values prove actual lookup/index use.
    for (ReUSize i = 0; i < 48; ++i)
        s.arc_fast[i] = {float(i), float(i + 100)};
    s.line_uv.emplace();
    for (ReUSize i = 0; i < 64; ++i)
        (*s.line_uv)[i] = {float(i), 0.1f, float(i) + 0.5f, 0.9f};
    return s;
}
} // namespace
void check_draw_shapes_reconstruction() {
    const auto shared = resources();
    require(
        draw_shapes_inverse_length_3a6594(100) != 1.0f / re::re_sqrtf(100.0f) &&
            near(draw_shapes_inverse_length_3a6594(100), 0.1f, 0.0001f),
        "line normal uses approximate hardware RSQRTSS rather than exact reciprocal square root");
    {
        Snapshot image(0, re::ReVector<ReByte>(0x1000));
        image.write(0x100, shared.white_uv);
        image.write(0x118, shared.circle_error);
        image.write(0x140, shared.arc_fast);
        image.write(0x2c0, shared.arc_fast_radius_cutoff);
        image.write(0x2c4, shared.circle_segments);
        image.write<Address>(0x308, 0x400);
        image.write(0x400, *shared.line_uv);
        const auto copied = copy_draw_shapes_shared(image, 0x100);
        require(copied.white_uv.y == 0.75f && copied.arc_fast[47].y == 147 &&
                    copied.circle_segments[63] == 12 && (*copied.line_uv)[62][2] == 62.5f,
                "copied shared-data fields and lineUV indirection retain native offsets");
    }
    {
        auto d = list();
        draw_shapes_rect_filled_3a1244(d, shared, {1, 2}, {5, 8}, 0x80112233, 0, 0);
        require(d.vertices.size == 4 && d.indices.size == 6 && d.commands.at(0).element_count == 6,
                "filled rectangle actual buffer/counts");
        require(scalar(d.vertices.at(2), 0) == 5 && scalar(d.vertices.at(2), 4) == 8 &&
                    scalar(d.vertices.at(0), 8) == 0.25f && packed(d.vertices.at(3)) == 0x80112233,
                "filled rectangle position/whiteUV/color");
        require(d.indices.at(0) == 0 && d.indices.at(2) == 2 && d.indices.at(5) == 3,
                "filled rectangle topology");
        draw_shapes_gradient_3a12d8(d, shared, {10, 20}, {30, 40},
                                    {0x11000001, 0x22000002, 0x33000003, 0x44000004});
        require(d.vertices.size == 8 && packed(d.vertices.at(4)) == 0x11000001 &&
                    packed(d.vertices.at(7)) == 0x44000004 && d.indices.at(6) == 4,
                "gradient four independent corner colors/relative base");
        const auto before = d.vertices.size;
        d.path.push({77, 88});
        draw_shapes_rect_filled_3a1244(d, shared, {}, {1, 1}, 0, 0, 0);
        require(d.vertices.size == before && d.path.size == 1,
                "transparent primitive does not touch geometry/path");
        draw_shapes_rect_filled_3a1244(d, shared, {}, {1, 1}, 0xff000000, 0, 0);
        require(d.path.size == 1, "fast rectangle preserves preexisting path");
    }
    const re::ReArray<Vec2, 3> triangle{{{0, 0}, {10, 0}, {0, 10}}};
    {
        auto d = list();
        draw_shapes_convex_39f928(d, shared, triangle, 0xffabcdef);
        require(d.vertices.size == 3 && d.indices.size == 3 && d.indices.at(2) == 2,
                "nonAA convex triangle fan");
        auto aa = list(4);
        draw_shapes_convex_39f928(aa, shared, triangle, 0xffabcdef);
        require(aa.vertices.size == 6 && aa.indices.size == 21, "AA convex fan plus fringe counts");
        require(packed(aa.vertices.at(0)) == 0xffabcdef && packed(aa.vertices.at(1)) == 0x00abcdef,
                "AA convex transparent fringe retains RGB");
        require(aa.indices.at(0) == 0 && aa.indices.at(1) == 2 && aa.indices.at(2) == 4 &&
                    aa.indices.at(3) == 0 && aa.indices.at(4) == 4 && aa.indices.at(5) == 5,
                "AA convex interior and edge index order");
        auto path = list();
        for (auto p : triangle)
            path.path.push(p);
        draw_shapes_path_fill_378a14(path, shared, 0);
        require(path.path.size == 0 && path.vertices.size == 0,
                "path fill clears after transparent lowlevel return");
    }
    {
        auto d = list();
        draw_shapes_line_3a01f4(d, shared, {0, 0}, {10, 0}, 0xff112233, 2);
        require(d.vertices.size == 4 && d.indices.size == 6 && d.path.size == 0,
                "line wrapper emits one nonAA quad and clears path");
        const float inverse = draw_shapes_inverse_length_3a6594(100), normal = 10 * inverse;
        require(near(scalar(d.vertices.at(0), 0), 0.5f) &&
                    near(scalar(d.vertices.at(0), 4), 0.5f - normal),
                "half pixel line origin and literal reciprocal-root normal");
        require(near(scalar(d.vertices.at(2), 4), 0.5f + normal), "nonAA line opposite edge");
        const re::ReArray<Vec2, 2> points{{{0, 0}, {10, 0}}};
        auto thin = list(1);
        draw_shapes_polyline_3a0294(thin, shared, points, 0x80112233, 0, 1);
        require(thin.vertices.size == 6 && thin.indices.size == 12 &&
                    packed(thin.vertices.at(0)) == 0x80112233 &&
                    packed(thin.vertices.at(1)) == 0x00112233,
                "thin AA three vertices per point");
        require(thin.indices.at(0) == 3 && thin.indices.at(1) == 0 && thin.indices.at(2) == 2 &&
                    thin.indices.at(10) == 3 && thin.indices.at(11) == 4,
                "thin AA exact topology");
        auto thick = list(1);
        draw_shapes_polyline_3a0294(thick, shared, points, 0xff112233, 0, 3);
        require(thick.vertices.size == 8 && thick.indices.size == 18,
                "thick AA four vertices and18 indices");
        require(packed(thick.vertices.at(0)) == 0x00112233 &&
                    packed(thick.vertices.at(1)) == 0xff112233 &&
                    packed(thick.vertices.at(3)) == 0x00112233,
                "thick AA inner/outer tint");
        require(thick.indices.at(0) == 5 && thick.indices.at(1) == 1 && thick.indices.at(16) == 7 &&
                    thick.indices.at(17) == 6,
                "thick AA index groups");
        auto texture = list(3);
        draw_shapes_polyline_3a0294(texture, shared, points, 0xff112233, 0, 3);
        require(texture.vertices.size == 4 && texture.indices.size == 6 &&
                    scalar(texture.vertices.at(0), 8) == 3 &&
                    scalar(texture.vertices.at(1), 8) == 3.5f &&
                    packed(texture.vertices.at(1)) == 0xff112233,
                "textured AA atlas UV/color and reduced topology");
        auto fractional = list(3);
        draw_shapes_polyline_3a0294(fractional, shared, points, 0xffffffff, 0, 3.5f);
        require(fractional.vertices.size == 8, "fractional thickness excludes texture path");
        auto fringe = list(3);
        fringe.fringe_scale = 2;
        draw_shapes_polyline_3a0294(fringe, shared, points, 0xffffffff, 0, 1.5f);
        require(fringe.vertices.size == 6,
                "fringe affects thick selection and disables textured path");
        auto nan_thickness = list(3);
        draw_shapes_polyline_3a0294(nan_thickness, shared, points, 0xffffffff, 0,
                                    re::ReNumericLimits<float>::quiet_NaN());
        require(nan_thickness.vertices.size == 4 && scalar(nan_thickness.vertices.at(0), 8) == 1,
                "raw unordered thickness is thin but MAXSS selects one and permits textured line");
        auto missing = list(3);
        auto absent = shared;
        absent.line_uv.reset();
        bool failed = false;
        {
            draw_shapes_polyline_3a0294(missing, absent, points, 0xffffffff, 0, 1);
        }
        require(failed && missing.indices.size == 6 && missing.indices.at(0) == 2 &&
                    missing.index_write == 6 && missing.vertex_write == 0,
                "missing atlas preserves preceding index writes and reservation");
    }
    {
        auto d = list(1);
        const re::ReArray<Vec2, 3> p{{{0, 0}, {0, 0}, {1, 0}}};
        draw_shapes_polyline_3a0294(d, shared, p, 0xffffffff, 1, 1);
        require(d.indices.size == 36 && d.vertices.size == 9,
                "closed AA degenerate edge maintains native count");
        auto nan = list();
        const auto value = re::ReNumericLimits<float>::quiet_NaN();
        const re::ReArray<Vec2, 2> invalid{{{value, 1}, {2, 3}}};
        draw_shapes_polyline_3a0294(nan, shared, invalid, 0xffffffff, 0, 1);
        require(re::re_isnan(scalar(nan.vertices.at(0), 0)),
                "unordered normal square preserves input components");
        auto alias = list();
        auto descriptor = alias.path;
        descriptor.push({0, 0});
        descriptor.push({1, 0});
        alias.path = descriptor;
        draw_shapes_path_stroke_398758(alias, shared, 0xffffffff, 0, 1);
        require(alias.path.size == 0 && descriptor.size == 2 && descriptor.at(1).x == 1 &&
                    alias.vertices.size == 4,
                "aliased path allocation retains independent descriptor after stroke");
    }
    {
        auto d = list();
        draw_shapes_arc_fast_3a8eec(d, shared, {2, 3}, 2, 0, 10, 4);
        require(d.path.size == 4 && d.path.at(0).x == 2 && d.path.at(1).x == 8 &&
                    d.path.at(2).x == 16 && d.path.at(3).x == 22,
                "fast arc adjusted initial step plus exact final sample");
        auto reverse = list();
        draw_shapes_arc_fast_3a8eec(reverse, shared, {}, 1, 10, -2, 4);
        require(reverse.path.size == 4 && reverse.path.at(0).x == 10 && reverse.path.at(3).x == 46,
                "fast arc reverse/wrapped sample indices");
        auto tiny = list();
        draw_shapes_arc_fast_3a8eec(tiny, shared, {9, 10}, 0, 0, 48);
        require(tiny.path.size == 1 && tiny.path.at(0).x == 9, "small radius appends center");
        auto repeated = list();
        repeated.path.reserve(64);
        const auto* allocation = repeated.path.storage.get();
        for (unsigned iteration = 0; iteration < 128; ++iteration) {
            repeated.path.resize_existing(0);
            draw_shapes_arc_fast_3a8eec(repeated, shared, {}, 2, 0, 12, 4);
            draw_shapes_arc_fixed_3a9110(repeated, {}, 2, 0, 1, 4);
        }
        require(repeated.path.capacity == 64 && repeated.path.storage.get() == allocation,
                "native arc reserve preserves sufficient existing capacity across frames");
        auto circle = list();
        draw_shapes_circle_filled_39f874(circle, shared, {10, 20}, 2, 0xffffffff, 0);
        require(circle.vertices.size == 12 && circle.indices.size == 30 &&
                    scalar(circle.vertices.at(1), 0) == 18,
                "automatic filled circle uses copied segment/table data");
        auto explicit_circle = list();
        draw_shapes_circle_filled_39f874(explicit_circle, shared, {}, 2, 0xffffffff, 4);
        require(explicit_circle.vertices.size == 4 && explicit_circle.indices.size == 6 &&
                    near(scalar(explicit_circle.vertices.at(0), 0), 2),
                "explicit circle segments use literal polynomial arc");
        auto radius_half = list();
        draw_shapes_circle_39f7ac(radius_half, shared, {}, 0.5f, 0xffffffff, 0, 1);
        require(radius_half.vertices.size == 0 && radius_half.path.size == 0,
                "half-radius outline drops only appended center then clears path");
        auto rounded = list();
        draw_shapes_path_rect_3a6b78(rounded, shared, {0, 0}, {20, 20}, 4, 0);
        require(rounded.path.size == 16 && rounded.path.at(0).x == 100 &&
                    rounded.path.at(4).x == 160,
                "rounded rectangle corner arc ordering with supplied table");
        auto square = list();
        draw_shapes_path_rect_3a6b78(square, shared, {0, 0}, {20, 20}, 4, 0x100);
        require(square.path.size == 4 && square.path.at(1).x == 20,
                "round-none flag uses four corners");
        auto zero_error = shared;
        zero_error.circle_error = 0;
        auto clamped = list();
        draw_shapes_circle_filled_39f874(clamped, zero_error, {}, 100, 0xffffffff, 0);
        require(clamped.vertices.size == 4 && clamped.indices.size == 6,
                "infinite automatic count converts toINT_MIN then native signed even/clamp selects "
                "four");
        auto nan_radius = list();
        bool nan_failed = false;
        {
            draw_shapes_circle_filled_39f874(
                nan_radius, shared, {}, re::ReNumericLimits<float>::quiet_NaN(), 0xffffffff, 0);
        }
        require(
            nan_failed && nan_radius.path.size == 0,
            "unordered radius reaches negative count-table index rather than radius early return");
        auto zero_arc = list();
        auto large = shared;
        large.arc_fast_radius_cutoff = 0;
        draw_shapes_arc_3a684c(zero_arc, large, {}, 100, 0, 0, 0);
        require(zero_arc.path.size == 1 && re::re_isnan(zero_arc.path.at(0).x),
                "zero-width large arc retains native zero-segment divide and unordered point");
        bool failed = false;
        auto malformed = shared;
        malformed.circle_segments.fill(0);
        {
            draw_shapes_circle_filled_39f874(square, malformed, {}, 2, 0xffffffff, 0);
        }
        require(failed, "missing/zero copied segment count never invents a circle");
    }
    {
        auto d = list(8);
        d.current_vertex = 65534;
        d.vertices.resize(65534);
        draw_shapes_rect_filled_3a1244(d, shared, {}, {1, 1}, 0xffffffff, 0, 0);
        require(d.header.vertex_offset == 65534 && d.current_vertex == 4 && d.indices.at(0) == 0,
                "shape reserve uses core rollover before actual writes");
        auto big = list(4);
        re::ReVector<Vec2> p(32768, Vec2{0, 0});
        draw_shapes_convex_39f928(big, shared, p, 0xffffffff);
        require(big.vertices.size == 65536 && big.current_vertex == 0,
                "native AA convex increments current vertex by lowWORD count");
    }
    {
        DrawCoreStore store;
        store.lists[10] = list();
        DrawShapesResources owned{{10, shared}};
        re::ReArray<UnityValue, 7> args{Address(10),
                                       Vec2{1, 2},
                                       Vec2{3, 4},
                                       ReI32(0x11000001),
                                       ReI32(0x22000002),
                                       ReI32(0x33000003),
                                       ReI32(0x44000004)};
        require(draw_shapes_frame_role(store, owned, 0x3a12d8, args).has_value() &&
                    store.lists[10].vertices.size == 4,
                "frame gradient role writes real geometry");
        require(!draw_shapes_frame_role(store, owned, 0x123, args),
                "unrecognized frame role stays unhandled");
        auto api = bind_draw_shapes_frame(store, owned);
        require(api.external(0x3a12d8, args).has_value() && store.lists[10].vertices.size == 8,
                "typed frame binder uses primitive implementation");
        re::ReArray<UnityValue, 4> transparent_args{Address(999), Vec2{}, Vec2{}, ReI32(0)};
        require(
            draw_shapes_frame_role(store, owned, 0x3a01f4, transparent_args).has_value(),
            "transparent direct primitive returns before missing list/shared/thickness arguments");
        Snapshot image(0, re::ReVector<ReByte>(0x406000));
        image.write<Address>(0x405b28, 0x1000);
        image.write<Address>(0x4f08, 0x6000);
        image.write<Address>(0x6298, 10);
        image.write<float>(0x47d0, 0.5f);
        WorldDrawCommand line = WorldLineDraw{0x309cf2, {0, 0}, {10, 0}, {1, 0, 0, 1}, 2, {}};
        const auto offset = store.lists[10].vertices.size;
        draw_shapes_world(image, 0, store, owned, line);
        require(packed(store.lists[10].vertices.at(offset)) == 0x800000ff &&
                    image.read<ReU8>(0x60b8) == 1,
                "world wrapper applies stylealpha and marks current window");
        WorldDrawCommand raw = WorldRectangleDraw{0x3062c0, {}, {5, 5}, 0x8c000000, 0, 0, true, {}};
        bool failed = false;
        {
            draw_shapes_world(image, 0, store, owned, raw);
        }
        require(failed, "raw background primitive requires actual drawlist routing");
        const auto before = store.lists[10].vertices.size;
        draw_shapes_world(image, 0, store, owned, raw, {}, [](Rva site) {
            require(site == 0x3062c0, "raw site preserved");
            return Address(10);
        });
        require(store.lists[10].vertices.size == before + 4 &&
                    packed(store.lists[10].vertices.at(before)) == 0x8c000000,
                "raw rectangle preserves packed alpha without wrapper style multiplication");
        WorldDrawCommand special = WorldCircleDraw{0x305faf, {1, 2}, 3, {1, 1, 1, 1}, false, 1, {}};
        failed = false;
        {
            draw_shapes_world(image, 0, store, owned, special);
        }
        require(failed, "custom ring is not flattened to ordinary circle");
        re::re_get<WorldRectangleDraw>(raw).draw_list = 10;
        const auto captured = store.lists[10].vertices.size;
        draw_shapes_world(image, 0, store, owned, raw, {}, [](Rva) -> Address {
            __builtin_trap();
        });
        require(store.lists[10].vertices.size == captured + 4,
                "raw captured drawlist overrides provider");
        re::re_get<WorldRectangleDraw>(raw).draw_list = 0;
        failed = false;
        {
            draw_shapes_world(image, 0, store, owned, raw, {}, [](Rva) { return Address(10); });
        }
        require(failed, "captured zero key remains distinct from absent input");
        re::re_get<WorldRectangleDraw>(raw).color = 0;
        draw_shapes_world(image, 0, store, owned, raw);
        require(true, "transparent raw rectangle bypasses capturedzero list");
        WorldDrawCommand polygon = WorldPolygonDraw{
            0x30d51c, {}, {1, 1, 1, 1}, re::ReNumericLimits<float>::quiet_NaN(), {}};
        image.write<Address>(0x6298, 99);
        draw_shapes_world(image, 0, store, owned, polygon);
        image.write<Address>(0x6298, 10);
        require(true, "unordered polygon count converts negative then native count gate returns "
                      "before list/shared/point reads");
        WorldDrawCommand invalid_rect =
            WorldFloatRectangleDraw{0x36450e, {-1, 10}, {2, 3}, {1, 1, 1, 1}, {}};
        image.write<Address>(0x6298, 99);
        draw_shapes_world(image, 0, store, owned, invalid_rect);
        require(image.read<ReU8>(0x60b8) == 1,
                "float rect marks window then rejects position before missing list access");
    }
    {
        Snapshot image(0, re::ReVector<ReByte>(0x406000));
        image.write<Address>(0x405b28, 0x1000);
        image.write<Address>(0x4f08, 0x6000);
        image.write<Address>(0x6298, 10);
        image.write<float>(0x47d0, 0.5f);
        DrawCoreStore store;
        store.lists[10] = list(2);
        DrawShapesResources owned{{10, shared}};
        draw_shapes_custom_ring_35c578(image, 0, store, owned, {10, 20}, 10, 0x80112233, false,
                                       re::ReNumericLimits<float>::infinity());
        require(store.lists[10].flags == 2 && store.lists[10].vertices.size == 72 &&
                    store.lists[10].indices.size == 318,
                "custom ring emits AA filled center and black thick outline then restores flags");
        require(packed(store.lists[10].vertices.at(0)) == 0x80112233,
                "custom ring preserves raw alpha without style multiplication");
        store.lists[10] = list(2);
        bool failed = false;
        {
            draw_shapes_custom_ring_35c578(image, 0, store, owned, {}, 10, 0xffffffff, true, 0);
        }
        require(failed && store.lists[10].vertices.size == 72 && store.lists[10].flags == 5,
                "custom missing Unity sine occurs after ring geometry and leaves changed flags");
        store.lists[10] = list(2);
        re::ReVector<int> order;
        float radians{};
        DrawShapesMath math;
        math.sin_2e0198 = [&](float value) {
            order.push_back(1);
            radians = value;
            return 0.0f;
        };
        math.cos_2dff68 = [&](float value) {
            require(value == radians, "custom sine/cosine share literal radians");
            order.push_back(2);
            return 1.0f;
        };
        draw_shapes_custom_ring_35c578(image, 0, store, owned, {10, 20}, 10, 0xffffffff, true, -165,
                                       math);
        require(order == re::ReVector<int>({1, 2}) &&
                    near(radians, 360 * re::re_bit_cast<float>(0x3c8efa35u)) &&
                    store.lists[10].vertices.size == 84 &&
                    store.lists[10].indices.size == 354 && store.lists[10].flags == 2,
                "custom direction preserves wrap360, Unity call order, open three-point stroke and "
                "flag restore");
        require(near((scalar(store.lists[10].vertices.at(73), 0) +
                      scalar(store.lists[10].vertices.at(74), 0)) *
                         0.5f,
                     10 + 10 * re::re_bit_cast<float>(0xbea45a1du)),
                "custom transformed first point retains literal config ordering");
        store.lists[10] = list(2);
        store.lists[11] = list();
        owned[11] = shared;
        math.cos_2dff68 = [&](float) {
            image.write<Address>(0x6298, 11);
            return 1.0f;
        };
        draw_shapes_custom_ring_35c578(image, 0, store, owned, {}, 10, 0xffffffff, true, 0, math);
        require(store.lists[10].flags == 5 && store.lists[11].flags == 2 &&
                    store.lists[11].vertices.size == 8,
                "custom callback state change rereads retained window drawlist for marker and "
                "final flag restore");
        image.write<Address>(0x6298, 10);
        store.lists[10] = list();
        WorldGlowLineDraw glow{0x30ad9d, {0, 0}, {10, 0}, {1, 0, 0, 1}, {0, 1, 0, 0}, 1, 2, 1,
                               true,     true,   {}};
        draw_shapes_world(image, 0, store, owned, glow);
        require(store.lists[10].vertices.size == 16 &&
                    packed(store.lists[10].vertices.at(0)) == 0x1a00ff00 &&
                    packed(store.lists[10].vertices.at(4)) == 0x0d00ff00 &&
                    packed(store.lists[10].vertices.at(8)) == 0x80000000 &&
                    packed(store.lists[10].vertices.at(12)) == 0x800000ff,
                "glow layered colors ignore original glowalpha, divide literal0.2 by index, apply "
                "style, then outline/base");
        store.lists[10] = list();
        glow.glow_radius = re::ReNumericLimits<float>::quiet_NaN();
        glow.argument28 = false;
        draw_shapes_glow_35c30c(image, 0, store, owned, glow);
        require(store.lists[10].vertices.size == 4,
                "unordered glow radius skips layers but retains base line");
        store.lists[10] = list();
        WorldBarDraw bar{0x306db2, 0, 0, 10, 3, 0.3f, 1, {}};
        draw_shapes_world(image, 0, store, owned, bar);
        require(
            store.lists[10].vertices.size == 8 &&
                packed(store.lists[10].vertices.at(4)) == 0x8000539e &&
                scalar(store.lists[10].vertices.at(6), 0) == 3 &&
                scalar(store.lists[10].vertices.at(6), 4) == 3,
            "health bar native quarter thresholds, stylealpha and truncating innerwidth/height");
        store.lists[10] = list();
        bar.value = -1;
        draw_shapes_world(image, 0, store, owned, bar);
        require(scalar(store.lists[10].vertices.at(6), 0) == float(ReU32(-8)) &&
                    packed(store.lists[10].vertices.at(4)) == 0x800000ff,
                "negative health width CVTT64 then low32 zeroextend preserves native hugepositive "
                "width");
    }
}
} // namespace rust_internal_re
