from pathlib import Path
import hashlib,json,re,struct,subprocess
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/menu_controls';binary=root/'dump_analysis/unpacked/cheat.unpacked.dll';raw=binary.read_bytes()
assert hashlib.sha256(raw).hexdigest()=='ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
pe=struct.unpack_from('<I',raw,60)[0];rva,length=struct.unpack_from('<II',raw,pe+24+112+24);pdata=[struct.unpack_from('<III',raw,i) for i in range(rva,rva+length,12)]
lines=(root/'dump_analysis/static/cheat_annot.asm').read_text().splitlines();assembly=[(int(v.split('\t')[0],16),v) for v in lines]
# [C] pdata ranges; explicit leaves below are checked through final basic block,
# never inferred by a first-RET heuristic.
full=[0x3bd114,0x3be2ec,0x3bf008,0x387d18,0x3bcd9c,0x3bc7e0,0x3c4478,0x386438,0x385b70,0x3853b0,0x388e2c,0x3c38a8,0x387664,
0x39334c,0x392614,0x394360,0x394428,0x3945c0,0x3944ac,0x394784,0x394a14,0x39b0cc,0x39b488,0x39b584,0x39bf0c,0x391efc,0x3948dc,0x394b40,0x38f224,0x38f370,0x38f160,0x38f0bc,0x3903c8,0x39e1e0,0x388d60,0x388c5c,0x398bec,0x398cc8,0x398c60,0x39896c,0x39890c,0x38ec34,0x390c80,0x392f14,0x39233c,0x39307c,0x395964,0x3926b8,0x39290c,0x3927d0,0x38ec90,0x390efc,0x391184,0x389db4,0x390720]
leaf={0x3bc7d8:0x3bc7e0,0x3c43f4:0x3c4436,0x3c4438:0x3c4476,0x35d200:0x35d21d,0x390078:0x390081,0x395250:0x395257,0x38f85c:0x38f8b1,0x39b52c:0x39b555,0x3945fc:0x394637,0x392714:0x392722,0x392ca4:0x392cb3,0x3925cc:0x3925e8,0x39b6d8:0x39b704,0x39676c:0x39678e,0x394cb4:0x394cd9,0x3948bc:0x3948dc,0x395cf8:0x395d13,0x39408c:0x3940aa,0x394354:0x39435e,0x390810:0x390863,0x392798:0x3927ce,0x39ac04:0x39aca7,0x392384:0x3923be,0x392298:0x3922dc,0x39045c:0x3904df,0x3789fc:0x378a14,0x3762bc:0x3762cc,0x3762ac:0x3762bb,0x3762cc:0x3762d1,0x33565c:0x33566c,0x335e48:0x335ea6,0x39b690:0x39b6d7,0x39b558:0x39b584,0x395130:0x395156,0x392f34:0x392f48,0x392ef8:0x392f13,0x39b44c:0x39b488,0x39b410:0x39b44c,0x3bfe38:0x3bfe4a,0x3bfda4:0x3bfe35,0x3bfe4c:0x3bfebb,0x39b704:0x39b71b,0x392cb4:0x392cc7,0x392dc4:0x392dcc,0x395108:0x39512e,0x39bb20:0x39bb4c,0x39bc6c:0x39bc85,0x39bb4c:0x39bc69,0x39bc88:0x39bd51,0x3943e4:0x3943ef,0x392d54:0x392dc3,0x394228:0x39422f,0x394230:0x394265,0x3a31bc:0x3a31f7,0x3926ac:0x3926b8,0x392654:0x3926a9}
# Limitations are not converted into successful generic primitives.
special={0x39bb4c:"condition0 specialization used by39bb20 callers",0x39bc88:"condition0 specialization used by39bc6c callers",0x39290c:"horizontal axis0 specialization reached by root sliders",0x392d54:"repeat flag8 specialization reached by39290c",0x388c5c:"owned vertex-vector adaptation; host sin/cos numeric equivalence unverified",0x3c4064:'only datatype4/signed32 and datatype8/float32 reached by native slider roots; flags0',0x3b8664:'signed32 horizontal linear flags0 behavior, including nav accumulation; other type/log/vertical paths remain',0x3b95c4:'float32 horizontal linear flags0 behavior, including format rounding and nav accumulation; other type/log/vertical paths remain',0x3b5ed0:'signed32 linear ratio path only',0x3b7358:'signed32 linear value path only',0x3b64f4:'float32 linear ratio path only',0x3b7948:'float32 linear value path only',0x3b5cb8:'owned host-CRT numeric conversion adaptation; native locale/nonfinite parser equivalence unverified',0x3c00d4:'owned format precision parsing; exotic native formats outside numeric subset stop',0x3940ac:'flags0x80 used by drag-hold; delayed anonymous-ID hover remains explicit',0x3947ec:'flags0 used by controls; nonzero root/child traversal stops',0x394268:'key press/repeat path reached by3853b0 Esc; full named-key flags outside this call not claimed'}
# Remaining concrete local entries directly reached by the typed boundaries.
remaining=[0x38e97c,0x390a88,0x389f18,0x38cfa4,0x390994,0x379680,0x39031c,0x391928,0x38f020,0x390260,0x395bc4,0x395db8,0x395258,0x3b54fc,0x3b5890,0x3b54ac,0x3b5824,0x3c04d0,0x392654,0x3a1148,0x3a1244,0x3a1410,0x39f874,0x3a2010,0x3a01f4,0x3a7400]
def bounds(s):
 return next(((x,y) for x,y,_ in pdata if x==s),None) or (s,leaf.get(s,s))
records=[]
for s in sorted(set(full)|set(leaf)|set(special)|set(remaining)):
 begin,end=bounds(s)
 if s in leaf:end=leaf[s]
 if end<=begin:
  # Explicit unresolved leaf bounds are kept unknown, not fabricated as translated.
  status='U: exact leaf extent pending'
 else:status='U: local body remains' if s in remaining else 'I: specialized/adapted' if s in special else 'C/I: concrete controller/helper'
 if s in special:status+='; '+special[s]
 code=[v for a,v in assembly if begin<=a<end]
 branches=[];calls=[]
 for v in code:
  a=int(v.split('\t')[0],16);m=re.search(r'\b(call|j\w+)\s+0x([0-9a-f]+)',v)
  if not m:continue
  kind,target=m[1],int(m[2],16);entry={'site':hex(a),'mnemonic':kind,'target':hex(target),'inside_range':begin<=target<end}
  (calls if kind=='call' else branches).append(entry)
 if code:(out/f'{s:x}.txt').write_text('\n'.join(code)+'\n')
 if s not in remaining and end>begin:
  dump=subprocess.run(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--insn-width=16',f'--start-address={begin}',f'--stop-address={end}',str(binary)],check=True,stdout=subprocess.PIPE,text=True).stdout
  (out/f'{s:x}.asm').write_text(dump)
 records.append({'begin':hex(begin),'end_exclusive':hex(end) if end>begin else None,'bytes':end-begin if end>begin else None,'status':status,'sha256':hashlib.sha256(raw[begin:end]).hexdigest() if end>begin else None,'branches':branches,'calls':calls})
known={int(x['begin'],16) for x in records};dependencies={}
for record in records:
 for edge in record['calls']+record['branches']:
  if edge['inside_range']:continue
  target=int(edge['target'],16)
  if target not in dependencies:dependencies[target]={'target':hex(target),'extent':None,'owned_here':target in known,'sites':[]}
  extent=next(((x,y) for x,y,_ in pdata if x<=target<y),None)
  if extent:dependencies[target]['extent']=[hex(v) for v in extent]
  dependencies[target]['sites'].append(edge['site'])
# Verify entire native hash table, not only standard test string.
for i in range(256):
 v=i
 for _ in range(8):v=(v>>1)^(0xedb88320 if v&1 else 0)
 assert struct.unpack_from('<I',raw,0x2a9530+4*i)[0]==v
result={'binary_sha256':hashlib.sha256(raw).hexdigest(),'virtual_layout':'file offset equals RVA; native instructions never executed','ranges':records,'dependencies':list(dependencies.values()),'concrete_controller_bytes':sum(x['bytes'] or 0 for x in records if x['status'].startswith('C/I')),'specialized_or_adapted_bytes_not_full_claim':sum(x['bytes'] or 0 for x in records if x['status'].startswith('I:')),'remaining_direct_local_ranges':[x for x in records if x['status'].startswith('U:')]}
(out/'range_branch_dependency_ledger.json').write_text(json.dumps(result,indent=2)+'\n')
print('native range/branch audit:',len(records),'ranges;',result['concrete_controller_bytes'],'controller/helper bytes;',len(dependencies),'direct dependency keys')
print('SHA256:',result['binary_sha256'])
