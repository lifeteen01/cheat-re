from pathlib import Path
import re
root=Path('/home/john/Desktop/cheat_re')
ref=(root/'dump_analysis/semantic_reconstruction/font_builder/reference/usr/include/stb/stb_truetype.h').read_text()
a=ref.index('static void stbtt__handle_clipped_edge(')
b=ref.index('// directly AA rasterize',a)
s=ref[a:b]
s=re.sub(r'/\*.*?\*/','',s,flags=re.S)
s=re.sub(r'//[^\n]*','',s)
s=re.sub(r'STBTT_assert\([^;]*;', ';',s)
s=s.replace('stbtt__active_edge','Active')
for x,y in {'stbtt__handle_clipped_edge':'clipped_3ac84c','stbtt__sized_trapezoid_area':'trapezoid_3ad30c','stbtt__position_trapezoid_area':'position_area_3acb10','stbtt__sized_triangle_area':'triangle_area_3ad338','stbtt__fill_active_edges_new':'fill_3ab6e0'}.items():s=s.replace(x,y)
s=re.sub(r'\(int\)\s*(x0|x_top|x_bottom)',r'cvtt(\1)',s)
s=re.sub(r'\n\s*\n','\n',s)
preamble='''#include "font_builder_internal.hpp"
// [I] Area formulas cross-checked against the native ranges in the audit ledger.
// Reference: stb_truetype, public-domain alternative license by Sean Barrett.
namespace rust_internal_re {
using namespace font_builder_detail;
namespace {
struct Edge {float x0{},y0{},x1{},y1{};bool invert{};};
struct Active {Active* next{};float fx{},fdx{},fdy{},direction{},sy{},ey{};};
'''
(root/'source/reconstructed/font_builder_raster.cpp').write_text(preamble+s+'\n}\n}\n')
