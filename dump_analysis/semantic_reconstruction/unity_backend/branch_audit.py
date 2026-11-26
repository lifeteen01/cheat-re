import re,struct
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');b=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
rows=[]
for l in (root/'dump_analysis/static/cheat_text.asm').read_text().splitlines():
 m=re.match(r'\s*([0-9a-f]+):\t([0-9a-f ]+)\t?(.*)',l)
 if m and m[3]:rows.append((int(m[1],16),m[3]))
starts={a for a,t in rows};e=struct.unpack_from('<I',b,60)[0];r,n=struct.unpack_from('<II',b,e+24+112+24)
fns=dict(struct.unpack_from('<III',b,x)[:2] for x in range(r,r+n,12))
selected=[0x3b2b38,0x3b337c,0x3b3028,0x3b1a94,0x3b4250,0x3b2004,0x2f8574,0x3b3240,0x3b1904,0x3b2eec,0x375abc,0x375c08]
out=[]
for a in selected:
 z=fns[a];body=[(x,t) for x,t in rows if a<=x<z];out.append(f'Function {a:x}..{z:x}')
 for x,t in body:
  if t=='ret':out.append(f'  return {x:x}: {b[x:x+1].hex()}')
  m=re.match(r'j\w*\s+0x([0-9a-f]+)',t)
  if m:
   target=int(m[1],16);assert target in starts,(hex(x),hex(target))
   out.append(f'  {x:x}: {t}; '+('inside function' if a<=target<z else 'tail edge outside function'))
out.append('Native command-count initializer27fa54='+hex(struct.unpack_from('<I',b,0x27fa54)[0]))
out.append('Shader runtime-type initializer27f9a8='+hex(struct.unpack_from('<Q',b,0x27f9a8)[0]))
(root/'dump_analysis/semantic_reconstruction/unity_backend/branch_audit.txt').write_text('\n'.join(out)+'\n')
print(f'Checked every direct branch target in {len(selected)} core bodies against instruction starts and pdata bounds.')
