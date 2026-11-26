from pathlib import Path
import struct,subprocess,re,json,hashlib
O=Path('dump_analysis/semantic_reconstruction/drawlist_core');image=Path('dump_analysis/unpacked/cheat.unpacked.dll');raw=image.read_bytes()
pe=struct.unpack_from('<I',raw,0x3c)[0];exception,size=struct.unpack_from('<II',raw,pe+24+112+24);pdata=[struct.unpack_from('<III',raw,i) for i in range(exception,exception+size,12)]
implemented={
0x3a9258:'[C/I] merge if splitcount>1, logical vector/header/cursor reset, sharedflags/default command/fringe1',
0x3a73c4:'[C/I] texture stack push/header/change controller',0x3a7268:'[C/I] ordered clip intersections, source-operand MAXSS and push/header/change',
0x3a8d94:'[C/I] full clip change/bitwise header match/contiguous-command merge and callback guard',
0x3a8e28:'[C/I] full texture change/header match/contiguous-command merge and callback guard',
0x3a0168:'[C/I] alpha gate, temporary texture, reserve6/4, rectangle, texture pop',
0x3a719c:'[C/I] unsigned wrapping threshold65536/flag8 vertex offset rollover, ordered command/count/cursors',
0x3a7224:'[C/I] element count and logical size subtraction; actual cursors retained',
0x3a7020:'[C/I] exact4 vertices position/UV/color and6 low16 indices, write-cursor/current-index updates',
0x3a6e84:'[C/I] texture stack pop, empty→0/header/change',
0x3a65c4:'[C/I] full channel0 switch/trim, header/callback merge, offset rewrite, ordered concatenation/header repair',
0x3a8094:'[C/I] descriptor save/load with shared allocation, current channel/index cursor/header repair',
0x3a9220:'[C/I] trim trailing zero-element/no-callback commands',0x3a8ec0:'[C/I] zero current vertex and append/update vertex offset',
0x39fd18:'[C/I] zero native command, copy28-byte header, current index offset, append',
0x39eea0:'[C/I] wrapping logical command/vector decrement; underflow stops analysis',
0x39ef2c:'[C/I] growth then exact56-byte command append',0x39f294:'[C] zero all56 command bytes',
0x3a93cc:'[C/I] arbitrary-position command erase by overlap shift and decrement',
0x37a658:'[C/I] Address vector push/growth',0x39f030:'[C/I]16-byte clip vector push/growth',
0x37ad04:'[C/I] uint16 index vector resize/growth',0x37ad34:'[C/I]8-byte Address/Vec2 vector resize/growth',
0x37adc4:'[C/I]20-byte vertex vector resize/growth',0x37ae54:'[C/I]16-byte clip vector resize/growth',0x37ae84:'[C/I]56-byte command vector resize/growth',
0x37a6f8:'[C/I]2-byte index reserve, logical-size copy; owned allocation adaptation',
0x37a758:'[C/I]8-byte reserve, logical-size copy; owned allocation adaptation',
0x37a888:'[C/I]20-byte vertex reserve, logical-size copy; owned allocation adaptation',
0x37a9b8:'[C/I]16-byte clip reserve, logical-size copy; owned allocation adaptation',
0x37aa1c:'[C/I]56-byte command reserve, logical-size copy; owned allocation adaptation',
0x362efc:'[C] signed half truncation, wrapping1.5 growth, zero→8 and signed max(required,candidate)',
0x3a9908:'[C/I] logical vector size assignment; malformed sizes stop analysis',
0x3a3c30:'[C] splitter current0/count1',
0x395158:'[C/I/U] optional context allocation counter increment before typed allocator(target,user,size)',
0x39517c:'[C/I/U] nonnull optional-context counter decrement; null still calls typed free(target,user,object)',
}
shared={0x2cc340:'[C/I] Vec2 constructor expressed by owned position/UV values',0x2cc350:'[C/I] four-float constructor expressed by owned clip values',0x2db3a0:'[C/I] zero16 constructor included in complete command zeroing',0x38a3f4:'[C] source-operand MAXSS preserved in clip clamp',0x39e324:'[C/I] last command index(size-1) stride56; underflow stops analysis',0x38bb84:'[C] prior renderer_helpers signed32 index*8/data+8',0x38bb90:'[C/I] owned command index stride56',0x38bb9c:'[C/I] owned channel index stride32'}
manual={0x2cc340:0x2cc34d,0x2cc350:0x2cc36d,0x2db3a0:0x2db3ad,0x38a3f4:0x38a3f9,0x39e324:0x39e333,0x395158:0x39517b,0x39517c:0x3951a1,0x39eea0:0x39eea3,0x362efc:0x362f25,0x3a9908:0x3a990b,0x3a3c30:0x3a3c3e,0x3a8ec0:0x3a8eea,0x38bb84:0x38bb90,0x38bb90:0x38bb9c,0x38bb9c:0x38bba8}
records=[];dependencies={};branches=[];instruction_count=0
for begin,status in sorted({**implemented,**shared}.items()):
 matching=[b for a,b,u in pdata if a==begin];end=manual.get(begin,matching[0] if matching else None)
 if end is None:raise ValueError(hex(begin))
 output=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--insn-width=16',f'--start-address={begin}',f'--stop-address={end}',str(image)],text=True)
 (O/f'{begin:x}.asm').write_text(output);count=0;byte_count=0;ret=[]
 for line in output.splitlines():
  if not (m:=re.match(r'\s*([0-9a-f]+):\s+((?:[0-9a-f]{2} )+)\s*(.*)',line)):continue
  a=int(m[1],16);code=bytes.fromhex(m[2]);assert raw[a:a+len(code)]==code;count+=1;byte_count+=len(code)
  if re.match(r'(?:repz? )?ret',m[3]):ret.append(hex(a))
  if b:=re.match(r'(call|j\w+)\s+(0x[0-9a-f]+)',m[3]):
   target=int(b[2],16);branches.append(dict(body=hex(begin),site=hex(a),kind=b[1],target=hex(target),within=begin<=target<end))
   if b[1]=='call' or not begin<=target<end:
    d=dependencies.setdefault(target,dict(target=hex(target),status=implemented.get(target,shared.get(target,('[I/U] host memcmp/memmove implements reached equality/overlap copying; full CRT body not credited' if target in [0x3c8d14,0x3c8d4c] else '[U] separate native helper; no body completion inferred'))),sites=[]));d['sites'].append(hex(a))
 assert byte_count==end-begin,(hex(begin),byte_count,end-begin)
 records.append(dict(begin=hex(begin),end=hex(end),bytes=end-begin,instructions=count,status=status,ret_sites=ret,bound='exact leaf/thunk end' if begin in manual else '.pdata BeginAddress/EndAddress',implemented=begin in implemented));instruction_count+=count
result=dict(image=str(image),sha256=hashlib.sha256(raw).hexdigest(),ranges=records,implemented_ranges=len(implemented),implemented_bytes=sum(x['bytes'] for x in records if x['implemented']),instruction_lines_byte_checked=instruction_count,branches=branches)
(O/'audit.json').write_text(json.dumps(result,indent=2)+'\n');(O/'dependencies.json').write_text(json.dumps(sorted(dependencies.values(),key=lambda x:int(x['target'],16)),indent=2)+'\n')
cpp=['#include "drawlist_core_analysis.hpp"','namespace rust_internal_re {','namespace {','const RendererCoverage ranges[]={']+[f'    {{{x["begin"]},{x["end"]},{json.dumps(x["status"])}}},' for x in records]+['};','}','std::span<const RendererCoverage> drawlist_core_coverage(){return ranges;}','}']
Path('source/reconstructed/drawlist_core_coverage.cpp').write_text('\n'.join(cpp)+'\n');print(json.dumps({k:v for k,v in result.items() if k not in ['ranges','branches']},indent=2));print(len(dependencies),'unique direct dependencies;',len(branches),'direct branch/call sites')
