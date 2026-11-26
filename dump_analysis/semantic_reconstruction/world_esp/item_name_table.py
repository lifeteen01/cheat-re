from pathlib import Path
import re,json
O=Path('dump_analysis/semantic_reconstruction/world_esp');strings=json.load(open(O/'getter_strings.json'))
lines=[]
for l in Path('dump_analysis/static/cheat_annot.asm').read_text().splitlines():
 p=l.split('\t',1)
 if len(p)==2 and 0x316574<=int(p[0],16)<0x316fce:lines.append((int(p[0],16),p[1]))
idx={a:i for i,(a,t) in enumerate(lines)}
def signed(x):return x if x<0x80000000 else x-0x100000000
keys=set();eax=None
for a,t in lines:
 if m:=re.fullmatch(r'mov    eax,(0x[0-9a-f]+)',t):eax=int(m[1],16)
 if m:=re.fullmatch(r'cmp    edx,(eax|0x[0-9a-f]+)',t):keys.add(eax if m[1]=='eax' else int(m[1],16))
def branch_label(key):
 # Static comparison-tree resolution only; no sample instruction/callee is executed.
 i=0;eax=None;compare=0
 for _ in range(500):
  a,t=lines[i]
  if m:=re.fullmatch(r'mov    eax,(0x[0-9a-f]+)',t):eax=int(m[1],16)
  if m:=re.fullmatch(r'cmp    edx,(eax|0x[0-9a-f]+)',t):compare=signed(key)-signed(eax if m[1]=='eax' else int(m[1],16))
  if m:=re.match(r'(j[a-z]+)\s+0x([0-9a-f]+)',t):
   cond={'jmp':True,'je':compare==0,'jne':compare!=0,'jg':compare>0,'jle':compare<=0}.get(m[1])
   if cond is None:raise ValueError((a,t))
   if cond:i=idx[int(m[2],16)];continue
  if m:=re.match(r'call\s+(0x[0-9a-f]+)',t):
   if m[1] in strings:return strings[m[1]],a
   if m[1]=='0x2cc730':return '',a
  i+=1
 raise ValueError(key)
rows=[]
for key in sorted(keys):
 label,site=branch_label(key)
 if not label:raise ValueError((hex(key),hex(site),'missing literal'))
 rows.append(dict(id=hex(key),label=label,site=hex(site)))
(O/'item_names.json').write_text(json.dumps(rows,indent=2))
cpp=['#include "world_esp_analysis.hpp"','namespace rust_internal_re {','std::string_view world_item_name_316574(std::uint32_t id){','    switch(id){']
for r in rows:cpp.append('    case '+r['id']+'u:return '+json.dumps(r['label'])+'; // [C] '+r['site'])
cpp+=['    default:return {};','    }','}','}']
Path('source/reconstructed/world_esp_item_names.cpp').write_text('\n'.join(cpp)+'\n')
print(len(rows),'literal ID/name branches')
