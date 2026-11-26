# xref.py IMAGE ASM DECSTR EXCDIR_VA EXCDIR_SZ : per-function list of decoded strings, plain-string refs and calls
import sys,re,struct,bisect
img=open(sys.argv[1],'rb').read()
va,sz=int(sys.argv[4],0),int(sys.argv[5],0)
fn=sorted(set(struct.unpack_from('<II',img,va+12*i) for i in range(sz//12)))
fn=[f for f in fn if f[0]<f[1]]
starts=[f[0] for f in fn]
def func(a):
    i=bisect.bisect_right(starts,a)-1
    return fn[i][0] if i>=0 and a<fn[i][1] else None
dec={}
for l in open(sys.argv[3]):
    p=l.rstrip('\n').split(' ',4); dec.setdefault(func(int(p[0],16)),[]).append('  D %s %s'%(p[0],p[4] if len(p)>4 else ''))
plain={}
for l in open(sys.argv[6]) if len(sys.argv)>6 else []:
    p=l.rstrip('\n').split(' ',2)
    if len(p)==3: plain[int(p[1],16)]=p[2]
refs={};calls={}
for l in open(sys.argv[2]):
    m=re.match(r'^\s*([0-9a-f]+):\t[0-9a-f ]+\t(.*)$',l)
    if not m: continue
    a=int(m.group(1),16);t=m.group(2); f=func(a)
    r=re.search(r'# 0x([0-9a-f]+)',t)
    if r and int(r.group(1),16) in plain: refs.setdefault(f,[]).append('  S %x %s'%(a,plain[int(r.group(1),16)][:100]))
    c=re.match(r'call\s+0x([0-9a-f]+)$',t)
    if c: calls.setdefault(f,set()).add(int(c.group(1),16))
for f in sorted(set(dec)|set(refs),key=lambda x:x or 0):
    if f is None: continue
    print('FUNC %x'%f, 'calls:',' '.join('%x'%c for c in sorted(calls.get(f,()))))
    for x in sorted(dec.get(f,[])+refs.get(f,[]),key=lambda s:int(s.split()[1],16)): print(x)
