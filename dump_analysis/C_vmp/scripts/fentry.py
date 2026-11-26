import sys,json,re,struct,collections,subprocess
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from xrefs import IM,secof
from rf import rfs
from vdis import D
for name in ['loader','starter','hooks','cheat']:
    img,p,r=rfs(name); lo,hi=IM[name][1]
    if name=='cheat': lo,hi=0x2b2000,0x3cf000
    asm=f'{name}_code.asm'
    if name!='cheat' or True:
        pass
    txt=open(asm).read() if name!='cheat' else open('cheat_code.asm').read()
    tg=collections.Counter()
    for m in re.finditer(r'\tcall\s+0x([0-9a-f]+)\n',txt): tg[int(m.group(1),16)]+=1
    starts=set(b for b,e,u in r if lo<=b<hi)
    cand=set(starts)|set(t for t in tg if lo<=t<hi)
    hits=[]
    for a in cand:
        b=img[a:a+16]
        k=None
        if b[0]==0xe9:
            t=a+5+struct.unpack_from('<i',b,1)[0]
            if secof(name,t): k=('jmp',t)
        elif b[0]==0x68 and b[5] in (0xe8,0xe9):
            t=a+10+struct.unpack_from('<i',b,6)[0]
            if secof(name,t): k=('push+'+('call' if b[5]==0xe8 else 'jmp'),t)
        elif b[0]==0xeb:
            pass
        if k: hits.append((a,k[0],k[1],a in starts,tg.get(a,0)))
    print(name,'candidates',len(cand),'entry-replaced',len(hits))
    for h in sorted(hits): print('   fn %#x %s -> %#x pdata=%s callers=%d'%h)
