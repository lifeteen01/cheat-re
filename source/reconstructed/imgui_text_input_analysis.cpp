#include "imgui_text_input_internal.hpp"
namespace rust_internal_re {
ImguiTextInputResult replay_imgui_text_input_3c0538(MenuControlsState &s,
                                                    ImguiTextInputState &state,
                                                    const ImguiTextInputApi &api,
                                                    ImguiTextInputRequest &request) {
    ImguiTextInputResult result;
    {
        text_input_detail::Frame frame{s, state, api, request, result};
        frame.controls = bind_menu_controls_snapshot(s, api.controls);
        if (!frame.controls.deactivate_text_3c04d0)
            frame.controls.deactivate_text_3c04d0 = [&s, &api](Address id) {
                imgui_navigation_deactivate_3c04d0(s, api.allocation, ReU32(id));
            };
        if (!text_input_detail::layout(frame))
            return result;
        text_input_detail::activate(frame);
        text_input_detail::password_font(frame);
        text_input_detail::process(frame);
        text_input_detail::commit(frame);
        text_input_detail::render(frame);
        text_input_detail::finish(frame);
    }
    return result;
}
ImguiTextInputApi bind_imgui_text_input_text(FontTextStore &fonts, FontTextSink &sink,
                                             ImguiTextInputApi api) {
    api.fonts = &fonts;
    api.text = [&fonts, &sink](const FontTextRequest &request) {
        font_text_draw_3a31f8(fonts, sink, request);
    };
    return api;
}
MenuColorPickerApi bind_imgui_text_input_picker(MenuControlsState &s, ImguiTextInputState &state,
                                                const ImguiTextInputApi &api,
                                                MenuColorPickerApi picker) {
    picker.hex_input_3c0538 = [&s, &state, api](MenuColorPickerHexInput &input) {
        ImguiTextInputRequest request;
        request.label = input.label;
        request.hint = input.hint;
        request.buffer.assign(input.buffer.data(), input.buffer.data() + input.buffer.size());
        request.size = input.size;
        request.flags = input.flags;
        const auto result = replay_imgui_text_input_3c0538(s, state, api, request);
        if (request.buffer.size() != input.buffer.size())
            { __builtin_trap(); }
        re::re_copy(request.buffer.begin(), request.buffer.end(), input.buffer.begin());
        if (result.result.status != UnityStatus::complete)
            __builtin_trap();
        return result.return_value;
    };
    return picker;
}
} // namespace rust_internal_re
