from pathlib import Path
import hashlib
import json
import os
import subprocess

root = Path('/home/john/Desktop/cheat_re')
output = root / 'dump_analysis/semantic_reconstruction/test_scene/fidelity/s1_size'
strict_output = output / 'strict'
verification = json.loads((strict_output / 'verification.json').read_text())
toolchain = root / 'dump_analysis/semantic_reconstruction/toolchain'
compiler = toolchain / 'usr/bin/x86_64-linux-gnu-g++-15'
environment = os.environ.copy()
environment['PATH'] = str(toolchain / 'usr/bin') + os.pathsep + environment['PATH']
source_path = root / 'source/reconstructed/world_esp_player_labels.cpp'
source = source_path.read_text()
original_line = 'const float line = small ? 10.0f : fonts.current_size_248ed0;'
if source.count(original_line) != 1:
    raise RuntimeError('Negative control source identity changed')
mutated_source = source.replace(original_line, 'const float line = small ? 10.0f : 16.0f;')
mutation_source_path = root / 'dump_analysis/semantic_reconstruction/test_scene/fidelity/s1_size_hardcoded16.cpp'
if mutation_source_path.read_text() != mutated_source:
    raise RuntimeError('Authored working-copy mutation differs from the single intended reversion')
mutation_output = output / 'negative_control'
mutation_output.mkdir(exist_ok=True)
mutated_object = mutation_output / 'world_esp_player_labels.o'
compile_result = subprocess.run([str(compiler), *verification['flags'], str(mutation_source_path),
                                 '-c', '-o', str(mutated_object)],
                                env=environment, text=True, capture_output=True, check=False)
(mutation_output / 'compile.log').write_text(compile_result.stdout + compile_result.stderr)
if compile_result.returncode:
    raise RuntimeError('Negative control failed to compile')
objects = [str(mutated_object) if entry['source'] == str(source_path.relative_to(root))
           else str(root / entry['object']) for entry in verification['objects']]
executable = mutation_output / 's1_size_check'
link_result = subprocess.run([str(compiler), *verification['flags'], *objects,
                              '-Wl,--gc-sections', '-o', str(executable)],
                             env=environment, text=True, capture_output=True, check=False)
(mutation_output / 'link.log').write_text(link_result.stdout + link_result.stderr)
if link_result.returncode:
    raise RuntimeError('Negative control failed to link')
runtime = subprocess.run([str(executable)], env=environment, text=True,
                         capture_output=True, check=False)
(mutation_output / 'runtime.log').write_text(runtime.stdout + runtime.stderr)
expected_failure = 'Empty label must read a nondefault size and preserve the text controller size write'
changed_dependencies = {}
for entry in verification['objects']:
    for path, expected in entry['dependencies'].items():
        current = hashlib.sha256(Path(path).read_bytes()).hexdigest()
        if current != expected:
            changed_dependencies[path] = {'captured_sha256': expected, 'current_sha256': current}
frozen_sources = json.loads((output / 'verification.json').read_text())['frozen_sources']
assigned_sources_unchanged = all(hashlib.sha256((root / name).read_bytes()).hexdigest() == expected
                                for name, expected in frozen_sources.items())
record = {'passed': runtime.returncode == 1 and expected_failure in runtime.stderr and assigned_sources_unchanged,
          'mutation': 'Revert only ordinary label measurement size from copied shared state to literal sixteen',
          'mutation_source_sha256': hashlib.sha256(mutated_source.encode()).hexdigest(),
          'runtime_exit_code': runtime.returncode,
          'expected_assertion': expected_failure,
          'mutation_source': str(mutation_source_path.relative_to(root)),
          'assigned_sources_unchanged': assigned_sources_unchanged,
          'captured_dependencies_match_current': not changed_dependencies,
          'concurrent_dependency_changes': changed_dependencies,
          'scope': 'Authored working copy with one-line reversion; links captured positive strict objects; current broader dependencies changed concurrently; no production source mutation'}
(mutation_output / 'verification.json').write_text(json.dumps(record, indent=2) + '\n')
print(json.dumps(record, indent=2))
if not record['passed']:
    raise RuntimeError('Negative control did not fail at the shared-size regression')
