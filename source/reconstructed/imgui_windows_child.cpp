#include "imgui_windows_internal.hpp"
namespace rust_internal_re {
namespace {
ImguiWindowResult child(ImguiWindowsState &s, const ImguiWindowsApi &api,
                        re::ReOptional<re::ReStringView> label, ReU32 id, Vec2 requested,
                        bool border, ReU32 flags) {
    using namespace window_detail;
    const auto c = context(s), parent = current(s);
    const auto inherited = read<ReU32>(s, parent + 0x14, 0x38ea0a) & 4u;
    const auto combined = flags | inherited | 0x1000103u;
    auto available = read<Vec2>(s, parent + 0x250, 0x39239a);
    if (read<Address>(s, parent + 0x1a8, 0x392392) || read<Address>(s, c + 0x4b48, 0x3923a8))
        available.x = read<float>(s, parent + 0x220, 0x3923b2);
    const auto cursor = read<Vec2>(s, parent + 0x100, 0x392364);
    available.x -= cursor.x;
    available.y -= cursor.y;
    Vec2 size{float(menu_detail::cvtt(requested.x)), float(menu_detail::cvtt(requested.y))};
    const auto axes = ReU8((size.x == 0 ? 1 : 0) | (size.y == 0 ? 2 : 0));
    if (!(size.x > 0) || re::re_isnan(size.x))
        size.x = menu_detail::maxss(available.x + size.x, 4);
    if (!(size.y > 0) || re::re_isnan(size.y))
        size.y = menu_detail::maxss(available.y + size.y, 4);
    const auto parent_name = cstring(s, read<Address>(s, parent + 8, 0x38ea99), 0x393158);
    re::ReArray<char, 9> hex{};
    re::re_snprintf(hex.data(), hex.size(), "%08X", id);
    re::ReString name = parent_name + "/";
    if (label) {
        const auto end = label->find('\0');
        name += label->substr(0, end);
        name += '_';
    }
    name += hex.data();
    const auto found = imgui_window_find_391c78(s, name);
    if (found) {
        if (requested.y == 0) {
            size.y =
                2 * read<float>(s, c + 0x37dc, 0x38eb28) + read<float>(s, found + 0x3c, 0x38eb39);
        } else
            size.y += 1;
        write(s, c + 0x47e0, read<ReU32>(s, c + 0x47e0, 0x39b77c) | 2u, 0x39b77c);
        write(s, c + 0x4800, size, 0x39b78a);
        write(s, c + 0x47e8, 1u, 0x39b796);
    }
    const auto original_border = read<float>(s, c + 0x3800, 0x38eb63);
    if (!border)
        write(s, c + 0x3800, 0.0f, 0x38eb71);
    const auto begun = imgui_window_begin_38cfa4(s, api, {name, {}, combined});
    check(begun.result);
    const auto window = current(s);
    write(s, c + 0x3800, original_border, 0x38eb8f);
    write(s, window + 0x80, id, 0x38eb9c);
    write(s, window + 0xd2, axes, 0x38eba3);
    if (read<ReI16>(s, window + 0xc2, 0x38ebaa) == 1)
        write(s, parent + 0x100, read<Vec2>(s, window + 0x20, 0x38ebb3), 0x38ebb8);
    if (read<ReU32>(s, c + 0x48f8, 0x38ebc1) == id && !((flags | inherited) & 0x800000) &&
        (read<ReU16>(s, window + 0x15c, 0x38ebd3) ||
         read<ReU8>(s, window + 0x162, 0x38ebdc))) {
        menu_detail::focus_window(control(s), effective_controls(s, api), window, 0);
        if (!api.nav_initialize_395500)
            __builtin_trap();
        api.nav_initialize_395500(window, false);
        menu_detail::set_active(control(s), effective_controls(s, api), id + 1u, window);
        write(s, c + 0x3f90, read<ReU32>(s, c + 0x491c, 0x38ec04), 0x38ec0a);
    }
    return {{}, window, begun.visible};
}
} // namespace
ImguiWindowResult imgui_window_child_id_38e9c4(ImguiWindowsState &s, const ImguiWindowsApi &api,
                                               re::ReOptional<re::ReStringView> label,
                                               ReU32 id, Vec2 size, bool border,
                                               ReU32 flags) {
    {
        return child(s, api, label, id, size, border, flags);
    }
}
ImguiWindowResult imgui_window_child_38e97c(ImguiWindowsState &s, const ImguiWindowsApi &api,
                                            re::ReStringView label, Vec2 size, bool border,
                                            ReU32 flags) {
    {
        auto &owner = window_detail::control(s);
        (void)menu_detail::window(owner);
        const auto id = menu_detail::id(owner, label);
        return child(s, api, label, id, size, border, flags);
    }
}
} // namespace rust_internal_re
