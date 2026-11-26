from pathlib import Path
import hashlib,json,os,shlex,subprocess
root=Path(__file__).resolve().parents[3]
work=Path(__file__).resolve().parent/'parent_saved_flags_reversions'
work.mkdir(exist_ok=True)
source=root/'source/reconstructed/imgui_windows_decorations.cpp'
original=source.read_text();before=hashlib.sha256(source.read_bytes()).hexdigest()
script=(work.parent/'verify_imgui_windows.sh').read_text()
script=script.replace('"$re_sysroot/usr/bin/x86_64-linux-gnu-g++-15"',
                      '"$re_root/dump_analysis/semantic_reconstruction/cached_compiler.py"')
source_pattern='"$re_root"/source/reconstructed/imgui_windows_*.cpp'
assert source_pattern in script
rows=[]
for site in ('399f3c','39a0f2'):
    replacement=original.replace('const auto flags = read<std::uint32_t>(s, w + 0x14, 0x399e59);',
                                  'auto flags = read<std::uint32_t>(s, w + 0x14, 0x399e59);')
    if site=='399f3c':
        token='no_title ? 0u : 0xc0u, true);'
        assert replacement.count(token)==1
        replacement=replacement.replace(token,token+'\n        flags = read<std::uint32_t>(s, w + 0x14, 0x399f3c);')
    else:
        token='    }\n    if (read<std::uint8_t>(s, w + 0xb4, 0x39a0f5)) {'
        assert replacement.count(token)==1
        replacement=replacement.replace(token,'        flags = read<std::uint32_t>(s, w + 0x14, 0x39a0f2);\n'+token)
    mutated=work/(site+'.cpp');mutated.write_text(replacement)
    files=[mutated if p==source else p for p in sorted((root/'source/reconstructed').glob('imgui_windows_*.cpp'))]
    current=script.replace(source_pattern,' '.join(shlex.quote(str(p)) for p in files))
    current=current.replace('"$re_out/window_checks${RE_ANALYSIS_SANITIZE:-0}"',shlex.quote(str(work/(site+'_checks'))))
    log=work/(site+'.txt')
    with log.open('w') as output:
        result=subprocess.run(['bash','-c',current],stdout=output,stderr=subprocess.STDOUT)
    text=log.read_text()
    expected='saved window flags control menu branch' if site=='399f3c' else 'saved flags control grip gate'
    rejected=result.returncode!=0 and expected in text
    rows.append(dict(site=site,exit_status=result.returncode,rejected_by_expected_assertion=rejected,log=str(log.relative_to(root))))
    assert rejected,rows[-1]
assert hashlib.sha256(source.read_bytes()).hexdigest()==before
(work/'verification.json').write_text(json.dumps({'production_unchanged':True,'source_sha256':before,'mutations':rows},indent=2)+'\n')
print('Both saved-flag isolated reversions rejected; production source unchanged')
