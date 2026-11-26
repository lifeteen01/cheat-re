#include "imgui_windows_internal.hpp"
namespace rust_internal_re {
namespace {
template <class T>
const T &argument(re::ReSpan<const UnityValue> args, ReUSize index, Rva role) {
    if (index >= args.size() || !re::re_holds_alternative<T>(args[index]))
        { __builtin_trap(); }
    return re::re_get<T>(args[index]);
}
ReU32 flags(re::ReSpan<const UnityValue> args, ReUSize index, Rva role) {
    return re::re_bit_cast<ReU32>(argument<ReI32>(args, index, role));
}
void require(FrameDependencyResult value, FrameDependencyResult &last) {
    last = value;
    window_detail::check(value);
}
} // namespace
UnityApi bind_imgui_windows_frame(ImguiWindowsState &state, const ImguiWindowsApi &api,
                                  FrameDependencyResult &last, UnityApi fallback) {
    auto result = fallback;
    result.external = [&state, api, &last, fallback](
                          Rva role, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        {
            switch (role) {
            case 0x38cfa4: {
                const auto name = argument<re::ReString>(args, 0, role);
                const auto open = argument<Address>(args, 1, role);
                const auto r = imgui_window_begin_38cfa4(
                    state, api,
                    {name, open ? re::ReOptional<Address>{open} : re::re_nullopt,
                     flags(args, 2, role)});
                require(r.result, last);
                return r.visible;
            }
            case 0x38e97c: {
                const auto r = imgui_window_child_38e97c(
                    state, api, argument<re::ReString>(args, 0, role), argument<Vec2>(args, 1, role),
                    argument<bool>(args, 2, role), flags(args, 3, role));
                require(r.result, last);
                return r.visible;
            }
            case 0x38e9c4: {
                re::ReOptional<re::ReStringView> name;
                if (args.empty())
                    { __builtin_trap(); }
                if (const auto *value = re::re_get_if<re::ReString>(&args[0]))
                    name = *value;
                else if (!re::re_holds_alternative<Address>(args[0]) || re::re_get<Address>(args[0]))
                    __builtin_trap();
                const auto r = imgui_window_child_id_38e9c4(
                    state, api, name,
                    re::re_bit_cast<ReU32>(argument<ReI32>(args, 1, role)),
                    argument<Vec2>(args, 2, role), argument<bool>(args, 3, role),
                    flags(args, 4, role));
                require(r.result, last);
                return r.visible;
            }
            case 0x390994:
                require(imgui_window_end_390994(state, api), last);
                return re::ReMonostate{};
            case 0x390a88:
                require(imgui_window_end_child_390a88(state, api), last);
                return re::ReMonostate{};
            case 0x39031c:
                require(imgui_window_trim_39031c(state, api, argument<ReI32>(args, 0, role),
                                                 argument<bool>(args, 1, role)),
                        last);
                return re::ReMonostate{};
            case 0x390260:
                require(imgui_window_close_390260(state, api), last);
                return re::ReMonostate{};
            case 0x391c78:
                last = {};
                return imgui_window_find_391c78(state, argument<re::ReString>(args, 0, role));
            case 0x391928:
                last = {};
                return imgui_window_modal_391928(
                    state, args.empty() ? 0 : argument<Address>(args, 0, role));
            case 0x39b734: {
                const auto position = argument<Vec2>(args, 0, role);
                const auto condition = flags(args, 1, role);
                const auto pivot = argument<Vec2>(args, 2, role);
                const auto c = window_detail::context(state);
                window_detail::write(
                    state, c + 0x47e0,
                    window_detail::read<ReU32>(state, c + 0x47e0, 0x39b740) | 1u, 0x39b740);
                window_detail::write(state, c + 0x47f0, position, 0x39b74d);
                window_detail::write(state, c + 0x47e4, condition ? condition : 1u, 0x39b75e);
                window_detail::write(state, c + 0x47f8, pivot, 0x39b765);
                last = {};
                return re::ReMonostate{};
            }
            case 0x39b770: {
                const auto size = argument<Vec2>(args, 0, role);
                const auto condition = flags(args, 1, role);
                const auto c = window_detail::context(state);
                window_detail::write(
                    state, c + 0x47e0,
                    window_detail::read<ReU32>(state, c + 0x47e0, 0x39b77c) | 2u, 0x39b77c);
                window_detail::write(state, c + 0x4800, size, 0x39b78a);
                window_detail::write(state, c + 0x47e8, condition ? condition : 1u, 0x39b796);
                last = {};
                return re::ReMonostate{};
            }
            case 0x39b71c: {
                const auto alpha = argument<float>(args, 0, role);
                const auto c = window_detail::context(state);
                window_detail::write(
                    state, c + 0x47e0,
                    window_detail::read<ReU32>(state, c + 0x47e0, 0x39b723) | 0x40u,
                    0x39b723);
                window_detail::write(state, c + 0x4840, alpha, 0x39b72a);
                last = {};
                return re::ReMonostate{};
            }
            case 0x39b7a0: {
                const auto minimum = argument<Vec2>(args, 0, role),
                           maximum = argument<Vec2>(args, 1, role);
                const auto callback = argument<Address>(args, 2, role),
                           user = argument<Address>(args, 3, role);
                const auto c = window_detail::context(state);
                window_detail::write(
                    state, c + 0x47e0,
                    window_detail::read<ReU32>(state, c + 0x47e0, 0x39b7c7) | 0x10u,
                    0x39b7c7);
                window_detail::write(state, c + 0x4838, user, 0x39b7d6);
                window_detail::write(state, c + 0x481c,
                                     ClipRect{minimum.x, minimum.y, maximum.x, maximum.y},
                                     0x39b7e2);
                window_detail::write(state, c + 0x4830, callback, 0x39b7ea);
                last = {};
                return re::ReMonostate{};
            }
            case 0x39bb20:
                window_detail::position(state, window_detail::current(state),
                                        argument<Vec2>(args, 0, role),
                                        args.size() > 1 ? flags(args, 1, role) : 0);
                last = {};
                return re::ReMonostate{};
            case 0x39bc6c:
                window_detail::size(state, window_detail::current(state),
                                    argument<Vec2>(args, 0, role),
                                    args.size() > 1 ? flags(args, 1, role) : 0);
                last = {};
                return re::ReMonostate{};
            default:
                return fallback.external ? fallback.external(role, args) : re::re_nullopt;
            }
        }
    };
    return result;
}
} // namespace rust_internal_re
