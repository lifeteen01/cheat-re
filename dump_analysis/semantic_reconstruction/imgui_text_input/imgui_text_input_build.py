from pathlib import Path
import sys,subprocess,json,hashlib,shlex,re
root=Path('/home/john/Desktop/cheat_re');src=root/'source/reconstructed';out=Path(__file__).parent;tc=root/'dump_analysis/semantic_reconstruction/toolchain'
mode=sys.argv[1] if len(sys.argv)>1 else 'strict';sanitize=mode=='sanitize'
flags=['-std=c++20','-Wall','-Wextra','-Wpedantic','-Werror','-D_GLIBCXX_ASSERTIONS','-ffp-contract=off','-O1','-g','-ffunction-sections','-fdata-sections','--sysroot='+str(tc),'-B'+str(tc/'usr/lib/gcc/x86_64-linux-gnu/15/'),'-B'+str(tc/'usr/libexec/gcc/x86_64-linux-gnu/15/'),'-L/usr/lib/x86_64-linux-gnu','-I'+str(src)]
if sanitize:flags+=['-fsanitize=address,undefined','-static-libasan','-static-libubsan','-fno-sanitize-recover=all','-fno-omit-frame-pointer']
names=[p.name for p in sorted(src.glob('imgui_text_input_*.cpp'))]
names += [p.name for p in sorted(src.glob('imgui_windows_*.cpp')) if 'checks' not in p.name]
names += [p.name for p in sorted(src.glob('menu_controls_*.cpp')) if 'checks' not in p.name]
names += ['imgui_navigation_text.cpp', 'menu_color_picker_logging.cpp', 'renderer_helpers_font.cpp', 'font_text_controllers.cpp', 'font_text_lookup.cpp', 'font_text_atlas.cpp', 'drawlist_core_commands.cpp', 'drawlist_core_bindings.cpp', 'drawlist_core_channels.cpp']
names=list(dict.fromkeys(names))
sources=[src/n for n in names]+[out/'imgui_text_input_main.cpp']
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
subprocess.run([compiler,*flags,*objects,'-Wl,--gc-sections','-o',str(exe)],check=True)
result=subprocess.run([str(exe)],capture_output=True,text=True)
if result.returncode:print(result.stdout,result.stderr,flush=True);result.check_returncode()
for p,h in all_dependencies.items():assert digest(p)==h,(mode,p,'changed during build')
(out/('sources_'+mode+'.json')).write_text(json.dumps(all_dependencies,indent=2)+'\n')
print('PASS GCC15 strict C++20 text input controller fixtures',mode,flush=True)
