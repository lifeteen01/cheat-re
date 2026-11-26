#include "font_text_analysis.hpp"
namespace rust_internal_re {
namespace {
template<class T>T get(const Snapshot& s,Address a,Rva site){auto x=s.read<T>(a);if(!x){ __builtin_trap(); }return *x;}
template<class T>void put(Snapshot& s,Address a,T x,Rva site){if(!s.write(a,x)){ __builtin_trap(); }}
Address window(Snapshot& s,Address module){const auto ctx=get<Address>(s,module+0x405b28,0x35d200);auto p=get<Address>(s,ctx+0x3f08,0x35d200);put(s,p+0xb8,ReU8(1),0x35d200);return get<Address>(s,ctx+0x3f08,0x35d200);}
FontTextFont& font(FontTextStore& store,Address a,Rva site){auto i=store.fonts.find(a);if(!i){ __builtin_trap(); }return **i;}
re::ReString cstring(const Snapshot& s,Address object){const auto capacity=get<ReU64>(s,object+0x18,0x2cd464);const auto chars=capacity>15?get<Address>(s,object,0x2cd4f6):object;re::ReString out;for(ReUSize i=0;i<1048576;++i){const auto ch=get<ReU8>(s,chars+i,0x3ca904);if(!ch)return out;out.push_back(char(ch));}{ __builtin_trap(); }}
constexpr re::ReArray<ReI32,6> sizes{13,16,18,20,22,24};
float override_size(float size,ReI32 family){if(family==2)size=11;if(family==0)size=10;if(family==3)size=16;return size;}
void passes(Snapshot& s,Address module,Address win,Address selected,float size,Vec2 p,bool reload_font,FontTextStore& fonts,FontTextSink& sink,const FontTextControllerRequest& q){constexpr re::ReArray<Vec2,9> offsets{{{-1,0},{1,0},{0,-1},{0,1},{-1,-1},{1,-1},{-1,1},{1,1},{0,0}}};for(ReUSize i=0;i<offsets.size();++i){const auto draw=get<Address>(s,win+0x298,0x361824);const auto text=cstring(s,q.text);if(reload_font)selected=get<Address>(s,module+0x3fc180,0x361860);FontTextRequest request;request.draw_list=draw;request.font=selected;request.size=size;request.position=p+offsets[i];request.color=i==8?(q.color_address?font_text_color_2ef80c(get<re::ReArray<float,4>>(s,*q.color_address,0x2ef80c)):q.color):0xff000000;request.bytes=text;font_text_draw_3a31f8(fonts,sink,request);}}
}
Address font_text_worker_35d31c(Snapshot& s,Address module,const re::ReFunction<Address(ReUSize)>& reserve_owned) {
    auto worker=get<Address>(s,module+0x3fc058,0x35d320);
    if(!worker) {
        if(!reserve_owned){ __builtin_trap(); }
        worker=reserve_owned(32);
        // [C] Nonzero constructor2cb3a4 is identity; no worker byte is initialized.
        // [C] The returned value, including zero, is then stored unconditionally.
        put(s,module+0x3fc058,worker,0x35d341);
    }
    return worker;
}
re::ReArray<Address,4> copy_font_text_worker_35d31c(const Snapshot& s,Address module){const auto p=get<Address>(s,module+0x3fc058,0x35d320);if(!p){ __builtin_trap(); }return get<re::ReArray<Address,4>>(s,p,0x35d31c);}
ReU32 font_text_color_2ef80c(re::ReArray<float,4> input){auto cvtt=[](float x){if(!re::re_isfinite(x)||x>=2147483648.0f||x<-2147483648.0f)return INT32_MIN;return ReI32(x);};auto channel=[&](float x){const float bounded=0>x?0:(1<x?1:x);return ReU32(cvtt(bounded*255+0.5f));};ReU32 packed=channel(input[3]);packed=(packed<<8)|channel(input[2]);packed=(packed<<8)|channel(input[1]);return (packed<<8)|channel(input[0]);}
Address font_text_select_35d220(FrameMenuState& state,ReI32 family,ReI32 size){if(family==1){const auto requested=re::re_find(sizes.begin(),sizes.end(),size)==sizes.end()?16:size;auto& bucket=state.font_buckets[1];auto f=bucket.fonts.find(float(requested));if(bool(f))return **f;if(re::re_find(bucket.requested.begin(),bucket.requested.end(),float(requested))==bucket.requested.end())bucket.requested.push_back(float(requested));return 0;}if(family==0)return state.fonts[1];if(family==2)return state.fonts[0];if(family==3)return state.fonts[3];return state.fonts[2];}
void font_text_centered_36135c(Snapshot& s,Address module,FrameMenuState& state,FontTextStore& fonts,FontTextSink& sink,const FontTextControllerRequest& q){const auto win=window(s,module);float size=0;if(q.kind>=0&&q.kind<=3){const auto index_rva=q.kind==0?0x3fcd78u:q.kind==1?0x3ee7e8u:q.kind==2?0x3fce18u:0x3fcdc8u;const auto index=get<ReI32>(s,module+index_rva,0x3613aa);
    if(index>=0&&index<6){auto family=get<ReI32>(s,module+(q.kind==3?0x3fcf58u:0x3eed38u),0x3613bf);const auto selected=font_text_select_35d220(state,family,sizes[ReUSize(index)]);put(s,module+0x3fc180,selected,0x361461);size=float(sizes[ReUSize(index)]);}
    size=override_size(size,get<ReI32>(s,module+0x3eed38,0x361468));const auto destination=q.kind==0?0x248ed0u:q.kind==1?0x248ed8u:q.kind==2?0x248ed4u:0x3fa7c0u;put(s,module+destination,size,0x36148f);}
    const auto text=cstring(s,q.text);const auto selected=get<Address>(s,module+0x3fc180,0x3617b2);const auto measured=renderer_measure_3a3874(font(fonts,selected,0x3617d2).measure,{size,re::ReNumericLimits<float>::max(),0,text,{}});const auto p=get<Vec2>(s,q.position,0x3617e8)-measured.size*0.5f;passes(s,module,win,selected,size,p,true,fonts,sink,q);
}
void font_text_plain_361bcc(Snapshot& s,Address module,FrameMenuState& state,FontTextStore& fonts,FontTextSink& sink,const FontTextControllerRequest& q){const auto win=window(s,module);const auto index=get<ReI32>(s,module+0x3fcd78,0x361c04);Address selected;float size=0;const auto family=get<ReI32>(s,module+0x3eed38,0x361c18);if(index>=0&&index<6){selected=font_text_select_35d220(state,family,sizes[ReUSize(index)]);size=float(sizes[ReUSize(index)]);}else selected=get<Address>(s,q.initial_font_record+0x10,0x361ce5);size=override_size(size,family);if(q.kind==4){selected=state.fonts[1];size=10;}put(s,module+0x248ed0,size,0x361d30);const auto text=cstring(s,q.text);(void)renderer_measure_3a3874(font(fonts,selected,0x361d65).measure,{size,re::ReNumericLimits<float>::max(),0,text,{}});const auto p=get<Vec2>(s,q.position,0x361d6a);passes(s,module,win,selected,size,p,false,fonts,sink,q);
}
re::ReSpan<const RendererCoverage> font_text_coverage(){static constexpr re::ReArray<RendererCoverage,10> ranges{{{0x36135c,0x361bca,"[C/I] font selection/centering/nine concrete raster passes"},{0x361bcc,0x362116,"[C/I] font selection/nine concrete raster passes"},{0x3a31f8,0x3a3335,"[C/I] text defaults/clip/raster dispatch"},{0x3a33c0,0x3a36df,"[C/I] lookup/tab/ellipsis/fallback construction"},{0x3a37c8,0x3a3856,"[C/I] custom rectangle UV"},{0x3a4b40,0x3a4caf,"[C/I] atlas finalization/custom glyphs/lookup rebuild"},{0x3a4f38,0x3a5008,"[C/I] white pixels/UV"},{0x3a5008,0x3a5202,"[C/I] line pixels/UV"},{0x3a5204,0x3a594f,"[C/I] shape pixels/UV/literal math/blur"},{0x3a792c,0x3a7f71,"[C/I] glyph geometry/clipping/UTF8/wrap/outer reserve"}}};return ranges;}
} // namespace rust_internal_re
