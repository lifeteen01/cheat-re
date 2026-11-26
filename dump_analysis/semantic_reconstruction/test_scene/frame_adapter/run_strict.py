from pathlib import Path
import json
import subprocess

root = Path('/home/john/Desktop/cheat_re')
output = root / 'dump_analysis/semantic_reconstruction/test_scene/frame_adapter'
prefix = root / 'dump_analysis/semantic_reconstruction/toolchain'
compiler = prefix / 'usr/bin/x86_64-linux-gnu-g++-15'
flags = ['-std=c++20', '-Wall', '-Wextra', '-Wpedantic', '-Werror',
         '-D_GLIBCXX_ASSERTIONS', '-ffp-contract=off', '-O1', '-g',
         '--sysroot=' + str(prefix),
         '-B' + str(prefix / 'usr/lib/gcc/x86_64-linux-gnu/15') + '/',
         '-B' + str(prefix / 'usr/libexec/gcc/x86_64-linux-gnu/15') + '/',
         '-I' + str(root / 'source/reconstructed'), '-I' + str(root / 'source/test_scene')]
sources = ['source/test_scene/frame.cpp', 'source/test_scene/frame_checks.cpp',
           'source/reconstructed/unity_backend_analysis.cpp',
           'source/reconstructed/02_rendering.cpp',
           'source/reconstructed/metadata_signature_analysis.cpp',
           str(output / 'runner.cpp')]
objects = []
with (output / 'strict.log').open('w') as log:
    for source in sources:
        source = root / source
        obj = output / (source.stem + '.o')
        subprocess.run([str(compiler), *flags, '-c', str(source), '-o', str(obj)],
                       check=True, stdout=log, stderr=log)
        objects.append(str(obj))
    record = json.loads((root / 'dump_analysis/semantic_reconstruction/test_scene/strict/build.json').read_text())
    resources = next(entry['object'] for entry in record['objects'] if Path(entry['source']).name == 'resources.cpp')
    archive = root / 'dump_analysis/semantic_reconstruction/test_scene/strict/libreconstructed.a'
    subprocess.run([str(compiler), *flags, *objects, resources, str(archive),
                    '-L/usr/lib/x86_64-linux-gnu', '-o', str(output / 'checks')],
                   check=True, stdout=log, stderr=log)
    subprocess.run([str(output / 'checks')], check=True, stdout=log, stderr=log)
print((output / 'strict.log').read_text())
