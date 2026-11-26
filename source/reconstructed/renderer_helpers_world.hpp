#pragma once
#include "renderer_helpers_analysis.hpp"
#include "world_esp_analysis.hpp"
namespace rust_internal_re {
WorldDrawOutput bind_renderer_world_output(re::ReVector<WorldDrawCommand>&,Snapshot&,
    RendererBackgroundBackend&,re::ReFunction<void(const WorldDrawCommand&)>);
// [I] Closures borrow all references. World font writes remain in copied owned state.
WorldPlayerBackend bind_renderer_helpers_world(Snapshot&,WorldLabelFonts&,RendererBackgroundBackend&,
    RendererIconState&,RendererIconBackend&,WorldPlayerBackend fallback={});
// [C/I] Literal find/update order, then native draw indices0..5; preserves arbitrary copied widget order.
re::ReArray<WorldPlayerLabel,6> prepare_renderer_world_labels(re::ReVector<RendererWidget>,
    const re::ReArray<re::ReString,6>& text,re::ReOptional<ReU32> held_identifier={});
using RendererWorldLabelPreparer=re::ReFunction<re::ReArray<WorldPlayerLabel,6>(const re::ReArray<re::ReString,6>&,re::ReOptional<ReU32>)>;
RendererWorldLabelPreparer make_renderer_world_label_preparer(re::ReVector<RendererWidget>);
} // namespace rust_internal_re
