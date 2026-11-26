from pathlib import Path
import re,json,struct
ROOT=Path('/home/john/Desktop/cheat_re');OUT=ROOT/'dump_analysis/semantic_reconstruction/game_runtime_wrappers';SRC=ROOT/'source/reconstructed';q=json.loads((ROOT/'dump_analysis/semantic_reconstruction/review_dependency_closure/exact_remaining.json').read_text());roots=[int(r['begin'],16) for r in q['local_bodies'] if r['group']=='time_camera_transform_metadata_wrappers']+[0x2e0bf0];strings=json.loads((ROOT/'dump_analysis/semantic_reconstruction/function_strings.json').read_text())
roles={0x31492c:'lerp',0x3738cc:'inverse',0x374bf8:'transform',0x374d60:'transform',0x36cbe4:'set_integer',0x36ce18:'set_byte',0x370968:'set_vector',0x373f0c:'set_scalar',0x36c79c:'integer',0x3247cc:'predicate',0x315924:'object_zero'}
for r in [0x2e081c,0x2e6240,0x31581c,0x2e0bf0]:roles[r]='scalar'
im=(ROOT/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes();pe=struct.unpack_from('<I',im,60)[0];pa,pn=struct.unpack_from('<II',im,pe+24+112+24);unwind={a:b for a,b,_ in (struct.unpack_from('<III',im,p) for p in range(pa,pa+pn,12))}
rows=[]
for r in sorted(roots):
 lines=[]
 for line in (OUT/f'{r:x}.asm').read_text().splitlines():
  a,t=line.split('\t',1);lines.append((int(a,16),t))
 def matches(p):return [(a,t) for a,t in lines if re.search(p,t)]
 def rip(p):
  vals=matches(p);return [(a,int(re.search(r'# 0x([0-9a-f]+)',t)[1],16)) for a,t in vals]
 flag_reads=rip(r'mov    eax,DWORD PTR \[rip');flag_writes=rip(r'mov    DWORD PTR \[rip');target_stores=rip(r'mov    QWORD PTR \[rip.*\],r8');target_warm=rip(r'mov    r8,QWORD PTR \[rip');dispatch=rip(r'mov    rcx,QWORD PTR \[rip');context=rip(r'lea    rdx,\[rip')
 methods=[]
 for s in strings.get(hex(r),[]):
  m=re.search(r'getter=0x([0-9a-f]+) (.*)',s['evidence']);methods.append((int(m[1],16),m[2]))
 if r==0x31492c:methods.append((0x2df850,'Vector3'))
 if r==0x3738cc:methods.insert(0,(0x3738b8,'Inverse'))
 method=methods[0][1];klass=methods[-1][1];ns='' if r==0x373f0c else 'UnityEngine'
 role=roles.get(r,'object_one')
 guarded=bool(matches(r'call   0x2caf08'))
 selector=0x334a90 if r==0x3738cc else 0x3349ac
 selectsite=matches('call   '+hex(selector))[0][0]
 methodload=next(a for a,t in lines if a>selectsite and t=='mov    r8,QWORD PTR [rax]')
 effectsite,executor=next((a,int(re.search(r'0x([0-9a-f]+)',t)[1],16)) for a,t in reversed(lines) if re.match(r'(call|jmp)\s+0x',t))
 if r in [0x374bf8,0x374d60]:executor=0x2cba50
 row={'wrapper':r,'end':unwind[r],'role':role,'guard': 'root_329714' if r==0x3247cc else 'receiver' if guarded else 'none','flags':flag_reads[0][1],'target':target_stores[0][1],'context':context[0][1],'flags_read':flag_reads[0][0],'flag_one':flag_writes[0][0],'target_read':methodload,'flags_reload':flag_reads[1][0],'target_store':target_stores[0][0],'warm_target':target_warm[0][0],'setup_root':dispatch[0][0],'flag_two':flag_writes[1][0],'effect_root':dispatch[-1][0],'effect_site':effectsite,'executor':executor,'selector':selector,'method':method,'klass':klass,'namespace':ns,'literal_getters':[{'getter':hex(a),'decoded':s} for a,s in methods]}
 rows.append(row)
(OUT/'specs.json').write_text(json.dumps(rows,indent=2)+'\n')
# This is a static literal catalogue, not a bytecode/assembly interpreter.
fields=['wrapper','end','flags','target','context','flags_read','flag_one','target_read','flags_reload','target_store','warm_target','setup_root','flag_two','effect_root','effect_site','executor','selector']
text='// [C] Literal catalogue from copied native bodies; generator/evidence in game_runtime_wrappers.\nstatic constexpr GameRuntimeSpec runtime_specs[]{\n'
for r in rows:text+='    {'+', '.join(hex(r[k]) for k in fields)+', GameRuntimeRole::'+r['role']+', GameRuntimeGuard::'+r['guard']+', '+', '.join(json.dumps(r[k]) for k in ['namespace','klass','method'])+'},\n'
text+='};\n';(SRC/'game_runtime_wrappers_specs.inc').write_text(text)
print('specs',len(rows));print('\n'.join(f"{r['wrapper']:x} {r['role']} {r['guard']} {r['namespace']}::{r['klass']}.{r['method']} ->{r['executor']:x}" for r in rows))
