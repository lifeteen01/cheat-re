#include "renderer_helpers_world.hpp"
#include "renderer_helpers_unity.hpp"
namespace rust_internal_re {
namespace {
void check(bool value, const char *why) {
    if (!value)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
struct Fixture {
    Snapshot image{0, re::ReVector<ReByte>(0x420000)};
    template <class T> void put(Address a, T value) {
        check(image.write(a, value), "renderer fixture write");
    }
    void string(Address a, re::ReStringView value, Address heap = 0) {
        put(a + 0x10, ReU64(value.size()));
        put(a + 0x18, ReU64(heap ? 31 : 15));
        if (heap)
            put(a, heap);
        const auto chars = heap ? heap : a;
        for (ReUSize i = 0; i < value.size(); ++i)
            put(chars + i, ReU8(value[i]));
        put(chars + value.size(), ReU8(0));
    }
};
void widgets() {
    Fixture f;
    constexpr Address vector = 0x200000, data = 0x201000;
    f.put(vector, data);
    f.put(vector + 8, data + 7 * 0x68);
    f.put(vector + 0x10, data + 8 * 0x68);
    const auto keys = renderer_widget_keys();
    for (ReUSize i = 0; i < 7; ++i) {
        const auto item = data + i * 0x68;
        f.string(item, keys[i % 6]);
        f.string(item + 0x30, "Old");
        f.put(item + 0x20, ReI32(i % 5));
        f.put(item + 0x64, ReU32(i));
    }
    auto copied = copy_renderer_widgets_2eec7c(f.image, vector);
    check(copied.size() == 7 && find_renderer_widget(copied, 0x2ee154) == 0 &&
              find_renderer_widget(copied, 0x2ee0d8) == 5,
          "six key/find specialization and first duplicate");
    f.string(data, "Changed");
    check(copied[0].key == "DisplayName", "widget copy owns string contents");
    copied[0].key = re::ReString("DisplayName\0", 12);
    check(find_renderer_widget(copied, 0x2ee154) == 6,
          "key comparison retains embedded NUL and length");
    re::re_swap(copied[6], copied[1]);
    const re::ReArray<re::ReString, 6> text{"Alice", "M-16", "9m", "Online", "Outside", "Wounded"};
    const auto prepared = prepare_renderer_world_labels(copied, text, 42);
    check(prepared[1].key == "DisplayName" && prepared[1].text == "Alice" &&
              prepared[5].text == "Wounded",
          "lookup-update preserves arbitrary draw order");
    set_renderer_widget_text(copied, 0x2ee1d0, "New", 43);
    check(copied[6].icon_64 == 43, "held identifier goes to matching widget beyond first six");
    copied.erase(copied.begin() + 3);
    bool stopped = false;
    {
        (void)prepare_renderer_world_labels(copied, text);
    }
    check(stopped, "missing keyed widget stops before end dereference");
    f.string(data, "A much longer string", 0x204000);
    check(renderer_string(f.image, data) == "A much longer string",
          "heap string copied by stored length");
}
RendererFont font() {
    RendererFont f;
    f.nominal = 10;
    f.fallback = 7;
    f.advances = re::ReVector<float>(128, 2);
    f.advances[0] = 0;
    f.advances['A'] = 4;
    f.advances['B'] = 5;
    f.advances[' '] = 1;
    return f;
}
void utf8_measure() {
    const auto f = font();
    auto cp = renderer_utf8_39357c("\xc3\xa9", 0);
    check(cp.codepoint == 0xe9 && cp.consumed == 2, "literal UTF8 two-byte tables");
    cp = renderer_utf8_39357c("\xf0\x9f\x98\x80", 0);
    check(cp.codepoint == 0xfffd && cp.consumed == 4, "native decoder rejects values above FFFF");
    cp = renderer_utf8_39357c("\xed\xa0\x80", 0);
    check(cp.codepoint == 0xfffd && cp.consumed == 3, "surrogate rejected");
    cp = renderer_utf8_39357c("\xc0\x80", 0);
    check(cp.codepoint == 0xfffd && cp.consumed == 2, "overlong rejected");
    cp = renderer_utf8_39357c("\xe2", 0, 1);
    check(cp.codepoint == 0xfffd && cp.consumed == 1,
          "truncated consumption counts nonzero copied bytes");
    auto r = renderer_measure_3a3874(f, {10, 100, 0, "AB\nA", {}});
    check(r.size.x == 9 && r.size.y == 20 && r.remaining == 4,
          "font advances and explicit newline");
    r = renderer_measure_3a3874(f, {10, 9, 0, "AB", {}});
    check(r.size.x == 4 && r.size.y == 10 && r.remaining == 1,
          "equal maximum width excludes current glyph and retains remaining pointer");
    r = renderer_measure_3a3874(f, {10, 100, 6, "A B", {}});
    check(r.size.x == 5 && r.size.y == 20,
          "word wrap uses copied advances and skips leading blank");
    r = renderer_measure_3a3874(f, {20, 100, 0, "A", {}});
    check(r.size.x == 8 && r.size.y == 20, "size to nominal scale");
    r = renderer_measure_3a3874(f, {10, 100, 0, "", {}});
    check(r.size.x == 0 && r.size.y == 10, "empty text still one line");
    const re::ReString embedded("A\0B", 3);
    r = renderer_measure_3a3874(f, {10, 100, 0, embedded, {}});
    check(r.size.x == 4 && r.remaining == 1, "implicit string end truncates at NUL");
    r = renderer_measure_3a3874(f, {10, 100, 0, embedded, 3});
    check(r.size.x == 9 && r.remaining == 3,
          "explicit end processes embedded zero by copied advance0");
    check(renderer_wrap_3a3aa4(f, 1, "AB", 0, 2, 1) == 1 &&
              renderer_next_line_3a3a70(" \t\nB", 0, 4) == 3,
          "forced first-byte progress and wrap blank/newline skip");
    check(renderer_blank_3a4b10(0x3000) && !renderer_blank_37897c(0x30),
          "Unicode wrap and byte blank predicates remain distinct");
}
void background_and_binding() {
    Snapshot missing(0, re::ReVector<ReByte>(0x100));
    RendererBackgroundBackend absent;
    bool stopped = false;
    {
        (void)renderer_background_392dcc(missing, 0x1000, 0, 0, absent);
    }
    check(stopped, "viewport slot read precedes missing context read");
    Fixture f;
    constexpr Address ctx = 0x200000, viewport = 0x206000, list = 0x207000, atlas = 0x208000,
                      current_font = 0x209000, advances = 0x20a000;
    f.put(0x405b28, ctx);
    f.put(ctx + 0x48e0, Address(0x20b000));
    f.put(0x20b000, viewport);
    f.put(ctx + 0x3e60, ReI32(1));
    f.put(ctx + 0x58, atlas);
    f.put(atlas + 8, Address(0x210000));
    f.put(viewport + 4, Vec2{10, 20});
    f.put(viewport + 0xc, Vec2{30, 40});
    RendererBackgroundBackend b;
    re::ReVector<int> order;
    b.intern_name = [&](re::ReStringView name) {
        check(name == "##Background", "literal background name");
        return Address(0x20c000);
    };
    b.allocate_395158 = [&](ReUSize size) {
        check(size == 0xc8, "native draw-list allocation size");
        order.push_back(1);
        return list;
    };
    b.reset_3a9258 = [&](Address a) {
        check(a == list && f.image.read<Address>(a + 0x38) == ctx + 0x3c38,
              "constructor shared data before reset");
        order.push_back(2);
        f.put(ctx + 0x3e60, ReI32(2));
    };
    b.texture_3a73c4 = [&](Address a, Address texture) {
        check(a == list && texture == 0x210000, "background atlas texture");
        order.push_back(3);
    };
    b.clip_3a7268 = [&](Address a, Vec2 minimum, Vec2 maximum, bool intersect) {
        check(a == list && minimum.x == 10 && maximum.x == 40 && maximum.y == 60 && !intersect,
              "background viewport clip rectangle");
        order.push_back(4);
    };
    check(renderer_background_392198(f.image, b) == list && order == re::ReVector<int>{1, 2, 3, 4} &&
              f.image.read<ReI32>(viewport + 0x30) == 2,
          "lazy background construction and post-callback frame reread");
    order.clear();
    check(renderer_background_392198(f.image, b) == list && order.empty(),
          "same-frame background reuses draw list without resetting");
    f.put(ctx + 0x3c28, current_font);
    f.put(ctx + 0x3c30, 10.0f);
    f.put(current_font, ReI32(128));
    f.put(current_font + 8, advances);
    f.put(current_font + 0x10, 7.0f);
    f.put(current_font + 0x14, 10.0f);
    const auto metric = font();
    for (ReUSize i = 0; i < 128; ++i)
        f.put(advances + i * 4, metric.advances[i]);
    RendererIconState icons;
    RendererIconBackend icon_backend;
    WorldLabelFonts fonts;
    check(fonts.current_size_248ed0 == 16, "unbound label size retains historical default");
    f.put(0x248ed0, 22.0f);
    auto backend = bind_renderer_helpers_world(f.image, fonts, b, icons, icon_backend);
    backend.background_draw_list_392198(fonts);
    check(fonts.current_405b28_3c28 == current_font && fonts.fonts[current_font].nominal_14 == 10 &&
              fonts.current_size_248ed0 == 22,
          "world binding keeps background list and current font separate");
    f.put(0x248ed0, 10.0f);
    backend.background_draw_list_392198(fonts);
    check(fonts.current_size_248ed0 == 10, "world binding rereads shared label size after output effects");
    const auto measured = backend.measure_font_3a3874({current_font, "AB", 10, 100, 0});
    check(measured.x == 9 && measured.y == 10,
          "world font measurement bound to concrete copied advances");
    const auto hidden = renderer_measure_38f79c(f.image, ctx, "A##ID", {}, true);
    check(hidden.size.x == 4 && hidden.remaining == 1,
          "native ## hidden-label cutoff and width rounding");
    const auto boundary = renderer_measure_38f79c(f.image, ctx, "A##ID", 2, true);
    check(boundary.size.x == 4 && boundary.remaining == 1,
          "native hash lookahead crosses explicit end before cutoff");
}
void icons() {
    RendererIconState state;
    RendererIconBackend b;
    int bundles = 0, loads = 0, draws = 0;
    re::ReVector<int> order;
    state.enabled_3d6160 = true;
    b.implicit_2ccc0c = [](Address) { return true; };
    b.embedded_bundle_375c08 = [&](Rva rva, ReUSize bytes, int flags) {
        check(rva == 0x35c0 && bytes == 0x21514e && flags == 0,
              "embedded bundle literal range/flags");
        ++bundles;
        return Address(0x220000);
    };
    b.runtime_type_2ccbdc = [](re::ReStringView name, re::ReStringView space) {
        check(name == "Texture2D" && space == "UnityEngine", "texture runtime type");
        return Address(0x230000);
    };
    b.load_asset_2caf28 = [&](Address bundle, re::ReStringView path, Address type) {
        check(bundle == 0x220000 && type == 0x230000 && path == "assets/_iconstage/abcd.png",
              "icon asset path/type/bundle");
        ++loads;
        return Address(0x240000);
    };
    b.width_2cae88 = [&](Address) {
        order.push_back(1);
        return 20;
    };
    b.height_2cae08 = [&](Address) {
        order.push_back(2);
        return 10;
    };
    b.background_392198 = []() { return Address(0x250000); };
    b.image_3a0168 = [&](const RendererImageRequest &image) {
        check(image.draw_list == 0x250000 && image.texture == 0x240000 && image.minimum.x == 40 &&
                  image.minimum.y == 45 && image.maximum.x == 60 && image.maximum.y == 55 &&
                  image.uv_maximum.x == 1 && image.tint == 0xffffffff,
              "native icon image rectangle/UV/tint");
        ++draws;
    };
    check(renderer_icon_2cc8d0("abcd", {50, 50}, 0, state, b) && bundles == 1 && loads == 1 &&
              draws == 1 && order == re::ReVector<int>{1, 2},
          "new icon post-RET load+draw branch");
    check(renderer_icon_2cc8d0("abcd", {50, 50}, 0, state, b) && loads == 1 && draws == 2,
          "positive icon cache hit");
    state.cache["bad"] = {};
    check(!renderer_icon_2cc8d0("bad", {}, 1, state, b) && loads == 1,
          "negative icon cache does not retry");
    state.cache["abcd"].texture = 1;
    check(renderer_icon_2cc8d0("abcd", {50, 50}, 0, state, b) && loads == 2 &&
              state.cache["abcd"].texture == 0x240000,
          "invalid cached numeric texture is erased and reloaded before drawing");
    b.image_3a0168 = [&](const RendererImageRequest &image) {
        check(image.minimum.x == 40 && image.minimum.y == 40 && image.maximum.x == 60 &&
                  image.maximum.y == 60,
              "positive requested icon size forces square");
        ++draws;
    };
    check(renderer_icon_2cc8d0("abcd", {50, 50}, 20, state, b), "requested icon square route");
    state.cache.clear();
    order.clear();
    b.width_2cae88 = [&](Address) {
        order.push_back(1);
        return 0;
    };
    check(!renderer_icon_2cc8d0("abcd", {}, 1, state, b) && order == re::ReVector<int>{1, 2} &&
              !state.cache["abcd"].ready,
          "zero width still queries height then creates negative cache");
    RendererIconState failed;
    failed.enabled_3d6160 = true;
    b.embedded_bundle_375c08 = [&](Rva, ReUSize, int) {
        ++bundles;
        return Address(0);
    };
    check(!renderer_icon_2cc8d0("abcd", {}, 1, failed, b) && failed.attempted_3d6161 &&
              failed.cache.contains("abcd"),
          "failed first bundle load sets latch and negative entry");
    const int attempts = bundles;
    check(!renderer_icon_2cc8d0("other", {}, 1, failed, b) && bundles == attempts,
          "bundle first-attempt latch prevents a second load");
    RendererIconState missing;
    missing.enabled_3d6160 = true;
    RendererIconBackend absent;
    bool stopped = false;
    {
        (void)renderer_icon_2cc8d0("x", {}, 1, missing, absent);
    }
    check(stopped && missing.attempted_3d6161 && !missing.cache.contains("x"),
          "missing backend stops explicitly after preceding native latch write");
}
void unity_wrappers() {
    Fixture f;
    RendererUnityEnvironment env{0x260000, 512, {}};
    RendererUnityBackend b;
    f.put(0x3d5e60, Address(0x270000));
    int resolutions = 0, contexts = 0;
    b.signature_333d10 = [&](ReU32 hash) {
        check(hash == 0x3a81cd35, "width signature bits");
        ++resolutions;
        f.put(0x280000, Address(0x290000));
        return MetadataResult{0x280000};
    };
    b.observe_context_2cbd24 = [&](const RendererUnityCall &call) {
        check(call.wrapper == 0x2cae88 && call.target == 0x290000 && call.context == 0x3d6380 &&
                  f.image.read<ReU32>(0x3d6370) == 3,
              "context detection sees flags written first");
        ++contexts;
    };
    b.texture_dimension = [](const RendererUnityCall &call) {
        check(call.target == 0x290000 && call.receiver == 0x2a0000 && call.dispatcher == 0x270000,
              "dimension external target/receiver/dispatcher values");
        return 20;
    };
    check(renderer_dimension_2cae08_2cae88(f.image, 0x2cae88, 0x2a0000, env, b) == 20 &&
              resolutions == 1 && contexts == 1,
          "signature width cache initializes once");
    check(renderer_dimension_2cae08_2cae88(f.image, 0x2cae88, 0x2a0000, env, b) == 20 &&
              resolutions == 1 && contexts == 1,
          "width cache hit retains target/context");
    check(!renderer_implicit_2ccc0c(f.image, 0, env, b) &&
              f.image.read<ReU32>(0x3d6198) == 0,
          "implicit invalid receiver rejects before cache writes");
    f.put(0x3d6198, ReU32(3));
    f.put(0x3d6190, Address(0x2b0000));
    b.object_implicit = [](const RendererUnityCall &call) {
        return call.receiver == 0x2a0000 && call.target == 0x2b0000;
    };
    check(renderer_implicit_2ccc0c(f.image, 0x2a0000, env, b), "implicit preseeded cache dispatch");
    f.put(0x3d6280, ReU32(3));
    f.put(0x3d6278, Address(0x2c0000));
    b.managed_string_2ce5dc = [](re::ReStringView path) {
        check(path == "assets/_iconstage/key.png", "asset managed string after cache");
        return Address(0x2d0000);
    };
    b.load_asset = [](const RendererUnityCall &call) {
        check(call.receiver == 0x2e0000 && call.argument0 == 0x2d0000 && call.argument1 == 0x2f0000,
              "asset receiver/managed-name/type arguments");
        return Address(0x300000);
    };
    check(renderer_asset_2caf28(f.image, 0x2e0000, "assets/_iconstage/key.png", 0x2f0000, env, b) ==
              0x300000,
          "asset wrapper cache and conversions");
    const auto ascii = [&](Address a) {
        re::ReString value;
        for (ReUSize i = 0; i < 128; ++i) {
            const auto ch = f.image.read<ReU8>(a + i);
            check(bool(ch), "metadata literal readable");
            if (!*ch)
                return value;
            value.push_back(char(*ch));
        }
        { /* FREESTANDING_TODO: was throw runtime_error("metadata fixture missing terminator") */ }
    };
    f.put(0x3d6198, ReU32(0));
    f.put(0x310000, Address(0x312000));
    f.put(0x310018, Address(0x311000));
    for (ReUSize i = 0; i < 11; ++i)
        f.put(0x311000 + i, ReU8(re::ReStringView("op_Implicit")[i]));
    f.put(0x31100b, ReU8(0));
    b.metadata.domain_get_33479c = []() { return Address(1); };
    b.metadata.assemblies_33480c = [](Address) { return re::ReVector<Address>{2}; };
    b.metadata.assembly_image_3344b0 = [](Address) { return Address(3); };
    b.metadata.class_from_name_334528 = [&](Address, Address space, Address name) {
        check(ascii(space) == "UnityEngine" &&
                  (ascii(name) == "Object" || ascii(name) == "Texture2D"),
              "metadata class and namespace roles");
        return Address(0x313000);
    };
    b.metadata.next_method_334660 = [](Address, Address &cursor) {
        if (cursor)
            return Address(0);
        cursor = 1;
        return Address(0x310000);
    };
    b.metadata.parameter_count_335140 = [](Address) { return 1; };
    b.observe_context_2cbd24 = [&](const RendererUnityCall &call) {
        check(call.target == 0x312000 && f.image.read<ReU32>(0x3d6198) == 3,
              "implicit exact-count resolver and flag order");
    };
    b.object_implicit = [](const RendererUnityCall &call) { return call.target == 0x312000; };
    check(renderer_implicit_2ccc0c(f.image, 0x2a0000, env, b),
          "implicit binds concrete class and exact-count method selection");
    b.class_type_2cd7f4 = [](Address c) {
        check(c == 0x313000, "class type receiver");
        return Address(0x314000);
    };
    b.type_object_2cea84 = [](Address t) {
        check(t == 0x314000, "type object receiver");
        return Address(0x315000);
    };
    check(renderer_runtime_type_2ccbdc(f.image, "Texture2D", "UnityEngine", env, b) == 0x315000,
          "runtime type class/type/object chain");
    RendererUnityBackend missing;
    bool stopped = false;
    {
        (void)renderer_dimension_2cae08_2cae88(f.image, 0x2cae08, 0x2a0000, env, missing);
    }
    check(stopped && f.image.read<ReU32>(0x3d6460) == 1,
          "missing resolver preserves first native cache flag");
}

} // namespace
void check_renderer_helpers_reconstruction() {
    widgets();
    utf8_measure();
    background_and_binding();
    icons();
    unity_wrappers();
}
} // namespace rust_internal_re
