from pathlib import Path
import sys,json
ROOT=Path('/home/john/Desktop/cheat_re');sys.path.insert(0,str(ROOT/'dump_analysis/semantic_reconstruction/menu_pages'));import menu_pages_lift as l
rows=[];audit=[]
for entry in [0x34d784,0x34e554,0x34f35c]:
 b,e,u=l.ev.fn(entry);lift=l.Lift(b,e);labels=[]
 for a,t,tag in l.ev.lines:
  if b<=a<e and '# 0x3fd0e8' in t and t.startswith('mov '):
   state={'r':{'r15':l.I(1),'r12':l.I(2)},'m':{}};join,values=lift.lang(a,state);labels.append(values);audit.append(dict(site=hex(a),join=hex(join),labels=values))
 if len(labels)!=9:raise ValueError((hex(entry),len(labels)))
 rows.append('    PlayerLabels{{'+','.join('Text{'+','.join(l.q(s) for s in vals)+'}' for vals in labels)+'}}')
(ROOT/'source/reconstructed/menu_pages_player_labels.inc').write_text('// [C] Exact immutable UTF16/XOR literals, allthree page bodies.\nconstexpr std::array<PlayerLabels,3> player_labels={{\n'+',\n'.join(rows)+'\n}};\n')
(ROOT/'dump_analysis/semantic_reconstruction/menu_pages/menu_pages_player_labels.json').write_text(json.dumps(audit,indent=2,ensure_ascii=False)+'\n')
