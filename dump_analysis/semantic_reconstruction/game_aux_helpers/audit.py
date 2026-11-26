from pathlib import Path
import json,hashlib,re,struct
ROOT=Path('/home/john/Desktop/cheat_re');OUT=ROOT/'dump_analysis/semantic_reconstruction/game_aux_helpers'
im=(ROOT/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes();pe=struct.unpack_from('<I',im,60)[0];a,n=struct.unpack_from('<II',im,pe+24+112+24);u={a:b for a,b,_ in (struct.unpack_from('<III',im,p) for p in range(a,a+n,12))}
lines=[]
for l in (ROOT/'dump_analysis/static/cheat_annot.asm').read_text().splitlines():
 m=re.match(r'^([0-9a-f]+)\t(.*)',l)
 if m:lines.append((int(m[1],16),m[2]))
roots=[0x3740e0,0x374124,0x3743f8,0x37628c,0x36ad68,0x36ae90,0x372c1c,0x374268,0x315a24,0x32957c,0x329714,0x329a38]
functions=[]
for r in sorted(roots):
 end=u[r];body=[(a,t) for a,t in lines if r<=a<end];(OUT/f'{r:x}.asm').write_text(''.join(f'{a:x}\t{t}\n' for a,t in body));calls=[];branches=[]
 for a,t in body:
  m=re.match(r'(call|jmp)\s+0x([0-9a-f]+)',t)
  if m and not r<=int(m[2],16)<end:calls.append({'site':hex(a),'target':'0x'+m[2]})
  if re.match(r'j(?!mp)\w+ ',t):branches.append({'site':hex(a),'instruction':t,'status':'C'})
 functions.append({'begin':hex(r),'end_exclusive':hex(end),'bytes':end-r,'extent_source':'PE runtime function record; all branches/post-return blocks retained','status':'C','implementation':'source/reconstructed/game_aux_helpers_analysis.cpp','sha256':hashlib.sha256(im[r:end]).hexdigest(),'calls':calls,'branches':branches})
for r,end in {0x2caf08:0x2caf28,0x2dee3c:0x2dee4a,0x3c7bbc:0x3c7bc8,0x37423c:0x374267,0x374300:0x37432b}.items():
 (OUT/f'{r:x}.asm').write_text(''.join(f'{a:x}\t{t}\n' for a,t in lines if r<=a<end))
result={'sample_sha256':hashlib.sha256(im).hexdigest(),'virtual_layout':'file offset equalsRVA','ranges':functions,'bytes':sum(r['bytes'] for r in functions),'conditional_branches':sum(len(r['branches']) for r in functions),'dependencies':[{'rva':'0x2caf08','end_exclusive':'0x2caf28','status':'C: reuse sample_pointer_range literal unsigned range'},{'rva':'0x2dee3c','end_exclusive':'0x2dee4a','status':'C: guarded receiver+offset fold'},{'rva':'0x3c7bbc','end_exclusive':'0x3c7bc8','status':'C: actual zeroQWORD then zeroDWORD; not unwritten output'},{'rva':'0x37423c','end_exclusive':'0x374267','status':'C: read_scalar_getter existing field getter'},{'rva':'0x374300','end_exclusive':'0x37432b','status':'C: read_scalar_getter existing field getter'}],'threshold_constants':{'0x28d24c':{'bits':hex(struct.unpack_from('<I',im,0x28d24c)[0]),'float':struct.unpack_from('<f',im,0x28d24c)[0]},'0x2a8ecc':{'bits':hex(struct.unpack_from('<I',im,0x2a8ecc)[0]),'float':struct.unpack_from('<f',im,0x2a8ecc)[0]}},'remaining_local_bodies':[],'limits':['Owned typed vector result has no native output alias; use_into reproduces8+4interleaving.','game_aux_write bool is an analysis did-write result; native setters returnvoid.','No live pointer/ABI/GameAssembly code invoked.']}
(OUT/'range_branch_dependency_ledger.json').write_text(json.dumps(result,indent=2)+'\n');print(result['bytes'],result['conditional_branches'],result['threshold_constants'])
