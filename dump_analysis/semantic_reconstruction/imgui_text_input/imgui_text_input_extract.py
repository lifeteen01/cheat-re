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
groups={'editor':[0x3c0538], 'closure':[0x3bfef4,0x3bfd58,0x3bfd64,0x3c0020,0x3bfef4,0x3bff14,0x3bff14,0x3bfd64,0x3c6904,0x3c3890,0x3c6494,0x3c31a0,0x3c6418,0x3c64f4,0x3c2e94,0x3c2f30,0x3c6730,0x3c31a0,0x3c0364,0x3c03a8,0x3bfd58,0x3bfef4,0x3bfe4c,0x3bfed4,0x3c2a80,0x3bde24,0x3c3890,0x3c2e94,0x393ba4,0x393c38,0x393b5c,0x3c6454,0x3c690c,0x3c6554,0x3c5fb4,0x393a04,0x393b24,0x3c5d14,0x3c3160,0x3c2f48,0x3c7aac,0x3c7b24,0x3c5ce0,0x3c5db0,0x3c7ab4,0x39357c,0x3c318c,0x3c31e8,0x39bde4,0x39b8ac,0x394300,0x394a14,0x3bff14,0x38f6bc,0x392bbc,0x392bec,0x394268,0x3907f0,0x390810,0x392208,0x39b1f8,0x39b88c,0x39354c,0x394050,0x395130],'tail':[0x3992a0,0x399994,0x395020,0x3c2c44,0x3ca940,0x398a98,0x39881c,0x393460,0x394014,0x38baf4,0x39b290,0x392490,0x3a73c4,0x3a6e84,0x38cd28,0x38afa8,0x39efe0,0x37a958,0x3c5ed4,0x3c5f50,0x3c619c,0x3c62c4,0x3c6144,0x3c6134,0x3c6680,0x3c65b8,0x3c6520,0x3c2fa4,0x3c2ec0,0x3c3230,0x3c6794,0x3c30b8,0x3c3154,0x3c7a48,0x3c7a70,0x3c7b10,0x3c68f0]}
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
