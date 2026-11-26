from pathlib import Path
import hashlib,json,subprocess,time
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/font_atlas_input';p=root/'source/reconstructed/font_atlas_input_ingestion.cpp';original=p.read_text()
line='        const auto input = c.read<Address>(source, 0x39fe0f);\n'
assert original.count(line)==1
bad=original.replace(line,'').replace('        const auto data = c.allocate(offset(length), 0x39fdfc);\n',line+'        const auto data = c.allocate(offset(length), 0x39fdfc);\n')
assert bad!=original
(out/'ingestion_reverted.cpp').write_text(bad)
s=(out/'build.sh').read_text().replace('font_atlas_input/build"','font_atlas_input/build_reversion"')
s=s.replace('font_atlas_input_{memory,ingestion,clear,ranges,bindings,coverage,checks}.cpp','font_atlas_input_{memory,clear,ranges,bindings,coverage,checks}.cpp "$re_root/dump_analysis/semantic_reconstruction/font_atlas_input/ingestion_reverted.cpp"')
(out/'build_reversion.sh').write_text(s)
start=time.monotonic();run=subprocess.run(['bash',str(out/'build_reversion.sh')],cwd=root,capture_output=True,text=True)
message=run.stdout+run.stderr;(out/'reversion.txt').write_text(message)
expected='data length/source reloads, no invented tail byte, ellipsis and pixel mutation'
result={'mutation':'move source config data-pointer read before native allocation/store instead of literal39fe0f','exit_code':run.returncode,'seconds':round(time.monotonic()-start,3),'expected_diagnostic':expected,'observed_diagnostic':message.strip(),'delivered_source_unchanged':p.read_text()==original,'result':'PASS' if run.returncode==1 and message.strip()==expected and p.read_text()==original else 'FAIL'}
(out/'reversion.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2));assert result['result']=='PASS'
