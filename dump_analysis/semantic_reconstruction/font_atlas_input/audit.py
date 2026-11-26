from pathlib import Path
import hashlib,json,re,subprocess
root=Path('/home/john/Desktop/cheat_re'); out=root/'dump_analysis/semantic_reconstruction/font_atlas_input'
raw=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
assert hashlib.sha256(raw).hexdigest()=='ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
ranges=json.loads((out/'ranges.json').read_text())
pdata={int(a,16):(int(b,16),u) for a,b,u in json.loads((root/'dump_analysis/semantic_reconstruction/pdata.json').read_text())}
branches=[];calls=[];records=[]
for entry in ranges:
 a,b=int(entry['begin'],16),int(entry['end'],16); blob=raw[a:b]
 path=out/f'{a:x}.audit.bin';path.write_bytes(blob)
 asm=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel','--insn-width=16',f'--adjust-vma={a}',str(path)],text=True)
 (out/f'{a:x}.audit.asm').write_text(asm)
 instructions=[]
 for line in asm.splitlines():
  m=re.match(r'^\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s+)+)\s*([a-z].*)$',line)
  if not m:continue
  address=int(m[1],16);bytevalues=bytes.fromhex(m[2]); instruction=m[3].strip()
  assert raw[address:address+len(bytevalues)]==bytevalues
  instructions.append({'site':hex(address),'bytes':bytevalues.hex(),'instruction':instruction})
  op=instruction.split()[0]
  if op=='call' or op.startswith('j') or instruction.startswith('rex.W jmp'):
   targets=re.findall(r'(?:^|\s)0x([0-9a-f]+)(?:$|\s)',instruction)
   target=int(targets[0],16) if targets else None
   kind='within-current-range' if target is not None and a<=target<b else 'local-input-closure' if target is not None and any(int(x['begin'],16)<=target<int(x['end'],16) for x in ranges) else 'deleting-flag1-not-reached' if target==0x38a3cc else 'typed-allocation-leaf' if address in [0x395178,0x39519a] else 'UNCLASSIFIED'
   r={'site':hex(address),'instruction':instruction,'target':hex(target) if target is not None else None,'classification':kind}
   branches.append(r)
   if op=='call':calls.append(r)
 instructions_bytes=sum(len(bytes.fromhex(x['bytes'])) for x in instructions)
 assert instructions_bytes==len(blob),(hex(a),instructions_bytes,len(blob))
 # Include immediate alternate tails and padding independently of the translated range.
 tail=out/f'{a:x}.tail.bin';tail.write_bytes(raw[b:b+16])
 tailasm=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel','--insn-width=16',f'--adjust-vma={b}',str(tail)],text=True)
 (out/f'{a:x}.tail.asm').write_text(tailasm)
 records.append({**entry,'size':b-a,'sha256':hashlib.sha256(blob).hexdigest(),'pdata_end':hex(pdata[a][0]) if a in pdata else None,'unwind':pdata[a][1] if a in pdata else None,'instructions':instructions})
assert not [x for x in branches if x['classification']=='UNCLASSIFIED'],[x for x in branches if x['classification']=='UNCLASSIFIED']
result={'image_sha256':hashlib.sha256(raw).hexdigest(),'range_count':len(records),'bytes':sum(x['size'] for x in records),'instructions':sum(len(x['instructions']) for x in records),'branch_call_count':len(branches),'direct_call_count':len(calls),'records':records,'branches':branches}
(out/'audit.json').write_text(json.dumps(result,indent=2)+'\n')
targets={}
for x in branches:
 if x['classification']!='within-current-range':targets.setdefault(x['target'] or x['instruction'],{'classification':x['classification'],'sites':[]})['sites'].append(x['site'])
(out/'dependencies.json').write_text(json.dumps(targets,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k not in ['records','branches']},indent=2))
