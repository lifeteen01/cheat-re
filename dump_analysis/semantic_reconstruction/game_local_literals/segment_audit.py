from pathlib import Path
import json,re,hashlib,struct,bisect
root=Path('/home/john/Desktop/cheat_re');out=Path(__file__).parent;data=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes()
rows=[]
for line in (root/'dump_analysis/static/cheat_text.asm').read_text().splitlines():
 m=re.match(r'\s*([0-9a-f]+):\t([0-9a-f ]+)\t?(.*)',line)
 if m:
  a=int(m[1],16);raw=bytes.fromhex(m[2]);assert data[a:a+len(raw)]==raw;rows.append((a,raw,m[3]))
starts={a for a,b,t in rows};pe=struct.unpack_from('<I',data,0x3c)[0];pdata,size=struct.unpack_from('<II',data,pe+24+112+24)
functions=sorted(set(struct.unpack_from('<III',data,pdata+i) for i in range(0,size,12)))
ranges=[(0x330c04,0x330cf2,'material initial + switch'),(0x330d65,0x330d97,'name/literal hash'),(0x3316e1,0x33190d,'recognized mounted types incl exit'),(0x331964,0x331a2a,'air list and bool tail'),(0x331a2a,0x331b7c,'ground list and bool tail')]
ledger=[];text=[]
for b,e,scope in ranges:
 assert b in starts and e in starts
 owner=[r for r in functions if r[0]<=b<r[1]];assert len(owner)==1 and e<=owner[0][1]
 selected=[(a,raw,t) for a,raw,t in rows if b<=a<e];branches=[]
 for a,raw,t in selected:
  m=re.match(r'j\w+\s+0x([0-9a-f]+)',t)
  if m: assert int(m[1],16) in starts;branches.append(dict(site=hex(a),target='0x'+m[1]))
 ledger.append(dict(begin=hex(b),end_exclusive=hex(e),scope=scope,pdata_owner=[hex(x) for x in owner[0]],sha256=hashlib.sha256(data[b:e]).hexdigest(),branches=branches))
 text.append('; '+scope+' '+hex(b)+'..'+hex(e)+'\n'+'\n'.join('%x %s'%(a,t) for a,raw,t in selected))
(out/'segments.asm').write_text('\n\n'.join(text)+'\n');(out/'segment_audit.json').write_text(json.dumps(ledger,indent=2)+'\n')
print('PASS5 precise projectile inline segments;',sum(len(r['branches']) for r in ledger),'branch destinations')
