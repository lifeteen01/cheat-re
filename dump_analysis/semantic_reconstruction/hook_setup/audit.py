from pathlib import Path
import hashlib,json,re,subprocess
root=Path('/home/john/Desktop/cheat_re')
out=root/'dump_analysis/semantic_reconstruction/hook_setup'
p=root/'dump_analysis/unpacked/cheat.unpacked.dll'
b=p.read_bytes()
assert hashlib.sha256(b).hexdigest()=='ad5ad10d4fbb818064a4d1ce245c6c586394026c2296c94d2eb99e7487ee2090'
ranges=[(0x315c34,0x3163d5),(0x362118,0x3621ff),(0x36f5cc,0x36f5f3),(0x334bf4,0x334ff2),(0x3215cc,0x3217e9),(0x3217ec,0x32185d),(0x321860,0x32189c),(0x32189c,0x3218c2),(0x3218c4,0x32193c),(0x2ce130,0x2ce1d4),(0x2ce1d4,0x2ce1ee),(0x2ce1f0,0x2ce237),(0x2ce7c0,0x2ce84c),(0x2d4758,0x2d4773),(0x2ceb10,0x2ceb27),(0x2d4180,0x2d4191),(0x3209d4,0x3209dc),(0x320b04,0x320b7c),(0x2ce5d8,0x2ce5dc),(0x2cc6a8,0x2cc6ca),(0x3352b8,0x3352e0),(0x2d901c,0x2d9021),(0x2cfc94,0x2cfcd6)]
asm=[];count=0
for start,end in ranges:
 text=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','-w',f'--start-address={start}',f'--stop-address={end}',str(p)],text=True)
 asm.append(text)
 for m in re.finditer(r'^\s*([0-9a-f]+):\s*((?:[0-9a-f]{2}\s)+)',text,re.M):
  addr=int(m[1],16);bs=bytes.fromhex(m[2]);assert b[addr:addr+len(bs)]==bs;count+=1
review=(root/'dump_analysis/semantic_reconstruction/review_hooks_stack_base/local_boundaries.asm').read_text()
review_count=0
for m in re.finditer(r'^\s*([0-9a-f]+):\s*((?:[0-9a-f]{2}\s)+)',review,re.M):
 addr=int(m[1],16);bs=bytes.fromhex(m[2]);assert b[addr:addr+len(bs)]==bs;review_count+=1
# Assert exact branch direction, comparison extent, and direct-call ownership.
branches={0x315c7b:'754f',0x315c93:'750a',0x315cad:'7511',0x315cdb:'728c',0x315ce9:'753a',0x315d12:'7511',0x32167e:'0f859a000000',0x321728:'751f',0x3218ac:'740b',0x2ce813:'741a',0x2ce81b:'72e0',0x2ce226:'740a',0x2ce22e:'72e9'}
for a,h in branches.items():assert b[a:a+len(bytes.fromhex(h))]==bytes.fromhex(h)
calls={0x315c49:0x36f5cc,0x362147:0x334bf4,0x321661:0x3217ec,0x321645:0x3218c4,0x321707:0x3349ac,0x3218a5:0x3209d4,0x3218b4:0x321860,0x2ce178:0x2ce7c8,0x2ce1c2:0x2ce7c8,0x2ce204:0x2ce1d4}
for a,target in calls.items():assert b[a]==0xe8 and a+5+int.from_bytes(b[a+1:a+5],'little',signed=True)==target
(out/'exact.asm').write_text('\n'.join(asm))
result={'input_sha256':hashlib.sha256(b).hexdigest(),'instruction_spans':count,'independent_review_spans':review_count,'ranges':[f'{s:#x}..{e:#x}' for s,e in ranges],'branch_assertions':len(branches),'direct_calls':len(calls),'code_list_sha256':hashlib.sha256(b[0x23a430:0x23a430+0xea5e]).hexdigest()}
lines=[];line=bytearray()
for ch in b[0x23a430:0x23a430+0xea5e]:
 if ch==10:
  if line.endswith(b'\r'):line.pop()
  if len(line)==4:lines.append(line.hex())
  line.clear()
 else:line.append(ch)
if line:
 if line.endswith(b'\r'):line.pop()
 if len(line)==4:lines.append(line.hex())
result['four_byte_lines']=len(lines)
(out/'byte_audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
