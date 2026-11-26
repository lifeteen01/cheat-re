from pathlib import Path
import hashlib,json,re,os,subprocess,datetime,sys
root=Path('/home/john/Desktop/cheat_re');src=root/'source/reconstructed';out=root/'dump_analysis/semantic_reconstruction/frame_world_controllers';mode='sanitizer' if os.environ.get('RE_ANALYSIS_SANITIZE')=='1' else 'strict'
files=set(src.glob('frame_world_controllers_*')); names=re.search(r'sources=\(([^)]+)\)',(out/'verify.sh').read_text())[1].split(); files.update(src/n for n in names); files.update([out/n for n in ['check_main.cpp','verify.sh','verify_manifest.py','audit.py','extract.py','initial_inventory.json','range_branch_dependency_ledger.json','remaining_ranges.json','closure_delta.json']]); files.update([root/'dump_analysis/semantic_reconstruction/toolchain/usr/bin/x86_64-linux-gnu-g++-15',root/'dump_analysis/semantic_reconstruction/toolchain/usr/libexec/gcc/x86_64-linux-gnu/15/cc1plus']); files.update([root/'dump_analysis/unpacked/cheat.unpacked.dll',root/'dump_analysis/static/cheat_annot.asm']);queue=[p for p in files if p.suffix in ['.cpp','.hpp','.inc']];seen=set()
while queue:
 p=queue.pop()
 if p in seen:continue
 seen.add(p)
 for name in re.findall(r'^#include "([^"]+)"',p.read_text(),re.M):
  h=src/name
  if h.exists():files.add(h);queue.append(h)
def hashes():return {str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(files)}
before=hashes();start=datetime.datetime.now(datetime.timezone.utc).isoformat();r=subprocess.run(['bash',str(out/'verify.sh')],capture_output=True,text=True);after=hashes();changed=[p for p in before if before[p]!=after[p]]
result={'mode':mode,'started_utc':start,'ended_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'exit_code':r.returncode,'before':before,'after':after,'changed':changed,'compile_inputs':len(names)+1};(out/(mode+'_sources.json')).write_text(json.dumps(result,indent=2)+'\n');report=f'frame_world_controllers {mode}\nexit_code {r.returncode}\nchanged_files {len(changed)}\n'+r.stdout+r.stderr;(out/(mode+'_verification.txt')).write_text(report);print(report,end='')
if r.returncode or changed:sys.exit(r.returncode or 1)
