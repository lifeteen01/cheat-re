#include "menu_pages_analysis.hpp"
namespace rust_internal_re {
namespace {
#include "menu_pages_literal_data.inc"
constexpr MenuPageSpec page_specs[] = {
#include "menu_pages_specs.inc"
};
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
T get(const MenuPagesApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    if (!a.frame.effects.unity.external)
        stop(UnityStatus::missing_dependency, r);
    auto v =
        a.frame.effects.unity.external(r, re::ReSpan<const UnityValue>(args.begin(), args.size()));
    if (!v)
        stop(UnityStatus::missing_dependency, r);
    if (auto p = re::re_get_if<T>(&*v))
        return *p;
    stop(UnityStatus::callback_type_mismatch, r);
}
void call(const MenuPagesApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    (void)get<re::ReMonostate>(a, r, args);
}
ReU32 raw(const FrameMenuState &s, Rva r) {
    auto p = s.values.find(r);
    return !p ? 0 : **p;
}
bool flag(const FrameMenuState &s, Rva r) {
    return (raw(s, r) & 255) != 0;
}
struct Label {
    re::ReStringView english, russian, chinese;
};
re::ReString text(const FrameMenuState &s, Label t) {
    const auto language = raw(s, 0x3fd0e8);
    return re::ReString(language == 1 ? t.russian : language == 2 ? t.chinese : t.english);
}
re::ReString &wide_buffer(const MenuPagesApi &a) {
    if (!a.state)
        stop(UnityStatus::missing_dependency, 0x3fc190);
    return a.state->wide_text_3fc190;
}
MenuPageTextRef page_literal(MenuPageTextPool &pool, ReISize slot, re::ReStringView bytes) {
    pool.put(slot, bytes);
    return {&pool, slot, false};
}
MenuPageTextRef page_wide(MenuPageTextPool &pool, re::ReStringView value) {
    *pool.wide = value;
    return {&pool, 0, true};
}
MenuPageTextRef page_label(const FrameMenuState &s, MenuPageTextPool &pool, ReISize slot,
                           re::ReStringView bytes, Label labels) {
    const auto language = raw(s, 0x3fd0e8);
    if (language == 1 || language == 2)
        return page_wide(pool, language == 1 ? labels.russian : labels.chinese);
    return page_literal(pool, slot, bytes);
}
MenuControlResult control(const MenuPagesApi &a, const MenuControlRequest &request) {
    if (!a.control)
        stop(UnityStatus::missing_dependency, request.primitive);
    auto r = a.control(request);
    check(r.result);
    return r;
}
void cleanup(const MenuPagesApi &a) {
    call(a, 0x39896c, {ReI32(1)});
    call(a, 0x390a88);
    call(a, 0x390a88);
    call(a, 0x39896c, {ReI32(1)});
}
void child(FrameMenuState &s, FrameMainMenuState &m, const MenuPagesApi &a, re::ReString icon,
           re::ReString label, Vec2 size, bool registration) {
    check(frame_search_child_384df0(s, m, a.frame, re::re_move(icon), re::re_move(label), size,
                                    registration));
}
void checkbox(FrameMenuState &s, const MenuPagesApi &a, Rva site, Label label, Rva value,
              Rva key = 0, Rva color = 0, Label description = {}, bool registration = false) {
    MenuControlRequest r;
    r.role = MenuControlRole::checkbox;
    r.site = site;
    r.primitive = 0x3bd114;
    r.label = text(s, label);
    r.description = text(s, description);
    if ((raw(s, 0x3fd0e8) == 1 || raw(s, 0x3fd0e8) == 2) && !description.english.empty())
        r.description = r.label;
    r.value = value;
    r.key = key;
    r.color = color;
    r.register_search = registration;
    (void)control(a, r);
}
void slider_float(FrameMenuState &s, const MenuPagesApi &a, Rva site, Label label, Rva value,
                  float minimum, float maximum, re::ReString format) {
    MenuControlRequest r;
    r.role = MenuControlRole::slider_float;
    r.site = site;
    r.primitive = 0x3c43f4;
    r.label = text(s, label);
    r.value = value;
    r.minimum_float = minimum;
    r.maximum_float = maximum;
    r.format = re::re_move(format);
    (void)control(a, r);
}
void slider_integer(FrameMenuState &s, const MenuPagesApi &a, Rva site, Label label, Rva value,
                    ReI32 minimum, ReI32 maximum, re::ReString format) {
    MenuControlRequest r;
    r.role = MenuControlRole::slider_integer;
    r.site = site;
    r.primitive = 0x3c4438;
    r.label = text(s, label);
    r.value = value;
    r.minimum = minimum;
    r.maximum = maximum;
    r.format = re::re_move(format);
    (void)control(a, r);
}
float number(const FrameMenuState &s, Rva r) {
    return re::re_bit_cast<float>(raw(s, r));
}
template <class T> T copied(const MenuPagesApi &a, Address p, Rva site) {
    if (!a.frame.imgui)
        stop(UnityStatus::missing_dependency, site);
    auto value = a.frame.imgui->read<T>(p);
    if (!value)
        stop(UnityStatus::unreadable_snapshot, site);
    return *value;
}
bool bit(const MenuPagesApi &a, Rva key, ReUSize index) {
    if (!a.bool_vector)
        stop(UnityStatus::missing_dependency, 0x2e98f0);
    const auto values = a.bool_vector(key);
    if (!values)
        stop(UnityStatus::missing_dependency, 0x2e98f0);
    if (index >= values->size())
        stop(UnityStatus::malformed_input, 0x2d4d70);
    return (*values)[index];
}
void clear_strings(const MenuPagesApi &a, Rva key) {
    if (!a.state)
        stop(UnityStatus::missing_dependency, 0x2dcf98);
    a.state->string_vectors[key]
        .clear(); // [I] Own MSVC vector<string> adaptation; capacity retained.
}
void notify(const MenuPagesApi &a, re::ReString text, ReI32 kind, ReI32 anchor) {
    if (!a.dependency_state)
        stop(UnityStatus::missing_dependency, 0x37f918);
    check(frame_notify_37f918(*a.dependency_state, a.frame.effects, re::re_move(text), kind, anchor));
}
void keybind(const MenuPagesApi &a, re::ReString label, Rva key, bool flag, Rva site) {
    MenuControlRequest r;
    r.role = MenuControlRole::keybind;
    r.primitive = 0x385b70;
    r.site = site;
    r.label = re::re_move(label);
    r.value = key;
    r.register_search = flag;
    (void)control(a, r);
}
void color_label(FrameMenuState &, const MenuPagesApi &a, re::ReString label, Rva value, Rva site) {
    // [C]3869b4 draws text then routes a24x18 RGBA preview. RDX is color[4],
    // not a boolean. The control body386438 belongs to menu_controls.
    const auto draw = get<Address>(a, 0x392ecc);
    const auto end = get<Address>(a, 0x391c50, {label, false});
    const auto color = get<ReI32>(a, 0x392298, {ReI32(1), 1.0f});
    const float offset = 9.0f - copied<float>(a, a.frame.context + 0x3c30, 0x386a0a) * .5f;
    const auto window = get<Address>(a, 0x35d200);
    auto pos = copied<Vec2>(a, window + 0x100, 0x386a34);
    pos.y += offset;
    call(a, 0x3a31bc, {draw, pos, color, label, end});
    call(a, 0x3bfe4c, {Vec2{0, 0}});
    float x = get<float>(a, 0x392f34) - 16.0f;
    x -= 24.0f;
    call(a, 0x39ac04, {x, -1.0f});
    MenuControlRequest r;
    r.role = MenuControlRole::color;
    r.primitive = 0x386438;
    r.site = site;
    r.label = re::re_move(label);
    r.value = value;
    r.color = value;
    r.size = {24, 18};
    (void)control(a, r);
}

} // namespace
FrameDependencyResult replay_menu_page_35013c(FrameMenuState &s, FrameMainMenuState &m,
                                              const MenuPagesApi &a) {
    return protect([&] {
        child(s, m, a, "G", "FAVORITE FUNCTIONS", {-1, -1}, false);
        if (!a.favorites_27f988)
            stop(UnityStatus::missing_dependency, 0x27f988);
        const auto favorites = a.favorites_27f988();
        if (!favorites)
            stop(UnityStatus::missing_dependency, 0x27f988);
        for (auto r : *favorites) {
            switch (r.role) {
            case MenuControlRole::checkbox:
                r.primitive = 0x3bd114;
                r.site = 0x35023a;
                r.description.clear();
                r.register_search = false;
                break;
            case MenuControlRole::combo_cstrings:
            case MenuControlRole::combo_strings:
                r.role = MenuControlRole::combo_cstrings;
                r.primitive = 0x3be2ec;
                r.site = 0x3502db;
                break;
            case MenuControlRole::slider_integer:
                r.primitive = 0x3c4438;
                r.site = 0x350342;
                r.flags = 0;
                break;
            case MenuControlRole::slider_float:
                r.primitive = 0x3c43f4;
                r.site = 0x3503a2;
                r.flags = 0;
                break;
            case MenuControlRole::multiselect:
                r.primitive = 0x387d18;
                r.site = 0x3503f8;
                break;
            default:
                continue;
            }
            (void)control(a, r);
        }
        cleanup(a); // [C]35042f is a tail jump into38724c, not a missing return.
    });
}
FrameDependencyResult replay_menu_page_33a6f8(FrameMenuState &s, FrameMainMenuState &m,
                                              const MenuPagesApi &a) {
    return protect([&] {
    // [C] UTF16 literals are recovered from DLL RVAs298c60..298e30;
    // menu_pages_labels.json records exact source byte ranges/hashes.
#include "menu_pages_resources.inc"
    });
}
#include "menu_pages_generated.inc"
FrameDependencyResult replay_menu_page(Rva r, FrameMenuState &s, FrameMainMenuState &m,
                                       const MenuPagesApi &a) {
    switch (r) {
    case 0x335484:
    case 0x34c4b0:
        return replay_menu_config_page_34c4b0(s, m, a);
    case 0x335490:
    case 0x34d784:
        return replay_menu_player_page(0x34d784, s, m, a);
    case 0x33549c:
    case 0x34e554:
        return replay_menu_player_page(0x34e554, s, m, a);
    case 0x3354a8:
    case 0x34f35c:
        return replay_menu_player_page(0x34f35c, s, m, a);
    case 0x3354b4:
    case 0x35013c:
        return replay_menu_page_35013c(s, m, a);
    case 0x3353f4:
    case 0x33a6f8:
        return replay_menu_page_33a6f8(s, m, a);
#include "menu_pages_dispatch.inc"
    default:
        return {UnityStatus::missing_dependency, r};
    }
}
re::ReSpan<const MenuPageSpec> menu_page_specs() {
    return page_specs;
}
FrameMainMenuApi bind_menu_pages(const MenuPagesApi &a, FrameMainMenuApi frame) {
    const auto prior = frame.page;
    frame.page = [a, prior](Rva r, FrameMenuState &s, FrameMainMenuState &m) {
        const auto result = replay_menu_page(r, s, m, a);
        bool known = false;
        for (const auto &spec : page_specs)
            known = known || r == spec.thunk || r == spec.entry;
        if (!known && prior)
            return prior(r, s, m);
        return result;
    };
    return frame;
}
FrameMainMenuApi bind_menu_pages(const MenuPagesApi &a) {
    return bind_menu_pages(a, a.frame);
}
} // namespace rust_internal_re
