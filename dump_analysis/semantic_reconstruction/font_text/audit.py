#!/usr/bin/env python3
# [I] Read-only static instruction/branch audit. No sample instruction executes.
import hashlib,json,re,subprocess
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');scratch=root/'dump_analysis/semantic_reconstruction/font_text';dll=root/'dump_analysis/unpacked/cheat.unpacked.dll';data=dll.read_bytes()
primary=[(0x36135c,0x361bca),(0x361bcc,0x362116),(0x3a31f8,0x3a3335),(0x3a33c0,0x3a36df),(0x3a37c8,0x3a3856),(0x3a4b40,0x3a4caf),(0x3a4f38,0x3a5008),(0x3a5008,0x3a5202),(0x3a5204,0x3a594f),(0x3a792c,0x3a7f71)]
helpers=[(0x3a4520,0x3a4554),(0x3a4554,0x3a4586),(0x3a44d4,0x3a4520),(0x3a8160,0x3a8183),(0x3a4abc,0x3a4b06),(0x39ff7c,0x3a0168),(0x3a43ac,0x3a43d0),(0x3a43d0,0x3a44d3),(0x3a45b4,0x3a461c),(0x3a461c,0x3a470c),(0x3a6554,0x3a658c),(0x3a658c,0x3a6591),(0x3c8da8,0x3c8df1),(0x3c899c,0x3c8a6c),(0x3a3770,0x3a3775),(0x3a3778,0x3a37c6),(0x3a3858,0x3a3871),(0x3a4734,0x3a473a),(0x3a473c,0x3a4745),(0x3a498c,0x3a4992),(0x35d200,0x35d220),(0x35d220,0x35d31b),(0x35d31c,0x35d34d),(0x3930ac,0x3930b8),(0x2cd7ec,0x2cd7f1),(0x2cd4e4,0x2cd50a),(0x2cd464,0x2cd46d),(0x2cb3a4,0x2cb3a8),(0x3762bc,0x3762cc),(0x3762cc,0x3762d1),(0x38a3f4,0x38a3f9),(0x3c8f34,0x3c8f39),(0x2e3c88,0x2e3ce1),(0x39045c,0x3904df),(0x3789fc,0x378a14),(0x2ef80c,0x2ef811),(0x2ef7dc,0x2ef7e0),(0x3762ac,0x3762bc),(0x3367b8,0x3367c0),(0x364aec,0x364ba2),(0x38a3c4,0x38a3c9)]
pdata={int(x[0],16):x for x in json.loads((root/'dump_analysis/semantic_reconstruction/pdata.json').read_text())}
pattern=re.compile(r'^\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s+)+)\s*(.*?)\s*$')
def instructions(txt):
    out=[]
    for line in txt.splitlines():
        m=pattern.match(line)
        if m:out.append((int(m[1],16),bytes.fromhex(m[2]),m[3]))
    return out
ranges=[];branches=[];calls={};fresh_count=archived_count=0
for lo,hi in primary+helpers:
    text=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--insn-width=16',f'--start-address={lo}',f'--stop-address={hi}',str(dll)],text=True)
    (scratch/f'{lo:x}.fresh.asm').write_text(text)
    decoded=instructions(text);covered=bytearray(hi-lo)
    for addr,raw,asm in decoded:
        assert data[addr:addr+len(raw)]==raw,(hex(addr),'fresh mismatch')
        for i in range(addr,addr+len(raw)):
            if lo<=i<hi:covered[i-lo]=1
        if re.match(r'j\w+\s',asm):branches.append({'site':hex(addr),'instruction':asm,'range':hex(lo)})
        if re.match(r'call\s',asm):calls.setdefault(asm.split('#')[0].strip(),[]).append(hex(addr))
    assert all(covered),(hex(lo),'unaccounted instruction bytes')
    fresh_count+=len(decoded)
    archived=root/f'dump_analysis/semantic_reconstruction/renderer_helpers/{lo:x}.asm'
    n=0
    if archived.exists():
        for addr,raw,asm in instructions(archived.read_text()):
            if lo<=addr<hi:assert data[addr:addr+len(raw)]==raw,(hex(addr),'archived mismatch');n+=1
    archived_count+=n
    ranges.append({'begin':hex(lo),'end_exclusive':hex(hi),'role':'primary' if (lo,hi) in primary else 'folded helper','sha256':hashlib.sha256(data[lo:hi]).hexdigest(),'instruction_count':len(decoded),'archived_spans_checked':n,'pdata':pdata.get(lo),'all_bytes_decoded':True})
report={'input':str(dll.relative_to(root)),'sha256':hashlib.sha256(data).hexdigest(),'ranges':ranges,'fresh_spans':fresh_count,'archived_spans':archived_count,'branches':branches,'direct_call_sites':calls,'notice':'Byte provenance and branch inventory only; semantic assertions and limitations documented separately.'}
(scratch/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({'fresh':fresh_count,'archived':archived_count,'ranges':len(ranges),'branches':len(branches),'call_targets':len(calls)}))
for k,v in calls.items():print(k,len(v))
