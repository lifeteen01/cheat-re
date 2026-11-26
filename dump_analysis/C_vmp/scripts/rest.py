import sys,collections
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from rf import rfs,secname
from xrefs import IM
R={}
for n in IM:
    img,p,r=rfs(n)
    v=sorted(x for x in r if secname(p,x[0]) not in ('.text','.5ba23b'))
    first_sec=IM[n][2][0]
    rest=[x for x in v[777:] if x[1]-x[0]<0x100000 and (first_sec[1]<=x[0]<first_sec[2] or secname(p,x[0])=='?')]
    big=[x for x in v[777:] if x[1]-x[0]>=0x100000]
    sec2=[x for x in v[777:] if x not in rest and x not in big]
    R[n]=(img,rest,big,sec2)
    b0=rest[0][0]
    print(n,'small-rest',len(rest),'span',hex(rest[0][0]),hex(rest[-1][1]),'big',[(hex(b),hex(e-b),secname(p,b)) for b,e,u in big],'sec2 small',len(sec2))
    R[n]=R[n]+(set((b-b0,e-b) for b,e,u in rest),)
for a in R:
  for b in R:
    if a<b: print(a,b,'common rel layout',len(R[a][4]&R[b][4]))
# sizes of rest in loader not in cheat
img,rest,big,sec2,lay=R['loader']
b0=rest[0][0]
other=[(b,e,u) for b,e,u in rest if (b-b0,e-b) not in R['cheat'][4]]
print('loader-specific',len(other),[(hex(b),e-b) for b,e,u in other[:80]])
