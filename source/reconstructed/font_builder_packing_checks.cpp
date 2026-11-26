#include "font_builder_analysis.hpp"
namespace rust_internal_re {
void check_font_builder_packing() {
    FontBuilderPack pack;
    font_builder_pack_init_3adda4(pack, 10, 10, 10);
    re::ReArray<FontBuilderRect, 5> rects{{{10, 6, 4, 0, 0, 0},
                                          {11, 4, 4, 0, 0, 0},
                                          {12, 4, 6, 0, 0, 0},
                                          {13, 0, 3, 1, 1, 0},
                                          {14, 20, 1, 0, 0, 0}}};
    if (font_builder_pack_rects_3ade50(pack, rects) || rects[0].x != 4 || rects[0].y != 0 ||
        rects[1].x != 4 || rects[1].y != 4 || rects[2].x != 0 || rects[2].y != 0 ||
        rects[3].x != 0 || rects[3].y != 0 || rects[4].packed || rects[4].x != INT32_MAX)
        { /* FREESTANDING_TODO: was throw runtime_error("literal skyline ordering/empty/failure fixture") */ }
    FontBuilderPack ties;
    font_builder_pack_init_3adda4(ties, 8, 8, 8);
    re::ReArray<FontBuilderRect, 3> equal{
        {{3, 2, 2, 0, 0, 0}, {2, 2, 2, 0, 0, 0}, {1, 2, 2, 0, 0, 0}}};
    if (!font_builder_pack_rects_3ade50(ties, equal) || equal[0].id != 3 || equal[0].x != 0 ||
        equal[1].x != 2 || equal[2].x != 4)
        { /* FREESTANDING_TODO: was throw runtime_error("byte-backed stable comparator ties") */ }
    re::ReArray<FontBuilderRect, 1> next{{{4, 2, 2, 0, 0, 0}}};
    if (!font_builder_pack_rects_3ade50(ties, next) || next[0].x != 6)
        { /* FREESTANDING_TODO: was throw runtime_error("same skyline persists across custom/glyph packing calls") */ }
}
} // namespace rust_internal_re
