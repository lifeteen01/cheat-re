#include "imgui_navigation_internal.hpp"
namespace rust_internal_re {
using namespace navigation_detail;
void imgui_navigation_cancel_395810(MenuControlsState &s) {
    write(s, context(s) + 0x4940, ReU16(0), 0x395817);
    refresh(s);
}
void imgui_navigation_result_395258(MenuControlsState &s, Address result) {
    const auto c = context(s);
    const auto window = read<Address>(s, c + 0x3f08, 0x395268);
    write(s, result, window, 0x39526f);
    write(s, result + 8, read<ReU32>(s, c + 0x47a4, 0x395272), 0x395279);
    write(s, result + 12, read<ReU32>(s, c + 0x4784, 0x39527c), 0x395283);
    write(s, result + 32, read<ReU32>(s, c + 0x47a8, 0x395286), 0x395294);
    const auto rectangle = read<ClipRect>(s, c + 0x47c0, 0x39e1f9);
    write(s, result + 16, relative(s, window, rectangle), 0x3952a4);
}
void imgui_navigation_tab_395bc4(MenuControlsState &s, ReU32 id, ReU32 item_flags,
                                 ReU32 move_flags) {
    const auto c = context(s);
    bool eligible = true;
    if (!(move_flags & 0x200)) {
        const auto window = read<Address>(s, c + 0x3f08, 0x395be3);
        const auto layer = read<ReU32>(s, window + 0x158, 0x395bea);
        if (read<ReU32>(s, c + 0x4920, 0x395bf1) != layer)
            return;
        eligible = !(item_flags & 1) &&
                   ((read<ReU8>(s, c + 8, 0x395c03) & 1) || (item_flags & 0x400));
    }
    const auto direction = read<ReI32>(s, c + 0x4980, 0x395c15);
    const auto result = c + 0x4988;
    if (direction == 1) {
        if (eligible) {
            if (!read<ReU32>(s, c + 0x4a20, 0x395c2b))
                imgui_navigation_result_395258(s, c + 0x4a18);
            auto remaining = read<ReI32>(s, c + 0x4984, 0x395c40);
            if (remaining > 0) {
                --remaining;
                write(s, c + 0x4984, remaining, 0x395c4d);
                if (!remaining) {
                    finish(s, result);
                    return;
                }
            }
        }
        if (read<ReU32>(s, c + 0x48f0, 0x395c5f) == id)
            write(s, c + 0x4984, ReI32(1), 0x395c67);
    } else if (direction == -1) {
        if (read<ReU32>(s, c + 0x48f0, 0x395c78) == id) {
            if (read<ReU32>(s, c + 0x4990, 0x395c80)) {
                write(s, c + 0x4941, ReU8(0), 0x395c89);
                refresh(s);
            }
        } else if (eligible)
            imgui_navigation_result_395258(s, result);
    } else if (direction == 0 && eligible) {
        if (read<ReU32>(s, c + 0x48f0, 0x395ca8) == id)
            finish(s, result);
        if (!read<ReU32>(s, c + 0x4a20, 0x395cb8))
            imgui_navigation_result_395258(s, c + 0x4a18);
    }
}
ReU32 imgui_navigation_anonymous_392654(MenuControlsState &s, Address window,
                                                ClipRect rectangle) {
    return menu_detail::anonymous_id(s, window, rectangle);
}
MenuControlsApi bind_imgui_navigation(MenuControlsState &s, const ImguiNavigationApi &api,
                                      MenuControlsApi out) {
    out.nav_result_395258 = [&s](Address result) { imgui_navigation_result_395258(s, result); };
    out.nav_score_395db8 = [&s](Address result) {
        return imgui_navigation_score_395db8(s, result);
    };
    out.nav_tab_395bc4 = [&s](ReU32 id, ReU32 item, ReU32 move) {
        imgui_navigation_tab_395bc4(s, id, item, move);
    };
    out.deactivate_text_3c04d0 = [&s, api](Address id) {
        imgui_navigation_deactivate_3c04d0(s, api, ReU32(id));
    };
    out.nav_process_395964 = [&s, api = out]() { menu_detail::nav_process(s, api); };
    return out;
}
// [C] 0x395878..0x395897: clear navigation active flag, store result, refresh
// Semantics: standalone binary entry for navigation_detail::finish().
void navigation_finish_395878(MenuControlsState &s, Address result) {
    const auto c = context(s);
    write(s, c + 0x4941, ReU8(0), 0x395883);
    imgui_navigation_result_395258(s, result);
    refresh(s);
}
} // namespace rust_internal_re
