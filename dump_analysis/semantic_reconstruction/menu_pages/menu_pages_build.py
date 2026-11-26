"""[I] Reproducible strict/sanitizer build with source/header-content cache.
Only analyst C++ fixtures are executed. No DLL instructions or numeric targets."""
from pathlib import Path
import sys,re,subprocess,hashlib,json,shlex
root=Path('/home/john/Desktop/cheat_re');out=Path(__file__).parent;src=root/'source/reconstructed';tc=root/'dump_analysis/semantic_reconstruction/toolchain';variant='sanitize' if len(sys.argv)>1 and sys.argv[1]=='sanitize' else 'strict'
compiler=tc/'usr/bin/x86_64-linux-gnu-g++-15'
flags=['-std=c++20','-Wall','-Wextra','-Wpedantic','-Werror','-D_GLIBCXX_ASSERTIONS','-ffp-contract=off','-O1','-g','--sysroot='+str(tc),'-B'+str(tc/'usr/lib/gcc/x86_64-linux-gnu/15/'),'-B'+str(tc/'usr/libexec/gcc/x86_64-linux-gnu/15/'),'-L/usr/lib/x86_64-linux-gnu','-I'+str(src)]
if variant=='sanitize':flags+=['-fsanitize=address,undefined','-static-libasan','-static-libubsan','-fno-sanitize-recover=all','-fno-omit-frame-pointer']
shell=(out/'menu_pages_build.sh').read_text();sources=[src/x for x in re.findall(r'"\$re_root/source/reconstructed/([^\"]+\.cpp)"',shell)]+[out/'menu_pages_main.cpp'];sources=list(dict.fromkeys(sources))
cache=out/('objects_'+variant);cache.mkdir(exist_ok=True);objects=[]
def digest(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
for source in sources:
 obj=cache/(source.stem+'.o');meta=obj.with_suffix('.json');deps=obj.with_suffix('.d');valid=False
 if obj.exists() and meta.exists():
  previous=json.loads(meta.read_text());valid=previous['flags']==flags and all(Path(p).is_file() and digest(p)==h for p,h in previous['dependencies'].items())
 if not valid:
  print('Compile',source.name,flush=True)
  subprocess.run([str(compiler),*flags,'-MMD','-MF',str(deps),'-c',str(source),'-o',str(obj)],check=True)
  names=shlex.split(deps.read_text().replace('\\\n',' ').split(':',1)[1]);dependencies=[str(source),*names]
  meta.write_text(json.dumps(dict(flags=flags,dependencies={p:digest(p) for p in dict.fromkeys(dependencies)}),indent=2)+'\n')
 objects.append(str(obj))
exe=out/('menu_pages_checks'+('sanitize' if variant=='sanitize' else ''))
print('Link',len(objects),'sources',flush=True);subprocess.run([str(compiler),*flags,*objects,'-o',str(exe)],check=True)
subprocess.run([str(exe)],check=True);print('PASS: GCC15 C++20 menu page fixtures ('+variant+')',flush=True)
