from pathlib import Path
import re
p=Path('source/reconstructed/font_builder_cff.cpp');ref=Path('dump_analysis/semantic_reconstruction/font_builder/reference/usr/include/stb/stb_truetype.h').read_text()
a=ref.index('static int stbtt__run_charstring(');b=ref.index('static int stbtt__GetGlyphShapeT2(',a)
s=ref[a:b];s=re.sub(r'/\*.*?\*/','',s,flags=re.S);s=re.sub(r'//[^\n]*','',s)
s=s.replace('static int stbtt__run_charstring(const stbtt_fontinfo *info, int glyph_index, stbtt__csctx *c)','static int run(const Snapshot& image,const FontBuilderInfo& info,int glyph_index,Context* c,const FontBuilderLimits& limits)')
s=s.replace('{\n   int in_header','{\n   Runtime rt{{image,info.input},limits};\n   int in_header')
s=s.replace('stbtt__buf','Buffer').replace('info->subrs','info.cff_buffers.subrs').replace('info->gsubrs','info.cff_buffers.global_subrs').replace('info->fdselect','info.cff_buffers.fdselect').replace('info->charstrings','info.cff_buffers.charstrings')
s=s.replace('stbtt__cff_index_get(info.cff_buffers.charstrings, glyph_index)','rt.index_get(info.cff_buffers.charstrings, glyph_index)')
s=s.replace('Buffer_get8(&b)','rt.get8(b)').replace('Buffer_skip(&b,','rt.skip(b,').replace('Buffer_get32(&b)','rt.get(b,4)')
s=s.replace('stbtt__cff_int(&b)','rt.number(b)').replace('stbtt__cid_get_glyph_subrs(info, glyph_index)','rt.cid_subrs(info, glyph_index)').replace('stbtt__get_subr(','rt.subr(')
s=s.replace('stbtt__csctx_rmove_to','move').replace('stbtt__csctx_rline_to','line').replace('stbtt__csctx_rccurve_to','curve').replace('stbtt__csctx_close_shape','close').replace('STBTT_fabs','absolute')
s=s.replace('(int) s[--sp]','cvtt(s[--sp])').replace('(stbtt_int32)rt.get(b,4)','integer(rt.get(b,4))').replace('(stbtt_int16)rt.number(b)','std::bit_cast<std::int16_t>(std::uint16_t(rt.number(b)))')
s=s.replace('while (b.cursor < b.size) {','while (b.cursor < b.size) {\n      rt.step(0x3ac84c);')
s=re.sub(r'\n\s*\n','\n',s)
p.write_text(p.read_text()+s+'''
} // namespace
bool cff_init(const Snapshot& image,FontBuilderInfo& info,int offset,const FontBuilderLimits& limits){
 Runtime rt{{image,info.input},limits};auto& f=info.cff_buffers;f={};f.data={offset,0,0x20000000};auto b=f.data;rt.skip(b,2);rt.seek(b,rt.get8(b));(void)rt.index(b);auto top_index=rt.index(b);auto top=rt.index_get(top_index,0);(void)rt.index(b);f.global_subrs=rt.index(b);
 std::array<std::uint32_t,1> charstrings{},type{2},array{},select{};rt.integers(top,17,charstrings);rt.integers(top,0x106,type);rt.integers(top,0x124,array);rt.integers(top,0x125,select);f.subrs=rt.subrs(b,top);
 if(type[0]!=2||!charstrings[0])return false;
 if(array[0]){if(!select[0])return false;rt.seek(b,integer(array[0]));f.fontdicts=rt.index(b);f.fdselect=rt.range(b,integer(select[0]),add(b.size,-integer(select[0])));}
 rt.seek(b,integer(charstrings[0]));f.charstrings=rt.index(b);return true;
}
FontBuilderBox cff_box(const Snapshot& image,const FontBuilderInfo& info,int glyph){
 FontBuilderLimits limits;Context c;c.bounds=true;c.limits=&limits;if(!run(image,info,glyph,&c,limits))return {};return {c.min_x,c.min_y,c.max_x,c.max_y};
}
std::vector<FontBuilderVertex> cff_shape(const Snapshot& image,const FontBuilderInfo& info,int glyph,const FontBuilderLimits& limits){
 Context count;count.bounds=true;count.limits=&limits;if(!run(image,info,glyph,&count,limits))return {};
 Context output;output.limits=&limits;output.vertices.reserve(count.count);if(!run(image,info,glyph,&output,limits))return {};return output.vertices;
}
} // namespace rust_internal_re::font_builder_detail
''')
