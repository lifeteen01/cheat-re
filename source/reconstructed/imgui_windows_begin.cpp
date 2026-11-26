#include "imgui_windows_internal.hpp"
namespace rust_internal_re::window_detail {
namespace {
ReU32 signed_byte(ImguiWindowsState &s, Address p, Rva at) {
    return ReU32(ReI32(read<ReI8>(s, p, at)));
}
template <class T>
void push(ImguiWindowsState &s, const ImguiWindowsApi &api, Address vector, const T &value, Rva at,
          ReUSize initialized = 0) {
    const auto bytes = re::re_bit_cast<re::ReArray<ReByte, sizeof(T)>>(value);
    push_bytes(s, api, vector, bytes, at, initialized);
}
void focus_push(ImguiWindowsState &s, const ImguiWindowsApi &api, ReU32 scope) {
    const auto c = context(s);
    push(s, api, c + 0x4880, scope, 0x398a5c);
    write(s, c + 0x4784, scope, 0x398a5c);
}
void next_data(ImguiWindowsState &s, const ImguiWindowsApi &api, BeginFrame &f) {
    const auto c = context(s), w = f.window;
    const auto flags = read<ReU32>(s, c + 0x47e0, 0x38d2ad);
    if (flags & 1) {
        const auto condition = read<ReU32>(s, c + 0x47e4, 0x38d2b7);
        f.position_set = bool(condition & signed_byte(s, w + 0xdc, 0x38d2be));
        bool deferred = false;
        if (f.position_set) {
            const auto pivot = read<Vec2>(s, c + 0x47f8, 0x3933f4);
            if (pivot.x * pivot.x + pivot.y * pivot.y > read<float>(s, 0x28dad0, 0x38d2e4)) {
                deferred = true;
                write(s, w + 0xe0, read<Vec2>(s, c + 0x47f0, 0x38d2ed), 0x38d2f6);
                write(s, w + 0xe8, pivot, 0x38d305);
                const auto allow = read<ReU32>(s, w + 0xdc, 0x38d314);
                write(s, w + 0xdc, (allow & 0xffffff00u) | (allow & 0xf1u), 0x38d322);
            }
        }
        if (!deferred && (!condition || f.position_set))
            position(s, w, read<Vec2>(s, c + 0x47f0, 0x38d32b), condition);
    }
    if (flags & 2) {
        const auto condition = read<ReU32>(s, c + 0x47e8, 0x38d353);
        const auto allowed = condition & signed_byte(s, w + 0xdd, 0x38d34b);
        if (!condition || allowed) {
            const auto v = read<Vec2>(s, c + 0x4800, 0x38d35f);
            f.size_x = allowed && v.x > 0;
            f.size_y = allowed && v.y > 0;
            size(s, w, v, condition);
        }
    }
    if (flags & 0x80) {
        const auto scroll = read<Vec2>(s, c + 0x4810, 0x38d3a9);
        if (scroll.x >= 0) {
            write(s, w + 0x94, scroll.x, 0x38d3b8);
            write(s, w + 0x9c, 0.0f, 0x38d3c0);
        }
        if (scroll.y >= 0) {
            write(s, w + 0x98, scroll.y, 0x38d3d9);
            write(s, w + 0xa0, 0.0f, 0x38d3e1);
        }
    }
    if (flags & 4)
        write(s, w + 0x48, read<Vec2>(s, c + 0x4808, 0x38d3f6), 0x38d3ff);
    else if (f.old_frame != f.frame)
        write(s, w + 0x48, Vec2{}, 0x38d42d);
    if (flags & 8)
        collapsed(s, w, read<ReU8>(s, c + 0x4818, 0x38d445),
                  read<ReU32>(s, c + 0x47ec, 0x38d43b));
    if (flags & 0x20)
        menu_detail::focus_window(control(s), effective_controls(s, api), w, 0);
    if (read<ReU8>(s, w + 0xbc, 0x38d468))
        allow_condition(s, w, 8, false);
}
bool finish(ImguiWindowsState &s, const ImguiWindowsApi &api, const BeginFrame &f) {
    (void)api;
    const auto c = context(s), w = f.window;
    auto &owner = control(s);
    const auto draw = read<Address>(s, w + 0x298, 0x3989f8);
    if (!owner.draw || !owner.draw->lists.contains(draw))
        { __builtin_trap(); }
    auto &list = owner.draw->lists[draw];
    const auto clip = read<ClipRect>(s, w + 0x208, 0x38e74b);
    draw_core_push_clip_3a7268(list, {clip.x, clip.y}, {clip.z, clip.w}, true);
    const auto top = list.clip_stack.at(list.clip_stack.size - 1);
    write(s, w + 0x238, ClipRect{top[0], top[1], top[2], top[3]}, 0x3989f8);
    write(s, w + 0xb8, ReU8(0), 0x38e769);
    write(s, w + 0xc2, ReU16(read<ReU16>(s, w + 0xc2, 0x38e770) + 1), 0x38e770);
    write(s, c + 0x47e0, 0u, 0x3900f8);
    if (f.old_frame != f.frame) {
        if (f.flags & 0x1000000) {
            if (!(f.flags & 0x40) && read<ReI8>(s, w + 0xd0, 0x38e7a1) <= 0 &&
                read<ReI8>(s, w + 0xd1, 0x38e7aa) <= 0) {
                bool navigation = false;
                if ((f.flags & 0x800000) && read<ReU8>(s, c + 0x4928, 0x38e7ba)) {
                    const auto nav = read<Address>(s, c + 0x48e8, 0x38e7c3);
                    navigation = nav && read<Address>(s, nav + 0x390, 0x38e7d6) ==
                                            read<Address>(s, w + 0x390, 0x38e7cf);
                }
                if (!navigation && !read<ReU8>(s, c + 0x5c90, 0x38e7e4)) {
                    const auto rect = read<ClipRect>(s, w + 0x1e8, 0x38e7ed);
                    if (rect.x >= rect.z || rect.y >= rect.w)
                        write(s, w + 0xd8, ReU8(1), 0x38e80f);
                }
            }
            if (f.parent) {
                if (read<ReU8>(s, f.parent + 0xb9, 0x38e81b) ||
                    read<ReI8>(s, f.parent + 0xd8, 0x38e824) > 0)
                    write(s, w + 0xd8, ReU8(1), 0x38e82d);
                if (read<ReU8>(s, f.parent + 0xb9, 0x38e834) ||
                    read<ReI8>(s, f.parent + 0xd9, 0x38e83d) > 0)
                    write(s, w + 0xd9, ReU8(1), 0x38e84c);
            }
        }
        if (read<float>(s, c + 0x37d0, 0x38e85b) <= 0)
            write(s, w + 0xd8, ReU8(1), 0x38e865);
        const bool hidden = read<ReI8>(s, w + 0xd8, 0x38e86c) > 0 ||
                            read<ReI8>(s, w + 0xd9, 0x38e875) > 0;
        write(s, w + 0xbd, ReU8(hidden || read<ReI8>(s, w + 0xda, 0x38e881) > 0),
              0x38e895);
        const auto disable = read<ReI8>(s, w + 0xdb, 0x38e89b);
        if (disable > 0) {
            write(s, w + 0xdb, ReU8(ReU8(disable) - 1), 0x38e8a7);
            write(s, w + 0x14, read<ReU32>(s, w + 0x14, 0x38e8ad) | 0xc0200u, 0x38e8ad);
        }
        const bool skip = (read<ReU8>(s, w + 0xb9, 0x38e8b8) ||
                           !read<ReU8>(s, w + 0xb6, 0x38e8c1) || hidden) &&
                          read<ReI8>(s, w + 0xd0, 0x38e8ce) <= 0 &&
                          read<ReI8>(s, w + 0xd1, 0x38e8d7) <= 0 &&
                          read<ReI8>(s, w + 0xd9, 0x38e8e0) <= 0;
        write(s, w + 0xbb, ReU8(skip), 0x38e8eb);
    }
    if (!read<ReU8>(s, w + 0xbe, 0x38e8f1)) {
        const bool once = read<ReU8>(s, c + 0x84, 0x38e8fa) && !f.found;
        const bool loop = read<ReU8>(s, c + 0x85, 0x38e909) &&
                          ReI32(read<ReI8>(s, c + 0x5d02, 0x38e912)) ==
                              read<ReI32>(s, c + 0x3ed8, 0x38e91a);
        if (once || loop) {
            for (auto offset : {0xd0u, 0xd1u}) {
                const auto n = read<ReI8>(s, w + offset, 0x38e923);
                if (n > 0)
                    write(s, w + offset, ReU8(ReU8(n) + 1), 0x38e92f);
            }
            return false;
        }
    }
    return !read<ReU8>(s, w + 0xbb, 0x38e94b);
}
} // namespace
ImguiWindowResult begin(ImguiWindowsState &s, const ImguiWindowsApi &api,
                        const ImguiWindowBeginRequest &request) {
    const auto c = context(s);
    BeginFrame f;
    f.found = imgui_window_find_391c78(s, request.name);
    f.window = f.found;
    f.created = !f.found;
    if (!f.window) {
        f.window = api.create_window_3908d4 ? api.create_window_3908d4(request.name, request.flags)
                                            : create_window(s, api, request.name, request.flags);
        if (!f.window)
            __builtin_trap();
    }
    const auto w = f.window;
    f.frame = read<ReI32>(s, c + 0x3e60, 0x38d017);
    f.old_frame = read<ReI32>(s, w + 0x260, 0x38d03d);
    f.flags = request.flags;
    if ((f.flags & 0xc0200) == 0xc0200)
        f.flags |= 6;
    const bool implicit = read<ReI32>(s, c + 0x3ed8, 0x38d04c) == 0 &&
                          read<ReU8>(s, c + 0x3e6d, 0x38d056);
    write(s, w + 0xbe, ReU8(implicit), 0x38d06a);
    f.appearing = f.old_frame < sub(f.frame, 1);
    if (f.flags & 0x4000000) {
        const auto record =
            element(s, c + 0x48b0, read<ReI32>(s, c + 0x48c0, 0x38d07d), 56, 0x38d08b);
        f.appearing =
            f.appearing || read<Address>(s, record + 8, 0x38d095) != w ||
            read<ReU32>(s, w + 0xcc, 0x38d09e) != read<ReU32>(s, record, 0x38d099);
    }
    write(s, w + 0xbc, ReU8(f.appearing), 0x38d0b8);
    if (f.appearing)
        allow_condition(s, w, 8, true);
    if (f.old_frame != f.frame) {
        focus_order(s, api, w, f.created, f.flags);
        write(s, w + 0x14, f.flags, 0x38d0ea);
        write(s, w + 0x260, f.frame, 0x38d0f0);
        write(s, w + 0x264, float(read<double>(s, c + 0x3e58, 0x38d0f7)), 0x38d104);
        write(s, w + 0xc6, ReU16(0), 0x38d10d);
        write(s, w + 0xc8, read<ReU16>(s, c + 0x3ef8, 0x38d115), 0x38d124);
        write(s, c + 0x3ef8, read<ReU32>(s, c + 0x3ef8, 0x38d11d) + 1u, 0x38d11d);
    } else
        f.flags = read<ReU32>(s, w + 0x14, 0x38d12e);
    const auto stack = c + 0x3ed8;
    const auto count = read<ReI32>(s, stack, 0x2d0d60);
    f.previous =
        count ? read<Address>(s, element(s, stack, count - 1, 0x58, 0x38d14d), 0x38d152) : 0;
    f.parent = f.old_frame != f.frame ? ((f.flags & 0x5000000) ? f.previous : 0)
                                      : read<Address>(s, w + 0x368, 0x38d16d);
    if (!read<ReI32>(s, w + 0xf0, 0x38d174))
        push(s, api, w + 0xf0, read<ReU32>(s, w + 0x10, 0x38d189), 0x39eee8);
    write(s, c + 0x3f08, w, 0x38d199);
    ImguiWindowStackRecord record;
    record.window = w;
    record.last_item = read<re::ReArray<ReByte, 60>>(s, c + 0x47a4, 0x38d1a5);
    record.stack_sizes[0] = read<ReU16>(s, w + 0xf0, 0x39b947);
    ReUSize i = 1;
    for (auto offset : {0x4850u, 0x4860u, 0x4870u, 0x4880u, 0x48a0u, 0x4890u, 0x48c0u, 0x5bb0u})
        record.stack_sizes[i++] = read<ReU16>(s, c + offset, 0x39b940);
    push(s, api, stack, record, 0x39f0c8, 86);
    if (f.flags & 0x10000000)
        write(s, c + 0x48d0, read<ReU32>(s, c + 0x48d0, 0x38d203) + 1u, 0x38d203);
    if (f.old_frame != f.frame) {
        roots(s, w, f.flags, f.parent);
        write(s, w + 0x370, f.previous, 0x38d222);
    }
    focus_push(s, api, read<ReU32>(s, w + 0x10, 0x38d229));
    write(s, w + 0x3c8, read<ReU32>(s, c + 0x4784, 0x38d232), 0x38d239);
    write(s, c + 0x3f08, Address(0), 0x38d248);
    if (f.flags & 0x4000000) {
        const auto open =
            element(s, c + 0x48b0, read<ReI32>(s, c + 0x48c0, 0x38d260), 56, 0x38d269);
        write(s, open + 8, w, 0x38d274);
        write(s, open + 0x18, read<ReI32>(s, f.previous + 0x158, 0x38d278), 0x38d27f);
        const auto copy = read<re::ReArray<ReByte, 56>>(s, open, 0x38d282);
        push(s, api, c + 0x48c0, copy, 0x39ef2c);
        write(s, w + 0xcc, read<ReU32>(s, open, 0x38d28a), 0x38d293);
    }
    next_data(s, api, f);
    if (f.old_frame != f.frame)
        first_frame(s, api, request, f);
    else
        set_current(s, api, w);
    return {{}, w, finish(s, api, f)};
}
} // namespace rust_internal_re::window_detail
namespace rust_internal_re {
ImguiWindowResult imgui_window_begin_38cfa4(ImguiWindowsState &s, const ImguiWindowsApi &api,
                                            const ImguiWindowBeginRequest &request) {
    {
        return window_detail::begin(s, api, request);
    }
}
} // namespace rust_internal_re
