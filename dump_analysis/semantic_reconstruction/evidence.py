#!/usr/bin/env python3
"""Offline evidence extraction; reads virtual-layout bytes and existing linear disassembly only."""
from pathlib import Path
import struct,re,json,bisect,sys,collections
ROOT=Path(__file__).resolve().parents[2]; D=ROOT/'dump_analysis'; OUT=Path(__file__).parent
img=(D/'unpacked/cheat.unpacked.dll').read_bytes()
e=struct.unpack_from('<I',img,0x3c)[0]; opt=e+24
pdata,sz=struct.unpack_from('<II',img,opt+112+3*8)
funcs=sorted(set(struct.unpack_from('<III',img,pdata+i) for i in range(0,sz,12)))
starts=[x[0] for x in funcs]
EXACT_LEAVES={0x3cdbd4:0x3cddf0,0x3cdbba:0x3cdbd4,0x315bd0:0x315c34,0x2caf08:0x2caf28,0x38a3c4:0x38a3cc,0x38a3cc:0x38a3d4,
              0x2df5dc:0x2df607,0x334ff4:0x33503e,0x3ca884:0x3ca8b5,
              0x2e3c88:0x2e3ce2,0x2e3ee8:0x2e3eed,0x3c8f34:0x3c8f39,
              0x2e3c50:0x2e3c86,0x36c638:0x36c66e}
def fn(a):
 if a in EXACT_LEAVES:return (a,EXACT_LEAVES[a],0)
 i=bisect.bisect_right(starts,a)-1
 
 if i>=0 and funcs[i][0]<=a<funcs[i][1]:return funcs[i]
 # Leaf/assembly functions may have no pdata: stop at first ret or next pdata start.
 limit=min(starts[i+1] if i+1<len(starts) else a+4096,a+4096)
 return (a,limit,0)
strings={}
for l in (D/'static/cheat_decstr.txt').read_text().splitlines():
 p=l.split(' ',3)
 if len(p)==4:
  a=int(p[0],16)
  while img[a]==0xcc:a+=1
  strings[a]=p[3]
cfg=json.loads((D/'C_vmp/cfg_users.json').read_text())
globals={int(v['glob'],16)+0x48:k for k,v in cfg.items()}
lines=[]
for l in (D/'static/cheat_annot.asm').read_text().splitlines():
 p=l.split('\t',1)
 if len(p)!=2:continue
 a=int(p[0],16); t=p[1].split('   ;')[0]; tags=[]
 for m in re.finditer(r'(?:call\s+|jmp\s+)0x([0-9a-f]+)',t):
  tg=int(m[1],16)
  if tg in strings:tags.append('STRING getter=0x%x %s'%(tg,strings[tg]))
 m=re.search(r'# 0x([0-9a-f]+)',t)
 if m:
  r=int(m[1],16)
  if r in globals:tags.append('CONFIG '+globals[r]+' value(+0x48)')
  if 0<=r<=len(img)-4 and any(x in t for x in ['movss','mulss','addss','subss','comiss','divss']):
   v=struct.unpack_from('<f',img,r)[0]
   if 1e-10<abs(v)<1e10:tags.append('f32=%g'%v)
 lines.append((a,t,(' ; '+' | '.join(tags)) if tags else ''))
addrs=[x[0] for x in lines]
def extract(a):
 b,e,u=fn(a); ls=lines[bisect.bisect_left(addrs,b):bisect.bisect_left(addrs,e)]
 
 if not u and b not in EXACT_LEAVES:
  for j,(_,t,_) in enumerate(ls):
   if t.startswith('ret'):
    ls=ls[:j+1];e=ls[-1][0]+1;break
 kind='pdata function' if u else 'explicit leaf/assembly range' if b in EXACT_LEAVES else 'heuristic leaf/code range'
 result=['; %s 0x%x..0x%x unwind=0x%x'%(kind,b,e,u)]
 for i,(r,t,tag) in enumerate(ls):
  n=ls[i+1][0] if i+1<len(ls) else e
  result.append('%06x  %-30s %s%s'%(r,img[r:n].hex(' '),t,tag))
 return '\n'.join(result)+'\n'
if __name__=='__main__':
 if len(sys.argv)>1:
  for v in sys.argv[1:]:print(extract(int(v,16)))
 else:
  groups={
   '01_hooks':[0x315c34,0x2ea90c,0x2ea978,0x2eaa28,0x3163d8,0x316458,0x3164fc,0x362118,0x32ae10,0x332554,0x32f038,0x32f408,0x3215cc,0x32a9f8,0x324b30,0x322aec,0x2f8574,0x32cae8,0x32b62c,0x2e91fc,0x2e12e0,0x2ddb10],
   '02_rendering':[0x2f8574,0x3098a4],
   '03_stack':[0x2ce130,0x2cbd24,0x2ce1d4,0x2ce1f0,0x2ce3dc,0x3cdbd4,0x3c8bd0,0x3c8c70,0x3c7e28,0x3c7e4c,0x3caccc,0x3cabc0],
   '04_esp':[0x2fb72c,0x31acd0],
   '05_server':[0x32cea8,0x2e2474,0x2e3734,0x32c0d4,0x330b38,0x324b30]}
  for g,fs in groups.items():
   p=OUT/g;p.mkdir(exist_ok=True)
   for a in fs:(p/('%06x.asm'%a)).write_text(extract(a))
  usages=collections.defaultdict(list)
  for a,t,tag in lines:
   if 'STRING' in tag:usages[hex(fn(a)[0])].append({'site':hex(a),'evidence':tag})
  (OUT/'function_strings.json').write_text(json.dumps(usages,indent=2))
  (OUT/'strings_xref.txt').write_text('\n'.join('%06x fn=%06x %s%s'%(a,fn(a)[0],t,tag) for a,t,tag in lines if 'STRING' in tag)+'\n')
  (OUT/'config_refs.txt').write_text('\n'.join('%06x fn=%06x %s%s'%(a,fn(a)[0],t,tag) for a,t,tag in lines if 'CONFIG' in tag)+'\n')
  (OUT/'pdata.json').write_text(json.dumps([[hex(x) for x in f] for f in funcs]))
  print('Extracted',sum(map(len,groups.values())),'function files;',len(strings),'string getters;',len(funcs),'pdata entries')
