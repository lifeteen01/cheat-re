import sys,re,json,bisect
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from rf import rfs
img,p,r=rfs('cheat')
fe={b:e for b,e,u in r}
o=json.load(open('cfg_users.json'))
gl=sorted((int(v['glob'],16),k) for k,v in o.items()); gs=[g for g,k in gl]
def gkey(x):
    i=bisect.bisect_right(gs,x)-1
    if i>=0 and x-gs[i]<0x50: return gl[i][1]+('' if x==gs[i] else '+%#x'%(x-gs[i]))
G={}
for l in open('/home/john/malware-lab/analysis/run4/static/cheat_decstr.txt'):
    p_=l.rstrip('\n').split(' ',3)
    if len(p_)<4: continue
    a=int(p_[0],16)
    while img[a]==0xcc: a+=1
    G[a]=p_[3]
f=int(sys.argv[1],16); e=fe[f]
for l in open('cheat_code.asm'):
    m=re.match(r'^\s*([0-9a-f]+):\t[0-9a-f ]+\t(.*)$',l)
    if not m: continue
    a=int(m.group(1),16)
    if not f<=a<e: continue
    t=re.sub(r'\s+',' ',m.group(2))
    mm=re.search(r'call 0x([0-9a-f]+)$',t)
    if mm and int(mm.group(1),16) in G: print('%x  "%s"'%(a,G[int(mm.group(1),16)][:70])); continue
    mm=re.search(r'# 0x([0-9a-f]+)',t)
    if mm:
        k=gkey(int(mm.group(1),16))
        if k: print('%x      -> %s   (%s)'%(a,k,t.split(' ')[0]))
