from pathlib import Path
import re,hashlib,json,struct
root=Path('/home/john/Desktop/cheat_re'); image=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
text=(root/'dump_analysis/static/cheat_text.asm').read_text().splitlines()
ranges=[(0x32f408,0x32fac4),(0x36a464,0x36ac76)]
results=[]
for lo,hi in ranges:
 covered=set();branches=[];calls=[];bad=[]
 for line in text:
  m=re.match(r'\s*([0-9a-f]+):\t([0-9a-f ]+)\t?(.*)',line)
  if not m:continue
  addr=int(m[1],16)
  if not lo<=addr<hi:continue
  raw=bytes.fromhex(m[2]);covered.update(range(addr,addr+len(raw)))
  if image[addr:addr+len(raw)]!=raw:bad.append(hex(addr))
  op=m[3].strip()
  if re.match(r'j\w+\s+0x',op):branches.append((hex(addr),op))
  if op.startswith('call'):calls.append((hex(addr),op))
 assert not bad,(lo,bad)
 assert set(range(lo,hi))<=covered,(hex(lo),[hex(a) for a in set(range(lo,hi))-covered])
 for _,branch in branches:
  target=int(branch.split('0x')[1],16);assert lo<=target<hi,(lo,branch)
 results.append({'start':hex(lo),'stop_exclusive':hex(hi),'all_bytes_match':True,'covered_bytes':hi-lo,'branch_count':len(branches),'branches':branches,'calls':calls})
output={'sha256':hashlib.sha256(image).hexdigest(),'ranges':results,'constant_colors':{hex(a):{'hex':image[a:a+16].hex(),'floats':struct.unpack_from('<4f',image,a)} for a in [0x3ecc38,0x3ecbd8]}}
(root/'dump_analysis/semantic_reconstruction/sky_model/byte_audit.json').write_text(json.dumps(output,indent=2))
print(json.dumps({k:v for k,v in output.items() if k!='ranges'},indent=2))
for r in results:print(r['start'],r['covered_bytes'],'bytes verified;',r['branch_count'],'internal branch targets audited')
