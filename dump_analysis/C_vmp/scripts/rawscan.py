import sys,struct,json,collections,bisect
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from xrefs import IM,secof
from rf import rfs,secname
PUSH={}
for i,r in enumerate(['rax','rcx','rdx','rbx','rsp','rbp','rsi','rdi']): PUSH[bytes([0x50+i])]=r; PUSH[bytes([0x41,0x50+i])]='r%d'%(8+i)
POP={k[:-1]+bytes([k[-1]+8]):v for k,v in PUSH.items()}
def scan(name):
    img,p,r=rfs(name); path,(lo,hi),vs=IM[name]
    funcs=sorted((b,e) for b,e,u in r if lo<=b<hi)
    starts=[f[0] for f in funcs]
    def infunc(a):
        i=bisect.bisect_right(starts,a)-1
        return funcs[i] if i>=0 and funcs[i][0]<=a<funcs[i][1] else None
    out=[]
    for a in range(lo,hi-5):
        op=img[a]
        if op not in (0xe8,0xe9): continue
        rel=struct.unpack_from('<i',img,a+1)[0]; t=a+5+rel
        s=secof(name,t)
        if not s: continue
        pre=None
        for k,v in PUSH.items():
            if img[a-len(k):a]==k: pre=v
        tpop=None
        for k,v in POP.items():
            if img[t:t+len(k)]==k: tpop=v
        f=infunc(a)
        out.append(dict(site=a,op='call' if op==0xe8 else 'jmp',tgt=t,sec=s,pushreg=pre,tpop=tpop,func=f[0] if f else None,next=img[a+5]))
    return out
if __name__=='__main__':
    for n in IM:
        o=scan(n); json.dump(o,open(f'{n}_raw.json','w'))
        c=collections.Counter((x['op'],x['sec'],x['func'] is not None, x['pushreg'] is not None and x['pushreg']==x['tpop']) for x in o)
        print(n,len(o)); 
        for k,v in sorted(c.items(),key=lambda kv:-kv[1]): print('   ',k,v)
