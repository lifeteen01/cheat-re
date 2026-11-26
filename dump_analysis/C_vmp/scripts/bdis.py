import subprocess,re,os,tempfile
LINE=re.compile(r'^\s*([0-9a-f]+):\s+((?:[0-9a-f]{2} )+)\s*(.*)$')
J=re.compile(r'(j\w+|call|loop\w*|jrcxz|jecxz)\s+0x([0-9a-f]+)$')
TMP='/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad/bwin.bin'
class BD:
    W=96; PAD=16
    def __init__(s,path):
        s.img=open(path,'rb').read(); s.cache={}; s.done_win=set()
    def batch(s,addrs):
        for a in set(addrs):
            if not (0<=a<len(s.img)): s.cache[a]=(a,b'','(bad)')
        addrs=[a for a in set(addrs) if a not in s.cache]
        if not addrs: return
        buf=bytearray(); offs=[]
        for a in addrs:
            offs.append((len(buf),a)); buf+=s.img[a:a+s.W]; buf+=b'\xcc'*s.PAD
        open(TMP,'wb').write(buf)
        out=subprocess.run(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','-w',TMP],capture_output=True,text=True).stdout
        import bisect
        starts=[o for o,a in offs]
        per={}
        for l in out.splitlines():
            m=LINE.match(l)
            if not m: continue
            o=int(m.group(1),16); i=bisect.bisect_right(starts,o)-1
            if i<0: continue
            wo,wa=offs[i]
            if o-wo>=s.W: continue
            b=bytes.fromhex(m.group(2).replace(' ','')); t=re.sub(r'\s+',' ',m.group(3).strip())
            # fix rel targets: objdump printed target relative to buffer
            mm=J.match(t)
            if mm:
                v=int(mm.group(2),16)
                if v>=1<<63: v-=1<<64
                t='%s 0x%x'%(mm.group(1),(v-wo+wa)&((1<<64)-1))
            mm=re.search(r'# 0x([0-9a-f]+)',t)
            if mm: t=t[:mm.start()]+'# 0x%x'%(int(mm.group(1),16)-wo+wa)
            per.setdefault(i,[]).append((o-wo+wa,b,t))
        for i,xs in per.items():
            wo,wa=offs[i]
            # drop last insn if it reaches window end
            if xs and xs[-1][0]+len(xs[-1][1])>=wa+s.W-15: xs=xs[:-1] if len(xs)>1 else xs
            for x in xs: s.cache.setdefault(x[0],x)
        for a in addrs:
            s.cache.setdefault(a,(a,b'','(bad)'))
def run(bd,gens):
    """gens: dict key->generator yielding addresses, receiving insn tuples; returns key->final value"""
    res={}; pend={}
    for k,g in gens.items():
        try: pend[k]=next(g)
        except StopIteration as e: res[k]=e.value
    while pend:
        bd.batch(list(pend.values()))
        newp={}
        for k,a in pend.items():
            g=gens[k]
            try:
                x=g.send(bd.cache[a])
                while x in bd.cache: x=g.send(bd.cache[x])
                newp[k]=x
            except StopIteration as e: res[k]=e.value
        pend=newp
    return res
def tracer(a,maxn=600,stop_at_ret=True):
    tr=[];seen={}
    while len(tr)<maxn:
        if seen.get(a,0)>1: tr.append((a,b'','<loop>'));break
        seen[a]=seen.get(a,0)+1
        i=yield a
        tr.append(i); t=i[2]
        if not i[1] or '(bad)' in t: break
        nxt=i[0]+len(i[1])
        m=J.match(t)
        if m:
            tg=int(m.group(2),16)
            if m.group(1) in('jmp','call'): a=tg; continue
            # jcc: look ahead fallthrough 3 insns
            ok=True;b=nxt
            for _ in range(3):
                x=yield b
                if not x[1] or '(bad)' in x[2]: ok=False;break
                b=x[0]+len(x[1])
            a=nxt if ok else tg; continue
        if t.startswith(('ret','jmp','call','int3','hlt','ud2')): break
        a=nxt
    return tr
