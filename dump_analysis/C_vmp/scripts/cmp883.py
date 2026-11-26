import sys,struct,collections
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from rf import rfs,secname
from xrefs import IM
D={}
for n in IM:
    img,p,r=rfs(n)
    lo=IM[n][1][1]
    v=[(b,e,u) for b,e,u in r if b>=lo+0x1000 or secname(p,b) not in('.text','.5ba23b')]
    v=[x for x in v if secname(p,x[0]) not in ('.text','.5ba23b')]
    v.sort()
    D[n]=(img,p,v)
    sizes=[e-b for b,e,u in v]
    print(n,len(v),'first',hex(v[0][0]),'last',hex(v[-1][0]),hex(v[-1][1]))
    print('  first 12 sizes',sizes[:12])
    print('  unwind first 8',[img[u&~1:(u&~1)+4].hex() for b,e,u in v[:8]])
# compare size multisets
ss={n:collections.Counter(e-b for b,e,u in D[n][2]) for n in D}
for a in D:
  for b in D:
    if a<b: print(a,b,'common size multiset',sum((ss[a]&ss[b]).values()))
# compare relative layout: offsets from first entry
for n in D:
    v=D[n][2]; b0=v[0][0]
    D[n]=D[n]+([ (b-b0,e-b) for b,e,u in v],)
for a in D:
  for b in D:
    if a<b: print(a,b,'identical (reloff,size) pairs', len(set(D[a][3])&set(D[b][3])))
