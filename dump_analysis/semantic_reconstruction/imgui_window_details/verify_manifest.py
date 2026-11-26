#!/usr/bin/env python3
"""Record unchanged copied inputs around one actual fixture build/run."""
import datetime,hashlib,json,os,re,subprocess,sys
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/imgui_window_details';src=root/'source/reconstructed'
mode='sanitizer' if os.environ.get('RE_ANALYSIS_SANITIZE')=='1' else 'strict'
files={out/'verify_manifest.py',out/'build_check.py',out/'build_inputs.json',out/'verify_imgui_window_details.sh',out/'build_audit.py',out/'range_branch_dependency_ledger.json',out/'remaining_ranges.json',root/'dump_analysis/unpacked/cheat.unpacked.dll',root/'dump_analysis/static/cheat_annot.asm'}
queue=[Path(p) for p in json.loads((out/'build_inputs.json').read_text())];files.update(queue)
for p in src.glob('imgui_window_details_*'):files.add(p)
seen=set()
while queue:
 p=queue.pop()
 if p in seen:continue
 seen.add(p)
 for name in re.findall(r'^#include "([^"]+)"',p.read_text(),re.M):
  h=src/name
  if h.exists():files.add(h);queue.append(h)
def digest():return {str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(files)}
before=digest();start=datetime.datetime.now(datetime.timezone.utc).isoformat()
env=dict(os.environ);env['ASAN_OPTIONS']='detect_leaks=1:halt_on_error=1';env['UBSAN_OPTIONS']='halt_on_error=1:print_stacktrace=1'
result=subprocess.run(['bash',str(out/'verify_imgui_window_details.sh')],capture_output=True,text=True,env=env)
after=digest();changed=[p for p in before if before[p]!=after[p]]
record={'mode':mode,'started_utc':start,'finished_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'command':['bash',str(out/'verify_imgui_window_details.sh')],'exit_code':result.returncode,'source_count':len(files),'compile_inputs':len(json.loads((out/'build_inputs.json').read_text())),'before':before,'after':after,'changed':changed,'sanitizer_options':{k:env[k] for k in ['ASAN_OPTIONS','UBSAN_OPTIONS']} if mode=='sanitizer' else {}}
(out/(mode+'_sources.json')).write_text(json.dumps(record,indent=2)+'\n')
report=f'{mode} window-details immutable fixture verification\nstart {start}\nexit_code {result.returncode}\nchanged files {len(changed)}\n'+result.stdout+result.stderr
(out/(mode+'_verification.txt')).write_text(report);print(report,end='')
if result.returncode or changed:sys.exit(result.returncode or 1)
