#include "menu_controls_internal.hpp"
namespace rust_internal_re {
MenuControlResult menu_controls_apply(MenuControlsState &s, const MenuControlsApi &api,
                                      const MenuControlRequest &request) {
    {
        switch (request.role) {
        case MenuControlRole::checkbox:
            return menu_detail::checkbox(s, api, request);
        case MenuControlRole::button:
            return menu_detail::button(s, api, request);
        case MenuControlRole::color:
            return menu_detail::color(s, api, request);
        case MenuControlRole::keybind:
            return menu_detail::keybind(s, api, request);
        case MenuControlRole::combo_cstrings:
        case MenuControlRole::combo_strings:
            return menu_detail::combo(s, api, request);
        case MenuControlRole::multiselect:
            return menu_detail::multiselect(s, api, request);
        case MenuControlRole::selectable:
            return menu_detail::selectable(s, api, request);
        case MenuControlRole::slider_float:
        case MenuControlRole::slider_integer:
            return menu_detail::slider(s, api, request);
        }
        { __builtin_trap(); }
    }
}
MenuControlInvoke bind_menu_controls(MenuControlsState &s, const MenuControlsApi &api) {
    return [&s, api](const MenuControlRequest &r) { return menu_controls_apply(s, api, r); };
}
} // namespace rust_internal_re
