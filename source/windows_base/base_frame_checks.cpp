#include "base_frame.hpp"
#include "offset_catalog.hpp"
#include <iostream>
namespace {
void require(bool value, const char *why) { if (!value) throw std::runtime_error(why); }
}
int main() {
    try {
        re_base::check_offset_profile();
        re_base::check_offset_catalog();
        re_base::Frame f;
        re_base::build_frame(f, 64, 48, 3072, {32, 24, false, true});
        require(f.geometry.vertices.size == 4 && f.geometry.indices.size == 6,
                "recovered rectangle reaches the platform raster sink");
        require(f.pixels[24 * 64 + 32] == 0x0060d080u && f.pixels[0] == 0x00182028u,
                "frame has independent expected foreground/background colors");
        std::size_t colored{};
        for (auto p : f.pixels) if (p == 0x0060d080u) ++colored;
        require(colored == 24 * 24, "two triangles cover the complete 24px rectangle");
        re_base::build_frame(f, 64, 48, 3072, {-20, -40, true, true});
        require(f.pixels[0] == 0x00f09040u && f.pixels[12] == 0x00182028u,
                "input and clipping affect actual pixels");
        re_base::build_frame(f, 1, 1, 1, {100, 100, true, false});
        require(f.geometry.indices.size == 0 && f.pixels.size() == 1 &&
                f.pixels[0] == 0x00182028u, "hidden input path resets previous frame buffers");
        bool refused{};
        try { re_base::build_frame(f, 65536, 65536, 1, {}); }
        catch (const std::length_error &) { refused = true; }
        require(refused, "oversized surface rejected before allocation");
        re_base::build_frame(f, 64, 48, 3072, {32, 24, false, true, 40, 0xff50c0f0u});
        require(f.pixels[24 * 64 + 14] == 0x00f0c050u && f.pixels[24 * 64 + 11] == 0x00182028u,
                "menu marker size and accent alter actual geometry/raster output");
        std::cout << "PASS: profile parser/file/validation +219-key consumers +owned pixels/settings\n";
    } catch (const std::exception &e) { std::cerr << e.what() << '\n'; return 1; }
}
