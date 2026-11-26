#include "frame_dependencies_main_menu.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re {
namespace {
struct Stop {
    UnityStatus status;
    Rva site;
};
[[noreturn]] void stop(UnityStatus s, Rva r) {
    __builtin_trap();
}
template <class F> FrameDependencyResult protect(F &&f) {
    FrameDependencyResult r;
    {
        f();
    }
    return r;
}
void check(FrameDependencyResult r) {
    if (r.status != UnityStatus::complete)
        stop(r.status, r.stopped_at);
}
template <class T>
T get(const FrameMainMenuApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    if (!a.effects.unity.external)
        stop(UnityStatus::missing_dependency, r);
    auto v = a.effects.unity.external(r, re::ReSpan<const UnityValue>(args.begin(), args.size()));
    if (!v)
        stop(UnityStatus::missing_dependency, r);
    if (auto p = re::re_get_if<T>(&*v))
        return *p;
    stop(UnityStatus::callback_type_mismatch, r);
}
void call(const FrameMainMenuApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    (void)get<re::ReMonostate>(a, r, args);
}
ReU32 raw(const FrameMenuState &s, Rva r) {
    auto p = s.values.find(r);
    return !p ? 0 : **p;
}
bool flag(const FrameMenuState &s, Rva r) {
    return (raw(s, r) & 255) != 0;
}
ReI32 integer(const FrameMenuState &s, Rva r) {
    return re::re_bit_cast<ReI32>(raw(s, r));
}
float number(const FrameMenuState &s, Rva r) {
    return re::re_bit_cast<float>(raw(s, r));
}
void store(FrameMenuState &s, Rva r, float v) {
    s.values[r] = re::re_bit_cast<ReU32>(v);
}
template <class T> T read(const FrameMainMenuApi &a, Address p, Rva site) {
    if (!a.imgui)
        stop(UnityStatus::missing_dependency, site);
    auto v = a.imgui->read<T>(p);
    if (!v)
        stop(UnityStatus::unreadable_snapshot, site);
    return *v;
}
template <class T> void write(const FrameMainMenuApi &a, Address p, T v, Rva site) {
    if (!a.imgui)
        stop(UnityStatus::missing_dependency, site);
    if (!a.imgui->write(p, v))
        stop(UnityStatus::unreadable_snapshot, site);
}
float context(const FrameMainMenuApi &a, ReU32 offset, Rva site) {
    return read<float>(a, a.context + offset, site);
}
float delta(const FrameMainMenuApi &a) {
    const auto io = get<Address>(a, 0x3926ac);
    return read<float>(a, io + 0x10, 0x3926ac);
}
Vec2 add(Vec2 x, Vec2 y) {
    return {x.x + y.x, x.y + y.y};
}
FrameMenuCategory &category(FrameMenuState &s, FrameMainMenuState &m) {
    const auto index = ReU64(ReI64(integer(s, 0x3fc100)));
    if (index >= m.categories.size())
        stop(UnityStatus::unreadable_snapshot, 0x3367b0);
    return m.categories[static_cast<ReUSize>(index)];
}
void page(FrameMenuState &s, FrameMainMenuState &m, const FrameMainMenuApi &a, Rva r) {
    if (!a.page)
        stop(UnityStatus::missing_dependency, r);
    check(a.page(r, s, m));
}
ReI32 color(const FrameMainMenuApi &a, ReI32 i, float alpha) {
    return get<ReI32>(a, 0x392298, {i, alpha});
}
void rect(const FrameMainMenuApi &a, Address draw, Vec2 p, Vec2 q, ReI32 c, float rounding,
          ReI32 flags) {
    call(a, 0x3a1244, {draw, p, q, c, rounding, flags});
}
// [C] Calls are deliberately separated: native obtains window position/size
// repeatedly, and callbacks may return different values on consecutive reads.
void background(const FrameMainMenuApi &a, Address draw, ReI32 c, float rounding,
                ReI32 flags, bool content_extent = false) {
    Vec2 end;
    if (content_extent) {
        const auto x = get<Vec2>(a, 0x392ef8).x;
        const auto width = get<float>(a, 0x392f34);
        const auto y = get<Vec2>(a, 0x392ef8).y;
        const auto height = get<float>(a, 0x392ee4);
        end = {x + width, y + height};
    } else {
        const auto size = get<Vec2>(a, 0x392f14);
        end = add(get<Vec2>(a, 0x392ef8), size);
    }
    rect(a, draw, get<Vec2>(a, 0x392ef8), end, c, rounding, flags);
}
void child(const FrameMainMenuApi &a, re::ReString name, Vec2 size, ReI32 flags) {
    (void)get<bool>(a, 0x38e97c, {re::re_move(name), size, false, flags});
}
void search_cleanup(const FrameMainMenuApi &a) {
    call(a, 0x39896c, {ReI32(1)});
    call(a, 0x390a88);
    call(a, 0x390a88);
    call(a, 0x39896c, {ReI32(1)});
}
bool match(FrameMainMenuState &m, re::ReStringView haystack, re::ReStringView needle) {
    // [C] Preserve two alternating buffers and4095-byte truncation independently.
    const re::ReString wanted(frame_lowercase_389e84(m, needle));
    const auto text = frame_lowercase_389e84(m, haystack);
    return text.find(wanted) != re::ReStringView::npos;
}
} // namespace
re::ReStringView frame_lowercase_389e84(FrameMainMenuState &s, re::ReStringView text) {
    auto &out = s.lowercase_buffers[s.lowercase_index & 1u];
    s.lowercase_index = 1u - (s.lowercase_index & 1u);
    const auto nul = text.find('\0');
    const auto count =
        re::re_min<ReUSize>(4095, nul == re::ReStringView::npos ? text.size() : nul);
    out = text.substr(0, count);
    for (ReUSize i__ = 0; i__ < out.size(); ++i__)
        if (out[i__] >= 'A' && out[i__] <= 'Z')
            out[i__] = static_cast<char>(out[i__] + 32);
    return out;
}
float frame_interpolate_33565c(float current, float target, float step) {
    return current + (target - current) * step;
}
FrameDependencyResult frame_initialize_points_3873f0(FrameMainMenuState &m,
                                                     const FrameMainMenuApi &a) {
    return protect([&] {
        UnityCacheSpec spec;
        spec.wrapper = 0x388a14;
        spec.flags = 0x4036e8;
        spec.target = 0x4036e0;
        spec.context = 0x4036f0;
        spec.resolver = 0x3349ac;
        spec.name_space = "UnityEngine";
        spec.klass = "Random";
        spec.method = "Range";
        const auto random = [&](float low, float high) {
            if (!(m.random_cache.flags & 1u)) {
                m.random_cache.flags |= 1u;
                if (!a.effects.unity.resolve_target)
                    stop(UnityStatus::missing_dependency, 0x3349ac);
                const auto r = a.effects.unity.resolve_target(spec);
                if (r.status != MetadataStatus::complete)
                    stop(UnityStatus::unresolved_target, 0x3349ac);
                m.random_cache.target = r.value;
            }
            if (!(m.random_cache.flags & 2u)) {
                m.random_cache.flags |= 2u;
                if (!a.effects.unity.detect_context ||
                    !a.effects.unity.detect_context(spec, m.random_cache.target))
                    stop(UnityStatus::missing_dependency, 0x2cbd24);
                m.random_cache.context_detected = true;
            }
            return get<float>(a, 0x388a14, {low, high});
        };
        for (ReUSize i = 0; i < 144; ++i) {
            const float y = random(0, 1) * 580.0f;
            const float x = random(0, 1) * 850.0f;
            m.points[i] = {x, y};
            const float vy = random(-5, 5) * 5.0f;
            const float vx = random(-5, 5) * 5.0f;
            m.velocities[i] = {vx, vy};
        }
    });
}
FrameDependencyResult frame_render_points_386fa4(FrameMainMenuState &m, const FrameMainMenuApi &a) {
    return protect([&] {
        (void)get<Address>(a, 0x3926ac);
        for (ReUSize i = 0; i < 143; ++i)
            for (ReUSize j = i + 1; j < 144; ++j) {
                const auto p = m.points[i], q = m.points[j];
                const float y = q.y - p.y, x = q.x - p.x;
                const float alpha = 1.0f - re::re_sqrtf(y * y + x * x) / 55.0f;
                if (!(alpha > 0))
                    continue;
                const auto c = color(a, 0, alpha);
                const auto draw = get<Address>(a, 0x392ecc);
                const auto end = add(get<Vec2>(a, 0x392ef8), m.points[j]);
                const auto start = add(get<Vec2>(a, 0x392ef8), m.points[i]);
                call(a, 0x3a01f4, {draw, start, end, c, 1.0f});
            }
        const auto dt = delta(a);
        for (ReUSize i = 0; i < 144; ++i) {
            auto &p = m.points[i];
            auto &v = m.velocities[i];
            p.x = v.x * dt + p.x;
            p.y = dt * v.y + p.y;
            // [C] Native COMISS/jb treats unordered as the taken branch here.
            if (p.x <= 0)
                v.x = -v.x;
            const float width = get<float>(a, 0x392f34);
            if (p.x >= width)
                v.x = -v.x;
            if (p.y <= 0)
                v.y = -v.y;
            const float height = get<float>(a, 0x392ee4);
            if (p.y >= height)
                v.y = -v.y;
            const auto draw = get<Address>(a, 0x392ecc);
            const auto c = color(a, 0, 1.0f);
            const auto center = add(get<Vec2>(a, 0x392ef8), p);
            call(a, 0x39f874, {draw, center, 1.5f, c, ReI32(0)});
        }
    });
}
FrameDependencyResult frame_menu_animations_3872e8(FrameMenuState &s, FrameMainMenuState &m,
                                                   const FrameMainMenuApi &a) {
    return protect([&] {
        store(s, 0x3fc0f8,
              frame_interpolate_33565c(number(s, 0x3fc0f8), number(s, 0x27fa10),
                                       number(s, 0x3fcaf8) * delta(a)));
        store(s, 0x3fc0fc,
              frame_interpolate_33565c(number(s, 0x3fc0fc), number(s, 0x27fa14),
                                       number(s, 0x3fcaf8) * delta(a)));
        bool first = .001f > number(s, 0x3fc0f8), second = .001f > number(s, 0x3fc0fc);
        if (flag(s, 0x3fc518)) {
            first = second = true;
            store(s, 0x3fc0f8, 1);
            store(s, 0x3fc0fc, 1);
        }
        if (first) {
            s.values[0x3fc100] = raw(s, 0x402dd4);
            store(s, 0x27fa10, 1);
        }
        if (second) {
            store(s, 0x27fa14, 1);
            auto &c = category(s, m);
            c.selected = c.requested;
        }
    });
}
FrameDependencyResult frame_menu_page_388b4c(FrameMenuState &s, FrameMainMenuState &m,
                                             const FrameMainMenuApi &a) {
    return protect([&] {
        auto &c = category(s, m);
        const auto selected = ReU64(ReI64(c.selected));
        if (c.pages.empty() || selected >= c.pages.size())
            return;
        if (raw(s, 0x3fc100) != raw(s, 0x402dd4)) {
            const auto first = get<Address>(a, 0x35d200);
            write(a, first + 0x88, 0.0f, 0x388bb8);
            const auto second = get<Address>(a, 0x35d200);
            write(a, second + 0x98, 0.0f, 0x388bc7);
        }
        auto &actual = category(s, m);
        const auto idx = ReU64(ReI64(actual.selected));
        if (idx >= actual.pages.size())
            stop(UnityStatus::unreadable_snapshot, 0x2ef7b4);
        page(s, m, a, actual.pages[static_cast<ReUSize>(idx)]);
    });
}

namespace {
ReU32 packed_color(ClipRect value) {
    const auto byte = [](float v) {
        // [C]3789fc: COMISS zero then MINSS(1,v), so NaN propagates.
        const float clamped = v < 0 ? 0 : (1.0f < v ? 1.0f : v);
        const float scaled = clamped * 255.0f + .5f;
        if (!re::re_isfinite(scaled))
            return ReU32(0x80000000u);
        return static_cast<ReU32>(static_cast<ReI32>(scaled));
    };
    return byte(value.x) | (byte(value.y) << 8) | (byte(value.z) << 16) | (byte(value.w) << 24);
}
ClipRect unpack(ReI32 packed) {
    const auto x = re::re_bit_cast<ReU32>(packed);
    constexpr float scale = re::re_bit_cast<float>(0x3b808081u);
    return {float(x & 255) * scale, float((x >> 8) & 255) * scale, float((x >> 16) & 255) * scale,
            float(x >> 24) * scale};
}
ClipRect color_lerp(ClipRect from, ClipRect to, float t) {
    // [C]3795a4 quantizes through39045c and3364d4 after EVERY lerp.
    const ClipRect v{
        frame_interpolate_33565c(from.x, to.x, t), frame_interpolate_33565c(from.y, to.y, t),
        frame_interpolate_33565c(from.z, to.z, t), frame_interpolate_33565c(from.w, to.w, t)};
    return unpack(re::re_bit_cast<ReI32>(packed_color(v)));
}
void save_color(re::ReArray<float, 12> &state, ReUSize at, ClipRect c) {
    state[at] = c.x;
    state[at + 1] = c.y;
    state[at + 2] = c.z;
    state[at + 3] = c.w;
}
void interpolate_state(float &value, bool yes, const FrameMainMenuApi &a) {
    value = frame_interpolate_33565c(value, yes ? 1.0f : 0.0f, 14.0f * delta(a));
}
Address bucket_font(FrameMenuState &s, unsigned i, float size) {
    auto &bucket = s.font_buckets[i];
    const auto f = bucket.fonts.find(size);
    if (bool(f))
        return **f;
    if (re::re_find(bucket.requested.begin(), bucket.requested.end(), size) == bucket.requested.end())
        bucket.requested.push_back(size);
    return 0;
}
} // namespace
FrameDependencyResult frame_category_widget_389830(FrameMenuState &s, FrameMainMenuState &m,
                                                   const FrameMainMenuApi &a, ReI32 index,
                                                   bool &pressed) {
    return protect([&] {
        if (index < 0 || ReUSize(index) >= m.categories.size())
            stop(UnityStatus::unreadable_snapshot, 0x3367b0);
        const auto icon = m.categories[ReUSize(index)].icon;
        const auto label = m.categories[ReUSize(index)].name;
        const auto window = get<Address>(a, 0x35d200);
        const auto style = get<Address>(a, 0x392ca4);
        // [C] GetID occurs before rectangle construction in the native body.
        const auto id = get<ReI32>(a, 0x392614, {window, label, Address(0)});
        const float scale = number(s, 0x248ee8);
        const float width = read<float>(a, window + 0x28, 0x3898d0) - scale * 28;
        const Vec2 start = read<Vec2>(a, window + 0x100, 0x3898f4);
        const Vec2 end{start.x + width, start.y + scale * 42};
        const ClipRect bounds{start.x, start.y, end.x, end.y};
        call(a, 0x394b40, {Vec2{end.x - start.x, end.y - start.y}, -1.0f});
        (void)get<bool>(a, 0x3948dc, {bounds, id, Address(0), ReI32(0)});
        if (!a.button_3bc7e0)
            stop(UnityStatus::missing_dependency, 0x3bc7e0);
        const auto b = a.button_3bc7e0(bounds, id, 0);
        if (!b)
            stop(UnityStatus::missing_dependency, 0x3bc7e0);
        pressed = b->pressed;
        const bool selected = index == integer(s, 0x402dd4);
        if (pressed && !selected) {
            store(s, 0x27fa10, 0);
            s.values[0x402dd4] = re::re_bit_cast<ReU32>(index);
        }
        const auto hash = get<ReI32>(a, 0x39334c, {label, Address(0), ReI32(4)});
        auto &state = m.category_animation[re::re_bit_cast<ReU32>(hash)];
        interpolate_state(state[0], selected || b->hovered, a);
        interpolate_state(state[2], selected, a);
        interpolate_state(state[1], b->hovered, a);
        interpolate_state(state[3], flag(s, 0x3fc105), a);
        auto active = unpack(color(a, 1, state[3]));
        auto hovered = unpack(color(a, 1, state[3] * .7f));
        auto base = unpack(color(a, 2, state[3]));
        const auto label_color = color_lerp(color_lerp(base, hovered, state[1]), active, state[2]);
        save_color(state, 4, label_color);
        active = unpack(color(a, 0, 1));
        hovered = unpack(color(a, 1, .7f));
        base = unpack(color(a, 2, 1));
        const auto icon_color = color_lerp(color_lerp(base, hovered, state[1]), active, state[2]);
        save_color(state, 8, icon_color);
        auto draw = read<Address>(a, window + 0x298, 0x389bfc);
        const float rounding = read<float>(a, style + 0x44, 0x389c03);
        const auto background_color = color(a, 8, state[2]);
        rect(a, draw, start, end, background_color, rounding, 0);
        draw = read<Address>(a, window + 0x298, 0x389c31);
        const auto font = bucket_font(s, 2, 16);
        const Vec2 icon_pos{start.x + scale * 13, start.y + scale * 13};
        call(a, 0x3a31f8,
             {draw, font, scale * 16, icon_pos,
              re::re_bit_cast<ReI32>(packed_color(icon_color)), icon, Address(0), 0.0f,
              Address(0)});
        draw = read<Address>(a, window + 0x298, 0x389cd5);
        const auto text_end = get<Address>(a, 0x391c50, {label, false});
        const Vec2 text_pos{start.x + scale * 42,
                            (start.y + end.y) * .5f - context(a, 0x3c30, 0x389d41) * .5f};
        call(a, 0x3a31bc,
             {draw, text_pos, re::re_bit_cast<ReI32>(packed_color(label_color)), label,
              text_end});
    });
}
FrameDependencyResult frame_subtab_widget_3893b0(FrameMenuState &s, FrameMainMenuState &m,
                                                 const FrameMainMenuApi &a, ReI32 index,
                                                 bool &pressed) {
    return protect([&] {
        auto &cat = category(s, m);
        if (index < 0 || ReUSize(index) >= cat.subtabs.size())
            stop(UnityStatus::unreadable_snapshot, 0x2d4d20);
        const auto label = cat.subtabs[ReUSize(index)];
        const auto window = get<Address>(a, 0x35d200);
        (void)get<Address>(a, 0x392ca4);
        const auto id = get<ReI32>(a, 0x392614, {window, label, Address(0)});
        const float height = read<float>(a, window + 0x2c, 0x389445);
        const auto measured = get<Vec2>(a, 0x38f79c, {label, Address(0), true, -1.0f});
        const auto start = read<Vec2>(a, window + 0x100, 0x38948f);
        const Vec2 end{start.x + measured.x, start.y + height};
        const ClipRect bounds{start.x, start.y, end.x, end.y};
        call(a, 0x394b40, {Vec2{end.x - start.x, end.y - start.y}, -1.0f});
        (void)get<bool>(a, 0x3948dc, {bounds, id, Address(0), ReI32(0)});
        if (!a.button_3bc7e0)
            stop(UnityStatus::missing_dependency, 0x3bc7e0);
        auto b = a.button_3bc7e0(bounds, id, 0);
        if (!b)
            stop(UnityStatus::missing_dependency, 0x3bc7e0);
        pressed = b->pressed;
        const bool selected = index == category(s, m).requested;
        if (pressed && !selected) {
            store(s, 0x27fa14, 0);
            category(s, m).requested = index;
        }
        const auto hash = get<ReI32>(a, 0x39334c, {label, Address(0), ReI32(5)});
        auto &state = m.subtab_animation[re::re_bit_cast<ReU32>(hash)];
        interpolate_state(state[0], b->hovered || selected, a);
        interpolate_state(state[2], selected, a);
        interpolate_state(state[1], b->hovered, a);
        const auto active = unpack(color(a, 1, 1));
        const auto hovered = unpack(color(a, 1, .7f));
        const auto base = unpack(color(a, 2, 1));
        const auto text_color = color_lerp(color_lerp(base, hovered, state[1]), active, state[2]);
        save_color(state, 3, text_color);
        auto draw = read<Address>(a, window + 0x298, 0x3896de);
        const auto c = color(a, 0, state[2]);
        rect(a, draw, {start.x, end.y - number(s, 0x248ee8) * 2}, end, c, 0, 0);
        draw = read<Address>(a, window + 0x298, 0x38973f);
        const auto text_end = get<Address>(a, 0x391c50, {label, false});
        const auto again = get<Vec2>(a, 0x38f79c, {label, Address(0), true, -1.0f});
        const Vec2 text_pos{start.x, (start.y + end.y) * .5f - again.y * .5f};
        call(a, 0x3a31bc,
             {draw, text_pos, re::re_bit_cast<ReI32>(packed_color(text_color)), label,
              text_end});
    });
}

FrameDependencyResult frame_search_child_384df0(FrameMenuState &s, FrameMainMenuState &m,
                                                const FrameMainMenuApi &a, re::ReString icon,
                                                re::ReString label, Vec2 request,
                                                bool register_search) {
    return protect([&] {
        const bool transparent = .99f > number(s, 0x3fc0f8) || .99f > number(s, 0x3fc0fc);
        const auto hash = get<ReI32>(a, 0x39334c, {label, Address(0), ReI32(0x1465)});
        auto &registered = m.search_child_registered[re::re_bit_cast<ReU32>(hash)];
        call(a, 0x398c60, {ReI32(2), Vec2{0, 0}});
        const float available = get<float>(a, 0x392f34);
        const float scale = number(s, 0x248ee8);
        const float default_width =
            available * .5f - context(a, 0x381c, 0x384ecb) * .5f - scale * 20;
        const auto size = get<Vec2>(a, 0x38f224, {request, default_width, 0.0f});
        (void)get<bool>(a, 0x38e97c,
                        {label + "main", size, true, ReI32(transparent ? 0x48 : 0x40)});
        if (register_search && !registered) {
            FrameSearchGroup group;
            group.category = integer(s, 0x3fc100);
            group.subtab = category(s, m).selected;
            group.id = icon;
            group.label = label;
            m.search_groups.push_back(re::re_move(group));
            registered = true;
        }
        const auto pos = get<Vec2>(a, 0x392ef8);
        const float width = get<float>(a, 0x392f34);
        const float header = scale * 44;
        auto draw = get<Address>(a, 0x392ecc);
        const float rounding = context(a, 0x37fc, 0x38500b);
        auto c = color(a, 8, 1);
        rect(a, draw, pos, add(pos, {width, header}), c, rounding, 0x30);
        draw = get<Address>(a, 0x392ecc);
        c = color(a, 6, 1);
        rect(a, draw, add(pos, {0, header - scale}), add(pos, {width, header}), c, 0, 0);
        const auto font = bucket_font(s, 2, 16);
        Vec2 icon_size;
        if (font)
            icon_size = get<Vec2>(a, 0x3a3874,
                                  {font, scale * 16, re::ReNumericLimits<float>::max(), 0.0f, icon,
                                   Address(0), Address(0)});
        else
            icon_size = get<Vec2>(a, 0x38f79c, {icon, Address(0), false, -1.0f});
        const auto text_size = get<Vec2>(a, 0x38f79c, {label, Address(0), false, -1.0f});
        const float icon_y = (header - icon_size.y) * .5f + pos.y;
        const float text_y = (header - text_size.y) * .5f + pos.y;
        draw = get<Address>(a, 0x392ecc);
        c = color(a, 0, 1);
        call(a, 0x3a31f8,
             {draw, font, scale * 16, Vec2{pos.x + scale * 14, icon_y}, c, icon, Address(0), 0.0f,
              Address(0)});
        draw = get<Address>(a, 0x392ecc);
        const auto end = get<Address>(a, 0x391c50, {label, false});
        c = color(a, 1, 1);
        call(a, 0x3a31bc, {draw, Vec2{pos.x + scale * 38, text_y}, c, label, end});
        const bool content_transparent = .99f > number(s, 0x3fc0f8) || .99f > number(s, 0x3fc0fc);
        call(a, 0x39b44c, {scale * 44});
        call(a, 0x398c60, {ReI32(2), Vec2{scale * 14, scale * 14}});
        // [C] Exact zero (including -0) retains zero; unordered/nonzero gives -1.
        const float height = request.y == 0 ? request.y : -1.0f;
        (void)get<bool>(
            a, 0x38e97c,
            {label, Vec2{0, height}, false, ReI32(content_transparent ? 0x10088 : 0x10080)});
        call(a, 0x39896c, {ReI32(1)});
        call(a, 0x398c60, {ReI32(14), Vec2{scale * 14, scale * 14}});
    });
}
FrameDependencyResult frame_main_menu_35fc8b(FrameMenuState &s, FrameMainMenuState &m,
                                             const FrameMainMenuApi &a) {
    return protect([&] {
        if (!flag(s, 0x3fd7b8)) {
            constexpr re::ReArray<re::RePair<unsigned, Rva>, 21> registrations = {
                {{0, 0x3354c0}, {0, 0x3353d0}, {0, 0x3353dc}, {1, 0x3353e8}, {1, 0x3353f4},
                 {1, 0x335400}, {1, 0x33540c}, {1, 0x335418}, {1, 0x335424}, {2, 0x335430},
                 {3, 0x33543c}, {3, 0x335448}, {3, 0x335454}, {3, 0x335460}, {3, 0x33546c},
                 {4, 0x335478}, {4, 0x335484}, {5, 0x335490}, {5, 0x33549c}, {5, 0x3354a8},
                 {6, 0x3354b4}}};
            for (const auto &[index, r] : registrations) {
                if (index >= m.categories.size())
                    stop(UnityStatus::unreadable_snapshot, 0x384cc0);
                m.categories[index].pages.push_back(r);
            }
            check(frame_initialize_points_3873f0(m, a));
            s.values[0x3fd7b8] = 1;
        }
        if (!flag(s, 0x3fdab8)) {
            for (ReUSize i = 0; i < m.categories.size(); ++i) {
                s.values[0x3fc100] = static_cast<ReU32>(i);
                // [C] The native inner loop is do/while and uses <= count.
                for (ReUSize j = 0;; ++j) {
                    auto &c = m.categories[i];
                    c.selected = static_cast<ReI32>(j);
                    if (j < c.pages.size())
                        page(s, m, a, c.pages[j]);
                    m.categories[i].selected = 0;
                    if (j >= m.categories[i].subtabs.size())
                        break;
                }
            }
            s.values[0x3fc100] = 0;
        }
        s.values[0x3fdab8] = 1;
        call(a, 0x398c60, {ReI32(2), Vec2{0, 0}});
        (void)get<bool>(a, 0x38cfa4, {re::ReString("UI"), Address(0), ReI32(0x2b)});
        call(a, 0x39896c, {ReI32(1)});
        check(frame_render_points_386fa4(m, a));
        auto window = get<Address>(a, 0x35d200);
        if (read<float>(a, window + 0x20, 0x35ff15) == 60.0f) {
            window = get<Address>(a, 0x35d200);
            write(a, window + 0x20, number(s, 0x248ee0), 0x35ff32);
            window = get<Address>(a, 0x35d200);
            write(a, window + 0x24, number(s, 0x248ee4), 0x35ff44);
        }
        window = get<Address>(a, 0x35d200);
        store(s, 0x248ee0, read<float>(a, window + 0x20, 0x35ff6b));
        store(s, 0x248ee4, read<float>(a, window + 0x24, 0x35ff78));
        store(s, 0x3fdabc,
              frame_interpolate_33565c(number(s, 0x3fdabc), flag(s, 0x3fc105) ? 1.0f : 0.0f,
                                       14.0f * delta(a)));
        const float scale = number(s, 0x248ee8);
        const float width =
            ((scale * 230.0f - scale * 104.0f) * number(s, 0x3fdabc)) + 850.0f * scale;
        call(a, 0x39bc6c, {Vec2{width, scale * 580.0f}, ReI32(0)});
        // [C] Search is a value COPY of FavoriteInputText before any widget call.
        const auto search = s.strings[0x3fd3a8];
        child(a, "header", {0, scale * 56.0f}, 0x80);
        const re::ReString title = "Rust Internal Pro";
        const auto measured = get<Vec2>(a, 0x38f79c, {title, Address(0), false, -1.0f});
        child(a, "name", {scale * 28.0f + measured.x, scale * 56.0f}, 0x80);
        const auto name_draw = get<Address>(a, 0x392ecc);
        auto rounding = context(a, 0x37e0, 0x36011e);
        auto c = color(a, 4, .95f);
        background(a, name_draw, c, rounding, 0xb0);
        const auto draw = get<Address>(a, 0x392ecc);
        rounding = context(a, 0x37e0, 0x360198);
        c = color(a, 6, 1);
        const auto size = get<Vec2>(a, 0x392f14);
        const auto end = add(get<Vec2>(a, 0x392ef8), size);
        const auto start = add(get<Vec2>(a, 0x392ef8), Vec2{100, 1});
        call(a, 0x3a1148, {draw, start, end, c, rounding, ReI32(0xa0), 1.0f});
        const float title_y = get<float>(a, 0x392ee4) * .5f - context(a, 0x3c30, 0x360282) * .5f;
        call(a, 0x39b3b8, {Vec2{scale * 14.0f, title_y}});
        call(a, 0x3c4e90, {title});
        call(a, 0x390a88);
        call(a, 0x39ac04, {0.0f, 0.0f});
        const float search_y = get<float>(a, 0x392ee4) * .5f - context(a, 0x3c30, 0x3602f1) * .5f;
        call(a, 0x398c60, {ReI32(11), Vec2{scale * 16.0f, search_y}});
        call(a, 0x398cc8, {ReI32(13), 0.0f});
        const auto search_width = get<float>(a, 0x392f34);
        const auto cursor = get<float>(a, 0x392424);
        call(a, 0x39b704, {search_width - cursor});
        c = color(a, 8, 0);
        call(a, 0x398bec, {ReI32(8), c});
        c = color(a, 0, 0);
        call(a, 0x398bec, {ReI32(0), c});
        (void)get<bool>(a, 0x3c2d5c,
                        {re::ReString("##search"), re::ReString("Search for functions..."), search,
                         Address(search.size()), ReI32(0x5000), Address(0), Address(0)});
        s.values[0x3fd4fa] = get<bool>(a, 0x39408c) ? 1u : 0u;
        call(a, 0x39890c, {ReI32(2)});
        call(a, 0x39896c, {ReI32(2)});
        const auto header_draw = get<Address>(a, 0x392ecc);
        c = color(a, 6, 1);
        const auto header_size = get<Vec2>(a, 0x392f14);
        const auto header_end = add(get<Vec2>(a, 0x392ef8), header_size);
        const auto header_height = get<float>(a, 0x392ee4) - 1.0f;
        const auto header_start = add(get<Vec2>(a, 0x392ef8), Vec2{0, header_height});
        rect(a, header_draw, header_start, header_end, c, 0, 0);
        call(a, 0x390a88);
        call(a, 0x39b3b8, {Vec2{0, scale * 57.0f}});
        child(a, "navbar",
              {(scale * 190.0f - scale * 70.0f) * number(s, 0x3fdabc) + scale * 70.0f, -1}, 0x80);
        s.values[0x3fc105] = get<bool>(a, 0x3947ec, {ReI32(0x80)}) ? 1u : 0u;
        const auto nav_background = get<Address>(a, 0x392ecc);
        rounding = context(a, 0x37e0, 0x36054d);
        c = color(a, 4, .9f);
        background(a, nav_background, c, rounding, 0x40, true);
        const auto nav_draw = get<Address>(a, 0x392ecc);
        c = color(a, 6, 1);
        const auto nav_size = get<Vec2>(a, 0x392f14);
        const auto nav_end = add(get<Vec2>(a, 0x392ef8), nav_size);
        const float nav_width = get<float>(a, 0x392f34) - 1;
        const auto nav_start = add(get<Vec2>(a, 0x392ef8), Vec2{nav_width, 0});
        rect(a, nav_draw, nav_start, nav_end, c, 0, 0);
        call(a, 0x39b3b8, {Vec2{scale * 14, scale * 14}});
        call(a, 0x38ec90);
        call(a, 0x398c60, {ReI32(14), Vec2{scale * 10, scale * 8}});
        for (ReUSize i = 0; i < m.categories.size(); ++i) {
            bool pressed = false;
            check(frame_category_widget_389830(s, m, a, static_cast<ReI32>(i), pressed));
        }
        call(a, 0x39896c, {ReI32(1)});
        call(a, 0x390efc);
        call(a, 0x390a88);
        call(a, 0x39ac04, {0.0f, 0.0f});
        child(a, "main", {0, -1}, 0x88);
        const auto main_draw = get<Address>(a, 0x392ecc);
        rounding = context(a, 0x37e0, 0x360794);
        const float alpha = context(a, 0x37d0, 0x360788) * 155.0f;
        const auto byte =
            (!re::re_isfinite(alpha) || alpha < -2147483648.0f || alpha >= 2147483648.0f)
                ? ReI32(-2147483647 - 1)
                : static_cast<ReI32>(alpha);
        constexpr float byte_scale = re::re_bit_cast<float>(0x3b808081u);
        const auto packed = packed_color(
            {17 * byte_scale, 19 * byte_scale, 16 * byte_scale, float(byte) * byte_scale});
        background(a, main_draw, re::re_bit_cast<ReI32>(packed), rounding, 0x80, true);
        if (search.empty()) {
            if (!category(s, m).subtabs.empty()) {
                call(a, 0x398c60, {ReI32(14), Vec2{0, 0}});
                call(a, 0x398cc8, {ReI32(0), number(s, 0x3fc0f8)});
                child(a, "subtabs", {0, scale * 46}, 0x80);
                const auto tab_background = get<Address>(a, 0x392ecc);
                c = color(a, 4, .6f);
                background(a, tab_background, c, 0, 0);
                const auto tab_draw = get<Address>(a, 0x392ecc);
                c = color(a, 6, 1);
                const auto tab_size = get<Vec2>(a, 0x392f14);
                const auto tab_end = add(get<Vec2>(a, 0x392ef8), tab_size);
                const float tab_height = get<float>(a, 0x392ee4) - 1;
                const auto tab_start = add(get<Vec2>(a, 0x392ef8), Vec2{0, tab_height});
                rect(a, tab_draw, tab_start, tab_end, c, 0, 0);
                call(a, 0x39b410, {scale * 30});
                for (ReUSize i = 0; i < category(s, m).subtabs.size(); ++i) {
                    bool pressed = false;
                    check(
                        frame_subtab_widget_3893b0(s, m, a, static_cast<ReI32>(i), pressed));
                    call(a, 0x39ac04, {0.0f, scale * 25});
                }
                call(a, 0x390a88);
                call(a, 0x39896c, {ReI32(2)});
            }
            const float offset = (1.0f - number(s, 0x3fc0fc)) * 50.0f;
            const float origin = get<Vec2>(a, 0x392ef8).y;
            window = get<Address>(a, 0x35d200);
            call(a, 0x39b44c, {read<float>(a, window + 0x104, 0x360aad) - origin + offset});
            call(a, 0x398cc8, {ReI32(0), number(s, 0x3fc0fc) * number(s, 0x3fc0f8)});
            call(a, 0x398c60, {ReI32(2), Vec2{scale * 20, scale * 20}});
            const bool transparent = .99f > number(s, 0x3fc0f8) || .99f > number(s, 0x3fc0fc);
            child(a, "content", {0, -1}, transparent ? 0x10088 : 0x10080);
            check(frame_menu_page_388b4c(s, m, a));
            call(a, 0x390a88);
            call(a, 0x39896c, {ReI32(2)});
        } else {
            call(a, 0x39b3b8, {Vec2{20 * scale, 20 * scale}});
            call(a, 0x38ec90);
            for (auto &group : m.search_groups) {
                bool widget_match = false;
                for (const auto &widget : group.widgets)
                    widget_match = match(m, widget.label, search) || widget_match;
                if (!match(m, group.label, search) && !widget_match)
                    continue;
                call(a, 0x398c60, {ReI32(14), Vec2{0, 16 * scale}});
                window = get<Address>(a, 0x35d200);
                const auto cursor_x = read<float>(a, window + 0x100, 0x360cf7);
                write(a, window + 0x100, cursor_x + scale * 8, 0x360cff);
                const auto category_index = ReU64(ReI64(group.category));
                if (category_index >= m.categories.size())
                    stop(UnityStatus::unreadable_snapshot, 0x3367b0);
                const auto &cat = m.categories[static_cast<ReUSize>(category_index)];
                call(a, 0x3c4eb8, {cat.name});
                if (!cat.subtabs.empty()) {
                    call(a, 0x39ac04, {0.0f, -1.0f});
                    call(a, 0x3c4eb8, {re::ReString(" / ")});
                    call(a, 0x39ac04, {0.0f, -1.0f});
                    c = color(a, 2, 1);
                    call(a, 0x398bec, {ReI32(1), c});
                    const auto subtab = ReU64(ReI64(group.subtab));
                    if (subtab >= cat.subtabs.size())
                        stop(UnityStatus::unreadable_snapshot, 0x2d4d20);
                    const auto label = cat.subtabs[static_cast<ReUSize>(subtab)];
                    const auto end_text = get<Address>(a, 0x391c50, {label, false});
                    call(a, 0x3c4f28, {label, end_text, false});
                    call(a, 0x39890c, {ReI32(1)});
                }
                call(a, 0x39896c, {ReI32(1)});
                check(frame_search_child_384df0(s, m, a, group.id, group.label + "##search",
                                                {-20 * scale, 0}, false));
                for (auto &widget : group.widgets) {
                    if (!match(m, widget.label, search) && !match(m, group.label, search))
                        continue;
                    call(a, 0x398b44, {ReI32(0x800), true});
                    Rva role = widget.type == "checkbox"       ? 0x3bd114
                               : widget.type == "combo"        ? 0x3be2ec
                               : widget.type == "slider_int"   ? 0x3c4438
                               : widget.type == "slider_float" ? 0x3c43f4
                               : widget.type == "multi_select" ? 0x387d18
                                                               : 0;
                    if (role) {
                        if (!a.widget)
                            stop(UnityStatus::missing_dependency, role);
                        check(a.widget(role, widget, s));
                    }
                    call(a, 0x398894);
                }
                search_cleanup(a);
            }
            call(a, 0x3c4e58);
            call(a, 0x390efc);
        }
        call(a, 0x390a88);
        call(a, 0x390994);
        if (category(s, m).selected == 0 && integer(s, 0x3fc100) == 1 && !flag(s, 0x3fc104)) {
            const auto first = get<Address>(a, 0x391c78, {re::ReString("UI")});
            const auto second = get<Address>(a, 0x391c78, {re::ReString("UI")});
            float x =
                read<float>(a, first + 0x20, 0x361254) + read<float>(a, second + 0x28, 0x361264);
            x += 10;
            const auto third = get<Address>(a, 0x391c78, {re::ReString("UI")});
            const auto y = read<float>(a, third + 0x24, 0x36128d);
            call(a, 0x39b734, {Vec2{x, y}, ReI32(0), Vec2{0, 0}});
            if (!a.preview_365038)
                stop(UnityStatus::missing_dependency, 0x365038);
            check(a.preview_365038(s, m));
        }
        check(frame_menu_animations_3872e8(s, m, a));
    });
}

namespace {
float notification_time(const FrameMainMenuApi &a) {
    if (!a.effects.time)
        stop(UnityStatus::missing_dependency, 0x31581c);
    const auto t = a.effects.time(0x31581c);
    if (!t)
        stop(UnityStatus::missing_dependency, 0x31581c);
    return *t;
}
ReI32 cvtt(float x) {
    if (!re::re_isfinite(x) || x < -2147483648.0f || x >= 2147483648.0f)
        return re::ReNumericLimits<ReI32>::min();
    return static_cast<ReI32>(x);
}
void notification(FrameMenuState &s, const FrameMainMenuApi &a, Address draw,
                  const FrameNotification &n, re::ReArray<Vec2, 4> &anchors) {
    const float now = notification_time(a);
    float alpha = n.expires - now;
    if (alpha > 5) {
        const float age = now - (n.expires - 6.0f);
        alpha = 1.0f < age ? 1.0f : age;
    } else if (alpha > 0)
        alpha = alpha * 6.0f / 6.0f;
    else
        alpha = 0;
    constexpr re::ReArray<re::ReStringView, 3> titles = {"SUCCESS", "ERROR", "INFO"};
    // [I] Native signed indices outside these small stack arrays would read
    // indeterminate/out-of-bounds data; the owned replay reports that boundary.
    if (n.kind < 0 || n.kind > 2 || n.extra < 0 || n.extra > 3)
        stop(UnityStatus::indeterminate_native_data, 0x37f22d);
    const auto kind = static_cast<ReUSize>(n.kind), anchor = static_cast<ReUSize>(n.extra);
    const re::ReString title(titles[kind]);
    const auto style = get<Address>(a, 0x392ca4);
    alpha = alpha < 0 ? 0 : (1.0f < alpha ? 1.0f : alpha);
    constexpr float scale = re::re_bit_cast<float>(0x3b808081u);
    const float red = float(cvtt(read<float>(a, style + 0xe8, 0x37f1a5) * 255.0f)) * scale;
    const float green = float(cvtt(read<float>(a, style + 0xec, 0x37f18d) * 255.0f)) * scale;
    const float blue = float(cvtt(read<float>(a, style + 0xf0, 0x37f182) * 255.0f)) * scale;
    const float quant_alpha = float(cvtt(alpha * 255)) * scale;
    const re::ReArray<ClipRect, 3> colors = {{{red, green, blue, quant_alpha},
                                             {194 * scale, 55 * scale, 55 * scale, quant_alpha},
                                             {55 * scale, 86 * scale, 194 * scale, quant_alpha}}};
    auto measured = get<Vec2>(a, 0x38f79c, {n.text, Address(0), false, -1.0f});
    const auto header = get<Vec2>(a, 0x38f79c, {title, Address(0), false, -1.0f});
    const Vec2 size{300, (header.y + 37) + measured.y};
    re::ReArray<Vec2, 4> corners = {anchors[0], Vec2{anchors[1].x - size.x, anchors[1].y},
                                   Vec2{anchors[2].x - size.x, anchors[2].y - size.y},
                                   Vec2{anchors[3].x, anchors[3].y - size.y}};
    const Vec2 start = corners[anchor], end = add(start, size);
    const ClipRect bg{re::re_bit_cast<float>(0x3e24a4a5u), re::re_bit_cast<float>(0x3e30b0b1u),
                      re::re_bit_cast<float>(0x3e28a8a9u), alpha};
    rect(a, draw, start, end, re::re_bit_cast<ReI32>(packed_color(bg)), 4, 0);
    call(a, 0x3a7268, {draw, start, end, true});
    const auto packed = re::re_bit_cast<ReI32>(packed_color(colors[kind]));
    call(a, 0x3a1410,
         {draw, add(start, {20, 20}), 15.0f, packed, 200.0f, Vec2{0, 0}, ReI32(0),
          ReI32(12)});
    call(a, 0x3a6e34, {draw});
    const auto font = bucket_font(s, 2, 16);
    call(a, 0x3a31f8,
         {draw, font, 16.0f, add(start, {16, 14}), packed, re::ReString("I"), Address(0), 0.0f,
          Address(0)});
    auto text_color = color(a, 1, alpha);
    call(a, 0x3a31bc, {draw, add(start, {40, 14}), text_color, title, Address(0)});
    text_color = color(a, 2, alpha);
    const float available = (end.y - start.y) - 14;
    measured = get<Vec2>(a, 0x38f79c, {n.text, Address(0), false, -1.0f});
    call(a, 0x3a31bc,
         {draw, add(start, {16, available - measured.y}), text_color, n.text, Address(0)});
    measured = get<Vec2>(a, 0x38f79c, {n.text, Address(0), false, -1.0f});
    const auto header_again = get<Vec2>(a, 0x38f79c, {title, Address(0), false, -1.0f});
    const float offset = (header_again.y + 47) + measured.y;
    if (anchor < 2)
        anchors[anchor].y = offset + anchors[anchor].y;
    else
        anchors[anchor].y = anchors[anchor].y - offset;
}
} // namespace
FrameDependencyResult frame_render_notifications_37f990(FrameMenuState &s,
                                                        FrameDependencyState &files,
                                                        const FrameMainMenuApi &a, Address draw) {
    return protect([&] {
        if (files.notifications.empty())
            return;
        const auto io = get<Address>(a, 0x3926ac);
        const auto display = read<Vec2>(a, io + 8, 0x37f9e2);
        re::ReArray<Vec2, 4> anchors = {Vec2{20, 20}, Vec2{display.x - 20, 20},
                                       Vec2{display.x - 20, display.y - 20},
                                       Vec2{20, display.y - 20}};
        for (ReUSize i = 0; i < files.notifications.size(); ++i) {
            const auto copied = files.notifications[i];
            if (notification_time(a) > copied.expires) {
                files.notifications.erase(files.notifications.begin() +
                                          static_cast<ReISize>(i));
                // [C]37fade increments even after erase: the shifted next record
                // is skipped during THIS call, matching the native controller.
            } else
                notification(s, a, draw, copied, anchors);
        }
    });
}
FrameDependencyResult replay_frame_menu_35d5ac(FrameMenuState &s, FrameMainMenuState &m,
                                               FrameDependencyState &files,
                                               const FrameMainMenuApi &a) {
    return protect([&] {
        check(frame_hotkey_window_35d5ac(s, a.effects));
        const bool chinese = integer(s, 0x3fd0e8) == 2;
        if (chinese)
            call(a, 0x398a98, {s.fonts[3]});
        const auto draw = get<Address>(a, 0x392198);
        check(frame_render_notifications_37f990(s, files, a, draw));
        // [C] The native closed-menu alternate exit intentionally does NOT pop
        // the language font. Preserve it rather than silently balancing stacks.
        if (!flag(s, 0x218818))
            return;
        check(frame_menu_text_event_35f203(s, a.effects));
        check(frame_main_menu_35fc8b(s, m, a));
        if (chinese)
            call(a, 0x39881c);
    });
}
UnityFrameApi bind_frame_menu(FrameMenuState &s, FrameMainMenuState &m, FrameDependencyState &files,
                              const FrameMainMenuApi &a, FrameDependencyResult &result,
                              UnityFrameApi frame) {
    const auto prior = frame.domain;
    frame.domain = [&s, &m, &files, a, &result,
                    prior](Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (r != 0x35d5ac)
            return prior ? prior(r, args) : re::re_nullopt;
        result = replay_frame_menu_35d5ac(s, m, files, a);
        if (result.status != UnityStatus::complete)
            return {};
        return re::ReMonostate{};
    };
    return frame;
}
} // namespace rust_internal_re
