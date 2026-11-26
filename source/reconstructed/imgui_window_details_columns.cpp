#include "imgui_window_details_internal.hpp"
namespace rust_internal_re::window_details {
namespace {
Address column(ImguiWindowDetailsState &s, Address p, int index) {
    return window_detail::element(windows(s), p + 0x60, index, 28, 0x38bba8);
}
float offset(ImguiWindowDetailsState &s, Address p, int index) {
    if (index < 0)
        index = read<int>(s, p + 0xc, 0x3b5346);
    const auto record = column(s, p, index);
    const auto maximum = read<float>(s, p + 0x18, 0x3b5354);
    const auto minimum = read<float>(s, p + 0x14, 0x3b5359);
    const auto ratio = read<float>(s, record, 0x3b535e);
    return minimum + (maximum - minimum) * ratio;
}
float width(ImguiWindowDetailsState &s, Address p, int index, bool previous) {
    const auto next = column(s, p, index + 1);
    const auto entry = column(s, p, index);
    const auto field = previous ? 4u : 0u;
    const auto ratio =
        read<float>(s, next + field, 0x3b53b5) - read<float>(s, entry + field, 0x3b53bf);
    return (read<float>(s, p + 0x18, 0x3b5374) - read<float>(s, p + 0x14, 0x3b5379)) * ratio;
}
float drag_offset(ImguiWindowDetailsState &s, Address p, int index) {
    const auto c = context(s);
    const auto previous = offset(s, p, index - 1);
    const auto w = current(s);
    auto value = menu_detail::maxss(
        ((read<float>(s, c + 0xe08, 0x3b5422) - read<float>(s, c + 0x3f7c, 0x3b542a)) +
         read<float>(s, 0x293178, 0x3b543a)) -
            read<float>(s, w + 0x20, 0x3b5442),
        previous + read<float>(s, c + 0x3840, 0x3b5432));
    if (read<ReU8>(s, p + 4, 0x3b544c) & 4)
        value = menu_detail::minss(value,
                                   offset(s, p, index + 1) - read<float>(s, c + 0x3840, 0x3b545d));
    return value;
}
void set_offset(ImguiWindowDetailsState &s, Address p, int index, float value) {
    const auto c = context(s);
    for (int iterations = 0; iterations < 100000; ++iterations) {
        if (index < 0)
            index = read<int>(s, p + 0xc, 0x3b5587);
        const auto flags = read<ReU8>(s, p + 4, 0x3b558a);
        const bool preserve = !(flags & 4) && index < sub(read<int>(s, p + 0x10, 0x3b5590), 1);
        const auto previous_width =
            preserve ? width(s, p, index, read<ReU8>(s, p + 9, 0x3b5599) != 0) : 0;
        if (!(flags & 8)) {
            const auto n = sub(read<int>(s, p + 0x10, 0x3b55bb), index);
            value = menu_detail::minss(value, read<float>(s, p + 0x18, 0x3b55be) -
                                                  float(n) * read<float>(s, c + 0x3840, 0x3b55cc));
        }
        const auto record = column(s, p, index);
        const auto ratio =
            (value - read<float>(s, p + 0x14, 0x3b55f4)) /
            (read<float>(s, p + 0x18, 0x3b530c) - read<float>(s, p + 0x14, 0x3b5311));
        write(s, record, ratio, 0x3b5601);
        if (!preserve)
            return;
        value += menu_detail::maxss(read<float>(s, c + 0x3840, 0x3b560a), previous_width);
        index = sub(index, -1);
    }
    { __builtin_trap(); }
}
template <class T>
DrawCoreBuffer<T> import_buffer(ImguiWindowDetailsState &s, Address p, ReUSize stride) {
    DrawCoreBuffer<T> result;
    const auto n = read<int>(s, p, 0x3a65c4);
    const auto capacity = read<int>(s, p + 4, 0x3a65c4);
    const auto data = read<Address>(s, p + 8, 0x3a65c4);
    if (n < 0 || capacity < n || capacity > 1000000)
        { __builtin_trap(); }
    result.reserve(capacity);
    result.resize_existing(n);
    for (int i = 0; i < n; ++i)
        result.write(i, read<T>(s, data + Address(i) * stride, 0x3a65c4));
    return result;
}
DrawCoreSplitter import_splitter(ImguiWindowDetailsState &s, Address p) {
    DrawCoreSplitter result;
    result.current = read<int>(s, p, 0x3a65c4);
    result.count = read<int>(s, p + 4, 0x3a65c4);
    const auto n = read<int>(s, p + 8, 0x3a65c4);
    const auto data = read<Address>(s, p + 16, 0x3a65c4);
    if (n < 0 || n > 1000000)
        { __builtin_trap(); }
    result.channels.resize(ReUSize(n));
    for (int i = 0; i < n; ++i)
        if (i != result.current) {
            auto &channel = result.channels[ReUSize(i)];
            channel.commands = import_buffer<DrawCoreCommand>(s, data + Address(i) * 32, 56);
            channel.indices = import_buffer<ReU16>(s, data + Address(i) * 32 + 16, 2);
        }
    return result;
}
void merge(ImguiWindowDetailsState &s, Address p, Address key) {
    auto &list = draw(s, key, 0x3a65c4);
    if (!s.column_splitters.contains(p))
        s.column_splitters.insert(p, import_splitter(s, p));
    auto original = re::re_move(list.splitter);
    list.splitter = re::re_move(s.column_splitters[p]);
    {
        draw_core_merge_3a65c4(list);
    }
    s.column_splitters[p] = re::re_move(list.splitter);
    list.splitter = re::re_move(original);
    write(s, p, s.column_splitters[p].current, 0x3a65c4);
    write(s, p + 4, s.column_splitters[p].count, 0x3a65c4);
}
void clip_pop(ImguiWindowDetailsState &s, Address w) {
    const auto key = draw_key(s, w, 0x39879a);
    auto &list = draw(s, key, 0x3a6e34);
    list.clip_stack.pop();
    if (list.clip_stack.size)
        list.header.clip = list.clip_stack.at(list.clip_stack.size - 1);
    else {
        const auto shared = read<Address>(s, key + 0x38, 0x3a6e51);
        list.header.clip = read<re::ReArray<float, 4>>(s, shared + 0x1c, 0x3a6e67);
    }
    draw_core_clip_changed_3a8d94(list);
    const auto clip = list.clip_stack.at(list.clip_stack.size - 1);
    write(s, w + 0x238, ClipRect{clip[0], clip[1], clip[2], clip[3]}, 0x3987c8);
}
} // namespace
} // namespace rust_internal_re::window_details
namespace rust_internal_re {
// [I] Shared import/storage adapter for the selectable channel controllers.
// Native channel geometry remains the existing draw-core3a8094 body.
void imgui_window_details_switch_channel_3a8094(ImguiWindowDetailsState &s, Address splitter,
                                                Address key, ReI32 channel) {
    using namespace window_details;
    auto &list = draw(s, key, 0x3a8094);
    if (!s.column_splitters.contains(splitter))
        s.column_splitters.insert(splitter, import_splitter(s, splitter));
    auto saved = re::re_move(list.splitter);
    list.splitter = re::re_move(s.column_splitters[splitter]);
    {
        draw_core_switch_channel_3a8094(list, channel);
    }
    s.column_splitters[splitter] = re::re_move(list.splitter);
    list.splitter = re::re_move(saved);
    write(s, splitter, s.column_splitters[splitter].current, 0x3a8094);
}
// [C/I]3b4f94..3b530a and direct offset/resize closure, owned splitter adaptation.
void imgui_window_details_end_columns_3b4f94(ImguiWindowDetailsState &s,
                                             const ImguiWindowsApi &api) {
    using namespace window_details;
    const auto c = context(s);
    const auto w = menu_detail::window(controls(s));
    const auto p = read<Address>(s, w + 0x1a8, 0x3b4fe5);
    const auto width_window = menu_detail::window(controls(s));
    const auto count = read<int>(s, width_window + 0x1c8, 0x39e304);
    const auto value = read<float>(
        s, window_detail::element(windows(s), width_window + 0x1c8, sub(count, 1), 4, 0x39e304),
        0x3988f4);
    write(s, width_window + 0x1bc, value, 0x3988f6);
    write(s, width_window + 0x1c8, sub(count, 1), 0x39eea0);
    if (read<int>(s, p + 0x10, 0x3b4ff1) > 1) {
        clip_pop(s, w);
        merge(s, p + 0x70, draw_key(s, w, 0x3b4ffd));
    }
    const auto cursor_y =
        menu_detail::maxss(read<float>(s, p + 0x20, 0x3b5015), read<float>(s, w + 0x104, 0x3b500d));
    const auto flags = read<ReU32>(s, p + 4, 0x3b501b);
    write(s, p + 0x20, cursor_y, 0x3b5027);
    write(s, w + 0x104, cursor_y, 0x3b502d);
    if (!(flags & 0x10))
        write(s, w + 0x118, read<float>(s, p + 0x28, 0x3b503b), 0x3b503f);
    bool resized = false;
    if (!(flags & 1) && !read<ReU8>(s, w + 0xbb, 0x3b5054)) {
        const auto minimum_y = menu_detail::maxss(read<float>(s, p + 0x24, 0x3b5068),
                                                  read<float>(s, w + 0x23c, 0x3b5060));
        const auto maximum_y = menu_detail::minss(cursor_y, read<float>(s, w + 0x244, 0x3b5073));
        if (read<int>(s, p + 0x10, 0x3b5087) > 1) {
            const auto one = read<float>(s, 0x28d254, 0x3b5096);
            const auto grab = read<float>(s, 0x293178, 0x3b50a3);
            int held = -1;
            for (int index = 1; index < read<int>(s, p + 0x10, 0x3b51fe); ++index) {
                const auto record = column(s, p, index);
                const auto x = offset(s, p, index) + read<float>(s, w + 0x20, 0x3b50e3);
                const auto id = read<ReU32>(s, p, 0x3b50d6) + ReU32(index);
                const ClipRect hit{x - grab, minimum_y, x + grab, maximum_y};
                if (!menu_detail::item_add(controls(s), api.controls, hit, id, {}, 8))
                    continue;
                MenuButtonResult action;
                if (!(flags & 2))
                    action =
                        menu_controls_button_behavior_3bc7e0(controls(s), api.controls, hit, id, 0);
                if (action.hovered || action.held) {
                    write(s, c + 0x4a88, 4u, 0x3b5177);
                    if (action.held && !(read<ReU8>(s, record + 8, 0x3b518a) & 2))
                        held = index;
                }
                const auto color = menu_detail::style_color(controls(s),
                                                            action.held      ? 30u
                                                            : action.hovered ? 29u
                                                                             : 28u,
                                                            one);
                const auto draw_x = trunc(x);
                line(s, api, draw_key(s, w, 0x3b51dd), {draw_x, minimum_y + one},
                     {draw_x, maximum_y}, color, one);
            }
            if (held != -1) {
                if (!read<ReU8>(s, p + 9, 0x3b5218)) {
                    for (int i = 0; i <= read<int>(s, p + 0x10, 0x3b5247); ++i) {
                        const auto record = column(s, p, i);
                        write(s, record + 4, read<float>(s, record, 0x3b5240), 0x3b5244);
                    }
                }
                resized = true;
                write(s, p + 9, ReU8(1), 0x3b525b);
                set_offset(s, p, held, drag_offset(s, p, held));
            }
        }
    }
    write(s, p + 9, ReU8(resized), 0x3b5273);
    write(s, w + 0x218, read<ClipRect>(s, w + 0x228, 0x3b5277), 0x3b527e);
    const auto backup = read<ClipRect>(s, p + 0x4c, 0x3b5286);
    write(s, w + 0x1a8, Address(0), 0x3b528b);
    const auto x = read<float>(s, w + 0x144, 0x3b5296) + read<float>(s, w + 0x20, 0x3b529e);
    write(s, w + 0x228, backup, 0x3b52a3);
    write(s, w + 0x148, 0u, 0x3b52ab);
    write(s, w + 0x100, trunc(x + read<float>(s, 0x28d24c, 0x3b52b5)), 0x3b52c8);
    const auto no_table = !read<Address>(s, c + 0x4b48, 0x3970f7);
    write(s, w + 0x160, ReU8(no_table && !read<Address>(s, w + 0x1a8, 0x397108)), 0x397118);
}
// [C] 0x3b5320..3b5371: column offset for given index.
float imgui_window_details_column_offset_3b5320(ImguiWindowDetailsState &s, int index) {
    using namespace window_details;
    const auto w = menu_detail::window(controls(s));
    const auto p = read<Address>(s, w + 0x1a8, 0x3b5331);
    if (!p)
        return 0;
    return offset(s, p, index);
}
// [C] 0x3b5384..3b53eb: column width for given index with previous flag.
float imgui_window_details_column_width_3b5384(ImguiWindowDetailsState &s, int index,
                                                bool previous) {
    using namespace window_details;
    const auto w = menu_detail::window(controls(s));
    const auto p = read<Address>(s, w + 0x1a8, 0x3b5331);
    return width(s, p, index, previous);
}
// [C] 0x3b53f0..3b548a: column drag offset clamped to neighbors.
float imgui_window_details_drag_offset_3b53f0(ImguiWindowDetailsState &s, int index) {
    using namespace window_details;
    const auto w = menu_detail::window(controls(s));
    const auto p = read<Address>(s, w + 0x1a8, 0x3b5331);
    return drag_offset(s, p, index);
}
// [C] 0x3b5554..3b5639: set column offset with iterative preserve.
void imgui_window_details_set_offset_3b5554(ImguiWindowDetailsState &s, int index, float value) {
    using namespace window_details;
    const auto w = menu_detail::window(controls(s));
    const auto p = read<Address>(s, w + 0x1a8, 0x3b5331);
    set_offset(s, p, index, value);
}
} // namespace rust_internal_re
