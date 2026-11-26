#include "imgui_navigation_internal.hpp"
namespace rust_internal_re {
using namespace navigation_detail;
namespace {
float interval(float minimum, float maximum, float reference_minimum, float reference_maximum) {
    if (reference_minimum > maximum)
        return maximum - reference_minimum;
    if (minimum > reference_maximum)
        return minimum - reference_maximum;
    return 0;
}
float lerp(float a, float b, float t) {
    return (b - a) * t + a;
}
int quadrant(float x, float y) {
    return re::re_fabs(x) > re::re_fabs(y) ? int(x > 0) : 2 + int(y > 0);
}
bool equal(float a, float b) {
    return a == b;
} // Unordered comparisons are false.
} // namespace
bool imgui_navigation_score_395db8(MenuControlsState &s, Address result) {
    const auto c = context(s), window = read<Address>(s, c + 0x3f08, 0x395ddd);
    const auto layer = read<ReU32>(s, window + 0x158, 0x395df4);
    if (read<ReU32>(s, c + 0x4920, 0x395e12) != layer)
        return false;
    auto rectangle = read<ClipRect>(s, c + 0x47c0, 0x395e1e);
    const auto nav_window = read<Address>(s, c + 0x48e8, 0x395e25);
    write(s, c + 0x497c, read<ReU32>(s, c + 0x497c, 0x395e31) + 1u, 0x395e31);
    const auto ref_x0 = read<float>(s, c + 0x495c, 0x395e37);
    const auto ref_y0 = read<float>(s, c + 0x4960, 0x395e40);
    const auto ref_x1 = read<float>(s, c + 0x4964, 0x395e49);
    const auto ref_y1 = read<float>(s, c + 0x4968, 0x395e52);
    if (read<Address>(s, window + 0x368, 0x395e61) == nav_window) {
        const auto clip = read<ClipRect>(s, window + 0x238, 0x395e6a);
        if (!menu_detail::overlaps(clip, rectangle))
            return false;
        const auto clamp = [](float x, float a, float b) {
            return a > x ? a : menu_detail::minss(b, x);
        };
        rectangle = {clamp(rectangle.x, clip.x, clip.z), clamp(rectangle.y, clip.y, clip.w),
                     clamp(rectangle.z, clip.x, clip.z), clamp(rectangle.w, clip.y, clip.w)};
    }
    float dx = interval(rectangle.x, rectangle.z, ref_x0, ref_x1);
    const auto top = lerp(ref_y0, ref_y1, 0.8f);
    const auto bottom = lerp(ref_y0, ref_y1, 0.2f);
    const auto dy = interval(lerp(rectangle.y, rectangle.w, 0.2f),
                             lerp(rectangle.y, rectangle.w, 0.8f), bottom, top);
    if (dy != 0 && dx != 0)
        dx = dx / 1000.0f + (dx > 0 ? 1.0f : -1.0f);
    const auto box_distance = re::re_fabs(dy) + re::re_fabs(dx);
    const auto center_y = (rectangle.y + rectangle.w) - (ref_y0 + ref_y1);
    const auto center_x = (rectangle.x + rectangle.z) - (ref_x0 + ref_x1);
    const auto center_distance = re::re_fabs(center_y) + re::re_fabs(center_x);
    float axial_x = dx, axial_y = dy; auto axial_distance = box_distance;
    int direction;
    if (dx == 0 && dy == 0) {
        if (center_x == 0 && center_y == 0) {
            direction = read<ReU32>(s, c + 0x47a4, 0x395fdb) >=
                        read<ReU32>(s, c + 0x48f0, 0x395fd2);
            axial_x = axial_y = axial_distance = 0;
        } else {
            axial_x = center_x;
            axial_y = center_y;
            axial_distance = center_distance;
            direction = quadrant(center_x, center_y);
        }
    } else
        direction = quadrant(dx, dy);
    const auto requested = read<ReI32>(s, c + 0x4950, 0x39601c);
    bool selected = false;
    if (direction == requested) {
        const auto best = read<float>(s, result + 0x24, 0x396029);
        if (best > box_distance) {
            write(s, result + 0x24, box_distance, 0x396034);
            write(s, result + 0x28, center_distance, 0x39603d);
            return true;
        }
        if (equal(box_distance, best)) {
            const auto best_center = read<float>(s, result + 0x28, 0x396050);
            if (best_center > center_distance) {
                write(s, result + 0x28, center_distance, 0x39605b);
                selected = true;
            } else if (equal(center_distance, best_center)) {
                const auto axis = ReU32(requested) - 2 <= 1 ? dy : dx;
                if (0 > axis)
                    selected = true;
            }
        }
    }
    if (equal(read<float>(s, result + 0x24, 0x396082), re::ReNumericLimits<float>::max()) &&
        read<float>(s, result + 0x2c, 0x396092) > axial_distance &&
        read<ReU32>(s, c + 0x4920, 0x39609d) == 1 &&
        !(read<ReU32>(s, read<Address>(s, c + 0x48e8, 0x3960a5) + 0x14, 0x3960ac) &
          0x10000000u)) {
        if ((requested == 0 && 0 > axial_x) || (requested == 1 && axial_x > 0) ||
            (requested == 2 && 0 > axial_y) || (requested == 3 && axial_y > 0)) {
            write(s, result + 0x2c, axial_distance, 0x3960df);
            selected = true;
        }
    }
    return selected;
}
// [C] 0x396134..0x39614e: compute interval distance between two ranges
// Semantics: standalone binary entry for the local interval() helper above.
float navigation_interval_396134(float minimum, float maximum,
                                 float reference_minimum, float reference_maximum) {
    if (reference_minimum > maximum)
        return maximum - reference_minimum;
    if (minimum > reference_maximum)
        return minimum - reference_maximum;
    return 0;
}
// [C] 0x3932b0..0x393310: determine directional quadrant from displacement
// Semantics: standalone binary entry for the local quadrant() helper above.
ReU32 navigation_quadrant_3932b0(float x, float y) {
    return re::re_fabs(x) > re::re_fabs(y) ? ReU32(x > 0) : 2 + ReU32(y > 0);
}
} // namespace rust_internal_re
