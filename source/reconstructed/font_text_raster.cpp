#include "font_text_analysis.hpp"
namespace rust_internal_re {
namespace {
ReI32 cvtt(float x){if(!re::re_isfinite(x)||x>=2147483648.0f||x<-2147483648.0f)return INT32_MIN;return ReI32(x);}
float maxss(float a,float b){return a>b?a:b;}float minss(float a,float b){return a<b?a:b;}
ReUSize end(const FontTextRequest& q){if(q.end){if(*q.end>q.bytes.size()){ __builtin_trap(); }return *q.end;}const auto n=q.bytes.find('\0');return n==re::ReStringView::npos?q.bytes.size():n;}
template<class F>void require(const F& f,Rva site,Rva target){if(!f){ __builtin_trap(); }}
DrawVertex vertex(float x,float y,float u,float v,ReU32 color){DrawVertex out;const re::ReArray<float,4> fields{x,y,u,v};re::re_memcpy(out.data(),fields.data(),16);re::re_memcpy(out.data()+16,&color,4);return out;}
DrawCoreList& list(DrawCoreStore& s,Address a){auto it=s.lists.find(a);if(!it){ __builtin_trap(); }return **it;}
}
FontTextSink bind_font_text_draw_core(DrawCoreStore& s,const re::ReMap<Address,FontTextShared>& shared){FontTextSink b;b.clip=[&s](Address a){return list(s,a).header.clip;};b.shared=[&shared](Address a){auto it=shared.find(a);if(!it){ __builtin_trap(); }return **it;};b.reserve=[&s](Address a,ReI32 i,ReI32 v){draw_core_reserve_3a719c(list(s,a),i,v);};b.write=[&s](Address a,re::ReSpan<const DrawVertex> v,re::ReSpan<const ReU16> i){draw_core_write_relative(list(s,a),v,i);};b.unreserve=[&s](Address a,ReI32 i,ReI32 v){draw_core_unreserve(list(s,a),i,v);};return b;}
void font_text_raster_3a792c(const FontTextFont& font,FontTextSink& sink,const FontTextRequest& q,re::ReArray<float,4> clip,bool fine){
    auto stop=end(q);ReUSize current=0;float y=float(cvtt(q.position.y));if(y>clip[3])return;const float scale=q.size/font.measure.nominal,line_height=font.measure.nominal*scale;const bool wrap=q.wrap_width>0;
    ReUSize iterations=0;auto progress=[&](){if(++iterations>2000000){ __builtin_trap(); }};
    while(clip[1]>y+line_height){progress();if(current>=stop)break;const auto lf=q.bytes.substr(current,stop-current).find('\n');const auto line_end=lf==re::ReStringView::npos?stop:current+lf;if(wrap){const auto p=renderer_wrap_3a3aa4(font.measure,scale,q.bytes,current,line_end,q.wrap_width);current=renderer_next_line_3a3a70(q.bytes,p,stop);}else current=line_end==stop?stop:line_end+1;y+=line_height;}
    if(current>stop){ __builtin_trap(); }
    if(stop-current>10000&&!wrap){float scan_y=y;auto cursor=current;while(clip[3]>scan_y&&cursor<stop){progress();const auto lf=q.bytes.substr(cursor,stop-cursor).find('\n');cursor=lf==re::ReStringView::npos?stop:cursor+lf+1;scan_y+=line_height;}stop=cursor;}
    if(current==stop)return;
    const auto bytes=stop-current;if(bytes>ReUSize(INT32_MAX/6)){ __builtin_trap(); }const auto reserved_i=ReI32(bytes*6),reserved_v=ReI32(bytes*4);
    require(sink.reserve,0x3a7b16,0x3a719c);sink.reserve(q.draw_list,reserved_i,reserved_v);
    float x=float(cvtt(q.position.x));const float start=x;re::ReOptional<ReUSize> wrap_end;ReI32 written_i=0,written_v=0;
    while(current<stop){progress();if(wrap){if(!wrap_end)wrap_end=renderer_wrap_3a3aa4(font.measure,scale,q.bytes,current,stop,q.wrap_width-(x-start));if(current>=*wrap_end){x=start;y+=line_height;wrap_end.reset();current=renderer_next_line_3a3a70(q.bytes,current,stop);continue;}}
        const auto lead=ReU8(q.bytes[current]);RendererUtf8 decoded{lead,1};if(lead>=128)decoded=renderer_utf8_39357c(q.bytes,current,stop);if(!decoded.consumed||decoded.consumed>stop-current){ __builtin_trap(); }current+=decoded.consumed;
        if(decoded.codepoint==10){y+=line_height;if(y>clip[3])break;x=start;continue;}if(decoded.codepoint==13)continue;
        const auto* g=font_text_find_3a4520(font,ReU16(decoded.codepoint));if(!g)continue;const float advance=scale*g->advance;
        if(g->packed&2){float x1=g->x0*scale+x,x2=g->x1*scale+x;
            // [C] JB includes unordered at both horizontal culls.
            if(clip[2]>=x1&&x2>=clip[0]){float y1=g->y0*scale+y,y2=g->y1*scale+y,u1=g->u0,v1=g->v0,u2=g->u1,v2=g->v1;
                if(fine){if(clip[0]>x1){u1=(1-(x2-clip[0])/(x2-x1))*(u2-u1)+u1;x1=clip[0];}if(clip[1]>y1){v1=(1-(y2-clip[1])/(y2-y1))*(v2-v1)+v1;y1=clip[1];}if(x2>clip[2]){u2=((clip[2]-x1)/(x2-x1))*(u2-u1)+u1;x2=clip[2];}if(y2>clip[3]){v2=((clip[3]-y1)/(y2-y1))*(v2-v1)+v1;y2=clip[3];}}
                if(!fine||!(y1>=y2)){const auto color=(g->packed&1)?q.color|0xffffff:q.color;const re::ReArray<DrawVertex,4> vertices{vertex(x1,y1,u1,v1,color),vertex(x2,y1,u2,v1,color),vertex(x2,y2,u2,v2,color),vertex(x1,y2,u1,v2,color)};constexpr re::ReArray<ReU16,6> indices{0,1,2,0,2,3};require(sink.write,0x3a7e1a,0);sink.write(q.draw_list,vertices,indices);written_i+=6;written_v+=4;}
            }
        }x+=advance;
    }
    require(sink.unreserve,0x3a7ef8,0x3a7224);sink.unreserve(q.draw_list,reserved_i-written_i,reserved_v-written_v);
}
void font_text_draw_3a31f8(FontTextStore& store,FontTextSink& sink,FontTextRequest q){if(!(q.color&0xff000000))return;const auto stop=end(q);if(stop==0)return;q.end=stop;
    if(!q.font){require(sink.shared,0x3a3256,0);q.font=sink.shared(q.draw_list).font;}if(q.size==0){require(sink.shared,0x3a3269,0);q.size=sink.shared(q.draw_list).size;}
    require(sink.clip,0x3a3272,0);auto clip=sink.clip(q.draw_list);if(q.fine_clip){clip[0]=maxss(clip[0],(*q.fine_clip)[0]);clip[1]=maxss(clip[1],(*q.fine_clip)[1]);clip[2]=minss(clip[2],(*q.fine_clip)[2]);clip[3]=minss(clip[3],(*q.fine_clip)[3]);}auto f=store.fonts.find(q.font);if(!f){ __builtin_trap(); }font_text_raster_3a792c(**f,sink,q,clip,q.fine_clip.has_value());
}
} // namespace rust_internal_re
