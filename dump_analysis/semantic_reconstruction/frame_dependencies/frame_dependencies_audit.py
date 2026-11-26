"""[I] Offline byte/branch audit. Reads owned DLL bytes; executes no sample code."""
from pathlib import Path
import re,hashlib,json,struct
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/frame_dependencies'
image=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
rows=[]
for line in (root/'dump_analysis/static/cheat_text.asm').read_text().splitlines():
 m=re.match(r'\s*([0-9a-f]+):\t([0-9a-f ]+)\t?(.*)',line)
 if not m:continue
 address=int(m[1],16);raw=bytes.fromhex(m[2]);assert image[address:address+len(raw)]==raw
 rows.append((address,raw,m[3]))
starts={a for a,_,_ in rows}
# [C] Exclusive pdata bounds, including both text-fitter alternate returns and
# setup's jump into a separate pdata function rather than treating it as ret.
ranges=[(0x37f990,0x37fb14),(0x37eff0,0x37f88a),(0x389830,0x389db4),(0x3893b0,0x38982e),(0x388b4c,0x388c0b),(0x386fa4,0x38724c),(0x3872e8,0x3873ee),(0x38724c,0x387272),(0x389e84,0x389f18),(0x3873f0,0x3874d2),(0x388a14,0x388b49),(0x384df0,0x3853b0),(0x3810f0,0x3811c2),(0x381020,0x3810f0),(0x38128c,0x381355),(0x39045c,0x3904df),(0x3795a4,0x3795d2),(0x37898c,0x3789f9),(0x386acc,0x386def),(0x389220,0x3893ad),(0x2db318,0x2db387),(0x382de8,0x382e27),(0x364f20,0x364f4e),(0x35a8c0,0x35aa86),(0x35cc58,0x35ccf2),(0x364aec,0x364ba2),(0x364ba4,0x364c53),
(0x2ddcfc,0x2ddd22),(0x2ddcc0,0x2ddce6),(0x2ddc7c,0x2ddca5),(0x2ddc00,0x2ddc4a),
(0x2e9fdc,0x2ea017),(0x2e9f18,0x2e9f49),(0x2e9f60,0x2e9faa),(0x323008,0x32305c),
(0x2e3f60,0x2e3fb4),(0x2d9734,0x2d9788),(0x2d2c44,0x2d2cae),(0x2d2cb0,0x2d2d21),
(0x2d2d24,0x2d2eb9),(0x2d2ebc,0x2d2f37),(0x2d2f38,0x2d3002),(0x2d3004,0x2d3151),
(0x2d3154,0x2d3292),(0x2d3294,0x2d33ee),(0x2d33f0,0x2d3560),(0x2d3560,0x2d35de),
(0x3c87f0,0x3c88ec),(0x3c88ec,0x3c8918),(0x2d8e44,0x2d8f74),(0x3ca9c0,0x3cab82),(0x2d9068,0x2d90da),(0x2dd5e8,0x2dd633),(0x2dbb70,0x2dbbdd),(0x2dbb00,0x2dbb6d),(0x2d5be4,0x2d5cd5),
(0x2dbbe0,0x2dbebd),(0x2dbec0,0x2dc19d),(0x2d91c4,0x2d92eb),
(0x2e5b7c,0x2e5bc3),(0x2e89e4,0x2e8a2d),(0x35aad8,0x35abee),
(0x35cb18,0x35cb40),(0x37f918,0x37f98e),(0x35d350,0x35d40c),
(0x35d40c,0x35d4c8),(0x35d220,0x35d31b),(0x35bc70,0x35c25a),
(0x314bb4,0x314f08),(0x307638,0x3096c1),(0x318d74,0x318f31),
(0x35d5ac,0x3612f7),(0x36f788,0x36f8b5),
(0x2dd284,0x2dd2db),(0x2dd2ec,0x2dd53d),(0x315c34,0x3163d5),(0x35ccf4,0x35d1fd)]
e=struct.unpack_from('<I',image,0x3c)[0];pd,size=struct.unpack_from('<II',image,e+24+112+24)
pdata={(b,e) for b,e,_ in (struct.unpack_from('<III',image,a) for a in range(pd,pd+size,12))}
audit=[];branches=[]
for begin,end in ranges:
 assert (begin,end) in pdata or (begin,end) in {(0x3c87f0,0x3c88ec),(0x3c88ec,0x3c8918)},(hex(begin),hex(end))
 selected=[(a,b,t) for a,b,t in rows if begin<=a<end]
 for a,b,t in selected:
  m=re.match(r'(j\w+)\s+0x([0-9a-f]+)',t)
  if m:
   target=int(m[2],16);assert target in starts,(hex(a),hex(target))
   branches.append(dict(site=hex(a),target=hex(target),inside=begin<=target<end,instruction=t))
 audit.append(dict(begin=hex(begin),end=hex(end),instructions=len(selected),sha256=hashlib.sha256(image[begin:end]).hexdigest(),last=selected[-1][2]))
(out/'frame_dependencies_byte_audit.json').write_text(json.dumps(dict(input_sha256=hashlib.sha256(image).hexdigest(),verified_fragments=len(rows),ranges=audit),indent=2)+'\n')
(out/'frame_dependencies_branch_audit.json').write_text(json.dumps(branches,indent=2)+'\n')
print('PASS',len(rows),'byte fragments;',len(ranges),'code ranges;',len(branches),'direct branches')
