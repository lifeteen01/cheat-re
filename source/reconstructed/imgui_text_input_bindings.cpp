#include "imgui_text_input_internal.hpp"
namespace rust_internal_re {
UnityApi bind_imgui_text_input_frame(MenuControlsState &s, const ImguiTextInputApi &api,
                                     FrameDependencyResult &last, UnityApi fallback) {
    auto result = fallback;
    result.external = [&s, api, &last, fallback](
                          Rva role, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (role != 0x398a98 && role != 0x39881c && role != 0x39b290 && role != 0x38cd28)
            return fallback.external ? fallback.external(role, args) : re::re_nullopt;
        {
            if (role == 0x38cd28) {
                if (args.size() < 3 || !re::re_holds_alternative<Address>(args[0]) ||
                    !re::re_holds_alternative<float>(args[1]) ||
                    !re::re_holds_alternative<float>(args[2]))
                    __builtin_trap();
                last = imgui_text_input_scroll_38cd28(s, api, re::re_get<Address>(args[0]),
                                                      re::re_get<float>(args[1]),
                                                      re::re_get<float>(args[2]));
                return last.status == UnityStatus::complete
                           ? re::ReOptional<UnityValue>(re::ReMonostate{})
                           : re::re_nullopt;
            }
            if (role == 0x39881c)
                imgui_text_input_pop_font_39881c(s, api);
            else {
                if (args.empty() || !re::re_holds_alternative<Address>(args.front()))
                    __builtin_trap();
                const auto font = re::re_get<Address>(args.front());
                if (role == 0x398a98)
                    imgui_text_input_push_font_398a98(s, api, font);
                else
                    imgui_text_input_set_font_39b290(s, font);
            }
            last = {};
            return re::ReMonostate{};
        }
    };
    return result;
}
} // namespace rust_internal_re
