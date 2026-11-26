from pathlib import Path
p=Path('source/reconstructed/font_builder_raster.cpp');s=p.read_text();s=s[:-5] if s.endswith('\n}\n}\n') else s
s=s.replace('clipped_3ac84c','clipped_3abfd4').replace('trapezoid_3ad30c','trapezoid_3ad31c').replace('position_area_3acb10','position_area_3ac354').replace('triangle_area_3ad338','triangle_area_3ad2c0')
s=s.replace('dy = (y_final - y_crossing ) / (x2 - (x1+1));','if(x2 != x1+1) dy = (y_final - y_crossing ) / (x2 - (x1+1));')
ref=Path('dump_analysis/semantic_reconstruction/font_builder/reference/usr/include/stb/stb_truetype.h').read_text()
a=ref.index('static void stbtt__sort_edges_ins_sort(');b=ref.index('typedef struct\n{\n   float x,y;',a)
q=ref[a:b];import re
q=re.sub(r'/\*.*?\*/|//[^\n]*','',q,flags=re.S if False else 0) if False else re.sub(r'/\*.*?\*/','',q,flags=re.S)
q=re.sub(r'//[^\n]*','',q).replace('stbtt__edge','Edge').replace('stbtt__sort_edges_ins_sort','insertion_sort_3ad2f4').replace('stbtt__sort_edges_quicksort','quick_sort_3ad394').replace('stbtt__sort_edges','sort_edges_3ad2d0').replace('STBTT__COMPARE','compare')
s+='\nstatic bool compare(const Edge* a,const Edge* b){return a->y0<b->y0;}\n'+q
s+='''
using Contour=std::vector<Vec2>;
void point(Contour& out,Vec2 p,const FontBuilderLimits& lim){if(out.size()>=lim.maximum_vertices)throw RendererMissing(0x3aaf08,0,"flattened point analysis bound");out.push_back(p);}
void quadratic(Contour& out,Vec2 a,Vec2 b,Vec2 c,float flat,int depth,const FontBuilderLimits& lim){
 if(depth>16)return;
 const Vec2 mid{((b.x+b.x)+a.x+c.x)*0.25f,((b.y+b.y)+a.y+c.y)*0.25f};
 const Vec2 d{(a.x+c.x)*0.5f-mid.x,(a.y+c.y)*0.5f-mid.y};
 if(d.y*d.y+d.x*d.x>flat){quadratic(out,a,(a+b)*0.5f,mid,flat,depth+1,lim);quadratic(out,mid,(b+c)*0.5f,c,flat,depth+1,lim);}else point(out,c,lim);
}
void cubic(Contour& out,Vec2 a,Vec2 b,Vec2 c,Vec2 d,float flat,int depth,const FontBuilderLimits& lim){
 const auto ab=b-a,bc=c-b,cd=d-c,ad=d-a;
 const float length=sample_sqrt_2e3c88(ab.x*ab.x+ab.y*ab.y)+sample_sqrt_2e3c88(bc.x*bc.x+bc.y*bc.y)+sample_sqrt_2e3c88(cd.x*cd.x+cd.y*cd.y);
 const float chord=sample_sqrt_2e3c88(ad.x*ad.x+ad.y*ad.y);
 if(depth>16)return;
 if(length*length-chord*chord>flat){const auto abm=(a+b)*0.5f,bcm=(b+c)*0.5f,cdm=(c+d)*0.5f;const auto left=(abm+bcm)*0.5f,right=(bcm+cdm)*0.5f,mid=(left+right)*0.5f;cubic(out,a,abm,left,mid,flat,depth+1,lim);cubic(out,mid,right,cdm,d,flat,depth+1,lim);}else point(out,d,lim);
}
std::vector<Contour> flatten(std::span<const FontBuilderVertex> vertices,float flat,const FontBuilderLimits& lim){std::vector<Contour> result;Vec2 current{};for(const auto& v:vertices){const Vec2 endpoint{float(v.x),float(v.y)};if(v.type==1){result.emplace_back();point(result.back(),endpoint,lim);}else if(v.type>=2&&v.type<=4){if(result.empty())throw RendererMissing(0x3a9c70,0,"curve before initialized contour");if(v.type==2)point(result.back(),endpoint,lim);else if(v.type==3)quadratic(result.back(),current,{float(v.cx),float(v.cy)},endpoint,flat*flat,0,lim);else{if(!v.second_control)throw RendererMissing(0x3a9e9a,0,"native cubic second control missing");cubic(result.back(),current,{float(v.cx),float(v.cy)},{float((*v.second_control)[0]),float((*v.second_control)[1])},endpoint,flat*flat,0,lim);}}current=endpoint;}return result;}
void raster(Snapshot& image,Address pixels,int width,int height,int stride,std::span<const FontBuilderVertex> vertices,float sx,float sy,int offx,int offy,const FontBuilderLimits& lim){
 const float minimum=sy<sx?sy:sx;const auto contours=flatten(vertices,std::bit_cast<float>(0x3eb33333u)/minimum,lim);
 std::vector<Edge> edges;for(const auto& contour:contours){if(contour.empty())continue;std::size_t j=contour.size()-1;for(std::size_t k=0;k<contour.size();j=k++){if(contour[j].y==contour[k].y)continue;auto a=k,b=j;bool invert=false;if(contour[j].y>contour[k].y){invert=true;a=j;b=k;}if(edges.size()>=lim.maximum_vertices)throw RendererMissing(0x3ac370,0,"raster edge analysis bound");edges.push_back({contour[a].x*sx,contour[a].y*(-sy),contour[b].x*sx,contour[b].y*(-sy),invert});}}
 sort_edges_3ad2d0(edges.data(),int(edges.size()));
 std::vector<Active> storage;storage.reserve(edges.size());Active* active=nullptr;std::size_t cursor=0;std::vector<float> scan(std::size_t(width)*2+1);
 for(int row=0;row<height;++row){const float top=float(add(offy,row))+0.0f,bottom=float(add(offy,row))+1.0f;std::fill(scan.begin(),scan.end(),0);auto step=&active;while(*step){if((*step)->ey<=top)*step=(*step)->next;else step=&(*step)->next;}
 while(cursor<edges.size()&&edges[cursor].y0<=bottom){const auto& e=edges[cursor++];if(e.y0==e.y1)continue;const float dx=(e.x1-e.x0)/(e.y1-e.y0);const float x=e.x0+(top-e.y0)*dx-float(offx);storage.push_back({active,x,dx,dx!=0?1/dx:0,e.invert?1.f:-1.f,e.y0,e.y1});active=&storage.back();if(row==0&&offy!=0&&active->ey<top)active->ey=top;}
 if(active)fill_3ab6e0(scan.data(),scan.data()+width+1,width,active,top);float sum=0;
 for(int x=0;x<width;++x){sum+=scan[std::size_t(width+x)];const float value=scan[std::size_t(x)]+sum;const float absolute=std::bit_cast<float>(std::bit_cast<std::uint32_t>(value)&0x7fffffffu);auto alpha=cvtt(absolute*255+0.5f);if(alpha>255)alpha=255;const auto offset=integer(std::uint32_t(row)*std::uint32_t(stride)+std::uint32_t(x));write(image,pixels+std::uint64_t(std::int64_t(offset)),std::uint8_t(alpha),0x3ac7b0);}for(auto* z=active;z;z=z->next)z->fx+=z->fdx;
 }
}
} // namespace
void font_builder_bitmap_3ae788(Snapshot& image,const FontBuilderInfo& info,Address pixels,int width,int height,int stride,float sx,float sy,int glyph,const FontBuilderLimits& lim){
 const auto shape=font_builder_shape_3aa6cc(image,info,glyph,lim);const auto box=font_builder_bitmap_box_3ae308(image,info,glyph,sx,sy);
 if(width&&height){if(width<0||height<0||std::uint64_t(width)*std::uint64_t(height)>lim.maximum_pixels)throw RendererMissing(0x3ae858,0,"bitmap output analysis bound");raster(image,pixels,width,height,stride,shape,sx,sy,box.x0,box.y0,lim);}
}
void font_builder_filter(Snapshot& image,Address pixels,int width,int height,int stride,std::uint32_t kernel,bool vertical,const FontBuilderLimits& lim){
 if(kernel==0||kernel>8)throw RendererMissing(vertical?0x3adb1c:0x3abdc8,0,"native prefilter stack kernel outside initialized eight-byte ring");
 const int outer=vertical?width:height,inner=vertical?height:width;const int safe=add(inner,-int(kernel));if(outer<=0)return;if(inner<0||std::uint64_t(outer)*std::uint64_t(inner)>lim.maximum_pixels)throw RendererMissing(0x3abdc8,0,"prefilter analysis bound");
 std::array<std::uint8_t,8> buffer{};for(int j=0;j<outer;++j){std::fill_n(buffer.begin(),kernel,0);std::uint32_t total=0;for(int i=0;i<inner;++i){const auto offset=vertical?integer(std::uint32_t(i)*std::uint32_t(stride)+std::uint32_t(j)):integer(std::uint32_t(j)*std::uint32_t(stride)+std::uint32_t(i));const auto p=pixels+std::uint64_t(std::int64_t(offset));if(i<=safe){const auto old=read<std::uint8_t>(image,p,vertical?0x3adb1c:0x3abdc8);total+=std::uint32_t(old)-buffer[std::size_t(i)&7];buffer[(std::uint32_t(i)+kernel)&7]=old;}else total-=buffer[std::size_t(i)&7];write(image,p,std::uint8_t(total/kernel),vertical?0x3adb1c:0x3abdc8);}}
}
} // namespace rust_internal_re
'''
p.write_text(s)
