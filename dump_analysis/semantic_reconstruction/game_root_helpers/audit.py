#!/usr/bin/env python3
from pathlib import Path
import hashlib,json,re,subprocess
root=Path(__file__).resolve().parents[3];work=Path(__file__).resolve().parent
sample=root/'dump_analysis/unpacked/cheat.unpacked.dll';data=sample.read_bytes()
assert hashlib.sha256(data).hexdigest()=='ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
ranges=[(0x2dda9c,0x2ddb0d),(0x2e069c,0x2e071c),(0x2e0e4c,0x2e0e99),
        (0x2df87c,0x2df895),(0x2cc730,0x2cc737)]
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
decoded=bytes(x^((0x37+i%52)&255) for i,x in enumerate(data[0x28d9e0:0x28d9eb]))
assert decoded==b'MainCamera\0'
assert data[0x2cc730:0x2cc733]==b'\xc6\x02\x37'
record=dict(input_sha256=hashlib.sha256(data).hexdigest(),ranges=ledger,branches=branches,calls=calls,tail_jumps=jumps,
 decoded_literals=[{'rva':'0x28d9e0','decoded':decoded.decode('ascii')},{'getter':'0x2cc730','decoded':'empty namespace'}],
 scope='Local-player direct cache and reused no-argument packaging; MainCamera concrete class/static chain; guarded global gate. Matching GameAssembly/IL2CPP effects and unknown context bytes remain explicit; no sample execution.')
(work/'audit.json').write_text(json.dumps(record,indent=2)+'\n')
print(len(ledger),'ranges',sum(x['bytes'] for x in ledger),'bytes',sum(x['instructions'] for x in ledger),'instructions',len(branches),'branches',len(calls),'calls')
