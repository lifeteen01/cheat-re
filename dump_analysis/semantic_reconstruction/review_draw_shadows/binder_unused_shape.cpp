#include "draw_shadows_analysis.hpp"
#include <iostream>
using namespace rust_internal_re;
DrawCoreList empty() {
    DrawCoreList d;
    draw_core_add_command_39fd18(d);
    return d;
}
int main() {
    DrawShadowsShared atlas;
    atlas.atlas_width = atlas.atlas_height = 100;
    for (auto &uv : atlas.uv)
        uv = {.2f, .3f, .4f, .5f};
    DrawShapesShared unused;
    unused.circle_error = std::numeric_limits<float>::quiet_NaN();
    unused.arc_fast_radius_cutoff = std::numeric_limits<float>::quiet_NaN();
    DrawCoreStore store;
    store.lists[1] = empty();
    DrawShapesResources shapes;
    DrawShadowsResources shadows{{1, atlas}};
    auto api = bind_menu_shadows(store, shapes, shadows);
    try {
        api.glow_rectangle_3a2010({1, {0, 0}, {10, 10}, 0xffffffff, 2, {}, 0, 0});
        std::cout << "binder rect succeeded\n";
    } catch (const RendererMissing &e) {
        std::cout << "binder rect stopped site=" << std::hex << e.site << std::dec
                  << " vertices=" << store.lists.at(1).vertices.size
                  << " indices=" << store.lists.at(1).indices.size << '\n';
    }
    auto direct = empty();
    draw_shadows_rect_3a2010(direct, unused, atlas, {0, 0}, {10, 10}, 0xffffffff, 2, {}, 0, 0);
    std::cout << "byte-reached rect path needs no shape fields: vertices=" << direct.vertices.size
              << " indices=" << direct.indices.size << '\n';
    store.lists[2] = empty();
    shadows[2] = atlas;
    try {
        api.circle({2, {0, 0}, 10, 2, {}, 0, 0xffffffff, 5, false});
        std::cout << "binder circle succeeded\n";
    } catch (const RendererMissing &e) {
        std::cout << "binder explicit5 circle stopped site=" << std::hex << e.site << std::dec
                  << " path=" << store.lists.at(2).path.size << '\n';
    }
    auto circle = empty();
    draw_shadows_circle_3a1410(circle, unused, atlas, {0, 0}, 10, 0xffffffff, 2, {}, 0, 5);
    std::cout << "byte-reached explicit5 circle needs no shape fields: vertices="
              << circle.vertices.size << " indices=" << circle.indices.size
              << " path=" << circle.path.size << '\n';
    return 0;
}
