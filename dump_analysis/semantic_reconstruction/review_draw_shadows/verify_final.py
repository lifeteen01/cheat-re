from pathlib import Path
import json,hashlib,re,subprocess,time,concurrent.futures
root=Path('/home/john/Desktop/cheat_re');work=root/'dump_analysis/semantic_reconstruction/review_draw_shadows';src=root/'source/reconstructed'
compiled=[src/('draw_shadows_'+x+'.cpp') for x in ['checks','clipping','geometry','controllers']]+[src/('draw_shapes_'+x+'.cpp') for x in ['paths','geometry']]+[src/'drawlist_core_commands.cpp',src/'font_text_atlas.cpp',src/'world_esp_analysis.cpp',root/'dump_analysis/semantic_reconstruction/draw_shadows/check_main.cpp'];closure=set(compiled);todo=list(compiled)
while todo:
 p=todo.pop()
 for name in re.findall(r'^\s*#\s*include\s*"([^"]+)"',p.read_text(),re.M):
  q=p.parent/name
  if not q.exists():q=src/name
  if q.exists() and q not in closure:closure.add(q);todo.append(q)
closure.add(src/'draw_shadows_reconstruction.md')
def capture():return {str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(closure)}
before=capture();(work/'sources_before.json').write_text(json.dumps(before,indent=2)+'\n')
commands={'strict':['bash',str(root/'dump_analysis/semantic_reconstruction/draw_shadows/build.sh')],'sanitizer':['bash',str(root/'dump_analysis/semantic_reconstruction/draw_shadows/build.sh'),'sanitize'],'targeted_reversion':['bash',str(work/'reversion.sh')],'clipping_oracle':['bash',str(work/'build.sh'),'clip_oracle']}
def run(pair):
 name,args=pair;t=time.time();r=subprocess.run(args,cwd=root,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT);(work/(name+'_verification.txt')).write_text(r.stdout);return name,{'exit_code':r.returncode,'seconds':round(time.time()-t,3),'output':r.stdout.strip()}
with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:results=dict(pool.map(run,commands.items()))
after=capture();(work/'sources_after.json').write_text(json.dumps(after,indent=2)+'\n');original=json.loads((work/'review_sources.json').read_text());authorized={'source/reconstructed/draw_shadows_controllers.cpp','source/reconstructed/draw_shadows_checks.cpp','source/reconstructed/draw_shadows_reconstruction.md'};unexpected=[name for name,old in original.items() if name not in authorized and hashlib.sha256((root/name).read_bytes()).hexdigest()!=old]
manifest=root/'dump_analysis/MANIFEST.sha256';bad=[];count=0
for line in manifest.read_text().splitlines():
 if not line.strip():continue
 expected,name=line.split(None,1);p=root/'dump_analysis'/name.lstrip('*');count+=1
 if not p.exists() or hashlib.sha256(p.read_bytes()).hexdigest()!=expected:bad.append(name)
passed=before==after and not unexpected and not bad and all(results[k]['exit_code']==0 for k in ['strict','sanitizer','clipping_oracle']) and results['targeted_reversion']['exit_code']==1 and 'copied rectangle shadow geometry absent' in results['targeted_reversion']['output']
out={'pass':passed,'source_count':len(before),'sources_unchanged_during_verification':before==after,'unauthorized_shadow_changes':unexpected,'preserved_input_count':count,'preserved_input_mismatches':bad,'results':results};(work/'verification.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2));raise SystemExit(0 if passed else 1)
