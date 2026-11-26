#!/usr/bin/env python3
# [I] Static disassembly/byte/branch/ID audit only; copied sample is never executed.
from pathlib import Path
import json,re,subprocess,hashlib
root=Path('/home/john/Desktop/cheat_re');work=Path(__file__).parent;dll=root/'dump_analysis/unpacked/cheat.unpacked.dll';raw=dll.read_bytes()
pdata={int(a,16):(int(b,16),c) for a,b,c in json.loads((root/'dump_analysis/semantic_reconstruction/pdata.json').read_text())}
starts=[0x2e3ce4,0x32c0d4,0x330b38,0x2f9988,0x2fa300,0x36bc14,0x319024,0x369790,0x36aec4,0x2e02b0,0x371464,0x371eb8,0x3716e0,0x3721b4,0x32bd4c,0x32bb60,0x36b758,0x3727e0,0x372954,0x2f824c,0x2e2374,0x2e2474,0x330830,0x2e5a80,0x2e1278,0x2f80bc,0x32b728,0x32b838,0x32cb8c]
leaves={0x32ba6c:0x32ba9b,0x2e3b58:0x2e3b84,0x371828:0x3719e6,0x3719e8:0x371c36,0x2e5a44:0x2e5a54,0x3c85e8:0x3c86a9,0x3c86ac:0x3c87ef,0x316fd0:0x31703c,0x2f84e8:0x2f8540,0x36b434:0x36b457,0x36be9c:0x36bebc,0x2df29c:0x2df2e5,0x2e0ee8:0x2e0f0f}
pattern=re.compile(r'^\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s+)+)\s*(.*?)\s*$')
ranges=[];branches=[];calls={};spans=0
for begin,end in [(s,pdata[s][0])for s in starts]+list(leaves.items()):
 text=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--insn-width=16',f'--start-address={begin}',f'--stop-address={end}',str(dll)],text=True);(work/f'{begin:x}.asm').write_text(text)
 count=0;covered=bytearray(end-begin)
 for line in text.splitlines():
  m=pattern.match(line)
  if not m:continue
  a=int(m[1],16);b=bytes.fromhex(m[2]);asm=m[3];assert raw[a:a+len(b)]==b
  assert a+len(b)<=end
  for i in range(a,a+len(b)):covered[i-begin]=1
  count+=1
  if re.match(r'j\w+\s',asm):branches.append({'rva':hex(a),'range':hex(begin),'instruction':asm})
  if asm.startswith('call'):calls.setdefault(asm.split('#')[0].strip(),[]).append(hex(a))
 assert all(covered),(hex(begin),'byte gap');spans+=count
 ranges.append({'begin':hex(begin),'end':hex(end),'pdata':pdata.get(begin),'sha256':hashlib.sha256(raw[begin:end]).hexdigest(),'spans':count})
source=(root/'source/reconstructed/aim_weapon_analysis.cpp').read_text();ids={}
for rva,name,n in [(0x371828,'melee_id_371828',42),(0x3719e8,'projectile_id_3719e8',54)]:
 asm=(work/f'{rva:x}.asm').read_text();native=[int(x,16)for x in re.findall(r'cmp\s+ecx,0x([0-9a-f]+)',asm)]
 function=source.split('bool '+name+'(',1)[1].split('return std::find',1)[0]
 translated=[int(x,16)for x in re.findall(r'0x([0-9a-f]+)u',function)]
 assert native==translated and len(native)==n,(name,'ID mismatch');ids[name]=list(map(hex,native))
result={'input_sha256':hashlib.sha256(raw).hexdigest(),'ranges':ranges,'instruction_spans':spans,'branches':branches,'call_sites':calls,'exact_ID_tables':ids,'no_sample_execution':True,'notice':'Static evidence inventory, not a claim that all transitive bodies or FP/ABI effects are equivalent.'}
(work/'audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({'ranges':len(ranges),'spans':spans,'jumps':len(branches),'calls':len(calls),'ID_counts':{k:len(v)for k,v in ids.items()}}))
