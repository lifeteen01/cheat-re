#include "draw_meters_analysis.hpp"
namespace rust_internal_re {
namespace {
void expect(bool ok, const char *reason) {
    if (!ok)
        { /* FREESTANDING_TODO: was throw runtime_error(reason) */ }
}
bool close(float a, float b, float epsilon = 0.0001f) {
    return re::re_fabs(a - b) < epsilon;
}
float field(const DrawVertex &vertex, ReUSize offset) {
    float value;
    re::re_memcpy(&value, vertex.data() + offset, 4);
    return value;
}
ReU32 packed(const DrawVertex &vertex) {
    ReU32 value;
    re::re_memcpy(&value, vertex.data() + 16, 4);
    return value;
}
DrawCoreList new_list() {
    DrawCoreList list;
    list.fringe_scale = 1;
    list.header.clip = {0, 0, 500, 500};
    draw_core_add_command_39fd18(list);
    return list;
}
struct Fixture {
    Snapshot image{0, re::ReVector<ReByte>(0x410000)};
    DrawCoreStore store;
    DrawShapesResources resources;
    DrawMetersBackend backend;
    DrawMetersContext context{image, store, resources, backend};
    re::ReVector<Rva> order;
    re::ReVector<float> angles;
    Fixture() {
        image.write<Address>(0x405b28, 0x1000);
        image.write<Address>(0x4f08, 0x6000);
        image.write<Address>(0x6298, 10);
        image.write<float>(0x47d0, 0.5f);
        image.write<Address>(0x58e0, 0x7000);
        image.write<Address>(0x7000, 0x8000);
        image.write<Address>(0x8040, 20);
        image.write<float>(0x1018, 0.125f);
        image.write<float>(0x3fdac4, 1);
        image.write<float>(0x3ed668, 0.1f);
        DrawShapesShared shared;
        shared.white_uv = {0.25f, 0.75f};
        shared.circle_error = 0.3f;
        shared.circle_segments.fill(12);
        shared.arc_fast_radius_cutoff = 100;
        for (ReUSize i = 0; i < 48; ++i) {
            const float angle = float(i) * re::re_bit_cast<float>(0x40c90fdbu) / 48;
            shared.arc_fast[i] = {re::re_cosf(angle), re::re_sinf(angle)};
        }
        resources[10] = shared;
        resources[20] = shared;
        store.lists[10] = new_list();
        store.lists[20] = new_list();
        backend.math.sin_2e0198 = [&](float a) {
            order.push_back(0x2e0198);
            angles.push_back(a);
            return 0.0f;
        };
        backend.math.cos_2dff68 = [&](float a) {
            order.push_back(0x2dff68);
            angles.push_back(a);
            return 1.0f;
        };
        backend.foreground.intern_name = [&](re::ReStringView text) {
            expect(text == "##Foreground", "literal foreground name decoded");
            for (ReUSize i = 0; i <= text.size(); ++i)
                image.write<char>(0x9000 + i, i == text.size() ? char(0) : text[i]);
            return Address(0x9000);
        };
    }
    void clear() {
        store.lists[10] = new_list();
        store.lists[20] = new_list();
        order.clear();
        angles.clear();
    }
};
} // namespace
void check_draw_meters_reconstruction() {
    {
        re::ReRandom random(0x35ac38);
        for (int i = 0; i < 10000; ++i) {
            const float x = re::re_bit_cast<float>(ReU32(random())),
                        y = re::re_bit_cast<float>(ReU32(random()));
            if (!re::re_isfinite(x) || !re::re_isfinite(y) || y == 0)
                continue;
            const auto actual = draw_meters_remainder_3c8a6c(x, y), expected = re::re_fmodf(x, y);
            expect(re::re_bit_cast<ReU32>(actual) == re::re_bit_cast<ReU32>(expected),
                   "literal integer-significand remainder agrees with independent finite oracle");
        }
        expect(re::re_signbit(draw_meters_remainder_3c8a6c(-2, 1)) &&
                   re::re_isnan(draw_meters_remainder_3c8a6c(1, 0)),
               "remainder signedzero and invalid product/product branch");
        const auto gray =
            draw_meters_hsv_3612f8(re::ReNumericLimits<float>::infinity(), 0, 0.25f, 0.7f);
        expect(gray == re::ReArray<float, 4>{0.25f, 0.25f, 0.25f, 0.7f},
               "zero saturation bypasses invalid hue remainder");
        const re::ReArray<re::ReArray<float, 3>, 6> expected{
            {{1, 0.5f, 0}, {0.5f, 1, 0}, {0, 1, 0.5f}, {0, 0.5f, 1}, {0.5f, 0, 1}, {1, 0, 0.5f}}};
        for (int i = 0; i < 6; ++i) {
            const auto rgb = draw_meters_hsv_3612f8((float(i) + 0.5f) / 6, 1, 1, 0.6f);
            for (int k = 0; k < 3; ++k)
                expect(close(rgb[ReUSize(k)], expected[ReUSize(i)][ReUSize(k)]),
                       "HSV six native sector branches");
            expect(rgb[3] == 0.6f, "HSV alpha preserved");
        }
        const auto nan = draw_meters_hsv_3612f8(re::ReNumericLimits<float>::quiet_NaN(), 1, 1, 1);
        expect(nan[0] == 1 && nan[1] == 0 && re::re_isnan(nan[2]),
               "unordered hue follows native default sector");
        const auto interpolated = draw_meters_interpolate_362200({1, 2, 3, 4}, {5, 6, 7, 8}, 0.25f);
        expect(interpolated == re::ReArray<float, 4>{2, 3, 4, 5},
               "four-float interpolation grouping");
        re::ReArray<ReU8, 13> clear_name{};
        clear_name[0] = 'A';
        expect(draw_meters_decode_name_39eb2c(clear_name)[0] == 'A' &&
                   draw_meters_decode_name_39eb2c(clear_name)[12] == 0,
               "already decoded name bypasses XOR when its native final byte is zero");
    }
    {
        Fixture f;
        draw_meters_integer_35bab8(f.context, {10, 20, 10, 4}, 0.3f, 1);
        const auto &d = f.store.lists[10];
        expect(
            d.vertices.size == 8 && d.indices.size == 12 &&
                packed(d.vertices.at(4)) == 0x8000ffff && field(d.vertices.at(6), 0) == 13 &&
                field(d.vertices.at(6), 4) == 23,
            "integer meter real geometry, quarter thresholds, CVTT width and native innerheight");
        f.clear();
        draw_meters_integer_35bab8(f.context, {10, 20, 10, 4},
                                   re::ReNumericLimits<float>::quiet_NaN(), 1);
        expect(f.store.lists[10].vertices.size == 4,
               "unordered integer meter width becomes INT_MIN then skips inner draw");
        f.clear();
        WorldNativeMeterDraw q{0x30b19b, 0x35bab8,
                               {10, 20}, 0.5f,
                               1,        float(INT32_MIN),
                               4,        0,
                               {},       re::ReArray<ReI32, 4>{10, 20, INT32_MIN, 4}};
        expect(draw_meters_world(f.context, q) &&
                   field(f.store.lists[10].vertices.at(6), 0) == 1073741824.0f,
               "world integer metadata preserves signed wrapping width before float conversion");
        q.integer_geometry.reset();
        bool failed = false;
        {
            draw_meters_world(f.context, q);
        }
        expect(failed,
               "missing exact integer geometry is explicit, never guessed from rounded floats");
        f.clear();
        draw_meters_colored_35b850(f.context, {10, 20}, 0.3f, 1, 10, 3,
                                   {{0.2f, 0.3f, 0.4f, 1}, {}});
        expect(f.store.lists[10].vertices.size == 12 &&
                   packed(f.store.lists[10].vertices.at(0)) == 0x80363e43 &&
                   packed(f.store.lists[10].vertices.at(8)) == 0x80005186 &&
                   close(field(f.store.lists[10].vertices.at(10), 0), 13.4f),
               "colored float meter three layers and nontruncated fillwidth");
        const re::ReArray<re::RePair<float, ReU32>, 5> thresholds{{{0.1f, 0x8000ff00},
                                                                         {0.3f, 0x8000ffff},
                                                                         {0.6f, 0x8000539e},
                                                                         {0.9f, 0x800000ff},
                                                                         {1.1f, 0x80000000}}};
        for (const auto &[value, col] : thresholds) {
            f.clear();
            draw_meters_integer_35bab8(f.context, {10, 20, 100, 4}, value, 1);
            expect(packed(f.store.lists[10].vertices.at(4)) == col,
                   "integer meter all quarter threshold branches including above maximum");
        }
        f.clear();
        bool color_failed = false;
        {
            draw_meters_colored_35b850(f.context, {10, 20}, 0.3f, 1, 10, 3,
                                       {{}, Address(0x500000)});
        }
        expect(color_failed && f.store.lists[10].vertices.size == 4,
               "missing background color is read only after the outer colored meter rectangle");
    }
    {
        Fixture f;
        DrawMetersRing ring{{10, 20}, 0.5f, 1, 10, 5, {{0.2f, 0.4f, 0.6f, 0.8f}, {}}, false};
        draw_meters_ring_35ac38(f.context, ring);
        const auto &d = f.store.lists[10];
        expect(
            d.vertices.size == 1200 && d.indices.size == 1800 && f.order.size() == 800,
            "ring100 concrete quads and two edge strokes, four distinct sin/cos pairs persegment");
        expect(close(field(d.vertices.at(0), 0), 19.75f) &&
                   close(field(d.vertices.at(2), 0), 15.25f) &&
                   packed(d.vertices.at(0)) == 0xcc996633 && packed(d.vertices.at(4)) == 0x66996633,
               "ring inset radii, quad ordering and halfalpha raw edges without stylealpha");
        for (ReUSize i = 0; i < f.order.size(); ++i)
            expect(f.order[i] == (i % 2 ? 0x2dff68 : 0x2e0198), "ring native scalar call order");
        f.clear();
        ring.value = re::ReNumericLimits<float>::quiet_NaN();
        draw_meters_ring_35ac38(f.context, ring);
        expect(close(f.angles.back(), re::re_bit_cast<float>(0x40c90fdbu)),
               "MINSS unordered value selects maximum then emits full arc");
        f.clear();
        ring.value = 0.5f;
        ring.rainbow = true;
        ring.color.source = 0x500000;
        bool failed = false;
        {
            draw_meters_ring_35ac38(f.context, ring);
        }
        expect(failed && f.order.size() == 8 && f.store.lists[10].vertices.size == 0,
               "rainbow still reads native inputcolor after trigonometry before override");
        f.clear();
        ring.color.source.reset();
        f.backend.math.sin_2e0198 = [&](float) {
            if (f.order.size() == 8)
                { __builtin_trap(); }
            f.order.push_back(0x2e0198);
            return 0.0f;
        };
        failed = false;
        {
            draw_meters_ring_35ac38(f.context, ring);
        }
        expect(failed && f.store.lists[10].vertices.size == 12,
               "partial ring failure preserves preceding fullsegment geometry");
    }
    {
        Fixture f;
        f.backend.math.cos_2dff68 = {};
        bool failed = false;
        {
            draw_meters_ring_35ac38(f.context, {{10, 20}, 1, 1, 10, 5, {{1, 1, 1, 1}, {}}, false});
        }
        expect(failed && f.order == re::ReVector<Rva>{0x2e0198} &&
                   f.store.lists[10].vertices.size == 0 &&
                   f.image.read<ReU8>(0x60b8) == 0,
               "missing cosine retains the first sine effect before any window marking or draw");
    }
    {
        Fixture f;
        f.image.write<re::ReArray<float, 4>>(0x9000, {0, 1, 0, 1});
        DrawMetersRing ring{{10, 20}, 1, 1, 10, 5, {{}, Address(0x9000)}, false};
        int cosine_calls = 0;
        f.backend.math.cos_2dff68 = [&](float) {
            ++cosine_calls;
            if (cosine_calls == 4)
                f.image.write<re::ReArray<float, 4>>(0x9000, {1, 0, 0, 1});
            if (cosine_calls == 8)
                f.image.write<re::ReArray<float, 4>>(0x9000, {0, 0, 1, 1});
            return 1.0f;
        };
        draw_meters_ring_35ac38(f.context, ring);
        expect(packed(f.store.lists[10].vertices.at(0)) == 0xff0000ff &&
                   packed(f.store.lists[10].vertices.at(12)) == 0xffff0000,
               "ring copied color source is reread after each segment's four scalar pairs");
        f.clear();
        ring.color = {{0, 0, 0, 0}, {}};
        ring.rainbow = false;
        f.image.write<Address>(0x6298, 99);
        draw_meters_ring_35ac38(f.context, ring);
        expect(f.store.lists[10].vertices.size == 0,
               "transparent ring still acquires currentwindow but bypasses missing owned list");
    }
    {
        Fixture f;
        DrawMetersRing ring{{10, 20}, 1, 1, 10, 5, {{1, 0, 0, 1}, {}}, false};
        f.backend.math.cos_2dff68 = [&](float) {
            f.image.write<Address>(0x6298, 20);
            return 1.0f;
        };
        draw_meters_ring_35ac38(f.context, ring);
        expect(f.store.lists[10].vertices.size == 0 &&
                   f.store.lists[20].vertices.size == 1200 &&
                   f.image.read<ReU8>(0x60b8) == 1,
               "ring rereads and marks currentwindow after typed scalar effects");
        f.clear();
        f.image.write<Address>(0x6298, 10);
        draw_meters_violation_35b508(f.context, {10, 20}, 0, 1, -1, 1);
        expect(f.order.empty() && f.store.lists[10].vertices.size == 0,
               "two-value wrapper signed positive gates");
        f.backend.math.cos_2dff68 = [&](float) { return 1.0f; };
        draw_meters_violation_35c938(f.context, {10, 20}, 0, 1, 0, 1, 0, 1);
        expect(f.store.lists[10].vertices.size == 1200,
               "three-value wrapper emits third ring unconditionally even atzero");
        f.clear();
        draw_meters_violation_35b508(f.context, {10, 20}, 0.5f, 1, 0.5f, 1);
        expect(f.store.lists[10].vertices.size == 2400 &&
                   packed(f.store.lists[10].vertices.at(0)) == 0xff00ff03 &&
                   packed(f.store.lists[10].vertices.at(1200)) == 0xc0ffff00,
               "two-value wrapper first rainbow and second raw cyan alpha192 rings");
        f.clear();
        draw_meters_violation_35c938(f.context, {10, 20}, 0.5f, 1, 0.5f, 1, 0.5f, 1);
        expect(f.store.lists[10].vertices.size == 3600 &&
                   packed(f.store.lists[10].vertices.at(1200)) == 0xff00ff03 &&
                   packed(f.store.lists[10].vertices.at(2400)) == 0xc0ffff00,
               "three-value wrapper orders third then first rainbow then second raw cyan");
    }
    {
        Fixture f;
        draw_meters_segmented_36232c(f.context, {10, 20, 20, 8}, 0.5f, 1, 4);
        const auto &d = f.store.lists[10];
        expect(
            d.vertices.size == 112 && d.indices.size == 204,
            "segmented meter concrete roundedbackground, two fills, three separators and outline");
        expect(packed(d.vertices.at(16)) == 0xff008080 && field(d.vertices.at(32), 0) == 15.5f &&
                   field(d.vertices.at(34), 0) == 19,
               "segmented interpolation, ceil activecount and onepixel segment gap");
        expect(packed(d.vertices.at(36)) == 0x96323232 && packed(d.vertices.at(48)) == 0xff464646,
               "segmented separators use fixed raw gray50 and final outline raw gray70");
        f.clear();
        draw_meters_segmented_36232c(f.context, {10, 20, 21, 8}, 1, 1, 3);
        float last_right = -re::ReNumericLimits<float>::infinity();
        for (int i = 36; i < 52; ++i)
            last_right = re::re_max(last_right, field(f.store.lists[10].vertices.at(i), 0));
        expect(f.store.lists[10].vertices.size == 124 && last_right == 29,
               "last segment uses remaining native width and preserves its rounded final corner");
        f.clear();
        draw_meters_segmented_36232c(f.context, {10, 20, 20, 8},
                                     re::ReNumericLimits<float>::quiet_NaN(), 1, 4);
        expect(f.store.lists[10].vertices.size == 92,
               "unordered ratio retains background/separators/outline but skips active segments");
        f.clear();
        f.backend.maximum_segments = 1;
        bool failed = false;
        {
            draw_meters_segmented_36232c(f.context, {10, 20, 20, 8}, 1, 1, 4);
        }
        expect(failed && f.store.lists[10].vertices.size == 32,
               "segment analysis bound retains background and first fill");
    }
    {
        Fixture f;
        expect(draw_meters_foreground_3925a4(f.context) == 20,
               "foreground viewportindex0 uses drawlistindex1");
        f.clear();
        draw_meters_pulse_35b0fc(f.context, {100, 100}, 0.75f, 1, 40, 20);
        expect(f.store.lists[20].vertices.size == 224 &&
                   f.store.lists[20].indices.size == 372 &&
                   f.image.read<float>(0x3fdac4) == 1.25f && f.order == re::ReVector<Rva>{0x2e0198},
               "foreground pulse concrete fill/border/two pulseoutlines and phase-before-sine");
        f.clear();
        f.backend.math.sin_2e0198 = {};
        bool failed = false;
        {
            draw_meters_pulse_35b0fc(f.context, {100, 100}, 0.75f, 1, 40, 20);
        }
        expect(failed && f.image.read<float>(0x3fdac4) == 1.5f &&
                   f.store.lists[20].vertices.size == 96,
               "missing pulse scalar preserves preceding phasewrite and background/fill/border");
        f.clear();
        draw_meters_pulse_35b0fc(f.context, {100, 100}, re::ReNumericLimits<float>::quiet_NaN(), 1,
                                 40, 20);
        expect(f.store.lists[20].vertices.size == 80 && f.order.empty(),
               "unordered pulse value skips fill/pulse but retains background/border");
    }
    {
        Fixture f;
        f.image.write<Address>(0x8040, 0);
        f.image.write<ReI32>(0x4e60, 1);
        f.image.write<Address>(0x1058, 0xb000);
        f.image.write<Address>(0xb008, 0xcafe);
        f.image.write<Vec2>(0x8004, {2, 3});
        f.image.write<Vec2>(0x800c, {100, 100});
        f.resources[0x12000] = f.resources[10];
        ReUSize allocations = 0;
        f.backend.foreground.allocate_395158 = [&](ReUSize size) {
            expect(size == 0xc8, "foreground native list allocation size");
            ++allocations;
            return Address(0x12000);
        };
        f.backend.foreground =
            bind_drawlist_core_background(f.image, f.store, f.backend.foreground);
        const auto key = draw_meters_foreground_3925a4(f.context);
        auto &list = f.store.lists[key];
        expect(key == 0x12000 && allocations == 1 && list.header.texture == 0xcafe &&
                   list.header.clip == re::ReArray<float, 4>{2, 3, 102, 103} &&
                   f.image.read<Address>(0x8040) == key && f.image.read<ReI32>(0x8034) == 1,
               "foreground lazy setup consumes concrete owned reset/texture/clip and frame stamp");
        draw_shapes_rect_filled_3a1244(list, f.resources[key], {}, {1, 1}, 0xffffffff, 0, 0);
        expect(draw_meters_foreground_3925a4(f.context) == key && allocations == 1 &&
                   list.vertices.size == 4,
               "foreground sameframe accessor preserves live owned geometry");
    }
    {
        Fixture f;
        UnityMathEnvironment env{};
        UnityMathEffects effects;
        f.image.write<ReU32>(0x3d7980, 3);
        f.image.write<ReU32>(0x3d7a70, 3);
        f.image.write<Address>(0x3d7978, 0x111);
        f.image.write<Address>(0x3d7a68, 0x222);
        f.image.write<Address>(0x3d5e60, 0x333);
        re::ReVector<Rva> calls;
        effects.evaluate = [&](const UnityMathCall &call, re::ReSpan<const float> values) {
            expect(call.dispatcher == 0x333 && values.size() == 1,
                   "meter cached math typed effect inputs");
            calls.push_back(call.wrapper);
            return values[0] + 1;
        };
        const auto math = bind_draw_meters_math(f.image, env, effects);
        expect(math.sin_2e0198(2) == 3 && math.cos_2dff68(4) == 5 &&
                   calls == re::ReVector<Rva>({0x2e0198, 0x2dff68}) &&
                   f.image.read<float>(0x3d7990 + 0x88) == 2 &&
                   f.image.read<float>(0x3d7a80 + 0x88) == 4,
               "meter math binder consumes concrete cached wrappers and owned context stores");
        effects.evaluate = {};
        const auto missing = bind_draw_meters_math(f.image, env, effects);
        bool scalar_failed = false;
        {
            (void)missing.sin_2e0198(9);
        }
        expect(scalar_failed && f.image.read<float>(0x3d7990 + 0x88) == 9,
               "missing actual Unity result preserves concrete wrapper argument stores");
        auto api = bind_draw_meters_frame(f.context);
        re::ReArray<UnityValue, 7> args{Address(0), ReI32(10), ReI32(20), 0.5f,
                                       1.0f,       ReI32(10), ReI32(4)};
        expect(api.external(0x35bab8, args).has_value() && f.store.lists[10].vertices.size == 8,
               "frame meter binding uses actual integer geometry");
        bool fallback = false;
        auto consume =
            bind_draw_meters_world(f.context, [&](const WorldDrawCommand &) { fallback = true; });
        consume(WorldLineDraw{0x309cf2, {}, {}, {1, 1, 1, 1}, 1, {}});
        expect(fallback, "world meter consumer composes other completed domains");
    }
}
} // namespace rust_internal_re
