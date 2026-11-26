#include "imgui_windows_internal.hpp"
namespace rust_internal_re::window_detail {
namespace {
float trunc(float value) {
    return float(menu_detail::cvtt(value));
}
Vec2 trunc(Vec2 value) {
    return {trunc(value.x), trunc(value.y)};
}
ClipRect intersect(ClipRect a, ClipRect b) {
    return {menu_detail::maxss(a.x, b.x), menu_detail::maxss(a.y, b.y),
            menu_detail::minss(a.z, b.z), menu_detail::minss(a.w, b.w)};
}
float clamp(float value, float low, float high) {
    return low > value ? low : menu_detail::minss(high, value);
}
DrawCoreList &draw_list(ImguiWindowsState &s, Address w, Rva site) {
    const auto p = read<Address>(s, w + 0x298, site);
    auto &owner = control(s);
    if (!owner.draw || !owner.draw->lists.contains(p))
        { __builtin_trap(); }
    return owner.draw->lists[p];
}
void clip_push(ImguiWindowsState &s, Address w, ClipRect bounds) {
    auto &list = draw_list(s, w, 0x3989f8);
    draw_core_push_clip_3a7268(list, {bounds.x, bounds.y}, {bounds.z, bounds.w}, false);
    const auto top = list.clip_stack.at(list.clip_stack.size - 1);
    write(s, w + 0x238, ClipRect{top[0], top[1], top[2], top[3]}, 0x3989f8);
}
void rename(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w, re::ReStringView name) {
    name = name.substr(0, name.find('\0'));
    auto p = read<Address>(s, w + 8, 0x38d567);
    if (cstring(s, p, 0x3ca884) == name)
        return;
    auto capacity = ReU64(ReI64(read<ReI32>(s, w + 0x78, 0x38d577)));
    const auto required = name.size() + 1;
    if (capacity < required) {
        draw_core_free_39517c(*control(s).image, p, api.free_leaf);
        p = draw_core_allocate_395158(*control(s).image, required, api.allocation_leaf);
        capacity = required;
    }
    for (ReUSize i = 0; i < name.size(); ++i)
        write(s, p + i, ReU8(name[i]), 0x3c8d4c);
    write(s, p + name.size(), ReU8(0), 0x3c8d4c);
    write(s, w + 8, p, 0x38d591);
    write(s, w + 0x78, ReU32(capacity), 0x38d599);
}
void clamp_position(ImguiWindowsState &s, Address w, ClipRect visibility) {
    auto size = read<Vec2>(s, w + 0x28, 0x38ff20);
    if (read<ReU8>(s, context(s) + 0x7f, 0x38ff3f) &&
        !(read<ReU8>(s, w + 0x14, 0x38ff45) & 1))
        size.y = title_height(s, w);
    auto pos = read<Vec2>(s, w + 0x20, 0x38ff75);
    pos = {clamp(pos.x, visibility.x - size.x, visibility.z),
           clamp(pos.y, visibility.y - size.y, visibility.w)};
    write(s, w + 0x20, pos, 0x38ff99);
}
} // namespace
// [C]38d48b..38e73c: all controller branches are represented. Reached local
// resize/decorations/title bodies have typed required boundaries, never success defaults.
void first_frame(ImguiWindowsState &s, const ImguiWindowsApi &api,
                 const ImguiWindowBeginRequest &request, BeginFrame &f) {
    const auto c = context(s), w = f.window;
    const auto flags = f.flags;
    const bool child = flags & 0x1000000, popup = flags & 0x4000000,
               child_tooltip = child && (flags & 0x2000000);
    const auto old_hidden = read<ReI8>(s, w + 0xd9, 0x38d4b1);
    const auto maximum = read<float>(s, 0x28db54, 0x38d4bb);
    const auto negative_maximum = read<float>(s, 0x2a9444, 0x38d4c3);
    write(s, w + 0xb6, ReU8(1), 0x38d4e0);
    write(s, w + 0xc0, ReU8(request.open_byte.has_value()), 0x38d4e7);
    write(s, w + 0x238, ClipRect{negative_maximum, negative_maximum, maximum, maximum}, 0x38d510);
    // [I] Logical ImVector resize preserves the copied allocation and initial ID.
    if (read<ReI32>(s, w + 0xf4, 0x364ef0) < 1) {
        __builtin_trap();
    }
    write(s, w + 0xf0, 1, 0x364ef0);
    auto &draw = draw_list(s, w, 0x38d51d);
    const auto draw_address = read<Address>(s, w + 0x298, 0x38d51d);
    // [C]3a9273..3a92a0 clears/merges precede the required shared-data read.
    // Reusing reset below repeats only the now-empty logical size writes.
    if (draw.splitter.count > 1)
        draw_core_merge_3a65c4(draw);
    draw.commands.resize(0);
    draw.indices.resize(0);
    draw.vertices.resize(0);
    const auto shared = read<Address>(s, draw_address + 0x38, 0x3a92a0);
    draw.shared_initial_flags = read<ReU32>(s, shared + 0x2c, 0x3a92a9);
    draw_core_reset_3a9258(draw);
    write(s, w + 0x1b0, -1, 0x38d529);
    if (read<ReU8>(s, w + 0x3d4, 0x38d533)) {
        write(s, w + 0x3d4, ReU8(0), 0x39204d);
        draw.indices.reserve(read<ReI32>(s, w + 0x3cc, 0x39205f));
        draw.vertices.reserve(read<ReI32>(s, w + 0x3d0, 0x392071));
        write(s, w + 0x3cc, ReU64(0), 0x392080);
    }
    if (read<Address>(s, c + 0x4a60, 0x38d544) &&
        !(read<ReU32>(s, w + 0x14, 0x38d552) & 0x80000) && f.found)
        rename(s, api, w, request.name);
    content_sizes(s, w);
    for (auto offset : {0xd8u, 0xd9u, 0xdau}) {
        const auto n = read<ReI8>(s, w + offset, 0x38d5b3);
        if (n > 0)
            write(s, w + offset, ReU8(ReU8(n) - 1), 0x38d5c1);
    }
    if (!f.found && (!f.size_x || !f.size_y))
        write(s, w + 0xd9, ReU8(1), 0x38d5fa);
    if (f.appearing && (flags & 0x6000000)) {
        write(s, w + 0xd9, ReU8(1), 0x38d610);
        if (flags & 0x40) {
            if (!f.size_x) {
                write(s, w + 0x30, 0.0f, 0x38d622);
                write(s, w + 0x28, 0.0f, 0x38d625);
            }
            if (!f.size_y) {
                write(s, w + 0x34, 0.0f, 0x38d62d);
                write(s, w + 0x2c, 0.0f, 0x38d630);
            }
            write(s, w + 0x40, Vec2{}, 0x38d649);
            write(s, w + 0x38, Vec2{}, 0x38d654);
        }
    }
    const auto vp = viewport(s);
    write(s, w + 0x18, vp, 0x39bd54);
    set_current(s, api, w);
    const auto border_offset =
        child ? 0x3800u : ((flags & 0x6000000) && !(flags & 0x8000000) ? 0x3808u : 0x37e4u);
    write(s, w + 0x5c, read<float>(s, c + border_offset, 0x38d67a), 0x38d6aa);
    write(s, w + 0x50, read<Vec2>(s, c + 0x37d8, 0x38d6af), 0x38d6bc);
    if (child && !(flags & 0x4010000) && read<float>(s, w + 0x5c, 0x38d6ce) == 0)
        write(s, w + 0x50, Vec2{0, (flags & 0x400) ? read<float>(s, c + 0x37dc, 0x38d6e2) : 0},
              0x38d707);
    auto menu_x = menu_detail::maxss(read<float>(s, w + 0x50, 0x38d717),
                                     read<float>(s, c + 0x381c, 0x38d70e));
    menu_x = menu_detail::maxss(menu_x, read<float>(s, c + 0x4844, 0x38d720));
    write(s, w + 0x164, menu_x, 0x38d739);
    write(s, w + 0x168, read<float>(s, c + 0x4848, 0x38d744), 0x38d74b);
    bool changed_x = f.created, changed_y = f.created;
    if (!(flags & 0x21)) {
        const auto title = title_rect(s, w);
        if (read<Address>(s, c + 0x3f10, 0x38d76e) == w &&
            !read<ReU32>(s, c + 0x3f54, 0x38d777) &&
            !read<ReU32>(s, c + 0x3f58, 0x38d781) &&
            menu_detail::mouse_hover(control(s), title, true) &&
            read<ReU16>(s, c + 0x3752, 0x38d7a7) == 2)
            write(s, w + 0xba, ReU8(1), 0x38d7b1);
        if (read<ReU8>(s, w + 0xba, 0x38d7be)) {
            const auto old = read<ReU8>(s, w + 0xb9, 0x38d7c7);
            write(s, w + 0xb9, ReU8(!old), 0x38d7d7);
            if (old)
                changed_y = true;
            dirty(s, w);
        }
    } else
        write(s, w + 0xb9, ReU8(0), 0x38d7e8);
    write(s, w + 0xba, ReU8(0), 0x38d7ef);
    const auto old_scrollbars = read<Vec2>(s, w + 0xac, 0x38d7f9);
    write(s, w + 0x60, 0.0f, 0x38d801);
    write(s, w + 0x68, 0.0f, 0x38d80d);
    const auto title_height_value = title_height(s, w);
    write(s, w + 0x64, title_height_value + menu_height(s, w), 0x38d833);
    write(s, w + 0x6c, 0.0f, 0x38d838);
    write(s, w + 0xac, Vec2{}, 0x38d856);
    const auto auto_fit = auto_fit_size(s, api, w, read<Vec2>(s, w + 0x40, 0x38d864));
    const bool is_collapsed = read<ReU8>(s, w + 0xb9, 0x38d876);
    if ((flags & 0x40) && !is_collapsed) {
        if (!f.size_x) {
            write(s, w + 0x30, auto_fit.x, 0x38d889);
            changed_x = true;
        }
        if (!f.size_y) {
            write(s, w + 0x34, auto_fit.y, 0x38d8a7);
            changed_y = true;
        }
    } else if (read<ReI8>(s, w + 0xd0, 0x38d8b3) > 0 ||
               read<ReI8>(s, w + 0xd1, 0x38d8bd) > 0) {
        if (!f.size_x && read<ReI8>(s, w + 0xd0, 0x38d8ca) > 0) {
            auto value = auto_fit.x;
            if (read<ReU8>(s, w + 0xd3, 0x38d8ce))
                value = menu_detail::maxss(read<float>(s, w + 0x30, 0x38d8dc), value);
            write(s, w + 0x30, value, 0x38d8ee);
            changed_x = true;
        }
        if (!f.size_y && read<ReI8>(s, w + 0xd1, 0x38d8ff) > 0) {
            auto value = auto_fit.y;
            if (read<ReU8>(s, w + 0xd3, 0x38d907))
                value = menu_detail::maxss(read<float>(s, w + 0x34, 0x38d915), value);
            write(s, w + 0x34, value, 0x38d927);
            changed_y = true;
        }
        if (!is_collapsed)
            dirty(s, w);
    }
    const auto full = constrain_size(s, api, w, read<Vec2>(s, w + 0x30, 0x38d943));
    write(s, w + 0x30, full, 0x38d95a);
    write(s, w + 0x28, is_collapsed && !child ? Vec2{full.x, title_height(s, w)} : full, 0x38d9a8);
    if (f.appearing) {
        write(s, w + 0xd4, -1, 0x38d9af);
        if (popup && !(flags & 0x8000000) && !f.position_set) {
            const auto n = read<ReI32>(s, c + 0x48c0, 0x39e324);
            const auto record = element(s, c + 0x48c0, n - 1, 56, 0x39e324);
            write(s, w + 0x20, read<Vec2>(s, record + 0x24, 0x38d9e1), 0x38d9e9);
        }
    }
    if (child) {
        if (!f.parent)
            { __builtin_trap(); }
        write(s, w + 0xc6, read<ReU16>(s, f.parent + 0x190, 0x38da0b), 0x38da0e);
        const auto bytes = re::re_bit_cast<re::ReArray<ReByte, 8>>(w);
        push_bytes(s, api, f.parent + 0x190, bytes, 0x37a658);
        if (!popup && !child_tooltip && !f.position_set)
            write(s, w + 0x20, read<Vec2>(s, f.parent + 0x100, 0x38da34), 0x38da3c);
    }
    const auto deferred = read<Vec2>(s, w + 0xe0, 0x38da51);
    if (deferred.x != maximum && !read<ReU8>(s, w + 0xd9, 0x38da5c)) {
        const auto actual_size = read<Vec2>(s, w + 0x28, 0x38da6c),
                   pivot = read<Vec2>(s, w + 0xe8, 0x38da65);
        position(s, w, {deferred.x - actual_size.x * pivot.x, deferred.y - actual_size.y * pivot.y},
                 0);
    } else if ((flags & 0x10000000) || (popup && !f.position_set && old_hidden > 0) ||
               ((flags & 0x2000000) && !f.position_set && !child_tooltip)) {
        if (!api.auto_position_39138c)
            { __builtin_trap(); }
        write(s, w + 0x20, api.auto_position_39138c(w), 0x38dad4);
    }
    const auto vp_pos = read<Vec2>(s, vp + 4, 0x392845),
               vp_size = read<Vec2>(s, vp + 0xc, 0x39283b);
    const ClipRect viewport_rect{vp_pos.x, vp_pos.y, vp_pos.x + vp_size.x, vp_pos.y + vp_size.y};
    const auto work_pos = read<Vec2>(s, vp + 0x14, 0x392f6a),
               work_size = read<Vec2>(s, vp + 0x1c, 0x392f5b);
    const auto display_pad = read<Vec2>(s, c + 0x388c, 0x38daff),
               safe_pad = read<Vec2>(s, c + 0x3894, 0x38daf8);
    const Vec2 pad{menu_detail::maxss(display_pad.x, safe_pad.x),
                   menu_detail::maxss(display_pad.y, safe_pad.y)};
    const ClipRect visibility{work_pos.x + pad.x, work_pos.y + pad.y,
                              (work_pos.x + work_size.x) - pad.x,
                              (work_pos.y + work_size.y) - pad.y};
    if (!f.position_set && !child && viewport_rect.z - viewport_rect.x > 0 &&
        viewport_rect.w - viewport_rect.y > 0)
        clamp_position(s, w, visibility);
    write(s, w + 0x20, trunc(read<Vec2>(s, w + 0x20, 0x38db7b)), 0x38db93);
    const auto rounding_offset =
        child ? 0x37fcu : (popup && !(flags & 0x8000000) ? 0x3804u : 0x37e0u);
    const auto rounding = read<float>(s, c + rounding_offset, 0x38dba3);
    write(s, w + 0x58, rounding, 0x38dbcf);
    const bool want_focus = f.appearing && !(flags & 0x1000) && (popup || !(flags & 0x3000000));
    const auto grip_count = read<ReU8>(s, c + 0x7e, 0x38dc0b) ? 2 : 1;
    const auto font = read<float>(s, c + 0x3c30, 0x38dc20);
    const auto grip_size = trunc(menu_detail::maxss(
        font * read<float>(s, 0x2a8204, 0x38dc3d), (rounding + read<float>(s, 0x28d254, 0x38dc03)) +
                                                       font * read<float>(s, 0x2930a8, 0x38dc2f)));
    ImguiWindowResize resize;
    if (!read<ReU8>(s, w + 0xb9, 0x38dc4e)) {
        // [C]39d789..39d805 +39e0a0 return have no output/state mutation.
        // The interactive resize body remains a required [U] local boundary.
        const bool skip_resize = (read<ReU8>(s, w + 0x14, 0x39d789) & 0x42) ||
                                 read<ReI8>(s, w + 0xd0, 0x39d7de) > 0 ||
                                 read<ReI8>(s, w + 0xd1, 0x39d7eb) > 0 ||
                                 !read<ReU8>(s, w + 0xb7, 0x39d7f8);
        if (!skip_resize) {
            if (!api.resize_39d760)
                __builtin_trap();
            resize = api.resize_39d760(w, auto_fit, grip_count, visibility);
            if (resize.changed)
                changed_x = changed_y = true;
        }
    }
    write(s, w + 0xc1, ReU8(resize.held), 0x38dc9f);
    if (!read<ReU8>(s, w + 0xb9, 0x38dca5)) {
        const auto full_size = read<Vec2>(s, w + 0x30, 0x38dcc1);
        const Vec2 available{full_size.x, full_size.y - (read<float>(s, w + 0x64, 0x38dcbc) +
                                                         read<float>(s, w + 0x6c, 0x38dcb2))};
        const auto previous_inner = read<ClipRect>(s, w + 0x1f8, 0x38dcda);
        const Vec2 previous{(previous_inner.z - previous_inner.x) + old_scrollbars.x,
                            (previous_inner.w - previous_inner.y) + old_scrollbars.y};
        Vec2 needed{};
        if (f.found) {
            const auto content = read<Vec2>(s, w + 0x38, 0x38dd2c),
                       padding = read<Vec2>(s, w + 0x50, 0x38dd19);
            const auto twice = read<float>(s, 0x293134, 0x38dd11);
            needed = {content.x + padding.x * twice, content.y + padding.y * twice};
        }
        const float width = changed_x ? available.x : previous.x,
                    height = changed_y ? available.y : previous.y;
        bool vertical = (flags & 0x4000) || (needed.y > height && !(flags & 8));
        write(s, w + 0xb5, ReU8(vertical), 0x38dd8d);
        bool horizontal =
            (flags & 0x8000) ||
            ((needed.x > width - (vertical ? read<float>(s, c + 0x3844, 0x38dd9e) : 0)) &&
             ((flags & 0x808) == 0x800));
        write(s, w + 0xb4, ReU8(horizontal), 0x38ddd0);
        if (horizontal && !vertical) {
            vertical = needed.y > height && !(flags & 8);
            write(s, w + 0xb5, ReU8(vertical), 0x38ddf7);
        }
        const Vec2 sizes{vertical ? read<float>(s, c + 0x3844, 0x38de1b) : 0,
                         horizontal ? read<float>(s, c + 0x3844, 0x38de05) : 0};
        write(s, w + 0xac, sizes, 0x38de39);
        write(s, w + 0x68, read<float>(s, w + 0x68, 0x38de4f) + sizes.x, 0x38de54);
        write(s, w + 0x6c, read<float>(s, w + 0x6c, 0x38de61) + sizes.y, 0x38de66);
    }
    const auto host = child && !popup && !child_tooltip
                          ? read<ClipRect>(s, f.parent + 0x238, 0x38de88)
                          : viewport_rect;
    const auto p = read<Vec2>(s, w + 0x20, 0x398d44), actual = read<Vec2>(s, w + 0x28, 0x398d44);
    auto title = title_rect(s, w);
    write(s, w + 0x1e8, intersect({p.x, p.y, p.x + actual.x, p.y + actual.y}, host), 0x3901b8);
    const auto left = read<float>(s, w + 0x60, 0x38ded1), top = read<float>(s, w + 0x64, 0x38dee7),
               right = read<float>(s, w + 0x68, 0x38df03),
               bottom = read<float>(s, w + 0x6c, 0x38df1a);
    const ClipRect inner{p.x + left, p.y + top, (p.x + actual.x) - right,
                         (p.y + actual.y) - bottom};
    write(s, w + 0x1f8, inner, 0x38dee2);
    const auto border = read<float>(s, w + 0x5c, 0x38df60);
    const auto padding = read<Vec2>(s, w + 0x50, 0x38df44);
    const auto top_border =
        ((flags & 0x400) || !(flags & 1)) ? read<float>(s, c + 0x3818, 0x38df3b) : border;
    const auto half = read<float>(s, 0x28d250, 0x38df4f);
    const auto x_inset = menu_detail::maxss(trunc(padding.x * half), border);
    const ClipRect inner_clip{trunc(x_inset + (inner.x + half)),
                              trunc((inner.y + half) + top_border), trunc(inner.z + half),
                              trunc((inner.w + half) - border)};
    write(s, w + 0x208,
          ClipRect{clamp(inner_clip.x, host.x, host.z), clamp(inner_clip.y, host.y, host.w),
                   clamp(inner_clip.z, host.x, host.z), clamp(inner_clip.w, host.y, host.w)},
          0x390208);
    const float default_width =
        actual.x > 0 && !(flags & 0x2000040)
            ? actual.x - (padding.x + padding.x)
            : read<float>(s, c + 0x3c30, 0x38e003) * read<float>(s, 0x2931bc, 0x38e00c);
    write(s, w + 0x268, trunc(default_width), 0x38e019);
    const auto content = read<Vec2>(s, w + 0x38, 0x38e02c);
    write(s, w + 0x8c,
          menu_detail::maxss(0, ((padding.x + padding.x) + content.x) - (inner.z - inner.x)),
          0x38e045);
    write(s, w + 0x90,
          menu_detail::maxss(0, ((padding.y + padding.y) + content.y) - (inner.w - inner.y)),
          0x38e072);
    const auto factor = read<float>(s, c + 0x18, 0x38e086) * read<float>(s, 0x2931e8, 0x38e08b);
    const auto scroll = scroll_target(s, w);
    const auto old_y = read<float>(s, w + 0x88, 0x38e098);
    write(s, w + 0x88, trunc(old_y + (scroll.y - old_y) * factor), 0x38e0bc);
    write(s, w + 0x98, read<float>(s, w + 0x98, 0x38e0cd) + read<float>(s, c + 0x4814, 0x38e0c4),
          0x38e0ef);
    write(s, w + 0x70, ReU64(0), 0x38e0fe);
    const auto current_font = read<Address>(s, c + 0x3c28, 0x38e106),
               atlas = read<Address>(s, current_font + 0x40, 0x38e10d);
    draw_core_push_texture_3a73c4(draw_list(s, w, 0x38e0f7), read<Address>(s, atlas + 8, 0x38e111));
    clip_push(s, w, host);
    bool borrowed = false;
    if (child && !popup && !child_tooltip) {
        bool overlaps = false;
        const auto n = read<ReI32>(s, f.parent + 0x190, 0x38e14c);
        if (n >= 2) {
            const auto sibling =
                read<Address>(s, element(s, f.parent + 0x190, n - 2, 8, 0x38e156), 0x38e15b);
            if (sibling) {
                const auto q = read<Vec2>(s, sibling + 0x20, 0x398d44),
                           size = read<Vec2>(s, sibling + 0x28, 0x398d44);
                overlaps = q.y < p.y + actual.y && q.y + size.y > p.y && q.x < p.x + actual.x &&
                           q.x + size.x > p.x;
            }
        }
        auto &own = draw_list(s, w, 0x38e18c);
        if (!own.commands.at(own.commands.size - 1).element_count &&
            draw_list(s, f.parent, 0x38e1a2)
                .commands.at(draw_list(s, f.parent, 0x38e1a2).commands.size - 1)
                .element_count &&
            !overlaps) {
            borrowed = true;
            write(s, w + 0x298, read<Address>(s, f.parent + 0x298, 0x38e1a2), 0x38e1b6);
        }
    }
    auto focus = read<Address>(s, c + 0x4a50, 0x38e1bd);
    if (!focus)
        focus = read<Address>(s, c + 0x48e8, 0x38e1c9);
    const bool highlight = want_focus || (focus && read<Address>(s, focus + 0x388, 0x38e1dc) ==
                                                       read<Address>(s, w + 0x388, 0x38e1e3));
    if (api.decorations_399d88)
        api.decorations_399d88(w, title, highlight, true, grip_count, resize.colors, grip_size);
    else
        decorations(s, api, w, title, highlight, true, grip_count, resize.colors, grip_size);
    if (borrowed)
        write(s, w + 0x298, w + 0x2a0, 0x38e226);
    // [C]38e22d..38e73c: concrete work/content regions and cursor precision bookkeeping.
    const auto explicit_content = read<Vec2>(s, w + 0x48, 0x38e24c),
               scroll_now = read<Vec2>(s, w + 0x84, 0x38e2e9);
    const bool allow_content_x = !(flags & 8) && (flags & 0x800);
    const float available_x = (actual.x - (padding.x + padding.x)) - (right + left),
                available_y = (actual.y - (padding.y + padding.y)) - (bottom + top);
    const float work_width = explicit_content.x != 0
                                 ? explicit_content.x
                                 : menu_detail::maxss(allow_content_x ? content.x : 0, available_x);
    const float work_height = explicit_content.y != 0
                                  ? explicit_content.y
                                  : menu_detail::maxss(!(flags & 8) ? content.y : 0, available_y);
    const float work_x = trunc(menu_detail::maxss(padding.x, border) + (inner.x - scroll_now.x)),
                work_y = trunc(menu_detail::maxss(padding.y, border) + (inner.y - scroll_now.y));
    const ClipRect work{work_x, work_y, work_width + work_x, work_height + work_y};
    write(s, w + 0x218, work, 0x38e2ff);
    write(s, w + 0x228, work, 0x38e35e);
    const float region_x = ((p.x - scroll_now.x) + padding.x) + left,
                region_y = ((p.y - scroll_now.y) + padding.y) + top;
    write(s, w + 0x248,
          ClipRect{region_x, region_y,
                   (explicit_content.x != 0 ? explicit_content.x : available_x) + region_x,
                   (explicit_content.y != 0 ? explicit_content.y : available_y) + region_y},
          0x38e37c);
    write(s, w + 0x144, (left + padding.x) - scroll_now.x, 0x38e434);
    write(s, w + 0x148, ReU64(0), 0x38e43c);
    const double cursor_x =
        (((double(padding.x) + double(p.x)) - double(scroll_now.x)) + double(left)) +
        read<double>(s, 0x2aa130, 0x38e489);
    const double cursor_y =
        ((double(padding.y) + double(p.y)) - double(scroll_now.y)) + double(top);
    const Vec2 start{float(cursor_x), float(cursor_y)};
    write(s, w + 0x110, start, 0x38e4c3);
    write(s, w + 0x150, Vec2{float(cursor_x - double(start.x)), float(cursor_y - double(start.y))},
          0x38e50a);
    for (auto offset : {0x100u, 0x108u, 0x118u, 0x120u})
        write(s, w + offset, start, 0x38e528);
    write(s, w + 0x130, Vec2{}, 0x38e57a);
    write(s, w + 0x128, Vec2{}, 0x38e590);
    write(s, w + 0x138, ReU64(0), 0x38e598);
    write(s, w + 0x140, ReU16(0), 0x38e59f);
    write(s, w + 0x158, 0u, 0x38e5a7);
    write(s, w + 0x15c, read<ReU16>(s, w + 0x15e, 0x38e5ae), 0x38e5b5);
    write(s, w + 0x15e, 0x10000u, 0x38e5bc);
    write(s, w + 0x162, ReU8(read<float>(s, w + 0x90, 0x38e5c6) > 0), 0x38e5e1);
    write(s, w + 0x163, ReU8(0), 0x38e5e7);
    menu_columns(s, w + 0x16c, read<float>(s, c + 0x381c, 0x38e5ee), f.appearing);
    write(s, w + 0x188, ReU64(0), 0x38e603);
    write(s, w + 0x190, 0, 0x37ad34);
    write(s, w + 0x1a0, w + 0x270, 0x38e61c);
    write(s, w + 0x1a8, Address(0), 0x38e623);
    write(s, w + 0x1b4, 1u, 0x38e62a);
    write(s, w + 0x1b8, f.parent ? read<ReU32>(s, f.parent + 0x1b4, 0x38e635) : 1u,
          0x38e640);
    write(s, w + 0x1bc, read<float>(s, w + 0x268, 0x38e64d), 0x38e655);
    write(s, w + 0x1c0, -1.0f, 0x38e65b);
    write(s, w + 0x1c8, 0, 0x364ef0);
    write(s, w + 0x1d8, 0, 0x364ef0);
    for (auto offset : {0xd0u, 0xd1u}) {
        const auto n = read<ReI8>(s, w + offset, 0x38e678);
        if (n > 0)
            write(s, w + offset, ReU8(ReU8(n) - 1), 0x38e684);
    }
    if (want_focus) {
        menu_detail::focus_window(control(s), effective_controls(s, api), w, 2);
        if (read<Address>(s, c + 0x48e8, 0x38e6ad) == w) {
            if (!api.nav_initialize_395500)
                { __builtin_trap(); }
            api.nav_initialize_395500(w, false);
        }
    }
    if (!(flags & 1)) {
        auto contents_title = title;
        contents_title.x += border;
        contents_title.z -= border;
        if (!api.title_contents_39a7a8)
            { __builtin_trap(); }
        api.title_contents_39a7a8(w, contents_title, request.name, request.open_byte);
    }
    write(s, w + 0x258, 0u, 0x38e70f);
    const bool hovered = menu_detail::mouse_hover(control(s), title, false);
    write(s, c + 0x47a4, read<ReU32>(s, w + 0x7c, 0x38e72e), 0x39b667);
    write(s, c + 0x47a8, read<ReU32>(s, c + 0x4788, 0x38e723), 0x39b66d);
    write(s, c + 0x47ac, ReU32(hovered), 0x39b673);
    write(s, c + 0x47c0, title, 0x39b67e);
    write(s, c + 0x47b0, title, 0x39b686);
}
// [C] 0x38ff14..0x38ffa8: clamp window position within visibility rectangle
// Semantics: binary entry point for clamp_position() above.
void clamp_position_entry_38ff14(ImguiWindowsState &s, Address w, ClipRect visibility) {
    clamp_position(s, w, visibility);
}
// [C] 0x392044..0x392090: apply draw buffer size hints then clear hint pair
void draw_hints_apply_392044(ImguiWindowsState &s, Address w) {
    write(s, w + 0x3d4, ReU8(0), 0x39204d);
    const auto draw_addr = read<Address>(s, w + 0x298, 0x392054);
    auto &owner = control(s);
    if (!owner.draw || !owner.draw->lists.contains(draw_addr))
        { __builtin_trap(); }
    auto &draw = owner.draw->lists[draw_addr];
    draw.indices.reserve(read<ReI32>(s, w + 0x3cc, 0x39205f));
    draw.vertices.reserve(read<ReI32>(s, w + 0x3d0, 0x392071));
    write(s, w + 0x3cc, ReU64(0), 0x392080);
}
} // namespace rust_internal_re::window_detail
