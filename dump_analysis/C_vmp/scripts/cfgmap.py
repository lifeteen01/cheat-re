import sys,re,bisect,collections,json
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from rf import rfs
img,p,r=rfs('cheat')
fs=sorted((b,e) for b,e,u in r if 0x2b2000<=b<0x3cf000); st=[f[0] for f in fs]
def fn(a):
    i=bisect.bisect_right(st,a)-1
    return fs[i][0] if i>=0 and fs[i][0]<=a<fs[i][1] else None
# decstr
G={}
for l in open('/home/john/malware-lab/analysis/run4/static/cheat_decstr.txt'):
    p_=l.rstrip('\n').split(' ',3)
    if len(p_)<4: continue
    a=int(p_[0],16)
    while img[a]==0xcc: a+=1
    G[a]=p_[3]
L=[]
for l in open('cheat_code.asm'):
    m=re.match(r'^\s*([0-9a-f]+):\t[0-9a-f ]+\t(.*)$',l)
    if m: L.append((int(m.group(1),16),re.sub(r'\s+',' ',m.group(2).strip())))
idx={a:i for i,(a,t) in enumerate(L)}
# key uses: call getter
uses=collections.defaultdict(list)   # string -> [(site,func)]
cfg={}   # key -> global
regfn=collections.Counter()
for i,(a,t) in enumerate(L):
    m=re.match(r'call 0x([0-9a-f]+)$',t)
    if m and int(m.group(1),16) in G:
        s=G[int(m.group(1),16)]; uses[s].append((a,fn(a)))
        # look ahead for lea rcx,[rip] # G then call
        for j in range(i+1,min(i+14,len(L))):
            mm=re.match(r'lea rcx,\[rip\+0x[0-9a-f]+\] # 0x([0-9a-f]+)$',L[j][1])
            if mm and int(mm.group(1),16)>=0x3cf000:
                k=j+1
                while k<len(L) and not L[k][1].startswith('call'): k+=1
                if k<len(L):
                    regfn[L[k][1]]+=1
                    if re.match(r'(Bools|F|i|K|C|V2|V3|S|VectorBools)\.',s): cfg.setdefault(s,(int(mm.group(1),16),L[k][1],fn(a)))
                break
print('config keys with global',len(cfg)); print('reg fns',regfn.most_common(12))
# global refs
gl=sorted(set(v[0] for v in cfg.values()))
refs=collections.defaultdict(set); refsites=collections.defaultdict(list)
for a,t in L:
    m=re.search(r'# 0x([0-9a-f]+)',t)
    if not m: continue
    x=int(m.group(1),16)
    if x<0x3cf000: continue
    i=bisect.bisect_right(gl,x)-1
    if i<0: continue
    g=gl[i]; nxt=gl[i+1] if i+1<len(gl) else g+0x100
    if x<min(nxt,g+0x60):
        refs[g].add(fn(a)); refsites[g].append(a)
inv={v[0]:k for k,v in cfg.items()}
out={}
for k,(g,reg,initf) in sorted(cfg.items()):
    users=sorted(f for f in refs[g] if f!=initf and f is not None)
    out[k]=dict(glob=hex(g),reg=reg,init=hex(initf) if initf else None,users=[hex(u) for u in users],nrefs=len(refsites[g]))
json.dump(out,open('cfg_users.json','w'),indent=0)
c=collections.Counter(len(v['users']) for v in out.values())
print('users-per-key hist',sorted(c.items()))
