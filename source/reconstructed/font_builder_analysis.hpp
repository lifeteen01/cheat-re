#pragma once
#include "font_builder_support.hpp"
namespace rust_internal_re {
struct FontBuilderLimits {
    ReUSize maximum_font_bytes{64000000}, maximum_glyphs{65536}, maximum_vertices{1000000};
    ReUSize maximum_configs{256}, maximum_fonts{256}, maximum_pixels{16000000};
    ReUSize maximum_recursion{64};
    ReUSize maximum_parser_steps{1000000};
};
// [I] Explicit copied font span. Reads outside it stop analysis, not native false.
struct FontBuilderInput {
    Address bytes{};
    ReUSize size{};
};
struct FontBuilderBuffer {
    ReI64 offset{};
    ReI32 cursor{}, size{};
};
struct FontBuilderCff {
    FontBuilderBuffer data, charstrings, global_subrs, subrs, fontdicts, fdselect;
};
struct FontBuilderInfo {
    FontBuilderInput input;
    ReI32 font_start{}, glyph_count{}, loca{}, head{}, glyf{}, hhea{}, hmtx{}, kern{},
        gpos{}, svg{};
    ReI32 index_map{}, loca_format{};
    bool cff{};
    FontBuilderCff cff_buffers;
};
struct FontBuilderBox {
    ReI32 x0{}, y0{}, x1{}, y1{};
};
// [I] Unwritten native second-control/padding bytes are not synthesized.
struct FontBuilderVertex {
    ReI16 x{}, y{}, cx{}, cy{};
    re::ReOptional<re::ReArray<ReI16, 2>> second_control;
    ReU8 type{};
};
ReI32 font_builder_offset_3a9fdc(const Snapshot &, FontBuilderInput, ReI32);
bool font_builder_init_3aa060(const Snapshot &, FontBuilderInfo &, FontBuilderInput, ReI32,
                              const FontBuilderLimits & = {});
ReI32 font_builder_glyph_3adf78(const Snapshot &, const FontBuilderInfo &, ReI32,
                                       const FontBuilderLimits & = {});
re::ReArray<ReI32, 3> font_builder_vertical_3ae24c(const Snapshot &, const FontBuilderInfo &);
float font_builder_scale_3aefdc(const Snapshot &, const FontBuilderInfo &, float);
float font_builder_em_scale_3aefac(const Snapshot &, const FontBuilderInfo &, float);
re::ReOptional<FontBuilderBox> font_builder_box_3ae484(const Snapshot &, const FontBuilderInfo &,
                                                      ReI32);
FontBuilderBox font_builder_bitmap_box_3ae308(const Snapshot &, const FontBuilderInfo &,
                                              ReI32, float, float, float shift_x = 0,
                                              float shift_y = 0);
re::ReArray<ReI32, 2> font_builder_horizontal_3ae550(const Snapshot &,
                                                           const FontBuilderInfo &, ReI32);
re::ReVector<FontBuilderVertex> font_builder_shape_3aa6cc(const Snapshot &, const FontBuilderInfo &,
                                                         ReI32,
                                                         const FontBuilderLimits & = {},
                                                         ReUSize depth = 0);
struct FontBuilderRect {
    ReI32 id{}, width{}, height{}, x{}, y{}, packed{};
};
static_assert(sizeof(FontBuilderRect) == 24);
struct FontBuilderPackNode {
    ReI32 x{}, y{}, next{-1};
    bool initialized{};
};
struct FontBuilderPack {
    ReI32 width{}, height{}, alignment{}, heuristic{}, active{-1}, free{-1};
    re::ReVector<FontBuilderPackNode> nodes;
};
void font_builder_pack_init_3adda4(FontBuilderPack &, ReI32 width, ReI32 height,
                                   ReI32 nodes, const FontBuilderLimits & = {});
bool font_builder_pack_rects_3ade50(FontBuilderPack &, re::ReSpan<FontBuilderRect>,
                                    const FontBuilderLimits & = {});
struct FontBuilderEffects {
    // [I] Owned mapped allocation keys and release; no native allocator execution.
    re::ReFunction<Address(ReU64)> allocate_owned;
    FontBuilderSupportEffects support;
};
void font_builder_bitmap_3ae788(Snapshot &, const FontBuilderInfo &, Address pixels, int width,
                                int height, int stride, float scale_x, float scale_y, int glyph,
                                const FontBuilderLimits & = {});
void font_builder_filter(Snapshot &, Address pixels, int width, int height, int stride,
                         ReU32 kernel, bool vertical, const FontBuilderLimits & = {});
struct FontBuilderEnvironment {
    Address module{};
    FontBuilderLimits limits;
};
// [I] Shared native-body folds with ordered Snapshot/owned-container mutations.
void font_begin_config_owned_3a5950(Snapshot &, FontTextFont &, Address atlas, Address font,
                                    Address config, float ascent, float descent,
                                    const FontBuilderSupportEffects &);
void font_text_add_glyph_deferred_39ff7c(Snapshot &, Address font, FontTextFont &,
                                         ReU16 codepoint, FontTextGlyph,
                                         re::ReOptional<FontTextGlyphConfig> = {});
void font_builder_finish_atlas_3a4b40(Snapshot &, Address atlas, FontTextStore &);
bool font_builder_default_3a59bc(Snapshot &, Address atlas, FontTextStore &,
                                 const FontBuilderEnvironment &, const FontBuilderEffects &);
FontProducerEffects bind_font_builder(Snapshot &, FontTextStore &, const FontBuilderEnvironment &,
                                      const FontBuilderEffects &,
                                      FontProducerEffects fallback = {});
re::ReSpan<const RendererCoverage> font_builder_coverage();
void check_font_builder_sfnt();
void check_font_builder_packing();
void check_font_builder_cff();
void check_font_builder_owned();
void check_font_builder_reconstruction();
} // namespace rust_internal_re
