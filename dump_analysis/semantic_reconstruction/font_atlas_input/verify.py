from pathlib import Path
import hashlib,json,re,subprocess,time
root=Path('/home/john/Desktop/cheat_re'); out=root/'dump_analysis/semantic_reconstruction/font_atlas_input'; src=root/'source/reconstructed'
units=list(src.glob('font_atlas_input_*.cpp'))
for stem in ['font_builder_sfnt','font_builder_outline','font_builder_packing','font_builder_raster','font_builder_controller','font_builder_support','font_builder_cff','font_builder_owned','font_builder_finish','font_text_lookup','font_text_atlas','world_esp_analysis','drawlist_core_bindings','frame_dependencies_analysis','frame_dependencies_ui_setup','frame_dependencies_theme']:
 units.append(src/(stem+'.cpp'))
units.append(out/'driver.cpp')
def capture():
 seen=set();pending=units.copy()
 while pending:
  p=pending.pop().resolve()
  if p in seen:continue
  seen.add(p)
  for include in re.findall(r'^\s*#\s*include\s*"([^"]+)"',p.read_text(),re.M):
   q=p.parent/include
   if not q.exists():q=src/include
   assert q.exists(),q
   pending.append(q)
 return {str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(seen)}
before=capture();result={'sources':before,'source_count':len(before),'translation_units':len(units),'runs':{}}
for mode in ['', 'sanitize']:
 start=time.monotonic(); run=subprocess.run(['bash',str(out/'build.sh')]+([mode] if mode else []),cwd=root,capture_output=True,text=True)
 name=mode or 'strict';(out/f'{name}.txt').write_text(run.stdout+run.stderr)
 result['runs'][name]={'exit_code':run.returncode,'seconds':round(time.monotonic()-start,3),'sources_unchanged':before==capture()}
 (out/'verification.json').write_text(json.dumps(result,indent=2)+'\n')
 assert run.returncode==0,(name,run.stdout,run.stderr)
 assert before==capture(),'source changed during verification'
 print(name,'PASS',result['runs'][name],flush=True)
# Native input preservation, paths in manifest are relative to dump_analysis.
check=subprocess.run(['sha256sum','-c','MANIFEST.sha256'],cwd=root/'dump_analysis',capture_output=True,text=True)
(out/'preserved_inputs.txt').write_text(check.stdout+check.stderr)
result['preserved_inputs']={'exit_code':check.returncode,'pass_count':check.stdout.count(': OK')}
assert check.returncode==0,check.stdout+check.stderr
(out/'verification.json').write_text(json.dumps(result,indent=2)+'\n')
print('preserved inputs PASS',result['preserved_inputs'],flush=True)
