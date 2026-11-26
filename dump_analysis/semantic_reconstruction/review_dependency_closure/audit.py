from pathlib import Path
import json,re,hashlib,struct,bisect,collections
ROOT=Path('/home/john/Desktop/cheat_re');SRC=ROOT/'source/reconstructed';OUT=ROOT/'dump_analysis/semantic_reconstruction/review_dependency_closure'
inv=json.loads((SRC/'dependency_inventory.json').read_text());ledger=json.loads((SRC/'completion_ledger.json').read_text())
source={p:p.read_text() for p in SRC.iterdir() if p.suffix in ['.hpp','.cpp','.inc','.md']}
hits=collections.defaultdict(list);defs=collections.defaultdict(list);tables=collections.defaultdict(list)
for p,s in source.items():
 if p.suffix not in ['.cpp','.hpp','.inc']:continue
 for n,l in enumerate(s.splitlines(),1):
  for x in set(re.findall(r'0x([23][0-9a-fA-F]{5})\b',l)):
   rec={'file':str(p.relative_to(ROOT)),'line':n,'text':l.strip()[:550]};hits[int(x,16)].append(rec)
   if re.search(r'(?:^\s*\{+|=\s*\{+)\s*0x'+x+r'\b',l) and 'checks' not in p.name:tables[int(x,16)].append(rec)
 for m in re.finditer(r'\b([A-Za-z_]\w*_[23][0-9a-f]{5}(?:_[23][0-9a-f]{5})*)\s*\(',s):
  pos=m.end();depth=1
  while pos<len(s) and depth:
   depth+=(s[pos]=='(')-(s[pos]==')');pos+=1
  if re.match(r'\s*(?:const\s*)?(?:noexcept\s*)?\{',s[pos:]):
   for r in re.findall(r'(?:_|^)([23][0-9a-f]{5})(?=_|$)',m[1]):defs[int(r,16)].append({'file':str(p.relative_to(ROOT)),'line':s.count('\n',0,m.start())+1,'name':m[1]})
coverage=collections.defaultdict(list)
for p in (ROOT/'dump_analysis/semantic_reconstruction').glob('**/*ledger*.json'):
 if OUT in p.parents:continue
 try:q=json.loads(p.read_text())
 except Exception:continue
 if not isinstance(q,dict):continue
 for r in q.get('ranges',[]):
  if isinstance(r,dict) and isinstance(r.get('begin'),str):
   try:b=int(r['begin'],16)
   except Exception:continue
   coverage[b].append({'file':str(p.relative_to(ROOT)),'status':r.get('status'),'end':r.get('end_exclusive',r.get('end')),'scope':r.get('scope',r.get('meaning',''))})
# Runtime coverage arrays supplement JSON ledgers, retaining stale [U] rows as such.
for p,s in source.items():
 if p.suffix!='.cpp':continue
 for n,l in enumerate(s.splitlines(),1):
  m=re.search(r'\{0x([23][0-9a-f]{5}),\s*0x([23][0-9a-f]{5}),\s*"([^"\n]*)"',l)
  if m:coverage[int(m[1],16)].append({'file':str(p.relative_to(ROOT)),'line':n,'status':m[3].split(']')[0]+']','end':'0x'+m[2],'scope':m[3]})
records=[]
for old in inv['records']:
 r=int(old['rva'],16);refs=[]
 for ref in old['references']:
  roles=[]
  for m in re.finditer(r'(?:0x)?([23][0-9a-f]{5})\s*(?:\.\.|[–—])\s*(?:0x)?([23][0-9a-f]{5})',ref['text'],re.I):
   a,b=int(m[1],16),int(m[2],16)
   if r==a:roles.append('range_start')
   if r==b:roles.append('range_end')
  refs.append({**ref,'roles':roles})
 records.append({**old,'references':refs,'current_named_bodies':defs[r],'descriptor_rows':tables[r],'current_source_hits':hits[r],'coverage_ledgers':coverage[r],'all_references_range_end':all('range_end' in f['roles'] and 'range_start' not in f['roles'] for f in refs)})
(OUT/'working_index.json').write_text(json.dumps({'source_sha256':{str(p.relative_to(ROOT)):hashlib.sha256(t.encode()).hexdigest() for p,t in source.items()},'records':records},indent=2)+'\n')
for r in records:
 if not r['all_references_range_end'] and not r['current_named_bodies'] and not r['descriptor_rows'] and int(r['rva'],16)<0x380000:
  print(r['rva'],'HITS',len(r['current_source_hits']),'COV',[(x['status'],x['file'].split('/')[-2]) for x in r['coverage_ledgers']], '\n ',r['references'][0]['text'][:230])
