"""[I] Read-only input-byte audit plus direct-branch and source-route checks.
This does not execute the sample; generated coverage is not a game-ABI claim."""
from pathlib import Path
import sys,struct,re,json,hashlib
root=Path('/home/john/Desktop/cheat_re');out=Path(__file__).parent;sys.path.insert(0,str(root/'dump_analysis/semantic_reconstruction'));import evidence as ev
image=(root/'dump_analysis/unpacked/cheat.unpacked.dll').read_bytes();rows=[]
for line in (root/'dump_analysis/static/cheat_text.asm').read_text().splitlines():
 m=re.match(r'\s*([0-9a-f]+):\t([0-9a-f ]+)\t?(.*)',line)
 if not m:continue
 a=int(m[1],16);b=bytes.fromhex(m[2]);assert image[a:a+len(b)]==b;rows.append((a,b,m[3]))
starts={a for a,b,t in rows};pages=json.loads((root/'dump_analysis/semantic_reconstruction/frame_dependencies/frame_dependencies_page_inventory.json').read_text())
selected=[(int(p['target'],16),int(p['pdata_extent'][1],16)) for p in pages]
helpers=[0x365004,0x393c38,0x3869b4,0x387a4c,0x33615c,0x3361d8,0x336254,0x3355cc,0x3355fc,0x33562c,0x335520,0x3362d0,0x2d6384,0x2d6520,0x2d5b78,0x2d64c4,0x2d631c,0x2d62b0,0x2d62e8,0x2d480c,0x2d8fd4,0x2dcf98,0x2cf898,0x36306c]
selected +=[ev.fn(r)[:2] for r in helpers];selected +=[(0x393a04,0x393acf),(0x3367c0,0x3367e2),(0x2d6510,0x2d651d),(0x2d50e0,0x2d50fb),(0x354304,0x354384),(0x356034,0x3560cc)]
# [C]31-bit range and pointer validity are not substituted for local name/queue
# branches. Own strings/vectors adapt allocator mechanics only.
audit=[];branches=[]
for b,e in selected:
 assert b in starts and e>b
 current=[(a,raw,t) for a,raw,t in rows if b<=a<e]
 for a,raw,t in current:
  m=re.match(r'j\w+\s+0x([0-9a-f]+)',t)
  if m:
   target=int(m[1],16);assert target in starts,(hex(a),hex(target));branches.append(dict(site=hex(a),target=hex(target),inside=b<=target<e))
 audit.append(dict(begin=hex(b),end=hex(e),instructions=len(current),sha256=hashlib.sha256(image[b:e]).hexdigest()))
src=(root/'source/reconstructed/menu_pages_analysis.cpp').read_text()+(root/'source/reconstructed/menu_pages_dispatch.inc').read_text()
for p in pages:
 for key in ['thunk','target']:assert re.search(r'case\s+'+p[key]+r'\s*:',src),(p[key],'missing source route')
# Validate every native page control site is represented in the generated/manual
# source. Color/key-label helpers have their own concrete typed adapters.
control_roles={0x3bd114,0x3be2ec,0x3bf008,0x387d18,0x3c4438,0x3c43f4,0x3bc7d8,0x385b70,0x3869b4}
all_src='\n'.join(p.read_text() for p in (root/'source/reconstructed').glob('menu_pages*') if p.suffix in ['.cpp','.inc'])
missing=[];sites=[]
for p in pages:
 b,e=map(lambda s:int(s,16),p['pdata_extent'])
 for a,raw,t in rows:
  if not b<=a<e:continue
  m=re.match(r'call\s+0x([0-9a-f]+)',t)
  if m and int(m[1],16) in control_roles:
   sites.append(dict(site=hex(a),primitive=hex(int(m[1],16)),page=hex(b)))
   if hex(a) not in all_src:missing.append(hex(a))
assert not missing,missing
(out/'menu_pages_byte_audit.json').write_text(json.dumps(dict(input_sha256=hashlib.sha256(image).hexdigest(),verified_fragments=len(rows),ranges=audit),indent=2)+'\n')
(out/'menu_pages_branch_audit.json').write_text(json.dumps(branches,indent=2)+'\n');(out/'menu_pages_control_sites.json').write_text(json.dumps(sites,indent=2)+'\n')
print('PASS:',len(rows),'byte fragments;',len(selected),'ranges;',len(branches),'branches;',len(sites),'control sites;',len(pages),'page roots+thunks')
