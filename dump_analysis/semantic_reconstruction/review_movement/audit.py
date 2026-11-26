from pathlib import Path
import subprocess,re,json,hashlib,struct
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/review_movement'
p=root/'dump_analysis/unpacked/cheat.unpacked.dll';data=p.read_bytes()
assert hashlib.sha256(data).hexdigest()=='ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
pdata={int(a,16):(int(b,16),int(c,16)) for a,b,c in json.loads((root/'dump_analysis/semantic_reconstruction/pdata.json').read_text())}
starts=[0x324b30,0x317c3c,0x317194,0x320f88,0x32a16c,0x329b50,0x32a4f0,0x329754,0x324904,0x329328,0x329120,0x318724,0x3295bc,0x318a14,0x31530c,0x315690,0x2df2e8,0x2dfe64,0x2e2374,0x2e5a80,0x2e5b7c,0x2e0ff0,0x2e1278]
ranges=[(a,pdata[a][0]) for a in starts]
ranges += [(0x320db4,0x320f57),(0x2dfed0,0x2dff30),(0x2e5a44,0x2e5a54),(0x32a454,0x32a4ef),(0x32a770,0x32a867),(0x329a68,0x329a9e),(0x320c2c,0x320ccf),(0x3c8f34,0x3c8f39),(0x2df578,0x2df5ad),(0x2e3734,0x2e38e4),(0x318bac,0x318bb5)]
texts=[];spans=0;branches={}
for a,b in ranges:
 t=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','-w',f'--start-address={a}',f'--stop-address={b}',str(p)],text=True);texts.append(t)
 for m in re.finditer(r'^\s*([0-9a-f]+):\s*((?:[0-9a-f]{2}\s)+)\s*(.*)$',t,re.M):
  r=int(m[1],16);bs=bytes.fromhex(m[2]);assert data[r:r+len(bs)]==bs;spans+=1
  if m[3].startswith('j'):branches[f'{r:#x}']={'bytes':bs.hex(),'instruction':m[3]}
(out/'exact_movement.asm').write_text('\n'.join(texts))
archive=0
for path in (root/'dump_analysis/semantic_reconstruction/movement_main_helpers').glob('*.asm'):
 for m in re.finditer(r'^\s*([0-9a-f]+):\s*((?:[0-9a-f]{2}\s)+)',path.read_text(),re.M):
  a=int(m[1],16);bs=bytes.fromhex(m[2]);assert data[a:a+len(bs)]==bs;archive+=1
# Constructor mapping is resolved at bytes, not from source-assigned field names.
assertions={0x2df305:'0f28fb',0x2df308:'440f28c2',0x2df329:'f30f117b04',0x2df333:'f3440f114308',0x325815:'410f28de',0x325820:'410f28d5',0x318404:'f30f105b34',0x31840d:'f30f105338',0x317500:'f20f10442430',0x317517:'f20f118594000000',0x317526:'0f294540',0x317628:'f20f104544',0x31762d:'f20f114710',0x326136:'440f2fc0',0x32613a:'7273',0x3254d5:'f30f5d3d1b86f6ff',0x3257a1:'f30f5d3d4f83f6ff'}
# Keep the assertion bytes tied to freshly decoded instruction boundaries.
for a,h in assertions.items():
 assert data[a:a+len(bytes.fromhex(h))]==bytes.fromhex(h),(hex(a),data[a:a+len(bytes.fromhex(h))].hex(),h)
assert struct.unpack_from('<I',data,0x28daf8)[0]==0x3fbf5c29
result={'scale_cap_bits':'0x3fbf5c29','input_sha256':hashlib.sha256(data).hexdigest(),'fresh_instruction_spans':spans,'archived_helper_spans':archive,'branch_records':len(branches),'fixed_mapping_and_selection_assertions':len(assertions),'ranges':[f'{a:#x}..{b:#x}' for a,b in ranges]}
(out/'branches.json').write_text(json.dumps(branches,indent=2)+'\n');(out/'byte_audit.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
