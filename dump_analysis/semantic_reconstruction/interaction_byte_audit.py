from pathlib import Path
import hashlib,re,struct,subprocess
root=Path('/home/john/Desktop/cheat_re')
out=root/'dump_analysis/semantic_reconstruction'
image=root/'dump_analysis/unpacked/cheat.unpacked.dll'
b=image.read_bytes()
ranges=[(0x2e12e0,0x2e231d),(0x2e6b20,0x2e890d),(0x2e91fc,0x2e92ae),
        (0x2e091c,0x2e09ef),(0x2e0ff0,0x2e124a),(0x2e1278,0x2e12df),
        (0x2e6340,0x2e6740),(0x2e8a30,0x2e8e85),(0x32bb60,0x32bd4c)]
rows=[]
for start,end in ranges:
    text=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel','--insn-width=16',f'--start-address={start}',f'--stop-address={end}',str(image)],text=True)
    (out/f'interaction_{start:x}_raw.asm').write_text(text)
    decoded=[]
    for line in text.splitlines():
        m=re.match(r'\s*([0-9a-f]+):\s+((?:[0-9a-f]{2} )+)\s*(.*)',line)
        if not m:continue
        r=int(m[1],16); raw=bytes.fromhex(m[2]); assert b[r:r+len(raw)]==raw
        decoded.append((r,raw,m[3]))
    assert decoded and decoded[0][0]==start
    assert decoded[-1][0]+len(decoded[-1][1])==end
    rets=[hex(r) for r,raw,asm in decoded if asm.startswith('ret')]
    rows.append(f'{start:#x}..{end:#x}: {len(decoded)} instructions; RETs {rets}; sha256 {hashlib.sha256(b[start:end]).hexdigest()}')
for relative in ['01_hooks/2e12e0.asm','01_hooks/2e91fc.asm']:
    n=0
    for line in (out/relative).read_text().splitlines():
        m=re.match(r'^([0-9a-f]+)  ((?:[0-9a-f]{2} )+)',line)
        if not m:continue
        r=int(m[1],16); raw=bytes.fromhex(m[2]); assert b[r:r+len(raw)]==raw; n+=1
    rows.append(f'Existing excerpt {relative}: {n} instruction byte sequences match virtual-layout DLL.')
for r,kind in [(0x28daf0,'d'),(0x28daf8,'f'),(0x28e1c4,'f'),(0x28e1c8,'f'),(0x28e1cc,'f'),(0x28e1d0,'f'),(0x28e1d8,'d'),(0x28e1e0,'f'),(0x28e1e4,'f'),(0x28e1ec,'f'),(0x2930f4,'f')]:
    rows.append(f'literal {r:#x}: {b[r:r+struct.calcsize(kind)].hex()} = {struct.unpack_from("<"+kind,b,r)[0]!r}')
rows.append('Explicit exact-byte disassembly includes the alternate 0x2e65b3 branch after RET 0x2e65b2 through 0x2e673f.')
rows.append('No sample execution. All disassembly is objdump reading a virtual-layout file (file offset = RVA).')
(out/'interaction_byte_verification.txt').write_text('\n'.join(rows)+'\n')
print('\n'.join(rows))
