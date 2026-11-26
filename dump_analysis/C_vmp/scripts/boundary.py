import sys,subprocess,re,bisect,json
sys.path.insert(0,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad')
from bdis import LINE
TMP='/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad/bnd.bin'
def votes(img,sites,K=32):
    """for each site, decode from site-k (k=1..K) and count how many land exactly on site; returns site->(hits,total)"""
    buf=bytearray(); offs=[]
    for s in sites:
        for k in range(1,K+1):
            if s-k<0: continue
            offs.append((len(buf),s,k)); buf+=img[s-k:s+6]; buf+=b'\xcc'*16
    open(TMP,'wb').write(buf)
    out=subprocess.run(['objdump','-D','-b','binary','-m','i386:x86-64','-w',TMP],capture_output=True,text=True).stdout
    starts=[o for o,_,_ in offs]; hit=set()
    for l in out.splitlines():
        m=LINE.match(l)
        if not m: continue
        o=int(m.group(1),16); i=bisect.bisect_right(starts,o)-1
        wo,s,k=offs[i]
        if o-wo==k: hit.add(i)
    res={}
    for i,(wo,s,k) in enumerate(offs):
        h,t=res.get(s,(0,0)); res[s]=(h+(i in hit),t+1)
    return res
if __name__=='__main__':
    from xrefs import IM
    for n in IM:
        img=open(IM[n][0],'rb').read()
        raw=json.load(open(n+'_raw.json'))
        v=votes(img,[x['site'] for x in raw])
        for x in raw: x['vote']=v[x['site']][0]/v[x['site']][1]
        json.dump(raw,open(n+'_raw.json','w'))
        import collections
        print(n, collections.Counter((x['sec'],x['func'] is not None, round(x['vote'],1)>=0.5) for x in raw))
