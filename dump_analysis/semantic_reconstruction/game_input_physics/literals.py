from pathlib import Path
import json,re,subprocess
out=Path('/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics');raw=(out.parents[1]/'unpacked/cheat.unpacked.dll').read_bytes()
pdata={int(a,16):int(b,16) for a,b,u in json.load(open(out.parent/'pdata.json'))}
def extract(r):
 end=pdata.get(r,r+512);p=out/f'{r:x}.bin';p.write_bytes(raw[r:end]);s=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel','--insn-width=16',f'--adjust-vma={r}',str(p)],text=True)
 ins=[]
 for line in s.splitlines():
  m=re.match(r'\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}\s+)+)\s*(.*)',line)
  if m:
   ins.append((int(m[1],16),bytes.fromhex(m[2]),m[3]))
   if r not in pdata and m[3].strip()=='ret':end=int(m[1],16)+1;break
 p.write_bytes(raw[r:end]);s=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-Mintel','--insn-width=16',f'--adjust-vma={r}',str(p)],text=True);(out/f'{r:x}.asm').write_text(s)
 return ins,end
constructors=[0x2cc730,0x2e5730,0x2e5574,0x2e53f8,0x2e56b8,0x2e5504,0x2e538c,0x2e56d4,0x2e5520,0x2e53a8,0x2e574c,0x2e5590,0x2e5434,0x2e57a0,0x2e55f4,0x2e5490,0x2e5770,0x2e55b4,0x2e5458,0x32392c,0x323b58,0x3238f4]
records=[]
for r in constructors:
 ins,end=extract(r);regs={};parts=[];result=bytearray(256);written=set()
 for at,b,s in ins:
  m=re.match(r'(?:movups|movsd|movdqa|movdqu|movzx|mov)\s+(xmm\d+|eax|ax|al|rax),.*\[rip.*# 0x([0-9a-f]+)',s)
  if m:
   reg=m[1];size=16 if reg.startswith('xmm') and 'XMMWORD' in s else 8 if 'QWORD' in s else 4 if 'DWORD' in s else 2 if 'WORD' in s else 1
   regs['rax' if reg in ['eax','ax','al','rax'] else reg]={'source':hex(int(m[2],16)),'size':size,'load':hex(at)}
  m=re.match(r'movabs\s+rax,0x([0-9a-f]+)',s)
  if m:regs['rax']={'immediate':hex(int(m[1],16)),'size':8,'load':hex(at)}
  immediate=re.match(r'mov\s+(BYTE|WORD|DWORD|QWORD) PTR \[rdx(?:\+0x([0-9a-f]+))?\],0x([0-9a-f]+)',s)
  if immediate:
   n={'QWORD':8,'DWORD':4,'WORD':2,'BYTE':1}[immediate[1]];dest=int(immediate[2] or '0',16);v={'immediate':hex(int(immediate[3],16)),'size':n,'load':hex(at),'store':hex(at),'destination':dest};parts.append(v);result[dest:dest+n]=int(immediate[3],16).to_bytes(n,'little');written.update(range(dest,dest+n))
  m=re.match(r'(?:movups|movsd|movdqa|movdqu|mov)\s+(XMMWORD|QWORD|DWORD|WORD|BYTE) PTR \[rdx(?:\+0x([0-9a-f]+))?\],(xmm\d+|rax|eax|ax|al)',s)
  if m:
   n={'XMMWORD':16,'QWORD':8,'DWORD':4,'WORD':2,'BYTE':1}[m[1]];dest=int(m[2] or '0',16);reg=m[3];v=regs['rax' if reg in ['eax','ax','al','rax'] else reg].copy();v.update(destination=dest,size=n,store=hex(at));parts.append(v)
   val=raw[int(v['source'],16):int(v['source'],16)+n] if 'source' in v else int(v['immediate'],16).to_bytes(8,'little')[:n]
   result[dest:dest+n]=val;written.update(range(dest,dest+n))
 n=max(written)+1;assert written==set(range(n)),hex(r)
 decoded=bytes(x^((i%52)+55) for i,x in enumerate(result[:n])) if result[n-1] else bytes(result[:n])
 record={'constructor':hex(r),'end':hex(end),'length':n,'parts':parts,'decoded':decoded.decode('ascii')};records.append(record);print(hex(r),n,repr(record['decoded']))
# Derive exact decoder/guard closures too, from actual CALL instructions.
for r in [0x2cdca4,0x2cde0c,0x2dd110,0x2e36b4,0x2d8504,0x2d861c,0x2e36dc,0x2d8554,0x2e363c,0x2e9c2c,0x32a8fc]:
 ins,end=extract(r)
 for at,b,s in ins:
  m=re.match(r'call\s+0x([0-9a-f]+)',s)
  if m:extract(int(m[1],16))
(out/'literals.json').write_text(json.dumps(records,indent=2)+'\n')
