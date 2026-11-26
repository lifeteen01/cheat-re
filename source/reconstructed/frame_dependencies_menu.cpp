#include "frame_dependencies_menu.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re {
namespace {
constexpr FrameHotkeySpec hotkeys[] = {
#include "frame_dependencies_hotkeys.inc"
};
struct Stop {
    UnityStatus status;
    Rva rva;
};
[[noreturn]] void stop(UnityStatus status, Rva r) {
    __builtin_trap();
}
template <class F> FrameDependencyResult protect(F &&f) {
    FrameDependencyResult r;
    {
        f();
    }
    return r;
}
template <class T>
T get(const FrameDependencyApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    if (!a.unity.external)
        stop(UnityStatus::missing_dependency, r);
    const auto v = a.unity.external(r, re::ReSpan<const UnityValue>(args.begin(), args.size()));
    if (!v)
        stop(UnityStatus::missing_dependency, r);
    if (const auto p = re::re_get_if<T>(&*v))
        return *p;
    stop(UnityStatus::callback_type_mismatch, r);
}
void call(const FrameDependencyApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    (void)get<re::ReMonostate>(a, r, args);
}
void check(const FrameDependencyResult &r) {
    if (r.status != UnityStatus::complete)
        stop(r.status, r.stopped_at);
}
bool flag(const FrameMenuState &s, Rva r) {
    const auto it = s.values.find(r);
    return bool(it) && (**it & 255) != 0;
}
ReU32 raw(const FrameMenuState &s, Rva r) {
    const auto it = s.values.find(r);
    return !it ? 0 : **it;
}
float number(const FrameMenuState &s, Rva r) {
    return re::re_bit_cast<float>(raw(s, r));
}
Vec2 pair(const FrameMenuState &s, Rva r) {
    return {number(s, r), number(s, r + 4)};
}
void store(FrameMenuState &s, Rva r, Vec2 p) {
    s.values[r] = re::re_bit_cast<ReU32>(p.x);
    s.values[r + 4] = re::re_bit_cast<ReU32>(p.y);
}
Address drawlist(const FrameDependencyApi &a) {
    const auto w = get<Address>(a, 0x35d200);
    if (w == 0)
        return 0;
    if (!a.unity.copied_pointer)
        stop(UnityStatus::missing_dependency, 0x35d200);
    const auto p = a.unity.copied_pointer(w, 0x298);
    if (!p)
        stop(UnityStatus::unreadable_snapshot, 0x35d200);
    return *p;
}
Address font(FrameMenuState &s, ReI32 selector, ReI32 size) {
    switch (selector) {
    case 0:
        return s.fonts[1];
    case 2:
        return s.fonts[0];
    case 3:
        return s.fonts[3];
    case 1: {
        auto &bucket = s.font_buckets[1];
        const auto key = static_cast<float>(size);
        const auto found = bucket.fonts.find(key);
        if (bool(found))
            return **found;
        if (re::re_find(bucket.requested.begin(), bucket.requested.end(), key) ==
            bucket.requested.end())
            bucket.requested.push_back(key);
        return 0; // [C] 364aec's deferred-cache miss, never a synthesized dependency result.
    }
    default:
        return s.fonts[2];
    }
}
UnityCacheSpec event_spec(unsigned i) {
    constexpr Rva targets[] = {0x3fd500, 0x3fd510, 0x3fd518};
    constexpr Rva contexts[] = {0x3fd6e0, 0x3fd520, 0x3fd600};
    constexpr re::ReStringView methods[] = {"get_keyCode", "get_current", "get_type"};
    UnityCacheSpec spec;
    spec.wrapper = 0x35d5ac;
    spec.flags = 0x3fd508;
    spec.target = targets[i];
    spec.context = contexts[i];
    spec.resolver = 0x3349ac;
    spec.name_space = "UnityEngine";
    spec.klass = "Event";
    spec.method = methods[i];
    return spec;
}
void event_resolve(FrameMenuState &s, const FrameDependencyApi &a, unsigned i) {
    const auto mask = ReU32(1) << i;
    if (s.event_flags & mask)
        return;
    s.event_flags |= mask;
    if (!a.unity.resolve_target)
        stop(UnityStatus::missing_dependency, 0x3349ac);
    const auto resolved = a.unity.resolve_target(event_spec(i));
    if (resolved.status != MetadataStatus::complete)
        stop(UnityStatus::unresolved_target, 0x3349ac);
    s.event_targets[i] = resolved.value;
}
void event_context(FrameMenuState &s, const FrameDependencyApi &a, unsigned i, unsigned bit) {
    const auto mask = ReU32(1) << bit;
    if (s.event_flags & mask)
        return;
    s.event_flags |= mask;
    if (!a.unity.detect_context)
        stop(UnityStatus::missing_dependency, 0x2cbd24);
    if (!a.unity.detect_context(event_spec(i), s.event_targets[i]))
        stop(UnityStatus::missing_dependency, 0x2cbd24);
}
} // namespace
re::ReSpan<const FrameHotkeySpec> frame_hotkey_specs() {
    return hotkeys;
}
re::ReString frame_key_name(const FrameMenuState &s, ReI32 key, bool text) {
    const auto &names = text ? s.text_key_names : s.key_names;
    for (const auto &n : names)
        if (n.code == key)
            return n.name;
    return "None";
}
void frame_edit_menu_text_35f56a(FrameMenuState &s, ReI32 type, ReI32 key) {
    if (static_cast<ReU32>(type) - 4 > 1)
        return;
    const auto mapped = frame_key_name(s, key, true);
    const bool numeric = (static_cast<ReU32>(key) - 0x100 <= 9) ||
                         (static_cast<ReU32>(key) - 0x30 <= 9) || (key == 8 && type == 4);
    struct Edit {
        Rva flag, target;
        ReUSize limit;
        bool spaces, numeric;
    };
    constexpr Edit edits[] = {
        {0x3fd4fa, 0x3fd3a8, 40, true, false}, // Favorite, checked before Search.
        {0x3fd4f5, 0x3fd2c8, 40, true, false}, {0x3fd4f7, 0x3f45b8, 40, false, false},
        {0x3fd4f4, 0x3fd338, 40, true, false}, {0x3fd4fb, 0x3fd418, 40, true, false},
        {0x3fd4f6, 0x3f4628, 4, false, true},  {0x3fd4f8, 0x3f4698, 4, false, true},
        {0x3fd4f9, 0x3fd258, 5, false, true}};
    for (const auto &e : edits)
        if (flag(s, e.flag)) {
            auto &current = s.strings[e.target];
            auto edited = current;
            if (key == 8 && type == 4) {
                if (!edited.empty())
                    edited.resize(edited.size()-1);
            } else if (current.size() < e.limit && (!e.numeric || numeric)) {
                if (e.spaces && key == 32)
                    edited += ' ';
                else if (mapped.find("None") == re::ReString::npos && key != 8)
                    edited += mapped;
                // [C] 3ca960 is strstr; a non-null match for "None" skips append.
            }
            if (edited != current && (!e.numeric || numeric))
                current = re::re_move(edited);
            return;
        }
}
FrameDependencyResult frame_menu_text_event_35f203(FrameMenuState &s, const FrameDependencyApi &a) {
    return protect([&] {
        if (!flag(s, 0x218818))
            return;
        bool active = false;
        for (Rva r = 0x3fd4f4; r <= 0x3fd4fb; ++r)
            active = active || flag(s, r);
        if (!active)
            return;
        for (unsigned i = 0; i < 3; ++i)
            event_resolve(s, a, i);
        event_context(s, a, 1, 3);
        const auto current = get<Address>(a, 0x35f495);
        event_context(s, a, 2, 4);
        const auto type = get<ReI32>(a, 0x35f4df, {current});
        event_context(s, a, 0, 5);
        const auto key = get<ReI32>(a, 0x35f527, {current});
        frame_edit_menu_text_35f56a(s, type, key);
    });
}
FrameDependencyResult frame_draw_hotkey_35bc70(FrameMenuState &s, const FrameDependencyApi &a,
                                               re::ReStringView text, bool enabled, bool latched) {
    return protect([&] {
        if (!enabled)
            return;
        const auto list = drawlist(a);
        if (!list)
            return;
        const auto origin = get<Vec2>(a, 0x39246c);
        const auto size_index = re::re_bit_cast<ReI32>(raw(s, 0x3fcdc8));
        const auto selector = re::re_bit_cast<ReI32>(raw(s, 0x3fcf58));
        Address selected{};
        float size{};
        constexpr ReI32 sizes[] = {13, 16, 18, 20, 22, 24};
        if (size_index >= 0 && size_index <= 5) {
            size = static_cast<float>(sizes[size_index]);
            selected = font(s, selector, sizes[size_index]);
        } else {
            selected = s.fonts[0];
            const auto found = s.font_sizes.find(selected);
            if (!found)
                stop(UnityStatus::missing_dependency, 0x35bdf4);
            size = **found;
        }
        // [C] The post-selection size override is keyed by FONT selector.
        if (selector == 2)
            size = 11.0f;
        else if (selector == 0)
            size = 10.0f;
        const auto measured = get<Vec2>(a, 0x3a3874,
                                        {selected, size, re::ReNumericLimits<float>::max(), 0.0f,
                                         re::ReString(text), Address(0), Address(0)});
        const Vec2 pos{origin.x, origin.y + (size - measured.y) * 0.5f};
        const ReU32 black = 0xff000000u;
        const ReU32 color = latched ? 0xff00ff00u : 0xff0000ffu;
        constexpr Vec2 offsets[] = {{-1, 0}, {1, 0},  {0, -1}, {0, 1}, {-1, -1},
                                    {1, -1}, {-1, 1}, {1, 1},  {0, 0}};
        for (ReUSize i = 0; i < 9; ++i)
            call(a, 0x3a31f8,
                 {list, selected, size, Vec2{pos.x + offsets[i].x, pos.y + offsets[i].y},
                  re::re_bit_cast<ReI32>(i == 8 ? color : black), re::ReString(text),
                  Address(0), 0.0f, Address(0)});
        call(a, 0x3bfe4c, {Vec2{measured.x, size}});
        const auto line = get<float>(a, 0x39255c) - 1.0f;
        const auto cursor = get<float>(a, 0x392448);
        call(a, 0x39b44c, {cursor - line});
    });
}
FrameDependencyResult frame_hotkey_window_35d5ac(FrameMenuState &s, const FrameDependencyApi &a) {
    return protect([&] {
        if (!flag(s, 0x3fc568))
            return;
        // [C] Native constructs all40 strings before any window/API calls.
        re::ReMap<Rva, re::ReString> labels;
        for (const auto &spec : hotkeys)
            labels[spec.key] =
                re::ReString(spec.label) +
                frame_key_name(s, re::re_bit_cast<ReI32>(raw(s, spec.key)), false) + ")";
        call(a, 0x39b734, {pair(s, 0x3fd488), ReI32(2), Vec2{0, 0}});
        if (flag(s, 0x3fa7c4)) {
            call(a, 0x39b734, {pair(s, 0x3fd488), ReI32(1), Vec2{0, 0}});
            s.values[0x3fa7c4] = 0;
        }
        call(a, 0x39b770, {pair(s, 0x3fd4d8), ReI32(2)});
        call(a, 0x398c60, {ReI32(2), Vec2{0, 0}});
        call(a, 0x398c60, {ReI32(14), Vec2{0, 0}});
        (void)get<bool>(a, 0x38cfa4,
                        {re::ReString("Feature Hotkeys"), Address(0),
                         ReI32(flag(s, 0x218818) ? 0xab : 0xaf)});
        // [C] GetWindowPos and GetWindowSize each called twice, using x/y separately.
        const auto x = get<Vec2>(a, 0x39246c).x;
        const auto y = get<Vec2>(a, 0x39246c).y;
        store(s, 0x3fd488, {x, y});
        call(a, 0x39896c, {ReI32(2)});
        const auto width = get<Vec2>(a, 0x392f14).x;
        const auto height = get<Vec2>(a, 0x392f14).y;
        store(s, 0x3fd4d8, {width, height});
        for (const auto &spec : hotkeys)
            check(frame_draw_hotkey_35bc70(s, a, labels[spec.key], flag(s, spec.enabled),
                                           flag(s, spec.latch)));
        const auto cursor = get<Vec2>(a, 0x3923d8);
        call(a, 0x39bc6c, {Vec2{209.0f, cursor.y}, ReI32(0)});
        call(a, 0x390994);
    });
}
} // namespace rust_internal_re
