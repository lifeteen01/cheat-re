#!/usr/bin/env python3
"""[I] Read-only byte provenance and explicit native boundary ledger."""
from pathlib import Path
import hashlib,json,re,struct,subprocess
root=Path(__file__).resolve().parents[3]
out=Path(__file__).resolve().parent
image=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
# [C] End addresses exclude following padding; pdata bounds used where present.
ranges=[
(0x2ef724,0x2ef752,'baseline operator[]'),(0x2df608,0x2df636,'identity operator[]'),
(0x369e70,0x369f6b,'identity construction; all returns'),
(0x2ecc20,0x2ecd56,'baseline map insertion'),(0x2de574,0x2de6aa,'identity map insertion'),
(0x2d07d4,0x2d0861,'baseline find including alternate miss tail'),
(0x2de154,0x2de1e1,'identity find including alternate miss tail'),
(0x2cf0e4,0x2cf0ec,'integer hash forwarding'),(0x2cf0ec,0x2cf11c,'integer inequality'),
(0x2d553c,0x2d5541,'hash forwarding only'),(0x2d5544,0x2d554d,'integer equality'),
(0x2d6fa0,0x2d6fa5,'hash forwarding only'),(0x2d0ae4,0x2d0af6,'integer FNV basis'),
(0x2d089c,0x2d08a7,'four-byte hash span'),(0x2d7078,0x2d70a2,'FNV64 full loop and zero-length return'),
(0x2dde94,0x2dde9c,'string hash forwarding'),(0x2dde9c,0x2ddecc,'string inequality'),
(0x2dfd98,0x2dfd9d,'string hash forwarding only'),(0x2dfda0,0x2dfdab,'string equality forwarding only'),
(0x2cef30,0x2cef35,'string equality forwarding only'),(0x2d6fd4,0x2d701e,'string equality arguments'),
(0x2d1988,0x2d19b6,'length-aware equality'),(0x2e2b78,0x2e2baa,'string hash'),
(0x2de2e8,0x2de2fd,'string FNV basis'),
(0x319824,0x31984f,'baseline maximum-size check/trap'),(0x2e2a4c,0x2e2a77,'identity maximum-size check/trap'),
(0x2ea1b0,0x2ea228,'baseline temporary node'),(0x2ddd64,0x2ddddc,'identity temporary node'),
(0x31937c,0x3193a4,'baseline allocation'),(0x2e28a0,0x2e28c8,'identity allocation'),
(0x31a884,0x31a89c,'baseline allocation route'),(0x2e3294,0x2e32ac,'identity allocation route'),
(0x2ebfec,0x2ec012,'48-byte node size and overflow'),(0x2de298,0x2de2be,'96-byte node size and overflow'),
(0x2ed350,0x2ed39b,'baseline pair forwarding'),(0x2deaa4,0x2deaef,'identity pair forwarding'),
(0x2ed5f0,0x2ed663,'baseline pair construction'),(0x2deb40,0x2debb3,'identity pair construction'),
(0x2ea040,0x2ea069,'baseline pair constructor'),(0x2ea4d0,0x2ea50b,'baseline key/value stores'),
(0x2eee78,0x2eee98,'baseline no-op member constructors'),(0x2ddd38,0x2ddd61,'identity pair constructor'),
(0x2dde50,0x2dde86,'identity key/value constructor'),(0x2df388,0x2df3ab,'identity payload constructor'),
(0x2d4560,0x2d4583,'empty byte string constructor'),(0x2d6e98,0x2d6ece,'empty byte string initialization'),
(0x2d7328,0x2d73cb,'native node links and bucket first/last'),
(0x2d6d44,0x2d6dce,'load threshold and uint64 float conversion'),
(0x319a00,0x319a73,'baseline growth count'),(0x2e2b04,0x2e2b77,'identity growth count'),
(0x319be8,0x319df2,'baseline complete rehash including alternate splice tail'),
(0x2e2bac,0x2e2db6,'identity complete rehash including alternate splice tail'),
(0x2d7af8,0x2d7b1d,'list range splice'),
(0x2d45c8,0x2d460d,'wide C-string copy'),(0x3cab84,0x3cab97,'UTF16 zero scan'),
(0x2d8728,0x2d877b,'wide end iterator'),(0x2d7d40,0x2d7d8e,'wide begin iterator'),
(0x2cee44,0x2ceedd,'wide iterator range to byte string'),(0x2cf59c,0x2cf65e,'byte string allocation and conversion'),
(0x2cf7e4,0x2cf7ff,'UTF16 low-byte conversion full tail'),
(0x32c2d9,0x32c3c4,'shot curve lazy metadata/context fold; exclusive end'),
(0x32b728,0x32b7a0,'curve typed wrapper including final tail jump'),
(0x2e1432,0x2e14a1,'melee class/allocation fold including both failure branches'),
(0x2e3ce4,0x2e3d5c,'cached object allocator wrapper and final tail jump'),
(0x2cb9fc,0x2cba4f,'one-argument object wrapper'),
(0x2cc730,0x2cc737,'encrypted empty literal'),(0x2cd9dc,0x2cd9e3,'empty literal XOR decoder'),
(0x2cc268,0x2cc26f,'qword argument copy'),(0x2ddbf8,0x2ddc00,'float argument copy'),
(0x3cdbb0,0x3cdbb1,'return thunk')]
# [C] Compare every recorded byte span in this task's evidence to preserved input.
checks=[]
for path in sorted(out.glob('*.asm')):
 if path.name=='exact_objdump.asm':continue
 count=0
 for line in path.read_text().splitlines():
  match=re.match(r'^([0-9a-f]{6})  ((?:[0-9a-f]{2} )+)',line)
  if not match:continue
  at=int(match[1],16);recorded=bytes.fromhex(match[2])
  assert recorded==image[at:at+len(recorded)],(path.name,hex(at))
  count+=1
 checks.append({'file':path.name,'verified_instruction_spans':count})
lines=(root/'dump_analysis/static/cheat_annot.asm').read_text().splitlines()
parsed=[]
for line in lines:
 m=re.match(r'^([0-9a-f]+)\t(.*)',line)
 if m:parsed.append((int(m[1],16),m[2]))
ledger=[]
with (out/'exact_objdump.asm').open('w') as raw:
 for start,end,role in ranges:
  raw.write(f'; [C] exact range 0x{start:x}..0x{end:x} {role}\n')
  raw.write(subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel',f'--start-address={start}',f'--stop-address={end}',str(root/'dump_analysis/unpacked/cheat.unpacked.dll')],text=True))
  edges=[]
  for address,assembly in parsed:
   if start<=address<end:
    m=re.search(r'(?:call|jmp)\s+0x([0-9a-f]+)',assembly)
    if m:edges.append({'site':hex(address),'target':hex(int(m[1],16))})
  ledger.append({'start':hex(start),'end_exclusive':hex(end),'role':role,'sha256':hashlib.sha256(image[start:end]).hexdigest(),'direct_edges':edges})
assert struct.unpack_from('<Q',image,0x2d0ae7+2)[0]==0xcbf29ce484222325
assert struct.unpack_from('<Q',image,0x2d7085+2)[0]==0x100000001b3
assert image[0x2ea4f6:0x2ea4f9]==bytes.fromhex('0f1101')
assert image[0x2df398:0x2df39f]==bytes.fromhex('66894320894324')
assert image[0x2cf7e9:0x2cf7f2]==bytes.fromhex('8a01488d4902418800')
(out/'byte_audit.json').write_text(json.dumps({'status':'[C] passed','input_sha256':hashlib.sha256(image).hexdigest(),'recorded_span_checks':checks,'ledger':ledger},indent=2)+'\n')
print(f'[C] {len(ranges)} explicit ranges; {sum(c["verified_instruction_spans"] for c in checks)} byte spans agree with preserved DLL')
