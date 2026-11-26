from pathlib import Path
import hashlib,json,re,subprocess
root=Path('/home/john/Desktop/cheat_re');out=root/'dump_analysis/semantic_reconstruction/game_input_physics';raw=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes();digest=hashlib.sha256(raw).hexdigest();assert digest=='ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
pdata={int(a,16):(int(b,16),u) for a,b,u in json.load(open(out.parent/'pdata.json'))}
cache={}
def get(r,explicit=None):
 if r in cache:return cache[r]
 end=explicit or (pdata[r][0] if r in pdata else r+512)
 p=out/f'{r:x}.audit.bin';p.write_bytes(raw[r:end])
 def dis():return subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel','--insn-width=16',f'--adjust-vma={r}',str(p)],text=True)
 asm=dis();ins=[]
 for line in asm.splitlines():
  m=re.match(r'\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s+)+)\s*(.*)',line)
  if m:
   at=int(m[1],16);bs=bytes.fromhex(m[2]);text=m[3].strip();ins.append({'site':hex(at),'bytes':bs.hex(),'instruction':text})
   if explicit is None and r not in pdata and (text=='ret' or (text.startswith('jmp ') and not any(re.match(r'j(?!mp)',x['instruction']) for x in ins))):
    end=at+len(bs);p.write_bytes(raw[r:end]);asm=dis();break
 (out/f'{r:x}.audit.asm').write_text(asm)
 assert sum(len(bytes.fromhex(x['bytes'])) for x in ins)==end-r,(hex(r),hex(end))
 for x in ins:
  at=int(x['site'],16);assert raw[at:at+len(bytes.fromhex(x['bytes']))]==bytes.fromhex(x['bytes'])
 tail=out/f'{r:x}.tail.bin';tail.write_bytes(raw[end:end+16]);(out/f'{r:x}.tail.asm').write_text(subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel','--insn-width=16',f'--adjust-vma={end}',str(tail)],text=True))
 record={'begin':hex(r),'end':hex(end),'bytes':end-r,'sha256':hashlib.sha256(raw[r:end]).hexdigest(),'pdata_end':hex(pdata[r][0]) if r in pdata else None,'instructions':ins};cache[r]=record;return record
entries={}
def add(r,kind,end=None):entries[r]={**get(r,end),'kind':kind}
roots=[0x2e2320,0x2e5e4c,0x2e8910,0x329aa0,0x2e0f10,0x2e480c,0x3214f4,0x32225c]
for r in roots:add(r,'[C] [I] assigned root')
for r in [0x2e6744,0x2e9c7c,0x2e5eec,0x2e5ff8,0x2e68b8,0x2e90d8,0x2e8e88,0x32a938,0x3cb058,0x3cae50,0x3caed0,0x3232d0,0x2de874,0x2e49ec,0x2dda18,0x2cb9fc]:add(r,'[C] [I] immediate cache/control/known-store closure')
for r,end in [(0x3926ac,0x3926b8),(0x2cc268,0x2cc26f),(0x2df370,0x2df376),(0x2d4928,0x2d492e),(0x2ddbf8,0x2ddc00),(0x2cd32c,0x2cd32f),(0x2caf08,0x2caf28)]:add(r,'[C] [I] literal small fold',end)
for row in json.load(open(out/'literals.json')):add(int(row['constructor'],16),'[C] [I] literal constructor data fold',int(row['end'],16))
for r in [0x2cdca4,0x2cde0c,0x2dd110,0x2e36b4,0x2d8504,0x2d861c,0x2e36dc,0x2d8554,0x2e363c,0x2e9c2c,0x32a8fc]:
 add(r,'[C] [I] conditional literal decoder')
 for i in entries[r]['instructions']:
  m=re.match(r'call\s+0x([0-9a-f]+)',i['instruction'])
  if m:add(int(m[1],16),'[C] [I] literal sentinel/XOR fold')
owned=[0x2e4dd0,0x2e4bf8,0x2d8880,0x2d07a4,0x2d07d4,0x2d86b8,0x2d877c,0x2d4da0,0x2e50f8,0x2e4488,0x2e4ae0,0x2e4010,0x2ddddc,0x2dde30,0x2e4030,0x2e9300,0x2e4a18,0x2e4a64,0x2e3fe4,0x2e40f0,0x2d6d44,0x2e9738,0x2e949c,0x2e9510,0x2d7564,0x2e93e4,0x2e4f88,0x2e4f30]
for r in owned:add(r,'[C] [I] owned int/byte container specialization; [U] raw heap ABI/failure-prefix')
for r,end in [(0x2cf0e4,0x2cf0ec),(0x2d553c,0x2d5541),(0x2d6fa0,0x2d6fa5),(0x2d5544,0x2d554d),(0x2cc534,0x2cc53e),(0x2cd324,0x2cd329),(0x2d4dc0,0x2d4dc5),(0x2d4db8,0x2d4dc0),(0x2d7e10,0x2d7e15),(0x2cb3a4,0x2cb3a8)]:add(r,'[C] [I] owned-container alias/equality/hash/data fold',end)
for r in [0x2cf0ec,0x2d0ae4,0x2d7078]:add(r,'[C] [I] reuse registry four-byte hash/equality')
# Reconcile ALL direct call/jump edges of audited ranges. The generic-library
# frontier stays explicit backlog; no foreign-helper label hides it.
excluded={0x2cbd24:'[I] detection-only context boundary; execution excluded',0x3cdbd4:'[I] executor gate excluded'}
shared={0x334224:'[C] [I] released class selector',0x3349ac:'[C] [I] released parameter method selector'}
branches=[];frontier={}
for r,e in entries.items():
 a,b=r,int(e['end'],16)
 for i in e['instructions']:
  op=i['instruction'].split()[0]
  if op!='call' and not op.startswith('j'):continue
  m=re.match(r'(?:call|j\w+)\s+0x([0-9a-f]+)',i['instruction']);t=int(m[1],16) if m else None
  if t is not None and a<=t<b:kind='within-range'
  elif t in entries:kind='audited-local-fold'
  elif t in excluded:kind=excluded[t]
  elif t in shared:kind=shared[t]
  elif r in owned or '[I] owned-container' in e['kind'] or 'reuse registry' in e['kind']:
   kind='[U] raw generic/library heap ABI frontier'
   if t is not None:frontier.setdefault(t,{'record':get(t),'sites':[]})['sites'].append(i['site'])
  else:raise AssertionError(('unclassified',hex(r),i))
  branches.append({**i,'target':hex(t) if t is not None else None,'classification':kind})
for assigned in json.load(open(out/'assigned_inventory.json')):
 assert entries[int(assigned['begin'],16)]['sha256']==assigned['sha256']
records=list(entries.values());result={'image_sha256':digest,'range_count':len(records),'bytes':sum(x['bytes'] for x in records),'instructions':sum(len(x['instructions']) for x in records),'branch_call_count':len(branches),'records':records,'branches':branches}
(out/'audit.json').write_text(json.dumps(result,indent=2)+'\n')
(out/'library_frontier.json').write_text(json.dumps(list(frontier.values()),indent=2)+'\n')
(out/'ranges.json').write_text(json.dumps([{k:v for k,v in e.items() if k not in ['instructions']} for e in records],indent=2)+'\n')
s='#include "game_input_physics_analysis.hpp"\nnamespace rust_internal_re {\nstd::span<const RendererCoverage> game_input_physics_coverage() {\n    static constexpr RendererCoverage ranges[]{\n'
for e in records:s+=f'        {{{e["begin"]}, {e["end"]}, "{e["kind"]}"}},\n'
s+='    };\n    return ranges;\n}\n}\n';(root/'source/reconstructed/game_input_physics_coverage.cpp').write_text(s)
print(json.dumps({k:v for k,v in result.items() if k not in ['records','branches']},indent=2));print('raw library/ABI frontier',len(frontier))
