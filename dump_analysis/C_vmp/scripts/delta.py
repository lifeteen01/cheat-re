import sys,re,struct,collections,json
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from xrefs import IM,secof
from bfs import RTB,PREF
from boundary import votes
from vdis import D
OUT={}
for name in IM:
    img=open(IM[name][0],'rb').read(); delta=RTB[name]-PREF[name]
    pat=struct.pack('<Q',delta)
    occ=[m.start() for m in re.finditer(re.escape(pat),img)]
    # movabs reg,imm64: REX.W(48/49) + B8+r
    mov=[o-2 for o in occ if img[o-2] in (0x48,0x49) and 0xb8<=img[o-1]<=0xbf]
    v=votes(img,mov)
    mov=[o for o in mov if v[o][0]/v[o][1]>=0.5]
    bysec=collections.Counter(secof(name,o) or 'other' for o in mov)
    other=collections.Counter(secof(name,o) or ('code' if IM[name][1][0]<=o<IM[name][1][1] else 'data') for o in occ if o-2 not in mov)
    OUT[name]=mov
    print(name,'delta=%#x'%delta,'raw occurrences',len(occ),'movabs(boundary-ok)',len(mov),dict(bysec),'non-movabs occ',dict(other))
json.dump(OUT,open('delta_movabs.json','w'))
