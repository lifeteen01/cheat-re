#pragma once
#include "internal_analysis.hpp"
namespace rust_internal_re {
// [I] Offline owned values, not live ImGui/Unity ABI declarations.
struct RendererMissing {
    Rva site{},dependency{};
    re::ReString reason;
    RendererMissing(Rva at,Rva target,re::ReStringView why):site(at),dependency(target),reason(why){}
};
struct RendererWidget {
    re::ReString key,text;ReI32 side{};re::ReArray<ReByte,8> bytes_24{};
    ReU8 byte_2c{};re::ReArray<ReByte,16> bytes_50{};ReU8 byte_60{};ReU32 icon_64{};
};
re::ReString renderer_string(const Snapshot&,Address,ReUSize maximum=1048576);
RendererWidget read_renderer_widget(const Snapshot&,Address);
re::ReVector<RendererWidget> copy_renderer_widgets_2eec7c(const Snapshot&,Address vector,ReUSize maximum=100000);
ReUSize find_renderer_widget(re::ReSpan<const RendererWidget>,Rva find_routine);
re::ReArray<re::ReStringView,6> renderer_widget_keys();
// [C] Normal no-match returns end; dereferencing it is an explicit analysis failure.
RendererWidget& require_renderer_widget(re::ReVector<RendererWidget>&,Rva);
void set_renderer_widget_text(re::ReVector<RendererWidget>&,Rva,re::ReStringView,re::ReOptional<ReU32> icon={});
struct RendererUtf8 { ReU32 codepoint{};ReUSize consumed{}; };
RendererUtf8 renderer_utf8_39357c(re::ReStringView,ReUSize offset,re::ReOptional<ReUSize> end={});
bool renderer_blank_3a4b10(ReU32);
bool renderer_blank_37897c(ReU8);
struct RendererFont {
    // [C] Observed font+00/+08 float-advance count/data, +10 fallback, +14 nominal.
    float fallback{},nominal{};re::ReVector<float> advances;
};
RendererFont read_renderer_font(const Snapshot&,Address,ReUSize maximum_advances=65536);
struct RendererTextRequest {
    float size{},maximum_width{re::ReNumericLimits<float>::max()},wrap_width{};
    re::ReStringView bytes;re::ReOptional<ReUSize> explicit_end;
};
struct RendererTextMeasure { Vec2 size{};ReUSize remaining{}; };
ReUSize renderer_wrap_3a3aa4(const RendererFont&,float scale,re::ReStringView,ReUSize begin,ReUSize end,float width);
ReUSize renderer_next_line_3a3a70(re::ReStringView,ReUSize begin,ReUSize end);
RendererTextMeasure renderer_measure_3a3874(const RendererFont&,const RendererTextRequest&);
// [C]38f79c: current-font/current-size reads, optional ## cutoff, and trunc(width+0.99999).
RendererTextMeasure renderer_measure_38f79c(const Snapshot&,Address context,re::ReStringView,
    re::ReOptional<ReUSize> end={},bool hide_after_hash=false,float wrap_width=0);
// [U] Native draw-list reset/texture/clip/raster closure remains separately typed.
struct RendererBackgroundBackend {
    re::ReFunction<Address(ReUSize)> allocate_395158;
    re::ReFunction<void(Address)> reset_3a9258;
    re::ReFunction<void(Address,Address)> texture_3a73c4;
    re::ReFunction<void(Address,Vec2,Vec2,bool)> clip_3a7268;
    re::ReFunction<Address(re::ReStringView)> intern_name;
};
Address renderer_vector_index_38bb84(const Snapshot&,Address,ReI32);
Address renderer_background_392dcc(Snapshot&,Address viewport,ReU64 index,Address name,RendererBackgroundBackend&);
Address renderer_background_392164(Snapshot&,Address viewport,RendererBackgroundBackend&);
Address renderer_background_392198(Snapshot&,RendererBackgroundBackend&);
struct RendererIcon { bool ready{};Address texture{};float width{},height{}; };
struct RendererIconState { bool enabled_3d6160{},attempted_3d6161{};Address bundle_3d6168{};re::ReMap<re::ReString,RendererIcon> cache; };
struct RendererImageRequest { Address draw_list{},texture{};Vec2 minimum{},maximum{},uv_minimum{},uv_maximum{1,1};ReU32 tint{0xffffffff}; };
struct RendererIconBackend {
    // [U] Actual Unity effects, no host casts/execution of numeric targets.
    re::ReFunction<bool(Address)> implicit_2ccc0c;
    re::ReFunction<Address(Rva,ReUSize,ReI32)> embedded_bundle_375c08;
    re::ReFunction<Address(re::ReStringView,re::ReStringView)> runtime_type_2ccbdc;
    re::ReFunction<Address(Address,re::ReStringView,Address)> load_asset_2caf28;
    re::ReFunction<ReI32(Address)> width_2cae88,height_2cae08;
    re::ReFunction<Address()> background_392198;
    re::ReFunction<void(const RendererImageRequest&)> image_3a0168;
};
bool renderer_bundle_2cc8ac_2ccb6c(RendererIconState&,RendererIconBackend&);
bool renderer_load_icon_2ccd14(re::ReStringView,RendererIcon&,RendererIconState&,RendererIconBackend&);
bool renderer_draw_icon_2cca48(const RendererIcon&,Vec2,float,RendererIconBackend&);
bool renderer_icon_2cc8d0(re::ReOptional<re::ReStringView>,Vec2,float,RendererIconState&,RendererIconBackend&);
struct RendererCoverage {Rva begin{},end{};re::ReStringView status;};
// [C] 0x364ca0..0x364ca8: test obfuscation flag at byte offset 0x23 of a 36-byte token.
bool renderer_token_encoded_364ca0(const ReU8* buffer);
// [C] 0x3b464c..0x3b4688: XOR-decode 36 bytes from source to dest.
// [C] Key per byte i is (i % 57) + 0x37; since the loop runs i in [0,36), i % 57 == i.
void renderer_token_xor_3b464c(ReU8* dest, const ReU8* source);
// [C] 0x3b48b0..0x3b48d6: conditionally XOR-decode a token buffer in place; returns the buffer.
ReU8* renderer_token_decode_3b48b0(ReU8* buffer);
re::ReSpan<const RendererCoverage> renderer_helper_coverage();
void check_renderer_helpers_reconstruction();
} // namespace rust_internal_re
