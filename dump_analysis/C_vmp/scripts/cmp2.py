import sys,hashlib,collections
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from rf import rfs,secname
from xrefs import IM
D={}
for n in IM:
    img,p,r=rfs(n)
    v=sorted(x for x in r if secname(p,x[0]) not in ('.text','.5ba23b'))
    D[n]=(img,p,v)
# bytes compare of first 777 entries cheat vs hooks
def h(img,b,e): return hashlib.md5(img[b:e]).hexdigest()
for a,bn in [('cheat','hooks'),('cheat','starter'),('cheat','loader')]:
    A=D[a];B=D[bn]; same=0; diff=0; ex=[]
    for (b1,e1,u1),(b2,e2,u2) in zip(A[2][:777],B[2][:777]):
        if A[0][b1:e1]==B[0][b2:e2]: same+=1
        else:
            # compare ignoring rel32 differences: count differing bytes
            d=sum(1 for x,y in zip(A[0][b1:e1],B[0][b2:e2]) if x!=y); diff+=1
            if len(ex)<5: ex.append((hex(b1),e1-b1,d))
    print(a,bn,'identical bytes',same,'differ',diff,ex)
for n in D:
    img,p,v=D[n]
    end777=v[776][1]
    print(n,'777th ends',hex(end777),'entries after:',len(v)-777)
    for b,e,u in v[777:]:
        pass
    # show where the rest lie
    c=collections.Counter(secname(p,b) for b,e,u in v[777:])
    print('  rest secs',dict(c),'first rest',[ (hex(b),e-b) for b,e,u in v[777:785]])
    big=sorted(v,key=lambda x:x[0]-x[1])[:5]
    print('  biggest',[(hex(b),hex(e-b),secname(p,b)) for b,e,u in big])
