from pathlib import Path
import struct,subprocess,re,json,hashlib
O=Path('dump_analysis/semantic_reconstruction/renderer_helpers');image=Path('dump_analysis/unpacked/cheat.unpacked.dll');raw=image.read_bytes()
pe=struct.unpack_from('<I',raw,0x3c)[0];exception,size=struct.unpack_from('<II',raw,pe+24+112+3*8)
pdata=[struct.unpack_from('<III',raw,i) for i in range(exception,exception+size,12)]
concrete={
0x2eec7c:'[C/I] full widget-vector copy controller; owned allocation and strings',
0x2ee0d8:'[C/I] first Indicator3 find, stride68/end preservation',0x2ee154:'[C/I] first DisplayName find',
0x2ee1d0:'[C/I] first HeldEntity find',0x2ee24c:'[C/I] first Indicator find',0x2ee2c8:'[C/I] first Indicator0 find',0x2ee344:'[C/I] first Indicator2 find',
0x2f61e0:'[C/I] literal Indicator3 predicate; encoded literal storage replaced by decoded value',0x2f7230:'[C/I] literal DisplayName predicate',
0x2f739c:'[C/I] literal HeldEntity predicate',0x2f7518:'[C/I] literal Indicator predicate',0x2f76c0:'[C/I] literal Indicator0 predicate',0x2f78fc:'[C/I] literal Indicator2 predicate',
0x2db470:'[C/I] copies key/base fields,text,opaque50,byte60,icon64 into owned record',
0x2db3ec:'[C/I] copies key,side20,raw24..2b,byte2c into owned record',
0x2ef7c8:'[C/I] widget stride68 indexed access; owned vector bounds explicit',
0x392198:'[C/I] first viewport lookup and background draw-list dispatch; NOT a font selector',
0x392164:'[C/I] literal ##Background and index0',0x392dcc:'[C/I/U] full lazy draw-list/create/reset/texture/clip/frame controller; local callees tracked separately',
0x38a4ac:'[C/I] full constructor observable writes: zero c8 then shared-data pointer+38',0x38bb84:'[C] signed32 index*8 added to vector+8',
0x39357c:'[C] full literal table decoder/error/consumption; missing bytes explicit',
0x3a3874:'[C/I] full font-advance/scale/maxwidth/wrap/newline/remaining measurement, no fabricated glyph metrics',
0x3a3aa4:'[C/I] full native wrapping word/blank/punctuation widths and forced-byte-progress',
0x3a3a70:'[C] native byte blanks then one newline skip',0x3a4b10:'[C] blank codepoints20,9,3000',0x37897c:'[C] blank bytes20,9',
0x38f79c:'[C/I] current-font/current-size, hidden ## cutoff, trunc(width+0.99999)',0x391c50:'[C/I] first NUL or ## cutoff before supplied end',
0x2cc8ac:'[C/I] bundle nonzero/implicit predicate',0x2ccb6c:'[C/I/U] one-attempt embedded bundle load at35c0 length21514e; actual Unity effect required',
0x2cc8d0:'[C/I] complete positive/negative icon cache, stale erase/reload and post-first-RET branch2cca12',
0x2cca48:'[C/I/U] positive requested square/default dimensions, half extents, actual image request',
0x2ccd14:'[C/I/U] complete path/type/load/validity/two-dimension/read/write ordering; matching Unity effects required',
0x2ccbdc:'[C/I/U] concrete class resolution then guarded class-type/runtime-type chain; matching exports required',
0x2ccc0c:'[C/I/U] complete range gate/exact-count metadata cache/target/context flag ordering; detection-only context; matching Unity leaf required',
0x2cae08:'[C/I/U] full signature C0505EDA target/context cache; matching dimension leaf required',
0x2cae88:'[C/I/U] full signature3A81CD35 target/context cache; matching dimension leaf required',
0x2caf28:'[C/I/U] full export-named load cache and managed-string conversion order; matching Unity leaf required',
}
manual={0x39eea0:0x39eea3,0x395158:0x39517b,0x2ce5dc:0x2ce5e1,0x2ef7c8:0x2ef7d0,0x38bb84:0x38bb90,0x3a4b10:0x3a4b28,0x37897c:0x37898c,0x391c50:0x391c78}
remaining={0x36135c:'world text style/outline/font selection and glyph dispatch',0x361bcc:'label text rectangle/style/outline glyph dispatch',0x3a31f8:'font text renderer and glyph geometry',0x3a4b40:'font atlas build controller',0x3a33c0:'font glyph raster/quad renderer dependency',0x3a37c8:'font glyph lookup dependency',0x3a4f38:'font atlas build dependency',0x3a5008:'font atlas build dependency',0x3a5204:'font atlas build dependency',0x3a9258:'reset draw list; includes splitter merge when count>1, vector sizes, header/init command',
0x3a73c4:'push texture stack and header update→3a8e28',0x3a7268:'clip clamp/intersect/push/header→3a8d94',
0x3a0168:'image alpha gate/texture switch/reserve6indices4vertices/quad/texture pop',
0x3a8d94:'clip-change draw-command merge/new-command controller',0x3a8e28:'texture-change draw-command merge/new-command controller',
0x3a719c:'primitive reserve/16-bit vertex limit and index/vertex buffer growth',0x3a7020:'image rectangle primitive index/vertex writes',
0x3a6e84:'texture pop/header update',0x39fd18:'append native draw command',0x39eea0:'remove/merge last draw command',
0x3a65c4:'splitter merge',0x37a658:'texture Address-vector push/grow',0x39f030:'clip float4-vector push/grow',
0x39ef2c:'append native initial command',0x39f294:'zero default draw command',
0x395158:'ImGui allocation dispatcher; use existing owned allocator boundary',
0x375c08:'parent Unity embedded bundle wrapper; consume existing implementation',
0x2ce5dc:'parent managed-string conversion wrapper dependency',0x2cd7f4:'parent class_get_type export wrapper',0x2cea84:'parent type_get_object export wrapper'}
records=[];deps={};checked=0;branches=[]
for address,status in sorted({**concrete,**{a:'[U] '+s for a,s in remaining.items()}}.items()):
 matches=[(a,b) for a,b,u in pdata if a==address]
 end=manual.get(address,matches[0][1] if matches else None)
 if end is None:raise ValueError(hex(address))
 output=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--insn-width=16',f'--start-address={address}',f'--stop-address={end}',str(image)],text=True)
 (O/f'{address:x}.asm').write_text(output)
 count=0;bytes_checked=0;ret=[]
 for line in output.splitlines():
  m=re.match(r'\s*([0-9a-f]+):\s+((?:[0-9a-f]{2} )+)\s*(.*)',line)
  if not m:continue
  site=int(m[1],16);code=bytes.fromhex(m[2]);assert raw[site:site+len(code)]==code
  count+=1;bytes_checked+=len(code)
  if re.match(r'(?:repz? )?ret',m[3]):ret.append(hex(site))
  if b:=re.match(r'(call|j\w+)\s+(0x[0-9a-f]+)',m[3]):
   target=int(b[2],16);branches.append(dict(body=hex(address),site=hex(site),kind=b[1],target=hex(target),within=address<=target<end))
   if b[1]=='call' or not address<=target<end:
    d=deps.setdefault(target,dict(target=hex(target),status=concrete.get(target,'[U] '+remaining[target] if target in remaining else '[U] separate helper/standard-container/export body; no completion inferred'),sites=[]));d['sites'].append(hex(site))
 assert bytes_checked==end-address,(hex(address),bytes_checked,end-address)
 records.append(dict(begin=hex(address),end=hex(end),bytes=end-address,instructions=count,status=status,ret_sites=ret,bound='manual exact leaf end' if address in manual else '.pdata BeginAddress/EndAddress',implemented=address in concrete))
 checked+=count
result=dict(image=str(image),sha256=hashlib.sha256(raw).hexdigest(),instruction_lines_byte_checked=checked,range_count=len(records),implemented_ranges=sum(x['implemented'] for x in records),implemented_bytes=sum(x['bytes'] for x in records if x['implemented']),ranges=records,branches=branches)
(O/'audit.json').write_text(json.dumps(result,indent=2)+'\n');(O/'dependencies.json').write_text(json.dumps(sorted(deps.values(),key=lambda x:int(x['target'],16)),indent=2)+'\n')
cpp=['#include "renderer_helpers_analysis.hpp"','namespace rust_internal_re {','namespace {','const RendererCoverage ranges[]={']+[f'    {{{r["begin"]},{r["end"]},{json.dumps(r["status"])}}},' for r in records]+['};','}','std::span<const RendererCoverage> renderer_helper_coverage(){return ranges;}','}']
Path('source/reconstructed/renderer_helpers_coverage.cpp').write_text('\n'.join(cpp)+'\n')
(O/'literal_tables.json').write_text(json.dumps({hex(a):list(struct.unpack_from('<'+str(n)+t,raw,a)) for a,n,t in [(0x2a9fb0,32,'b'),(0x2a9fd0,5,'I'),(0x2a9fe8,5,'I'),(0x2aa000,5,'I'),(0x2aa018,5,'I'),(0x2aa14c,1,'f')]},indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k not in ['ranges','branches']},indent=2));print(len(deps),'unique dependencies;',len(branches),'direct branch/call sites')
