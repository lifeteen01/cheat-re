from pathlib import Path
import hashlib,json,subprocess,time
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/game_input_physics';p=root/'source/reconstructed/game_input_physics_keys.cpp';original=p.read_text()
line='return need(effects.predicate, 0x2e4a07)(call, 0) != 0;'
assert original.count(line)==1
bad=original.replace(line,'return std::uint8_t(need(effects.predicate, 0x2e4a07)(call, 0)) != 0;')
(out/'keys_reverted.cpp').write_text(bad)
s=(out/'build.sh').read_text().replace('game_input_physics/build"','game_input_physics/build_reversion"')
s=s.replace('"$re_root"/source/reconstructed/game_input_physics_*.cpp','"${re_sources[@]}"')
s=s.replace('"$re_tc/usr/bin/x86_64-linux-gnu-g++-15"', '''re_sources=()
for re_source in "$re_root"/source/reconstructed/game_input_physics_*.cpp; do
 if [[ "$re_source" != "$re_root/source/reconstructed/game_input_physics_keys.cpp" ]]; then
  re_sources+=("$re_source")
 fi
done
re_sources+=("$re_root/dump_analysis/semantic_reconstruction/game_input_physics/keys_reverted.cpp")
"$re_tc/usr/bin/x86_64-linux-gnu-g++-15"''')
(out/'build_reversion.sh').write_text(s)
start=time.monotonic();run=subprocess.run(['bash',str(out/'build_reversion.sh')],cwd=root,capture_output=True,text=True);message=run.stdout+run.stderr;(out/'reversion.txt').write_text(message)
expected='warm cursor tests full return word while button tests AL only; no cold dependencies'
result={'mutation':'incorrectly normalize Cursor2e49ec using AL instead of complete RAX at2e4a0c','exit_code':run.returncode,'seconds':round(time.monotonic()-start,3),'expected_diagnostic':expected,'observed_diagnostic':message.strip(),'delivered_source_unchanged':p.read_text()==original,'result':'PASS' if run.returncode==1 and message.strip()==expected and p.read_text()==original else 'FAIL'}
(out/'reversion.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2));assert result['result']=='PASS'
