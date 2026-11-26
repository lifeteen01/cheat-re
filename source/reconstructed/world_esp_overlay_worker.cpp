#include "world_esp_analysis.hpp"
namespace rust_internal_re {
// [C/I] Ordered3098a4..314929 composition. Snapshot/game/registry/widget inputs are typed owned data.
// [U] Required ImGui primitives, actual game calls and omitted native vararg bits stop explicitly if unavailable.
void replay_world_overlay_3098a4(const Snapshot &im, const WorldEspConfig &copied,
                                 const WorldFullOverlayFrame &f, WorldFullOverlayState &s,
                                 WorldFullOverlayBackend &b, WorldDrawOutput out) {
    auto c = copied;
    const Vec2 integer_center{float(f.width / 2), float(f.height / 2)};
    draw_world_crosshair_3643b4(world_cvttss2si(integer_center.x),
                                world_cvttss2si(integer_center.y), c.color(0x3ec938), c, s.controls,
                                b.overlay, out);
    // [C] FOV precedes radar window layout; decorations follow the window's actual position update.
    auto fov = c;
    fov.booleans[0x3ea038] = false;
    draw_world_overlay_geometry_309994(fov, f.width, f.height, s.windows.radar_3efda8, f.map_open,
                                       out);
    WorldWindowFrame window_frame{
        f.width,          f.height,        f.map_open, f.busy_218818, s.controls.battle_3e5cb8,
        f.fishing_3e607c, f.tension_3e6080};
    layout_world_radar_window_309a27(c, window_frame, s.windows, b.windows);
    auto radar = c;
    radar.booleans[0x3e71a8] = false;
    draw_world_overlay_geometry_309994(radar, f.width, f.height, s.windows.radar_3efda8, f.map_open,
                                       out);
    if (!sample_pointer_range(f.local) || !sample_pointer_range(f.camera) ||
        !f.camera_transform_valid)
        return;
    const WorldOverlayFrame base{f.camera_position, f.local_position, f.projection_bounds};
    update_world_overlay_controls_309ff4(c, base, s.controls, b.overlay, out);
    c.booleans[0x3e5cb8] = s.controls.battle_3e5cb8;
    draw_world_code_status_30a1c3(f.locks, f.camera_position, f.projection_bounds, c, s.codes,
                                  b.overlay.draw, b.realtime_31581c, out);
    if (!s.controls.battle_3e5cb8) {
        window_frame.battle_3e5cb8 = false;
        layout_world_fishing_window_30a5dd(c, window_frame, s.windows, b.windows, out);
        draw_world_saved_positions_30a7ce(c, base, s.controls, b.overlay, out);
    }
    if (c.boolean(0x3e9cc8) && !s.traces_3e6010.empty()) {
        if (!b.realtime_31581c)
            { __builtin_trap(); }
        draw_world_tracers_30ab62(s.traces_3e6010, b.realtime_31581c(), f.projection_bounds, c,
                                  b.overlay.draw, out);
    }
    if (c.boolean(0x3e9908))
        draw_world_time_30ae1d(c.real(0x3e608c), c, b.overlay, out);
    const Vec2 half_screen{float(f.width) * 0.5f, float(f.height) * 0.5f};
    Vec2 status_at{half_screen.x, half_screen.y + 10};
    if (!f.input_captured_2e6844) {
        status_at = draw_world_status_flags_30b140(half_screen, c, out);
        status_at = draw_world_sign_status_30b6b3(im, f.looked_sign, status_at, c, out);
        status_at = draw_world_authorization_status_30bce7(status_at, f.found_code_218868, c, out);
    }
    const auto violation_at =
        layout_world_violation_window_30c25c(window_frame, s.windows, b.windows);
    if (c.integer(0x3eece8) == 3) {
        end_world_violation_window_30c6e6(b.windows);
        (void)draw_world_violation_bars_30c3e0(violation_at, half_screen, f.violations, c, out);
    } else {
        (void)draw_world_violation_bars_30c3e0(violation_at, half_screen, f.violations, c, out);
        end_world_violation_window_30c6e6(b.windows);
    }
    (void)draw_world_teleport_panel_30c8d0(status_at, f.teleport_positions_218960,
                                           f.projection_bounds, c, b.overlay, out);
    s.players.warning_cursor =
        layout_world_warning_window_30cd4e(c, window_frame, s.windows, b.windows);
    b.simulation.overlay = b.overlay;
    replay_world_simulation_worker_30cf87(im, f.local, f.projection_bounds, c, s.simulation,
                                          b.simulation, out);
    auto player_frame = f.players;
    player_frame.camera_position = f.camera_position;
    player_frame.local_position = f.local_position;
    player_frame.half_screen = half_screen;
    player_frame.viewport = {float(f.width), float(f.height)};
    player_frame.radar_position = s.windows.radar_3efda8;
    player_frame.projection_bounds = f.projection_bounds;
    player_frame.map_open = f.map_open;
    b.players.player.draw = b.overlay.draw;
    b.players.overlay = b.overlay;
    replay_world_player_overlay_30ea17(im, f.player_records, c, player_frame, s.players, b.players,
                                       out);
    replay_world_handcuff_tail_3141bb(s.players.handcuffs, c, s.players.tail, b.interaction,
                                      b.hood_369cdc);
    refresh_world_registry_3143c7(f.registry_candidates, f.local, s.players.tail, b.interaction,
                                  b.registry);
}
} // namespace rust_internal_re
