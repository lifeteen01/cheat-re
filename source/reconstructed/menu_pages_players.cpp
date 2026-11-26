#include "menu_pages_analysis.hpp"
namespace rust_internal_re {
namespace {
struct Stop {
    UnityStatus status;
    Rva site;
};
[[noreturn]] void stop(UnityStatus s, Rva r) {
    __builtin_trap();
}
void check(FrameDependencyResult r) {
    if (r.status != UnityStatus::complete)
        stop(r.status, r.stopped_at);
}
template <class T>
T get(const MenuPagesApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    if (!a.frame.effects.unity.external)
        stop(UnityStatus::missing_dependency, r);
    auto value =
        a.frame.effects.unity.external(r, re::ReSpan<const UnityValue>(args.begin(), args.size()));
    if (!value)
        stop(UnityStatus::missing_dependency, r);
    if (auto p = re::re_get_if<T>(&*value))
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
float number(const FrameMenuState &s, Rva r) {
    return re::re_bit_cast<float>(raw(s, r));
}
ReI32 integer(const FrameMenuState &s, Rva r) {
    return re::re_bit_cast<ReI32>(raw(s, r));
}
struct Text {
    re::ReStringView english, russian, chinese;
};
struct PlayerLabels {
    re::ReArray<Text, 9> values;
};
#include "menu_pages_player_labels.inc"
re::ReString label(const FrameMenuState &s, ReUSize page, ReUSize index) {
    const auto &t = player_labels[page].values[index];
    const auto lang = raw(s, 0x3fd0e8);
    return re::ReString(lang == 1 ? t.russian : lang == 2 ? t.chinese : t.english);
}
MenuControlResult control(const MenuPagesApi &a, MenuControlRequest request) {
    if (!a.control)
        stop(UnityStatus::missing_dependency, request.primitive);
    auto r = a.control(request);
    check(r.result);
    return r;
}
struct Spec {
    Rva entry, flags, selection, names, target, context, clipboard_site, refresh_site, copy_site,
        status_site;
    ReI32 filter;
    re::ReStringView title;
};
constexpr re::ReArray<Spec, 3> specs = {
    {{0x34d784, 0x3fd7e8, 0x3fd7ec, 0x3fc098, 0x3fd7f0, 0x3fd800, 0x34e0c0, 0x34df0c, 0x34df83,
      0x34e25a, 0, "All Options"},
     {0x34e554, 0x3fd8d8, 0x3fd8dc, 0x3fc0b0, 0x3fd8e0, 0x3fd8f0, 0x34eea2, 0x34ecf2, 0x34ed65,
      0x34f03c, 1, "Friend Options"},
     {0x34f35c, 0x3fd9c8, 0x3fd9cc, 0x3fc0c8, 0x3fd9d0, 0x3fd9e0, 0x34fcb3, 0x34fb02, 0x34fb75,
      0x34fe4d, 2, "Enemy Options"}}};
bool button(const MenuPagesApi &a, re::ReString text, Vec2 size, Rva site) {
    MenuControlRequest r;
    r.role = MenuControlRole::button;
    r.primitive = 0x3bc7d8;
    r.site = site;
    r.label = re::re_move(text);
    r.size = size;
    return control(a, re::re_move(r)).pressed;
}
re::ReString lower_name(re::ReString name) {
    // [C]2d6510 tests the low byte of (c-'A') and adds32 for ASCII A..Z.
    for (ReUSize i = 0; i < name.size(); ++i)
        if (name[i] >= 'A' && name[i] <= 'Z')
            name[i] = static_cast<char>(name[i] + 32);
    return name;
}
void list(FrameMenuState &s, const MenuPagesApi &a, const Spec &spec,
          re::ReVector<re::ReString> names, float width) {
    // [C]387a4c: owned vector copies replace MSVC begin/end/destructor folds.
    call(a, 0x398c60, {ReI32(2), Vec2{0, number(s, 0x248ee8) * 8}});
    (void)get<bool>(a, 0x38e97c,
                    {re::ReString("Player"), Vec2{width, 0}, false, ReI32(0x10000)});
    call(a, 0x398c60, {ReI32(14), Vec2{0, 0}});
    for (ReUSize i = 0; i < names.size(); ++i) {
        const auto w = get<float>(a, 0x392f34), h = get<float>(a, 0x3925cc);
        MenuControlRequest r;
        r.role = MenuControlRole::selectable;
        r.primitive = 0x3c38a8;
        r.site = 0x387b4b;
        r.label = names[i];
        r.description = names[i];
        r.minimum = integer(s, spec.selection) == static_cast<ReI32>(i);
        r.size = {w, h};
        r.register_search = true;
        if (control(a, re::re_move(r)).pressed)
            s.values[spec.selection] = static_cast<ReU32>(i);
    }
    call(a, 0x39896c, {ReI32(1)});
    call(a, 0x390a88);
    call(a, 0x39896c, {ReI32(1)});
}
void clipboard(FrameMenuState &s, const MenuPagesApi &a, const Spec &spec,
               const re::ReString &steam) {
    auto &owned = *a.state;
    UnityCacheSpec cache;
    cache.wrapper = spec.entry;
    cache.flags = spec.flags;
    cache.target = spec.target;
    cache.context = spec.context;
    cache.resolver = 0x3349ac;
    cache.name_space = "UnityEngine";
    cache.klass = "GUIUtility";
    cache.method = "set_systemCopyBuffer";
    if (!(raw(s, spec.flags) & 2)) {
        s.values[spec.flags] = raw(s, spec.flags) | 2u;
        if (!a.frame.effects.unity.resolve_target)
            stop(UnityStatus::missing_dependency, 0x3349ac);
        const auto resolved = a.frame.effects.unity.resolve_target(cache);
        if (resolved.status != MetadataStatus::complete)
            stop(UnityStatus::unresolved_target, 0x3349ac);
        owned.cached_targets[spec.target] = resolved.value;
    }
    if (!(raw(s, spec.flags) & 4)) {
        s.values[spec.flags] = raw(s, spec.flags) | 4u;
        if (!a.frame.effects.unity.detect_context ||
            !a.frame.effects.unity.detect_context(cache, owned.cached_targets[spec.target]))
            stop(UnityStatus::missing_dependency, 0x2cbd24);
    }
    // [I] Managed string construction and the matching Unity setter are one
    // safe typed effect; excluded spoof executor2cb9fc is never recreated.
    if (!a.clipboard)
        stop(UnityStatus::missing_dependency, spec.clipboard_site);
    auto link = "https://steamcommunity.com/profiles/" + steam;
    if (const auto nul = link.find('\0'); nul != re::ReString::npos)
        link.resize(nul); // [C]2ce5dc char* conversion.
    const auto r = a.clipboard(link);
    if (!r)
        stop(UnityStatus::missing_dependency, spec.clipboard_site);
}
void replay(FrameMenuState &s, FrameMainMenuState &m, const MenuPagesApi &a, const Spec &spec) {
    if (!a.state)
        stop(UnityStatus::missing_dependency, 0x218850);
    auto &owned = *a.state;
    const ReUSize page = spec.entry == 0x34d784 ? 0 : spec.entry == 0x34e554 ? 1 : 2;
    call(a, 0x38ec90);
    const auto c = get<ReI32>(a, 0x392298, {ReI32(4), 1.0f});
    call(a, 0x398bec, {ReI32(8), c});
    const auto query = s.strings[0x3fd2c8];
    const auto available = get<Vec2>(a, 0x39233c);
    const float width = available.x * .5f - 30;
    const float height = get<float>(a, 0x3925cc);
    (void)get<bool>(a, 0x3c0538,
                    {re::ReString("##search"), label(s, page, 0), query, ReI32(query.size()),
                     Vec2{width, height}, ReI32(0x5000), Address(0), Address(0)});
    s.values[0x3fd4f5] = get<bool>(a, 0x39408c) ? 1u : 0u;
    call(a, 0x39890c, {ReI32(1)});
    if (!(raw(s, spec.flags) & 1))
        s.values[spec.flags] = raw(s, spec.flags) | 1u; // [C]2cd32c is literal zero-return stub.
    call(a, 0x398c60, {ReI32(2), Vec2{16, 16}});
    const float list_width = get<Vec2>(a, 0x39233c).x * .5f - 30;
    (void)get<bool>(a, 0x38e97c,
                    {re::ReString("list"), Vec2{list_width, -1}, false, ReI32(0x10000)});
    auto &names = owned.string_vectors[spec.names];
    names.clear();
    for (const auto &player : owned.players) {
        if (spec.filter && owned.player_status[player.steam_id] != spec.filter)
            continue;
        // [C] Only the NAME is lowercased. The search copy stays as typed.
        const auto search = s.strings[0x3fd2c8];
        if (!search.empty() && lower_name(player.name).find(search) == re::ReString::npos &&
            player.steam_id.find(search) == re::ReString::npos &&
            re::re_to_string(player.team).find(search) == re::ReString::npos)
            continue;
        names.push_back(player.name);
    }
    if (names.empty())
        s.values[spec.selection] = 0xffffffffu;
    else if (integer(s, spec.selection) < 0 ||
             ReUSize(integer(s, spec.selection)) >= names.size())
        s.values[spec.selection] = static_cast<ReU32>(names.size() - 1);
    if (!names.empty())
        list(s, a, spec, names, get<Vec2>(a, 0x39233c).x);
    call(a, 0x390a88);
    call(a, 0x39896c, {ReI32(1)});
    call(a, 0x390efc);
    call(a, 0x39ac04, {0.0f, -1.0f});
    check(frame_search_child_384df0(s, m, a.frame, "H", re::ReString(spec.title), {0, -1}, true));
    const auto index = integer(s, spec.selection);
    if (index >= 0 && ReUSize(index) < names.size()) {
        const auto found =
            re::re_find_if(owned.players.begin(), owned.players.end(), [&](const auto &p) {
                return p.name == names[static_cast<ReUSize>(index)];
            });
        if (bool(found)) {
            // [C]33615c/3361d8/336254 select FIRST matching name, including
            // duplicates from a different status. Copies survive Refresh clear.
            const auto selected = *found;
            // [C]34dd6e passes literal RCX=0 to2caf08: image branch cannot run.
            if (!selected.steam_id.empty() && !selected.name.empty()) {
                float w = get<float>(a, 0x392f34) * .5f - 30;
                if (button(a, "Refresh List", {w, 30}, spec.refresh_site)) {
                    s.values[spec.selection] = 0xffffffffu;
                    owned.players.clear();
                }
                call(a, 0x39ac04, {0.0f, -1.0f});
                w = get<float>(a, 0x392f34) * .5f - 30;
                if (button(a, "Copy Steam Link", {w, 30}, spec.copy_site))
                    clipboard(s, a, spec, selected.steam_id);
                MenuControlRequest r;
                r.role = MenuControlRole::combo_strings;
                r.primitive = 0x3bf008;
                r.site = spec.status_site;
                r.label = label(s, page, 4);
                r.value = 0x3d7260;
                r.owned_integer = &owned.player_status[selected.steam_id];
                r.choices = {label(s, page, 1), label(s, page, 2), label(s, page, 3)};
                (void)control(a, re::re_move(r));
                call(a, 0x3c4e90, {label(s, page, 5), selected.name});
                call(a, 0x3c4e90, {label(s, page, 6), selected.steam_id});
                call(a, 0x3c4e90, {label(s, page, 7), re::re_to_string(selected.team)});
                call(a, 0x3c4e90, {label(s, page, 8), selected.grid});
            }
        }
    }
    call(a, 0x39896c, {ReI32(1)});
    call(a, 0x390a88);
    call(a, 0x390a88);
    call(a, 0x39896c, {ReI32(1)});
}
} // namespace
FrameDependencyResult replay_menu_player_page(Rva entry, FrameMenuState &s, FrameMainMenuState &m,
                                              const MenuPagesApi &a) {
    for (const auto &spec : specs)
        if (entry == spec.entry) {
            {
                replay(s, m, a, spec);
                return {};
            }
        }
    return {UnityStatus::missing_dependency, entry};
}
} // namespace rust_internal_re
