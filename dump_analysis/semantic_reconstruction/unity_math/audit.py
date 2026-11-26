#!/usr/bin/env python3
"""Byte, branch and literal checks on the copied DLL; no instruction execution."""
from pathlib import Path
import hashlib,json,re,subprocess
root=Path(__file__).resolve().parents[3]
dll=root/'dump_analysis/unpacked/cheat.unpacked.dll'
data=dll.read_bytes()
assert hashlib.sha256(data).hexdigest()=='ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
groups={
    'font_builder_support':[(0x3a3e10,0x3a3e64),(0x3a3e64,0x3a3ea3),
        (0x379578,0x3795a4),(0x3a5950,0x3a59bc),(0x3a4d18,0x3a4d50),(0x3a4d50,0x3a4dae)],
    'menu_render':[(0x3a7400,0x3a761f),(0x2d4870,0x2d487b),(0x2ef9d8,0x2efa03),(0x38bc08,0x38bc2b)],
    'unity_math':[(0x2dff68,0x2e0080),(0x2e0198,0x2e02b0),(0x2e3d5c,0x2e3e91),
        (0x2de97c,0x2de9d3),(0x2de9d4,0x2dea4c),(0x2ddbf8,0x2ddc00),
        (0x2dcfd4,0x2dd034),(0x2d8114,0x2d8144)],
    'font_producer_inventory':[(0x3a3394,0x3a33c0),(0x3a4994,0x3a49eb),(0x3a49ec,0x3a4ab9),(0x3a653c,0x3a6552)]
}
pattern=re.compile(r'^\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s+)+)\s*(.*?)\s*$')
strings={0x28d9ec:b'Random\0',0x28d9f8:b'UnityEngine\0',0x28da2c:b'Mathf\0',0x28da04:b'Range\0'}
for at,expected in strings.items():
    decoded=bytes(v^((0x37+i%52)&255) for i,v in enumerate(data[at:at+len(expected)]))
    assert decoded==expected,(hex(at),decoded)
for at,expected in [(0x2dfad0,b'Cos\0'),(0x2dfaf8,b'Sin\0')]:
    assert data[at:at+2]==b'\xc7\x02'
    assert bytes(v^(0x37+i) for i,v in enumerate(data[at+2:at+6]))==expected
for group,ranges in groups.items():
    work=root/'dump_analysis/semantic_reconstruction'/group
    work.mkdir(exist_ok=True)
    ledger=[];branches=[];calls=[]
    for lo,hi in ranges:
        text=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--insn-width=16',
            f'--start-address={lo}',f'--stop-address={hi}',str(dll)],text=True)
        (work/f'{lo:x}.asm').write_text(text)
        end=lo;decoded=[]
        for line in text.splitlines():
            match=pattern.match(line)
            if not match:continue
            at=int(match[1],16);raw=bytes.fromhex(match[2]);asm=match[3]
            assert at==end and data[at:at+len(raw)]==raw
            end=at+len(raw);decoded.append((at,asm))
            if re.match(r'j\w+\s',asm):branches.append([hex(at),asm])
            if re.match(r'call\s',asm):calls.append([hex(at),asm])
        assert end==hi
        starts={at for at,_ in decoded}
        for at,asm in decoded:
            match=re.match(r'j\w+\s+0x([0-9a-f]+)$',asm)
            if match and lo<=int(match[1],16)<hi:assert int(match[1],16) in starts
        ledger.append({'begin':hex(lo),'end_exclusive':hex(hi),'instructions':len(decoded),
            'bytes':hi-lo,'sha256':hashlib.sha256(data[lo:hi]).hexdigest()})
    record={'input_sha256':hashlib.sha256(data).hexdigest(),'ranges':ledger,'branches':branches,'calls':calls,
        'limits':'Byte provenance, boundary and branch inventory only. Unknown stack/return bytes unmaterialized; context/executor execution excluded. Default atlas builder3a59bc remains local closure.'}
    (work/'audit.json').write_text(json.dumps(record,indent=2)+'\n')
    print(group,len(ledger),sum(r['bytes'] for r in ledger),sum(r['instructions'] for r in ledger),'PASS')
