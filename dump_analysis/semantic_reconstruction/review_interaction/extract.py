from pathlib import Path
import re,struct,bisect,hashlib,json
root=Path('/home/john/Desktop/cheat_re');out=Path(__file__).parent
image=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
pe=struct.unpack_from('<I',image,0x3c)[0];pdata,size=struct.unpack_from('<II',image,pe+24+112+24)
functions=sorted(set(struct.unpack_from('<III',image,pdata+i) for i in range(0,size,12)));begins=[a for a,b,c in functions]
rows=[]
for line in (root/'dump_analysis/static/cheat_text.asm').read_text().splitlines():
 m=re.match(r'\s*([0-9a-f]+):\t([0-9a-f ]+)\t?(.*)',line)
 if m:
  a=int(m[1],16);raw=bytes.fromhex(m[2]);assert image[a:a+len(raw)]==raw;rows.append((a,raw,m[3]))
starts={a for a,b,t in rows}
groups={'automation':[0x2e6b20], 'melee':[0x2e12e0], 'forward':[0x2e91fc], 'helpers':[0x32bb60,0x2e091c,0x2e124c,0x2e0ff0,0x2e6340,0x2e8a30,0x2e89e4,0x2e8910,0x2e5b7c,0x2e6a6c,0x2f7dd0,0x2f824c,0x2e0e20,0x2dfe64,0x2d9540,0x2df29c,0x2e1270,0x2e1278,0x2dfed0,0x2e5a80]}
audit=[]
for group,roots in groups.items():
 output=[]
 for r in roots:
  i=bisect.bisect_right(begins,r)-1
  if i>=0 and functions[i][0]<=r<functions[i][1]:b,e,u=functions[i]
  else:
   b=r;e=begins[i+1];u=0
  selected=[(a,raw,t) for a,raw,t in rows if b<=a<e]
  assert b in starts
  branches=[]
  for a,raw,t in selected:
   m=re.match(r'j\w+\s+0x([0-9a-f]+)',t)
   if m:
    dst=int(m[1],16);assert dst in starts;branches.append((hex(a),hex(dst)))
  audit.append(dict(requested=hex(r),begin=hex(b),end=hex(e),unwind=hex(u),branches=branches,sha256=hashlib.sha256(image[b:e]).hexdigest()))
  output.append('; %s independent pdata/next-pdata extent %x..%x unwind%x\n'%(group,b,e,u)+'\n'.join('%06x %s'%(a,t) for a,raw,t in selected))
 (out/(group+'.asm')).write_text('\n\n'.join(output)+'\n')
(out/'byte_audit.json').write_text(json.dumps(dict(input_sha256=hashlib.sha256(image).hexdigest(),verified_fragments=len(rows),ranges=audit),indent=2)+'\n')
print('PASS byte audit',len(rows),'fragments',len(audit),'independent ranges')
