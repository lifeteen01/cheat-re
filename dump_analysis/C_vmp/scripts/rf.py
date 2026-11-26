import sys,struct,collections
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from pe import parse
from xrefs import IM
def rfs(name):
    path=IM[name][0]; img=open(path,'rb').read(); p=parse(img)
    va,sz=p['dd'][3]
    out=[]
    for i in range(sz//12):
        b,e,u=struct.unpack_from('<III',img,va+12*i)
        if b==0 and e==0: continue
        out.append((b,e,u))
    return img,p,out
def secname(p,a):
    for s in p['secs']:
        if s[1]<=a<s[1]+s[2]: return s[0]
    return '?'
if __name__=='__main__':
    for n in IM:
        img,p,r=rfs(n)
        c=collections.Counter(secname(p,b) for b,e,u in r)
        cu=collections.Counter(secname(p,u&~1) for b,e,u in r)
        print(n,len(r),dict(c),'unwind in',dict(cu))
        # sizes per section
        for s in c:
            sz=[e-b for b,e,u in r if secname(p,b)==s]
            print('  ',s,'min',min(sz),'max',max(sz),'sum',hex(sum(sz)), 'chained', sum(1 for b,e,u in r if secname(p,b)==s and img[u&~1]>>3 & 4))
