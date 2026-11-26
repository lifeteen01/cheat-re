#include "font_frame_bindings.hpp"
namespace rust_internal_re {
namespace {
template <class T> T text_argument(re::ReSpan<const UnityValue> args, ReUSize n, Rva role) {
    if (n >= args.size())
        { __builtin_trap(); }
    if (const auto value = re::re_get_if<T>(&args[n]))
        return *value;
    { __builtin_trap(); }
}
template <class T> void stage(Snapshot &image, Address at, T value, Rva role) {
    if (!image.write(at, value))
        { __builtin_trap(); }
}
void stage_bytes(Snapshot &image, Address at, re::ReStringView text, const FontFrameStorage &env,
                 Rva role) {
    if (!at || text.size() >= env.text_capacity)
        { __builtin_trap(); }
    for (ReUSize i = 0; i <= text.size(); ++i)
        stage(image, at + i, i == text.size() ? char(0) : text[i], role);
}
void stage_string(Snapshot &image, re::ReStringView text, const FontFrameStorage &env, Rva role) {
    if (!env.string_object)
        { __builtin_trap(); }
    const Address chars = text.size() > 15 ? env.string_bytes : env.string_object;
    stage_bytes(image, chars, text, env, role);
    if (text.size() > 15)
        stage(image, env.string_object, chars, role);
    stage(image, env.string_object + 0x10, ReU64(text.size()), role);
    stage(image, env.string_object + 0x18, ReU64(text.size() > 15 ? text.size() : 15),
          role);
}
re::ReOptional<ReUSize> text_end(Address end, re::ReStringView text, const FontFrameStorage &env,
                                    Rva role) {
    if (!end)
        return {};
    if (end < env.string_bytes || end - env.string_bytes > text.size())
        { __builtin_trap(); }
    return ReUSize(end - env.string_bytes);
}
} // namespace
void synchronize_font_frame_outputs(const Snapshot &image, Address module, FrameMenuState &state) {
    for (const Rva r : re::ReArray<Rva, 4>{0x248ed0, 0x248ed4, 0x248ed8, 0x3fa7c0})
        if (const auto bits = image.read<ReU32>(module + r))
            state.values[r] = *bits;
}
RendererTextMeasure measure_owned_frame_font_38f79c(const Snapshot &image, Address context,
                                                    const FontTextStore &fonts,
                                                    re::ReStringView text,
                                                    re::ReOptional<ReUSize> end, bool hide,
                                                    float wrap) {
    if (end && *end > text.size())
        { __builtin_trap(); }
    auto stop = end;
    if (hide) {
        const auto zero = text.find('\0');
        const auto limit = end.value_or(zero == re::ReStringView::npos ? text.size() : zero);
        ReUSize i = 0;
        while (i < limit && text[i] != 0 &&
               !(text[i] == '#' && i + 1 < text.size() && text[i + 1] == '#'))
            ++i;
        stop = i;
    }
    const auto size = image.read<float>(context + 0x3c30);
    if (!size)
        { __builtin_trap(); }
    if (stop && *stop == 0)
        return {{0, *size}, 0};
    const auto key = image.read<Address>(context + 0x3c28);
    if (!key)
        { __builtin_trap(); }
    const auto font = fonts.fonts.find(*key);
    if (!font)
        { __builtin_trap(); }
    auto result = renderer_measure_3a3874(
        (**font).measure, {*size, re::ReNumericLimits<float>::max(), wrap, text, stop});
    const float width = result.size.x + 0.9999899864196777f;
    result.size.x = float(!re::re_isfinite(width) || width >= 2147483648.0f || width < -2147483648.0f
                              ? INT32_MIN
                              : ReI32(width));
    return result;
}
WorldPlayerBackend bind_world_font_measurements(const Snapshot &image, Address context,
                                                const FontTextStore &fonts,
                                                WorldPlayerBackend out) {
    out.measure_font_3a3874 = [&fonts](const WorldFontMeasureRequest &request) {
        const auto font = fonts.fonts.find(request.font);
        if (!font)
            { __builtin_trap(); }
        return renderer_measure_3a3874(
                   (**font).measure,
                   {request.size, request.maximum_width, request.wrap_width, request.text, {}})
            .size;
    };
    out.draw.measure_38f79c = [&image, context, &fonts](re::ReStringView text) {
        return measure_owned_frame_font_38f79c(image, context, fonts, text).size;
    };
    return out;
}
UnityApi bind_font_frame(Snapshot &image, FrameMenuState &frame, FontTextStore &fonts,
                         FontTextSink &sink, const FontFrameStorage &env, UnityApi out) {
    const auto prior = out.external;
    out.external = [&image, &frame, &fonts, &sink, env, prior](
                       Rva role, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (role == 0x36135c || role == 0x361bcc) {
            const auto record = text_argument<Address>(args, 0, role);
            (void)text_argument<Address>(args, 1, role); // native unused initial-font argument
            const auto text = text_argument<re::ReString>(args, 2, role);
            const auto at = text_argument<Vec2>(args, 3, role);
            const auto color = text_argument<ClipRect>(args, 4, role);
            const auto kind = text_argument<ReI32>(args, 5, role);
            stage_string(image, text, env, role);
            stage(image, env.position, at, role);
            stage(image, env.color, re::ReArray<float, 4>{color.x, color.y, color.z, color.w}, role);
            FontTextControllerRequest request{env.string_object, env.position, record, 0, kind,
                                              env.color};
            {
                if (role == 0x36135c)
                    font_text_centered_36135c(image, env.module, frame, fonts, sink, request);
                else
                    font_text_plain_361bcc(image, env.module, frame, fonts, sink, request);
            }
            synchronize_font_frame_outputs(image, env.module, frame);
            return UnityValue{re::ReMonostate{}};
        }
        if (role == 0x3a31f8 || role == 0x3a31bc) {
            FontTextRequest request;
            request.draw_list = text_argument<Address>(args, 0, role);
            re::ReString text;
            if (role == 0x3a31f8) {
                request.font = text_argument<Address>(args, 1, role);
                request.size = text_argument<float>(args, 2, role);
                request.position = text_argument<Vec2>(args, 3, role);
                request.color =
                    re::re_bit_cast<ReU32>(text_argument<ReI32>(args, 4, role));
                text = text_argument<re::ReString>(args, 5, role);
                request.end = text_end(text_argument<Address>(args, 6, role), text, env, role);
                request.wrap_width = text_argument<float>(args, 7, role);
                const auto fine = text_argument<Address>(args, 8, role);
                if (fine) {
                    const auto clip = image.read<re::ReArray<float, 4>>(fine);
                    if (!clip)
                        { __builtin_trap(); }
                    request.fine_clip = *clip;
                }
            } else {
                request.position = text_argument<Vec2>(args, 1, role);
                request.color =
                    re::re_bit_cast<ReU32>(text_argument<ReI32>(args, 2, role));
                text = text_argument<re::ReString>(args, 3, role);
                request.end = text_end(text_argument<Address>(args, 4, role), text, env, role);
            }
            request.bytes = text;
            font_text_draw_3a31f8(fonts, sink, request);
            return UnityValue{re::ReMonostate{}};
        }
        if (role == 0x391c50) {
            const auto text = text_argument<re::ReString>(args, 0, role);
            stage_bytes(image, env.string_bytes, text, env, role);
            re::ReOptional<ReUSize> end;
            if (args.size() > 1) {
                if (const auto p = re::re_get_if<Address>(&args[1]))
                    end = text_end(*p, text, env, role);
                else if (!re::re_holds_alternative<bool>(args[1]) || re::re_get<bool>(args[1]))
                    __builtin_trap();
            }
            const auto limit = end.value_or(text.size());
            ReUSize i = 0;
            while (i < limit && text[i] != 0) {
                if (text[i] == '#' && i + 1 < text.size() && text[i + 1] == '#')
                    break;
                ++i;
            }
            return UnityValue{env.string_bytes + i};
        }
        if (role == 0x38f79c) {
            const auto text = text_argument<re::ReString>(args, 0, role);
            const auto end = text_end(text_argument<Address>(args, 1, role), text, env, role);
            const auto hide = text_argument<bool>(args, 2, role);
            const auto wrap = text_argument<float>(args, 3, role);
            const auto context = image.read<Address>(env.module + 0x405b28);
            if (!context)
                { __builtin_trap(); }
            return UnityValue{
                measure_owned_frame_font_38f79c(image, *context, fonts, text, end, hide, wrap)
                    .size};
        }
        if (role == 0x3a3874) {
            const auto font = text_argument<Address>(args, 0, role);
            const auto text = text_argument<re::ReString>(args, 4, role);
            const auto found = fonts.fonts.find(font);
            if (!found)
                { __builtin_trap(); }
            const auto end = text_end(text_argument<Address>(args, 5, role), text, env, role);
            return UnityValue{
                renderer_measure_3a3874((**found).measure,
                                        {text_argument<float>(args, 1, role),
                                         text_argument<float>(args, 2, role),
                                         text_argument<float>(args, 3, role), text, end})
                    .size};
        }
        return prior ? prior(role, args) : re::re_nullopt;
    };
    return out;
}
} // namespace rust_internal_re
