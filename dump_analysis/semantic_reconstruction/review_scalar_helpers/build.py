from pathlib import Path
import sys,subprocess,json,hashlib,shlex,re
root=Path('/home/john/Desktop/cheat_re');src=root/'source/reconstructed';out=Path(__file__).parent;tc=root/'dump_analysis/semantic_reconstruction/toolchain'
mode=sys.argv[1] if len(sys.argv)>1 else 'strict';sanitize=mode=='sanitize';revert=mode.startswith('SG')
flags=['-std=c++20','-Wall','-Wextra','-Wpedantic','-Werror','-D_GLIBCXX_ASSERTIONS','-ffp-contract=off','-O1','-g','--sysroot='+str(tc),'-B'+str(tc/'usr/lib/gcc/x86_64-linux-gnu/15/'),'-B'+str(tc/'usr/libexec/gcc/x86_64-linux-gnu/15/'),'-L/usr/lib/x86_64-linux-gnu','-I'+str(src)]
if sanitize:flags+=['-fsanitize=address,undefined','-static-libasan','-static-libubsan','-fno-sanitize-recover=all','-fno-omit-frame-pointer']
names=['game_helpers_analysis.cpp','game_helpers_checks.cpp','field_getters_analysis.cpp','snapshot_bindings.cpp','game_base_analysis.cpp','04_esp_entities.cpp','05_server_observable.cpp','aim_weapon_analysis.cpp','metadata_analysis.cpp','metadata_export_analysis.cpp','registry_analysis.cpp','projectile_leaf_helpers.cpp','projectile_leaf_checks.cpp','unity_math_analysis.cpp','unity_math_checks.cpp','font_producer_analysis.cpp','font_producer_checks.cpp','font_builder_support.cpp','font_builder_support_checks.cpp']
sources=[src/n for n in names]+[out/'check_main.cpp']
if revert:
 if mode=='SG1':
  target=src/'game_helpers_analysis.cpp';text=target.read_text()
  matched=re.search(r'        c\.dispatcher = read<Address>\(g\(0x3d5e60\), wrapper\);\n.*?write\(g\(flag_cell\), flag_bits \| 2, wrapper\);',text,re.S)
  assert matched
  marker=matched[0]
  replacement='        if (observe && flag_cell) write(g(flag_cell), flag_bits | 2, wrapper);\n        c.dispatcher = read<Address>(g(0x3d5e60), wrapper);'
 elif mode=='SG2':
  target=src/'projectile_leaf_helpers.cpp';text=target.read_text()
  begin=text.index('        // [C]32b7a0 deterministic fields');end=text.index('        x.need(api.spread',begin)
  marker=text[begin:end];replacement=''
 elif mode=='SG3':
  target=src/'projectile_leaf_helpers.cpp';text=target.read_text()
  begin=text.index('        // [C] Unknown home/return-slot stores');end=text.index('        write(call.context + 0x88',begin)
  marker=text[begin:end];replacement=''
 elif mode=='SG4':
  target=src/'game_helpers_analysis.cpp';text=target.read_text()
  begin=text.index('namespace {\nstd::optional<float> quaternion_nan')
  end=text.index('GameBaseResult<Address> game_helper_object',begin)
  marker=text[begin:end]
  replacement='Vec3 quaternion_vector_2ef834(Orientation q,Vec3 v) {\n    const float z2=q.z+q.z,y2=q.y+q.y,x2=q.x+q.x;\n    const float zz=z2*q.z,xz=z2*q.x,yz=z2*q.y,xy=y2*q.x;\n    const float yw=y2*q.w,xx=x2*q.x,xw=x2*q.w,zw=z2*q.w,yy=y2*q.y;\n    const float x=((1.0f-(zz+yy))*v.x+(xy-zw)*v.y)+(yw+xz)*v.z;\n    const float z=((yz+xw)*v.y+(xz-yw)*v.x)+(1.0f-(yy+xx))*v.z;\n    const float y=((1.0f-(zz+xx))*v.y+(zw+xy)*v.x)+(yz-xw)*v.z;\n    return {x,y,z};\n}\n'
 else:raise ValueError(mode)
 assert marker in text,mode
 patched=out/('reverted_'+mode+'.cpp');patched.write_text(text.replace(marker,replacement,1));sources[sources.index(target)]=patched
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
 expected='root read failure precedes Sprite/string bit2 store' if mode=='SG1' else 'native xw-before-yz ADDSS retains first quiet-NaN payload' if mode=='SG4' else 'projectile leaf fixture'
 assert expected in result.stderr,(mode,result.stderr)
 (out/('sources_'+mode+'.json')).write_text(json.dumps(all_dependencies,indent=2)+'\n')
 print('PASS isolated reversion',mode,'rejected:',result.stderr.strip(),flush=True)
else:
 if result.returncode:print(result.stdout,result.stderr,flush=True);result.check_returncode()
 for p,h in all_dependencies.items():assert digest(p)==h,(mode,p,'changed during build')
 (out/('sources_'+mode+'.json')).write_text(json.dumps(all_dependencies,indent=2)+'\n')
 print('PASS GCC15 strict C++20 independent helper review fixtures',mode,flush=True)
