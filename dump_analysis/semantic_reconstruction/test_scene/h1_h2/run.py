from pathlib import Path
import hashlib
import json
import os
import subprocess
import sys

root = Path('/home/john/Desktop/cheat_re')
output = Path(__file__).resolve().parent
prefix = root / 'dump_analysis/semantic_reconstruction/toolchain'
compiler = prefix / 'usr/bin/x86_64-linux-gnu-g++-15'
sources = ['source/test_scene/frame.cpp', 'source/test_scene/frame_checks.cpp',
           'source/test_scene/owned_client.cpp', 'source/test_scene/resources.cpp', 'source/reconstructed/01_hooks.cpp',
           'source/reconstructed/hook_setup_analysis.cpp']
inputs = sources + ['source/test_scene/frame.hpp', 'source/test_scene/owned_client.hpp',
                   'source/test_scene/scene.hpp']

def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()

def originals():
    checked = {}
    for entry in (root / 'dump_analysis/MANIFEST.sha256').read_text().splitlines():
        expected, name = entry.split('  ', 1)
        actual = digest(root / 'dump_analysis' / name)
        if expected != actual:
            raise RuntimeError('Original manifest mismatch: ' + name)
        checked[name] = actual
    return checked

for mode in sys.argv[1:] or ['strict', 'sanitizer']:
    directory = output / mode
    directory.mkdir(parents=True, exist_ok=True)
    before = {name: digest(root / name) for name in inputs}
    original_before = originals()
    flags = ['-std=c++20', '-Wall', '-Wextra', '-Wpedantic', '-Werror',
             '-D_GLIBCXX_ASSERTIONS', '-ffp-contract=off', '-O1', '-g',
             '-ffunction-sections', '-fdata-sections', '--sysroot=' + str(prefix),
             '-B' + str(prefix / 'usr/lib/gcc/x86_64-linux-gnu/15') + '/',
             '-B' + str(prefix / 'usr/libexec/gcc/x86_64-linux-gnu/15') + '/',
             '-I' + str(root / 'source/reconstructed'), '-I' + str(root / 'source/test_scene')]
    environment = os.environ.copy()
    if mode == 'sanitizer':
        flags += ['-fsanitize=address,undefined', '-static-libasan', '-static-libubsan',
                  '-fno-sanitize-recover=all', '-fno-omit-frame-pointer']
        environment['ASAN_OPTIONS'] = 'detect_leaks=1:halt_on_error=1'
        environment['UBSAN_OPTIONS'] = 'halt_on_error=1:print_stacktrace=1'
    record = json.loads((root / 'dump_analysis/semantic_reconstruction/test_scene' / mode / 'build.json').read_text())
    archive = root / 'dump_analysis/semantic_reconstruction/test_scene' / mode / 'libreconstructed.a'
    archive_before = digest(archive)
    objects = []
    with (directory / 'verification.log').open('w') as log:
        for source in sources + [str(output / 'runner.cpp')]:
            path = root / source
            obj = directory / (path.stem + '.o')
            subprocess.run([str(compiler), *flags, '-c', str(path), '-o', str(obj)],
                           check=True, stdout=log, stderr=log)
            objects.append(str(obj))
        executable = directory / 'checks'
        subprocess.run([str(compiler), *flags, *objects, str(archive),
                        '-Wl,--gc-sections', '-L/usr/lib/x86_64-linux-gnu', '-o', str(executable)],
                       check=True, stdout=log, stderr=log)
        subprocess.run([str(executable)], check=True, stdout=log, stderr=log, env=environment)
    unchanged = all(digest(root / name) == expected for name, expected in before.items())
    if not unchanged or digest(archive) != archive_before or originals() != original_before:
        raise RuntimeError('Inputs changed during focused verification')
    result = {'passed': True, 'mode': mode, 'sources': before,
              'original_manifest_entries': len(original_before), 'originals_unchanged': True,
              'archive_sha256': archive_before,
              'executable_sha256': digest(executable), 'compiler_sha256': digest(compiler), 'flags': flags}
    (directory / 'verification.json').write_text(json.dumps(result, indent=2) + '\n')
    print(mode, (directory / 'verification.log').read_text(), flush=True)
