#include "menu_controls_analysis.hpp"
namespace rust_internal_re {
FrameMainMenuApi bind_menu_controls_frame(MenuControlsState &state, const MenuControlsApi &api,
                                          FrameMainMenuApi frame) {
    frame.imgui = state.image;
    frame.context = state.image ? state.image->read<Address>(0x405b28).value_or(0) : 0;
    frame.button_3bc7e0 = [&state, api](ClipRect box, ReI32 id,
                                        ReI32 flags) -> re::ReOptional<FrameMenuButton> {
        {
            const auto value = menu_controls_button_behavior_3bc7e0(
                state, api, box, re::re_bit_cast<ReU32>(id),
                re::re_bit_cast<ReU32>(flags));
            return FrameMenuButton{value.pressed, value.hovered, value.held};
        }
    };
    frame.widget = [&state, api](Rva primitive, FrameSearchWidget &widget, FrameMenuState &config) {
        state.config = &config;
        MenuControlRequest r;
        r.site = primitive;
        r.primitive = primitive;
        r.label = widget.label;
        r.choices = widget.choices;
        r.key = widget.key;
        r.color = widget.color;
        switch (primitive) {
        case 0x3bd114:
            r.role = MenuControlRole::checkbox;
            r.value = widget.boolean;
            break;
        case 0x3be2ec:
            r.role = MenuControlRole::combo_cstrings;
            r.value = widget.integer;
            break;
        case 0x3c4438:
            r.role = MenuControlRole::slider_integer;
            r.value = widget.integer;
            r.minimum = widget.minimum;
            r.maximum = widget.maximum;
            r.format = "%d";
            break;
        case 0x3c43f4:
            r.role = MenuControlRole::slider_float;
            r.value = widget.scalar;
            r.minimum_float = widget.minimum_float;
            r.maximum_float = widget.maximum_float;
            r.format = "%.3f";
            break;
        case 0x387d18:
            r.role = MenuControlRole::multiselect;
            r.value = widget.multi;
            break;
        default:
            return FrameDependencyResult{UnityStatus::missing_dependency, primitive};
        }
        const auto extended =
            re::re_find_if(state.extended_search.begin(), state.extended_search.end(),
                         [&](const auto &q) { return q.label == r.label && q.value == r.value; });
        if (bool(extended))
            r.owned_integer = extended->owned_integer;
        return menu_controls_apply(state, api, r).result;
    };
    return frame;
}
} // namespace rust_internal_re
