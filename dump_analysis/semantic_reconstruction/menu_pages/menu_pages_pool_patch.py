from pathlib import Path
p=Path('/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/menu_pages/menu_pages_lift.py');s=p.read_text()
a=s.index('@functools.lru_cache(None)\ndef decode(');b=s.index('# Facts:',a)
s=s[:a]+'''@functools.lru_cache(None)
def literal_bytes(loader,decoder):
 data=constant_loader(loader)
 calls=[int(m[1],16) for a,t in body(decoder) if (m:=re.match(r'call\\s+0x([0-9a-f]+)',t))]
 leaf=calls[-1] if calls else decoder;txt=' '.join(t for a,t in body(leaf))
 nmatch=re.search(r'cmp\\s+(?:r9d|r8d|edx|ecx|eax),0x([0-9a-f]+)',txt)
 if not nmatch:
  if re.search(r'xor\\s+al,0x37',txt):return bytes([data[0]^0x37])+data[1:]
  raise ValueError('decoder length '+hex(decoder)+' leaf'+hex(leaf))
 n=int(nmatch[1],16);assert 'WORD PTR [r10+r9*2]' not in txt
 dm=re.search(r'imul\\s+\\w+,\\w+,0x([0-9a-f]+)',txt);div=int(dm[1],16) if dm else 56
 assert n<=len(data),(hex(loader),n,len(data))
 return bytes(data[i]^((i%div)+0x37) for i in range(n))+data[n:]
@functools.lru_cache(None)
def decode(loader,decoder):
 return literal_bytes(loader,decoder).split(b'\\0')[0].decode('utf-8',errors='replace')
def raw_literal(value):
 return 'std::string_view{"'+''.join('\\\\x%02x'%v for v in value)+'",'+str(len(value))+'}'
'''+s[b:]
s=s.replace(" if k in ['s','e','gexpr','ad']:return x", " if k=='sr':return 'std::string('+x+')'\n if k in ['s','e','gexpr','ad']:return x")
s=s.replace("return ('s' if ty=='std::string' else 'e',name)","return ('sr' if ty=='MenuPageTextRef' else 's' if ty=='std::string' else 'e',name)")
s=s.replace("  paths=[];regpaths=[];globalpaths=[]", "  paths=[];regpaths=[];globalpaths=[];english=None")
s=s.replace("pc=start;regs={k:v[1]", "ptrs={k:v for k,v in s['r'].items() if v[0] in ['p','g']};pc=start;regs={k:v[1]")
s=s.replace("    if op=='mov' and '# 0x3fd0e8' in t:regs[reg(parts[0])]=language", "    if op=='mov' and '# 0x3fd0e8' in t:regs[reg(parts[0])]=language;ptrs.pop(reg(parts[0]),None)")
s=s.replace("     if base is not None:regs[reg(parts[0])]=base+(int(mm[2],16) if mm[2] else 0)", "     if base is not None:regs[reg(parts[0])]=base+(int(mm[2],16) if mm[2] else 0)\n     if mm and reg(mm[1]) in ptrs:\n      pv=ptrs[reg(mm[1])];ptrs[reg(parts[0])]=(pv[0],pv[1]+(int(mm[2],16) if mm[2] else 0))")
s=s.replace("     if source is not None:regs[reg(parts[0])]=source", "     if source is not None:regs[reg(parts[0])]=source\n     if reg(parts[1]) in ptrs:ptrs[reg(parts[0])]=ptrs[reg(parts[1])]")
s=s.replace("     if loader is None:loader=target\n     else:value=decode(loader,target);break", "     if loader is None:loader=target;destination=ptrs.get('rdx');ptrs['rax']=destination\n     else:\n      value=decode(loader,target)\n      if language==0:english=(destination,literal_bytes(loader,target))\n      break")
s=s.replace("  return paths[0][0],[v for j,v in paths]", "  assert english and english[0] and english[0][0]=='p',('nonstack English',hex(start),english)\n  self.english_literal=english\n  return paths[0][0],[v for j,v in paths]")
s=s.replace("   if x[0]!='s':raise ValueError('string '+repr(v)+' => '+repr(x))", "   if x[0] not in ['s','sr']:raise ValueError('string '+repr(v)+' => '+repr(x))")
s=s.replace("   m[rc[1]]=v;r['rax']=rc;return", "   if v[0]=='sr':v=self.temp('std::string',expr(v),code,'owned_text')\n   m[rc[1]]=v;r['rax']=rc;return")
s=s.replace("if v[0]=='loader':r['rax']=('s',q(decode(v[1],target)));return", "if v[0]=='loader':\n   r['rax']=self.temp('MenuPageTextRef','page_literal(text_pool,'+str(rc[1])+','+raw_literal(literal_bytes(v[1],target))+')',code,'literal');return")
s=s.replace("   if x[0] in ['g','gexpr']", "   if x[0]==y[0]=='sr':return ('sr','('+condition+'?'+x[1]+':'+y[1]+')')\n   if x[0] in ['g','gexpr']")
s=s.replace("if x[0] in ['s','e','i','f'] and y[0] in ['s','e','i','f']:", "if x[0] in ['s','sr','e','i','f'] and y[0] in ['s','sr','e','i','f']:")
s=s.replace("'s' if x[0]==y[0]=='s' else 'e'", "'s' if x[0] in ['s','sr'] and y[0] in ['s','sr'] else 'e'")
old="join,labels=self.lang(pc,s);r=self.temp('std::string','text(s,{'+','.join(q(v) for v in labels)+'})',code,'label');s['r']['rax']=r;pc=join;continue"
new="join,labels=self.lang(pc,s);destination,data=self.english_literal;r=self.temp('MenuPageTextRef','page_label(s,text_pool,'+str(destination[1])+','+raw_literal(data)+',{'+','.join(q(v) for v in labels)+'})',code,'label');s['r']['rax']=r;pc=join;continue"
assert old in s;s=s.replace(old,new)
s=s.replace("return ['// [C] Static lift from'+hex(self.b)+'..'+hex(self.e)+'.']+['[[maybe_unused]] '+d for d in self.decls]+code", "return ['// [C] Static lift from'+hex(self.b)+'..'+hex(self.e)+'.','MenuPageTextPool text_pool{wide_buffer(a)};']+['[[maybe_unused]] '+d for d in self.decls]+code")
p.write_text(s)
