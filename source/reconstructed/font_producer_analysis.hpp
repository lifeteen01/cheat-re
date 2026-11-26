#pragma once
#include "font_text_analysis.hpp"
#include "unity_backend_analysis.hpp"
#include "snapshot_bindings.hpp"
namespace rust_internal_re {
struct FontProducerEnvironment {
    Address module{};
    ReUSize maximum_pixel_steps{16000000};
};
struct FontProducerEffects {
    // [I] Safe owned allocation. May bind the concrete395158 counter wrapper.
    re::ReFunction<Address(ReU64)> allocate_owned;
    // [U] Default local builder3a59bc closure remains required, not Unity/foreign.
    // A configured alternative builder is likewise a numeric evidence key only.
    re::ReFunction<bool(Address target, Address atlas)> build;
};
struct FontProducerPixels {
    Address pixels{};
    ReI32 width{}, height{}, channels{};
};
bool build_font_atlas_3a3394(Snapshot &, Address atlas, const FontProducerEnvironment &,
                             const FontProducerEffects &);
FontProducerPixels font_alpha_3a4994(Snapshot &, Address atlas, const FontProducerEnvironment &,
                                     const FontProducerEffects &);
FontProducerPixels font_rgba_3a49ec(Snapshot &, Address atlas, const FontProducerEnvironment &,
                                    const FontProducerEffects &);
void font_alpha_into_3a4994(Snapshot &, Address atlas, Address pixels_output, Address width_output,
                            Address height_output, Address channels_output,
                            const FontProducerEnvironment &, const FontProducerEffects &);
// [C] Raw optional-output API preserves write/read ordering and output aliasing.
void font_rgba_into_3a49ec(Snapshot &, Address atlas, Address pixels_output, Address width_output,
                           Address height_output, Address channels_output,
                           const FontProducerEnvironment &, const FontProducerEffects &);
UnityApi bind_font_pixels(Snapshot &, const FontProducerEnvironment &, const FontProducerEffects &,
                          UnityApi = {});
void check_font_producer_reconstruction();
} // namespace rust_internal_re
