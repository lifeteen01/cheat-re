#pragma once
#include "font_text_analysis.hpp"
#include "unity_backend_analysis.hpp"
#include "world_esp_analysis.hpp"
namespace rust_internal_re {
// [I] Caller reserves separate owned scratch regions; no native allocator ABI.
struct FontFrameStorage {
    Address module{}, string_object{}, string_bytes{}, position{}, color{};
    ReUSize text_capacity{1048576};
};
UnityApi bind_font_frame(Snapshot &, FrameMenuState &, FontTextStore &, FontTextSink &,
                         const FontFrameStorage &, UnityApi = {});
void synchronize_font_frame_outputs(const Snapshot &, Address module, FrameMenuState &);
RendererTextMeasure measure_owned_frame_font_38f79c(const Snapshot &, Address context,
                                                    const FontTextStore &, re::ReStringView,
                                                    re::ReOptional<ReUSize> end = {},
                                                    bool hide_after_hash = false, float wrap = 0);
WorldPlayerBackend bind_world_font_measurements(const Snapshot &, Address context,
                                                const FontTextStore &, WorldPlayerBackend = {});
void check_font_frame_bindings();
} // namespace rust_internal_re
