from pathlib import Path
import re,json
D=Path('dump_analysis'); out=D/'semantic_reconstruction/world_esp'
img=(D/'unpacked/cheat.unpacked.dll').read_bytes()
ls=[]
for l in (D/'static/cheat_annot.asm').read_text().splitlines():
 p=l.split('\t',1)
 if len(p)==2:ls.append((int(p[0],16),p[1]))
idx={a:i for i,(a,t) in enumerate(ls)}
size={'BYTE':1,'WORD':2,'DWORD':4,'QWORD':8,'XMMWORD':16}
def canon(r):return {'al':'rax','ax':'rax','eax':'rax','ecx':'rcx','edx':'rdx'}.get(r,r)
def decode(a):
 if a not in idx:return None
 regs={};buf={}
 for a,t in ls[idx[a]:idx[a]+40]:
  if t.startswith('ret'):break
  m=re.match(r'(mov[a-z]*)\s+([^,]+),(.*?)(?:\s+#.*)?$',t)
  if not m:return None
  op,d,s=m.groups();rip=re.search('# 0x([0-9a-f]+)',t)
  if rip and '[rip' in s:
   n=size[s.split()[0]];p=int(rip[1],16);regs[canon(d)]=img[p:p+n]
  elif re.fullmatch('0x[0-9a-f]+',s) and '[' not in d:
   regs[canon(d)]=int(s,16).to_bytes(8,'little')
  elif (mm:=re.fullmatch(r'(\w+) PTR \[rdx(?:\+(0x[0-9a-f]+))?\]',d)):
   n=size[mm[1]];p=int(mm[2] or '0',16)
   data=int(s,16).to_bytes(n,'little') if s.startswith('0x') else regs.get(canon(s))
   if data is None:return None
   for k,v in enumerate(data[:n]):buf[p+k]=v
  elif s in ['rdx','rax'] and '[' not in d:continue
  else:return None
 if not buf or not all(k in buf for k in range(max(buf)+1)):return None
 enc=bytes(buf[k] for k in range(max(buf)+1))
 for mod in [52,56]:
  b=bytes(v^((0x37+k%mod)&255) for k,v in enumerate(enc))
  if b[-1]==0 and all(32<=c<127 or c in [10,13] for c in b[:-1]):return b[:-1].decode()
 return None
strings={hex(a):v for a,t in ls if (v:=decode(a)) is not None}
(out/'getter_strings.json').write_text(json.dumps(strings,indent=2))
for a in [0x2f41f0,0x2f1bd8,0x2f2620,0x2f2700,0x2f23dc]:print(hex(a),strings.get(hex(a)))
