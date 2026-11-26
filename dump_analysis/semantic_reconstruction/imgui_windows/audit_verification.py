#!/usr/bin/env python3
import hashlib,json,os,re,subprocess,sys
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/imgui_windows';source=root/'source/reconstructed'
script=out/'verify_imgui_windows.sh'
inputs={script,out/'check_main.cpp'}
for name in re.findall(r'source/reconstructed/([a-z0-9_]+\.cpp)',script.read_text()):inputs.add(source/name)
inputs.update(source.glob('imgui_windows_*.cpp'))
pending=list(inputs)
while pending:
 path=pending.pop()
 if path.suffix not in ('.cpp','.hpp'):continue
 for name in re.findall(r'^#include "([^"]+)"',path.read_text(),re.M):
  dep=source/name
  if dep.exists() and dep not in inputs:inputs.add(dep);pending.append(dep)
inputs.add(root/'dump_analysis/unpacked/cheat.unpacked.dll')
inputs.add(root/'dump_analysis/static/cheat_annot.asm')
def hashes():return {str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(inputs)}
before=hashes();mode='sanitizer' if '--sanitize' in sys.argv else 'strict';env=dict(os.environ)
if mode=='sanitizer':env['RE_ANALYSIS_SANITIZE']='1';env['ASAN_OPTIONS']='detect_leaks=1'
result=subprocess.run(['bash',str(script)],cwd=root,env=env,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
text=result.stdout.decode(errors='replace');print(text,end='');after=hashes();changed=[p for p in before if before[p]!=after[p]]
(out/f'{mode}_verification.txt').write_text(text+f'\nexit_code={result.returncode}\ninputs={len(before)}\nunchanged={not changed}\n')
(out/f'{mode}_sources.json').write_text(json.dumps({'exit_code':result.returncode,'unchanged':not changed,'changed':changed,'inputs':before},indent=2)+'\n')
if changed:raise SystemExit('verification inputs changed: '+str(changed))
raise SystemExit(result.returncode)
