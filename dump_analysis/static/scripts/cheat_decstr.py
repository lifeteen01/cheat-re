# cheat_decstr.py IMAGE ASM : decode cheat.dll inline strings.
# Getter fns copy an encrypted blob (rip-relative loads) into [rdx+off]; decrypt fns do
# out[i]=enc[i]^((0x37 + i % M) & 0xff), M=52/56 (per template). Data only, no code executed.
import sys,re,struct
img=open(sys.argv[1],'rb').read()
L=[]
for l in open(sys.argv[2]):
    m=re.match(r'^\s*([0-9a-f]+):\t[0-9a-f ]+\t(.*)$',l)
    if m: L.append((int(m.group(1),16),m.group(2).strip()))
SZ={'BYTE':1,'WORD':2,'DWORD':4,'QWORD':8,'XMMWORD':16}
def rs(r):
    if r.startswith('xmm'): return 16
    if r.startswith('r') and not r[-1] in 'dwb': return 8
    if r.startswith('e') or r.endswith('d'): return 4
    if r.endswith('w') or r in ('ax','bx','cx','dx'): return 2
    return 1
def canon(r):
    m=re.match(r'r(\d+)[dwb]?$',r)
    if m: return 'r'+m.group(1)
    return {'eax':'rax','ax':'rax','al':'rax','ecx':'rcx','cx':'rcx','cl':'rcx','r8d':'r8'}.get(r,r)
out=[]
i=0
while i<len(L):
    # getter start heuristic: first instr after int3/ret padding
    if i>0 and not (L[i-1][1].startswith('int3') or L[i-1][1].startswith('ret') or L[i-1][1].startswith('jmp')):
        i+=1; continue
    regs={};buf={};j=i;ok=False;dst=None
    while j<len(L) and j<i+40:
        a,t=L[j]
        if t.startswith('ret'): ok=True;break
        m=re.match(r'(mov\w*)\s+([^,]+),(.*)$',t)
        if not m:
            if t.startswith('mov') or t.startswith('lea') or t.startswith('int3') or t=='': j+=1; continue
            break
        op,d,s=m.groups()
        r=re.search(r'# 0x([0-9a-f]+)',s)
        if '[rip' in s and r:
            x=int(r.group(1),16); n=SZ.get(s.split()[0],rs(d)) if 'PTR' in s else rs(d)
            regs[canon(d)]=img[x:x+n]
        else:
            mm=re.match(r'(?:(\w+) PTR )?\[(r\w+)([+-]0x[0-9a-f]+)?\]$',d)
            if mm:
                if dst is None: dst=mm.group(2)
                if mm.group(2)!=dst: break
                off=int(mm.group(3) or '0',16)
                if re.match(r'^0x[0-9a-f]+$',s): n=SZ[mm.group(1)]; data=(int(s,16)&((1<<8*n)-1)).to_bytes(n,'little')
                elif canon(s) in regs: n=SZ[mm.group(1)] if mm.group(1) else rs(s); data=regs[canon(s)][:n]
                else: j+=1; continue
                for k,b in enumerate(data): buf[off+k]=b
        j+=1
    if ok and buf and min(buf)==0:
        n=max(buf)+1
        if all(k in buf for k in range(n)) and n>=2:
            enc=bytes(buf[k] for k in range(n))
            for M in (52,56):
                dec=bytes(b^((0x37+(k%M))&0xff) for k,b in enumerate(enc))
                if dec[-1]==0:
                    s=dec[:-1]
                    if s and all(32<=c<127 or c in (9,10,13) for c in s):
                        out.append('%x N=%d M=%d %s'%(L[i][0],n,M,s.decode())); break
                # wide variant: terminator 2 bytes
                if n%2==0 and dec[-2:]==b'\0\0':
                    try:
                        w=dec[:-2].decode('utf-16le')
                        if w and all(32<=ord(c)<127 for c in w): out.append('%x N=%d M=%d W:%s'%(L[i][0],n,M,w)); break
                    except: pass
            else:
                out.append('%x N=%d ?%s'%(L[i][0],n,enc.hex()))
    i=j+1 if ok else i+1
print('\n'.join(out))
