"""Fresh raw-byte/pdata/branch audit; no loading or executing sample instructions."""
from pathlib import Path
import subprocess,struct,json,re,hashlib
work=Path('dump_analysis/semantic_reconstruction/draw_meters')
image=Path('dump_analysis/unpacked/cheat.unpacked.dll');raw=image.read_bytes()
pe=struct.unpack_from('<I',raw,0x3c)[0];exception,size=struct.unpack_from('<II',raw,pe+24+112+24)
pdata=[struct.unpack_from('<III',raw,i) for i in range(exception,exception+size,12)]
translated={
0x35ac38:'ring100segments, repeated typed trig, optionalHSV, rawquad and halfalphaedges',
0x35b0fc:'foreground rounded meter and phasewrite/pulse outlines',
0x35bab8:'integer-width meter and signed min/positive gate',
0x35b850:'three-layer float colored meter',
0x35b508:'two-value violation ring wrapper',
0x35c938:'three-value violation ring wrapper',
0x36232c:'segmented integer meter, gradient, separators and border',
0x3612f8:'HSV wrapper with original argument/color order',
0x3904e0:'HSV six sector switch and unordered default',
0x3c8a6c:'integer-significand float remainder, subnormal/zero/nonfinite branches',
0x3a1084:'fourpoint pathfill and alpha gate through releasedshape/core',
0x392ecc:'currentwindow marking/reload and +298list',
0x3925a4:'foreground firstviewport lookup then39256c',
0x39256c:'literal foreground name decode and index1→reused392dcc',
0x38c6f0:'copy13foregroundliteralbytes',
0x39eb2c:'conditional13byte decode wrapper',
0x39e77c:'literal13byte XORdecode',
0x2ce59c:'name finalbyte predicate',
0x3926ac:'context+8 pointer getter',
0x2e5a44:'ordered clamp with literal sourceoperand MINSS',
0x2d484c:'fourfloat constructor wrapper/return through owned values',
0x362fc0:'ceil thunk to literal3c8918',
0x3c8918:'literalbit ceil folded in segmented controller',
0x362200:'fourfloat interpolation retaining grouping',
0x35c738:'floatrect window/bounds/style folded through released shapes',
0x35d200:'currentwindow mark/reload fold',
0x392260:'native stylealpha conversion folded through releasedcolor',
}
manual={0x3c8a6c:0x3c8bd0,0x38c6f0:0x38c712,0x39e77c:0x39e7ac,0x2ce59c:0x2ce5a4,0x3926ac:0x3926b8,0x2e5a44:0x2e5a54,0x362fc0:0x362fc5,0x3c8918:0x3c899a,0x35d200:0x35d21d}
imports={0x2cc340:'released owned Vec2 constructor',0x2cc350:'released owned fourfloat constructor',0x2db318:'literal integer color/255 constructor folded with fixed supplied native colors',0x2ef80c:'released font_text colorconversion',0x39045c:'released font_text colorpacking',0x35c738:'releaseddraw_shapes concrete floatrectangle fold',0x3a1244:'releaseddraw_shapes filledrectangle',0x3a1148:'releaseddraw_shapes outlinedrectangle',0x3a01f4:'releaseddraw_shapes line',0x378a40:'releaseddrawlist_core pathappend',0x378a14:'releaseddraw_shapes pathfill',0x38bb84:'releasedrenderer vectorindex',0x392dcc:'releasedrenderer concrete lazylist allocation/reset/texture/clip/framecheck',0x2e0198:'releasedunity_math concrete cachedwrapper; actual Unityresult remains typed',0x2dff68:'releasedunity_math concrete cachedwrapper; actual Unityresult remains typed'}
records=[];branches=[];deps={}
for begin,meaning in sorted(translated.items()):
 end=manual.get(begin,next((b for a,b,u in pdata if a==begin),None))
 if end is None:raise ValueError(hex(begin))
 text=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel','--insn-width=16',f'--start-address={begin}',f'--stop-address={end}',str(image)],text=True)
 (work/f'{begin:x}.asm').write_text(text);lines=[]
 for line in text.splitlines():
  if not (m:=re.match(r'\s*([0-9a-f]+):\s+((?:[0-9a-f]{2} )+)\s*(.*)',line)):continue
  site=int(m[1],16);code=bytes.fromhex(m[2]);assert raw[site:site+len(code)]==code;assert '(bad)' not in m[3]
  lines.append((site,len(code),m[3]))
 assert sum(n for a,n,t in lines)==end-begin
 starts={a for a,n,t in lines}
 for site,n,text in lines:
  if not (m:=re.match(r'(call|j\w+)\s+(0x[0-9a-f]+)',text)):continue
  target=int(m[2],16);within=begin<=target<end
  if within:assert target in starts,(hex(site),hex(target))
  branches.append(dict(body=hex(begin),site=hex(site),kind=m[1],target=hex(target),within=within))
  if m[1]=='call' or not within:
   deps.setdefault(target,dict(target=hex(target),status=translated.get(target,imports.get(target,'[U] unclassified local dependency')),sites=[]))['sites'].append(hex(site))
 records.append(dict(begin=hex(begin),end=hex(end),bytes=end-begin,instructions=len(lines),status='[C] [I] '+meaning,bound='actual return/thunk end' if begin in manual else 'original PE exception directory',returns=[hex(a) for a,n,t in lines if t.startswith('ret')]))
routes={0x30a7ba:0x35b850,0x30b19b:0x35bab8,0x30c47b:0x35b0fc,0x30c4b8:0x35b0fc,0x30c655:0x35b0fc,0x30c4f8:0x35bab8,0x30c539:0x35bab8,0x30c69a:0x35bab8,0x30c582:0x36232c,0x30c5c7:0x36232c,0x30c6e1:0x36232c,0x30c76a:0x35b508,0x30c816:0x35c938,0x30c8cb:0x35ac38}
for site,target in routes.items():assert raw[site]==0xe8 and site+5+struct.unpack_from('<i',raw,site+1)[0]==target
assert raw[0x2aa048:0x2aa055]==bytes.fromhex('141b7f5549595a4c50352f2643')
# Specific branch/constant expectations from the independent semantic pass.
for site,bits in {0x293098:0x3d4ccccd,0x2a81f8:0x3eaaaaab,0x293248:0x43f2bc29,0x2a8238:0x41860973,0x29319c:0x41072183,0x2a8234:0x41066666,0x2a8228:0x40866666,0x2a821c:0x402c49ba,0x2a8230:0x40ac49ba,0x29309c:0x3e000000}.items():assert struct.unpack_from('<I',raw,site)[0]==bits
assert raw[0x35b3e7:0x35b3ef].hex()=='f30f1105d5260a00'
assert 0x35b3e7<0x35b3ef # nativephase store precedes typedUnitysin call
result=dict(image=str(image),sha256=hashlib.sha256(raw).hexdigest(),ranges=records,range_count=len(records),bytes=sum(r['bytes'] for r in records),instruction_lines_byte_checked=sum(r['instructions'] for r in records),branches=branches,world_routes={hex(a):hex(b) for a,b in routes.items()},remaining_local_dependencies=[v for v in deps.values() if v['status'].startswith('[U]')])
(work/'audit.json').write_text(json.dumps(result,indent=2)+'\n');(work/'dependencies.json').write_text(json.dumps(list(deps.values()),indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k not in ['ranges','branches','world_routes']},indent=2));print(len(branches),'direct branches/calls;',len(routes),'world routes')
cpp=['#include "draw_meters_analysis.hpp"','namespace rust_internal_re {','std::span<const RendererCoverage> draw_meters_coverage() {','    static constexpr RendererCoverage ranges[] {']+[f'        {{{r["begin"]},{r["end"]},{json.dumps(r["status"])}}},' for r in records]+['    };','    return ranges;','}','} // namespace rust_internal_re','']
Path('source/reconstructed/draw_meters_coverage.cpp').write_text('\n'.join(cpp))
