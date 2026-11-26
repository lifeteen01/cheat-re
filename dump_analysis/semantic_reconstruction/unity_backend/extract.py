import re,struct,json,hashlib
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');b=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
asm=(root/'dump_analysis/static/cheat_text.asm').read_text().splitlines()
rows=[]
for line in asm:
 m=re.match(r'\s*([0-9a-f]+):\t([0-9a-f ]+)\t?(.*)',line)
 if m:
  a=int(m[1],16);raw=bytes.fromhex(m[2]);assert b[a:a+len(raw)]==raw,(hex(a),raw.hex());rows.append((a,raw,m[3],line))
e=struct.unpack_from('<I',b,60)[0]; ex,sz=struct.unpack_from('<II',b,e+24+112+24)
fns=[struct.unpack_from('<III',b,x)[:2] for x in range(ex,ex+sz,12)]
strings={}
for line in (root/'dump_analysis/semantic_reconstruction/strings_xref.txt').read_text().splitlines():
 m=re.search(r'getter=0x([0-9a-f]+) (.*)',line)
 if m:strings[int(m[1],16)]=m[2]
extra=[0x2f8574,0x375c08,0x375abc,0x333bf4,0x3b3240,0x3b27b4,0x3b34f0,0x3b3524,0x3b3574,0x3b35c4,0x3b1904,0x3b2eec,0x3b3f30,0x3b3998,0x2e09f0,0x2e0af0,0x2e071c,0x2ce718,0x2cd7f4,0x2cea84,0x375e6c,0x376214,0x3346e8,0x335358,0x376154,0x376084,0x373378,0x373138,0x373744,0x36c8c4,0x2e68b8]
selected=[(a,z) for a,z in fns if 0x3af000<=a<0x3b5000 or a in extra]
out=[];specs=[]
for a,z in selected:
 body=[(x,t,l) for x,raw,t,l in rows if a<=x<z];txt='\n'.join(t for x,t,l in body)
 out+=['; pdata '+hex(a)+'..'+hex(z)]+[l for x,t,l in body]
 flags=re.search(r'mov\s+eax,DWORD PTR \[rip.*# 0x([0-9a-f]+)',txt)
 if not flags or 'test   al,0x1' not in txt:continue
 target=re.search(r'mov\s+QWORD PTR \[rip.*# 0x([0-9a-f]+)',txt)
 context=re.findall(r'lea\s+rdx,\[rip.*# 0x([0-9a-f]+)',txt)
 if not target or not context:continue
 pairs=[];sig=0;resolver=0
 for x,t,l in body:
  m=re.match(r'call\s+0x([0-9a-f]+)',t)
  if m:
   c=int(m[1],16)
   if c in strings:pairs.append((hex(c),strings[c]))
   if c in [0x333d10,0x3349ac,0x333bf4,0x3b4d28,0x2dee4c,0x2cc164,0x2cc174,0x2cc16c,0x3339ec,0x333a24,0x2ee70c,0x3339dc,0x376154]:resolver=c
 if resolver==0x333d10:
  sig=int(re.search(r'mov\s+ecx,0x([0-9a-f]+)',txt)[1],16)
 specs.append(dict(wrapper=a,end=z,flags=int(flags[1],16),target=int(target[1],16),context=int(context[-1],16),resolver=resolver,signature=sig,strings=pairs))
p=root/'dump_analysis/semantic_reconstruction/unity_backend'
(p/'raw_backend.asm').write_text('\n'.join(out)+'\n');(p/'cache_specs.json').write_text(json.dumps(specs,indent=2))
(p/'byte_audit.txt').write_text(f'Input SHA256 {hashlib.sha256(b).hexdigest()}\nChecked {len(rows)} disassembly byte fragments against DLL virtual layout.\nExtracted {len(selected)} pdata bodies and {len(specs)} cache wrappers.\n'+''.join(f'{hex(a)}..{hex(z)} {b[a:a+16].hex(" ")}\n' for a,z in selected))
print(len(specs));print('\n'.join(f'{s["wrapper"]:x} resolver={s["resolver"]:x} {s["signature"]:x} {s["strings"]}' for s in specs))
# Decode getter bytes directly, rather than trusting inventory labels.
idx={a:i for i,(a,raw,t,l) in enumerate(rows)}
def body(a):
 r=[]
 for x,raw,t,l in rows[idx[a]:]:
  r.append((x,t))
  if t=='ret':break
 return r
sizes={'BYTE':1,'WORD':2,'DWORD':4,'QWORD':8,'XMMWORD':16}
def canon(x):return {'eax':'rax','ax':'rax','al':'rax'}.get(x,x)
def literal(loader,decoder):
 regs={};buf={}
 for a,t in body(loader):
  m=re.match(r'movabs (\w+),0x([0-9a-f]+)',t)
  if m:regs[canon(m[1])]=int(m[2],16).to_bytes(8,'little')
  m=re.search(r'(?:mov\w*)\s+(\w+),(\w+) PTR \[rip.*# 0x([0-9a-f]+)',t)
  if m:
   reg,sz,addr=m.groups();regs[canon(reg)]=b[int(addr,16):int(addr,16)+sizes[sz]]
  m=re.match(r'mov\w*\s+(?:(\w+) PTR )?\[rdx(?:\+0x([0-9a-f]+))?\],(\w+)',t)
  if m:
   sz,off,reg=m.groups();n=sizes.get(sz,16 if reg.startswith('xmm') else 8);off=int(off or '0',16)
   val=int(reg,16).to_bytes(n,'little') if reg.startswith('0x') else regs[canon(reg)][:n]
   buf.update({off+i:v for i,v in enumerate(val)})
 calls=re.findall(r'call\s+0x([0-9a-f]+)',' '.join(t for a,t in body(decoder)))
 dest=int(calls[-1],16); txt=' '.join(t for a,t in body(dest))
 n=int(re.search(r'cmp\s+r9d,0x([0-9a-f]+)',txt)[1],16)
 width=2 if 'WORD PTR [r10+r9*2]' in txt else 1
 enc=bytes(buf[i] for i in range(n*width));out=[]
 dm=re.search(r'imul\s+\w+,\w+,0x([0-9a-f]+)',txt)
 divisor=int(dm[1],16) if dm else 56
 for i in range(n):out.append(int.from_bytes(enc[i*width:(i+1)*width],'little')^((i%divisor)+0x37))
 return ''.join(map(chr,out)).rstrip('\0')
decoded={}
for a,z in selected:
 calls=[int(m[1],16) for x,raw,t,l in rows if a<=x<z and (m:=re.match(r'call\s+0x([0-9a-f]+)',t))]
 for x,y in zip(calls,calls[1:]):
  try:
   s=literal(x,y)
   if s and all(c.isprintable() for c in s):decoded[x]=s
  except (KeyError,IndexError,TypeError,ValueError,OverflowError):pass
(p/'decoded_literals.json').write_text(json.dumps({hex(k):v for k,v in decoded.items()},indent=2))
for s in specs:
 a=s['wrapper'];z=s['end'];calls=[int(m[1],16) for x,raw,t,l in rows if a<=x<z and (m:=re.match(r'call\s+0x([0-9a-f]+)',t))]
 s['strings']=[(hex(x),decoded[x]) for x in calls if x in decoded]
for spec in specs:
 if spec['wrapper']==0x375abc:
  spec['target']=0x402c18;spec['reflection_cache']=0x27f9a8
(p/'cache_specs.json').write_text(json.dumps(specs,indent=2))
print('decoded',len(decoded));print([(hex(s['wrapper']),s['strings']) for s in specs if len(s['strings'])!=3 and s['resolver'] in [0x333bf4,0x3349ac]])
