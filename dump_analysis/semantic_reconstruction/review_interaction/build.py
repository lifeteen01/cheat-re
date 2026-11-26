from pathlib import Path
import sys,subprocess,json,hashlib,shlex,re
root=Path('/home/john/Desktop/cheat_re');src=root/'source/reconstructed';out=Path(__file__).parent;tc=root/'dump_analysis/semantic_reconstruction/toolchain'
mode=sys.argv[1] if len(sys.argv)>1 else 'strict';sanitize=mode=='sanitize';revert=mode in ('I1','I2')
flags=['-std=c++20','-Wall','-Wextra','-Wpedantic','-Werror','-D_GLIBCXX_ASSERTIONS','-ffp-contract=off','-O1','-g','--sysroot='+str(tc),'-B'+str(tc/'usr/lib/gcc/x86_64-linux-gnu/15/'),'-B'+str(tc/'usr/libexec/gcc/x86_64-linux-gnu/15/'),'-L/usr/lib/x86_64-linux-gnu','-I'+str(src)]
if sanitize:flags+=['-fsanitize=address,undefined','-static-libasan','-static-libubsan','-fno-sanitize-recover=all','-fno-omit-frame-pointer']
names=['interaction_workers.cpp','interaction_workers_checks.cpp','04_esp_entities.cpp','game_base_analysis.cpp','aim_weapon_analysis.cpp','05_server_observable.cpp','projectile_analysis.cpp','launcher_analysis.cpp','trajectory_cache_analysis.cpp','snapshot_bindings.cpp','field_getters_analysis.cpp','metadata_analysis.cpp','metadata_export_analysis.cpp','registry_analysis.cpp']
sources=[src/n for n in names]+[out/'check_main.cpp']
if mode == 'candidate':
 sources[0]=out/'patched_interaction_workers.cpp'
 sources[1]=out/'patched_interaction_workers_checks.cpp'
if mode in ('I1','I2'):
 original=(out/'original_interaction_workers.cpp').read_text();patched=sources[0].read_text()
 if mode=='I1':
  begin=patched.index('        // [C] EBX captures');end=patched.index('\n    }\n    void dispatch',begin)
  oldbegin=original.index('        if(!(bits&1u))');oldend=original.index('\n    }\n    void dispatch',oldbegin)
 else:
  begin=patched.index('                // [C] 2e813a');end=patched.index('\n            });});',begin)
  oldbegin=original.index('                const auto category=read<std::int16_t>(def+0x58);');oldend=original.index('\n            });});',oldbegin)
 patched=patched[:begin]+original[oldbegin:oldend]+patched[end:]
 p=out/('reverted_'+mode+'.cpp');p.write_text(patched);sources[0]=p
cache=out/('objects_sanitize' if sanitize else 'objects_strict');cache.mkdir(exist_ok=True)
compiler=str(tc/'usr/bin/x86_64-linux-gnu-g++-15');objects=[];all_dependencies={}
def digest(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
for source in sources:
 obj=cache/(source.stem+'.o');meta=obj.with_suffix('.json');deps=obj.with_suffix('.d');valid=False
 if obj.exists() and meta.exists():
  previous=json.loads(meta.read_text());valid=previous['flags']==flags and all(Path(p).is_file() and digest(p)==h for p,h in previous['dependencies'].items())
 if not valid:
  print('Compile',source.name,flush=True)
  subprocess.run([compiler,*flags,'-MMD','-MF',str(deps),'-c',str(source),'-o',str(obj)],check=True)
  names=shlex.split(deps.read_text().replace('\\\n',' ').split(':',1)[1]);dependencies=[str(source),*names]
  meta.write_text(json.dumps(dict(flags=flags,dependencies={p:digest(p) for p in dict.fromkeys(dependencies)}),indent=2)+'\n')
 all_dependencies.update(json.loads(meta.read_text())['dependencies']);objects.append(str(obj))
exe=out/('checks_'+mode)
subprocess.run([compiler,*flags,*objects,'-o',str(exe)],check=True)
result=subprocess.run([str(exe)],capture_output=True,text=True)
if revert:
 assert result.returncode!=0,(mode,'reversion unexpectedly passed')
 expected='I1 captured wrapper flags' if mode=='I1' else 'I2 transfer UID read'
 assert expected in result.stderr,(mode,result.stderr)
 (out/('sources_'+mode+'.json')).write_text(json.dumps(all_dependencies,indent=2)+'\n')
 print('PASS isolated reversion',mode,'rejected:',result.stderr.strip(),flush=True)
else:
 if result.returncode:print(result.stdout,result.stderr,flush=True);result.check_returncode()
 for p,h in all_dependencies.items():assert digest(p)==h,(mode,p,'changed during build')
 (out/('sources_'+mode+'.json')).write_text(json.dumps(all_dependencies,indent=2)+'\n')
 print('PASS GCC15 strict C++20 independent interaction review fixtures',mode,flush=True)
