#include "scene.hpp"
#include "game_base_analysis.hpp"
#include "font_frame_bindings.hpp"
#include "renderer_helpers_world.hpp"
#include "drawlist_core_analysis.hpp"

namespace owned_scene {
namespace {
void require(bool condition, ::re::ReStringView message) {
    (void)message;
    if (!condition) __builtin_trap();
}
ReU32 vertex_color(const re::DrawVertex &vertex) {
    ReU32 color{};
    ::re::re_memcpy(&color, vertex.data() + 16, sizeof(color));
    return color;
}
re::Vec2 vertex_position(const re::DrawVertex &vertex) {
    re::Vec2 position{};
    ::re::re_memcpy(&position, vertex.data(), sizeof(position));
    return position;
}
ReU64 geometry_hash(const Resources &resources) {
    ReU64 hash = 1469598103934665603ull;
    const auto &list = resources.draw.lists.at(Resources::esp_list);
    for (ReI32 index = 0; index < list.vertices.size; ++index)
        for (const auto byte : list.vertices.at(index)) {
            hash ^= static_cast<unsigned char>(byte);
            hash *= 1099511628211ull;
        }
    return hash;
}
void open_color_popup(Scene &scene, Input &input) {
    auto telemetry = scene.frame(input);
    const auto preview = telemetry.menu.controls.at("color_preview");
    input.mouse = {(preview.x + preview.z) * 0.5f, (preview.y + preview.w) * 0.5f};
    input.pressed = input.down = true;
    scene.frame(input);
    input.pressed = input.down = false;
    input.released = true;
    scene.frame(input);
    input.released = false;
    for (unsigned frame_index = 0; frame_index < 48; ++frame_index) telemetry = scene.frame(input);
    require(telemetry.menu.controls.contains("color_popup") &&
            telemetry.menu.controls.contains("color_hex"),
            "Recovered preview did not open native color popup for semantic check");
}
void check_frame_order(::re::ReStringView key, float fraction) {
    Scene scene;
    Input input;
    if (key == "color") open_color_popup(scene, input);
    auto telemetry = scene.frame(input);
    const auto rect = telemetry.menu.controls.at(::re::ReString(key));
    input.mouse = {rect.x + (rect.z - rect.x) * fraction, (rect.y + rect.w) * 0.5f};
    bool changed{};
    for (unsigned stage = 0; stage < 3 && !changed; ++stage) {
        const auto previous = geometry_hash(scene.resources);
        input.down = stage == 1;
        input.pressed = stage == 1;
        input.released = stage == 2;
        telemetry = scene.frame(input);
        if (!telemetry.menu.changed) continue;
        require(geometry_hash(scene.resources) == previous,
                "Menu edits affected world output before original next-frame ordering");
        input.pressed = input.released = false;
        scene.frame(input);
        require(geometry_hash(scene.resources) != previous,
                "Menu edit did not reach next-frame ESP output");
        changed = true;
    }
    require(changed, "Frame-order check did not exercise a real reconstructed menu edit");
}
void check_corner_geometry() {
    Resources resources;
    resources.reset(160, 140);
    re::Snapshot image(0, ::re::ReVector<ReByte>(1));
    const ::re::ReArray<re::Vec2, 4> quad{{{11, 7}, {3, 88}, {94, 103}, {120, 17}}};
    const ::re::ReArray<re::Vec2, 8> starts{{
        {11, 7}, {11, 7}, {3, 88}, {120, 17}, {120, 17}, {3, 88}, {94, 103}, {94, 103}}};
    const ::re::ReArray<re::Vec2, 8> ends{{
        {38.25f, 9.5f}, {9, 27.25f}, {25.75f, 91.75f}, {113.5f, 38.5f},
        {92.75f, 14.5f}, {5, 67.75f}, {100.5f, 81.5f}, {71.25f, 99.25f}}};
    const ::re::ReArray<re::Rva, 8> sites{
        0x37b84e, 0x37b8e2, 0x37b976, 0x37ba0a, 0x37ba9c, 0x37bb2b, 0x37bbb9, 0x37bc47};
    const ::re::ReArray<float, 4> color{0.2f, 0.4f, 0.6f, 0.8f};
    ::re::ReVector<re::WorldDrawCommand> commands;
    ReUSize captures{};
    re::WorldDrawOutput output(commands,
        [&](const re::WorldDrawCommand &command) {
            re::draw_shapes_world(image, 0, resources.draw, resources.shapes, command);
        },
        [&](re::Rva site) {
            require(site == 0x37b77b, "Corner box captured background at the wrong site");
            ++captures;
            return Resources::esp_list;
        });
    re::draw_world_corner_box_37b724(quad, color, 0.25f, output);
    require(captures == 1 && commands.size() == 8, "Corner box omitted or duplicated native segments");
    for (ReUSize index = 0; index < commands.size(); ++index) {
        const auto &line = ::re::re_get<re::WorldLineDraw>(commands[index]);
        require(line.site == sites[index] && line.from.x == starts[index].x &&
                line.from.y == starts[index].y && line.to.x == ends[index].x &&
                line.to.y == ends[index].y && line.thickness == 1.25f && line.color == color &&
                line.draw_list == Resources::esp_list,
                "Corner box endpoint, order, thickness, color or captured-list regression");
    }
    require(resources.draw.lists.at(Resources::esp_list).vertices.size > 0 &&
            resources.draw.lists.at(Resources::menu_list).vertices.size == 0,
            "Corner box geometry did not reach its captured background list");
    resources.reset(160, 140);
    commands.clear();
    re::draw_world_corner_box_37b724(quad, {1, 0, 0, 0}, 0.25f, output);
    require(commands.size() == 8 && resources.draw.lists.at(Resources::esp_list).vertices.size == 0,
            "Transparent box commands must not imply visible geometry");
}
void check_projection_edges() {
    const re::ProjectionBounds bounds{10, 20, 100, 50};
    re::Vec3 projected{10, 20, 0.001f};
    re::Vec2 output{-1, -2};
    unsigned heights{};
    re::ProjectionQueries queries;
    queries.world_to_screen_36c3d4 = [&](re::Address, re::Vec3, re::Vec3 &value) { value = projected; };
    queries.screen_height_2e09f0 = [&] { ++heights; return 500; };
    const auto expect_projection = [&](bool expected) {
        const auto old = output;
        const auto old_heights = heights;
        const auto result = re::project_screen_36cd20(1, {}, output, bounds, queries);
        require(result.status == re::GameBaseStatus::complete && result.value == expected,
                "Projection acceptance differs from recovered near/rectangle gates");
        require(heights == old_heights + unsigned(expected), "Rejected projection queried screen height");
        if (expected)
            require(output.x == projected.x && output.y == 500 - projected.y,
                    "Projection did not preserve native height-minus-Y output");
        else
            require(output.x == old.x && output.y == old.y, "Rejected projection changed caller scratch");
    };
    expect_projection(true);
    projected.z = ::re::re_nextafterf(0.001f, 0.0f); expect_projection(false);
    projected.z = 0.001f;
    projected.x = ::re::re_nextafterf(10.0f, 0.0f); expect_projection(false);
    projected.x = 110; expect_projection(false);
    projected.x = ::re::re_nextafterf(110.0f, 0.0f); expect_projection(true);
    projected.y = ::re::re_nextafterf(20.0f, 0.0f); expect_projection(false);
    projected.y = 70; expect_projection(false);
    projected.y = ::re::re_nextafterf(70.0f, 0.0f); expect_projection(true);
    projected.x = ::re::ReNumericLimits<float>::quiet_NaN(); expect_projection(false);
    projected.x = 10;
    projected.z = ::re::ReNumericLimits<float>::quiet_NaN(); expect_projection(true);
}
void check_editor_pointer() {
    Scene scene;
    Input input;
    open_color_popup(scene, input);
    auto telemetry = scene.frame(input);
    const auto rect = telemetry.menu.controls.at("color_hex");
    const auto pointer = [&](float mouse_x, bool down) {
        input.mouse = {mouse_x, (rect.y + rect.w) * 0.5f};
        input.pressed = down && !input.down;
        input.released = !down && input.down;
        input.down = down;
        telemetry = scene.frame(input);
    };
    pointer(rect.x + 28, true);
    pointer(rect.x + 28, false);
    pointer(rect.x + 28, true);
    pointer(rect.x + 76, true);
    require(telemetry.menu.keyboard_capture && telemetry.menu.selection_start != telemetry.menu.selection_end,
            "Recovered editor drag did not select text from actual mouse delta");
    pointer(rect.x + 76, false);
    input.focused = false;
    telemetry = scene.frame(input);
    require(!telemetry.menu.keyboard_capture, "Focus loss retained reconstructed editor capture");
}
}
void check_esp_label_size_fidelity() {
    Resources resources;
    resources.reset(400, 400);
    re::Snapshot image(0, ::re::ReVector<ReByte>(0x410000));
    constexpr re::Address context_address = 0x200000, viewport_address = 0x206000,
                          viewport_array_address = 0x207000, background_address = 0x208000,
                          window_address = 0x20b000, font_record_address = 0x20b400;
    const auto store_value = [&](re::Address address, const auto &value) {
        require(image.write(address, value), "Shared-size fixture write failed");
    };
    store_value(0x405b28, context_address);
    store_value(context_address + 0x48e0, viewport_array_address);
    store_value(viewport_array_address, viewport_address);
    store_value(context_address + 0x3c28, Resources::font);
    store_value(context_address + 0x3f08, window_address);
    store_value(context_address + 0x58, Resources::atlas);
    store_value(context_address + 0x3e60, ReI32(1));
    store_value(Resources::atlas + 8, Resources::texture);
    store_value(viewport_address + 0x38, Resources::esp_list);
    store_value(viewport_address + 4, re::Vec2{});
    store_value(viewport_address + 0xc, re::Vec2{400, 400});
    store_value(window_address + 0x298, Resources::esp_list);
    store_value(font_record_address + 0x10, Resources::font);
    store_value(0x248ed0, 16.0f);
    store_value(0x3fcd78, ReI32(0));
    store_value(0x3eed38, ReI32(0));
    resources.write_font_snapshot(image);
    re::RendererBackgroundBackend background;
    background.intern_name = [&](::re::ReStringView name) {
        require(name == "##Background", "Shared-size fixture background name changed");
        return background_address;
    };
    background = re::bind_drawlist_core_background(image, resources.draw, ::re::re_move(background));
    re::WorldLabelFonts label_fonts;
    re::RendererIconState icons;
    re::RendererIconBackend icon_backend;
    auto backend = re::bind_renderer_helpers_world(image, label_fonts, background, icons, icon_backend);
    backend = re::bind_world_font_measurements(image, context_address, resources.fonts, ::re::re_move(backend));
    ::re::ReVector<float> measurement_sizes;
    const auto measure_label = backend.measure_font_3a3874;
    backend.measure_font_3a3874 = [&](const re::WorldFontMeasureRequest &request) {
        measurement_sizes.push_back(request.size);
        require(label_fonts.fonts.at(Resources::font).scale_64 == request.size / 14,
                "Label font scale did not use the current shared size");
        return measure_label(request);
    };
    re::FrameMenuState text_frame;
    text_frame.fonts.fill(Resources::font);
    constexpr re::FontFrameStorage text_storage{0, 0x20c000, 0x20c100, 0x20c300, 0x20c310, 256};
    auto text_api = re::bind_font_frame(image, text_frame, resources.fonts, resources.sink, text_storage);
    ::re::ReVector<re::WorldDrawCommand> commands;
    re::WorldDrawOutput output(commands, [&](const re::WorldDrawCommand &command) {
        const auto &text = ::re::re_get<re::WorldTextDraw>(command);
        const ::re::ReArray<re::UnityValue, 6> arguments{
            font_record_address, text.font, text.text, text.position,
            re::ClipRect{text.color[0], text.color[1], text.color[2], text.color[3]},
            static_cast<ReI32>(text.flags)};
        const auto result = text_api.external(0x361bcc, arguments);
        require(result && ::re::re_holds_alternative<::re::ReMonostate>(*result),
                "Shared-size fixture did not execute the real plain-text controller");
    });
    re::WorldEspConfig config;
    config.zero_unspecified = true;
    config.floats[0x3ed7a8] = 4;
    const ::re::ReArray<re::Vec2, 4> quad{{{100, 100}, {100, 300}, {200, 300}, {200, 100}}};
    re::WorldPlayerLabelState counters;
    const re::WorldPlayerLabel name{"DisplayName", "Birch", 3, 0};
    const auto draw_label = [&](const re::WorldPlayerLabel &label, re::WorldPlayerLabelState &state) {
        return re::draw_world_player_label_37bc98(quad, label, {1, 1, 1, 1}, config,
                                                state, backend, output);
    };
    const auto cold_layout = draw_label(name, counters);
    require(measurement_sizes.back() == 16 && cold_layout.measured.y == 16 &&
            cold_layout.position.y == 80 && image.read<float>(0x248ed0) == 10,
            "Cold label must measure at sixteen before the real text controller writes ten");
    store_value(0x248ed0, 22.0f);
    const auto empty_layout = draw_label({"HeldEntity", "", 4, 0}, counters);
    require(measurement_sizes.back() == 22 && empty_layout.measured.y == 22 &&
            counters.counters_3e5cc8[4] == 0 && image.read<float>(0x248ed0) == 10,
            "Empty label must read a nondefault size and preserve the text controller size write");
    const auto next_layout = draw_label(name, counters);
    require(measurement_sizes.back() == 10 && next_layout.measured.y == 10 &&
            next_layout.position.y == 76 && next_layout.position.x > cold_layout.position.x + 8,
            "Next label must reread ten for measurement, centering and side spacing");
    re::WorldPlayerLabelState next_entity_counters;
    const auto next_entity_layout = draw_label(name, next_entity_counters);
    require(measurement_sizes.back() == 10 && next_entity_layout.position.y == 86 &&
            next_entity_layout.position.x == next_layout.position.x,
            "New entity counters must retain the shared size produced by the previous entity");
    resources.reset(400, 400);
    re::WorldPlayerLabelState next_frame_counters;
    const auto next_frame_layout = draw_label(name, next_frame_counters);
    require(measurement_sizes.back() == 10 && next_frame_layout.position.x == next_entity_layout.position.x &&
            next_frame_layout.position.y == next_entity_layout.position.y,
            "Frame reset must preserve shared label size and resulting placement");
    store_value(0x248ed0, 13.0f);
    re::WorldPlayerLabelState nondefault_counters;
    const auto nondefault_layout = draw_label(name, nondefault_counters);
    require(measurement_sizes.back() == 13 && nondefault_layout.measured.y == 13 &&
            nondefault_layout.position.y == 83 && image.read<float>(0x248ed0) == 10,
            "Ordinary label size must remain a mutable input rather than a hardcoded ten");
    config.integers[0x3eed38] = 2;
    store_value(0x248ed0, 22.0f);
    re::WorldPlayerLabelState indicator_counters;
    const auto indicator_layout = draw_label({"Indicator3", "Wounded", 4, 0}, indicator_counters);
    require(measurement_sizes.back() == 10 && indicator_layout.measured.y == 10 &&
            image.read<float>(0x248ed0) == 10 && label_fonts.fonts.at(Resources::font).scale_64 == 1,
            "Small indicator override or post-output font restoration changed");
}
void check_semantic_fidelity() {
    check_esp_label_size_fidelity();
    check_corner_geometry();
    check_projection_edges();
    check_editor_pointer();
    check_frame_order("esp", 0.5f);
    check_frame_order("distance", 0.01f);
    check_frame_order("color", 0.90f);
    Resources resources;
    InternalMenu menu(resources);
    EspScene esp(resources);
    Input input;
    Settings settings;
    settings.boxes = false;
    const auto profile = re_base::historical_offset_profile();
    const auto render = [&] {
        resources.reset(input.width, input.height);
        menu.prepare_frame(input);
        esp.set_world_windows(menu.world_windows());
        const auto result = esp.frame(input, settings, Camera{}, profile);
        menu.finish_frame();
        return result;
    };
    auto telemetry = render();
    require(telemetry.names == 3 && telemetry.name_raster_passes == 27 &&
            telemetry.name_font_size == 10, "ESP name controller selection/pass regression");
    const auto &list = resources.draw.lists.at(Resources::esp_list);
    require(list.vertices.size == 540 && list.indices.size == 810,
            "ESP name controller must submit nine passes for fifteen glyphs");
    const auto foreground = re::font_text_color_2ef80c(settings.color);
    ReUSize black_vertices{}, foreground_vertices{};
    for (ReI32 index = 0; index < list.vertices.size; ++index) {
        const auto color = vertex_color(list.vertices.at(index));
        black_vertices += color == 0xff000000u;
        foreground_vertices += color == foreground;
    }
    require(black_vertices == 480 && foreground_vertices == 60,
            "ESP name outline/final color vertex ordering regression");
    const auto left = vertex_position(list.vertices.at(0));
    const auto right = vertex_position(list.vertices.at(20));
    const auto above = vertex_position(list.vertices.at(40));
    const auto final = vertex_position(list.vertices.at(160));
    require(::re::re_fabsf(right.x - left.x - 2) < 0.001f &&
            ::re::re_fabsf(final.x - left.x - 1) < 0.001f &&
            ::re::re_fabsf(final.y - above.y - 1) < 0.001f,
            "ESP name recovered one-pixel outline offsets regression");
    const auto cold_next_entity = vertex_position(list.vertices.at(340));
    telemetry = render();
    const auto warm_name = vertex_position(list.vertices.at(160));
    const auto warm_next_entity = vertex_position(list.vertices.at(340));
    require(warm_name.x >= final.x + 8 && warm_name.x <= final.x + 9 &&
            ::re::re_fabsf(warm_name.y - final.y - 6) < 0.001f &&
            warm_next_entity.x == cold_next_entity.x && warm_next_entity.y == cold_next_entity.y,
            "Scene must carry real text size writes across label slots, entities and frames");
    settings.color[3] = 0;
    telemetry = render();
    require(telemetry.names == 3 && telemetry.name_raster_passes == 24 &&
            list.vertices.size == 480, "ESP transparent foreground must retain eight original outline passes");
    for (ReI32 index = 0; index < list.vertices.size; ++index)
        require(vertex_color(list.vertices.at(index)) == 0xff000000u,
                "ESP transparent foreground emitted non-outline geometry");
    settings.names = false;
    telemetry = render();
    require(telemetry.names == 0 && telemetry.name_raster_passes == 0 && list.vertices.size == 0,
            "ESP name gate must suppress glyph geometry through the original controller");
}
}
