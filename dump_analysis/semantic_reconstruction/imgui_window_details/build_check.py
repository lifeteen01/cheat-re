#!/usr/bin/env python3
import hashlib,json,os,re,resource,subprocess
from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/imgui_window_details';src=root/'source/reconstructed';sysroot=root/'dump_analysis/semantic_reconstruction/toolchain'
resource.setrlimit(resource.RLIMIT_CORE,(0,0))
mode='sanitizer' if os.environ.get('RE_ANALYSIS_SANITIZE')=='1' else 'strict';obj=out/('objects_'+mode);obj.mkdir(exist_ok=True)
compiler=sysroot/'usr/bin/x86_64-linux-gnu-g++-15'
base=[str(compiler),'--sysroot='+str(sysroot),'-B'+str(sysroot/'usr/lib/gcc/x86_64-linux-gnu/15/'),'-B'+str(sysroot/'usr/libexec/gcc/x86_64-linux-gnu/15/'),'-std=c++20','-Wall','-Wextra','-Wpedantic','-Werror','-D_GLIBCXX_ASSERTIONS','-ffp-contract=off','-ffunction-sections','-fdata-sections','-O1','-g','-I'+str(src)]
if mode=='sanitizer':base+=['-fsanitize=address,undefined','-static-libasan','-static-libubsan','-fno-sanitize-recover=all','-fno-omit-frame-pointer']
def dependencies(path):
 files={path};queue=[path]
 while queue:
  f=queue.pop()
  for name in re.findall(r'^#include "([^"]+)"',f.read_text(),re.M):
   p=src/name
   if p.exists() and p not in files:files.add(p);queue.append(p)
 return files
objects=[];inputs={out/'build_check.py',out/'build_inputs.json'}
for name in json.loads((out/'build_inputs.json').read_text()):
 p=Path(name);deps=dependencies(p);inputs|=deps
 key=hashlib.sha256(json.dumps(base).encode()+b''.join(str(d).encode()+d.read_bytes() for d in sorted(deps))).hexdigest()
 o=obj/(p.stem+'.o');stamp=obj/(p.stem+'.sha256')
 if not o.exists() or not stamp.exists() or stamp.read_text()!=key:
  subprocess.run(base+['-c',str(p),'-o',str(o)],check=True);stamp.write_text(key)
 objects.append(str(o))
exe=out/('window_details_'+mode)
subprocess.run(base+['-L/usr/lib/x86_64-linux-gnu','-Wl,--gc-sections']+objects+['-o',str(exe)],check=True)
subprocess.run([str(exe)],check=True)
