import re,json,struct,hashlib
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re'); data=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
lines=[]
for l in (root/'dump_analysis/static/cheat_text.asm').read_text().splitlines():
 m=re.match(r'\s*([0-9a-f]+):\t[0-9a-f ]+\t(.*)',l)
 if m:lines.append((int(m[1],16),m[2]))
idx={a:i for i,(a,t) in enumerate(lines)}
def body(a):
 out=[]
 for x,t in lines[idx[a]:]:
  out.append((x,t))
  if t=='ret' or (t.startswith('jmp') and len(out)>1 and out[-2][1].startswith('pop')):break
 return out
sizes={'BYTE':1,'WORD':2,'DWORD':4,'QWORD':8,'XMMWORD':16}
def canon(x):return {'eax':'rax','ax':'rax','al':'rax'}.get(x,x)
def literal(loader,decoder):
 regs={}; buf={}
 for a,t in body(loader):
  m=re.match(r'movabs (\w+),0x([0-9a-f]+)',t)
  if m:regs[canon(m[1])]=int(m[2],16).to_bytes(8,'little')
  m=re.search(r'(?:mov\w*)\s+(\w+),(\w+) PTR \[rip.*# 0x([0-9a-f]+)',t)
  if m:
   reg,sz,addr=m.groups(); regs[canon(reg)]=data[int(addr,16):int(addr,16)+sizes[sz]]
  m=re.match(r'mov\w*\s+(?:(\w+) PTR )?\[rdx(?:\+0x([0-9a-f]+))?\],(\w+)',t)
  if m:
   sz,off,reg=m.groups(); n=sizes.get(sz,16 if reg.startswith('xmm') else 8); off=int(off or '0',16)
   val=int(reg,16).to_bytes(n,'little') if reg.startswith('0x') else regs[canon(reg)][:n]
   buf.update({off+i:v for i,v in enumerate(val)})
 dec=body(decoder); dest=int(re.findall(r'call\s+0x([0-9a-f]+)',' '.join(t for a,t in dec))[-1],16)
 db=body(dest); txt=' '.join(t for a,t in db)
 n=int(re.search(r'cmp\s+r9d,0x([0-9a-f]+)',txt)[1],16)
 width=2 if 'WORD PTR [r10+r9*2]' in txt else 1
 enc=bytes(buf[i] for i in range(n*width))
 out=[]
 for i in range(n):
  v=int.from_bytes(enc[i*width:(i+1)*width],'little')^((i%56)+0x37)
  out.append(v)
 return ''.join(map(chr,out)).rstrip('\0'),enc.hex(),dest
wrappers=[0x2e069c,0x2e6744,0x3151bc,0x36b2d4,0x368280,0x368370,0x367fe0,0x36ad9c,0x370754,0x370fac,0x370e84,0x373248,0x37301c,0x372efc,0x3710dc,0x370d64,0x375abc,0x37361c,0x3747d4,0x374aa4,0x375140,0x37527c,0x36c670,0x36caa8]
result={}
for w in wrappers+[0x32f408,0x36a464]:
 b=body(w); calls=[(a,int(re.search(r'0x([0-9a-f]+)',t)[1],16)) for a,t in b if t.startswith('call')]; pairs=[]
 for (a,x),(bb,y) in zip(calls,calls[1:]):
  if any('mov    rbx,rcx' in t for _,t in body(y)[:6]):
   try:s,enc,dec=literal(x,y);pairs.append((hex(x),hex(y),s,enc,hex(dec)))
   except Exception:pass
 result[hex(w)]={'end':hex(b[-1][0]),'pairs':pairs,'globals':[(hex(a),t) for a,t in b if '[rip' in t and '# 0x3' in t]}
(root/'dump_analysis/semantic_reconstruction/sky_model/literals.json').write_text(json.dumps(result,indent=2))
for w,desc in result.items():print(w,desc['end'],[(p[0],p[2]) for p in desc['pairs']])
print('sha256',hashlib.sha256(data).hexdigest())
