#include "world_esp_analysis.hpp"
namespace rust_internal_re {
void draw_world_overlay_geometry_309994(const WorldEspConfig &c, ReI32 width,
                                        ReI32 height, Vec2 radar_position, bool map_open,
                                        WorldDrawOutput out) {
    // [C] Native signed divide-by-two truncates toward zero before conversion to float.
    const Vec2 center{float(width / 2), float(height / 2)};
    if (c.boolean(0x3e71a8))
        out.emplace_back(WorldCircleDraw{0x3099e9, center, float(c.integer(0x3d81e8)),
                                         c.color(0x3ec998), false, 1.35f});
    if (!c.boolean(0x3ea038) || (c.boolean(0x3e6e38) && map_open))
        return;
    if (c.boolean(0x3ea4e8))
        out.emplace_back(WorldCircleDraw{0x309c3e, radar_position, c.real(0x3ed938),
                                         c.color(0x3eaa78), true, 1});
    const float radius = c.real(0x3ed938);
    if (c.boolean(0x3ea128)) {
        auto color = c.color(0x3eaa18);
        color[3] = 255.0f; // [C] literal constructor argument, not config alpha.
        out.emplace_back(WorldLineDraw{0x309cf2,
                                       {radar_position.x, radar_position.y - radius},
                                       {radar_position.x, radar_position.y + radius},
                                       color,
                                       1.25f});
        out.emplace_back(WorldLineDraw{0x309d88,
                                       {radar_position.x - radius, radar_position.y},
                                       {radar_position.x + radius, radar_position.y},
                                       color,
                                       1.25f});
    }
    if (c.boolean(0x3e9ef8)) {
        const auto color = c.color(0x3ea9b8);
        out.emplace_back(WorldCircleDraw{0x309e02, radar_position, radius, color, false, 1.25f});
        // [C] Native promotes the radius to binary64 for these three multiplications.
        out.emplace_back(WorldCircleDraw{0x309e4a, radar_position, float(double(radius) * 0.75),
                                         color, false, 1.25f});
        out.emplace_back(WorldCircleDraw{0x309e8f, radar_position, float(double(radius) * 0.5),
                                         color, false, 1.25f});
        out.emplace_back(WorldCircleDraw{0x309ed1, radar_position, float(double(radius) * 0.25),
                                         color, false, 1.25f});
        out.emplace_back(WorldCircleDraw{0x309f0a, radar_position, 0, color, false, 1.25f});
        out.emplace_back(WorldCircleDraw{0x309f42, radar_position, 3, color, true, 1});
    }
}
} // namespace rust_internal_re
