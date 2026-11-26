#include "menu_layout_channels.hpp"

namespace rust_internal_re {
namespace {
void expect(bool value, const char *message) {
    if (!value)
        { /* FREESTANDING_TODO: was throw runtime_error(message) */ }
}
struct Fixture {
    Snapshot image{0, re::ReVector<ReByte>(0x420000)};
    MenuControlsState controls;
    ImguiWindowsState windows;
    ImguiWindowDetailsState details;
    DrawCoreStore draws;
    static constexpr Address c = 0x10000, w = 0x20000, columns = 0x30000, table = 0x40000,
                             key = 0x50000, table_columns = 0x60000, table_splitter = 0x70000;
    static constexpr ClipRect original{1, 2, 30, 40}, background{-10, -20, 300, 400};
    template <class T> void put(Address p, T value) {
        expect(image.write(p, value), "layout-channel fixture write");
    }
    template <class T> T get(Address p) {
        const auto value = image.read<T>(p);
        expect(bool(value), "layout-channel fixture read");
        return *value;
    }
    Fixture() {
        controls.image = &image;
        controls.draw = &draws;
        windows.controls = &controls;
        details.windows = &windows;
        put(0x405b28, c);
        put(c + 0x3f08, w);
        put(c + 0x4b48, table);
        put(w + 0x1a8, columns);
        put(w + 0x298, key);
        put(w + 0x238, original);
        put(columns + 0x10, 2);
        put(columns + 0xc, 1);
        put(columns + 0x2c, background);
        put(table + 0x148, background);
        put(table + 0x74, 1);
        put(table + 0x18, table_columns);
        put(table_columns + 0x70 + 0x5c, ReU16(2));
        put(table + 0x198, table_splitter);
        put(table + 0x21e, ReU16(0));
        auto &list = draws.lists[key];
        list.header.clip = {1, 2, 30, 40};
        list.clip_stack.push(list.header.clip);
        list.commands.push(draw_core_command_39f294());
        list.indices.push(11);
        DrawCoreSplitter splitter;
        splitter.current = 1;
        splitter.count = 3;
        splitter.channels.resize(3);
        splitter.channels[0].indices.push(22);
        splitter.channels[2].indices.push(33);
        details.column_splitters[columns + 0x70] = splitter;
        details.column_splitters[table_splitter] = splitter;
    }
};
bool same(ClipRect a, ClipRect b) {
    return re::re_memcmp(&a, &b, sizeof(a)) == 0;
}
} // namespace
void check_menu_layout_channels() {
    {
        Fixture f;
        auto api = bind_menu_layout_channels(f.details);
        api.local_layout(0x3b54fc);
        auto &list = f.draws.lists[f.key];
        expect(
            same(f.get<ClipRect>(f.columns + 0x3c), f.original) &&
                same(f.get<ClipRect>(f.w + 0x238), f.background) &&
                list.header.clip == re::ReArray<float, 4>{-10, -20, 300, 400} &&
                list.clip_stack.at(0) == list.header.clip && list.indices.at(0) == 22 &&
                f.details.column_splitters[f.columns + 0x70].current == 0 &&
                f.get<ReU8>(f.w + 0xb8) == 0,
            "column background saves clip, switches actual buffers, and avoids window access mark");
        api.local_layout(0x3b54ac);
        expect(same(f.get<ClipRect>(f.w + 0x238), f.original) &&
                   list.clip_stack.at(0) == re::ReArray<float, 4>{1, 2, 30, 40} &&
                   list.indices.at(0) == 33 &&
                   f.details.column_splitters[f.columns + 0x70].current == 2 &&
                   f.get<ReI32>(f.columns + 0x70) == 2 && list.splitter.current == 0,
               "column restore uses current+1 and retains the drawlist's independent splitter");
    }
    {
        Fixture f;
        auto api = bind_menu_layout_channels(f.details);
        api.local_layout(0x3b5890);
        auto &list = f.draws.lists[f.key];
        expect(same(f.get<ClipRect>(f.table + 0x168), f.original) &&
                   same(f.get<ClipRect>(f.w + 0x238), f.background) && list.indices.at(0) == 22,
               "table background uses saved table clip and unsigned WORD background channel");
        api.local_layout(0x3b5824);
        expect(same(f.get<ClipRect>(f.w + 0x238), f.original) && list.indices.at(0) == 33 &&
                   f.details.column_splitters[f.table_splitter].current == 2,
               "table restore resolves stride0x70 column and switches its actual channel");
    }
    {
        Fixture f;
        // [C] Native table lookup accepts signed indexes, including a previous record.
        f.put(f.table + 0x74, -1);
        f.put(f.table_columns - 0x70 + 0x5c, ReU16(2));
        f.put(f.table + 0x168, f.original);
        menu_layout_channel(f.details, 0x3b5824);
        expect(f.details.column_splitters[f.table_splitter].current == 2,
               "table column lookup retains sign extension instead of zero extension");
    }
    {
        Fixture f;
        f.put(f.columns + 0x10, 1);
        f.draws.lists.clear();
        f.details.column_splitters.clear();
        menu_layout_channel(f.details, 0x3b54fc);
        menu_layout_channel(f.details, 0x3b54ac);
        expect(same(f.get<ClipRect>(f.w + 0x238), f.original) &&
                   same(f.get<ClipRect>(f.columns + 0x3c), ClipRect{}),
               "single column bypasses save, clip and drawlist requirements");
    }
    {
        Fixture f;
        f.draws.lists.clear();
        bool stopped = false;
        {
            menu_layout_channel(f.details, 0x3b54fc);
        }
        expect(stopped && same(f.get<ClipRect>(f.columns + 0x3c), f.original) &&
                   same(f.get<ClipRect>(f.w + 0x238), f.background),
               "missing owned header stops after native saved/window clip stores");
    }
    {
        Fixture f;
        f.draws.lists[f.key].clip_stack.resize(0);
        bool stopped = false;
        {
            menu_layout_channel(f.details, 0x3b5890);
        }
        expect(stopped && same(f.get<ClipRect>(f.table + 0x168), f.original) &&
                   f.draws.lists[f.key].header.clip ==
                       re::ReArray<float, 4>{-10, -20, 300, 400} &&
                   f.details.column_splitters[f.table_splitter].current == 1,
               "missing clip-stack top retains header prefix before any channel switch");
    }
    {
        Fixture f;
        Snapshot short_image(0, re::ReVector<ReByte>(f.columns + 0x38));
        expect(short_image.write(f.w + 0x238, f.original), "short layout image fixture");
        f.controls.image = &short_image;
        bool stopped = false;
        {
            menu_layout_clip_3b563c(f.details, f.w, f.columns + 0x2c);
        }
        expect(stopped && same(*short_image.read<ClipRect>(f.w + 0x238), f.original),
               "Vec4 maxY read failure precedes all destination writes");
    }
    {
        Fixture f;
        f.details.column_splitters.erase(f.columns + 0x70);
        f.put(f.columns + 0x70, 1);
        f.put(f.columns + 0x74, 3);
        f.put(f.columns + 0x78, 3);
        f.put(f.columns + 0x80, Address(0x80000));
        menu_layout_channel(f.details, 0x3b54fc);
        expect(f.details.column_splitters[f.columns + 0x70].channels.size() == 3 &&
                   f.details.column_splitters[f.columns + 0x70].current == 0 &&
                   f.draws.lists[f.key].commands.size == 1,
               "new channel adapter reuses the existing bounded splitter importer");
    }
    {
        Fixture f;
        Rva forwarded = 0;
        MenuControlsApi base;
        base.local_layout = [&](Rva role) { forwarded = role; };
        bind_menu_layout_channels(f.details, base).local_layout(0x123456);
        expect(forwarded == 0x123456, "layout binder retains unknown-role fallback");
    }
}
} // namespace rust_internal_re
