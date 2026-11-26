#include "imgui_window_details_internal.hpp"
namespace rust_internal_re::window_details {
namespace {
Vec2 interpolate(Vec2 a, Vec2 b, Vec2 t) {
    return {(b.x - a.x) * t.x + a.x, (b.y - a.y) * t.y + a.y};
}
ReU32 seed(ImguiWindowDetailsState &s, Address w) {
    const auto n = read<int>(s, w + 0xf0, 0x39e304);
    const auto data = read<Address>(s, w + 0xf8, 0x39e304);
    return read<ReU32>(s, data + Address(ReI64(sub(n, 1))) * 4, 0x39e304);
}
ReU32 resize_id(ImguiWindowDetailsState &s, Address w, ReU32 index) {
    auto hash = ~seed(s, w);
    for (unsigned i = 0; i < 4; ++i) {
        auto table = (hash ^ ((index >> (8 * i)) & 255u)) & 255u;
        for (int bit = 0; bit < 8; ++bit)
            table = (table >> 1) ^ ((table & 1) ? 0xedb88320u : 0u);
        hash = (hash >> 8) ^ table;
    }
    return ~hash;
}
void scope_push(ImguiWindowDetailsState &s, const ImguiWindowsApi &api) {
    const auto w = current(s);
    const auto id = menu_controls_hash_39334c("#RESIZE", seed(s, w));
    const auto bytes = re::re_bit_cast<re::ReArray<ReByte, 4>>(id);
    window_detail::push_bytes(windows(s), api, w + 0xf0, bytes, 0x39eee8);
}
void scope_pop(ImguiWindowDetailsState &s) {
    const auto w = current(s);
    write(s, w + 0xf0, sub(read<int>(s, w + 0xf0, 0x39eea0), 1), 0x39eea0);
}
Vec2 key_vector(ImguiWindowDetailsState &s, int left, int right, int up, int down) {
    const auto d = menu_detail::key_data(controls(s), down);
    const auto u = menu_detail::key_data(controls(s), up);
    const auto y = read<float>(s, d + 0xc, 0x392755) - read<float>(s, u + 0xc, 0x39275c);
    const auto r = menu_detail::key_data(controls(s), right);
    const auto l = menu_detail::key_data(controls(s), left);
    return {read<float>(s, r + 0xc, 0x392770) - read<float>(s, l + 0xc, 0x39277b), y};
}
void corner_resize(ImguiWindowDetailsState &s, const ImguiWindowsApi &api, Address w, Vec2 corner,
                   Vec2 ratio, Vec2 &position, Vec2 &size) {
    const auto old_position = read<Vec2>(s, w + 0x20, 0x38f5ef);
    const auto old_size = read<Vec2>(s, w + 0x28, 0x38f5ff);
    position = interpolate(corner, old_position, ratio);
    const auto maximum =
        interpolate({old_position.x + old_size.x, old_position.y + old_size.y}, corner, ratio);
    const Vec2 requested{maximum.x - position.x, maximum.y - position.y};
    size = window_detail::constrain_size(windows(s), api, w, requested);
    if (ratio.x == 0)
        position.x -= size.x - requested.x;
    if (ratio.y == 0)
        position.y -= size.y - requested.y;
}
} // namespace
} // namespace rust_internal_re::window_details
namespace rust_internal_re {
// [C/I]39d760..39e0f5 including post-RET/distant39e071/39e089 blocks.
ImguiWindowResize imgui_window_details_resize_39d760(ImguiWindowDetailsState &s,
                                                     const ImguiWindowsApi &api, Address w,
                                                     Vec2 auto_fit, ReI32 grip_count,
                                                     ClipRect visibility) {
    using namespace window_details;
    ImguiWindowResize result;
    if (read<ReU8>(s, w + 0x14, 0x39d789) & 0x42)
        return result;
    if (read<ReI8>(s, w + 0xd0, 0x39d7de) > 0 ||
        read<ReI8>(s, w + 0xd1, 0x39d7eb) > 0 || !read<ReU8>(s, w + 0xb7, 0x39d7f8))
        return result;
    const auto c = context(s);
    const auto rounding = read<float>(s, w + 0x58, 0x39d80c);
    const auto one = read<float>(s, 0x28d254, 0x39d811);
    const auto font = read<float>(s, c + 0x3c30, 0x39d824);
    const bool edges = read<ReU8>(s, c + 0x7e, 0x39d82c);
    const auto edge_count = edges ? 4 : 0;
    const auto minimum =
        trunc(menu_detail::maxss(font * read<float>(s, 0x2930fc, 0x39d83c),
                                 (rounding + one) + font * read<float>(s, 0x2930a8, 0x39d832)));
    const auto inner = trunc(minimum * read<float>(s, 0x2941b4, 0x39d878));
    const auto four = read<float>(s, 0x293178, 0x39d864);
    const auto outer = read<ReU8>(s, c + 0x7e, 0x39d85c) ? four : 0;
    const auto maximum = read<float>(s, 0x28db54, 0x39d899);
    Vec2 desired_position{maximum, maximum}, desired_size{maximum, maximum};
    write(s, w + 0x158, 1u, 0x39d8cf);
    scope_push(s, api);
    const auto negative_maximum = read<float>(s, 0x2a9444, 0x39d8f5);
    if (grip_count > 4)
        { __builtin_trap(); }
    for (int i = 0; i < grip_count; ++i) {
        const auto record = Address(0x2a9460) + Address(i) * 24;
        const auto p = read<Vec2>(s, w + 0x20, 0x39d919);
        const auto size = read<Vec2>(s, w + 0x28, 0x39d921);
        const auto ratio = read<Vec2>(s, record, 0x39d969);
        const auto corner = interpolate(p, {p.x + size.x, p.y + size.y}, ratio);
        const auto direction = read<Vec2>(s, record + 8, 0x39d984);
        ClipRect hit{corner.x + direction.x * inner, corner.y + direction.y * inner,
                     corner.x - direction.x * outer, corner.y - direction.y * outer};
        if (hit.x > hit.z)
            re::re_swap(hit.x, hit.z);
        if (hit.y > hit.w)
            re::re_swap(hit.y, hit.w);
        const auto id = resize_id(s, w, ReU32(i));
        (void)menu_detail::item_add(controls(s), api.controls, hit, id, {}, 8);
        const auto action =
            menu_controls_button_behavior_3bc7e0(controls(s), api.controls, hit, id, 0x40800);
        if (action.hovered || action.held)
            write(s, c + 0x4a88, ReU32(((~i) & 1) + 5), 0x39da75);
        if (action.held) {
            if (read<ReU16>(s, c + 0x3752, 0x39da88) == 2 && i == 0) {
                desired_size = window_detail::constrain_size(windows(s), api, w, auto_fit);
                result.changed = true;
                menu_detail::set_active(controls(s), api.controls, 0, 0);
            } else {
                const Vec2 low{ratio.x == one ? visibility.x : negative_maximum,
                               ratio.y == one ? visibility.y : negative_maximum},
                    high{ratio.x == 0 ? visibility.z : maximum,
                         ratio.y == 0 ? visibility.w : maximum};
                const auto adjustment =
                    interpolate({direction.x * (-inner), direction.y * (-inner)},
                                {direction.x * outer, direction.y * outer}, ratio);
                const auto mouse = read<Vec2>(s, c + 0xe08, 0x39db95);
                const auto click = read<Vec2>(s, c + 0x3f7c, 0x39db8b);
                Vec2 target{(mouse.x - click.x) + adjustment.x, (mouse.y - click.y) + adjustment.y};
                target = {clamp(target.x, low.x, high.x), clamp(target.y, low.y, high.y)};
                corner_resize(s, api, w, target, ratio, desired_position, desired_size);
            }
        }
        if (i == 0 || action.held || action.hovered)
            result.colors[ReUSize(i)] = menu_detail::style_color(controls(s),
                                                                     action.held      ? 33u
                                                                     : action.hovered ? 32u
                                                                                      : 31u,
                                                                     one);
    }
    for (int i = 0; i < edge_count; ++i) {
        const int axis = i >= 2 ? 1 : 0;
        const auto cursor = axis ? 3u : 4u;
        const auto hit = resize_border_rect(s, w, i, inner, four);
        const auto id = resize_id(s, w, ReU32(i + 4));
        (void)menu_detail::item_add(controls(s), api.controls, hit, id, {}, 8);
        const auto action =
            menu_controls_button_behavior_3bc7e0(controls(s), api.controls, hit, id, 0x40800);
        if ((action.hovered &&
             read<float>(s, c + 0x3f60, 0x39dce8) > read<float>(s, 0x2aa13c, 0x39dcf0)) ||
            action.held)
            write(s, c + 0x4a88, cursor, 0x39dd01);
        if (action.held) {
            result.held = i;
            const Vec2 low{i == 1 ? visibility.x : negative_maximum,
                           i == 3 ? visibility.y : negative_maximum},
                high{i == 0 ? visibility.z : maximum, i == 2 ? visibility.w : maximum};
            auto target = read<Vec2>(s, w + 0x20, 0x39dd5b);
            const auto mouse = read<float>(s, c + 0xe08 + Address(axis) * 4, 0x39dd87);
            const auto click = read<float>(s, c + 0x3f7c + Address(axis) * 4, 0x39dd93);
            (axis ? target.y : target.x) = (mouse - click) + four;
            target = {clamp(target.x, low.x, high.x), clamp(target.y, low.y, high.y)};
            const auto record = Address(0x2a94c0) + Address(i) * 28;
            const auto a = read<Vec2>(s, record + 8, 0x39dde6);
            const auto b = read<Vec2>(s, record + 16, 0x39ddcc);
            const Vec2 ratio{menu_detail::minss(a.x, b.x), menu_detail::minss(a.y, b.y)};
            corner_resize(s, api, w, target, ratio, desired_position, desired_size);
        }
    }
    scope_pop(s);
    write(s, w + 0x158, 0u, 0x39de1d);
    const auto windowing = read<Address>(s, c + 0x4a50, 0x39de27);
    if (windowing && read<Address>(s, windowing + 0x378, 0x39de37) == w) {
        Vec2 input{};
        if (read<ReU32>(s, c + 0x491c, 0x39de50) == 2 &&
            read<ReU8>(s, c + 0xe25, 0x39de59))
            input = key_vector(s, 0x201, 0x202, 0x203, 0x204);
        if (read<ReU32>(s, c + 0x491c, 0x39de8f) == 3)
            input = key_vector(s, 0x26f, 0x270, 0x271, 0x272);
        if (input.x != 0 || input.y != 0) {
            const auto delta_time = read<float>(s, c + 0x18, 0x39dee9);
            const auto height = read<float>(s, c + 0x74, 0x39def5);
            const auto width = read<float>(s, c + 0x70, 0x39defa);
            const auto speed = menu_detail::minss(width, height) *
                               (delta_time * read<float>(s, 0x2aa150, 0x39deff));
            auto accumulated = read<Vec2>(s, c + 0x4a7c, 0x38cc48);
            accumulated.x += input.x * speed;
            accumulated.y += input.y * speed;
            write(s, c + 0x4a7c, accumulated, 0x38cc48);
            const auto p = read<Vec2>(s, w + 0x20, 0x39df2f);
            const auto size = read<Vec2>(s, w + 0x28, 0x39df45);
            accumulated = {menu_detail::maxss(accumulated.x, (visibility.x - p.x) - size.x),
                           menu_detail::maxss(accumulated.y, (visibility.y - p.y) - size.y)};
            write(s, c + 0x4a7c, accumulated, 0x39df6f);
            write(s, c + 0x4a70, ReU8(0), 0x39df74);
            write(s, c + 0x4927, ReU8(1), 0x39df7b);
            result.colors[0] = menu_detail::style_color(controls(s), 33, one);
            const Vec2 rounded{trunc(accumulated.x), trunc(accumulated.y)};
            if (rounded.x != 0 || rounded.y != 0) {
                const auto full = read<Vec2>(s, w + 0x30, 0x39dfbf);
                desired_size = window_detail::constrain_size(
                    windows(s), api, w, {full.x + rounded.x, full.y + rounded.y});
                const auto old = read<Vec2>(s, c + 0x4a7c, 0x38cc68);
                write(s, c + 0x4a7c, Vec2{old.x - rounded.x, old.y - rounded.y}, 0x38cc68);
            }
        }
    }
    if (desired_size.x != maximum) {
        write(s, w + 0x30, desired_size, 0x39e023);
        window_detail::dirty(windows(s), w);
    }
    if (desired_position.x != maximum) {
        write(s, w + 0x20, Vec2{trunc(desired_position.x), trunc(desired_position.y)}, 0x39e057);
        window_detail::dirty(windows(s), w);
    }
    write(s, w + 0x28, read<Vec2>(s, w + 0x30, 0x39e061), 0x39e06a);
    return result;
}
// [C] 0x38f5d0..38f6b8: corner resize position/size computation.
void imgui_window_details_corner_resize_38f5d0(ImguiWindowDetailsState &s,
                                                const ImguiWindowsApi &api, Address w, Vec2 corner,
                                                Vec2 ratio, Vec2 &position, Vec2 &size) {
    using namespace window_details;
    corner_resize(s, api, w, corner, ratio, position, size);
}
// [C] 0x392724..392797: build key vector from directional key data.
Vec2 imgui_window_details_key_vector_392724(ImguiWindowDetailsState &s, int left, int right,
                                             int up, int down) {
    using namespace window_details;
    return key_vector(s, left, right, up, down);
}
} // namespace rust_internal_re
