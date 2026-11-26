from pathlib import Path
import json,re,struct,hashlib,subprocess
ROOT=Path('/home/john/Desktop/cheat_re');OUT=ROOT/'dump_analysis/semantic_reconstruction/game_runtime_wrappers';im=(ROOT/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes();specs=json.loads((OUT/'specs.json').read_text());ranges=[];deps={};branch_count=0
for s in specs:
 a,b=s['wrapper'],s['end'];raw=im[a:b];binary=OUT/f'{a:x}.bin';binary.write_bytes(raw);fresh=subprocess.run(['/usr/bin/objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--adjust-vma='+str(a),str(binary)],capture_output=True,text=True,check=True).stdout;(OUT/f'{a:x}.fresh.asm').write_text(fresh)
 original=[]
 for l in (OUT/f'{a:x}.asm').read_text().splitlines():
  p,t=l.split('\t',1);original.append((int(p,16),t))
 old_flow=[];new_flow=[];calls=[];branches=[]
 for site,t in original:
  m=re.match(r'(call|j\w+)\s+0x([0-9a-f]+)',t)
  if m:
   op,target=m[1],int(m[2],16);old_flow.append((site,op,target))
   if op=='call' or op=='jmp' and not a<=target<b:calls.append({'site':hex(site),'target':hex(target)});deps.setdefault(target,[]).append(site)
   elif op!='jmp':branches.append({'site':hex(site),'target':hex(target),'instruction':t,'status':'C'})
 for line in fresh.splitlines():
  m=re.match(r'\s*([0-9a-f]+):\s+(?:[0-9a-f]{2}\s+)+\s*(call|j\w+)\s+(?:0x)?([0-9a-f]+)',line)
  if m:new_flow.append((int(m[1],16),m[2],int(m[3],16)))
 if old_flow!=new_flow:raise RuntimeError(f'fresh branch/call mismatch{a:x}: {old_flow} vs{new_flow}')
 if s['selector']==0x3349ac:
  assert any(t=='or     r8d,0xffffffff' for _,t in original)
 if s['guard']=='receiver':assert any('call   0x2caf08' in t for _,t in original)
 if s['guard']=='root_329714':assert any('call   0x329714' in t for _,t in original)
 ranges.append({'begin':hex(a),'end_exclusive':hex(b),'bytes':b-a,'sha256':hashlib.sha256(raw).hexdigest(),'extent_source':'PE runtime function record, including all post-RET blocks','fresh_control_flow_matches_static_listing':True,'status':'C: concrete controller/known stores with explicit typed final effects and unknown native byte masks','implementation':['source/reconstructed/game_runtime_wrappers_analysis.cpp','source/reconstructed/game_runtime_wrappers_specs.inc'],'conditional_branches':branches,'direct_dependencies':calls,'spec':{k:hex(v) if isinstance(v,int) else v for k,v in s.items()}});branch_count+=len(branches)
support={0x2de950:'zeroarity float result helper; known arity/return-slot location; actual returnslot key optional',0x2ed218:'reached Lerp four-slot packaging; known DWORDtype/count/pointer slots and lowfloat; unknown pointer/highDWORD bits explicit',0x2dda18:'reuse released metadata_argument_context zeroarity helper',0x2cb9fc:'reuse released metadata_argument_context onepointer helper',0x2d2094:'known two-slot reached pointer materialization; missing raw slots masked explicitly',0x32b1c8:'reuse released metadata_argument_context twoarg pointer/int helper; actual return key path preserves exact store order',0x2cba50:'reached threepointer transform packaging; unknown temporary/input pointers explicit',0x3214f4:'private reached known pointer/byte package only; public standalone ownership game_input_physics',0x32225c:'private reached known pointer/float package only; public standalone ownership game_input_physics'}
pe=struct.unpack_from('<I',im,60)[0];pa,pn=struct.unpack_from('<II',im,pe+24+112+24);u={a:b for a,b,_ in (struct.unpack_from('<III',im,p) for p in range(pa,pa+pn,12))};leaf={0x2cc268:0x2cc26f,0x2ddbf8:0x2ddbff,0x2d4928:0x2d492e,0x2caf08:0x2caf28,0x3c7bbc:0x3c7bc8}
# Reachable dependencies are explicit, never relabeled foreign merely because they are local wrappers.
resolved={0x334224:'released resolve_class_334224',0x3349ac:'released select_parameter_method_3349ac at literal index/count-1',0x334a90:'released select_counted_method_334a90 at count1',0x329714:'released aux static-field root before3247cc',0x3c7bbc:'literal zeroQWORD then zeroDWORD; copied pointer form optional',0x2caf08:'sample_pointer_range literal guard'}

# Leaf/tail CFG audit follows every branch and stops only at RET/external tail;
# it never infers a function extent from its first RET.
all_lines=[]
for line in (ROOT/'dump_analysis/static/cheat_annot.asm').read_text().splitlines():
 m=re.match(r'^([0-9a-f]+)\t(.*)',line)
 if m:all_lines.append((int(m[1],16),m[2]))
code={a:(t,all_lines[i+1][0]) for i,(a,t) in enumerate(all_lines[:-1])}
known_entries=set(u)|set(deps)|{0x3cdbd4,0x3cdbb0}
def leaf_extent(begin):
 todo=[begin];seen=set();end=begin
 while todo:
  at=todo.pop()
  if at in seen:continue
  seen.add(at)
  if at not in code:raise RuntimeError(f'undecoded leaf{at:x}')
  t,nxt=code[at];end=max(end,nxt)
  if t.startswith('int3'):raise RuntimeError(f'reachable padding{at:x}')
  if t.startswith('ret'):continue
  m=re.match(r'(j\w+)\s+0x([0-9a-f]+)',t)
  if m:
   op,target=m[1],int(m[2],16)
   if op=='jmp' and target!=begin and target in known_entries:continue
   todo.append(target)
   if op!='jmp':todo.append(nxt)
  elif re.match(r'(?:rex.W )?jmp ',t):continue
  else:todo.append(nxt)
  if len(seen)>1000:raise RuntimeError('unexpected nonleaf bound')
 return end
for r in deps:
 if r not in u and r not in leaf:leaf[r]=leaf_extent(r)

dependencies=[]
for r,sites in sorted(deps.items()):
 if r in support:status='I: reached known-store specialization';meaning=support[r]
 elif r in resolved:status='C: released dependency';meaning=resolved[r]
 else:status='I: fixed literal constructor/decoder specialization';meaning='Native fixed encoded literal is represented by decoded owned string in static catalogue; generic constructor/decoder ABI not claimed.'
 (OUT/f'dependency_{r:x}.asm').write_text(''.join(f'{a:x}\t{t}\n' for a,t in all_lines if r<=a<(u[r] if r in u else leaf[r])))
 dependencies.append({'extent_source':'PE runtime function record' if r in u else 'manually bounded leaf/tail or all-path CFG; no firstRET heuristic','target':hex(r),'end_exclusive':hex(u[r]) if r in u else hex(leaf[r]) if r in leaf else None,'sites':[hex(x) for x in sites],'status':status,'meaning':meaning})
assert bytes(x^(0x37+i) for i,x in enumerate(im[0x2df852:0x2df85a]))==b'Vector3\0'
assert bytes(x^(0x37+i) for i,x in enumerate(im[0x3738ba:0x3738c2]))==b'Inverse\0'
result={'sample_sha256':hashlib.sha256(im).hexdigest(),'virtual_layout':'file offset equalsRVA','ranges':ranges,'root_count':len(ranges),'root_bytes':sum(r['bytes'] for r in ranges),'conditional_branches':branch_count,'dependencies':dependencies,'literal_proof':{'Vector3_2df850':{'encoded':hex(struct.unpack_from('<Q',im,0x2df852)[0]),'decoded':'Vector3','rule':'eight literal bytes XOR(index+0x37)'},'Inverse_3738b8':{'encoded':hex(struct.unpack_from('<Q',im,0x3738ba)[0]),'decoded':'Inverse','rule':'eight literal bytes XOR(index+0x37)'}},'untranslated_local_root_ranges':[],'limits':['No GameAssembly.dll/UnityPlayer.dll/global-metadata.dat available; actual final effects remain required typed results.','Raw pointer slots, returnslot keys and stack-high bytes are never invented; unmaterialized masks accompany final effects.','Value-only struct inputs adapt native pointer/alias ABI; supplied numeric keys preserve known output-clear/copy and input-load ordering.','3214f4/32225c standalone public APIs belong to active game_input_physics, not this module.','Fixed literal storage and existing metadata helpers reused; generic native string/allocator/dispatcher/executor ABI not claimed.']}
assert result['root_count']==21 and result['root_bytes']==6225
(OUT/'range_branch_dependency_ledger.json').write_text(json.dumps(result,indent=2)+'\n');(OUT/'remaining_ranges.json').write_text(json.dumps({'untranslated_local_roots':[],'typed_and_native_data_limits':result['limits'],'reached_local_specializations':[d for d in dependencies if d['status'].startswith('I')]},indent=2)+'\n');print('roots',len(ranges),'bytes',result['root_bytes'],'branches',branch_count,'dependencies',len(dependencies))
