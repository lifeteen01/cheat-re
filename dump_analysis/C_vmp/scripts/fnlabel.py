import sys,re,bisect,collections,json
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from rf import rfs
img,p,r=rfs('cheat')
fs=sorted((b,e) for b,e,u in r if 0x2b2000<=b<0x3cf000); st=[f[0] for f in fs]
def fn(a):
    i=bisect.bisect_right(st,a)-1
    return fs[i][0] if i>=0 and fs[i][0]<=a<fs[i][1] else None
G={}
for l in open('/home/john/malware-lab/analysis/run4/static/cheat_decstr.txt'):
    p_=l.rstrip('\n').split(' ',3)
    if len(p_)<4: continue
    a=int(p_[0],16)
    while img[a]==0xcc: a+=1
    G[a]=p_[3]
S=collections.defaultdict(list); CALLS=collections.defaultdict(set)
for l in open('cheat_code.asm'):
    m=re.match(r'^\s*([0-9a-f]+):\t[0-9a-f ]+\t(.*)$',l)
    if not m: continue
    a=int(m.group(1),16); t=m.group(2)
    mm=re.search(r'call\s+0x([0-9a-f]+)$',t)
    if mm:
        x=int(mm.group(1),16)
        if x in G: S[fn(a)].append(G[x])
        else: CALLS[fn(a)].add(x)
json.dump({hex(k) if k else 'none':v for k,v in S.items()},open('fn_strings.json','w'))
json.dump({hex(k) if k else 'none':sorted(hex(x) for x in v) for k,v in CALLS.items()},open('fn_calls.json','w'))
o=json.load(open('cfg_users.json'))
byf=collections.defaultdict(list)
for k,v in o.items():
    for u in v['users']: byf[u].append(k)
for f in sys.argv[1:]:
    ss=[s for s in S.get(int(f,16),[]) if not re.match(r'(Bools|F|i|K|C|V2|V3|S|VectorBools)\.',s)]
    print('==',f,'size',[hex(e-b) for b,e in fs if b==int(f,16)],'keys',len(byf[f]),byf[f][:14])
    print('   strings',ss[:25])
