#include "font_text_analysis.hpp"
namespace rust_internal_re {
namespace {
template<class T>T get(const Snapshot& s,Address a,Rva site){auto v=s.read<T>(a);if(!v){ __builtin_trap(); }return *v;}
ReUSize count(const Snapshot& s,Address a,ReUSize max,Rva site){auto n=get<ReI32>(s,a,site);if(n<0||ReUSize(n)>max){ __builtin_trap(); }return ReUSize(n);}
re::ReOptional<ReUSize> index(const FontTextFont& f,ReU16 cp){if(cp>=f.lookup.size()||f.lookup[cp]==0xffff)return {};auto n=f.lookup[cp];if(n>=f.glyphs.size()){ __builtin_trap(); }return n;}
ReU16 first(const FontTextFont& f,std::initializer_list<ReU16> cps){for(auto cp:cps)if(index(f,cp))return cp;return 0xffff;}
ReI32 cvtt(float x){if(!re::re_isfinite(x)||x>=2147483648.0f||x<-2147483648.0f)return INT32_MIN;return ReI32(x);}
}
FontTextFont copy_font_text_font(const Snapshot& s,Address p,ReUSize max){
    FontTextFont f;f.measure=read_renderer_font(s,p,max);auto n=count(s,p+0x18,max,0x3a4554);auto data=get<Address>(s,p+0x20,0x3a4554);
    for(ReUSize i=0;i<n;++i)f.lookup.push_back(get<ReU16>(s,data+i*2,0x3a4554));
    n=count(s,p+0x28,max,0x3a33c0);data=get<Address>(s,p+0x30,0x3a33c0);
    for(ReUSize i=0;i<n;++i)f.glyphs.push_back(get<FontTextGlyph>(s,data+i*40,0x3a33c0));
    auto fallback=get<Address>(s,p+0x38,0x3a4520);if(fallback){if(fallback<data||(fallback-data)%40||(fallback-data)/40>=n){ __builtin_trap(); }f.fallback=ReUSize((fallback-data)/40);}
    f.atlas=get<Address>(s,p+0x40,0x39ff7c);f.fallback_character=get<ReU16>(s,p+0x52,0x3a33c0);f.ellipsis_character=get<ReU16>(s,p+0x54,0x3a33c0);f.ellipsis_count=get<ReU16>(s,p+0x56,0x3a33c0);f.ellipsis_width=get<float>(s,p+0x58,0x3a33c0);f.ellipsis_step=get<float>(s,p+0x5c,0x3a33c0);f.dirty=get<ReU8>(s,p+0x60,0x3a4b40)!=0;f.surface=get<ReU32>(s,p+0x70,0x39ff7c);f.used_pages=get<ReU16>(s,p+0x74,0x3a33c0);return f;
}
FontTextAtlas copy_font_text_atlas(const Snapshot& s,Address p,ReUSize max){
    FontTextAtlas a;a.flags=get<ReU32>(s,p,0x3a5008);a.glyph_padding=get<ReI32>(s,p+0x14,0x39ff7c);a.ready=get<ReU8>(s,p+0x28,0x3a4b40)!=0;a.width=get<ReI32>(s,p+0x40,0x3a5008);a.height=get<ReI32>(s,p+0x44,0x3a5008);
    if(a.width<0||a.height<0||ReU64(a.width)*ReU64(a.height)>max){ __builtin_trap(); }
    const auto pixels=ReUSize(a.width)*ReUSize(a.height);auto alpha=get<Address>(s,p+0x30,0x3a4f38),rgba=get<Address>(s,p+0x38,0x3a4f38);
    if(alpha){a.alpha.emplace();a.alpha->reserve(pixels);for(ReUSize i=0;i<pixels;++i)a.alpha->push_back(get<ReU8>(s,alpha+i,0x3a4f38));}
    if(rgba){a.rgba.emplace();a.rgba->reserve(pixels);for(ReUSize i=0;i<pixels;++i)a.rgba->push_back(get<ReU32>(s,rgba+i*4,0x3a4f38));}
    a.uv_scale=get<Vec2>(s,p+0x48,0x3a37c8);a.white_uv=get<Vec2>(s,p+0x50,0x3a4f38);
    auto n=count(s,p+0x58,1000000,0x3a4b40);auto d=get<Address>(s,p+0x60,0x3a4b40);for(ReUSize i=0;i<n;++i)a.fonts.push_back(get<Address>(s,d+i*8,0x3a4b40));
    n=count(s,p+0x68,1000000,0x3a4b40);d=get<Address>(s,p+0x70,0x3a4b40);for(ReUSize i=0;i<n;++i)a.rectangles.push_back(get<FontTextRect>(s,d+i*32,0x3a4b40));
    a.lines=get<decltype(a.lines)>(s,p+0x88,0x3a5008);a.white_rect=get<ReI32>(s,p+0x494,0x3a4f38);a.line_rect=get<ReI32>(s,p+0x498,0x3a5008);a.round_rect=get<ReI32>(s,p+0x49c,0x3a5204);a.circle_rect=get<ReI32>(s,p+0x4a0,0x3a5204);a.rounded=get<decltype(a.rounded)>(s,p+0x4a4,0x3a5204);a.circle=get<decltype(a.circle)>(s,p+0x534,0x3a5204);a.radius=get<ReI32>(s,p+0x544,0x3a5204);a.inner=get<ReI32>(s,p+0x548,0x3a5204);a.exponent=get<float>(s,p+0x54c,0x3a5204);a.offset=get<float>(s,p+0x550,0x3a5204);a.blur=get<ReU8>(s,p+0x554,0x3a5204)!=0;return a;
}
const FontTextGlyph* font_text_find_3a4554(const FontTextFont& f,ReU16 cp){auto i=index(f,cp);return i?&f.glyphs[*i]:nullptr;}
const FontTextGlyph* font_text_find_3a4520(const FontTextFont& f,ReU16 cp){if(auto p=font_text_find_3a4554(f,cp))return p;if(!f.fallback)return nullptr;if(*f.fallback>=f.glyphs.size()){ __builtin_trap(); }return &f.glyphs[*f.fallback];}
void font_text_build_lookup_3a33c0(FontTextFont& f){
    ReU32 maximum=0;for(auto& g:f.glyphs)maximum=re::re_max(maximum,g.codepoint());
    f.measure.advances.clear();f.lookup.clear();f.dirty=false;f.used_pages=0;
    if(maximum>=65536){ __builtin_trap(); }
    f.measure.advances.resize(maximum+1,-1);f.lookup.resize(maximum+1,0xffff);
    for(ReUSize i=0;i<f.glyphs.size();++i){auto& g=f.glyphs[i];f.measure.advances[g.codepoint()]=g.advance;f.lookup[g.codepoint()]=ReU16(i);f.used_pages|=ReU16(1u<<(g.codepoint()/4096));}
    if(font_text_find_3a4520(f,32)){
        if(f.glyphs.empty())__builtin_trap();
        if(f.glyphs.back().codepoint()!=9)f.glyphs.emplace_back();
        // [C] Source is resolved again after potential vector growth.
        const auto* p=font_text_find_3a4520(f,32);if(!p){ __builtin_trap(); }const auto copy=*p;
        auto& tab=f.glyphs.back();tab=copy;tab.packed=(tab.packed&3)|36;tab.advance*=4;
        if(f.lookup.size()<=9){ __builtin_trap(); }
        f.measure.advances[9]=tab.advance;f.lookup[9]=ReU16(f.glyphs.size()-1);
    }
    for(auto cp:{ReU16(32),ReU16(9)})if(auto p=font_text_find_3a4520(f,cp))f.glyphs[ReUSize(p-f.glyphs.data())].packed&=~2u;
    if(f.ellipsis_character==0xffff)f.ellipsis_character=first(f,{0x2026,0x85});
    const auto dot=first(f,{0x2e,0xff0e});
    if(f.ellipsis_character!=0xffff){f.ellipsis_width=f.ellipsis_step;f.ellipsis_count=1;}
    else if(dot!=0xffff){auto* g=font_text_find_3a4520(f,dot);f.ellipsis_character=dot;f.ellipsis_count=3;f.ellipsis_step=(g->x1-g->x0)+1;f.ellipsis_width=f.ellipsis_step*3-1;}
    f.fallback=index(f,f.fallback_character);
    if(!f.fallback){f.fallback_character=first(f,{0xfffd,0x3f,32});f.fallback=index(f,f.fallback_character);if(!f.fallback){if(f.glyphs.empty())__builtin_trap();f.fallback=f.glyphs.size()-1;f.fallback_character=ReU16(f.glyphs.back().codepoint());}}
    f.measure.fallback=f.glyphs[*f.fallback].advance;for(auto& x:f.measure.advances)if(x<0)x=f.measure.fallback;
}
void font_text_add_glyph_39ff7c(FontTextFont& f,const FontTextAtlas& a,ReU16 cp,FontTextGlyph g,re::ReOptional<FontTextGlyphConfig> cfg){
    if(cfg){const auto& c=*cfg;float advance=c.minimum_advance>g.advance?c.minimum_advance:(c.maximum_advance<g.advance?c.maximum_advance:g.advance);
        if(advance!=g.advance){float delta=(advance-g.advance)*0.5f;if(c.pixel_snap)delta=float(cvtt(delta));g.x0+=delta;g.x1+=delta;}
        if(c.pixel_snap)advance=float(cvtt(advance+0.5f));
        g.advance=advance+c.extra_spacing;
    }
    g.packed=(ReU32(cp)<<2)|((g.x0!=g.x1&&g.y0!=g.y1)?2u:0u);f.glyphs.push_back(g);f.dirty=true;
    const float padding=float(a.glyph_padding)+0.9900000095367431640625f;
    const auto rows=ReU32(cvtt((g.v1-g.v0)*float(a.height)+padding));const auto columns=ReU32(cvtt((g.u1-g.u0)*float(a.width)+padding));f.surface+=rows*columns;
}
re::ReArray<float,4> font_text_rect_uv_3a37c8(const FontTextAtlas& a,const FontTextRect& r){return {float(r.x)*a.uv_scale.x,float(r.y)*a.uv_scale.y,float(ReU32(r.x)+r.width)*a.uv_scale.x,float(ReU32(r.y)+r.height)*a.uv_scale.y};}
// [C] 0x3a44d4..0x3a451f: search an array of codepoints for the first one present in the
// font's glyph table (via font_text_find_3a4554). Returns the codepoint value on match,
// or 0xffff if none found. Native analogue of the local first() helper.
ReU16 font_text_first_codepoint_3a44d4(const FontTextFont& f, const ReU16* codepoints, ReI32 count) {
    for (ReI32 i = 0; i < count; ++i) {
        if (font_text_find_3a4554(f, codepoints[i]))
            return codepoints[i];
    }
    return 0xffff;
}
// [C] 0x3a4abc..0x3a4b06: ensure font advances (float, default -1.0) and lookup
// (u16, default 0xffff) vectors can accommodate at least new_size codepoints.
// Native body checks the lookup vector count at font+0x18 and resizes both
// vectors via two separate vector-resize helpers.
void font_text_ensure_lookup_3a4abc(FontTextFont& font, ReI32 new_size) {
    if (new_size <= ReI32(font.lookup.size())) return;
    const auto n = ReUSize(new_size);
    font.measure.advances.resize(n, -1.0f);
    font.lookup.resize(n, 0xffff);
}
// [C] 0x3a8160..0x3a8183: set or clear the visibility flag (bit 1 of packed field)
// for the glyph identified by codepoint. Uses font_text_find_3a4520 to resolve through
// fallback if needed. No-op when the glyph is not found.
void font_text_set_visible_3a8160(FontTextFont& font, ReU16 codepoint, bool visible) {
    auto* g = const_cast<FontTextGlyph*>(font_text_find_3a4520(font, codepoint));
    if (!g) return;
    g->packed = (g->packed & ~2u) | (ReU32(visible) << 1);
}
} // namespace rust_internal_re
