#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
void output_expect(bool value) {
    if (!value)
        { /* FREESTANDING_TODO: was throw runtime_error("world immediate output fixture") */ }
}
} // namespace
void check_world_esp_output() {
    re::ReVector<WorldDrawCommand> records;
    WorldDrawBackend draw;
    int measures{}, captures{}, consumed{};
    Address current = 101;
    draw.measure_38f79c = [&](re::ReStringView text) {
        ++measures;
        current = 202;
        return Vec2{float(text.size()), 10};
    };
    WorldDrawOutput output(
        records,
        [&](const WorldDrawCommand &command) {
            ++consumed;
            re::re_visit([&](const auto &q) { output_expect(q.draw_list == 202); }, command);
            current = 303;
        },
        [&](Rva site) {
            ++captures;
            output_expect(site == 0x30626f && measures == 2);
            return current;
        });
    draw_world_tooltip_3060ab({}, {100, 100}, "title", "body", false, draw, output);
    output_expect(captures == 1 && consumed == 4 && records.size() == 4 && current == 303);
    // [C]310fa1 acquires before heading measurements and reuses R14 across
    // text, texture, condition bars, item-count measurement and second group.
    records.clear();
    captures = consumed = measures = 0;
    current = 404;
    WorldEspConfig config;
    config.floats[0x3edde8] = 1;
    WorldInventoryItem item;
    item.definition_valid = true;
    item.texture = 0x1000000;
    item.amount = 3;
    item.has_condition = true;
    item.condition = 20;
    item.maximum_condition = 100;
    WorldInventoryLists inventory{{item}, {item}};
    WorldDrawOutput inventory_output(
        records,
        [&](const WorldDrawCommand &command) {
            ++consumed;
            re::re_visit([&](const auto &q) { output_expect(q.draw_list == 404); }, command);
            current = 505;
        },
        [&](Rva site) {
            ++captures;
            output_expect(site == 0x310fa1 && measures == 0);
            return current;
        });
    output_expect(draw_world_inventory_tooltip_310f94(inventory, {}, {1000, 1000}, config, draw,
                                                      inventory_output));
    output_expect(captures == 1 && consumed == int(records.size()) && consumed > 12 &&
                  measures == 4);
    records.clear();
    captures = consumed = 0;
    current = 606;
    WorldDrawOutput corners(
        records,
        [&](const WorldDrawCommand &command) {
            ++consumed;
            output_expect(re::re_get<WorldLineDraw>(command).draw_list == 606);
            current = 707;
        },
        [&](Rva site) {
            ++captures;
            output_expect(site == 0x37b77b);
            return current;
        });
    const re::ReArray<Vec2, 4> quad{{{0, 0}, {0, 20}, {20, 20}, {20, 0}}};
    draw_world_corner_box_37b724(quad, {1, 1, 1, 1}, 0.25f, corners);
    output_expect(captures == 1 && consumed == 8 && records.size() == 8);
    // [I] Explicitly captured null remains data, rather than allowing a later
    // callback/context reload to replace it with another draw list.
    records.clear();
    WorldDrawOutput zero(
        records,
        [&](const WorldDrawCommand &command) {
            const auto &line = re::re_get<WorldLineDraw>(command);
            output_expect(line.draw_list.has_value() && *line.draw_list == 0);
        },
        [](Rva) { return Address(0); });
    draw_world_corner_box_37b724(quad, {1, 1, 1, 1}, 0.25f, zero);
    records.clear();
    bool missing = false;
    {
        draw_world_corner_box_37b724(quad, {1, 1, 1, 1}, 0.25f,
                                     WorldDrawOutput(records, [](const auto &) {}));
    }
    output_expect(missing && records.empty());
    // [I] A failed synchronous consumer preserves the earlier consumed records.
    records.clear();
    consumed = 0;
    bool stopped = false;
    {
        draw_world_corner_box_37b724(quad, {1, 1, 1, 1}, 0.25f,
                                     WorldDrawOutput(
                                         records,
                                         [&](const auto &) {
                                             if (++consumed == 3)
                                                 __builtin_trap();
                                         },
                                         [](Rva) { return Address(808); }));
    }
    output_expect(stopped && records.size() == 3 && consumed == 3);
    // [I] Consumers may append to the stream; the consumed value cannot dangle.
    records.clear();
    WorldDrawOutput reentrant(records, [&](const WorldDrawCommand &command) {
        const auto before = re::re_get<WorldLineDraw>(command).site;
        for (int n = 0; n < 100; ++n)
            records.emplace_back(WorldCircleDraw{});
        output_expect(re::re_get<WorldLineDraw>(command).site == before);
    });
    reentrant.emplace_back(WorldLineDraw{0x35c25c, {}, {}, {1, 1, 1, 1}, 1});
    output_expect(records.size() == 101);
    records.clear();
    re::ReVector<int> sequence;
    WorldDrawOutput stateful(
        records,
        [counter = 0, &sequence](const WorldDrawCommand &) mutable {
            sequence.push_back(++counter);
        },
        [key = Address(900)](Rva) mutable { return ++key; });
    draw_world_corner_box_37b724(quad, {1, 1, 1, 1}, 0.25f, stateful);
    draw_world_corner_box_37b724(quad, {1, 1, 1, 1}, 0.25f, stateful);
    output_expect(sequence.front() == 1 && sequence.back() == 16 &&
                  re::re_get<WorldLineDraw>(records[0]).draw_list == 901 &&
                  re::re_get<WorldLineDraw>(records[8]).draw_list == 902);
    records.clear();
    WorldEspConfig meter_config;
    meter_config.booleans[0x3e9ea8] = true;
    meter_config.integers[0x3eece8] = 2;
    meter_config.vector_booleans[{0x3f0268, 1}] = true;
    meter_config.vector_booleans[{0x3f0268, 4}] = false;
    (void)draw_world_violation_bars_30c3e0({re::ReNumericLimits<float>::quiet_NaN(), 2147483520.0f},
                                           {}, {}, meter_config, records);
    const auto meter = re::re_get<WorldNativeMeterDraw>(records[0]);
    output_expect(meter.integer_geometry && (*meter.integer_geometry)[0] == INT32_MIN &&
                  (*meter.integer_geometry)[1] == 2147483520 &&
                  (*meter.integer_geometry)[2] == 240);
}
} // namespace rust_internal_re
