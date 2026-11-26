import sys,struct,collections,re
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from xrefs import IM,secof
from rf import rfs,secname
from bfs import RTB
for name in IM:
    img,p,r=rfs(name); B=RTB[name]
    vs=IM[name][2]
    hits=collections.Counter(); ex=[]
    # scan non-VMP sections (data) for aligned qwords
    for s in p['secs']:
        nm,va,vsz=s[0],s[1],s[2]
        if any(va==v[1] for v in vs) or nm in ('.OVb','.FY[','.5}"','.wWM','.reloc','.rsrc'): continue
        for a in range(va,min(va+vsz,len(img)-8),8):
            q=struct.unpack_from('<Q',img,a)[0]
            t=q-B
            if 0<=t<len(img):
                sn=secof(name,t)
                if sn: hits[(nm,sn)]+=1; ex.append((hex(a),nm,hex(t),sn))
    # rip-relative from code asm into VMP
    asm=open(f'{name}_code.asm' if name!='cheat' else 'cheat_code.asm').read()
    rr=collections.Counter()
    for m in re.finditer(r'\t(\w+)\s+[^\n]*\[rip\+0x[0-9a-f]+\][^\n]*# 0x([0-9a-f]+)',asm):
        t=int(m.group(2),16); sn=secof(name,t)
        if sn: rr[(m.group(1),sn)]+=1
    print(name,'abs ptrs',dict(hits),ex[:12]); print('   rip-rel refs from code',dict(rr))
