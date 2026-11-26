#include "world_render_bindings.hpp"
namespace rust_internal_re {
namespace {
void render_expect(bool value) {
    if (!value)
        { /* FREESTANDING_TODO: was throw runtime_error("world renderer composition fixture") */ }
}
DrawCoreList render_list() {
    DrawCoreList list;
    list.fringe_scale = 1;
    list.header.clip = {0, 0, 1000, 1000};
    draw_core_add_command_39fd18(list);
    return list;
}
ReU32 render_color(const DrawVertex &vertex) {
    ReU32 c;
    re::re_memcpy(&c, vertex.data() + 16, 4);
    return c;
}
} // namespace
void check_world_render_bindings() {
    Snapshot image(0, re::ReVector<ReByte>(0x406000));
    constexpr Address context = 0x1000, viewport = 0x8000, other_viewport = 0x8100, data = 0x9000;
    render_expect(image.write<Address>(0x405b28, context));
    render_expect(image.write<ReI32>(context + 0x48d8, 1) &&
                  image.write<Address>(context + 0x48d8 + 8, data));
    render_expect(image.write(data, viewport) && image.write<Address>(viewport + 0x38, 10) &&
                  image.write<Address>(other_viewport + 0x38, 11));
    render_expect(image.write<ReI32>(context + 0x3e60, 7) &&
                  image.write<ReI32>(viewport + 0x30, 7) &&
                  image.write<ReI32>(other_viewport + 0x30, 7));
    DrawCoreStore store;
    store.lists[10] = render_list();
    store.lists[11] = render_list();
    DrawShapesShared shared;
    shared.white_uv = {0.25f, 0.75f};
    shared.circle_error = 0.3f;
    shared.arc_fast_radius_cutoff = 100;
    shared.circle_segments.fill(12);
    DrawShapesResources resources{{10, shared}, {11, shared}};
    RendererBackgroundBackend background;
    int accessors{}, texts{};
    background.intern_name = [&](re::ReStringView name) {
        render_expect(name == "##Background");
        ++accessors;
        return Address(0x1234);
    };
    re::ReVector<WorldDrawCommand> records;
    auto output = bind_world_shape_output(
        records, image, 0, background, store, resources, [&](const WorldDrawCommand &command) {
            render_expect(re::re_holds_alternative<WorldTextDraw>(command));
            ++texts;
            render_expect(image.write(data, other_viewport));
        });
    WorldDrawBackend draw;
    draw.measure_38f79c = [](re::ReStringView text) { return Vec2{float(text.size()), 10}; };
    draw_world_tooltip_3060ab({}, {100, 100}, "title", "body", false, draw, output);
    render_expect(accessors == 1 && texts == 2 && records.size() == 4 &&
                  store.lists[10].vertices.size > 4 && store.lists[11].vertices.size == 0);
    render_expect(re::re_get<WorldRectangleDraw>(records[0]).draw_list == 10 &&
                  render_color(store.lists[10].vertices.at(0)) == 0x8c000000);
    // [C] A later group reacquires the now-current first viewport once.
    const re::ReArray<Vec2, 4> quad{{{0, 0}, {0, 20}, {20, 20}, {20, 0}}};
    draw_world_corner_box_37b724(quad, {1, 1, 1, 1}, 0.25f, output);
    render_expect(accessors == 2 && store.lists[11].vertices.size == 32 &&
                  store.lists[11].indices.size == 48);
    render_expect(re::re_get<WorldLineDraw>(records[4]).draw_list == 11);
    const auto geometry = draw_core_geometry(store.lists[11]);
    const auto commands = draw_core_render_commands(store.lists[11]);
    render_expect(geometry.vertices.size() == 32 && geometry.indices.size() == 48 &&
                  commands.commands.size() == geometry.commands.size());
    constexpr Address current_window = 0xa000;
    render_expect(image.write(context + 0x3f08, current_window) &&
                  image.write<Address>(current_window + 0x298, 10) &&
                  image.write<float>(context + 0x37d0, 1));
    DrawMetersBackend meter_backend;
    DrawMetersContext meters{image, store, resources, meter_backend};
    auto with_meters = bind_world_meter_output(records, 0, background, meters);
    WorldNativeMeterDraw meter{0x30c4f8, 0x35bab8, {999, 999}, 0.5f, 1, 10, 4, 0};
    meter.integer_geometry = re::ReArray<ReI32, 4>{10, 20, 10, 4};
    const auto before = store.lists[10].vertices.size;
    with_meters.emplace_back(meter);
    with_meters.emplace_back(WorldLineDraw{0x309cf2, {0, 0}, {10, 0}, {1, 1, 1, 1}, 1});
    Vec2 first;
    re::re_memcpy(&first, store.lists[10].vertices.at(before).data(), sizeof(first));
    render_expect(store.lists[10].vertices.size == before + 12 && first.x == 10 &&
                  first.y == 20 && accessors == 2);
}
} // namespace rust_internal_re
