#!/usr/bin/env python3
"""Fresh static byte/branch audit of shadow geometry. Never executes sample code."""
from pathlib import Path
import hashlib,json,re,subprocess
root=Path(__file__).resolve().parents[3]
work=Path(__file__).resolve().parent
sample=root/'dump_analysis/unpacked/cheat.unpacked.dll'
data=sample.read_bytes()
assert hashlib.sha256(data).hexdigest()=='ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
ranges=[(0x3a1410,0x3a1561),(0x3a1564,0x3a200e),(0x3a2010,0x3a2373),
        (0x3a2374,0x3a2b32),(0x3a2b34,0x3a31b9),(0x3a3ea4,0x3a4380),
        (0x3a6b38,0x3a6b77),(0x3a6554,0x3a6589),(0x3a4b28,0x3a4b3f),
        (0x3933f4,0x39340a),(0x39f728,0x39f73b),(0x38cc68,0x38cc86),
        (0x37ca00,0x37ca2b),(0x38bc2c,0x38bc57),(0x383044,0x38306f),(0x383070,0x38309b)]
pattern=re.compile(r'^\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s+)+)\s*(.*?)\s*$')
ledger=[];branches=[];calls=[]
for lo,hi in ranges:
    assembly=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--insn-width=16',f'--start-address={lo}',f'--stop-address={hi}',str(sample)],text=True)
    (work/f'{lo:x}.asm').write_text(assembly)
    end=lo;decoded=[]
    for line in assembly.splitlines():
        match=pattern.match(line)
        if not match:continue
        at=int(match[1],16);raw=bytes.fromhex(match[2]);asm=match[3]
        assert at==end and data[at:at+len(raw)]==raw,(hex(at),hex(end))
        end=at+len(raw);decoded.append((at,asm))
        if re.match(r'j\w+\s',asm):branches.append({'at':hex(at),'instruction':asm})
        if re.match(r'call\s',asm):calls.append({'at':hex(at),'instruction':asm})
    assert end==hi
    starts={at for at,_ in decoded}
    for at,asm in decoded:
        match=re.match(r'j\w+\s+0x([0-9a-f]+)$',asm)
        if match and lo<=int(match[1],16)<hi:assert int(match[1],16) in starts
    ledger.append({'begin':hex(lo),'end_exclusive':hex(hi),'bytes':hi-lo,'instructions':len(decoded),'sha256':hashlib.sha256(data[lo:hi]).hexdigest()})
record={'input_sha256':hashlib.sha256(data).hexdigest(),'ranges':ledger,'branches':branches,'calls':calls,'scope':'Static provenance and branch boundary inventory; owned container/storage adaptation, default floating environment, no live ABI or sample execution.'}
(work/'audit.json').write_text(json.dumps(record,indent=2)+'\n')
print('ranges',len(ledger),'bytes',sum(r['bytes'] for r in ledger),'instructions',sum(r['instructions'] for r in ledger),'branches',len(branches),'calls',len(calls))
print('targets',sorted(set(c['instruction'] for c in calls)))
