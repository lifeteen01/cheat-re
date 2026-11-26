#include "font_text_analysis.hpp"
namespace rust_internal_re {
namespace {
float fl(std::uint32_t x){return std::bit_cast<float>(x);}
float maxss(float a,float b){return a>b?a:b;}float minss(float a,float b){return a<b?a:b;}
std::int32_t cvtt(float x){if(!std::isfinite(x)||x>=2147483648.0f||x<-2147483648.0f)return INT32_MIN;return std::int32_t(x);}
FontTextRect rect(const FontTextAtlas& a,std::int32_t n,Rva site){if(n<0||std::size_t(n)>=a.rectangles.size())throw RendererMissing(site,0,"atlas rectangle index outside owned vector");return a.rectangles[std::size_t(n)];}
void pixel(FontTextAtlas& a,std::int64_t x,std::int64_t y,std::uint8_t alpha,Rva site){
    // [I] Native row addressing is linear; do not invent per-row x clipping.
    const auto i=y*a.width+x;if(i<0)throw RendererMissing(site,0,"negative copied atlas pixel address");
    if(a.alpha){if(std::uint64_t(i)>=a.alpha->size())throw RendererMissing(site,0,"alpha atlas pixel outside copied allocation");(*a.alpha)[std::size_t(i)]=alpha;}
    else {if(!a.rgba||std::uint64_t(i)>=a.rgba->size())throw RendererMissing(site,0,"RGBA atlas allocation missing/outside copy");(*a.rgba)[std::size_t(i)]=(std::uint32_t(alpha)<<24)|0xffffff;}
}
std::size_t square(std::int32_t size,Rva site){if(size<0||size>4096)throw RendererMissing(site,0,"native temporary image exceeds owned analysis bound");return std::size_t(size)*std::size_t(size);}
float magnitude(Vec2 v,float fallback){const float sq=v.x*v.x+v.y*v.y;return sq>0?sample_sqrt_2e3c88(sq):fallback;}
float box(Vec2 p,Vec2 minimum,Vec2 maximum){const auto center=(minimum+maximum)*0.5f;const auto half=(maximum-minimum)*0.5f;const auto d=Vec2{std::fabs(p.x-center.x)-half.x,std::fabs(p.y-center.y)-half.y};return magnitude({maxss(d.x,0),maxss(d.y,0)},fl(0x3727c5ac))+minss(maxss(d.x,d.y),0);}
float alpha_value(float distance,const FontTextAtlas& a){const float numerator=maxss(distance+a.offset,0);const float denominator=maxss(float(a.radius)+a.offset,fl(0x3a83126f));const float normalized=minss(numerator/denominator,1);return font_text_power_3c8da8(1-normalized,a.exponent);}
}
float font_text_power_3c8da8(float x,float exponent){const auto bits=std::bit_cast<std::uint64_t>(double(x));const auto delta=std::bit_cast<std::int32_t>(std::uint32_t(bits>>32)-0x3fef127fu);const float scaled=float(delta)*exponent;const auto high=std::uint32_t(cvtt(scaled+fl(0x4e7fbc4a)));return float(std::bit_cast<double>(std::uint64_t(high)<<32));}
float font_text_cosine_3c899c(float x){float t=x*fl(0x3e22f983);t=x>=0?t+0.5f:t-0.5f;const float reduced=x-float(cvtt(t))*fl(0x40c90fdb);float z=reduced,sign=1;if(reduced>fl(0x3fc90fdb)){z=fl(0x40490fdb)-reduced;sign=-1;}else if(fl(0xbfc90fdb)>reduced){z=fl(0xc0490fdb)-reduced;sign=-1;}const float sq=z*z;float p=fl(0x37cfb4c2)-sq*fl(0x348bdd11);p=p*sq-fl(0x3ab609aa);p=p*sq+fl(0x3d2aaaa3);p=p*sq-0.5f;p=p*sq+1;return p*sign;}
void font_text_blur_3a45b4(std::vector<float>& image,std::int32_t size){
    const auto n=square(size,0x3a45b4);if(image.size()!=n)throw RendererMissing(0x3a45b4,0,"blur temporary image dimensions differ");
    constexpr std::array<std::uint32_t,15> bits{0,0,0x3649539c,0x39701fb8,0x3bc3dab6,0x3d78359c,0x3e778812,0x3ec40ebf,0x3e778812,0x3d78359c,0x3bc3dab6,0x39701fb8,0x3649539c,0,0};
    std::vector<float> temp(n);auto pass=[&](const std::vector<float>& input,std::vector<float>& output,bool horizontal){for(std::int32_t y=0;y<size;++y)for(std::int32_t x=0;x<size;++x){float sum=0;for(std::int32_t k=0;k<15;++k){auto q=(horizontal?x:y)-7+k;if(q>=0&&q<size){auto i=horizontal?std::size_t(y)*std::size_t(size)+std::size_t(q):std::size_t(q)*std::size_t(size)+std::size_t(x);const float product=fl(bits[std::size_t(k)])*input[i];sum=product+sum;}}output[std::size_t(y)*std::size_t(size)+std::size_t(x)]=sum;}};
    pass(image,temp,true);pass(temp,image,false);
}
void font_text_white_3a4f38(FontTextAtlas& a){const auto r=rect(a,a.white_rect,0x3a4f38);pixel(a,r.x+1,r.y+1,255,0x3a4f38);pixel(a,r.x,r.y+1,255,0x3a4f38);pixel(a,r.x+1,r.y,255,0x3a4f38);pixel(a,r.x,r.y,255,0x3a4f38);a.white_uv={(float(r.x)+0.5f)*a.uv_scale.x,(float(r.y)+0.5f)*a.uv_scale.y};}
void font_text_lines_3a5008(FontTextAtlas& a){if(a.flags&4)return;const auto r=rect(a,a.line_rect,0x3a5008);for(std::int32_t n=0;n<64;++n){const auto left=(std::int32_t(r.width)-n)>>1;const auto right=std::int32_t(r.width)-left-n;if(left<0||right<0)throw RendererMissing(0x3a5008,0,"native negative memset extent exceeds copied atlas allocation");for(std::int32_t x=0;x<left;++x)pixel(a,std::int32_t(r.x)+x,std::int32_t(r.y)+n,0,0x3a5008);for(std::int32_t x=0;x<n;++x)pixel(a,std::int32_t(r.x)+left+x,std::int32_t(r.y)+n,255,0x3a5008);for(std::int32_t x=0;x<right;++x)pixel(a,std::int32_t(r.x)+left+n+x,std::int32_t(r.y)+n,0,0x3a5008);
    const float y0=float(std::int32_t(r.y)+n)*a.uv_scale.y,y1=float(std::int32_t(r.y)+n+1)*a.uv_scale.y;const float mid=(y0+y1)*0.5f;a.lines[std::size_t(n)]={float(std::uint32_t(std::int32_t(r.x)+left-1))*a.uv_scale.x,mid,float(std::uint32_t(std::int32_t(r.x)+left+n+1))*a.uv_scale.x,mid};}}
void font_text_shapes_3a5204(FontTextAtlas& a){
    const auto r=a.radius,n=a.inner;const std::int64_t wide=std::int64_t(n)+2*std::int64_t(r);if(wide<0||wide>4096||r<0||r>2048)throw RendererMissing(0x3a5204,0,"native shape dimensions exceed copied analysis bound");const auto size=std::int32_t(wide);std::vector<float> image(square(size,0x3a5204));
    auto rr=rect(a,a.round_rect,0x3a5204);rr.x=std::uint16_t(rr.x+2);rr.y=std::uint16_t(rr.y+2);rr.width=std::uint16_t(rr.width-4);rr.height=std::uint16_t(rr.height-4);
    for(std::int32_t y=0;y<size;++y)for(std::int32_t x=0;x<size;++x)image[std::size_t(y)*std::size_t(size)+std::size_t(x)]=alpha_value(box({float(x),float(y)},{float(r),float(r)},{float(n+r),float(n+r)}),a);
    if(a.blur)font_text_blur_3a45b4(image,size);
    const auto copy_size=std::int64_t(r)+n+2;if(copy_size>size)throw RendererMissing(0x3a5455,0,"rounded copy reads outside native temporary image");
    for(std::int32_t y=0;y<copy_size;++y)for(std::int32_t x=0;x<copy_size;++x)pixel(a,std::int32_t(rr.x)+x,std::int32_t(rr.y)+y,std::uint8_t(cvtt(image[std::size_t(y)*std::size_t(size)+std::size_t(x)]*255)),0x3a5204);
    // [C] Last column/row reuse first edge and reverse UV orientation, not a third texture slice.
    for(std::int32_t i=0;i<9;++i){auto q=rr;auto col=i%3,row=i/3;if(col==1){q.x=std::uint16_t(q.x+r);q.width=std::uint16_t(n);}else q.width=std::uint16_t(r);if(row==1){q.y=std::uint16_t(q.y+r);q.height=std::uint16_t(n);}else q.height=std::uint16_t(r);auto uv=font_text_rect_uv_3a37c8(a,q);if(row==2)std::swap(uv[1],uv[3]);a.rounded[std::size_t(i)]=uv;}
    const auto circle_size=r*2;image.assign(square(circle_size,0x3a5204),0);const auto center=Vec2{float(circle_size)*0.5f,float(circle_size)*0.5f};
    for(std::int32_t y=0;y<circle_size;++y)for(std::int32_t x=0;x<circle_size;++x)image[std::size_t(y)*std::size_t(circle_size)+std::size_t(x)]=alpha_value(magnitude(Vec2{float(x),float(y)}-center,0),a);
    if(a.blur)font_text_blur_3a45b4(image,circle_size);
    const float scaled=float(r)/font_text_cosine_3c899c(fl(0x3f490fdb));const auto shift=cvtt(scaled)-r+8;const auto out=cvtt(16+scaled);if(out<0||out>4096||(out>0&&circle_size==0))throw RendererMissing(0x3a57a2,0,"native circle sample/extent outside owned temporary image");
    auto cr=rect(a,a.circle_rect,0x3a5204);for(std::int32_t y=0;y<out;++y)for(std::int32_t x=0;x<out;++x){auto sy=std::clamp(y-shift,0,circle_size-1),sx=std::clamp(x-shift,0,circle_size-1);pixel(a,std::int32_t(cr.x)+x,std::int32_t(cr.y)+y,std::uint8_t(cvtt(image[std::size_t(sy)*std::size_t(circle_size)+std::size_t(sx)]*255)),0x3a5204);}
    cr.x=std::uint16_t(cr.x+8);cr.y=std::uint16_t(cr.y+8);cr.width=cr.height=std::uint16_t(out-16);a.circle=font_text_rect_uv_3a37c8(a,cr);
}
void font_text_finish_atlas_3a4b40(FontTextStore& s,Address key){auto it=s.atlases.find(key);if(it==s.atlases.end())throw RendererMissing(0x3a4b40,0,"owned atlas missing");auto& a=it->second;font_text_white_3a4f38(a);font_text_lines_3a5008(a);font_text_shapes_3a5204(a);
    for(const auto& r:a.rectangles)if(r.font&&r.glyph_id){auto f=s.fonts.find(r.font);if(f==s.fonts.end())throw RendererMissing(0x3a4c56,0x39ff7c,"custom rectangle owned font missing");const auto uv=font_text_rect_uv_3a37c8(a,r);FontTextGlyph g;g.advance=r.advance;g.x0=r.offset.x;g.y0=r.offset.y;g.x1=float(r.width)+r.offset.x;g.y1=float(r.height)+r.offset.y;g.u0=uv[0];g.v0=uv[1];g.u1=uv[2];g.v1=uv[3];const auto atlas=s.atlases.find(f->second.atlas);if(atlas==s.atlases.end()){g.packed=(std::uint32_t(std::uint16_t(r.glyph_id))<<2)|((g.x0!=g.x1&&g.y0!=g.y1)?2u:0u);f->second.glyphs.push_back(g);f->second.dirty=true;throw RendererMissing(0x39ff7c,0,"glyph font's atlas missing after glyph append/dirty stores");}font_text_add_glyph_39ff7c(f->second,atlas->second,std::uint16_t(r.glyph_id),g);}
    for(auto id:a.fonts){auto f=s.fonts.find(id);if(f==s.fonts.end())throw RendererMissing(0x3a4c7a,0,"atlas font missing");if(f->second.dirty)font_text_build_lookup_3a33c0(f->second);}a.ready=true;
}
} // namespace rust_internal_re
