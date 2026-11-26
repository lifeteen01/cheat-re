#include "scene.hpp"
namespace {
void require(bool value, const char *message) {
    if (!value) __builtin_trap();
}
void check_atlas_fixture(const owned_scene::Resources &resources) {
    namespace reconstruction = rust_internal_re;
    const auto &atlas = resources.fonts.atlases.at(owned_scene::Resources::atlas);
    require(atlas.exponent == 1 && atlas.radius == 12 && atlas.inner == 4 &&
            atlas.offset == 0 && atlas.blur && atlas.width == 128 && atlas.height == 128,
            "owned shadow atlas input contract requires exponent1, radius12, inner4, zero offset and blur");
    require(reconstruction::font_text_power_3c8da8(0, 1) == 0 &&
            reconstruction::font_text_power_3c8da8(1, 1) == 1 &&
            reconstruction::font_text_power_3c8da8(0, 2) == -4.23193359375f &&
            reconstruction::font_text_power_3c8da8(1, 2) == 1.0579833984375f,
            "recovered power endpoints retain literal behavior; host fixture selects safe exponent1");
    const auto &shadow = resources.shadows.at(owned_scene::Resources::menu_list);
    require(shadow.uv[9] == atlas.circle &&
            ::re::re_equal(atlas.rounded.begin(), atlas.rounded.end(), shadow.uv.begin()) &&
            shadow.atlas_width == atlas.width && shadow.atlas_height == atlas.height &&
            atlas.circle == ::re::ReArray<float, 4>{48.f / 128, 72.f / 128, 64.f / 128, 88.f / 128},
            "recovered shadow UV fields retain rounded cells and circle sampling endpoints");
    require(atlas.rgba.has_value() && resources.texture_rgba == *atlas.rgba,
            "host texture contains the actual recovered atlas RGBA output");
    constexpr ::re::ReArray<ReU8, 17> circle_alpha{
        7, 7, 7, 7, 7, 22, 41, 62, 83, 104, 125, 146, 167, 187, 206, 221, 228};
    constexpr ::re::ReArray<ReU8, 17> rounded_alpha{
        8, 22, 42, 63, 84, 106, 127, 148, 169, 191, 212, 232, 246, 253, 254, 253, 246};
    for (ReUSize index = 0; index < circle_alpha.size(); ++index) {
        require(resources.texture_rgba.at(88 * 128 + 48 + index) ==
                    (ReU32(circle_alpha[index]) << 24 | 0xffffffu),
                "recovered circle alpha row matches exponent1 fixture without wrapped exterior bands");
        require(resources.texture_rgba.at(80 * 128 + 2 + index) ==
                    (ReU32(rounded_alpha[index]) << 24 | 0xffffffu),
                "recovered rounded alpha row matches exponent1 fixture without wrapped center plateau");
    }
}
void check_presentation_selection() {
    using owned_scene::Resources;
    namespace reconstruction = rust_internal_re;
    Resources resources;
    resources.reset(16, 16);
    const auto uv = resources.shapes.at(Resources::esp_list).white_uv;
    reconstruction::draw_core_image_3a0168(resources.draw.lists.at(Resources::esp_list),
        Resources::texture, {0, 0}, {16, 16}, uv, uv, 0xff0000ff);
    reconstruction::draw_core_image_3a0168(resources.draw.lists.at(Resources::menu_list),
        Resources::texture, {0, 0}, {16, 16}, uv, uv, 0xffff0000);
    resources.select_lists({Resources::menu_list, Resources::esp_list});
    resources.rasterize();
    require(resources.pixels.at(8 * 16 + 8) == 0xff0000ff,
            "presentation uses explicit display order rather than numeric address order");
    resources.select_lists({Resources::esp_list, Resources::menu_list});
    resources.rasterize();
    require(resources.pixels.at(8 * 16 + 8) == 0xffff0000,
            "reversing selected lists changes actual overlapping pixels");
    resources.select_lists({Resources::esp_list});
    resources.rasterize();
    require(resources.pixels.at(8 * 16 + 8) == 0xff0000ff,
            "unselected hidden-window geometry is not rasterized");
    /* Exception tests removed: -fno-exceptions
    bool rejected = false;
    try { resources.select_lists({Resources::esp_list, Resources::esp_list}); }
    catch (const std::invalid_argument &) { rejected = true; }
    require(rejected && resources.presentation_order() == ::re::ReVector{Resources::esp_list},
            "duplicate selection is rejected transactionally");
    rejected = false;
    try { resources.select_lists({0xfeed}); }
    catch (const std::invalid_argument &) { rejected = true; }
    require(rejected && resources.presentation_order() == ::re::ReVector{Resources::esp_list},
            "unknown selected list is rejected transactionally");
    */
    resources.select_lists({});
    resources.rasterize();
    require(resources.pixels.at(8 * 16 + 8) == 0xff1e1712,
            "empty explicit submission does not fall back to all allocated lists");
    resources.reset(16, 16);
    require(resources.presentation_order() == ::re::ReVector{Resources::esp_list, Resources::menu_list},
            "standalone resource reset restores default list selection");
}
}
void owned_scene::check_resources() {
    namespace re = rust_internal_re;
    using owned_scene::Resources;
    check_presentation_selection();
    constexpr ReU32 background = 0xff1e1712;
    for (int lifetime = 0; lifetime < 3; ++lifetime) {
        Resources resources;
        check_atlas_fixture(resources);
        require(resources.pixels.empty() && resources.fonts.fonts.at(Resources::font).glyphs.size() == 96,
                "constructed font plus recovered tab");
        resources.reset(320, 240);
        resources.text(Resources::esp_list, {8, 8}, "Readable ESP 0123 abc XYZ");
        require(resources.draw.lists.at(Resources::esp_list).vertices.size > 0,
                "recovered raster produced actual vertices");
        resources.rasterize();
        require(::re::re_count(resources.pixels.begin(), resources.pixels.end(), background) < 320 * 240 - 100,
                "actual glyph alpha reaches framebuffer");
        re::Snapshot snapshot(0, ::re::ReVector<ReByte>(0x40000));
        resources.write_font_snapshot(snapshot);
        const auto copied = re::copy_font_text_font(snapshot, Resources::font);
        require(copied.glyphs.size() == 96 && copied.measure.nominal == 14 &&
                re::font_text_find_3a4520(copied, 'A')->advance == 8 &&
                re::renderer_measure_3a3874(copied.measure, {14, 1000, 0, "ABC", {}}).size.x == 24,
                "snapshot consumed by recovered font copy/measurement");
        resources.reset(32, 32);
        auto &list = resources.draw.lists.at(Resources::esp_list);
        re::draw_core_push_clip_3a7268(list, {4, 4}, {12, 12}, false);
        const auto uv = resources.shapes.at(Resources::esp_list).white_uv;
        re::draw_core_image_3a0168(list, Resources::texture, {0, 0}, {20, 20}, uv, uv, 0x800000ff);
        resources.rasterize();
        const auto one = resources.pixels[5 * 32 + 5];
        require(resources.pixels[3 * 32 + 5] == background && resources.pixels[12 * 32 + 5] == background,
                "command clip rectangle restricts rasterization");
        require(one != background && resources.pixels[6 * 32 + 5] == one &&
                resources.pixels[5 * 32 + 6] == one && ((one & 255) > 128) && ((one >> 24) == 255),
                "alpha blend and top-left rule avoid double diagonal coverage");
        list.indices.write(0, 65535);
        resources.rasterize();
        require(resources.trace.calls.at("host_rejected_triangle") > 0, "reject out-of-range indices");
        list.indices.write(0, 0);
        auto vertex = list.vertices.at(0);
        const float nan = ::re::ReNumericLimits<float>::quiet_NaN();
        ::re::re_memcpy(vertex.data(), &nan, 4); list.vertices.write(0, vertex);
        resources.rasterize();
        require(resources.trace.calls.at("host_rejected_triangle") >= 3, "reject nonfinite triangle");
        list.commands.at(0).clip[0] = nan;
        resources.rasterize();
        require(resources.trace.calls.at("host_rejected_command") > 0, "reject nonfinite command clip");
        resources.reset(0, 0); resources.rasterize();
        require(resources.pixels.empty() && list.vertices.size == 0 && list.indices.size == 0,
                "zero-size reset clears per-frame buffers");
        resources.reset(1280, 720); resources.rasterize();
        require(resources.pixels.size() == 1280 * 720, "framebuffer resize");
        /* Exception tests removed: -fno-exceptions
        bool rejected = false;
        try { resources.reset(::re::ReNumericLimits<unsigned>::max(), 1); }
        catch (const std::length_error &) { rejected = true; }
        require(rejected && resources.width == 1280 && resources.pixels.size() == 1280 * 720,
                "unsafe resize fails without mutating dimensions");
        rejected = false;
        try { resources.reset(8192, 8192); } catch (const std::length_error &) { rejected = true; }
        require(rejected, "pixel budget bound");
        rejected = false;
        try { resources.text(Resources::menu_list, {0, 0}, "bad", 0xffffffff, nan); }
        catch (const std::invalid_argument &) { rejected = true; }
        require(rejected, "reject unsafe text size");
        re::Snapshot short_snapshot(0, ::re::ReVector<ReByte>(100));
        rejected = false;
        try { resources.write_font_snapshot(short_snapshot); } catch (const std::out_of_range &) { rejected = true; }
        require(rejected, "reject insufficient font snapshot");
        */
    }
}
