from pathlib import Path
import concurrent.futures
import hashlib
import json
import os
import shlex
import subprocess

root = Path('/home/john/Desktop/cheat_re')
output = root / 'dump_analysis/semantic_reconstruction/test_scene/fidelity/s1_size'
toolchain = root / 'dump_analysis/semantic_reconstruction/toolchain'
compiler = toolchain / 'usr/bin/x86_64-linux-gnu-g++-15'
environment = os.environ.copy()
environment['PATH'] = str(toolchain / 'usr/bin') + os.pathsep + environment['PATH']
common_flags = ['-std=c++20', '-Wall', '-Wextra', '-Wpedantic', '-Werror',
                '-D_GLIBCXX_ASSERTIONS', '-ffp-contract=off', '-O1', '-g',
                '-ffunction-sections', '-fdata-sections',
                '--sysroot=' + str(toolchain),
                '-B' + str(toolchain / 'usr/lib/gcc/x86_64-linux-gnu/15') + '/',
                '-B' + str(toolchain / 'usr/libexec/gcc/x86_64-linux-gnu/15') + '/',
                '-L/usr/lib/x86_64-linux-gnu',
                '-I' + str(root / 'source/reconstructed')]
translation_units = ['source/test_scene/resources.cpp', 'source/test_scene/semantic_checks.cpp']
translation_units += ['source/reconstructed/' + filename for filename in [
    'world_esp_player_labels.cpp', 'world_esp_draw.cpp', 'world_esp_analysis.cpp',
    'renderer_helpers_world.cpp', 'renderer_helpers_background.cpp',
    'renderer_helpers_font.cpp', 'renderer_helpers_icons.cpp', 'renderer_helpers_widgets.cpp',
    'font_frame_bindings.cpp', 'font_text_controllers.cpp', 'font_text_atlas.cpp',
    'font_text_lookup.cpp', 'font_text_raster.cpp',
    'drawlist_core_bindings.cpp', 'drawlist_core_commands.cpp', 'drawlist_core_channels.cpp']]
translation_units += ['dump_analysis/semantic_reconstruction/test_scene/fidelity/s1_size_check_main.cpp']
owned_sources = [
    'source/reconstructed/world_esp_analysis.hpp',
    'source/reconstructed/world_esp_player_labels.cpp',
    'source/reconstructed/renderer_helpers_world.cpp',
    'source/reconstructed/renderer_helpers_checks.cpp',
    'source/test_scene/esp.cpp', 'source/test_scene/semantic_checks.cpp',
    'source/test_scene/esp_evidence.md']


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


output.mkdir(parents=True, exist_ok=True)
frozen_sources = {name: digest(root / name) for name in owned_sources}
original_logs = []
for stage in ['before']:
    result = subprocess.run(['sha256sum', '-c', 'MANIFEST.sha256'], cwd=root / 'dump_analysis',
                            capture_output=True, text=True, check=False)
    (output / ('original_hashes_' + stage + '.log')).write_text(result.stdout + result.stderr)
    if result.returncode:
        raise RuntimeError('Original manifest check failed')
    original_logs.append({'stage': stage, 'exit_code': result.returncode,
                          'passed_entries': result.stdout.count(': OK')})

results = {}
for mode in ['strict', 'sanitizer']:
    mode_output = output / mode
    mode_output.mkdir(exist_ok=True)
    flags = list(common_flags)
    if mode == 'sanitizer':
        flags += ['-fsanitize=address,undefined', '-static-libasan', '-static-libubsan',
                  '-fno-sanitize-recover=all', '-fno-omit-frame-pointer']

    def compile_unit(name):
        source = root / name
        target = mode_output / (source.stem + '.o')
        dependency_file = target.with_suffix('.d')
        result = subprocess.run([str(compiler), *flags, '-MD', '-MF', str(dependency_file),
                                 '-c', str(source), '-o', str(target)],
                                env=environment, capture_output=True, text=True, check=False)
        target.with_suffix('.compile.log').write_text(result.stdout + result.stderr)
        if result.returncode:
            raise RuntimeError('Compilation failed: ' + name)
        dependencies = shlex.split(dependency_file.read_text().replace('\\\n', ' ').split(':', 1)[1])
        return {'source': name, 'object': str(target.relative_to(root)),
                'dependencies': {str(Path(path).resolve()): digest(Path(path))
                                 for path in dict.fromkeys(dependencies)}}

    print('Compiling isolated S1 size check:', mode, len(translation_units), 'translation units', flush=True)
    with concurrent.futures.ThreadPoolExecutor(max_workers=4) as executor:
        objects = list(executor.map(compile_unit, translation_units))
    executable = mode_output / 's1_size_check'
    link_result = subprocess.run([str(compiler), *flags,
                                  *[str(root / entry['object']) for entry in objects],
                                  '-Wl,--gc-sections', '-Wl,-Map=' + str(mode_output / 'link.map'),
                                  '-o', str(executable)],
                                 env=environment, capture_output=True, text=True, check=False)
    (mode_output / 'link.log').write_text(link_result.stdout + link_result.stderr)
    if link_result.returncode:
        raise RuntimeError('Focused link failed: ' + mode)
    runtime_environment = environment.copy()
    runtime_environment['ASAN_OPTIONS'] = 'detect_leaks=1:halt_on_error=1'
    runtime_environment['UBSAN_OPTIONS'] = 'halt_on_error=1:print_stacktrace=1'
    runtime = subprocess.run([str(executable)], env=runtime_environment,
                             capture_output=True, text=True, check=False)
    (mode_output / 'runtime.log').write_text(runtime.stdout + runtime.stderr)
    unchanged = all(digest(Path(path)) == expected for entry in objects
                    for path, expected in entry['dependencies'].items())
    results[mode] = {'passed': runtime.returncode == 0 and unchanged,
                     'runtime_exit_code': runtime.returncode,
                     'dependencies_unchanged': unchanged, 'flags': flags, 'objects': objects,
                     'executable_sha256': digest(executable)}
    (mode_output / 'verification.json').write_text(json.dumps(results[mode], indent=2) + '\n')
    print(mode, 'exit', runtime.returncode, runtime.stdout.strip(), flush=True)
    if not results[mode]['passed']:
        raise RuntimeError('Focused runtime failed: ' + mode)

syntax_sources = ['source/test_scene/esp.cpp',
                  'source/reconstructed/renderer_helpers_checks.cpp',
                  'source/reconstructed/world_esp_extended_checks.cpp']
syntax = subprocess.run([str(compiler), *common_flags, '-fsyntax-only',
                         *[str(root / name) for name in syntax_sources]],
                        env=environment, capture_output=True, text=True, check=False)
(output / 'syntax.log').write_text(syntax.stdout + syntax.stderr)
original = subprocess.run(['sha256sum', '-c', 'MANIFEST.sha256'], cwd=root / 'dump_analysis',
                          capture_output=True, text=True, check=False)
(output / 'original_hashes_after.log').write_text(original.stdout + original.stderr)
source_unchanged = all(digest(root / name) == expected for name, expected in frozen_sources.items())
record = {'passed': syntax.returncode == 0 and original.returncode == 0 and source_unchanged,
          'frozen_sources': frozen_sources, 'sources_unchanged': source_unchanged,
          'translation_units': translation_units, 'syntax_sources': syntax_sources,
          'syntax_exit_code': syntax.returncode, 'original_checks_before': original_logs,
          'original_check_after_exit': original.returncode,
          'original_check_after_passed_entries': original.stdout.count(': OK'),
          'modes': {mode: {'passed': result['passed'], 'runtime_exit_code': result['runtime_exit_code']}
                    for mode, result in results.items()},
          'scope': 'Fresh isolated owned label/font/text composition; no sample execution; parent full-scene validation separate'}
(output / 'verification.json').write_text(json.dumps(record, indent=2) + '\n')
print(json.dumps(record, indent=2), flush=True)
if not record['passed']:
    raise RuntimeError('S1 source freeze, syntax or original integrity check failed')
