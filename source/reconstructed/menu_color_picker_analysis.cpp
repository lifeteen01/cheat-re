#include "menu_color_picker_internal.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re {
namespace {
using namespace picker_detail;
template <class F, class... A>
decltype(auto) need(const F &function, Rva site, Rva dependency, A &&...args) {
    if (!function)
        { __builtin_trap(); }
    return function(re::re_forward<A>(args)...);
}
void push_raw_color(MenuControlsState &s, ReU32 index, re::ReArray<float, 4> rgba) {
    const auto c = context(s);
    if (!s.color_imported) {
        const auto count = read<ReI32>(s, c + 0x4850, 0x39ef90);
        if (count < 0 || count > 100000)
            { __builtin_trap(); }
        const auto data = count ? read<Address>(s, c + 0x4858, 0x39ef90) : Address(0);
        for (ReI32 i = 0; i < count; ++i)
            s.color_stack.push_back(read<MenuColorBackup>(s, data + Address(i) * 20, 0x39ef90));
        s.color_imported = true;
    }
    const auto p = c + 0x38b8 + Address(index) * 16;
    s.color_stack.push_back({index, read<re::ReArray<float, 4>>(s, p, 0x398bbd)});
    write(s, c + 0x4850, ReI32(s.color_stack.size()), 0x39ef90);
    write(s, p, rgba, 0x398bd8);
}
void run(MenuControlsState &s, const MenuColorPickerApi &api, re::ReArray<float, 4> &rgba,
         MenuControlResult &out) {
    const auto style = copy_style(s, 0x3796cd);
    const auto w = window(s);
    const auto c = context(s);
    const auto initial_x = read<float>(s, w + 0x100, 0x379779);
    // [C] Initial RGB/alpha and integer channels are separate captured scratch.
    auto channels = rgba;
    re::ReArray<ReI32, 4> integers;
    for (ReUSize i = 0; i < 4; ++i) {
        const auto bias = channels[i] >= 0 ? 0.5f : -0.5f;
        integers[i] = cvtt(channels[i] * 255.0f + bias);
    }
    auto hsv = menu_color_picker_rgb_to_hsv_39062c(channels[0], channels[1], channels[2]);
    menu_color_picker_restore_3795d4(s, rgba, hsv);
    MenuColorPickerHexInput input;
    re::ReArray<unsigned int, 4> clamped;
    for (ReUSize i = 0; i < 4; ++i)
        clamped[i] = static_cast<unsigned int>(re::re_clamp(integers[i], 0, 255));
    const auto length = re::re_snprintf(input.buffer.data(), input.buffer.size(), "%02X%02X%02X%02X",
                                      clamped[0], clamped[1], clamped[2], clamped[3]);
    if (length != 8)
        { __builtin_trap(); }
    auto controls = bind_menu_controls_snapshot(s, api.controls);
    auto scale = read<float>(s, 0x248ee8, 0x37990e);
    need(controls.push_vec2_398c60, 0x379960, 0x398c60, 11u,
         Vec2{scale * 26.0f,
              (scale * 35.0f) * 0.5f - read<float>(s, context(s) + 0x3c30, 0x379937) * 0.5f});
    // [C]398b84 accepts raw float4; routing through packed398bec would
    // incorrectly quantize this native0.03 opacity before the editor runs.
    push_raw_color(s, 8, {1, 1, 1, style.scalar(0) * 0.03f});
    const auto padding = style.scalar(8) * 2.0f;
    input.size = {230.0f - padding, read<float>(s, 0x248ee8, 0x3799a5) * 35.0f};
    bool edited = need(api.hex_input_3c0538, 0x379a27, 0x3c0538, input);
    if (edited) {
        const auto terminator = re::re_find(input.buffer.begin(), input.buffer.end(), '\0');
        if (!terminator)
            { __builtin_trap(); }
        auto begin = input.buffer.data();
        while (*begin == '#' || *begin == ' ' || *begin == '\t')
            ++begin;
        // [I] The third-party CRT scanner is an owned-data adaptation. The
        // sample initializes defaults and ignores its assignment-count result.
        re::ReArray<unsigned int, 4> parsed{0, 0, 0, 255};
        (void)__builtin_sscanf(begin, "%02X%02X%02X%02X", &parsed[0], &parsed[1], &parsed[2],
                          &parsed[3]);
        for (ReUSize i = 0; i < 3; ++i)
            channels[i] = float(re::re_bit_cast<ReI32>(ReU32(parsed[i]))) / 255.0f;
        hsv = menu_color_picker_rgb_to_hsv_39062c(channels[0], channels[1], channels[2]);
        // [C] Parsed fourth integer is not copied to alpha scratch at379aaa..379af6.
    }
    need(controls.pop_color_39890c, 0x379b04, 0x39890c, 1);
    need(controls.push_color_398bec, 0x379b1c, 0x398bec, 1u, style_color(s, 2));
    const auto measured = renderer_measure_38f79c(*s.image, context(s), "#", {}, false, -1).size;
    const auto live_style = context(s) + 0x37d0;
    const auto x =
        initial_x + read<float>(s, live_style + 0x3c, 0x379b89) * 0.5f - measured.x * 0.5f + 1.0f;
    const auto live_padding_y = read<float>(s, context(s) + 0x3810, 0x379ba6);
    const auto frame_height =
        live_padding_y + live_padding_y + read<float>(s, context(s) + 0x3c30, 0x3925df);
    const auto y =
        read<float>(s, w + 0x104, 0x379bb0) - frame_height - style.scalar(0x50) + live_padding_y;
    const auto text_context = context(s);
    const auto text_color = style_color(s, 1);
    const auto text_window = read<Address>(s, text_context + 0x3f08, 0x3999f2);
    const auto text_size = read<float>(s, text_context + 0x3c30, 0x3999fe);
    const auto text_font = read<Address>(s, text_context + 0x3c28, 0x399a09);
    emit_text(s, controls, draw(s, text_window, 0x399a19), {x, y}, text_color, "#", true, text_font,
              text_size);
    if (read<ReU8>(s, text_context + 0x5c90, 0x399a39))
        menu_color_picker_log_text_394e5c(s, api, Vec2{x, y}, "#");
    need(controls.pop_color_39890c, 0x379be8, 0x39890c, 1);
    need(controls.pop_style_39896c, 0x379bf0, 0x39896c, 1);
    menu_color_picker_sv_37afd4(s, api, rgba, hsv[0], hsv[1], hsv[2], edited);
    hsv[0] = menu_color_picker_hue_37a0b8(s, api, hsv[0], edited);
    menu_color_picker_alpha_378f1c(s, api, rgba, channels[3], edited);
    scale = read<float>(s, 0x248ee8, 0x379c48);
    MenuControlRequest button_request;
    button_request.role = MenuControlRole::button;
    button_request.primitive = 0x3bc7d8;
    button_request.label = "COPY";
    button_request.size = {(scale * 230.0f - padding) * 0.5f - scale * 5.0f, scale * 34.0f};
    if (button(s, controls, button_request).pressed) {
        for (ReUSize i = 0; i < 4; ++i)
            write(s, 0x402d10 + i * 4, rgba[i], 0x379ccc);
    }
    same_line(s, 0, read<float>(s, 0x248ee8, 0x379cd8) * 10.0f);
    scale = read<float>(s, 0x248ee8, 0x379cf0);
    button_request.label = "PASTE";
    button_request.size = {(scale * 230.0f - padding) * 0.5f - scale * 5.0f, scale * 34.0f};
    if (button(s, controls, button_request).pressed) {
        for (ReUSize i = 0; i < 4; ++i)
            rgba[i] = read<float>(s, 0x402d10 + i * 4, 0x379d59);
    }
    const auto rgb = menu_color_picker_hsv_to_rgb_3904e0(hsv[0], hsv[1], hsv[2]);
    if (edited) {
        write(s, c + 0x5b48, hsv[0], 0x379dac);
        write(s, c + 0x5b4c, hsv[1], 0x379dbb);
        // [C] Cache color hashes the current rgba BEFORE converted RGB stores.
        write(s, c + 0x5b50, packed({rgba[0], rgba[1], rgba[2], 0}), 0x379de9);
        rgba[0] = rgb[0];
        rgba[1] = rgb[1];
        rgba[2] = rgb[2];
        rgba[3] = channels[3];
    }
    // [C]379e27 returns the constant r14b=1 even without edits or Paste.
    out.changed = true;
}
} // namespace
MenuControlResult menu_color_picker_379680(MenuControlsState &s, const MenuColorPickerApi &api,
                                           re::ReStringView label, re::ReArray<float, 4> &rgba) {
    (void)label; // [C] Native incoming RCX is not used by this body.
    MenuControlResult out;
    {
        run(s, api, rgba, out);
    }
    return out;
}
MenuControlsApi bind_menu_color_picker(MenuControlsState &s, const MenuColorPickerApi &api,
                                       MenuControlsApi fallback) {
    fallback.color_picker_379680 = [&s, api](re::ReStringView label, re::ReArray<float, 4> &rgba) {
        const auto result = menu_color_picker_379680(s, api, label, rgba);
        if (result.result.status != UnityStatus::complete)
            __builtin_trap();
        return result.changed;
    };
    return fallback;
}
} // namespace rust_internal_re
