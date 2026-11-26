"""[I] Read-only DLL byte/direct-branch/literal audit; no sample execution."""
from pathlib import Path
import sys,re,hashlib,json,struct
root=Path('/home/john/Desktop/cheat_re');out=Path(__file__).parent
sys.path.insert(0,str(root/'dump_analysis/semantic_reconstruction'));import evidence as ev
sys.path.insert(0,str(root/'dump_analysis/semantic_reconstruction/menu_pages'));import menu_pages_lift as literals
image=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes();rows=[]
for line in (root/'dump_analysis/static/cheat_text.asm').read_text().splitlines():
 m=re.match(r'\s*([0-9a-f]+):\t([0-9a-f ]+)\t?(.*)',line)
 if m:
  at=int(m[1],16);raw=bytes.fromhex(m[2]);assert image[at:at+len(raw)]==raw;rows.append((at,raw,m[3]))
starts={at for at,raw,text in rows}
roots=[0x36f788,0x365038,0x36e55c,0x2cce78,0x31aa90,0x31ab60,0x31acb0,0x37d7b0,0x37db8c,0x37df58,0x37d394]
helpers=[0x2d6fd4,0x2d7020,0x31a4b4,0x31a70c,0x31abc8,0x31ac30,0x31ac74,0x2cd86c,0x3193cc,0x31944c,0x2ebe94,0x2ebf1c,0x2de058,0x37c484,0x37c984,0x37c948,0x335e48,0x3364d4,0x378940,0x2d2aa4,0x2edb28,0x36cff8,0x36df3c,0x3365f8,0x36dd78,0x36dc30,0x370118,0x370168,0x36e1cc,0x36ff84]
ranges=[ev.fn(r)[:2] for r in roots+helpers]+[(0x31ac64,0x31ac72),(0x2ef6c4,0x2ef6e2),(0x3701ac,0x3701cf),(0x36e1fc,0x36e208)]
branches=[];calls=[];audit=[];full=[]
for begin,end in ranges:
 current=[(at,raw,text) for at,raw,text in rows if begin<=at<end]
 assert begin in starts and current
 for at,raw,text in current:
  m=re.match(r'(j\w+|call)\s+0x([0-9a-f]+)',text)
  if m:
   target=int(m[2],16);assert target in starts,(hex(at),hex(target))
   entry=dict(site=hex(at),target=hex(target),inside=begin<=target<end)
   (calls if m[1]=='call' else branches).append(entry)
 audit.append(dict(begin=hex(begin),end_exclusive=hex(end),sha256=hashlib.sha256(image[begin:end]).hexdigest(),fragments=len(current)))
 full.append('; full range %x..%x\n'%(begin,end)+'\n'.join('%06x %s %s'%(at,raw.hex(' '),text) for at,raw,text in current))
labels=[(0x36e31c,0x2e9b8c,'Grenades'),(0x36e3e0,0x2e9b8c,'Molotovs'),(0x36e42c,0x2e9b8c,'Beancans'),(0x36e448,0x2cdccc,'MLRS'),(0x36e460,0x2e3614,'Rockets'),(0x36e474,0x2dd188,'Battering Ram'),(0x36e498,0x2dd188,'Incen Rockets'),(0x36e4bc,0x2e9c54,'HV Rockets'),(0x36e4d8,0x2e9b8c,'Satchels'),(0x36e208,0x32041c,'C4s'),(0x36e214,0x2cde34,'HE Grenades'),(0x36e230,0x2d85a4,'Underwater Explosions'),(0x36e24c,0x3204bc,'Catapult Scattershot'),(0x36e268,0x2e9bdc,'Catapult FireBomb'),(0x36e284,0x2dd188,'Catapult Bomb'),(0x36e2a8,0x2e9c54,'Explo Ammo'),(0x352328,0x2dd138,'preview')]
for loader,decoder,value in labels:assert literals.decode(loader,decoder)==value,(hex(loader),value,literals.decode(loader,decoder))
summary=dict(input_sha256=hashlib.sha256(image).hexdigest(),verified_fragments=len(rows),ranges=audit,branches=branches,calls=calls,literals=[dict(loader=hex(a),decoder=hex(b),text=t) for a,b,t in labels])
(out/'frame_residuals_byte_branch_audit.json').write_text(json.dumps(summary,indent=2)+'\n')
(out/'frame_residuals_full_evidence.asm').write_text('\n\n'.join(full)+'\n')
print('PASS:',len(rows),'verified fragments;',len(ranges),'full ranges;',len(branches),'branches;',len(calls),'direct callsites;',len(labels),'decoded literals')
