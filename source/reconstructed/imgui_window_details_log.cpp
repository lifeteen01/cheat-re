#include "re_compat.h"
#include "imgui_window_details_internal.hpp"
namespace rust_internal_re::window_details {
namespace {
re::ReString literal_format(re::ReStringView text) {
    re::ReString out;
    for (ReUSize i = 0; i < text.size(); ++i) {
        if (text[i] != '%') {
            out.push_back(text[i]);
            continue;
        }
        if (i + 1 >= text.size() || text[i + 1] != '%')
            { __builtin_trap(); }
        out.push_back('%');
        ++i;
    }
    return out;
}
void append(ImguiWindowDetailsState &s, const ImguiWindowsApi &api, Address v,
            re::ReStringView bytes) {
    if (bytes.empty())
        return;
    const auto n = read<ReI32>(s, v, 0x39e2ac);
    const auto capacity = read<ReI32>(s, v + 4, 0x39e2b4);
    auto data = read<Address>(s, v + 8, 0x38bb70);
    if (n < 0 || capacity < n)
        { __builtin_trap(); }
    const auto offset = n ? n : 1;
    const auto required64 = ReI64(offset) + ReI64(bytes.size());
    if (required64 > INT32_MAX)
        { __builtin_trap(); }
    const auto required = ReI32(required64);
    if (required >= capacity) {
        const auto doubled = re::re_bit_cast<ReI32>(ReU32(capacity) * 2u);
        const auto next = re::re_max(required, doubled);
        if (next < 0 || next > 100000000)
            { __builtin_trap(); }
        if (!api.reserve_storage)
            { __builtin_trap(); }
        const auto replacement = api.reserve_storage(ReUSize(next));
        for (int i = 0; i < n; ++i)
            write(s, replacement + Address(i), read<ReByte>(s, data + Address(i), 0x3c8d4c),
                  0x3c8d4c);
        write(s, v + 8, replacement, 0x37a69c);
        write(s, v + 4, next, 0x37a69c);
        data = replacement;
    }
    write(s, v, required, 0x37acd4);
    for (ReUSize i = 0; i < bytes.size(); ++i)
        write(s, data + Address(offset - 1) + i, ReU8(bytes[i]), 0x393270);
    write(s, data + Address(required - 1), ReU8(0), 0x393270);
}
} // namespace
} // namespace rust_internal_re::window_details
namespace rust_internal_re {
void imgui_window_details_log_text_394e5c(ImguiWindowDetailsState &s, const ImguiWindowsApi &api,
                                          re::ReOptional<Vec2> position, re::ReStringView text) {
    using namespace window_details;
    ReUSize calls = 0;
    const auto output = [&](re::ReStringView bytes) {
        const auto c = context(s);
        if (!read<ReU8>(s, c + 0x5c90, 0x395056))
            return;
        if (read<Address>(s, c + 0x5c98, 0x395083))
            write(s, c + 0x5ca0, 0, 0x37acf7);
        append(s, api, c + 0x5ca0, bytes);
    };
    const auto newline = [&]() {
        output(literal_format(window_detail::cstring(windows(s), 0x2aa12c, 0x395038)));
    };
    re::ReFunction<void(re::ReStringView)> render = [&](re::ReStringView part) {
        if (++calls > 1024)
            __builtin_trap();
        for (;;) {
            const auto c = context(s);
            const auto suffix = read<Address>(s, c + 0x5cb8, 0x394e80);
            const auto prefix = read<Address>(s, c + 0x5cb0, 0x394e87);
            const auto w = read<Address>(s, c + 0x3f08, 0x394e8e);
            write(s, c + 0x5cb8, Address(0), 0x394e9a);
            write(s, c + 0x5cb0, Address(0), 0x394ea5);
            if (position) {
                const auto previous = read<float>(s, c + 0x5cc0, 0x394ece);
                const auto padding = read<float>(s, c + 0x3810, 0x394ed2);
                const auto one = read<float>(s, 0x28d254, 0x394ee0);
                const bool next_line = position->y > (previous + padding) + one;
                write(s, c + 0x5cc0, position->y, 0x394efc);
                if (next_line) {
                    newline();
                    write(s, c + 0x5cc4, ReU8(1), 0x394f0e);
                }
            }
            if (prefix) {
                const auto bytes = window_detail::cstring(windows(s), prefix, 0x3ca904);
                render(bytes);
            }
            const auto depth = read<ReI32>(s, w + 0x188, 0x394f31);
            auto baseline = read<ReI32>(s, c + 0x5cc8, 0x394f39);
            if (baseline > depth) {
                baseline = depth;
                write(s, c + 0x5cc8, baseline, 0x394f43);
            }
            const auto indent =
                re::re_bit_cast<ReI32>(ReU32(sub(depth, baseline)) * 4u);
            ReUSize start = 0;
            for (;;) {
                const auto found = part.find('\n', start);
                const auto end = found == re::ReStringView::npos ? part.size() : found;
                if (start == end && end == part.size())
                    break;
                const auto width = read<ReU8>(s, c + 0x5cc4, 0x394f74) ? indent : 1;
                const auto field = window_detail::cstring(windows(s), 0x28d328, 0x394fae);
                const auto absolute =
                    width < 0 ? ReU64(-ReI64(width)) : ReU64(width);
                if (absolute > 1000000)
                    { __builtin_trap(); }
                const auto pad = absolute > field.size() ? ReUSize(absolute) - field.size() : 0;
                re::ReString formatted;
                if (width >= 0)
                    formatted = re::re_string_fill(ReUSize(pad), ' ');
                formatted += field;
                if (width < 0)
                    formatted += re::re_string_fill(pad, ' ');
                auto segment = part.substr(start, end - start);
                segment = segment.substr(0, segment.find('\0'));
                formatted.append(segment);
                output(formatted);
                write(s, c + 0x5cc4, ReU8(0), 0x394fbc);
                if (found != re::ReStringView::npos) {
                    newline();
                    write(s, c + 0x5cc4, ReU8(1), 0x394fd5);
                }
                if (end == part.size())
                    break;
                start = end + 1;
            }
            if (!suffix)
                break;
            const auto bytes = window_detail::cstring(windows(s), suffix, 0x3ca904);
            render(bytes);
            break;
        }
    };
    render(text);
}
void imgui_window_details_log_finish_394dd4(ImguiWindowDetailsState &s,
                                            const ImguiWindowDetailsApi &api,
                                            const ImguiWindowsApi &windows_api) {
    using namespace window_details;
    const auto c = context(s);
    if (!read<ReU8>(s, c + 0x5c90, 0x394de5))
        return;
    const auto format = window_detail::cstring(windows(s), 0x2aa12c, 0x395038);
    if (read<ReU8>(s, c + 0x5c90, 0x395056)) {
        if (read<Address>(s, c + 0x5c98, 0x395083))
            write(s, c + 0x5ca0, 0, 0x37acf7);
        append(s, windows_api, c + 0x5ca0, literal_format(format));
    }
    if (read<ReI32>(s, c + 0x5c94, 0x394dfa) == 4 &&
        read<ReI32>(s, c + 0x5ca0, 0x39eba4) > 1) {
        const auto data = read<Address>(s, c + 0x5ca8, 0x39e3a4);
        const auto text_address = data ? data : Address(0x405b20);
        const auto target = read<Address>(s, c + 0xb8, 0x39b206);
        if (target) {
            const auto user = read<Address>(s, c + 0xc0, 0x39b212);
            if (!api.clipboard_leaf)
                __builtin_trap();
            const auto bytes = window_detail::cstring(windows(s), text_address, 0x39b219);
            api.clipboard_leaf(target, user, bytes);
        }
    }
    write(s, c + 0x5c90, ReU8(0), 0x394e2d);
    write(s, c + 0x5c94, 0u, 0x394e34);
    write(s, c + 0x5c98, Address(0), 0x394e3e);
    const auto data = read<Address>(s, c + 0x5ca8, 0x379581);
    if (data) {
        write(s, c + 0x5ca0, ReU64(0), 0x37958a);
        draw_core_free_39517c(*controls(s).image, data, windows_api.free_leaf);
        write(s, c + 0x5ca8, Address(0), 0x379596);
    }
}
} // namespace rust_internal_re
