from pathlib import Path
import json,hashlib,re,subprocess,concurrent.futures,time
root=Path('/home/john/Desktop/cheat_re');work=root/'dump_analysis/semantic_reconstruction/font_builder';src=root/'source/reconstructed'
owned=sorted(p for p in src.glob('font_builder_*') if not p.name.startswith('font_builder_support') and p.suffix in ['.hpp','.cpp','.md'])
compiled=[src/('font_builder_'+x+'.cpp') for x in 'sfnt outline sfnt_checks packing packing_checks raster controller support cff checks cff_checks owned finish owned_checks coverage'.split()]+[src/'world_esp_analysis.cpp',src/'font_text_lookup.cpp',src/'font_text_atlas.cpp',work/'driver.cpp']
closure=set(compiled);todo=list(compiled)
while todo:
 p=todo.pop()
 for name in re.findall(r'^\s*#\s*include\s*"([^"]+)"',p.read_text(),re.M):
  q=p.parent/name
  if not q.exists():q=src/name
  if q.exists() and q not in closure:closure.add(q);todo.append(q)
closure.update(owned)
def capture():return {str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(closure)}
before=capture();(work/'verification_sources_before.json').write_text(json.dumps(before,indent=2)+'\n')
commands={'strict':['bash',str(work/'build_sfnt.sh')],'sanitizer':['bash',str(work/'build_sfnt.sh'),'sanitize'],'oracle':['bash',str(work/'build_oracle.sh')]}
def run(name,args):
 started=time.time();p=subprocess.run(args,cwd=root,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT);(work/(name+'_verification.txt')).write_text(p.stdout);return name,{'exit_code':p.returncode,'elapsed_seconds':round(time.time()-started,3),'log':str((work/(name+'_verification.txt')).relative_to(root)),'output':p.stdout.strip()}
with concurrent.futures.ThreadPoolExecutor(max_workers=3) as pool:results=dict(pool.map(lambda x:run(*x),commands.items()))
after=capture();(work/'verification_sources_after.json').write_text(json.dumps(after,indent=2)+'\n');unchanged=before==after
manifest=root/'dump_analysis/MANIFEST.sha256';mismatches=[];n=0
for line in manifest.read_text().splitlines():
 if not line.strip():continue
 expected,name=line.split(None,1);name=name.lstrip('*');p=root/'dump_analysis'/name
 if not p.exists() or hashlib.sha256(p.read_bytes()).hexdigest()!=expected:mismatches.append(name)
 n+=1
out={'sources_unchanged':unchanged,'source_count':len(before),'owned_deliverables':[str(p.relative_to(root)) for p in owned],'results':results,'preserved_input_count':n,'preserved_input_mismatches':mismatches};(work/'verification.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2));raise SystemExit(0 if unchanged and not mismatches and all(x['exit_code']==0 for x in results.values()) else 1)
