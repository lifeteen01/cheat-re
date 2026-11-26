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
groups={'roots':[3286400, 3566640, 3566796, 3566972, 3567160, 3567344, 3572092, 3580472, 3584004, 3585740, 3607376, 3619936, 3621224, 3288824, 3288880, 3580128, 3586604], 'closure':[3285596, 2957460, 2957312, 2931280, 3562208, 3562352, 2931196, 3009100, 3322312, 3620944, 2928392, 2942428, 3351788, 3002720, 3054476, 3028500, 3607324, 3287512, 3584956, 3585056, 3586764, 3586464, 3588724, 3588336, 3975520]}
groups['literal']=[3351828, 3351648, 2984600, 3002468, 2984592, 3054040, 3003108, 3027968, 2942744, 2933352, 3005432, 2967848, 3011440, 3354252]
groups['crt']=[0x3ca918,0x3ca4f8,0x3ca86c]
audit=[]
for group,roots in groups.items():
 roots=list(dict.fromkeys(roots))
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
