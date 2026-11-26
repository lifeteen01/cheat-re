#!/usr/bin/env python3
from pathlib import Path
import hashlib,json,re,subprocess
root=Path(__file__).resolve().parents[3];work=Path(__file__).resolve().parent
sample=root/'dump_analysis/unpacked/cheat.unpacked.dll';data=sample.read_bytes()
assert hashlib.sha256(data).hexdigest()=='ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
ranges=[(0x2dda18,0x2dda33),(0x2cb9fc,0x2cba4f),(0x2d2094,0x2d2106),
 (0x2cba50,0x2cbae2),(0x332e8c,0x332f1d),(0x32b1c8,0x32b239),
 (0x2cc268,0x2cc26f),(0x2df370,0x2df376),
 (0x33479c,0x33480b),(0x33480c,0x334893),(0x3344b0,0x334528),
 (0x334528,0x3345c2),(0x334660,0x3346e7),(0x3345c4,0x33465d),
 (0x335140,0x3351b8),(0x335040,0x3350b8),(0x3351b8,0x33523e)]
pattern=re.compile(r'^\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s+)+)\s*(.*?)\s*$')
ledger=[];branches=[];calls=[];jumps=[]
for lo,hi in ranges:
 t=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--insn-width=16',f'--start-address={lo}',f'--stop-address={hi}',str(sample)],text=True)
 (work/f'{lo:x}.asm').write_text(t)
 end=lo;decoded=[]
 for line in t.splitlines():
  m=pattern.match(line)
  if not m:continue
  at=int(m[1],16);raw=bytes.fromhex(m[2]);asm=m[3]
  assert at==end and data[at:at+len(raw)]==raw
  end=at+len(raw);decoded.append((at,asm))
  if re.match(r'j\w+\s',asm):branches.append([hex(at),asm])
  if re.match(r'call\s',asm):calls.append([hex(at),asm])
  if re.match(r'jmp\s+0x',asm):jumps.append([hex(at),asm])
 assert end==hi,(hex(end),hex(hi))
 starts={at for at,_ in decoded}
 for at,asm in decoded:
  m=re.match(r'j\w+\s+0x([0-9a-f]+)$',asm)
  if m and lo<=int(m[1],16)<hi:assert int(m[1],16) in starts
 ledger.append(dict(begin=hex(lo),end_exclusive=hex(hi),bytes=hi-lo,instructions=len(decoded),sha256=hashlib.sha256(data[lo:hi]).hexdigest()))
record=dict(input_sha256=hashlib.sha256(data).hexdigest(),ranges=ledger,branches=branches,calls=calls,tail_jumps=jumps,
 known_stores='Known low bytes/arity/arguments only; native-width bounds gates for unknown stack/type/return-pointer stores. No executors invoked.',
 wrapper_review='Nine wrapper descriptors, resolver flag reread, root/bit2 ordering and tail root reload checked against source; no new mismatch in these wrapper bodies.')
(work/'audit.json').write_text(json.dumps(record,indent=2)+'\n')
print(len(ledger),'ranges',sum(x['bytes'] for x in ledger),'bytes',sum(x['instructions'] for x in ledger),'instructions',len(branches),'branches',len(calls),'calls')
