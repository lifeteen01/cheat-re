#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
re::ReArray<float, 4> unpack(ReU32 packed) {
    return {float(packed & 255) / 255, float((packed >> 8) & 255) / 255,
            float((packed >> 16) & 255) / 255, float(packed >> 24) / 255};
}
float minss(float a, float z) {
    return a < z ? a : z;
}
float maxss(float a, float z) {
    return a > z ? a : z;
}
} // namespace
// [C] 310f94..311cc0 complete sample-local tooltip layout; actual item results are copied inputs.
bool draw_world_inventory_tooltip_310f94(const WorldInventoryLists &inventory, Vec2 mouse,
                                         Vec2 viewport, const WorldEspConfig &c,
                                         WorldDrawBackend &b, WorldDrawOutput out) {
    const auto a = inventory.hotbar.size(), z = inventory.clothing.size();
    if (a == 0 && z == 0)
        return false;
    out = out.capture_background(0x310fa1);
    if (a > ReUSize(INT32_MAX) || z > ReUSize(INT32_MAX))
        { __builtin_trap(); }
    if (!b.measure_38f79c)
        { __builtin_trap(); }
    const auto hotbar = b.measure_38f79c("Hotbar"), clothing = b.measure_38f79c("Clothing");
    const float heading = maxss(hotbar.x, clothing.x);
    const auto max_count = re::re_max(a, z);
    const int groups = int(a > 0) + int(z > 0);
    float scale = c.real(0x3edde8);
    const float available_width = (viewport.x - 10) - heading;
    if (max_count > 0 && available_width > 0)
        scale = minss(scale, available_width / (float(max_count) * 30.0f));
    const float available_height = viewport.y - 10;
    if (groups > 0 && available_height > 0)
        scale = minss(scale, available_height / ((scale * 28.0f + 10.0f) * float(groups)));
    if (scale <= 0)
        scale = 0.1f; // [C] unordered scale survives the native COMISS/JB.
    const float cell = scale * 28.0f, step = scale * 30.0f, row_step = cell + 10.0f;
    const float content = maxss(maxss(float(a) * step, float(z) * step), heading);
    const float first_height = a ? (hotbar.y + 2) + row_step : 0,
                second_height = z ? (clothing.y + 2) + row_step : 0;
    const Vec2 size{content + 10, ((second_height + first_height) + (a && z ? 4.0f : 0.0f)) + 10};
    Vec2 at{mouse.x + 12, mouse.y + 12};
    if (at.x + size.x > viewport.x)
        at.x = viewport.x - size.x;
    if (at.y + size.y > viewport.y)
        at.y = viewport.y - size.y;
    if (0 > at.x)
        at.x = 0;
    if (0 > at.y)
        at.y = 0;
    const Vec2 maximum{at.x + size.x, at.y + size.y};
    out.emplace_back(WorldRectangleDraw{0x3112a1, at, maximum, 0x8c000000, 4, 0, true});
    out.emplace_back(WorldRectangleDraw{0x3112e8, at, maximum, 0x24ffffff, 4, 1, false});
    float y = at.y + 5;
    const auto group = [&](const re::ReVector<re::ReOptional<WorldInventoryItem>> &items, bool wear) {
        const auto title = wear ? re::ReStringView("Clothing") : re::ReStringView("Hotbar");
        const auto title_size = wear ? clothing : hotbar;
        out.emplace_back(WorldTextDraw{wear ? Rva(0x311874) : Rva(0x311336),
                                       {at.x + 5, y},
                                       re::ReString(title),
                                       unpack(0xf09ebe96),
                                       0});
        const float top = (title_size.y + 2) + y, bottom = top + cell;
        float offset = 0;
        for (const auto &maybe_item : items) {
            if (!maybe_item || !maybe_item->definition_valid ||
                !sample_pointer_range(maybe_item->texture))
                continue;
            const auto &item = *maybe_item;
            const float x = (at.x + 5) + offset;
            out.emplace_back(WorldRectangleDraw{wear ? Rva(0x3119f8) : Rva(0x3114da),
                                                {x, top},
                                                {x + cell, bottom},
                                                0x37000000,
                                                scale * 3,
                                                0,
                                                true});
            if (item.has_condition && item.maximum_condition > 0) {
                out.emplace_back(WorldRectangleDraw{wear ? Rva(0x311a68) : Rva(0x31154d),
                                                    {x, top},
                                                    {x + scale * 3, bottom},
                                                    0x4c42876e,
                                                    0,
                                                    0,
                                                    true});
                const float ratio = minss(item.condition / item.maximum_condition, 1.0f);
                out.emplace_back(WorldRectangleDraw{wear ? Rva(0x311acc) : Rva(0x3115bc),
                                                    {x, top + (1.0f - ratio) * cell},
                                                    {x + scale * 3, bottom},
                                                    0xcc42876e,
                                                    0,
                                                    0,
                                                    true});
            }
            const Vec2 icon{scale * 4 + x, top + scale};
            out.emplace_back(WorldImageDraw{wear ? Rva(0x311b66) : Rva(0x311655),
                                            icon,
                                            {icon.x + scale * 23, icon.y + scale * 23},
                                            item.texture,
                                            {1, 1, 1, 1}});
            if (item.amount > 1) {
                const auto text = re::re_to_string(item.amount);
                const auto measured = b.measure_38f79c(text);
                const Vec2 count{x + (cell - measured.x) * 0.5f, bottom - 4};
                out.emplace_back(WorldTextDraw{wear ? Rva(0x311c1b) : Rva(0x31170a),
                                               {count.x + 1, count.y + 1},
                                               text,
                                               unpack(0xb4000000),
                                               0});
                out.emplace_back(WorldTextDraw{wear ? Rva(0x311c59) : Rva(0x311748), count, text,
                                               unpack(0xebffffff), 0});
            }
            offset += step; // [C] Invalid entries do not reserve an item slot.
        }
        y = top + row_step;
    };
    if (a) {
        group(inventory.hotbar, false);
        if (z) {
            out.emplace_back(WorldLineDraw{
                0x3117fc, {at.x + 5, y + 2}, {at.x + 5 + content, y + 2}, unpack(0x1affffff), 1});
            y += 4;
        }
    }
    if (z)
        group(inventory.clothing, true);
    return true;
}
// [C]310d4c..310f94 marker/hover/controller. inventory query is required only on a qualifying hover.
void draw_world_ingame_player_310d4c(
    const WorldIngamePlayerData &d, const WorldEspConfig &c, WorldDrawBackend &b,
    const re::ReFunction<re::ReOptional<WorldInventoryLists>(Address)> &inventory,
    bool &tooltip_drawn, WorldDrawOutput out) {
    const bool players = c.boolean(0x3ea218), npcs = c.boolean(0x3ea0d8);
    if (!(players || npcs) || (d.npc && !npcs))
        return;
    if (!b.ingame_projection_314f08)
        { __builtin_trap(); }
    const auto at = b.ingame_projection_314f08(d.position);
    if (at.x == 0 && at.y == 0)
        return;
    float yaw = d.yaw;
    if (b.yaw_31530c)
        yaw = b.yaw_31530c(d.entity);
    else if (!d.yaw_valid)
        { __builtin_trap(); }
    const float radius = 2.0f + c.real(0x3eda78);
    out.emplace_back(
        WorldDirectionMarkerDraw{0x310e4c, at, radius, d.color, c.boolean(0x3ea3f8), yaw});
    if (c.boolean(0x3ea448))
        out.emplace_back(WorldTextDraw{0x310ec3,
                                       {at.x, (at.y + radius) + 6.325f},
                                       re::re_to_string(world_cvttss2si(d.distance)),
                                       d.color,
                                       3});
    if (tooltip_drawn)
        return;
    const float dx = d.mouse.x - at.x, dy = d.mouse.y - at.y;
    if (!(radius * radius >= dy * dy + dx * dx))
        return;
    if (!inventory)
        { __builtin_trap(); }
    if (const auto items = inventory(d.entity))
        tooltip_drawn = draw_world_inventory_tooltip_310f94(*items, d.mouse, d.viewport, c, b, out);
}
} // namespace rust_internal_re
