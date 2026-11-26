import subprocess,re,functools
LINE=re.compile(r'^\s*([0-9a-f]+):\s+((?:[0-9a-f]{2} )+)\s*(.*)$')
class D:
    def __init__(s,path):
        s.path=path; s.img=open(path,'rb').read(); s.cache={}
    def dis(s,start,n=96):
        """linear disasm from start for n bytes -> list of (addr,bytes,text)"""
        out=subprocess.run(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel',
            '--start-address=%#x'%start,'--stop-address=%#x'%(start+n),'--no-show-raw-insn' if False else '-w',s.path],
            capture_output=True,text=True).stdout
        res=[]
        for l in out.splitlines():
            m=LINE.match(l)
            if m:
                a=int(m.group(1),16); b=bytes.fromhex(m.group(2).replace(' ','')); t=m.group(3).strip()
                t=re.sub(r'\s+',' ',t)
                res.append((a,b,t))
        return res
    def ins(s,a):
        if a not in s.cache:
            xs=s.dis(a,80)
            for x in xs[:-1] if len(xs)>1 else xs: s.cache.setdefault(x[0],x)
            if a not in s.cache: s.cache[a]=(a,b'',"(bad)")
        return s.cache[a]
    def trace(s,a,maxn=60,follow_call=False):
        """follow straight-line code through unconditional jmps; returns list of insns"""
        tr=[];seen=set()
        while len(tr)<maxn:
            if a in seen: tr.append((a,b'','<loop>'));break
            seen.add(a)
            i=s.ins(a); tr.append(i)
            t=i[2]
            if not i[1] or '(bad)' in t: break
            m=re.match(r'jmp\s+0x([0-9a-f]+)',t)
            if m: a=int(m.group(1),16); continue
            m=re.match(r'call\s+0x([0-9a-f]+)',t)
            if m and follow_call: a=int(m.group(1),16); continue
            if t.startswith('ret') or t.startswith('jmp') or t.startswith('int3'): break
            a=i[0]+len(i[1])
        return tr
