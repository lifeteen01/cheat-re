#include "world_esp_analysis.hpp"
namespace rust_internal_re {
Vec3 closest_world_bounds_365f90(const WorldBoundsData &bounds, Vec3 point) {
    const Vec3 center = bounds.center(), delta = point - center;
    Vec3 result = center;
    const re::ReArray<Vec3, 3> axes{{{bounds.words[13], bounds.words[14], bounds.words[15]},
                                    {bounds.words[16], bounds.words[17], bounds.words[18]},
                                    {bounds.words[10], bounds.words[11], bounds.words[12]}}};
    const re::ReArray<float, 3> extents{bounds.words[7], bounds.words[8], bounds.words[9]};
    bool inside = true;
    for (ReUSize i = 0; i < 3; ++i) {
        const Vec3 axis = axes[i];
        const float e = extents[i];
        // [C] Dot helper 366184 sums y product, x product, z product in that order.
        const float projection = (axis.y * delta.y + axis.x * delta.x) + axis.z * delta.z;
        if (projection > e) {
            result = result + axis * e;
            inside = false;
        } else if (-e > projection) {
            result = result - axis * e;
            inside = false;
        } else
            result = result + axis * projection;
    }
    // [C] COMISS/JBE treats unordered projections as within; all-three-inside returns input.
    return inside ? point : result;
}
re::ReOptional<float> entity_bounds_distance_3666b0(Address entity, Vec3 point,
                                                   const WorldClassifierBackend &b) {
    if (!sample_pointer_range(entity))
        return 0.0f;
    if (!b.bounds_query_3664cc)
        { __builtin_trap(); }
    const auto bounds = b.bounds_query_3664cc(entity);
    if (!bounds)
        return {};
    const auto closest = closest_world_bounds_365f90(*bounds, point);
    return length(closest - point);
}
} // namespace rust_internal_re
