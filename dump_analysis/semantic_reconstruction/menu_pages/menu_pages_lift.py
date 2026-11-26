"""[I] Static constant/data-flow lifter: emits readable owned C++, never executes
DLL instructions or numeric targets. Unknown transfers fail explicitly. Generated
functions require subsequent byte/branch and fixture review before release."""
from pathlib import Path
import sys,re,struct,json,copy,collections,functools,bisect
ROOT=Path('/home/john/Desktop/cheat_re');sys.path.insert(0,str(ROOT/'dump_analysis/semantic_reconstruction'));import evidence as ev
OUT=ROOT/'dump_analysis/semantic_reconstruction/menu_pages';B=ev.img
rows={a:t for a,t,_ in ev.lines};addresses=[a for a,t,_ in ev.lines];nextpc={a:addresses[i+1] for i,a in enumerate(addresses[:-1])}
@functools.lru_cache(None)
def body(r):
 b,e,u=ev.fn(r);result=[]
 for a,t,_ in ev.lines[bisect.bisect_left(ev.addrs,b):bisect.bisect_left(ev.addrs,e)]:
  result.append((a,t))
  if not u and t.startswith('ret'):break
 return result

def q(s):return json.dumps(s,ensure_ascii=False)
WIDE_AUDIT={}
def wide(a):
 e=a
 while B[e:e+2]!=b'\0\0':e+=2
 units=struct.unpack('<'+'H'*((e-a)//2),B[a:e]);result=bytearray();skipped=0
 for unit in units:
  # [C]393c38 consumes one UTF16 unit at a time; no surrogate pairing.
  assert not 0xd800<=unit<=0xdfff,('unpaired static literal',hex(a))
  if len(result)>=511:break
  value=chr(unit).encode('utf-8')
  if len(value)<=511-len(result):result.extend(value)
  else:skipped+=1 # [C]393a04 returns0 but input still advances.
 WIDE_AUDIT[a]=dict(rva=hex(a),end=hex(e+2),utf16_units=len(units),output_bytes=len(result),skipped_at_capacity=skipped,sha256=__import__('hashlib').sha256(B[a:e+2]).hexdigest())
 return bytes(result).decode('utf-8')
def reg(x):
 aliases={'eax':'rax','ax':'rax','al':'rax','ecx':'rcx','cx':'rcx','cl':'rcx','edx':'rdx','dx':'rdx','dl':'rdx','ebx':'rbx','bx':'rbx','bl':'rbx','edi':'rdi','dil':'rdi','esi':'rsi','sil':'rsi','ebp':'rbp','bpl':'rbp','esp':'rsp'}
 if re.fullmatch(r'r\d+[dbw]',x):return x[:-1]
 return aliases.get(x,x)
MUTABLE={int(mm[1],16) for a,t,tag in ev.lines if re.match(r'(?:mov\w*|or|and|inc|dec)\s+(?:(?:BYTE|WORD|DWORD|QWORD) PTR )?\[rip',t) and (mm:=re.search(r'# 0x([0-9a-f]+)',t))}
SIZES={'BYTE':1,'WORD':2,'DWORD':4,'QWORD':8,'XMMWORD':16}
# Decode only immutable string constant loaders/guarded XOR helpers.
@functools.lru_cache(None)
def constant_loader(r):
 # [C] Large immutable loaders use counted128-byte copy blocks and an
 # overlapping16-byte tail. Recover the copied byte span from static operands.
 br=body(r);bt=' '.join(t for a,t in br)
 if 'lea    r9d,[r8+0x7e]' in bt:
  cycles=int(re.search(r'mov\s+r8d,0x([0-9a-f]+)',bt)[1],16)
  source=int(next(re.search(r'# 0x([0-9a-f]+)',t)[1] for a,t in br if t.startswith('lea    rcx,[rip')),16)
  loop_end=next(a for a,t in br if t.startswith('jne    '))
  offsets=[int(m[1] or '0',16) for a,t in br if a>loop_end and (m:=re.match(r'movups XMMWORD PTR \[rax(?:\+0x([0-9a-f]+))?\],',t))]
  size=cycles*128+max(offsets)+16
  return B[source:source+size]
 regs={};dest={}
 for a,t in body(r):
  m=re.match(r'movabs (\w+),0x([0-9a-f]+)',t)
  if m:regs[reg(m[1])]=int(m[2],16).to_bytes(8,'little')
  m=re.match(r'mov\w*\s+(\w+),(\w+) PTR \[rip.*# 0x([0-9a-f]+)',t)
  if m:regs[reg(m[1])]=B[int(m[3],16):int(m[3],16)+SIZES[m[2]]]
  m=re.match(r'mov\w*\s+(?:(\w+) PTR )?\[rdx(?:\+0x([0-9a-f]+))?\],(\w+)',t)
  if m:
   sz,off,src=m.groups();n=SIZES.get(sz,16 if src.startswith('xmm') else 8);off=int(off or '0',16)
   v=int(src,16).to_bytes(n,'little') if src.startswith('0x') else regs[reg(src)][:n]
   dest.update({off+i:x for i,x in enumerate(v)})
 if not dest:raise ValueError('not constant loader '+hex(r))
 return bytes(dest[i] for i in range(max(dest)+1))
@functools.lru_cache(None)
def literal_bytes(loader,decoder):
 data=constant_loader(loader)
 calls=[int(m[1],16) for a,t in body(decoder) if (m:=re.match(r'call\s+0x([0-9a-f]+)',t))]
 leaf=calls[-1] if calls else decoder;txt=' '.join(t for a,t in body(leaf))
 nmatch=re.search(r'cmp\s+(?:r9d|r8d|edx|ecx|eax),0x([0-9a-f]+)',txt)
 if not nmatch:
  if re.search(r'xor\s+al,0x37',txt):return bytes([data[0]^0x37])+data[1:]
  raise ValueError('decoder length '+hex(decoder)+' leaf'+hex(leaf))
 n=int(nmatch[1],16);assert 'WORD PTR [r10+r9*2]' not in txt
 dm=re.search(r'imul\s+\w+,\w+,0x([0-9a-f]+)',txt);div=int(dm[1],16) if dm else 56
 assert n<=len(data),(hex(loader),n,len(data))
 return bytes(data[i]^((i%div)+0x37) for i in range(n))+data[n:]
@functools.lru_cache(None)
def decode(loader,decoder):
 return literal_bytes(loader,decoder).split(b'\0')[0].decode('utf-8',errors='replace')
LITERAL_BLOBS={}
def raw_literal(value):
 if value not in LITERAL_BLOBS:LITERAL_BLOBS[value]='menu_literal_'+str(len(LITERAL_BLOBS)+1)
 return LITERAL_BLOBS[value]
# Facts: (i integer), (f float), (p owned stack offset), (g global RVA),
# (s C++ string expression), (v Vec2 facts), (range initializer range), (list strings), (e scalar expression), (? unknown).
def I(x):return ('i',x)
def F(x):return ('f',x)
def P(x):return ('p',x)
def G(x):return ('g',x)
U=('?',None)
def expr(v):
 k,x=v
 if k=='i':return str(x)
 if k=='f':
  if x==int(x):return str(int(x))+'.0f'
  return repr(x)+'f'
 if k=='sr':return 'std::string('+x+')'
 if k in ['s','e','gexpr','ad']:return x
 if k=='g':return hex(x)
 if k=='v':return 'Vec2{'+','.join(expr(t) for t in x)+'}'
 if k=='list':return '{'+','.join(expr(t) for t in x)+'}'
 raise ValueError('expression '+repr(v))
class Lift:
 def __init__(self,b,e):
  self.b=b;self.e=e;self.decls=[];self.serial=0;self.macros={};self.used=[]
  nodes=[a for a in addresses if b<=a<e]+[e];index={a:i for i,a in enumerate(nodes)};exitbit=1<<index[e]
  successors={}
  for a in nodes[:-1]:
   t=rows[a];op=t.split()[0];targets=[]
   if op.startswith('j'):
    target=int(t.split()[1],16);targets=[target if target in index else e]
    if op!='jmp':targets.append(nextpc[a] if nextpc[a] in index else e)
   elif op=='ret':targets=[e]
   else:targets=[nextpc[a] if nextpc[a] in index else e]
   successors[a]=targets
  pd={a:(1<<len(nodes))-1 for a in nodes};pd[e]=exitbit
  changed=True
  while changed:
   changed=False
   for a in reversed(nodes[:-1]):
    shared=(1<<len(nodes))-1
    for v in successors[a]:shared &=pd[v]
    value=shared|(1<<index[a])
    if value!=pd[a]:pd[a]=value;changed=True
  self.join={}
  for a in nodes[:-1]:
   if len(successors[a])>1:
    shared=pd[successors[a][0]]&pd[successors[a][1]]
    candidates=[n for n in nodes if n>a and shared&(1<<index[n])]
    self.join[a]=min(candidates) if candidates else e
 def temp(self,ty,value,code,prefix='value'):
  self.serial+=1;name=prefix+'_'+str(self.serial);self.decls.append(ty+' '+name+'{};');code.append(name+'='+value+';');return ('sr' if ty=='MenuPageTextRef' else 's' if ty=='std::string' else 'e',name)
 def addr(self,s,operand):
  m=re.search(r'\[rip.*# 0x([0-9a-f]+)',operand)
  if m:return G(int(m[1],16))
  inside=re.search(r'\[([^]]+)\]',operand)
  if inside and inside[1].startswith('rip'):
   delta=int(inside[1][3:] or '0',16);delta=delta-(1<<64) if delta>=(1<<63) else delta
   return G(nextpc[self.pc]+delta)
  if not inside:raise ValueError('address '+operand)
  x=inside[1];m=re.fullmatch(r'(\w+)([+-]0x[0-9a-f]+)?',x)
  if not m:raise ValueError('address complex '+x)
  b=s['r'].get(reg(m[1]),U);off=int(m[2],16) if m[2] else 0
  if b[0] in ['p','g','i']:return (b[0],b[1]+off)
  if b[0]=='ad':return ('snapshotaddr','('+expr(b)+'+'+hex(off)+')')
  raise ValueError('address base '+repr(b)+' '+x)
 def operand(self,s,x,code,ty='int'):
  x=x.strip()
  if '[' in x:
   p=self.addr(s,x)
   if p[0]=='p':return s['m'].get(p[1],U)
   if p[0]=='snapshotaddr':return self.temp('float' if ty=='float' else 'std::uint32_t','copied<'+('float' if ty=='float' else 'std::uint32_t')+'>(a,'+p[1]+','+hex(self.pc)+')',code)
   if p==G(0x405b28):return ('ad','a.frame.context')
   nm=re.search(r'\b(BYTE|WORD|DWORD|QWORD|XMMWORD) PTR',x);n=SIZES[nm[1]] if nm else 8
   if p[1]<0x2b0000 and p[1] not in MUTABLE:
    data=B[p[1]:p[1]+n]
    if ty=='float':return F(struct.unpack('<f',data[:4])[0])
    if ty=='vector' and n==8:return ('v',(F(struct.unpack('<f',data[:4])[0]),F(struct.unpack('<f',data[4:8])[0])))
    return I(int.from_bytes(data,'little'))
   if ty=='float':return self.temp('float','number(s,'+hex(p[1])+')',code)
   return self.temp('std::uint32_t','raw(s,'+hex(p[1])+')'+('&255u' if n==1 else ''),code)
  if x.startswith('0x'):return I(int(x,16))
  if re.fullmatch(r'-?\d+',x):return I(int(x))
  return s['r'].get(reg(x),U)
 def set(self,s,x,v,code,as_float=False):
  if '[' in x:
   p=self.addr(s,x)
   if p[0]=='p':s['m'][p[1]]=v
   else:
    if v[0]=='v':
     for i,part in enumerate(v[1]):code.append('s.values['+hex(p[1]+i*4)+']=std::bit_cast<std::uint32_t>('+expr(part)+');')
     return
    if v[0]=='f' or as_float:code.append('s.values['+hex(p[1])+']=std::bit_cast<std::uint32_t>('+expr(v)+');')
    else:code.append('s.values['+hex(p[1])+']=std::uint32_t('+expr(v)+');')
   return
  s['r'][reg(x)]=v
 def scalar_math(self,op,a,b):
  if a[0]==b[0] and a[0] in ['i','f']:
   value={'add':lambda:a[1]+b[1],'sub':lambda:a[1]-b[1],'mul':lambda:a[1]*b[1],'div':lambda:a[1]/b[1]}[op]();return (a[0],struct.unpack('<f',struct.pack('<f',value))[0] if a[0]=='f' else value)
  if op in ['add','sub'] and a[0] in ['p','g'] and b[0]=='i':return (a[0],a[1]+b[1]*(1 if op=='add' else -1))
  return ('e','('+expr(a)+{'add':'+','sub':'-','mul':'*','div':'/'}[op]+expr(b)+')')
 def lang(self,start,s):
  # Three bounded STATIC paths over language selector constants, ending when
  # each label constant is known; no non-language/game branch is evaluated.
  paths=[];regpaths=[];globalpaths=[];english=None
  for language in [0,1,2]:
   ptrs={k:v for k,v in s['r'].items() if v[0] in ['p','g']};pc=start;regs={k:v[1] for k,v in s['r'].items() if v[0]=='i'};globals={k:v[1] for k,v in s['r'].items() if v[0]=='g'};loader=None;lit=None;cmp=None
   for _ in range(100):
    t=rows[pc];n=nextpc[pc];op,args=(t.split(None,1)+[''])[:2];arg=args.split(' # ')[0].strip();parts=[x.strip() for x in arg.split(',')]
    if op=='mov' and '# 0x3fd0e8' in t:regs[reg(parts[0])]=language;ptrs.pop(reg(parts[0]),None)
    elif op=='lea' and not parts[1].startswith('[rip'):
     mm=re.fullmatch(r'\[(\w+)([+-]0x[0-9a-f]+)?\]',parts[1]);base=regs.get(reg(mm[1])) if mm else None
     if base is not None:regs[reg(parts[0])]=base+(int(mm[2],16) if mm[2] else 0)
     if mm and reg(mm[1]) in ptrs:
      pv=ptrs[reg(mm[1])];ptrs[reg(parts[0])]=(pv[0],pv[1]+(int(mm[2],16) if mm[2] else 0))
    elif op=='mov' and '[' not in parts[1]:
     source=int(parts[1],16) if parts[1].startswith('0x') else regs.get(reg(parts[1]))
     if source is not None:regs[reg(parts[0])]=source
     if reg(parts[1]) in ptrs:ptrs[reg(parts[0])]=ptrs[reg(parts[1])]
     if reg(parts[1]) in globals:
      globals[reg(parts[0])]=globals[reg(parts[1])]
      if parts[0]=='rcx':lit=globals['rcx']
    elif op=='cmp':
     def integer(x):return int(x,16) if x.startswith('0x') else regs.get(reg(x))
     cmp=(integer(parts[0]),integer(parts[1]))
    elif op.startswith('j'):
     tg=int(parts[0],16)
     if op=='jmp':n=tg
     elif op in ['je','jz','jne','jnz'] and None not in cmp:
      if (cmp[0]==cmp[1])==(op in ['je','jz']):n=tg
     else:raise ValueError('language branch '+t+' '+repr(cmp))
    elif op=='lea' and '# 0x' in t:
     globals[reg(parts[0])]=int(t.split('# 0x')[1].split()[0],16)
     if parts[0]=='rcx':lit=globals['rcx']
    elif op=='call':
     target=int(parts[0],16)
     if target==0x365004:
      value=wide(lit);break
     if loader is None:loader=target;destination=ptrs.get('rdx');ptrs['rax']=destination
     else:
      value=decode(loader,target)
      if language==0:english=(destination,literal_bytes(loader,target))
      break
    pc=n
   else:raise ValueError('language timeout '+hex(start))
   join=n
   while rows[join].startswith('jmp    '):join=int(rows[join].split()[1],16)
   paths.append((join,value));regpaths.append(regs);globalpaths.append(globals)
  if len({j for j,v in paths})!=1:raise ValueError('language join '+hex(start)+' '+repr(paths))
  for k in set.intersection(*(set(r) for r in regpaths)):
   if len({r[k] for r in regpaths})==1:s['r'][k]=I(regpaths[0][k])
  for k in set.intersection(*(set(r) for r in globalpaths)):
   if len({r[k] for r in globalpaths})==1:s['r'][k]=G(globalpaths[0][k])
  assert english and english[0] and english[0][0]=='p',('nonstack English',hex(start),english)
  self.english_literal=english
  return paths[0][0],[v for j,v in paths]
 def call(self,s,a,t,code):
  r=s['r'];m=s['m'];target=int(t.split()[1],16);rc=r.get('rcx',U);rd=r.get('rdx',U);r8=r.get('r8',U);r9=r.get('r9',U)
  def mem(p):return m.get(p[1],U) if p[0]=='p' else p
  def string(v):
   x=mem(v)
   if x[0]=='g' and x[1]<0x2b0000:
    at=x[1];end=B.index(0,at);return q(B[at:end].decode('utf-8'))
   if x==I(0):return q('')
   if x[0] not in ['s','sr']:raise ValueError('string '+repr(v)+' => '+repr(x))
   return expr(x)
  def frame_arg(off):return m.get(r['rsp'][1]+off,U)
  if target in ev.strings:
   # Getter fills stack temporary; it is decoded by the next guarded helper.
   m[rd[1]]=('loader',target);r['rax']=rd;return
  if target==0x2dcf98:
   if rc[0]!='g':raise ValueError('clear vector key '+repr(rc))
   code.append('clear_strings(a,'+expr(rc)+');');return
  if target==0x2cd32c:r['rax']=I(0);return
  if target==0x3c7bbc:m[rc[1]]=('v',(F(0),F(0)));m[rc[1]+8]=I(0);r['rax']=rc;return
  if target==0x2d8cc0:r['rax']=self.temp('std::uint32_t','std::bit_cast<std::uint32_t>(frame_parse_integer_2d8cc0('+string(rc)+',std::int32_t('+expr(r8)+')))',code);return
  if target==0x365004:r['rax']=self.temp('MenuPageTextRef','page_wide(text_pool,'+q(wide(rc[1]))+')',code,'wide');return
  if target==0x2cc340:
   m[rc[1]]=('v',(r.get('xmm1',U),r.get('xmm2',U)));r['rax']=rc;return
  if target in [0x2cc2cc,0x2cc284,0x2d4194]:
   v=mem(rd)
   if v[0]=='g':v=self.temp('std::string','s.strings['+hex(v[1])+']',code,'copied_text')
   if v[0]=='sr':v=self.temp('std::string',expr(v),code,'owned_text')
   m[rc[1]]=v;r['rax']=rc;return
  if target==0x2cd7ec:r['rax']=mem(rc);return
  if target==0x2d8ad8:r['rax']=self.temp('Address','Address('+string(rc)+'.size())',code);return
  if target==0x2cd7ac:m[rc[1]]=('s','(std::string('+string(rc)+')+'+string(rd)+')');r['rax']=rc;return
  if target==0x2cb3a4:r['rax']=rc;return
  if target in [0x2cc4f4,0x2cc504,0x2dbac8,0x2d4a80,0x2db5bc]:return
  if target==0x2cc46c:m[rc[1]]=('range',(rd,r8));r['rax']=rc;return
  if target in [0x336438,0x2db2bc,0x336374]:
   v=mem(rd)
   if v[0]=='list':m[rc[1]]=v;r['rax']=rc;return
   if v[0]!='range':raise ValueError('vector input '+repr(v))
   begin,end=v[1]
   if begin[0]!='p' or end[0]!='p':raise ValueError('vector range '+repr(v))
   vals=[mem(P(i)) for i in range(begin[1],end[1],32)];m[rc[1]]=('list',tuple(vals));r['rax']=rc;return
  if target==0x3869b4:
   code.append('color_label(s,a,'+string(rc)+','+expr(rd)+','+hex(a)+');');return
  if target==0x385b70:
   code.append('keybind(a,'+string(rc)+','+expr(rd)+',('+expr(r8)+'!=0),'+hex(a)+');');return
  if target==0x39233c:
   v=self.temp('Vec2','get<Vec2>(a,0x39233c)',code,'available');m[rc[1]]=('v',(('e',expr(v)+'.x'),('e',expr(v)+'.y')));m[rc[1]+4]=('e',expr(v)+'.y');m[rc[1]]= ('e',expr(v)+'.x');r['rax']=rc;return
  if target in [0x3925cc,0x392f34,0x392ee4,0x392424,0x392448]:r['xmm0']=self.temp('float','get<float>(a,'+hex(target)+')',code);return
  if target==0x37f918:code.append('notify(a,'+string(rc)+',std::int32_t('+expr(rd)+'),std::int32_t('+expr(r8)+'));');return
  if target==0x3c0538:
   r['rax']=self.temp('bool','get<bool>(a,0x3c0538,{'+','.join([string(rc),string(rd),string(r8),'std::int32_t('+expr(r9)+')',expr(mem(frame_arg(0x20))),'std::int32_t('+expr(frame_arg(0x28))+')','Address(0)','Address(0)'])+'})',code);return
  if target==0x39408c:r['rax']=self.temp('bool','get<bool>(a,0x39408c)',code);return
  if target==0x392298:r['rax']=self.temp('std::int32_t','get<std::int32_t>(a,0x392298,{std::int32_t('+expr(rc)+'),'+expr(r.get('xmm1',U))+'})',code);return
  if target==0x2e98f0:m[rd[1]]=('bit',(rc,r8));r['rax']=rd;return
  if target==0x2d4d70:
   v=mem(rc)
   if v[0]!='bit':raise ValueError('bool proxy '+repr(v))
   key,index=v[1];r['rax']=self.temp('bool','bit(a,'+expr(key)+',std::size_t('+expr(index)+'))',code);return
  if target==0x2ef7dc:
   if rc[0]!='g':raise ValueError('setting getter '+repr(rc))
   r['rax']=self.temp('std::uint32_t','raw(s,'+hex(rc[1]+0x48)+')',code);return
  if target in [0x3bd114,0x3bf008,0x3be2ec,0x387d18,0x3c4438,0x3c43f4,0x3bc7d8]:
   self.serial+=1;name='control_'+str(self.serial);code.append('{ MenuControlRequest '+name+';')
   role={0x3bd114:'checkbox',0x3bf008:'combo_strings',0x3be2ec:'combo_cstrings',0x387d18:'multiselect',0x3c4438:'slider_integer',0x3c43f4:'slider_float',0x3bc7d8:'button'}[target]
   code += [name+'.role=MenuControlRole::'+role+';',name+'.site='+hex(a)+';'+name+'.primitive='+hex(target)+';',name+'.label='+string(rc)+';']
   if target not in [0x3bc7d8,0x387d18]:
    if rd[0] not in ['g','gexpr']:raise ValueError('value key '+repr(rd))
    code.append(name+'.value='+expr(rd)+';')
   if target==0x3bd114:
    for fld,v in [('key',r8),('color',r9)]:
     if v[0] not in ['g','i']:raise ValueError('control alias '+repr(v))
     code.append(name+'.'+fld+'='+expr(v)+';')
    code += [name+'.description='+string(frame_arg(0x20))+';',name+'.register_search=('+expr(frame_arg(0x28))+'!=0);']
   if target in [0x3bf008,0x3be2ec]:code.append(name+'.choices='+expr(mem(r8))+';')
   if target==0x387d18:
    # Native ABI differs from scalar controls: names vector in RDX, bool vector R8.
    code.append(name+'.value='+expr(r8)+';');code.append(name+'.choices='+expr(mem(rd))+';')
   if target in [0x3c4438,0x3c43f4]:
    if target==0x3c4438:mi,ma=r8,r9;fields=('minimum','maximum')
    else:mi,ma=r.get('xmm2',U),r.get('xmm3',U);fields=('minimum_float','maximum_float')
    code += [name+'.'+fields[0]+'='+expr(mi)+';',name+'.'+fields[1]+'='+expr(ma)+';',name+'.format='+string(frame_arg(0x20))+';',name+'.flags=std::uint32_t('+expr(frame_arg(0x28))+');']
   if target==0x3bc7d8:code.append(name+'.size='+expr(mem(rd))+';')
   result=self.temp('bool','control(a,'+name+').pressed',code,'pressed');code.append('}');r['rax']=result;self.used.append((a,target));return
  if target==0x384df0:
   code.append('child(s,m,a,'+string(rc)+','+string(rd)+','+expr(mem(r8))+',('+expr(r9)+'!=0));');r['rax']=U;return
  if target==0x38724c:code.append('cleanup(a);');return
  if target in [0x38ec90,0x390efc,0x3c4e58]:code.append('call(a,'+hex(target)+');');return
  if target in [0x398bec,0x39890c,0x39ac04,0x3c4e90,0x39896c,0x398c60,0x398cc8,0x39b44c,0x39b410,0x39b3b8,0x39b734]:
   if target==0x398bec:params=[expr(rc),expr(rd)]
   elif target in [0x39890c,0x39896c]:params=[expr(rc)]
   elif target==0x39ac04:params=[expr(r.get('xmm0',U)),expr(r.get('xmm1',U))]
   elif target==0x3c4e90:params=[string(rc)]
   elif target==0x398c60:params=['std::int32_t('+expr(rc)+')',expr(mem(rd))]
   elif target==0x398cc8:params=['std::int32_t('+expr(rc)+')',expr(r.get('xmm1',U))]
   elif target==0x39b3b8:params=[expr(mem(rc))]
   elif target==0x39b734:params=[expr(mem(rc)),'std::int32_t('+expr(rd)+')',expr(mem(r8))]
   elif target in [0x39b44c,0x39b410]:params=[expr(r.get('xmm0',U))]
   else:params=None
   if params is None:raise ValueError('UI args '+hex(target))
   # API types retain original ImGui integer arguments as int32_t.
   if target in [0x398bec,0x39890c,0x39896c]:params=['std::int32_t('+v+')' for v in params]
   code.append('call(a,'+hex(target)+',{'+','.join(params)+'});');r['rax']=U;return
  # Remaining guarded literal decoders must have a known immutable loader fact.
  v=mem(rc)
  if v[0]=='loader':
   r['rax']=self.temp('MenuPageTextRef','page_literal(text_pool,'+str(rc[1])+','+raw_literal(literal_bytes(v[1],target))+')',code,'literal');return
  try:
   constant_loader(target)
   if rd[0]=='p':m[rd[1]]=('loader',target);r['rax']=rd;return
  except (ValueError,KeyError):pass
  raise ValueError('untranslated call '+hex(target)+' at '+hex(a))
 def condition(self,flag,op):
  left,right=flag[:2]
  floating=len(flag)>2 and flag[2]=='float'
  if op in ['jp','jnp']:return ('!' if op=='jnp' else '')+'(std::isnan('+expr(left)+')||std::isnan('+expr(right)+'))'
  cmp={'je':'==','jz':'==','jne':'!=','jnz':'!=','ja':'>','jb':'<','jbe':'<=','jae':'>=','jg':'>','jl':'<','jge':'>=','jle':'<='}[op]
  if left[0]==right[0]=='i':return {'==':left[1]==right[1],'!=':left[1]!=right[1],'>':left[1]>right[1],'<':left[1]<right[1],'<=':left[1]<=right[1],'>=':left[1]>=right[1]}[cmp]
  result='('+expr(left)+cmp+expr(right)+')'
  if floating and op in ['je','jz','jb','jbe']:result='('+result+'||std::isnan('+expr(left)+')||std::isnan('+expr(right)+'))'
  if floating and op in ['jne','jnz']:result='('+result+'&&!std::isnan('+expr(left)+')&&!std::isnan('+expr(right)+'))'
  if not floating and op in ['jg','jl','jge','jle']:result='(std::bit_cast<std::int32_t>(std::uint32_t('+expr(left)+'))'+cmp+'std::bit_cast<std::int32_t>(std::uint32_t('+expr(right)+')))'
  return result
 def merge(self,condition,taken,fall):
  def value(x,y):
   if x==y:return x
   if x[0]==y[0]=='sr':return ('sr','('+condition+'?'+x[1]+':'+y[1]+')')
   if x[0] in ['g','gexpr'] and y[0] in ['g','gexpr']:return ('gexpr','('+condition+'?'+expr(x)+':'+expr(y)+')')
   if x[0] in ['s','sr','e','i','f'] and y[0] in ['s','sr','e','i','f']:
    return ('s' if x[0] in ['s','sr'] and y[0] in ['s','sr'] else 'e','('+condition+'?'+expr(x)+':'+expr(y)+')')
   return U
  out=copy.deepcopy(fall)
  for section in ['r','m']:
   for k in set(taken[section])|set(fall[section]):out[section][k]=value(taken[section].get(k,U),fall[section].get(k,U))
  out['flag']=(U,U);return out
 def walk(self,start,stop,s):
  code=[];pc=start;steps=0
  while pc<stop and pc<self.e:
   steps+=1
   if steps>20000:raise ValueError('static traversal limit '+hex(pc))
   self.pc=pc;t=rows[pc];n=nextpc[pc];op,args=(t.split(None,1)+[''])[:2]
   if '# 0x3fd0e8' in t and op=='mov':
    prefix=n
    while not rows[prefix].startswith('cmp '):
     pt=rows[prefix];po,pa=pt.split(None,1);pp=[x.strip() for x in pa.split(' # ')[0].split(',')];self.pc=prefix
     if po=='mov':self.set(s,pp[0],self.operand(s,pp[1],code),code)
     elif po=='lea':self.set(s,pp[0],self.addr(s,pp[1]),code)
     else:raise ValueError('language prefix '+pt)
     prefix=nextpc[prefix]
    self.pc=pc
    join,labels=self.lang(pc,s);destination,data=self.english_literal;r=self.temp('MenuPageTextRef','page_label(s,text_pool,'+str(destination[1])+','+raw_literal(data)+',{'+','.join(q(v) for v in labels)+'})',code,'label');s['r']['rax']=r;pc=join;continue
   stripped=args.split(' # ')[0].strip();parts=[x.strip() for x in stripped.split(',')]
   if op=='call':self.call(s,pc,t,code)
   elif op=='ret':break
   elif op=='jmp':
    target=int(parts[0],16)
    if target==0x38724c:code.append('cleanup(a);');break
    if target<pc:raise ValueError('back edge '+hex(pc)+' '+t)
    if target>=stop:pc=target;break
    pc=target;continue
   elif op.startswith('j'):
    target=int(parts[0],16);condition=self.condition(s['flag'],op)
    if isinstance(condition,bool):pc=target if condition else n;continue
    if target<pc:raise ValueError('conditional back edge '+hex(pc))
    join=min(self.join[pc],stop)
    fallcode,fallstate,fallend=self.walk(n,join,copy.deepcopy(s))
    takencode,takenstate,takenend=self.walk(target,join,copy.deepcopy(s))
    code.append('if('+condition+') {');code+=['    '+x for x in takencode];code.append('} else {');code+=['    '+x for x in fallcode];code.append('}')
    s=self.merge(condition,takenstate,fallstate);pc=join;continue
   elif op=='push':s['r']['rsp']=P(s['r']['rsp'][1]-8)
   elif op=='pop':s['r']['rsp']=P(s['r']['rsp'][1]+8)
   elif op=='lea':self.set(s,parts[0],self.addr(s,parts[1]),code)
   elif op.startswith('mov'):
    ty='float' if op=='movss' else 'vector' if op=='movsd' else 'int'
    self.set(s,parts[0],self.operand(s,parts[1],code,ty),code,as_float=op=='movss')
   elif op in ['xor','xorps','pxor'] and parts[0]==parts[1]:self.set(s,parts[0],F(0) if 'xmm' in parts[0] else I(0),code)
   elif op in ['add','sub','addss','subss','mulss','divss']:
    k=op.removesuffix('ss');a=self.operand(s,parts[0],code,'float' if op.endswith('ss') else 'int');b=self.operand(s,parts[1],code,'float' if op.endswith('ss') else 'int');self.set(s,parts[0],self.scalar_math(k,a,b),code)
   elif op in ['cmp','comiss','ucomiss']:
    ty='float' if op!='cmp' else 'int';s['flag']=(self.operand(s,parts[0],code,ty),self.operand(s,parts[1],code,ty),'float' if op!='cmp' else 'int')
   elif op=='test':
    a=self.operand(s,parts[0],code);b=self.operand(s,parts[1],code);s['flag']=(a,I(0)) if a==b else (('e','('+expr(a)+'&'+expr(b)+')'),I(0))
   elif op=='cvtdq2ps':self.set(s,parts[0],('e','float(std::bit_cast<std::int32_t>(std::uint32_t('+expr(self.operand(s,parts[1],code))+')))'),code)
   elif op in ['int3','nop'] or op.startswith('data16'):pass
   elif op=='rex' and args.startswith('push'):s['r']['rsp']=P(s['r']['rsp'][1]-8)
   elif op in ['or','and']:
    a=self.operand(s,parts[0],code);b=self.operand(s,parts[1],code)
    v=I((a[1]|b[1]) if op=='or' else (a[1]&b[1])) if a[0]==b[0]=='i' else ('e','('+expr(a)+('|' if op=='or' else '&')+expr(b)+')');self.set(s,parts[0],v,code)
   else:raise ValueError('instruction '+hex(pc)+' '+t)
   pc=n
  return code,s,pc
 def run(self):
  s={'r':{'rsp':P(0)},'m':{},'flag':(U,U)};code,s,end=self.walk(self.b,self.e,s)
  return ['// [C] Static lift from'+hex(self.b)+'..'+hex(self.e)+'.','MenuPageTextPool text_pool{wide_buffer(a)};']+['[[maybe_unused]] '+d for d in self.decls]+code

if __name__=='__main__':
 specs=json.loads((ROOT/'dump_analysis/semantic_reconstruction/frame_dependencies/frame_dependencies_page_inventory.json').read_text());report=[]
 for p in specs:
  b,e=map(lambda x:int(x,16),p['pdata_extent'])
  if b in [0x35013c,0x33a6f8]:continue
  try:
   lift=Lift(b,e);result=lift.run();(OUT/('menu_pages_lift_%x.inc'%b)).write_text('\n'.join(result)+'\n');report.append(dict(entry=hex(b),state='generated, review pending',controls=len(lift.used)));print(hex(b),'GENERATED',len(result),'lines')
  except (ValueError,KeyError,IndexError,OverflowError,TypeError) as err:
   report.append(dict(entry=hex(b),state='blocked static transfer',detail=str(err)));print(hex(b),'OPEN at',hex(lift.pc),rows[lift.pc],err)
 (OUT/'menu_pages_lift_status.json').write_text(json.dumps(report,indent=2)+'\n')
 (OUT/'menu_pages_wide_literals.json').write_text(json.dumps(list(WIDE_AUDIT.values()),indent=2)+'\n')
 (OUT/'menu_pages_literal_blobs.json').write_text(json.dumps([dict(name=name,bytes=value.hex()) for value,name in LITERAL_BLOBS.items()],indent=2)+'\n')
