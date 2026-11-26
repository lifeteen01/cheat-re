#include "frame_dependencies_ui_setup.hpp"
namespace rust_internal_re {
ClipRect frame_color_2db318(ReI32 r,ReI32 g,ReI32 b,ReI32 a) {
    // [C] DLL28d6e0 is binary32 0x3b808081. The native MULTIPLIES by
    // this rounded reciprocal; replacing it with per-channel /255 can differ.
    constexpr float scale=re::re_bit_cast<float>(0x3b808081u);
    return {static_cast<float>(r)*scale,static_cast<float>(g)*scale,static_cast<float>(b)*scale,static_cast<float>(a)*scale};
}
void initialize_frame_colors_386acc(FrameMenuState& s) {
    auto& c=s.ui_colors;
    c[0x38b8]=frame_color_2db318(84,166,98,255);
    c[0x38c8]=frame_color_2db318(209,209,209,255);
    c[0x38d8]=frame_color_2db318(209,209,209,102);
    c[0x38e8]=frame_color_2db318(17,19,16,255);
    c[0x38f8]=frame_color_2db318(24,26,25,255);
    c[0x3938]=frame_color_2db318(30,33,32,255);c[0x3908]=c[0x3938];
    c[0x3918]=frame_color_2db318(122,122,122,10);
    c[0x3928]={0,0,0,0};c[0x39a8]={0.02f,0.02f,0.02f,0};
    c[0x39b8]=c[0x38b8];c[0x39c8]=c[0x38b8];c[0x39d8]=c[0x38b8];
    c[0x39e8]=frame_color_2db318(255,255,255,255);c[0x39f8]=frame_color_2db318(255,255,255,255);
    c[0x3a18]=c[0x3938];
    const auto base=frame_color_2db318(84,207,98,255);
    c[0x3a28]={base.x/1.15f,base.y/1.15f,base.z/1.15f,base.w};
    c[0x3a38]={base.x/1.35f,base.y/1.35f,base.z/1.35f,base.w};
    c[0x3a78]=c[0x3918];c[0x3bb8]=frame_color_2db318(84,207,98,18);
}
void initialize_frame_style_389220(FrameMenuState& s) {
    auto put=[&](ReU32 offset,float value) {s.ui_style_values[offset]=re::re_bit_cast<ReU32>(value);};
    auto pair=[&](ReU32 offset,Vec2 value) {put(offset,value.x);put(offset+4,value.y);};
    const auto scale=s.ui_scale;
    put(0x37e0,scale*5.0f);pair(0x37d8,{0,0});pair(0x37e8,{0,0});put(0x37e4,0);
    put(0x3814,scale*3.0f);pair(0x380c,{scale*8.0f,scale*8.0f});put(0x3818,0);
    put(0x3808,0);put(0x3804,scale*3.0f);put(0x3800,0);put(0x37fc,scale*4.0f);
    pair(0x381c,{scale*20.0f,scale*20.0f});pair(0x3824,{scale*10.0f,scale*10.0f});
    put(0x3848,scale*4.0f);put(0x3844,scale*4.0f);
}
} // namespace rust_internal_re
