#!/usr/bin/env python3
"""Content-checked compiler driver for the offline fixture build.

Each translation unit retains GCC's complete -MD dependency list (including system
headers). Cache hits require identical compiler/cc1plus bytes, flags, dependencies
and object bytes. A normal link and fixture execution still run on every build.
"""
from pathlib import Path
import fcntl
import hashlib
import json
import os
import shlex
import subprocess
import sys
import tempfile

WORK = Path(__file__).resolve().parent
compiler = Path(os.environ.get('RE_CACHED_REAL_CXX', str(WORK/'toolchain/usr/bin/x86_64-linux-gnu-g++-15')))
args = sys.argv[1:]
if '-o' not in args or '-c' in args:
    raise SystemExit('cached driver requires one ordinary complete C++ fixture build')
output_index = args.index('-o')
output = args[output_index + 1]
sources = [Path(a).resolve() for a in args if a.endswith('.cpp') and not a.startswith('-')]
if not sources:
    raise SystemExit('cached driver received no source files')
source_names = {str(s) for s in sources}
flags = [a for i,a in enumerate(args)
         if i not in (output_index,output_index+1) and str(Path(a).resolve()) not in source_names]
cache = WORK/'compiler_cache'
cache.mkdir(exist_ok=True)
# Content hashes are memoized within this compiler invocation only.
file_hashes = {}
def digest(path):
    path = str(Path(path).resolve())
    if path not in file_hashes:
        file_hashes[path] = hashlib.sha256(Path(path).read_bytes()).hexdigest()
    return file_hashes[path]
cc1 = subprocess.check_output([str(compiler),'-print-prog-name=cc1plus'],text=True).strip()
identity = {'compiler':str(compiler),'compiler_sha256':digest(compiler),
            'cc1plus_sha256':digest(cc1),'flags':flags}
identity_hash = hashlib.sha256(json.dumps(identity,sort_keys=True).encode()).hexdigest()
objects = []
records = []
hits = 0
for source in sources:
    token = hashlib.sha256((str(source)+'\0'+identity_hash).encode()).hexdigest()
    obj = cache/(token+'.o')
    meta = cache/(token+'.json')
    with (cache/(token+'.lock')).open('w') as lock:
        fcntl.flock(lock,fcntl.LOCK_EX)
        previous = None
        if obj.is_file() and meta.is_file():
            try:
                previous = json.loads(meta.read_text())
                valid = previous['identity']==identity and digest(obj)==previous['object_sha256']
                valid = valid and all(Path(p).is_file() and digest(p)==h for p,h in previous['dependencies'].items())
            except (OSError,ValueError,KeyError):
                valid = False
        else:
            valid = False
        if valid:
            hits += 1
        else:
            print('Compile',source.name,flush=True)
            with tempfile.TemporaryDirectory(prefix='compile-',dir=cache) as temporary:
                temp = Path(temporary)
                built = temp/'unit.o'
                deps = temp/'unit.d'
                subprocess.run([str(compiler),*flags,'-MD','-MF',str(deps),'-c',str(source),'-o',str(built)],check=True)
                names = shlex.split(deps.read_text().replace('\\\n',' ').split(':',1)[1])
                dependency_names = list(dict.fromkeys([str(source),*names]))
                # Recompute after compile, never trust a stale per-invocation source digest.
                for name in dependency_names:
                    file_hashes.pop(str(Path(name).resolve()),None)
                previous = {'identity':identity,'dependencies':{str(Path(p).resolve()):digest(p) for p in dependency_names},
                            'object_sha256':digest(built)}
                built.replace(obj)
                meta.write_text(json.dumps(previous,indent=2)+'\n')
        objects.append(str(obj))
        records.append({'source':str(source),'object':str(obj),'cache_hit':valid,
                        'object_sha256':previous['object_sha256'],'dependencies':previous['dependencies']})
print('Link',len(objects),'translation units;',hits,'content-verified cache hits',flush=True)
subprocess.run([str(compiler),*flags,*objects,'-o',output],check=True)
report = os.environ.get('RE_COMPILER_CACHE_REPORT')
if report:
    Path(report).write_text(json.dumps({'identity':identity,'objects':records,'hits':hits,
                                       'misses':len(objects)-hits,'output':output},indent=2)+'\n')
