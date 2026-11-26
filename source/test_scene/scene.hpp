#pragma once
#include "draw_shadows_analysis.hpp"
#include "offset_catalog.hpp"
#include "world_esp_analysis.hpp"
#include "frame.hpp"

namespace owned_scene {
namespace re = rust_internal_re;
// Authored host contracts. These are never live Unity/game ABI declarations.
struct Settings {
    bool esp{true}, boxes{true}, names{true};
    float distance{80.0f};
    ::re::ReArray<float, 4> color{0.30f, 0.90f, 0.65f, 1.0f};
};
struct Input {
    unsigned width{960}, height{640};
    re::Vec2 mouse{-100, -100};
    bool down{}, pressed{}, released{}, menu_open{true};
    bool focused{true}, control{}, shift{}, alt{}, super{};
    bool raw_menu_hotkey{}, menu_hotkey_down{}, keyboard_capture{};
    ::re::ReArray<bool, 0x8c> keys{};
    ::re::ReVector<char16_t> characters;
    ::re::ReOptional<::re::ReString> clipboard;
    float delta{1.0f / 60.0f};
};
struct Trace {
    ::re::ReMap<::re::ReString, ReU64> calls;
    void hit(::re::ReStringView name) { ++calls[::re::ReString(name.data(), name.size())]; }
};
struct Resources {
    static constexpr re::Address esp_list=0x40000, menu_list=0x41000,
        font=0x30000, atlas=0x50000, texture=0x60000;
    re::DrawCoreStore draw;
    re::FontTextStore fonts;
    ::re::ReMap<re::Address, re::FontTextShared> shared;
    re::FontTextSink sink;
    re::DrawShapesResources shapes;
    re::DrawShadowsResources shadows;
    ::re::ReVector<ReU32> texture_rgba, pixels;
    unsigned texture_width{}, texture_height{}, width{}, height{};
    Trace trace;
    ::re::ReOptional<::re::ReVector<re::Address>> selected_lists;
    Resources();
    Resources(const Resources &)=delete;
    Resources &operator=(const Resources &)=delete;
    Resources(Resources &&)=delete;
    Resources &operator=(Resources &&)=delete;
    void reset(unsigned, unsigned);
    void select_lists(::re::ReVector<re::Address>);
    ::re::ReVector<re::Address> presentation_order() const;
    void rasterize();
    void text(re::Address list, re::Vec2, ::re::ReStringView, ReU32 color=0xffffffffu,
              float size=14.0f);
    void write_font_snapshot(re::Snapshot &) const;
};
struct MenuTelemetry {
    ::re::ReMap<::re::ReString, re::ClipRect> controls;
    re::Vec2 io_mouse{};
    float io_delta{};
    bool io_down{};
    bool visible{}, changed{};
    bool keyboard_capture{};
    ::re::ReString editor_text;
    ReI32 selection_start{}, selection_end{};
};
class InternalMenu {
    struct State;
    ::re::ReUniquePtr<State> state;
public:
    explicit InternalMenu(Resources &);
    ~InternalMenu();
    InternalMenu(const InternalMenu &)=delete;
    MenuTelemetry frame(const Input &, Settings &);
    void prepare_frame(const Input &);
    re::WorldWindowBackend world_windows();
    void finish_frame();
};
struct Camera { re::Vec3 position{0, 1.1f, -8}; float yaw{}, vertical_fov{65}; };
struct EspTelemetry {
    ReUSize records{}, selected{}, boxes{}, names{}, commands{}, profile_reads{};
    ReUSize name_raster_passes{};
    float name_font_size{};
    ::re::ReMap<::re::ReString, re::ClipRect> bounds;
    ::re::ReVector<::re::ReString> labels;
};
class EspScene {
    struct State;
    ::re::ReUniquePtr<State> state;
public:
    explicit EspScene(Resources &);
    ~EspScene();
    EspScene(const EspScene &)=delete;
    void set_world_windows(re::WorldWindowBackend);
    EspTelemetry frame(const Input &, const Settings &, const Camera &,
                       const re_base::OffsetProfile &, float entity_shift=0);
};
struct Telemetry { MenuTelemetry menu; EspTelemetry esp; FrameReport frame; };
void check_resources();
void check_semantic_fidelity();
void check_esp_root_boundary();
void check_menu_lifecycle();
class Scene {
public:
    Resources resources;
    FrameLifecycle lifecycle;
    Settings settings;
    Camera camera;
    re_base::OffsetProfile profile;
    ::re::ReString profile_status;
    InternalMenu menu;
    EspScene esp;
    Scene();
    re_base::ProfileResult reload(::re::ReStringView path);
    Telemetry frame(const Input &, float entity_shift=0);
};
} // namespace owned_scene
