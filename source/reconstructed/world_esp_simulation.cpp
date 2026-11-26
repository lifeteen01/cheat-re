#include "world_esp_analysis.hpp"
namespace rust_internal_re {
// [C] Literal bit/exponent320c2c floor, including wrap in the repeated32-bit doubling.
float world_floor_320c2c(float x) {
    if (x == 0)
        return 0;
    const auto bits = re::re_bit_cast<ReU32>(x);
    const auto exponent = (bits >> 23) & 255;
    const int power = int(exponent) - 127;
    ReU32 factor = 1;
    for (int i = 0; i < (power < 0 ? -power : power); ++i)
        factor += factor;
    const auto signed_factor = re::re_bit_cast<ReI32>(factor);
    const auto expanded = ReU64(ReI64(signed_factor));
    const ReU64 mantissa = (bits & 0x7fffff) | 0x800000;
    ReU64 numerator = exponent >= 127 ? expanded * mantissa : mantissa;
    const ReU64 denominator = exponent >= 127 ? 0x800000 : expanded << 23;
    float count = 0;
    ReUSize steps = 0;
    if (denominator == 0)
        { __builtin_trap(); }
    while (numerator >= denominator) {
        if (++steps > 1000000)
            { __builtin_trap(); }
        count += 1;
        numerator -= denominator;
    }
    if (bits >> 31) {
        count = -count;
        if (numerator)
            count -= 1;
    }
    return count;
}
WorldSimulationResult simulate_world_31885c_3185a0(WorldSimulationRequest request,
                                                   WorldDrawBackend &b) {
    WorldSimulationResult result;
    result.position = request.position;
    result.velocity = request.velocity;
    result.points.push_back(request.position);
    Vec3 previous = request.position;
    const int count = world_cvttss2si(world_floor_320c2c(request.duration * 32.0f));
    for (int i = 0; i < count; ++i) {
        if (!b.raycast_2e8fac)
            __builtin_trap();
        const auto hit = b.raycast_2e8fac(previous, result.velocity,
                                          length(previous - result.position), request.mask, 0);
        if (!hit.hit) {
            previous = result.position;
            result.position = result.position + result.velocity * 0.03125f;
            result.velocity = result.velocity + request.gravity * 0.03125f;
            if (request.drag)
                result.velocity = result.velocity - (result.velocity * *request.drag) * 0.03125f;
            result.points.push_back(result.position);
        } else if (hit.distance != 0.0f) {
            // [C] Native uses RaycastHit NORMAL+0c; last path point remains before the collision.
            result.normal = hit.normal;
            result.hit = true;
            break;
        }
    }
    return result;
}
void draw_world_simulation_30d207(const WorldSimulationResult &result, ReUSize branch,
                                  ProjectionBounds bounds, const WorldEspConfig &c,
                                  WorldOverlayBackend &b, WorldDrawOutput out) {
    if (branch >= 4)
        { __builtin_trap(); }
    constexpr re::ReArray<Rva, 4> polygon_sites{0x30d51c, 0x30db58, 0x30e250, 0x30e8f2};
    constexpr re::ReArray<Rva, 4> line_sites{0x30d618, 0x30dc54, 0x30e34c, 0x30e9ee};
    if (!b.sin_2e0198 || !b.cos_2dff68)
        { __builtin_trap(); }
    // [C] CRT atan2/asinf happen BEFORE the zero-normal fallback.
    const float yaw = re::re_atan2f(result.normal.z, result.normal.x),
                pitch = -re::re_asinf(result.normal.y);
    Vec3 normal = result.normal;
    if (!vector_inequality_2df5dc(normal, {}))
        normal = {0, 1, 0};
    Vec3 first{}, second{};
    if (1e-6f > re::re_fabsf(normal.y - 1.0f)) {
        first = {1, 0, 0};
        second = {0, 0, -1};
    } else if (1e-6f > re::re_fabsf(normal.y + 1.0f)) {
        first = {1, 0, 0};
        second = {0, 0, 1};
    } else {
        const float sp = b.sin_2e0198(pitch), sy = b.sin_2e0198(yaw), cp = b.cos_2dff68(pitch),
                    cy = b.cos_2dff68(yaw);
        // Repeated native Sin/Cos(yaw) reads retained, although matching implementations are pure.
        const float minus_sy = -b.sin_2e0198(yaw), repeated_cy = b.cos_2dff68(yaw);
        first = {repeated_cy, 0, minus_sy};
        second = {sy * sp, cp, cy * sp};
    }
    const float radius = c.real((branch & 1) ? 0x3ede38 : 0x3ede88);
    re::ReArray<Vec3, 50> ring{};
    const Vec3 center = result.points.empty() ? result.position : result.points.back();
    for (ReUSize i = 0; i < ring.size(); ++i) {
        const float angle = float(i) * 0.125664f;
        const float a = b.cos_2dff68(angle) * radius, z = b.sin_2e0198(angle) * radius;
        ring[i] = (center + first * a) + second * z;
    }
    if (!b.draw.world_projection_36cd20)
        { __builtin_trap(); }
    re::ReVector<Vec2> screen;
    bool all = true;
    // [C] All50 projections run even when an earlier projection fails.
    for (const auto point : ring) {
        const auto projected = b.draw.world_projection_36cd20(point, bounds);
        all = all && projected.has_value();
        screen.push_back(projected.value_or(Vec2{}));
    }
    if (all && c.boolean(0x3e70b8))
        out.emplace_back(
            WorldPolygonDraw{polygon_sites[branch], re::re_move(screen), c.color(0x3ecb18), 50});
    // [C] The native path loop intentionally omits the final segment: i < count-1.
    if (c.boolean(0x3e7068) && result.points.size() > 1)
        for (ReUSize i = 1; i < result.points.size() - 1; ++i) {
            const auto from = b.draw.world_projection_36cd20(result.points[i - 1], bounds);
            if (!from)
                continue;
            const auto to = b.draw.world_projection_36cd20(result.points[i], bounds);
            if (!to)
                continue;
            out.emplace_back(
                WorldLineDraw{line_sites[branch], *from, *to, c.color(0x3ecb18), 2.5f});
        }
}
} // namespace rust_internal_re
