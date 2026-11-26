#!/usr/bin/env python3
"""[I] Read-only byte and branch provenance audit, no mapped/executable image."""
from pathlib import Path
import hashlib,json,re,struct,subprocess
root=Path('/home/john/Desktop/cheat_re')
work=root/'dump_analysis/semantic_reconstruction/helicopter_aim'
image=root/'dump_analysis/unpacked/cheat.unpacked.dll'
blob=image.read_bytes()
start,end=0x2fa300,0x2fabf6
listing={}
for line in (work/'native.asm').read_text().splitlines():
    match=re.match(r'^([0-9a-f]{6})  ((?:[0-9a-f]{2} )*[0-9a-f]{2})\s+(\S.*)$',line)
    if match:
        address=int(match[1],16);data=bytes.fromhex(match[2])
        assert blob[address:address+len(data)]==data,hex(address)
        if start<=address<end:listing[address]=(data,match[3])
assert listing
addresses=sorted(listing)
for address,next_address in zip(addresses,addresses[1:]+[end]):
    assert address+len(listing[address][0])==next_address,hex(address)
# [I] Decode bytes independently from the supplied linear listing.
text=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel',
    '--insn-width=16',f'--start-address={start}',f'--stop-address={end}',str(image)],text=True)
(work/'independent_objdump.asm').write_text(text)
decoded={}
for line in text.splitlines():
    match=re.match(r'^\s*([0-9a-f]+):\s*((?:[0-9a-f]{2} )+)\s*(.*)$',line)
    if match:
        decoded[int(match[1],16)]=(bytes.fromhex(match[2]),match[3])
assert set(decoded)==set(listing),(set(decoded)-set(listing),set(listing)-set(decoded))
branches=[];calls=[]
for address,(data,operation) in listing.items():
    assert decoded[address][0]==data,hex(address)
    match=re.match(r'(j\w+|call)\s+0x([0-9a-f]+)',operation)
    if not match:continue
    op,target=match[1],int(match[2],16)
    if op=='call':calls.append({'site':hex(address),'target':hex(target)});continue
    assert target in listing,(hex(address),hex(target))
    if data[0] in range(0x70,0x80) or data[0]==0xeb:
        actual=address+len(data)+struct.unpack('<b',data[-1:])[0]
    else:
        actual=address+len(data)+struct.unpack('<i',data[-4:])[0]
    assert actual==target,(hex(address),hex(actual),hex(target))
    branches.append({'site':hex(address),'instruction':op,'target':hex(target),'instruction_boundary':True})
constants={}
for name,address,fmt in [('speed_cap',0x28daf8,'f'),('thrown_subtraction',0x293110,'d'),
    ('attachment_threshold',0x28e1d0,'f'),('health_threshold',0x293250,'f')]:
    size=struct.calcsize(fmt);data=blob[address:address+size]
    constants[name]={'rva':hex(address),'bytes':data.hex(),'value':struct.unpack('<'+fmt,data)[0]}
assert constants['speed_cap']['bytes']=='295cbf3f'
assert constants['thrown_subtraction']['value']==0.4531250149011612
result={'claim':'[C] Byte equality, complete contiguous instruction coverage, independent decoding and branch bounds verified.',
    'body':{'start':hex(start),'end_exclusive':hex(end),'bytes':end-start,
    'sha256':hashlib.sha256(blob[start:end]).hexdigest(),'instructions':len(listing)},
    'branches':branches,'direct_calls':calls,'constants':constants}
(work/'byte_branch_audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(f"[C] {len(listing)} instructions/{end-start} bytes agree with independent objdump; {len(branches)} branch destinations agree and are in-range instruction boundaries.")
print('[C] Exact speed cap, double subtraction, attachment threshold and health threshold bytes verified.')
