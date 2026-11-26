import sys,re,collections,json
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from rf import rfs
img,p,r=rfs('cheat'); fe={b:e for b,e,u in r}
L=[]
for l in open('cheat_code.asm'):
    m=re.match(r'^\s*([0-9a-f]+):\t[0-9a-f ]+\t(.*)$',l)
    if m: L.append((int(m.group(1),16),re.sub(r'\s+',' ',m.group(2).strip())))
idx={a:i for i,(a,t) in enumerate(L)}
R64=['rax','rbx','rcx','rdx','rsi','rdi','rbp','rsp','r8','r9','r10','r11','r12','r13','r14','r15']
def canon(x):
    m=re.match(r'r(\d+)[dwb]?$',x)
    if m: return 'r'+m.group(1)
    t={'e':'r'}
    for rr in R64:
        if x in (rr,'e'+rr[1:],rr[1:],rr[1]+'l'): return rr
    return x
def this_offsets(f,argreg='rcx'):
    tr={argreg}; out=collections.Counter()
    i=idx[f]; e=fe[f]
    while i<len(L) and L[i][0]<e:
        a,t=L[i]; op=t.split(' ')[0]; args=t[len(op)+1:]
        for m in re.finditer(r'\[(r\w+)\+(0x[0-9a-f]+)\]',args):
            if m.group(1) in tr and '*' not in m.group(0): out[int(m.group(2),16)]+=1
        dst=canon(args.split(',')[0]) if args else ''
        src=args.split(',',1)[1] if ',' in args else ''
        if op=='mov' and canon(src) in tr and dst in R64: tr.add(dst)
        elif dst in tr and op not in ('cmp','test','push') and not args.startswith('QWORD PTR') and not args.startswith('DWORD'):
            tr.discard(dst)
        if op=='call': tr-= {'rax','rcx','rdx','r8','r9','r10','r11'}
        i+=1
    return out
D={'0x324b30':'PWM.%9a4b1fd1','0x32a9f8':'PWM.%123bd3a0','0x322aec':'PWM.%1d9a027b','0x32cae8':'BasePlayer.%3d67d36f','0x32b62c':'BasePlayer.%ab2af99e','0x2e91fc':'BasePlayer.?','0x2e12e0':'BaseMelee.%63e89e5a','0x2ddb10':'BaseLauncher.%4cc4b6b1','0x32ae10':'Projectile.Update','0x2f8574':'Client.LateUpdate','0x32cea8':'%de96eb58.%fa0c08e0','0x3215cc':'ItemIcon.%ff5c768a','0x332554':'WaterOverlay.Update','0x32f038':'SmokeGrenade.Update'}
res={}
for f,nm in D.items():
    o=this_offsets(int(f,16))
    res[nm]=sorted((hex(k),v) for k,v in o.items())
    print('%-26s %s'%(nm,' '.join('%s(%d)'%(hex(k),v) for k,v in sorted(o.items()))))
json.dump(res,open('this_offsets.json','w'))
# global stats: distinct large displacements in feature code
c=collections.Counter()
for a,t in L:
    for m in re.finditer(r'\[(r(?:[a-d]x|[sd]i|bp|\d+))\+(0x[0-9a-f]+)\]',t):
        v=int(m.group(2),16)
        if 0x100<=v<0x1000 and m.group(1)!='rsp' and m.group(1)!='rbp': c[v]+=1
print('distinct object displacements 0x100-0xfff:',len(c),'total uses',sum(c.values()))
