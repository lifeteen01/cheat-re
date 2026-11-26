#include "world_esp_analysis.hpp"
namespace rust_internal_re {
// [C/I] Full ordered worker composition from2fb72c..307637; owned values replace native allocation.
// [U] Copied metadata/game state and actual Unity calls remain explicit backend inputs.
void replay_world_worker_2fb72c(const Snapshot &im, re::ReSpan<const WorldEspRecord> records,
                                const WorldEspConfig &c, const WorldWorkerFrame &f,
                                WorldWorkerState &s, WorldWorkerBackend &b, WorldDrawOutput out) {
    if (!sample_pointer_range(f.camera) || !sample_pointer_range(f.local))
        return;
    auto fishing = f.fishing;
    fishing.local = f.local;
    fishing.camera_position = f.camera_position;
    fishing.local_position = f.local_position;
    fishing.projection_bounds = f.projection_bounds;
    replay_world_fishing_2fb7fc(im, c, fishing, s.fishing, s.interaction, b.interaction, b.game,
                                b.draw, out);
    if (f.looked_at && f.looked_at->class_name != "StashContainer")
        cache_looked_at_world_2fc2c6(im, *f.looked_at, c, s.classifier, b.game);
    CachedWorldFrame cached{f.world_seed,        f.camera_position, f.local_position,
                            f.projection_bounds, f.local_369fac,    f.map_open};
    draw_cached_world_2fc460(s.classifier.sam_218780, true, cached, c, b.draw, out);
    draw_cached_world_2fc460(s.classifier.stash_218768, false, cached, c, b.draw, out);
    if (f.looked_at && f.looked_at->class_name == "StashContainer")
        cache_looked_at_world_2fc2c6(im, *f.looked_at, c, s.classifier, b.game);
    for (const auto &record : records) {
        const auto e = record.entity;
        if (!sample_pointer_range(e))
            continue;
        if (!b.entity_valid_2e0e9c)
            { __builtin_trap(); }
        if (!b.entity_valid_2e0e9c(e))
            continue;
        if (!b.game.position_3747d4)
            __builtin_trap();
        const auto position = b.game.position_3747d4(e);
        if (!position)
            continue;
        WorldDrawData d{};
        d.record = record;
        d.local_entity = f.local;
        d.projection_bounds = f.projection_bounds;
        d.position = *position;
        d.camera_position = f.camera_position;
        d.local_position = f.local_position;
        d.map_open = f.map_open;
        d.visible_2f8180 = f.local_2f8180;
        d.visible_2f81e8 = f.local_2f81e8;
        if (!b.draw.world_projection_36cd20)
            { __builtin_trap(); }
        const auto screen = b.draw.world_projection_36cd20(*position, f.projection_bounds);
        d.projected = screen.has_value();
        if (screen)
            d.screen = *screen;
        d.distance = length(*position - f.camera_position);
        WorldLabelRows rows;
        WorldLocalEffects effects;
        re::ReVector<WorldInteraction> common_crate;
        effects.on_interaction = [&](const WorldInteraction &action) {
            if (action.site == 0x30674d) {
                common_crate.push_back(action);
                return;
            }
            (void)replay_world_interaction_317928(im, action, f.local_position, s.interaction,
                                                  b.interaction, b.game);
        };
        WorldDrawStyle style;
        if (record.category == 67 || record.category == 70)
            style = decode_world_owner_category_3024e7(im, d, c, rows, effects, s.names, b.names,
                                                       b.draw, b.game);
        else if (record.category == 71)
            style = decode_world_dropped_303718(im, d, c, rows, effects);
        else if (record.category == 73)
            style = decode_world_turret_3012f9(im, d, c, rows, b.draw, b.game);
        else
            style = decode_world_category_2fb72c(im, d, c, rows, effects);
        if (record.category == 15) {
            s.helicopter_3d72b8 = effects.helicopter_3d72b8;
            s.helicopter_alert = effects.helicopter_alert;
        }
        for (const auto &command : effects.drawings)
            out.emplace_back(command);
        WorldRadarFeedback marker;
        draw_world_radar_305c1e(d, style, c, f.radar_position, f.mouse, b.draw, out, &marker);
        if (marker.ingame_marker && (record.category == 50 || record.category == 86)) {
            const float dx = f.mouse.x - marker.position.x, dy = f.mouse.y - marker.position.y;
            const float squared = dy * dy + dx * dx;
            if (marker.radius * marker.radius >= squared &&
                (record.category == 86 || !rows.tooltip_body.empty()))
                draw_world_tooltip_3060ab(f.mouse, f.viewport, rows.tooltip_title,
                                          rows.tooltip_body, record.category == 50, b.draw, out);
        }
        for (const auto &action : common_crate)
            (void)replay_world_interaction_317928(im, action, f.local_position, s.interaction,
                                                  b.interaction, b.game);
        // [C] Failed visible-label gates jump30762b ->303953, bypassing chams too.
        if (!style.world || d.distance > float(style.maximum_distance) ||
            (c.boolean(0x3e6e38) && f.map_open) || !world_screen_gate_317130(d.screen, f.viewport))
            continue;
        draw_world_label_306752(d, style, rows, c, f.viewport, out);
        if (style.chams) {
            if (!b.renderers_334204_3151bc)
                __builtin_trap();
            const auto renderers = b.renderers_334204_3151bc(e, "Renderer", "UnityEngine");
            if (renderers)
                apply_world_chams_306ebe(record.label, *renderers, c, s.shaders, b.shaders);
        }
    }
}
} // namespace rust_internal_re
