#include "re_compat.h"
#include "world_esp_analysis.hpp"
namespace rust_internal_re {
re::ReString world_grid_315518(Vec3 point, const re::ReOptional<WorldGridData> &terrain) {
    if (!terrain)
        return "No Grid";
    const auto &t = *terrain;
    const auto count = world_cvttss2si(t.size_3743f8.x / 146.3f);
    if (count <= 0)
        return {};
    const float z = (point.z - t.position_3743b4.z) * t.inverse_374370.z;
    const float x = (point.x - t.position_3743b4.x) * t.inverse_374370.x;
    const auto rows = world_cvttss2si(float(count) * z);
    const auto wrapped =
        re::re_bit_cast<ReI32>(ReU32(count) - ReU32(rows) - 1);
    const auto clamp = [](float value, float minimum, float maximum) {
        if (minimum > value)
            return minimum;
        return maximum < value ? maximum : value;
    };
    const auto row = world_cvttss2si(clamp(float(wrapped), 1, float(count)));
    const auto column = world_cvttss2si(float(count) * x);
    const auto bounded = world_cvttss2si(clamp(float(column), 0, 25));
    const char letter = char(ReU8(ReU32(bounded) + 0x41));
    return re::re_string_fill(1, letter) + re::re_to_string(row);
}
} // namespace rust_internal_re
