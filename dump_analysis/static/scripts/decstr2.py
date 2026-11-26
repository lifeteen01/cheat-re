# decstr2.py IMAGE ASM [M]: decode inline strings out[i]=enc[i]^((i>>S)+K+M*i) (byte or word elements)
# by reconstructing the stack buffer from setup code (rip loads, xmm moves, immediates).
import sys,re,struct
img=open(sys.argv[1],'rb').read(); MUL=int(sys.argv[3],0) if len(sys.argv)>3 else 0xd
L=[];idx={}
for l in open(sys.argv[2]):
    m=re.match(r'^\s*([0-9a-f]+):\t[0-9a-f ]+\t(.*)$',l)
    if m: idx[int(m.group(1),16)]=len(L); L.append((int(m.group(1),16),m.group(2).strip()))
jmps={}
for i,(a,t) in enumerate(L):
    m=re.match(r'j\w+\s+0x([0-9a-f]+)$',t)
    if m: jmps.setdefault(int(m.group(1),16),[]).append(i)
SZ={'BYTE':1,'WORD':2,'DWORD':4,'QWORD':8,'XMMWORD':16,'YMMWORD':32}
GP={'r':8,'e':4}
def regsize(r):
    if r.startswith('xmm'): return 16
    if r.startswith('ymm'): return 32
    if re.match(r'r\d+d$',r): return 4
    if re.match(r'r\d+w$',r): return 2
    if re.match(r'r\d+b$',r) or r in('al','bl','cl','dl','sil','dil','spl','bpl'): return 1
    if r.startswith('r'): return 8
    if r.startswith('e'): return 4
    return 2
def canon(r):
    r=r.replace('ymm','xmm')
    m=re.match(r'r(\d+)[dwb]?$',r)
    if m: return 'r'+m.group(1)
    t={'al':'rax','ax':'rax','eax':'rax','bl':'rbx','bx':'rbx','ebx':'rbx','cl':'rcx','cx':'rcx','ecx':'rcx','dl':'rdx','dx':'rdx','edx':'rdx','sil':'rsi','si':'rsi','esi':'rsi','dil':'rdi','di':'rdi','edi':'rdi','bpl':'rbp','ebp':'rbp','spl':'rsp'}
    return t.get(r,r)
MEM=re.compile(r'(?:(BYTE|WORD|DWORD|QWORD|XMMWORD|YMMWORD) PTR )?\[(r[sb]p)([+-]0x[0-9a-f]+)?\]')
def farload(reg,lo):
    # look far back (same function, 4000 instr) for a rip load into reg
    for k in range(lo-1,max(lo-4000,0),-1):
        t=L[k][1]
        if t.startswith('ret') or t.startswith('int3'): return None
        m=re.match(r'(mov\w*)\s+([^,]+),(.*)$',t)
        if m and canon(m.group(2))==reg:
            r=re.search(r'# 0x([0-9a-f]+)',m.group(3))
            if '[rip' in m.group(3) and r:
                n=SZ.get(m.group(3).split()[0],16); a=int(r.group(1),16); return img[a:a+n]
            return None
    return None
def rbpdelta(k0):
    for k in range(k0,max(k0-6000,0),-1):
        m=re.match(r'lea\s+rbp,\[rsp([+-]0x[0-9a-f]+)?\]$',L[k][1])
        if m:
            d=int(m.group(1) or '0',16)
            for kk in range(k+1,min(k+6,len(L))):
                ms=re.match(r'sub\s+rsp,0x([0-9a-f]+)$',L[kk][1])
                if ms: return d+int(ms.group(1),16)
            return d
        if L[k][1].startswith('mov    rbp,rsp') or re.match(r'mov\s+rbp,rsp$',L[k][1]): return 0
    return None
def setup(lo,hi,frame):
    regs={};buf={}
    for k in range(lo,hi):
        a,t=L[k]
        m=re.match(r'(mov\w*|lea)\s+([^,]+),(.*)$',t)
        if not m: continue
        op,dst,src=m.groups()
        r=re.search(r'# 0x([0-9a-f]+)',src)
        if '[rip' in src and r and op!='lea':
            n=SZ.get(src.split()[0],regsize(dst)) if 'PTR' in src else regsize(dst)
            regs[canon(dst)]=img[int(r.group(1),16):int(r.group(1),16)+n]; continue
        mm=MEM.match(dst)
        if mm and (mm.group(2)==frame or DELTA is not None):
            off=int(mm.group(3) or '0',16)
            if mm.group(2)!=frame:
                off = off+DELTA if mm.group(2)=='rbp' else off-DELTA
            if re.match(r'^-?0x[0-9a-f]+$',src):
                n=SZ[mm.group(1)]; v=int(src,16)&((1<<(8*n))-1); data=v.to_bytes(n,'little')
            elif canon(src) in regs:
                n=regsize(src) if not mm.group(1) else SZ[mm.group(1)]; data=regs[canon(src)][:n]
            else:
                v=farload(canon(src),lo)
                if v is None: continue
                n=SZ[mm.group(1)] if mm.group(1) else regsize(src); data=v[:n]
            for j,b in enumerate(data): buf[off+j]=b
            continue
        if re.match(r'^(r|e)?[a-z0-9]+$',dst) and re.match(r'^0x[0-9a-f]+$',src):
            regs[canon(dst)]=int(src,16).to_bytes(8,'little')[:regsize(dst)]
        elif canon(dst) in regs: regs.pop(canon(dst),None)
    return buf
out=[];seen=set()
for i,(a,t) in enumerate(L):
    m=re.match(r'imul\s+\w+,\w+,(0x[0-9a-f]+)$',t)
    if not m or int(m.group(1),16)!=MUL: continue
    # find loop body: shr, add K, xor with [frame+reg*w+B], cmp N, jb start
    K=S=N=B=W=frame=None;start=None;jb=None;Kreg=None
    for j in range(max(i-6,0),min(i+14,len(L))):
        t2=L[j][1]
        mm=re.match(r'shr\s+\w+,0x([0-9a-f]+)$',t2)
        if mm and S is None: S=int(mm.group(1),16)
        mm=re.match(r'add\s+(\w+),0x([0-9a-f]+)$',t2)
        if mm and K is None and j>i-4 and regsize(mm.group(1))<=2: K=int(mm.group(2),16);W=regsize(mm.group(1))
        mm=re.match(r'add\s+(\w+),(\w+)$',t2)
        if mm and K is None and j>i-4 and regsize(mm.group(1))<=2 and canon(mm.group(2)) not in ('rcx',) and canon(mm.group(2))!=canon(mm.group(1)):
            Kreg=canon(mm.group(2));W=regsize(mm.group(1))
        mm=re.match(r'xor\s+\w+,(?:BYTE|WORD) PTR \[(r[sb]p)\+r\w+\*?(\d)?([+-]0x[0-9a-f]+)\]',t2)
        if mm and B is None: frame=mm.group(1);B=int(mm.group(3),16)
        mm=re.match(r'cmp\s+r\w+,0x([0-9a-f]+)$',t2)
        if mm and N is None and j>i: N=int(mm.group(1),16)
        mm=re.match(r'jb\s+0x([0-9a-f]+)$',t2)
        if mm and jb is None and j>i: start=int(mm.group(1),16);jb=j
    if None in (S,N,B,start) or start not in idx: continue
    si=idx[start]
    DELTA=rbpdelta(si)
    if K is None:
        if Kreg is None: continue
        for k in range(si-1,max(si-120,0),-1):
            mk=re.match(r'mov\s+(\w+),0x([0-9a-f]+)$',L[k][1])
            if mk and canon(mk.group(1))==Kreg: K=int(mk.group(2),16)&0xffff; break
        if K is None:
            for k in jmps.get(start,[]):
                for kk in range(k-1,max(k-120,0),-1):
                    mk=re.match(r'mov\s+(\w+),0x([0-9a-f]+)$',L[kk][1])
                    if mk and canon(mk.group(1))==Kreg: K=int(mk.group(2),16)&0xffff; break
                if K is not None: break
        if K is None: continue
    blocks=[(max(si-70,0),si)]+[(max(k-50,0),k) for k in jmps.get(start,[]) if k!=jb]
    best=None
    for lo,hi in blocks:
        buf=setup(lo,hi,frame)
        if sum((B+n) in buf for n in range(N*W))<N*W:
            def norm(fr,o):
                if fr==frame: return o
                if DELTA is None: return None
                return o+DELTA if fr=='rbp' else o-DELTA
            dst=[]
            for k in range(lo,hi):
                md=re.match(r'lea\s+\w+,\[(r[sb]p)([+-]0x[0-9a-f]+)?\]$',L[k][1])
                if md and norm(md.group(1),int(md.group(2) or '0',16))==B: dst.append(k)
            srcs=[int(re.search(r'# 0x([0-9a-f]+)',L[k][1]).group(1),16) for k in range(lo,hi) if re.match(r'lea\s+\w+,\[rip',L[k][1])]
            if dst and srcs:
                X=srcs[-1]
                for n in range(N*W): buf[B+n]=img[X+n]
        enc=bytes(buf.get(B+n,0) for n in range(N*W))
        cov=sum((B+n) in buf for n in range(N*W))
        if W==1: dec=bytes((b^(((n>>S)+K+MUL*n)&0xff)) for n,b in enumerate(enc))
        else: dec=b''.join(((struct.unpack_from('<H',enc,2*n)[0]^(((n>>S)+K+MUL*n)&0xffff))).to_bytes(2,'little') for n in range(N))
        s=dec.decode('utf-16le' if W==2 else 'latin1',errors='replace').rstrip('\0')
        good=sum(32<=ord(c)<127 or c in '\r\n\t' for c in s)/max(len(s),1)
        sc=(cov==N*W, good)
        if best is None or sc>best[0]: best=(sc,s,L[lo][0])
    (full,good),s,blk=best
    tag='' if full and good>0.95 else ('?partial ' if not full else '?')
    key=(a,s)
    if key in seen: continue
    seen.add(key)
    out.append('%x K=%02x %s N=%x %s%s'%(a,K,'W' if W==2 else 'A',N,tag,s.encode('unicode_escape').decode()))
print('\n'.join(out))
