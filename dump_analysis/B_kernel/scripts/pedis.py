# disassemble a PE region by RVA with symbol annotation: pedis.py pe syms lo hi
import sys,subprocess,re,struct,bisect
pe,symf,lo,hi=sys.argv[1],sys.argv[2],int(sys.argv[3],16),int(sys.argv[4],16)
d=open(pe,'rb').read(); e=struct.unpack_from('<I',d,0x3c)[0]
ib=struct.unpack_from('<Q',d,e+24+24)[0]
nsec=struct.unpack_from('<H',d,e+6)[0]; osz=struct.unpack_from('<H',d,e+20)[0]
secs=[struct.unpack_from('<8sIIII',d,e+24+osz+40*i) for i in range(nsec)]
S={}
for l in open(symf):
    a,n=l.split(' ',1); S[int(a,16)]=n.strip()
keys=sorted(S)
def nm(a):
    if a in S: return S[a]
    i=bisect.bisect_right(keys,a)-1
    if i>=0 and a-keys[i]<0x4000: return '%s+%x'%(S[keys[i]],a-keys[i])
    return None
def r2o(r):
    for n,vs,va,rs,ra in secs:
        if va<=r<va+rs: return r-va+ra
o=r2o(lo)
blob=d[o:o+(hi-lo)]
open('/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad/_b.bin','wb').write(blob)
out=subprocess.run(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--adjust-vma=%d'%lo,'/tmp/claude-1000/-home-john/f0ea01e7-86f8-410e-bd20-c8f2182ae077/scratchpad/_b.bin'],capture_output=True,text=True).stdout
for l in out.splitlines():
    m=re.match(r'^\s*([0-9a-f]+):\t(?:[0-9a-f]{2} )+\s*\t(.*)',l)
    if not m: continue
    a=int(m.group(1),16); t=m.group(2)
    if a in S: print('\n<%s>:'%S[a])
    ann=''
    for x in re.findall(r'0x([0-9a-f]{4,})',t):
        n=nm(int(x,16))
        if n: ann+=' ; '+n
    print('%x: %s%s'%(a,t,ann))
