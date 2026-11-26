from pathlib import Path
import sys,json
root=Path('/home/john/Desktop/cheat_re');sys.path.insert(0,str(root/'dump_analysis/semantic_reconstruction/menu_pages'));import menu_pages_lift as l
b,e,u=l.ev.fn(0x34c4b0);lift=l.Lift(b,e);lines=[];audit=[]
for a,t,tag in l.ev.lines:
 if b<=a<e and '# 0x3fd0e8' in t and t.startswith('mov '):
  state={'r':{'r14':l.I(1),'r15':l.I(2)},'m':{}};join,vals=lift.lang(a,state);lines.append('    Text{'+','.join(l.q(s) for s in vals)+'}');audit.append(dict(site=hex(a),join=hex(join),labels=vals))
(root/'source/reconstructed/menu_pages_config_labels.inc').write_text('// [C] All19 language branches, decoded directly from DLL bytes.\nconstexpr std::array<Text,19> config_labels={{\n'+',\n'.join(lines)+'\n}};\n');(root/'dump_analysis/semantic_reconstruction/menu_pages/menu_pages_config_labels.json').write_text(json.dumps(audit,indent=2,ensure_ascii=False)+'\n')
