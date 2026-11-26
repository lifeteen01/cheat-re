from pathlib import Path
import hashlib,json,re,subprocess,time
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/game_input_physics';src=root/'source/reconstructed'
units=list(src.glob('game_input_physics_*.cpp'))+[src/(n+'.cpp') for n in ['metadata_analysis','metadata_argument_bindings','registry_analysis']]+[out/'driver.cpp']
def capture():
 seen=set();pending=units.copy()
 while pending:
  p=pending.pop().resolve()
  if p in seen:continue
  seen.add(p)
  for name in re.findall(r'^\s*#\s*include\s*"([^"]+)"',p.read_text(),re.M):
   q=p.parent/name
   if not q.exists():q=src/name
   assert q.exists(),q
   pending.append(q)
 return {str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(seen)}
before=capture();result={'translation_units':len(units),'source_count':len(before),'sources':before,'runs':{}}
for mode in ['', 'sanitize']:
 start=time.monotonic();p=subprocess.run(['bash',str(out/'build.sh')]+([mode] if mode else []),capture_output=True,text=True,cwd=root);name=mode or 'strict'
 (out/f'{name}.txt').write_text(p.stdout+p.stderr);result['runs'][name]={'exit_code':p.returncode,'seconds':round(time.monotonic()-start,3),'sources_unchanged':capture()==before};(out/'verification.json').write_text(json.dumps(result,indent=2)+'\n');print(name,result['runs'][name],flush=True);assert p.returncode==0,(p.stdout,p.stderr);assert capture()==before,'sources changed during verification'
p=subprocess.run(['sha256sum','-c','MANIFEST.sha256'],cwd=root/'dump_analysis',capture_output=True,text=True);(out/'preserved_inputs.txt').write_text(p.stdout+p.stderr);result['preserved_inputs']={'exit_code':p.returncode,'pass_count':p.stdout.count(': OK')};assert p.returncode==0,p.stdout+p.stderr;(out/'verification.json').write_text(json.dumps(result,indent=2)+'\n');print('preserved inputs',result['preserved_inputs'],flush=True)
