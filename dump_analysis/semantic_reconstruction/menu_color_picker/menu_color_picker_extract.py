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
groups={'picker':[0x379680], 'closure':[0x3795d4,0x39062c,0x3904e0,0x3762ac,0x37afd4,0x37a0b8,0x378f1c,0x39045c,0x3c0538,0x37897c,0x392ca4,0x3926ac,0x377714,0x376760,0x377ef4,0x378104,0x378a88,0x378940,0x3788f4,0x378934,0x378970,0x3789fc,0x3762bc,0x393ff4,0x3c2dc8,0x38a3fc,0x2e3ef0,0x3a7654,0x376384,0x376364,0x398b84,0x399994,0x392f88,0x3922dc,0x394e5c,0x393520,0x38c774,0x39e8fc,0x395038,0x395074,0x39e280]}
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
