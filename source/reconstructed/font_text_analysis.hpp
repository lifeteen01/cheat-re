#pragma once
#include "drawlist_core_analysis.hpp"
#include "frame_dependencies_menu.hpp"
namespace rust_internal_re {
// [I] Owned font/atlas containers. Numeric keys never become host pointers.
struct FontTextGlyph {
    ReU32 packed{};float advance{},x0{},y0{},x1{},y1{},u0{},v0{},u1{},v1{};
    ReU32 codepoint()const{return packed>>2;}
};
static_assert(sizeof(FontTextGlyph)==40);
struct FontTextFont {
    RendererFont measure;re::ReVector<ReU16> lookup;re::ReVector<FontTextGlyph> glyphs;
    re::ReOptional<ReUSize> fallback;Address atlas{};
    ReU16 fallback_character{},ellipsis_character{0xffff},ellipsis_count{},used_pages{};
    float ellipsis_width{},ellipsis_step{};bool dirty{};ReU32 surface{};
};
struct FontTextRect {
    ReU16 width{},height{},x{},y{};ReU32 glyph_id{};float advance{};Vec2 offset{};Address font{};
};
static_assert(sizeof(FontTextRect)==32);
struct FontTextAtlas {
    ReU32 flags{};ReI32 glyph_padding{},width{},height{};bool ready{};
    re::ReOptional<re::ReVector<ReU8>> alpha;re::ReOptional<re::ReVector<ReU32>> rgba;
    Vec2 uv_scale{},white_uv{};re::ReVector<Address> fonts;re::ReVector<FontTextRect> rectangles;
    re::ReArray<re::ReArray<float,4>,64> lines{};re::ReArray<re::ReArray<float,4>,9> rounded{};re::ReArray<float,4> circle{};
    ReI32 white_rect{},line_rect{},round_rect{},circle_rect{},radius{},inner{};
    float exponent{},offset{};bool blur{};
};
struct FontTextStore {re::ReMap<Address,FontTextFont> fonts;re::ReMap<Address,FontTextAtlas> atlases;};
FontTextFont copy_font_text_font(const Snapshot&,Address,ReUSize maximum=1000000);
FontTextAtlas copy_font_text_atlas(const Snapshot&,Address,ReUSize maximum_pixels=16000000);
const FontTextGlyph* font_text_find_3a4554(const FontTextFont&,ReU16);
const FontTextGlyph* font_text_find_3a4520(const FontTextFont&,ReU16);
void font_text_build_lookup_3a33c0(FontTextFont&);
re::ReArray<float,4> font_text_rect_uv_3a37c8(const FontTextAtlas&,const FontTextRect&);
struct FontTextGlyphConfig {bool pixel_snap{};float extra_spacing{},minimum_advance{},maximum_advance{};};
void font_text_add_glyph_39ff7c(FontTextFont&,const FontTextAtlas&,ReU16,FontTextGlyph,re::ReOptional<FontTextGlyphConfig> = {});
void font_text_white_3a4f38(FontTextAtlas&);
void font_text_lines_3a5008(FontTextAtlas&);
void font_text_shapes_3a5204(FontTextAtlas&);
void font_text_finish_atlas_3a4b40(FontTextStore&,Address);
float font_text_power_3c8da8(float,float);
float font_text_cosine_3c899c(float);
void font_text_blur_3a45b4(re::ReVector<float>&,ReI32);
struct FontTextShared {Address font{};float size{};};
// [I] Data-producing geometry boundary; bound implementation writes owned drawlist buffers.
struct FontTextSink {
    re::ReFunction<re::ReArray<float,4>(Address)> clip;
    re::ReFunction<FontTextShared(Address)> shared;
    re::ReFunction<void(Address,ReI32,ReI32)> reserve,unreserve;
    re::ReFunction<void(Address,re::ReSpan<const DrawVertex>,re::ReSpan<const ReU16>)> write;
};
FontTextSink bind_font_text_draw_core(DrawCoreStore&,const re::ReMap<Address,FontTextShared>&);
struct FontTextRequest {
    Address draw_list{},font{};float size{};Vec2 position{};ReU32 color{};
    re::ReStringView bytes;re::ReOptional<ReUSize> end;float wrap_width{};
    re::ReOptional<re::ReArray<float,4>> fine_clip;
};
void font_text_raster_3a792c(const FontTextFont&,FontTextSink&,const FontTextRequest&,re::ReArray<float,4> clip,bool fine_clip);
void font_text_draw_3a31f8(FontTextStore&,FontTextSink&,FontTextRequest);
// [I] Optional color_address reads/converts native float4 at the final pass. Otherwise
// packed color is a supplied decoded2ef80c value. Text/position remain copied addresses
// so each native text/drawlist reload remains observable to the owned sink.
struct FontTextControllerRequest {Address text{},position{},initial_font_record{};ReU32 color{};ReI32 kind{};re::ReOptional<Address> color_address;};
re::ReArray<Address,4> copy_font_text_worker_35d31c(const Snapshot&,Address module);
Address font_text_worker_35d31c(Snapshot&,Address module,
    const re::ReFunction<Address(ReUSize)>& reserve_owned = {});
ReU32 font_text_color_2ef80c(re::ReArray<float,4>);
Address font_text_select_35d220(FrameMenuState&,ReI32 family,ReI32 size);
void font_text_centered_36135c(Snapshot&,Address module,FrameMenuState&,FontTextStore&,FontTextSink&,const FontTextControllerRequest&);
void font_text_plain_361bcc(Snapshot&,Address module,FrameMenuState&,FontTextStore&,FontTextSink&,const FontTextControllerRequest&);
// [C] 0x3a461c..0x3a470c: single-pass separable 15-tap Gaussian blur convolution
void font_text_blur_pass_3a461c(const float* input, float* output, ReI32 size, bool horizontal);
// [C] 0x3a43d0..0x3a44d3: signed box distance for SDF shape generation
float font_text_box_distance_3a43d0(Vec2 p, Vec2 minimum, Vec2 maximum);
// [C] 0x3a43ac..0x3a43d0: Euclidean distance between two points
float font_text_point_distance_3a43ac(Vec2 a, Vec2 b);
// [C] 0x3a44d4..0x3a451f: return first codepoint from array that exists in font glyphs
ReU16 font_text_first_codepoint_3a44d4(const FontTextFont&, const ReU16* codepoints, ReI32 count);
// [C] 0x3a4abc..0x3a4b06: ensure advances and lookup vectors accommodate codepoint range
void font_text_ensure_lookup_3a4abc(FontTextFont&, ReI32 new_size);
// [C] 0x3a8160..0x3a8183: set visibility bit (packed bit 1) for a glyph by codepoint
void font_text_set_visible_3a8160(FontTextFont&, ReU16 codepoint, bool visible);
// [C] 0x3a473c..0x3a4745: return rectangle count from atlas
ReI32 font_text_rectangle_count_3a473c(const FontTextAtlas&);
// [C] 0x3a658c..0x3a6591: tail-call thunk to font_text_power_3c8da8
float font_text_power_thunk_3a658c(float x, float exponent);
re::ReSpan<const RendererCoverage> font_text_coverage();
void check_font_text_reconstruction();
} // namespace rust_internal_re
