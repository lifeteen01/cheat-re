#include "imgui_windows_internal.hpp"
namespace rust_internal_re::window_detail {
bool child_of(ImguiWindowsState &s, Address w, Address parent) {
    if (read<Address>(s, w + 0x378, 0x3948bc) == parent)
        return true;
    for (; w; w = read<Address>(s, w + 0x370, 0x3948ca))
        if (w == parent)
            return true;
    return false;
}
void focus_below(ImguiWindowsState &s, const ImguiWindowsApi &api, Address start, Address ignore,
                 ReU32 flags) {
    const auto c = context(s), v = c + 0x3eb8;
    ReI32 index;
    if (start) {
        ReI32 offset = -1;
        while (read<ReU32>(s, start + 0x14, 0x391e98) & 0x1000000) {
            start = read<Address>(s, start + 0x368, 0x391e8e);
            offset = 0;
        }
        index = ReI32(read<ReI16>(s, start + 0xca, 0x391d18)) + offset;
    } else
        index = sub(read<ReI32>(s, v, 0x391ea8), 1);
    Address selected = 0;
    for (; index >= 0; --index) {
        const auto w = read<Address>(s, element(s, v, index, 8, 0x391ec1), 0x391ec6);
        if (w == ignore || !read<ReU8>(s, w + 0xb7, 0x391ece))
            continue;
        if ((read<ReU32>(s, w + 0x14, 0x391ed7) & 0x40200) != 0x40200) {
            selected = w;
            break;
        }
    }
    menu_detail::focus_window(control(s), effective_controls(s, api), selected, flags);
}
void trim(ImguiWindowsState &s, const ImguiWindowsApi &api, ReI32 remaining, bool restore) {
    const auto c = context(s), v = c + 0x48b0;
    const auto entry = element(s, v, remaining, 56, 0x390341);
    const auto window = read<Address>(s, entry + 8, 0x39034b);
    auto focus = read<Address>(s, entry + 16, 0x390359);
    if (remaining < 0)
        { __builtin_trap(); }
    write(s, v, remaining, 0x39035d);
    if (!restore)
        return;
    if (window && (read<ReU32>(s, window + 0x14, 0x39036c) & 0x10000000))
        focus = read<Address>(s, window + 0x368, 0x390375);
    if (focus && !read<ReU8>(s, focus + 0xb7, 0x390381) && window) {
        if (api.focus_below_391e68)
            api.focus_below_391e68(window, 0, 0, 1);
        else
            focus_below(s, api, window, 0, 1);
    } else
        menu_detail::focus_window(control(s), effective_controls(s, api), focus,
                                  read<ReU32>(s, c + 0x4920, 0x3903aa) == 0 ? 1u : 0u);
}
void close(ImguiWindowsState &s, const ImguiWindowsApi &api) {
    const auto c = context(s), begun = c + 0x48c0, open = c + 0x48b0;
    auto index = sub(read<ReI32>(s, begun, 0x390279), 1);
    if (index < 0 || index >= read<ReI32>(s, open, 0x39028b))
        return;
    const auto a = element(s, begun, index, 56, 0x390292),
               b = element(s, open, index, 56, 0x39029f);
    if (read<ReU32>(s, a, 0x3902a6) != read<ReU32>(s, b, 0x3902a4))
        return;
    while (index > 0) {
        const auto w = read<Address>(s, element(s, open, index, 56, 0x3902b3) + 8, 0x3902c2);
        const auto previous =
            read<Address>(s, element(s, open, index - 1, 56, 0x3902c6) + 8, 0x3902d9);
        if (!w || !(read<ReU32>(s, w + 0x14, 0x3902d0) & 0x10000000) || !previous ||
            (read<ReU32>(s, previous + 0x14, 0x3902e2) & 0x400))
            break;
        --index;
    }
    trim(s, api, index, true);
    const auto nav = read<Address>(s, c + 0x48e8, 0x3902fc);
    if (nav)
        write(s, nav + 0x161, ReU8(1), 0x390308);
}
} // namespace rust_internal_re::window_detail
namespace rust_internal_re {
Address imgui_window_find_391c78(ImguiWindowsState &s, re::ReStringView name) {
    using namespace window_detail;
    const auto v = context(s) + 0x3ea8;
    const auto n = read<ReI32>(s, v, 0x39f238);
    const auto input_end = name.find('\0');
    name = name.substr(0, input_end);
    for (ReI32 i = 0; i < n; ++i) {
        const auto w = read<Address>(s, element(s, v, i, 8, 0x391ca7), 0x391caf);
        const auto text = read<Address>(s, w + 8, 0x391cb2);
        if (cstring(s, text, 0x3ca884) == name)
            return w;
    }
    return 0;
}
Address imgui_window_modal_391928(ImguiWindowsState &s, Address relative) {
    using namespace window_detail;
    const auto c = context(s);
    const auto n = read<ReI32>(s, c + 0x48b0, 0x39193d);
    if (n <= 0)
        return 0;
    const auto data = read<Address>(s, c + 0x48b8, 0x391947);
    for (auto i = n - 1; i >= 0; --i) {
        const auto w = read<Address>(s, data + Address(i) * 56 + 8, 0x391957);
        if (!w || !(read<ReU32>(s, w + 0x14, 0x391961) & 0x8000000))
            continue;
        if (!read<ReU8>(s, w + 0xb6, 0x39196a) &&
            !read<ReU8>(s, w + 0xb7, 0x391973))
            continue;
        if (!relative)
            return w;
        if (child_of(s, relative, w))
            return 0;
        auto parent = read<Address>(s, w + 0x370, 0x391990);
        for (;;) {
            if (!parent)
                __builtin_trap();
            const auto root = read<Address>(s, parent + 0x378, 0x3919af);
            if (!root)
                break;
            if (child_of(s, relative, root))
                return w;
            parent = read<Address>(s, root + 0x370, 0x3919a8);
        }
    }
    return 0;
}
void imgui_window_order_38f020(ImguiWindowsState &s, Address window, Address modal) {
    using namespace window_detail;
    const auto c = context(s), v = c + 0x3ea8;
    const auto root = read<Address>(s, window + 0x378, 0x38f029),
               other = read<Address>(s, modal + 0x378, 0x38f042);
    const auto n = read<ReI32>(s, v, 0x391ce0);
    const auto data = read<Address>(s, v + 8, 0x38f051);
    auto index = [&](Address w) {
        for (ReI32 i = 0; i < n; ++i)
            if (read<Address>(s, data + Address(i) * 8, 0x391ce0) == w)
                return i;
        { __builtin_trap(); }
    };
    const auto from = index(root), to = index(other);
    ReI32 target;
    if (from < to) {
        for (auto i = from; i < to - 1; ++i)
            write(s, data + Address(i) * 8, read<Address>(s, data + Address(i + 1) * 8, 0x3c8d4c),
                  0x3c8d4c);
        target = to - 1;
    } else {
        for (auto i = from; i > to; --i)
            write(s, data + Address(i) * 8, read<Address>(s, data + Address(i - 1) * 8, 0x3c8d4c),
                  0x3c8d4c);
        target = to;
    }
    write(s, element(s, v, target, 8, 0x38f0a9), root, 0x38f0ae);
}
FrameDependencyResult imgui_window_trim_39031c(ImguiWindowsState &s, const ImguiWindowsApi &api,
                                               ReI32 count, bool restore) {
    {
        window_detail::trim(s, api, count, restore);
        return {};
    }
}
FrameDependencyResult imgui_window_close_390260(ImguiWindowsState &s, const ImguiWindowsApi &api) {
    {
        window_detail::close(s, api);
        return {};
    }
}
} // namespace rust_internal_re
