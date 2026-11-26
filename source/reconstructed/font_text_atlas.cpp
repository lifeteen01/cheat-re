#include "font_text_analysis.hpp"
namespace rust_internal_re {
namespace {
float fl(ReU32 x){return re::re_bit_cast<float>(x);}
float maxss(float a,float b){return a>b?a:b;}float minss(float a,float b){return a<b?a:b;}
ReI32 cvtt(float x){if(!re::re_isfinite(x)||x>=2147483648.0f||x<-2147483648.0f)return INT32_MIN;return ReI32(x);}
FontTextRect rect(const FontTextAtlas& a,ReI32 n,Rva site){if(n<0||ReUSize(n)>=a.rectangles.size()){ __builtin_trap(); }return a.rectangles[ReUSize(n)];}
void pixel(FontTextAtlas& a,ReI64 x,ReI64 y,ReU8 alpha,Rva site){
    // [I] Native row addressing is linear; do not invent per-row x clipping.
    const auto i=y*a.width+x;if(i<0){ __builtin_trap(); }
    if(a.alpha){if(ReU64(i)>=a.alpha->size()){ __builtin_trap(); }(*a.alpha)[ReUSize(i)]=alpha;}
    else {if(!a.rgba||ReU64(i)>=a.rgba->size()){ __builtin_trap(); }(*a.rgba)[ReUSize(i)]=(ReU32(alpha)<<24)|0xffffff;}
}
ReUSize square(ReI32 size,Rva site){if(size<0||size>4096){ __builtin_trap(); }return ReUSize(size)*ReUSize(size);}
float magnitude(Vec2 v,float fallback){const float sq=v.x*v.x+v.y*v.y;return sq>0?sample_sqrt_2e3c88(sq):fallback;}
float box(Vec2 p,Vec2 minimum,Vec2 maximum){const auto center=(minimum+maximum)*0.5f;const auto half=(maximum-minimum)*0.5f;const auto d=Vec2{re::re_fabs(p.x-center.x)-half.x,re::re_fabs(p.y-center.y)-half.y};return magnitude({maxss(d.x,0),maxss(d.y,0)},fl(0x3727c5ac))+minss(maxss(d.x,d.y),0);}
float alpha_value(float distance,const FontTextAtlas& a){const float numerator=maxss(distance+a.offset,0);const float denominator=maxss(float(a.radius)+a.offset,fl(0x3a83126f));const float normalized=minss(numerator/denominator,1);return font_text_power_3c8da8(1-normalized,a.exponent);}
}
float font_text_power_3c8da8(float x,float exponent){const auto bits=re::re_bit_cast<ReU64>(double(x));const auto delta=re::re_bit_cast<ReI32>(ReU32(bits>>32)-0x3fef127fu);const float scaled=float(delta)*exponent;const auto high=ReU32(cvtt(scaled+fl(0x4e7fbc4a)));return float(re::re_bit_cast<double>(ReU64(high)<<32));}
float font_text_cosine_3c899c(float x){float t=x*fl(0x3e22f983);t=x>=0?t+0.5f:t-0.5f;const float reduced=x-float(cvtt(t))*fl(0x40c90fdb);float z=reduced,sign=1;if(reduced>fl(0x3fc90fdb)){z=fl(0x40490fdb)-reduced;sign=-1;}else if(fl(0xbfc90fdb)>reduced){z=fl(0xc0490fdb)-reduced;sign=-1;}const float sq=z*z;float p=fl(0x37cfb4c2)-sq*fl(0x348bdd11);p=p*sq-fl(0x3ab609aa);p=p*sq+fl(0x3d2aaaa3);p=p*sq-0.5f;p=p*sq+1;return p*sign;}
void font_text_blur_3a45b4(re::ReVector<float>& image,ReI32 size){
    const auto n=square(size,0x3a45b4);if(image.size()!=n){ __builtin_trap(); }
    constexpr re::ReArray<ReU32,15> bits{0,0,0x3649539c,0x39701fb8,0x3bc3dab6,0x3d78359c,0x3e778812,0x3ec40ebf,0x3e778812,0x3d78359c,0x3bc3dab6,0x39701fb8,0x3649539c,0,0};
    re::ReVector<float> temp(n);auto pass=[&](const re::ReVector<float>& input,re::ReVector<float>& output,bool horizontal){for(ReI32 y=0;y<size;++y)for(ReI32 x=0;x<size;++x){float sum=0;for(ReI32 k=0;k<15;++k){auto q=(horizontal?x:y)-7+k;if(q>=0&&q<size){auto i=horizontal?ReUSize(y)*ReUSize(size)+ReUSize(q):ReUSize(q)*ReUSize(size)+ReUSize(x);const float product=fl(bits[ReUSize(k)])*input[i];sum=product+sum;}}output[ReUSize(y)*ReUSize(size)+ReUSize(x)]=sum;}};
    pass(image,temp,true);pass(temp,image,false);
}
void font_text_white_3a4f38(FontTextAtlas& a){const auto r=rect(a,a.white_rect,0x3a4f38);pixel(a,r.x+1,r.y+1,255,0x3a4f38);pixel(a,r.x,r.y+1,255,0x3a4f38);pixel(a,r.x+1,r.y,255,0x3a4f38);pixel(a,r.x,r.y,255,0x3a4f38);a.white_uv={(float(r.x)+0.5f)*a.uv_scale.x,(float(r.y)+0.5f)*a.uv_scale.y};}
void font_text_lines_3a5008(FontTextAtlas& a){if(a.flags&4)return;const auto r=rect(a,a.line_rect,0x3a5008);for(ReI32 n=0;n<64;++n){const auto left=(ReI32(r.width)-n)>>1;const auto right=ReI32(r.width)-left-n;if(left<0||right<0){ __builtin_trap(); }for(ReI32 x=0;x<left;++x)pixel(a,ReI32(r.x)+x,ReI32(r.y)+n,0,0x3a5008);for(ReI32 x=0;x<n;++x)pixel(a,ReI32(r.x)+left+x,ReI32(r.y)+n,255,0x3a5008);for(ReI32 x=0;x<right;++x)pixel(a,ReI32(r.x)+left+n+x,ReI32(r.y)+n,0,0x3a5008);
    const float y0=float(ReI32(r.y)+n)*a.uv_scale.y,y1=float(ReI32(r.y)+n+1)*a.uv_scale.y;const float mid=(y0+y1)*0.5f;a.lines[ReUSize(n)]={float(ReU32(ReI32(r.x)+left-1))*a.uv_scale.x,mid,float(ReU32(ReI32(r.x)+left+n+1))*a.uv_scale.x,mid};}}
void font_text_shapes_3a5204(FontTextAtlas& a){
    const auto r=a.radius,n=a.inner;const ReI64 wide=ReI64(n)+2*ReI64(r);if(wide<0||wide>4096||r<0||r>2048){ __builtin_trap(); }const auto size=ReI32(wide);re::ReVector<float> image(square(size,0x3a5204));
    auto rr=rect(a,a.round_rect,0x3a5204);rr.x=ReU16(rr.x+2);rr.y=ReU16(rr.y+2);rr.width=ReU16(rr.width-4);rr.height=ReU16(rr.height-4);
    for(ReI32 y=0;y<size;++y)for(ReI32 x=0;x<size;++x)image[ReUSize(y)*ReUSize(size)+ReUSize(x)]=alpha_value(box({float(x),float(y)},{float(r),float(r)},{float(n+r),float(n+r)}),a);
    if(a.blur)font_text_blur_3a45b4(image,size);
    const auto copy_size=ReI64(r)+n+2;if(copy_size>size){ __builtin_trap(); }
    for(ReI32 y=0;y<copy_size;++y)for(ReI32 x=0;x<copy_size;++x)pixel(a,ReI32(rr.x)+x,ReI32(rr.y)+y,ReU8(cvtt(image[ReUSize(y)*ReUSize(size)+ReUSize(x)]*255)),0x3a5204);
    // [C] Last column/row reuse first edge and reverse UV orientation, not a third texture slice.
    for(ReI32 i=0;i<9;++i){auto q=rr;auto col=i%3,row=i/3;if(col==1){q.x=ReU16(q.x+r);q.width=ReU16(n);}else q.width=ReU16(r);if(row==1){q.y=ReU16(q.y+r);q.height=ReU16(n);}else q.height=ReU16(r);auto uv=font_text_rect_uv_3a37c8(a,q);if(col==2)re::re_swap(uv[0],uv[2]);if(row==2)re::re_swap(uv[1],uv[3]);a.rounded[ReUSize(i)]=uv;}
    const auto circle_size=r*2;image.assign(square(circle_size,0x3a5204),0);const auto center=Vec2{float(circle_size)*0.5f,float(circle_size)*0.5f};
    for(ReI32 y=0;y<circle_size;++y)for(ReI32 x=0;x<circle_size;++x)image[ReUSize(y)*ReUSize(circle_size)+ReUSize(x)]=alpha_value(magnitude(Vec2{float(x),float(y)}-center,0),a);
    if(a.blur)font_text_blur_3a45b4(image,circle_size);
    const float scaled=float(r)/font_text_cosine_3c899c(fl(0x3f490fdb));const auto shift=cvtt(scaled)-r+8;const auto out=cvtt(16+scaled);if(out<0||out>4096||(out>0&&circle_size==0)){ __builtin_trap(); }
    auto cr=rect(a,a.circle_rect,0x3a5204);for(ReI32 y=0;y<out;++y)for(ReI32 x=0;x<out;++x){auto sy=re::re_clamp(y-shift,0,circle_size-1),sx=re::re_clamp(x-shift,0,circle_size-1);pixel(a,ReI32(cr.x)+x,ReI32(cr.y)+y,ReU8(cvtt(image[ReUSize(sy)*ReUSize(circle_size)+ReUSize(sx)]*255)),0x3a5204);}
    cr.x=ReU16(cr.x+8);cr.y=ReU16(cr.y+8);cr.width=cr.height=ReU16(out-16);a.circle=font_text_rect_uv_3a37c8(a,cr);
}
void font_text_finish_atlas_3a4b40(FontTextStore& s,Address key){auto it=s.atlases.find(key);if(!it){ __builtin_trap(); }auto& a=**it;font_text_white_3a4f38(a);font_text_lines_3a5008(a);font_text_shapes_3a5204(a);
    for(const auto& r:a.rectangles)if(r.font&&r.glyph_id){auto f=s.fonts.find(r.font);if(!f){ __builtin_trap(); }const auto uv=font_text_rect_uv_3a37c8(a,r);FontTextGlyph g;g.advance=r.advance;g.x0=r.offset.x;g.y0=r.offset.y;g.x1=float(r.width)+r.offset.x;g.y1=float(r.height)+r.offset.y;g.u0=uv[0];g.v0=uv[1];g.u1=uv[2];g.v1=uv[3];const auto atlas=s.atlases.find((**f).atlas);if(!atlas){g.packed=(ReU32(ReU16(r.glyph_id))<<2)|((g.x0!=g.x1&&g.y0!=g.y1)?2u:0u);(**f).glyphs.push_back(g);{ __builtin_trap(); }}font_text_add_glyph_39ff7c(**f,**atlas,ReU16(r.glyph_id),g);}
    for(auto id:a.fonts){auto f=s.fonts.find(id);if(!f){ __builtin_trap(); }if((**f).dirty)font_text_build_lookup_3a33c0(**f);}a.ready=true;
}
// [C] 0x3a461c..0x3a470c: single-pass separable 15-tap Gaussian blur convolution.
// Native body applies the same kernel as font_text_blur_3a45b4 along one axis.
// When horizontal=true, convolves along rows; otherwise along columns.
void font_text_blur_pass_3a461c(const float* input, float* output, ReI32 size, bool horizontal) {
    constexpr re::ReArray<ReU32,15> bits{0,0,0x3649539c,0x39701fb8,0x3bc3dab6,0x3d78359c,
        0x3e778812,0x3ec40ebf,0x3e778812,0x3d78359c,0x3bc3dab6,0x39701fb8,0x3649539c,0,0};
    if (size <= 0) return;
    for (ReI32 y = 0; y < size; ++y) {
        for (ReI32 x = 0; x < size; ++x) {
            float sum = 0;
            for (ReI32 k = 0; k < 15; ++k) {
                auto q = (horizontal ? x : y) - 7 + k;
                if (q >= 0 && q < size) {
                    auto i = horizontal
                        ? ReUSize(y) * ReUSize(size) + ReUSize(q)
                        : ReUSize(q) * ReUSize(size) + ReUSize(x);
                    const float weight = fl(bits[ReUSize(k)]);
                    sum = weight * input[i] + sum;
                }
            }
            output[ReUSize(y) * ReUSize(size) + ReUSize(x)] = sum;
        }
    }
}
// [C] 0x3a43d0..0x3a44d3: signed distance from point to axis-aligned box.
// Computes the standard SDF box formula used by font_text_shapes_3a5204 for rounded
// rectangle generation. Calls fabs, maxss, magnitude, and minss helpers.
float font_text_box_distance_3a43d0(Vec2 p, Vec2 minimum, Vec2 maximum) {
    const auto center = (minimum + maximum) * 0.5f;
    const auto half = (maximum - minimum) * 0.5f;
    const auto d = Vec2{float(re::re_fabs(p.x - center.x)) - half.x,
                        float(re::re_fabs(p.y - center.y)) - half.y};
    return magnitude({maxss(d.x, 0), maxss(d.y, 0)}, fl(0x3727c5ac))
         + minss(maxss(d.x, d.y), 0);
}
// [C] 0x3a43ac..0x3a43d0: Euclidean distance between two Vec2 points.
// Tail-calls draw_shadows_safe_length_3a6554 (magnitude) with zero fallback.
float font_text_point_distance_3a43ac(Vec2 a, Vec2 b) {
    const auto d = Vec2{a.x - b.x, a.y - b.y};
    return magnitude(d, 0.0f);
}
// [C] 0x3a473c..0x3a4745: rectangle count accessor for FontTextAtlas.
// Native body adds 0x68 to the atlas pointer (rectangles vector) and tail-calls
// the vector size function.
ReI32 font_text_rectangle_count_3a473c(const FontTextAtlas& atlas) {
    return ReI32(atlas.rectangles.size());
}
// [C] 0x3a658c..0x3a6591: thunk that tail-calls font_text_power_3c8da8.
float font_text_power_thunk_3a658c(float x, float exponent) {
    return font_text_power_3c8da8(x, exponent);
}
} // namespace rust_internal_re
