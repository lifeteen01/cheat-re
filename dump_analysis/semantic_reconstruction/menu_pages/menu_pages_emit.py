from pathlib import Path
import json,re
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/menu_pages';specs=json.loads((root/'dump_analysis/semantic_reconstruction/frame_dependencies/frame_dependencies_page_inventory.json').read_text());status=json.loads((out/'menu_pages_lift_status.json').read_text());good={x['entry'] for x in status if x['state'].startswith('generated')};lines=['// [I] Generated readable C++ from audited static constants/control data flow.']
cases=[]
for p in specs:
 entry=p['target']
 if entry not in good:continue
 r=int(entry,16);lines += [f'static FrameDependencyResult page_{r:x}(FrameMenuState& s,FrameMainMenuState& m,const MenuPagesApi& a) {{', '    return protect([&] {']+['        '+l for l in (out/f'menu_pages_lift_{r:x}.inc').read_text().splitlines()]+['    });','}']
 cases += [f'    case {p["thunk"]}:case {entry}:return page_{r:x}(s,m,a);']
(root/'source/reconstructed/menu_pages_generated.inc').write_text('\n'.join(lines)+'\n');(root/'source/reconstructed/menu_pages_dispatch.inc').write_text('\n'.join(cases)+'\n')
print('Emitted',len(good),'page bodies')

used=set(re.findall(r'\bmenu_literal_\d+\b','\n'.join(lines)))
data=[]
for item in json.loads((out/'menu_pages_literal_blobs.json').read_text()):
 if item['name'] not in used:continue
 value=bytes.fromhex(item['bytes']);raw=''.join('\\x%02x'%v for v in value)
 data.append('constexpr std::string_view '+item['name']+'{"'+raw+'",'+str(len(value))+'};')
(root/'source/reconstructed/menu_pages_literal_data.inc').write_text('// [C] Final decoded literal bytes INCLUDING copied padding, for buffer-alias replay.\n'+'\n'.join(data)+'\n')
