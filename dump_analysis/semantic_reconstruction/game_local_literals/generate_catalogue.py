from pathlib import Path
import re,json,bisect,struct
root=Path('/home/john/Desktop/cheat_re');out=Path(__file__).parent;src=root/'source/reconstructed';data=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
rows=[]
for line in (root/'dump_analysis/static/cheat_text.asm').read_text().splitlines():
 m=re.match(r'\s*([0-9a-f]+):\t([0-9a-f ]+)\t?(.*)',line)
 if m:
  a=int(m[1],16);raw=bytes.fromhex(m[2]);assert data[a:a+len(raw)]==raw;rows.append((a,m[3]))
by={a:i for i,(a,t) in enumerate(rows)}
def leaf(r):
 result=[]
 for a,t in rows[by[r]:]:
  result.append((a,t))
  if t=='ret':return result
 raise ValueError(hex(r))
def next_calls(r):
 return [(a,int(m[1],16)) for a,t in leaf(r) if (m:=re.search(r'call\s+0x([0-9a-f]+)',t))]
pairs={}
s=(src/'projectile_analysis.cpp').read_text()
for a,b in re.findall(r'(?:material_call\(|\{)(0x[0-9a-f]+),(0x[0-9a-f]+)',s):
 if 0x2c0000<=int(b,16)<0x330000:pairs[int(a,16)]=int(b,16)
pairs[0x330614]=0x2dd188
rpc=[0x2e5254,0x2e5270,0x2e52cc,0x2e52e8,0x2e5324,0x2e5348,0x2e59d8,0x2dfc44,0x2dfcfc,0x2e54b4,0x2e5618,0x2e57bc,0x2e5844,0x2e5958]
for r in rpc:
 follow=[]
 for i,(a,t) in enumerate(rows):
  if re.fullmatch(r'call\s+0x'+format(r,'x'),t):
   calls=[int(m[1],16) for aa,tt in rows[i+1:i+12] if (m:=re.fullmatch(r'call\s+0x([0-9a-f]+)',tt))]
   if calls:follow.append(calls[0])
 def converter_shape(v):
  try:
   calls=next_calls(v)
   return len(calls)==2 and leaf(calls[0][1])[0][1].startswith('cmp    BYTE PTR [rcx')
  except (KeyError,ValueError):return False
 valid={v for v in follow if converter_shape(v)}
 assert len(valid)==1,(hex(r),list(map(hex,follow)))
 pairs[r]=next(iter(valid))
converters={};ops=[];specs=[];loaded_static={}
slots={'rax':0,'eax':0,'ax':0,'al':0,'xmm0':1,'xmm1':2,'xmm2':3,'xmm3':4}
for getter,converter in sorted(pairs.items()):
 code=leaf(getter);start=len(ops);registers={};known={};
 for site,t in code:
  if t=='ret' or t in ['mov    rax,rdx','nop'] or not t:continue
  m=re.fullmatch(r'(?:movups|movaps|movdqu|movsd|mov|movzx|movabs)\s+(\w+),(?:(BYTE|WORD|DWORD|QWORD|XMMWORD) PTR \[rip\+.*# 0x([0-9a-f]+)|0x([0-9a-f]+))',t)
  if m:
   reg=m[1];slot=slots[reg]
   if m[2]:
    width={'BYTE':1,'WORD':2,'DWORD':4,'QWORD':8,'XMMWORD':16}[m[2]];source=int(m[3],16);value=source;kind='load';payload=data[source:source+width];loaded_static[source]=payload.hex()
   else:
    width={'rax':8,'eax':4,'al':1}.get(reg);assert width,(site,t);value=int(m[4],16);kind='constant';payload=value.to_bytes(width,'little')
   registers[slot]=payload;ops.append((kind,slot,width,0,value,site));continue
  m=re.fullmatch(r'(?:movups|movaps|movdqu|movsd|mov)\s+(BYTE|WORD|DWORD|QWORD|XMMWORD) PTR \[rdx(?:\+0x([0-9a-f]+))?\],(\w+)',t)
  if m:
   width={'BYTE':1,'WORD':2,'DWORD':4,'QWORD':8,'XMMWORD':16}[m[1]];offset=int(m[2] or '0',16);slot=slots[m[3]];assert len(registers[slot])>=width,(site,t)
   ops.append(('store',slot,width,offset,0,site))
   for i,b in enumerate(registers[slot][:width]):known[offset+i]=b
   continue
  raise ValueError((hex(site),t))
 n=max(known)+1;assert set(known)==set(range(n)),(getter,known)
 calls=next_calls(converter);assert len(calls)==2,(hex(converter),calls)
 guard,decode=calls[0][1],calls[1][1]
 guardcode=leaf(guard);m=re.search(r'cmp\s+BYTE PTR \[rcx(?:\+0x([0-9a-f]+))?\],0x0',guardcode[0][1]);assert m
 guardoff=int(m[1] or '0',16)
 decodecode=leaf(decode);text='\n'.join(t for a,t in decodecode)
 m=re.search(r'cmp\s+r9d,0x([0-9a-f]+)',text);assert m,(hex(decode),text);count=int(m[1],16)
 m=re.search(r'imul\s+(?:ecx|edx),eax,0x([0-9a-f]+)',text);assert m;mod=int(m[1],16)
 assert mod in [52,56] and 'add    al,0x37' in text and count==n and guardoff==n-1,(hex(getter),count,n,guardoff)
 # Independently check the literal unsigned multiply/divide sequence for every
 # reached counter before replacing it with readable remainder arithmetic.
 for i in range(count):
  if mod==56:
   hi=(0x24924925*i)>>32;q=(((i-hi)>>1)+hi)>>5
  else:q=((0x4ec4ec4f*i)>>32)>>4
  assert q==i//mod,(decode,i,q)
 decoded=bytes(known[i]^((i%mod)+55) for i in range(n)) if known[guardoff] else bytes(known[i] for i in range(n))
 assert decoded[-1]==0,(hex(getter),decoded)
 specs.append(dict(getter=hex(getter),end=hex(code[-1][0]+1),converter=hex(converter),guard=hex(guard),decode=hex(decode),guard_offset=guardoff,count=count,modulus=mod,operation_begin=start,operation_count=len(ops)-start,decoded=decoded[:-1].decode('latin1')))
 converters[converter]=(guard,decode)
lines=['// [C] Ordered literal load/store catalogue, generated from byte-checked leaves.','static constexpr GameLocalLiteralOperation literal_operations[]{']
for kind,slot,width,offset,value,site in ops:lines.append('    {GameLocalLiteralOperationKind::%s,%d,%d,%d,0x%x,0x%x},'%(kind,slot,width,offset,value,site))
lines+=['};','static constexpr GameLocalLiteralSpec literal_specs[]{']
for s in specs:lines.append('    {%s,%s,%s,%s,%s,%d,%d,%d,%d,%d}, // %s'%(s['getter'],s['end'],s['converter'],s['guard'],s['decode'],s['guard_offset'],s['count'],s['modulus'],s['operation_begin'],s['operation_count'],s['decoded']))
lines+=['};']
(src/'game_local_literals_catalogue.inc').write_text('\n'.join(lines)+'\n')
(out/'literal_catalogue.json').write_text(json.dumps(dict(specs=specs,operations=ops,static_bytes=loaded_static),indent=2)+'\n')
(out/'closure_roots.json').write_text(json.dumps(sorted(set(pairs)|set(pairs.values())|{r for p in converters.values() for r in p}|{0x2d6354,0x2e5b4c,0x3ca884})))
print('PASS literal catalogue',len(specs),'producers,',len(ops),'ordered operations,',len(converters),'converter variants')
