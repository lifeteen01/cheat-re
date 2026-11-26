"""Read-only byte/branch audit. Never loads the DLL or executes sample code."""
from pathlib import Path
import struct,subprocess,re,json,hashlib
work=Path('dump_analysis/semantic_reconstruction/draw_shapes')
image=Path('dump_analysis/unpacked/cheat.unpacked.dll');raw=image.read_bytes()
pe=struct.unpack_from('<I',raw,0x3c)[0];exception,size=struct.unpack_from('<II',raw,pe+24+112+24)
pdata=[struct.unpack_from('<III',raw,i) for i in range(exception,exception+size,12)]
translated={
0x3a0294:'polyline AA thin/thick/textured and nonAA geometry',0x39f928:'convex AA fringe and nonAA fan',
0x3a01f4:'half-pixel line/path stroke',0x3a1148:'outlined rectangle',0x3a1244:'filled rectangle',0x3a12d8:'four-corner gradient',0x3a3338:'triangle/path fill',
0x39f7ac:'outlined circle',0x39f874:'filled circle',0x398758:'path stroke/clear',0x378a14:'path fill/clear',
0x3a6b78:'rounded rectangle corner path',0x3a6b38:'fast12 arc mapping',0x3a684c:'automatic and explicit arc selector',0x3a8eec:'fast48 table arc',0x3a9110:'polynomial explicit arc',
0x3a8cb4:'circle segment recommendation',0x3a4588:'old/new corner flag mapping',0x3a6594:'literal RSQRTSS',0x3c8e6c:'literal polynomial sine',0x3c852c:'literal polynomial acos',
0x35a804:'polygon wrapper/window/style/count',0x35af6c:'outline circle wrapper/window/style',0x35b03c:'filled circle wrapper/window/style',0x35c25c:'line wrapper/window/style',0x35c88c:'triangle wrapper/window/style',0x35c738:'float rectangle/window/bounds/style',0x35b684:'integer health bar/ordered thresholds/CVTT64-low32 width',
0x35c30c:'layered glow/style/retained window/base line',0x35c578:'custom ring/flags/optional direction stroke',0x362270:'literal44-byte ring configuration',0x3622c0:'degree wrap/typed Unity sine then cosine',0x35d4c8:'three-point scaled configuration and rotation',0x35aa88:'literal rotation grouping',
0x392260:'style alpha multiplication then color packing',0x35d200:'current window mark and reload',0x3930e8:'literal CVTT floor',0x3c8918:'literal bitwise ceil',0x320cd0:'literal repeated degree wrap',0x3a6ec8:'whiteUV primitive rectangle vertices and indices',
}
manual={0x3a4588:0x3a45b4,0x3a6594:0x3a6599,0x3c8e6c:0x3c8f33,0x362270:0x3622c0,0x35aa88:0x35aad5,0x35d200:0x35d21d,0x320cd0:0x320cf6,0x3930e8:0x39310d,0x3c8918:0x3c899a}
remaining={0x36232c:'segmented native meter/controller',0x35ac38:'ring meter:100quad segments, repeated background accessor, optional HSV colors, two alpha-half edge strokes',0x35b0fc:'vertical native meter/controller',0x35bab8:'bounded integer meter/controller',0x35b850:'colored float meter/controller',0x35b508:'two-value violation circle/scale getter',0x35c938:'three-value violation circle/scale getter'}
shared={0x362fc0:'local ceil thunk362fc0..362fc5→3c8918; untranslated meter dependency',0x362200:'[U] local four-float interpolation362200..36226d; untranslated meter dependency',0x3612f8:'[U] local HSV wrapper3612f8..36135a→3904e0..39062b; untranslated meter dependency',0x392ecc:'local current-window accessor392ecc..392ee1→35d200, thenwindow+298',0x3a1084:'[U] local four-point pathfill3a1084..3a10ea; untranslated meter dependency',0x2d484c:'local four-float constructor wrapper2d484c..2d486f→2cc350',0x3925a4:'[U] local3925a4..3925c9→context+48d8 vectorindex0→39256c..3925a2; untranslated meter dependency',0x2e5a44:'local ordered clamp2e5a44..2e5a54; untranslated meter fold',0x3926ac:'local context+8 getter3926ac..3926b8; untranslated meter dependency',0x2cc340:'owned Vec2 constructor',0x2cc350:'owned four-float constructor',0x2db318:'owned integer-color constructor',0x2ef80c:'font_text literal color conversion',0x39045c:'font_text literal color packing',0x3a719c:'drawlist_core reserve/rollover/counts',0x37a658:'drawlist_core path append/growth',0x378a40:'drawlist_core path append/growth',0x37a758:'drawlist_core path reserve',0x37ad34:'drawlist_core path resize',0x3a9688:'drawlist_core shared temp vector resize (owned temporary arrays)',0x2ef9d8:'literal Vec2 add folded in shape math',0x3367e4:'literal Vec2 subtract folded in shape math',0x38bc08:'literal Vec2 scale folded in shape math',0x3762ac:'signed integer clamp folded in shape math',0x3762cc:'source-operand MINSS folded in shape math',0x38a3f4:'source-operand MAXSS folded in shape math',0x39f28c:'signed integer max folded in shape math',0x3a4b08:'signed integer abs (analysis extent checked)',0x2e3ef0:'float abs folded in shape math',0x2e372c:'float abs folded in shape math',0x3c899c:'font_text literal cosine',0x3c8f34:'jump to reused literal square-root2e3c88',0x2dff68:'[U] typed matching Unity cosine, no live invocation',0x2e0198:'[U] typed matching Unity sine, no live invocation',0x378a4c:'literal uint16 index write folded through core write-relative',0x378a5c:'literal20byte vertex write folded through core write-relative'}
# Independent literal byte expectations at the semantic decisions being reconstructed.
for site,expected in {0x3a6594:'f30f52c0c3',0x3a0e2e:'0fb7458f410100',0x35c5b9:'83e1fd83c90541894830',0x35c665:'f30f1045f7f30f5c457f',0x3a8d1f:'ffc0992bc2ba04000000d1f88d0c00'}.items():
 assert raw[site:site+len(bytes.fromhex(expected))]==bytes.fromhex(expected),hex(site)
for site,expected in {0x2930a8:0x3e4ccccd,0x293090:0x3c8efa35,0x293134:0x40000000,0x2adb20:0x32cd365b,0x2adb28:0x3638b88e,0x2adb80:0x3fc90fda}.items():
 assert struct.unpack_from('<I',raw,site)[0]==expected,hex(site)
records=[];branches=[];deps={};total=0
for begin,status in sorted({**translated,**remaining}.items()):
 end=manual.get(begin,next((b for a,b,u in pdata if a==begin),None))
 if end is None:raise ValueError(hex(begin))
 text=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel','--insn-width=16',f'--start-address={begin}',f'--stop-address={end}',str(image)],text=True)
 (work/f'{begin:x}.asm').write_text(text);decoded=[]
 for line in text.splitlines():
  m=re.match(r'\s*([0-9a-f]+):\s+((?:[0-9a-f]{2} )+)\s*(.*)',line)
  if not m:continue
  a=int(m[1],16);code=bytes.fromhex(m[2]);assert raw[a:a+len(code)]==code;assert '(bad)' not in m[3]
  decoded.append((a,len(code),m[3]))
 assert sum(n for a,n,t in decoded)==end-begin,(hex(begin),hex(end))
 starts={a for a,n,t in decoded}
 for a,n,t in decoded:
  m=re.match(r'(call|j\w+)\s+(0x[0-9a-f]+)',t)
  if not m:continue
  target=int(m[2],16);inside=begin<=target<end
  if inside:assert target in starts,(hex(a),hex(target))
  branches.append(dict(body=hex(begin),site=hex(a),kind=m[1],target=hex(target),within=inside))
  if m[1]=='call' or not inside:
   desc=translated.get(target,remaining.get(target,shared.get(target,'[U] exact local dependency, body not yet classified')))
   deps.setdefault(target,dict(target=hex(target),status=desc,sites=[]))['sites'].append(hex(a))
 records.append(dict(begin=hex(begin),end=hex(end),bytes=end-begin,instructions=len(decoded),status=('[C/I] ' if begin in translated else '[U] untranslated local ')+status,translated=begin in translated,bound='literal leaf/thunk end' if begin in manual else 'original DLL exception-directory runtime-function bound',returns=[hex(a) for a,n,t in decoded if t.startswith('ret')]))
 total+=len(decoded)
routes=json.loads((work/'all_world_shape_routes.json').read_text())
# Validate every direct world route independently using rawE8 rel32 bytes.
route_rows=routes if isinstance(routes,list) else list(routes.items())
for row in route_rows:
 if isinstance(row,(list,tuple)):site,target=map(lambda x:int(x,16) if isinstance(x,str) else x,row[:2])
 else:
  site=int(row.get('site',row.get('call_site')),16);target=int(row.get('target'),16)
 assert raw[site]==0xe8 and site+5+struct.unpack_from('<i',raw,site+1)[0]==target
result=dict(image=str(image),sha256=hashlib.sha256(raw).hexdigest(),instruction_lines_byte_checked=total,translated_ranges=len(translated),translated_bytes=sum(r['bytes'] for r in records if r['translated']),remaining_ranges=len(remaining),world_routes_checked=len(route_rows),ranges=records,branches=branches)
(work/'audit.json').write_text(json.dumps(result,indent=2)+'\n');(work/'dependencies.json').write_text(json.dumps(list(deps.values()),indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k not in ['ranges','branches']},indent=2))
print('Unclassified:',[(hex(k),v['sites']) for k,v in deps.items() if 'not yet classified' in v['status']])
