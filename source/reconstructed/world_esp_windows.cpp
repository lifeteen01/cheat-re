#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class F> void window_need(const F &f, Rva at, Rva target) {
    if (!f)
        { __builtin_trap(); }
}
void position(WorldWindowBackend &b, Vec2 at, int condition, Rva site) {
    window_need(b.position_39b734, site, 0x39b734);
    b.position_39b734(at, condition, {});
}
void style(WorldWindowBackend &b, ReUSize offset, re::ReArray<float, 4> value, Rva site) {
    window_need(b.style_392ca4, site, 0x392ca4);
    b.style_392ca4(offset, value);
}
void size(WorldWindowBackend &b, Vec2 value, Rva site) {
    window_need(b.size_39b770, site, 0x39b770);
    b.size_39b770(value, 0);
}
void begin(WorldWindowBackend &b, re::ReStringView name, ReU32 flags, Rva site) {
    window_need(b.begin_38cfa4, site, 0x38cfa4);
    b.begin_38cfa4(name, flags);
}
Vec2 at(WorldWindowBackend &b, Rva site) {
    window_need(b.current_position_39246c, site, 0x39246c);
    return b.current_position_39246c();
}
void end(WorldWindowBackend &b, Rva site) {
    window_need(b.end_390994, site, 0x390994);
    b.end_390994();
}
} // namespace
void layout_world_radar_window_309a27(const WorldEspConfig &c, const WorldWindowFrame &f,
                                      WorldWindowState &s, WorldWindowBackend &b) {
    if (!c.boolean(0x3ea038) || (c.boolean(0x3e6e38) && f.map_open))
        return;
    const float radius = c.real(0x3ed938);
    const Vec2 corner{s.radar_3efda8.x - radius, s.radar_3efda8.y - radius};
    position(b, corner, 2, 0x309a73);
    if (s.radar_reset_3e5cb9) {
        position(b, corner, 1, 0x309acd);
        s.radar_reset_3e5cb9 = false;
    }
    style(b, 0x448, {}, 0x309af3);
    style(b, 0x118, {}, 0x309b1f);
    size(b, {radius * 2, radius * 2}, 0x309b52);
    begin(b, "Radar", f.busy_218818 ? 0xab : 0xaf, 0x309b8e);
    const auto window = at(b, 0x309b9a);
    s.radar_3efda8 = {window.x + radius, window.y + radius};
    end(b, 0x309beb);
}
void layout_world_fishing_window_30a5dd(const WorldEspConfig &c, const WorldWindowFrame &f,
                                        WorldWindowState &s, WorldWindowBackend &b,
                                        WorldDrawOutput out) {
    if (f.battle_3e5cb8 || !f.fishing_3e607c || !c.boolean(0x3e9c78))
        return;
    position(b, {float(f.width) * 0.5f, float(f.height) * 0.05f}, 2, 0x30a62c);
    if (s.fishing_reset_3e5cba) {
        position(b, s.fishing_3efcb8, 1, 0x30a674);
        s.fishing_reset_3e5cba = false;
    }
    style(b, 0x118, {}, 0x30a69a);
    size(b, {560, 27}, 0x30a6d3);
    begin(b, "Fishing Bar Window", f.busy_218818 ? 0xab : 0xaf, 0x30a70f);
    const auto window = at(b, 0x30a71b);
    end(b, 0x30a720);
    s.fishing_3efcb8 = window;
    out.emplace_back(WorldColoredMeterDraw{0x30a7ba,
                                           0x35b850,
                                           window,
                                           f.tension_3e6080,
                                           1,
                                           560,
                                           27,
                                           {26.0f / 255, 26.0f / 255, 20.0f / 255, 1}});
}
Vec2 layout_world_violation_window_30c25c(const WorldWindowFrame &f, WorldWindowState &s,
                                          WorldWindowBackend &b) {
    position(b, s.violation_3efd58, 2, 0x30c298);
    if (s.violation_reset_3e5cbe) {
        position(b, s.violation_3efd58, 1, 0x30c2e4);
        s.violation_reset_3e5cbe = false;
    }
    style(b, 0x118, {}, 0x30c311);
    size(b, {240, 84.615f}, 0x30c349);
    begin(b, "Anti Violations Bar", f.busy_218818 ? 0x2b : 0x2f, 0x30c382);
    const auto window = at(b, 0x30c38e);
    s.violation_3efd58 = window;
    return window;
    // [C] Native ends this window only AFTER drawing its meters; caller must use end_world_violation_window_30c6e6.
}
void end_world_violation_window_30c6e6(WorldWindowBackend &b) {
    end(b, 0x30c6e6);
}
Vec2 layout_world_warning_window_30cd4e(const WorldEspConfig &c, const WorldWindowFrame &f,
                                        WorldWindowState &s, WorldWindowBackend &b) {
    position(b, s.warning_3efd08, 2, 0x30cd8a);
    if (s.warning_reset_3e5cbf) {
        position(b, s.warning_3efd08, 1, 0x30cdd1);
        s.warning_reset_3e5cbf = false;
    }
    style(b, 0x1a8, {0, 0, 0, 255}, 0x30ce02);
    style(b, 0x118, {}, 0x30ce29);
    size(b, {240, 84.615f}, 0x30ce58);
    begin(b, "Warning Bar Window", f.busy_218818 && c.boolean(0x3e9548) ? 0xaa : 0xaf, 0x30cead);
    auto window = at(b, 0x30ceb9);
    window.y += f.busy_218818 ? 0 : 30;
    s.warning_3efd08 = {window.x, window.y - 30};
    end(b, 0x30cf26);
    return {window.x + 116, window.y + 12.821f};
}
} // namespace rust_internal_re
