from pathlib import Path
import hashlib,json,re,os,subprocess,datetime,sys
root=Path('/home/john/Desktop/cheat_re');src=root/'source/reconstructed';out=root/'dump_analysis/semantic_reconstruction/game_aux_helpers';mode='sanitizer' if os.environ.get('RE_ANALYSIS_SANITIZE')=='1' else 'strict'
files=set(src.glob('game_aux_helpers_*'));files.update([src/'field_getters_analysis.cpp',out/'check_main.cpp',out/'verify.sh',out/'verify_manifest.py',out/'audit.py',out/'range_branch_dependency_ledger.json',root/'dump_analysis/unpacked/cheat.unpacked.dll',root/'dump_analysis/static/cheat_annot.asm']);queue=[p for p in files if p.suffix in ['.cpp','.hpp']]
seen=set()
while queue:
 p=queue.pop()
 if p in seen:continue
 seen.add(p)
 for name in re.findall(r'^#include "([^"]+)"',p.read_text(),re.M):
  h=src/name
  if h.exists():files.add(h);queue.append(h)
def hashes():return {str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(files)}
before=hashes();start=datetime.datetime.now(datetime.timezone.utc).isoformat();r=subprocess.run(['bash',str(out/'verify.sh')],capture_output=True,text=True);after=hashes();changed=[p for p in before if before[p]!=after[p]]
result={'mode':mode,'started_utc':start,'ended_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'exit_code':r.returncode,'before':before,'after':after,'changed':changed,'compile_inputs':5}
(out/(mode+'_sources.json')).write_text(json.dumps(result,indent=2)+'\n');report=f'game_aux_helpers {mode}\nexit_code {r.returncode}\nchanged_files {len(changed)}\n'+r.stdout+r.stderr;(out/(mode+'_verification.txt')).write_text(report);print(report,end='')
if r.returncode or changed:sys.exit(r.returncode or 1)
