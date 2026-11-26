#include "scene.hpp"
#include "font_frame_bindings.hpp"
#include "game_runtime_wrappers_analysis.hpp"
#include "world_render_bindings.hpp"
#include "world_snapshot_bindings.hpp"

namespace owned_scene {
namespace {
const ::re::ReStringView name_key = "field.player_display_name_reference.338";
constexpr re::Address context = 0x200000, viewport = 0x206000,
                      viewport_array = 0x207000, background_name = 0x208000,
                      camera_key = 0x209000, eyes_key = 0x20a000,
                      text_window = 0x20b000, font_record = 0x20b400,
                      local_key = 0x20d000, held_key = 0x20e000,
                      definition_key = 0x20f000, local_eyes_key = 0x210000;
constexpr re::FontFrameStorage text_storage{0, 0x20c000, 0x20c100, 0x20c300, 0x20c310, 256};
struct OwnedEntity {
    re::Address address;
    re::Vec3 position;
    ::re::ReStringView name;
};
constexpr ::re::ReArray<OwnedEntity, 5> entities{{
    {0x100000, {-3, 0, 6}, "Aster"},
    {0x104000, {0, 0, 10}, "Birch"},
    {0x108000, {4, 0, 14}, "Cedar"},
    {0x10c000, {1, 0, -30}, "Behind camera"},
    {0x110000, {1, 0, 140}, "Distant"},
}};
template<class T> void put(re::Snapshot &image, re::Address at, const T &value) {
    if (!image.write(at, value))
        __builtin_trap();
}
template<class T> T get(const re::Snapshot &image, re::Address at) {
    const auto value = image.read<T>(at);
    if (!value)
        __builtin_trap();
    return *value;
}
void managed_ascii(re::Snapshot &image, re::Address at, ::re::ReStringView text) {
    if (text.size() > 63)
        __builtin_trap();
    put(image, at + 0x10, ReI32(text.size()));
    for (ReUSize i = 0; i <= text.size(); ++i)
        put(image, at + 0x14 + i * 2,
            i == text.size() ? char16_t{} : char16_t(static_cast<unsigned char>(text[i])));
}
bool finite(re::Vec3 v) {
    return ::re::re_isfinite(v.x) && ::re::re_isfinite(v.y) && ::re::re_isfinite(v.z) &&
           ::re::re_fabsf(v.x) <= 100000 && ::re::re_fabsf(v.y) <= 100000 && ::re::re_fabsf(v.z) <= 100000;
}
void validate(const Input &input, const Settings &settings, const Camera &camera,
              const re_base::OffsetProfile &profile, float shift) {
    const auto field = profile.offsets.find(::re::ReString(name_key.data(), name_key.size()));
    if (!field || (*field)->kind != re_base::OffsetKind::field_offset ||
        !(*field)->module.empty() ||
        ((*field)->value != 0x338 && (*field)->value != 0x340))
        __builtin_trap();
    if (!input.width || !input.height || input.width > 8192 || input.height > 8192 ||
        !finite(camera.position) || !::re::re_isfinite(camera.yaw) ||
        !::re::re_isfinite(camera.vertical_fov) || camera.vertical_fov < 1 ||
        camera.vertical_fov > 179 || !::re::re_isfinite(shift) || ::re::re_fabsf(shift) > 10000 ||
        !::re::re_isfinite(settings.distance) || settings.distance < 0 || settings.distance > 10000 ||
        ::re::re_any_of(settings.color.begin(), settings.color.end(),
                    [](float value) { return !::re::re_isfinite(value) || value < 0 || value > 1; }))
        __builtin_trap();
}
re::WorldEspConfig configuration(const Settings &settings) {
    re::WorldEspConfig config;
    // [I] Explicit zero fixture for all other recovered options: this scene exposes
    // player ESP, corner boxes and display names, rather than unavailable features.
    config.zero_unspecified = true;
    config.booleans[0x3e7248] = settings.esp;
    config.booleans[0x3e9d18] = settings.boxes;
    config.booleans[0x3e7798] = settings.names;
    config.integers[0x3d8148] = static_cast<ReI32>(settings.distance);
    config.colors[0x3ecab8] = settings.color;
    config.floats[0x402d68] = 0.25f;
    config.floats[0x3ed7a8] = 4;
    return config;
}
} // namespace

struct EspScene::State {
    Resources &resources;
    // [I] Separate source bytes preserve both profile-selected fields. The worker
    // image is a host translation boundary into the forensic fixed-offset layout.
    re::Snapshot source{0x100000, ::re::ReVector<ReByte>(0x14000)};
    re::Snapshot image{0, ::re::ReVector<ReByte>(0x410000)};
    re::WorldFullOverlayState root;
    re::WorldWindowBackend world_windows;
    ::re::ReVector<re::WorldEspPlayerRecord> records;
    re::WorldLabelFonts label_fonts;
    re::FrameMenuState text_frame;
    re::RendererIconState icons;
    re::RendererIconBackend icon_backend;
    ::re::ReMap<re::Address, re::Vec3> transforms;
    ::re::ReMap<re::Address, re::Address> component_transforms;
    ReI32 frame_number{};
    double elapsed{};

    explicit State(Resources &r) : resources(r) {
        for (const auto &entity : entities) {
            const auto e = entity.address;
            component_transforms[e] = e + 0xc80;
            put(image, e + 0x48, re::Address(1));
            put(image, e + 0x54, ReU32(0xf4e1d514));
            put(image, e + 0x2c0, ReU8(0));
            put(image, e + 0x350, re::Address(0));
            put(image, e + 0x708, ReU32(0));
            // [C/I] Concrete bone_position_368be8 follows model/array/transform
            // pointers in owned bytes; only final transform positions are supplied.
            put(image, e + 0x1d0, e + 0x800);
            put(image, e + 0x800 + 0x50, e + 0x900);
            put(image, e + 0x900 + 0x20 + 7 * 8, e + 0xc00);
            put(image, e + 0x900 + 0x20 + 53 * 8, e + 0xc40);
            put(source, e + 0x338, e + 0x1000);
            put(source, e + 0x340, e + 0x1100);
            managed_ascii(image, e + 0x1000, entity.name);
            {
                ::re::ReString alt("Alt ");
                alt += ::re::ReStringView(entity.name.data(), entity.name.size());
                managed_ascii(image, e + 0x1100, ::re::ReStringView(alt.data(), alt.size()));
            }
            put(image, e + 0x640, e + 0x1200);
            managed_ascii(image, e + 0x1200, ::re::ReStringView(::re::re_to_string(e).data(), ::re::re_to_string(e).size()));
            records.push_back({e, 0});
        }
        put(image, 0x405b28, context);
        put(image, context + 0x48e0, viewport_array);
        put(image, viewport_array, viewport);
        put(image, context + 0x3c28, Resources::font);
        put(image, context + 0x3c30, 16.0f);
        put(image, context + 0x3f08, text_window);
        put(image, text_window + 0x298, Resources::esp_list);
        put(image, font_record + 0x10, Resources::font);
        put(image, 0x248ed0, 16.0f);
        put(image, 0x3fcd78, ReI32(0));
        put(image, 0x3eed38, ReI32(0));
        text_frame.fonts.fill(Resources::font);
        put(image, context + 0x58, Resources::atlas);
        put(image, Resources::atlas + 8, Resources::texture);
        put(image, viewport + 0x38, Resources::esp_list);
        resources.write_font_snapshot(image);
        // [I] Numeric targets remain evidence keys. Typed host leaves below never
        // invoke them, instantiate a spoof executor, or bind any live process.
        put(image, 0x3d6f00, re::Address(0x10000000));
        put(image, 0x3d5e60, re::Address(0x10000008));
        put(image, 0x3e66e0, ReU32(3));
        put(image, 0x3e66d8, re::Address(0x10000010));
        put(image, 0x3e4800, ReU32(1));
        put(image, 0x3e47f8, re::Address(0x10000018));
        put(image, definition_key + 0x20, ReU32(0x0892448f));
        put(image, definition_key + 0x58, ReU32(0));
        put(image, held_key + 0x3f8, 10.453125f);
        root.simulation.branch3_varargs = ::re::ReArray<double, 3>{0, 0, 0};
    }

    EspTelemetry frame(const Input &input, const Settings &settings, const Camera &camera,
                       const re_base::OffsetProfile &profile, float shift) {
        validate(input, settings, camera, profile, shift);
        if (!::re::re_isfinite(input.delta) || input.delta <= 0 || input.delta > 60)
            __builtin_trap();
        elapsed += static_cast<double>(input.delta);
        EspTelemetry telemetry;
        telemetry.records = records.size();
        ::re::ReVector<re::WorldDrawCommand> commands;
        // [I] This adapter resolves the loaded offset against immutable source
        // bytes, reads that actual field and stages its value into the historical
        // worker layout. It does not change the historical literal getter.
        for (const auto &entity : entities) {
            re::Address field{};
            resources.trace.hit("resolve_profile_address:player_display_name");
            const auto result = re_base::resolve_profile_address(
                profile, name_key, re_base::OffsetKind::field_offset, entity.address, field);
            if (!result)
                __builtin_trap();
            const auto pointer = get<re::Address>(source, field);
            if (pointer != entity.address + 0x1000 && pointer != entity.address + 0x1100)
                __builtin_trap();
            put(image, entity.address + 0x338, pointer);
            ++telemetry.profile_reads;
            resources.trace.hit("Snapshot::read:profile_player_display_name");
            const re::Vec3 position = entity.position + re::Vec3{shift, 0, 0};
            transforms[component_transforms.at(entity.address)] = position;
            transforms[entity.address + 0xc00] = position + re::Vec3{0, 0.9f, 0};
            transforms[entity.address + 0xc40] = position + re::Vec3{0, 1.6f, 0};
        }
        // Avoid signed overflow while retaining the recovered frame equality gate.
        frame_number = frame_number == ::re::ReNumericLimits<ReI32>::max()
                           ? 1 : frame_number + 1;
        put(image, context + 0x3e60, frame_number);
        put(image, viewport + 4, re::Vec2{});
        put(image, viewport + 0xc, re::Vec2{float(input.width), float(input.height)});

        re::RendererBackgroundBackend background;
        background.intern_name = [](::re::ReStringView name) {
            if (name != "##Background")
                __builtin_trap();
            return background_name;
        };
        background = re::bind_drawlist_core_background(image, resources.draw, ::re::re_move(background));
        auto player = re::bind_renderer_helpers_world(
            image, label_fonts, background, icons, icon_backend);
        player = re::bind_world_font_measurements(image, context, resources.fonts, ::re::re_move(player));
        const auto prepare_background = player.background_draw_list_392198;
        player.background_draw_list_392198 = [&](re::WorldLabelFonts &fonts) {
            resources.trace.hit("renderer_background_392198");
            prepare_background(fonts);
        };
        const auto measure = player.measure_font_3a3874;
        player.measure_font_3a3874 = [&](const re::WorldFontMeasureRequest &request) {
            resources.trace.hit("renderer_measure_3a3874");
            return measure(request);
        };
        // [I] Host Camera::yaw is radians; recovered radar input below is degrees.
        const float yaw = ::re::re_remainderf(camera.yaw, 6.283185307179586f);
        const float sine = ::re::re_sinf(yaw), cosine = ::re::re_cosf(yaw);
        const float focal = float(input.height) * 0.5f /
                            ::re::re_tanf(camera.vertical_fov * 0.008726646259971648f);
        re::ProjectionQueries projection;
        // [U/I] Authored host camera replacing only unresolved Unity effect
        // world_to_screen_36c3d4. Unity-style Y-up pixels feed real 36cd20 clipping
        // and its final height-Y conversion. No clamping or offscreen fabrication.
        projection.world_to_screen_36c3d4 = [&](re::Address key, re::Vec3 point, re::Vec3 &out) {
            if (key != camera_key)
                __builtin_trap();
            resources.trace.hit("host_camera:world_to_screen_36c3d4_boundary");
            const auto delta = point - camera.position;
            const float depth = delta.x * sine + delta.z * cosine;
            if (depth < 0.001f) {
                out = {0, 0, depth};
                return;
            }
            out = {float(input.width) * 0.5f + (delta.x * cosine - delta.z * sine) * focal / depth,
                   float(input.height) * 0.5f + delta.y * focal / depth, depth};
        };
        projection.screen_height_2e09f0 = [&] { return static_cast<ReI32>(input.height); };
        ::re::ReArray<re::Vec2, 4> last_projections{};
        ReUSize projected_count{};
        player.draw.world_projection_36cd20 = [&](re::Vec3 point, re::ProjectionBounds bounds)
            -> ::re::ReOptional<re::Vec2> {
            resources.trace.hit("project_screen_36cd20");
            re::Vec2 screen{};
            const auto result = re::project_screen_36cd20(camera_key, point, screen, bounds, projection);
            if (result.status != re::GameBaseStatus::complete)
                __builtin_trap();
            if (!result.value)
                return {};
            last_projections[projected_count++ % 4] = screen;
            return screen;
        };
        re::WorldPlayerRunBackend backend;
        backend.player = ::re::re_move(player);
        re::GameRuntimeEffects runtime_effects;
        runtime_effects.object = [&](const re::GameRuntimeCall &call) {
            if (call.wrapper != 0x315a54 || call.target != 0x10000010)
                __builtin_trap();
            resources.trace.hit("host_component:315a54_boundary");
            return component_transforms.at(call.receiver);
        };
        backend.component_transform_315a54 = [&](re::Address entity) {
            re::GameRuntimeRequest request;
            request.receiver = entity;
            resources.trace.hit("game_runtime_wrapper:315a54");
            const auto result = re::game_runtime_wrapper(image, image, 0x315a54, request, {}, runtime_effects);
            if (result.status != re::GameBaseStatus::complete)
                __builtin_trap();
            return ::re::re_get<re::Address>(result.value);
        };
        backend.game.position_3747d4 = [&](re::Address key) -> ::re::ReOptional<re::Vec3> {
            resources.trace.hit("host_transform:position_3747d4_boundary");
            return transforms.at(key);
        };
        re::SnapshotBindingQueries queries;
        queries.foreign.vector = [&](re::Rva role, re::Address key) {
            if (role != 0x3747d4)
                __builtin_trap();
            resources.trace.hit("host_transform:position_3747d4_boundary");
            return transforms.at(key);
        };
        re::GameHelperApi api;
        api.object = [&](const re::GameHelperCall &call) {
            if (call.wrapper == 0x368a84 && call.receiver == local_key) {
                resources.trace.hit("host_held:368a84_boundary");
                return held_key;
            }
            if (call.wrapper == 0x37154c && call.receiver == held_key) {
                resources.trace.hit("host_definition:37154c_boundary");
                return definition_key;
            }
            if (call.wrapper == 0x369298 && call.receiver == local_key) {
                resources.trace.hit("host_eyes:369298_boundary");
                return local_eyes_key;
            }
            if (call.wrapper != 0x369298 || !component_transforms.contains(call.receiver))
                __builtin_trap();
            resources.trace.hit("host_eyes:369298_boundary");
            return eyes_key;
        };
        api.vector = [&](const re::GameHelperCall &call) {
            if (call.wrapper != 0x373a68 || call.receiver != local_eyes_key)
                __builtin_trap();
            resources.trace.hit("host_local_position:373a68_boundary");
            return camera.position;
        };
        api.orientation = [&](const re::GameHelperCall &call) {
            if (call.wrapper == 0x3739c4 && call.receiver == local_eyes_key) {
                resources.trace.hit("host_local_rotation:3739c4_boundary");
                return re::Orientation{0, ::re::re_sinf(yaw * 0.5f), 0, ::re::re_cosf(yaw * 0.5f)};
            }
            if (call.wrapper != 0x3739c4 || call.receiver != eyes_key)
                __builtin_trap();
            resources.trace.hit("host_rotation:3739c4_boundary");
            return re::Orientation{0, 0, 0, 1};
        };
        auto simulation = re::bind_world_simulation_helpers(image, {}, api, queries);
        const auto direction = simulation.direction_368100;
        simulation.direction_368100 = [&, direction](re::Address local) {
            resources.trace.hit("game_helper_vector:368100");
            return direction(local);
        };
        const auto held = simulation.held_368a84;
        simulation.held_368a84 = [&, held](re::Address local) {
            resources.trace.hit("game_helper_object:368a84");
            return held(local);
        };
        const auto classified_grenade = simulation.object_3716e0;
        simulation.object_3716e0 = [&, classified_grenade](re::Address receiver) {
            resources.trace.hit("snapshot_classifier:3716e0");
            const auto result = classified_grenade(receiver);
            if (result != held_key)
                __builtin_trap();
            return result;
        };
        backend = re::bind_world_player_helpers(image, {}, api, ::re::re_move(queries), ::re::re_move(backend));
        ::re::ReString current_entity;
        const auto rotation = backend.rotation_36920c;
        backend.rotation_36920c = [&](re::Address entity) {
            // [C] The recovered player worker calls rotation after selection succeeds.
            ++telemetry.selected;
            const auto found = ::re::re_find_if(entities.begin(), entities.end(),
                                            [&](const auto &e) { return e.address == entity; });
            if (found == entities.end())
                __builtin_trap();
            current_entity = ::re::ReString(found->name.data(), found->name.size());
            resources.trace.hit("game_helper_orientation:36920c");
            return rotation(entity);
        };
        const auto bone = backend.player.bone_368be8;
        backend.player.bone_368be8 = [&](re::Address entity, ReI32 index) {
            resources.trace.hit("bone_position_368be8");
            return bone(entity, index);
        };
        const auto valid = backend.entity_valid_2e0e9c;
        backend.entity_valid_2e0e9c = [&](re::Address entity) {
            resources.trace.hit("entity_valid_2e0e9c");
            return valid(entity);
        };
        backend.prepare_player_labels = [&](const ::re::ReArray<::re::ReString, 6> &texts,
                                             ::re::ReOptional<ReU32> icon) {
            // [C] Successful project_quad made the most recent four projections.
            re::ClipRect bounds{::re::ReNumericLimits<float>::max(), ::re::ReNumericLimits<float>::max(),
                                ::re::ReNumericLimits<float>::lowest(), ::re::ReNumericLimits<float>::lowest()};
            for (const auto point : last_projections) {
                bounds.x = ::re::re_min(bounds.x, point.x);
                bounds.y = ::re::re_min(bounds.y, point.y);
                bounds.z = ::re::re_max(bounds.z, point.x);
                bounds.w = ::re::re_max(bounds.w, point.y);
            }
            telemetry.bounds[current_entity] = bounds;
            constexpr ::re::ReArray<::re::ReStringView, 6> keys{
                "DisplayName", "HeldEntity", "Indicator", "Indicator0", "Indicator2", "Indicator3"};
            ::re::ReArray<re::WorldPlayerLabel, 6> labels{};
            for (ReUSize i = 0; i < labels.size(); ++i) {
                labels[i].key = keys[i];
                labels[i].side = i == 0 ? 3 : 4;
            }
            resources.trace.hit("prepare_copied_world_labels");
            return re::prepare_copied_world_labels(::re::re_move(labels), texts, icon);
        };
        auto text_sink = resources.sink;
        const auto reserve_text = text_sink.reserve;
        text_sink.reserve = [&](re::Address list, ReI32 indices, ReI32 vertices) {
            ++telemetry.name_raster_passes;
            resources.trace.hit("font_text_plain_361bcc:glyph_reservation");
            reserve_text(list, indices, vertices);
        };
        auto text_api = re::bind_font_frame(image, text_frame, resources.fonts, text_sink, text_storage);
        auto output = re::bind_world_shape_output(
            commands, image, 0, background, resources.draw, resources.shapes,
            [&](const re::WorldDrawCommand &command) {
                const auto *text = ::re::re_get_if<re::WorldTextDraw>(&command);
                if (!text || text->site != 0x37c20a || text->font != Resources::font ||
                    text->helper != 0x361bcc)
                    __builtin_trap();
                if (!text->text.empty()) {
                    ++telemetry.names;
                    telemetry.labels.push_back(text->text);
                }
                const ::re::ReArray<re::UnityValue, 6> arguments{
                    font_record, text->font, text->text, text->position,
                    re::ClipRect{text->color[0], text->color[1], text->color[2], text->color[3]},
                    static_cast<ReI32>(text->flags)};
                resources.trace.hit("font_text_plain_361bcc");
                const auto result = text_api.external(0x361bcc, arguments);
                if (!result || !::re::re_holds_alternative<::re::ReMonostate>(*result))
                    __builtin_trap();
                telemetry.name_font_size = get<float>(image, 0x248ed0);
            });
        re::WorldFullOverlayFrame frame;
        frame.width = static_cast<ReI32>(input.width);
        frame.height = static_cast<ReI32>(input.height);
        frame.local = local_key;
        frame.camera = camera_key;
        frame.camera_transform_valid = true;
        frame.busy_218818 = input.menu_open;
        frame.camera_position = camera.position;
        frame.local_position = camera.position;
        frame.projection_bounds = {0, 0, float(input.width), float(input.height)};
        frame.players.camera_yaw = yaw * 57.29577951308232f;
        frame.players.mouse = input.mouse;
        frame.player_records = records;
        re::WorldFullOverlayBackend full;
        full.overlay.draw = backend.player.draw;
        full.windows = world_windows;
        full.simulation = ::re::re_move(simulation);
        full.players = ::re::re_move(backend);
        runtime_effects.scalar = [&](const re::GameRuntimeCall &call) {
            if (call.wrapper != 0x2e6240 || call.target != 0x10000018)
                __builtin_trap();
            resources.trace.hit("host_time:2e6240_boundary");
            return static_cast<float>(elapsed);
        };
        full.interaction.time_2e6240 = [&] {
            resources.trace.hit("game_runtime_wrapper:2e6240");
            const auto result = re::game_runtime_wrapper(image, image, 0x2e6240, {}, {}, runtime_effects);
            if (result.status != re::GameBaseStatus::complete)
                __builtin_trap();
            return ::re::re_get<float>(result.value);
        };
        const auto previous_cache_size = root.simulation.cache.size();
        const auto previous_deadline = root.players.tail.deadline_3f1304;
        resources.trace.hit("replay_world_overlay_3098a4");
        re::replay_world_overlay_3098a4(image, configuration(settings), frame, root, full, output);
        resources.trace.hit("replay_world_overlay_3098a4:complete");
        resources.trace.hit("replay_world_player_overlay_30ea17");
        if (root.simulation.cache.size() > previous_cache_size)
            resources.trace.hit("world_simulation:cache_build");
        else
            resources.trace.hit("world_simulation:cache_reuse");
        if (!root.simulation.active_key_3e5718)
            __builtin_trap();
        const auto &trajectory = root.simulation.cache.at(*root.simulation.active_key_3e5718);
        if (trajectory.tables.size() != 3601 || trajectory.parameters.speed != 10 ||
            trajectory.parameters.drag != 0 || trajectory.parameters.gravity_scale != 1 ||
            trajectory.parameters.qualification_distance != 0)
            __builtin_trap();
        if (root.players.tail.deadline_3f1304 != previous_deadline)
            resources.trace.hit("world_registry:deadline_advanced");
        telemetry.commands = commands.size();
        for (const auto &command : commands) {
            if (const auto *line = ::re::re_get_if<re::WorldLineDraw>(&command)) {
                resources.trace.hit("draw_shapes_line_3a01f4");
                if (line->site == 0x37b84e) {
                    ++telemetry.boxes;
                    resources.trace.hit("draw_world_corner_box_37b724");
                }
            } else if (::re::re_holds_alternative<re::WorldTextDraw>(command)) {
                resources.trace.hit("draw_world_player_label_37bc98");
            }
        }
        return telemetry;
    }
};

EspScene::EspScene(Resources &resources) : state(::re::re_make_unique<State>(resources)) {}
EspScene::~EspScene() = default;
void EspScene::set_world_windows(re::WorldWindowBackend backend) {
    state->world_windows = ::re::re_move(backend);
}
EspTelemetry EspScene::frame(const Input &input, const Settings &settings, const Camera &camera,
                              const re_base::OffsetProfile &profile, float shift) {
    return state->frame(input, settings, camera, profile, shift);
}
} // namespace owned_scene
