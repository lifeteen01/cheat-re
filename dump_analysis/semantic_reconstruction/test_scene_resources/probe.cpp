#include "scene.hpp"
#include <iostream>
namespace {
void require(bool value, const char *message) {
    if (!value) throw std::runtime_error(message);
}
}
int main() {
    namespace re = rust_internal_re;
    using owned_scene::Resources;
    constexpr std::uint32_t background = 0xff1e1712;
    for (int lifetime = 0; lifetime < 3; ++lifetime) {
        Resources r;
        require(r.pixels.empty() && r.fonts.fonts.at(Resources::font).glyphs.size() == 96,
                "constructed font plus recovered tab");
        r.reset(320, 240);
        r.text(Resources::esp_list, {8, 8}, "Readable ESP 0123 abc XYZ");
        require(r.draw.lists.at(Resources::esp_list).vertices.size > 0,
                "recovered raster produced actual vertices");
        r.rasterize();
        require(std::count(r.pixels.begin(), r.pixels.end(), background) < 320 * 240 - 100,
                "actual glyph alpha reaches framebuffer");
        re::Snapshot snapshot(0, std::vector<std::byte>(0x40000));
        r.write_font_snapshot(snapshot);
        const auto copied = re::copy_font_text_font(snapshot, Resources::font);
        require(copied.glyphs.size() == 96 && copied.measure.nominal == 14 &&
                re::font_text_find_3a4520(copied, 'A')->advance == 8 &&
                re::renderer_measure_3a3874(copied.measure, {14, 1000, 0, "ABC", {}}).size.x == 24,
                "snapshot consumed by recovered font copy/measurement");
        r.reset(32, 32);
        auto &list = r.draw.lists.at(Resources::esp_list);
        re::draw_core_push_clip_3a7268(list, {4, 4}, {12, 12}, false);
        const auto uv = r.shapes.at(Resources::esp_list).white_uv;
        re::draw_core_image_3a0168(list, Resources::texture, {0, 0}, {20, 20}, uv, uv, 0x800000ff);
        r.rasterize();
        const auto one = r.pixels[5 * 32 + 5];
        require(r.pixels[3 * 32 + 5] == background && r.pixels[12 * 32 + 5] == background,
                "command clip rectangle restricts rasterization");
        require(one != background && r.pixels[6 * 32 + 5] == one &&
                r.pixels[5 * 32 + 6] == one && ((one & 255) > 128) && ((one >> 24) == 255),
                "alpha blend and top-left rule avoid double diagonal coverage");
        list.indices.write(0, 65535);
        r.rasterize();
        require(r.trace.calls.at("host_rejected_triangle") > 0, "reject out-of-range indices");
        list.indices.write(0, 0);
        auto vertex = list.vertices.at(0);
        const float nan = std::numeric_limits<float>::quiet_NaN();
        std::memcpy(vertex.data(), &nan, 4); list.vertices.write(0, vertex);
        r.rasterize();
        require(r.trace.calls.at("host_rejected_triangle") >= 3, "reject nonfinite triangle");
        list.commands.at(0).clip[0] = nan;
        r.rasterize();
        require(r.trace.calls.at("host_rejected_command") > 0, "reject nonfinite command clip");
        r.reset(0, 0); r.rasterize();
        require(r.pixels.empty() && list.vertices.size == 0 && list.indices.size == 0,
                "zero-size reset clears per-frame buffers");
        r.reset(1280, 720); r.rasterize();
        require(r.pixels.size() == 1280 * 720, "framebuffer resize");
        bool rejected = false;
        try { r.reset(std::numeric_limits<unsigned>::max(), 1); }
        catch (const std::length_error &) { rejected = true; }
        require(rejected && r.width == 1280 && r.pixels.size() == 1280 * 720,
                "unsafe resize fails without mutating dimensions");
        rejected = false;
        try { r.reset(8192, 8192); } catch (const std::length_error &) { rejected = true; }
        require(rejected, "pixel budget bound");
        rejected = false;
        try { r.text(Resources::menu_list, {0, 0}, "bad", 0xffffffff, nan); }
        catch (const std::invalid_argument &) { rejected = true; }
        require(rejected, "reject unsafe text size");
        re::Snapshot short_snapshot(0, std::vector<std::byte>(100));
        rejected = false;
        try { r.write_font_snapshot(short_snapshot); } catch (const std::out_of_range &) { rejected = true; }
        require(rejected, "reject insufficient font snapshot");
    }
    std::cout << "PASS: recovered text geometry, font snapshot, clip, alpha, edge coverage, invalid triangles, resize, lifecycle\n";
}
