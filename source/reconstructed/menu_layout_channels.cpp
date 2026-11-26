#include "menu_layout_channels.hpp"
#include "imgui_window_details_internal.hpp"

namespace rust_internal_re {
void menu_layout_clip_3b563c(ImguiWindowDetailsState &s, Address w, Address p) {
    using namespace window_details;
    // [C]39c010 loads maxY, maxX, minY, minX before constructing its local Vec4.
    const auto max_y = read<float>(s, p + 12, 0x39c016);
    const auto max_x = read<float>(s, p + 8, 0x39c01e);
    const auto min_y = read<float>(s, p + 4, 0x39c023);
    const auto min_x = read<float>(s, p, 0x39c028);
    const re::ReArray<float, 4> copied{min_x, min_y, max_x, max_y};
    const auto rectangle = read<ClipRect>(s, p, 0x3b5659);
    const auto first = read<Address>(s, w + 0x298, 0x3b565c);
    write(s, w + 0x238, rectangle, 0x3b5668);
    draw(s, first, 0x3b5675).header.clip = copied;
    const auto second = read<Address>(s, w + 0x298, 0x3b567d);
    auto &list = draw(s, second, 0x3b5684);
    if (list.clip_stack.size <= 0)
        { __builtin_trap(); }
    // [I] Owned buffer replaces native capacity/data pointers; no command change.
    list.clip_stack.at(list.clip_stack.size - 1) = copied;
}
void menu_layout_channel(ImguiWindowDetailsState &s, Rva role) {
    using namespace window_details;
    if (role == 0x3b54ac || role == 0x3b54fc) {
        const auto w = current(s);
        const auto columns = read<Address>(s, w + 0x1a8, role == 0x3b54ac ? 0x3b54be : 0x3b550e);
        if (read<ReI32>(s, columns + 0x10, role == 0x3b54ac ? 0x3b54c5 : 0x3b5515) == 1)
            return;
        if (role == 0x3b54fc) {
            const auto saved = read<ClipRect>(s, w + 0x238, 0x3b551b);
            write(s, columns + 0x3c, saved, 0x3b5529);
        }
        menu_layout_clip_3b563c(s, w, columns + (role == 0x3b54ac ? 0x3c : 0x2c));
        const auto channel =
            role == 0x3b54ac
                ? re::re_bit_cast<ReI32>(
                      ReU32(read<ReI32>(s, columns + 0xc, 0x3b54d7)) + 1u)
                : 0;
        const auto key = read<Address>(s, w + 0x298, role == 0x3b54ac ? 0x3b54df : 0x3b5533);
        imgui_window_details_switch_channel_3a8094(s, columns + 0x70, key, channel);
        return;
    }
    if (role != 0x3b5824 && role != 0x3b5890)
        { __builtin_trap(); }
    const auto c = context(s);
    Address w, table, column = 0;
    if (role == 0x3b5824) {
        table = read<Address>(s, c + 0x4b48, 0x3b583a);
        w = read<Address>(s, c + 0x3f08, 0x3b5841);
        const auto index = read<ReI32>(s, table + 0x74, 0x3b5848);
        // [C]3b4f88 uses a sign-extended index, stride0x70 and vector's +0 data.
        const auto data = read<Address>(s, table + 0x18, 0x3b4f8f);
        column = data + Address(ReI64(index) * 0x70);
    } else {
        w = read<Address>(s, c + 0x3f08, 0x3b58a1);
        table = read<Address>(s, c + 0x4b48, 0x3b58a8);
        const auto saved = read<ClipRect>(s, w + 0x238, 0x3b58b2);
        write(s, table + 0x168, saved, 0x3b58c0);
    }
    menu_layout_clip_3b563c(s, w, table + (role == 0x3b5824 ? 0x168 : 0x148));
    const auto channel = read<ReU16>(s, role == 0x3b5824 ? column + 0x5c : table + 0x21e,
                                             role == 0x3b5824 ? 0x3b5866 : 0x3b58cd);
    const auto key = read<Address>(s, w + 0x298, role == 0x3b5824 ? 0x3b586b : 0x3b58d5);
    const auto splitter = read<Address>(s, table + 0x198, role == 0x3b5824 ? 0x3b5872 : 0x3b58dc);
    imgui_window_details_switch_channel_3a8094(s, splitter, key, channel);
}
MenuControlsApi bind_menu_layout_channels(ImguiWindowDetailsState &s, MenuControlsApi out) {
    const auto prior = out.local_layout;
    out.local_layout = [&s, prior](Rva role) {
        if (role == 0x3b54ac || role == 0x3b54fc || role == 0x3b5824 || role == 0x3b5890)
            menu_layout_channel(s, role);
        else if (prior)
            prior(role);
        else
            { __builtin_trap(); }
    };
    return out;
}
} // namespace rust_internal_re
