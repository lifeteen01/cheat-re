#pragma once
#include "font_producer_analysis.hpp"
namespace rust_internal_re {
struct FontBuilderSupportEffects {
    // [I] Owned allocation adapter. Bind to the existing concrete
    // draw_core_free_39517c when copied globals use the flat-RVA layout.
    re::ReFunction<void(Address)> free_39517c;
    ReUSize maximum_pixel_steps{16000000};
};
void font_clear_pixels_3a3e64(Snapshot &, Address atlas, const FontBuilderSupportEffects &);
void font_clear_output_3a3e10(Snapshot &, Address font, const FontBuilderSupportEffects &);
void font_begin_config_3a5950(Snapshot &, Address atlas, Address font, Address config, float ascent,
                              float descent, const FontBuilderSupportEffects &);
void font_opacity_table_3a4d18(Snapshot &, Address table, float scale);
void font_apply_opacity_3a4d50(Snapshot &, Address table, Address pixels, ReI32 x,
                               ReI32 y, ReI32 width, ReI32 height,
                               ReI32 stride, const FontBuilderSupportEffects & = {});
void check_font_builder_support();
} // namespace rust_internal_re
