"""Focused strict + ASan/UBSan fixtures. Runs only owned analyst C++ code."""
from pathlib import Path
import hashlib
import json
import re
import subprocess

ROOT = Path(__file__).resolve().parents[4]
OUT = Path(__file__).resolve().parent
SRC = ROOT / 'source/reconstructed'
TC = ROOT / 'dump_analysis/semantic_reconstruction/toolchain'
COMPILER = TC / 'usr/bin/x86_64-linux-gnu-g++-15'
SOURCES = [SRC / (name + '.cpp') for name in
           ('offset_profile', 'offset_catalog', 'offset_profile_bindings', 'offset_catalog_checks')]
SOURCES += [OUT / 'catalog_main.cpp']
FLAGS = ['-std=c++20', '-Wall', '-Wextra', '-Wpedantic', '-Werror',
         '-D_GLIBCXX_ASSERTIONS', '-ffp-contract=off', '-O1', '-g',
         '--sysroot=' + str(TC), '-B' + str(TC / 'usr/lib/gcc/x86_64-linux-gnu/15/'),
         '-B' + str(TC / 'usr/libexec/gcc/x86_64-linux-gnu/15/'),
         '-L/usr/lib/x86_64-linux-gnu', '-I' + str(SRC)]
results = {}
for variant in ('strict', 'sanitize'):
    flags = FLAGS[:]
    if variant == 'sanitize':
        flags += ['-fsanitize=address,undefined', '-static-libasan', '-static-libubsan',
                  '-fno-sanitize-recover=all', '-fno-omit-frame-pointer', '-no-pie']
    executable = OUT / ('catalog_checks_' + variant)
    command = [str(COMPILER), *flags, *(str(p) for p in SOURCES), '-o', str(executable)]
    subprocess.run(command, check=True)
    result = subprocess.run([str(executable), str(ROOT / 'source/windows_base/offsets.json')],
                            capture_output=True, text=True)
    print(result.stdout, end='', flush=True)
    print(result.stderr, end='', flush=True)
    result.check_returncode()
    results[variant] = dict(command=command, stdout=result.stdout, stderr=result.stderr,
                            returncode=result.returncode,
                            executable_sha256=hashlib.sha256(executable.read_bytes()).hexdigest())
results['source_hashes'] = {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
                            for p in [*SOURCES, SRC/'offset_profile.hpp', SRC/'offset_catalog.hpp',
                                      SRC/'offset_profile_bindings.hpp', ROOT/'source/windows_base/offsets.json']}
pending = SOURCES[:]
seen = set()
while pending:
    path = pending.pop()
    if path in seen:
        continue
    seen.add(path)
    results['source_hashes'][str(path.relative_to(ROOT))] = hashlib.sha256(path.read_bytes()).hexdigest()
    for name in re.findall(r'^\s*#include\s+"([^"]+)"', path.read_text(), re.M):
        include = path.parent / name
        if not include.is_file():
            include = SRC / name
        if include.is_file():
            pending.append(include)
(OUT / 'verification.json').write_text(json.dumps(results, indent=2) + '\n')
