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
groups={'math':[0x2dff68,0x2e0198,0x2e3d5c,0x2de97c,0x2de9d4], 'projectile':[0x3727e0,0x372954,0x32bd4c,0x32b728,0x32b7a0], 'font':[0x3a653c,0x3a3394,0x3a4994,0x3a49ec,0x3a3e64,0x3a3e10,0x3a5950,0x3a4d18,0x3a4d50,0x379578], 'game':[0x368a84,0x37154c,0x368b10,0x369298,0x372754,0x369c1c,0x3739c4,0x373a68,0x369324,0x32b308,0x371c38,0x370884,0x3703ec,0x370638,0x370aa4,0x32b2b4,0x368100,0x368b9c,0x36924c,0x369164,0x36b938,0x371630,0x372abc,0x372b30,0x36942c,0x36b244,0x37224c,0x3722f0,0x2ef834,0x36920c]}
groups['packet_leaves']=[0x2ddbf8,0x2d4928,0x2cc268]
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
