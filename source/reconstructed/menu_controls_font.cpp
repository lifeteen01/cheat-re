#include "menu_controls_analysis.hpp"
namespace rust_internal_re {
MenuControlsApi bind_menu_controls_text(FontTextStore &fonts, FontTextSink &sink,
                                        MenuControlsApi api) {
    api.text = [&fonts, &sink](const MenuControlText &q) {
        font_text_draw_3a31f8(
            fonts, sink, {q.draw_list, q.font, q.size, q.position, q.color, q.text, q.end, 0, {}});
    };
    return api;
}
} // namespace rust_internal_re
