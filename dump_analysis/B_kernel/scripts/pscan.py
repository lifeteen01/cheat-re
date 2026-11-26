import struct,sys,bisect
D=open('/home/john/malware-lab/analysis/run3/dumps/process_8572/1ecadc70000.dll','rb').read()
def pat(mask_rva,byte_rva):
    m=D[mask_rva:D.index(b'\0',mask_rva)].decode()
    b=D[byte_rva:byte_rva+len(m)]
    return m,b
def scan(pef,symf,mask_rva,byte_rva,label):
    m,b=pat(mask_rva,byte_rva)
    d=open(pef,'rb').read(); e=struct.unpack_from('<I',d,0x3c)[0]
    nsec=struct.unpack_from('<H',d,e+6)[0]; osz=struct.unpack_from('<H',d,e+20)[0]
    S={}
    for l in open(symf):
        a,n=l.split(' ',1); S[int(a,16)]=n.strip()
    ks=sorted(S)
    # pdata function starts
    pa,ps=struct.unpack_from('<II',d,e+24+112+8*3)
    secs=[struct.unpack_from('<8sIIII',d,e+24+osz+40*i) for i in range(nsec)]
    def r2o(r):
        for n,vs,va,rs,ra in secs:
            if va<=r<va+rs: return r-va+ra
    po=r2o(pa); fs=sorted(struct.unpack_from('<II',d,po+12*i) for i in range(ps//12))
    st=[f[0] for f in fs]
    pretty=' '.join(('%02X'%b[i]) if m[i]=='x' else '??' for i in range(len(m)))
    hits=[]
    for n,vs,va,rs,ra in secs:
        if n.rstrip(b'\0')!=b'PAGE': continue
        blob=d[ra:ra+min(vs,rs)]
        for i in range(len(blob)-len(m)):
            if all(m[j]!='x' or blob[i+j]==b[j] for j in range(len(m))):
                rva=va+i
                k=bisect.bisect_right(st,rva)-1; fstart=fs[k][0] if k>=0 else None
                # nearest symbol <= fstart
                j=bisect.bisect_right(ks,fstart)-1
                nm=S[ks[j]]+('+%x'%(fstart-ks[j]) if ks[j]!=fstart else '') if j>=0 else '?'
                hits.append((rva,fstart,nm))
    print('%-28s mask@%x bytes@%x  %s'%(label,mask_rva,byte_rva,pretty))
    for h in hits: print('    hit RVA %x in func %x (%s)'%h)
    if not hits: print('    NO HIT in PAGE')
W='/home/john/malware-lab/analysis/winbins/'
scan(W+'System32_ntoskrnl.exe','s/nt.syms',0x109960,0x109990,'nt P1 PiDDBLock')
scan(W+'System32_ntoskrnl.exe','s/nt.syms',0x1099c0,0x1099c8,'nt P2 PiDDBCacheTable')
scan(W+'System32_ntoskrnl.exe','s/nt.syms',0x1099d0,0x1099f0,'nt P3 PiDDBLock alt')
scan(W+'System32_ntoskrnl.exe','s/nt.syms',0x109a10,0x109a40,'nt P4 PiDDBLock alt2')
scan(W+'System32_ntoskrnl.exe','s/nt.syms',0x109a70,0x109a80,'nt P5 PiDDBCacheTable alt')
scan(W+'drivers_WdFilter.sys','s/wdf.syms',0x109af0,0x109b00,'WdF A RuntimeDriversList')
scan(W+'drivers_WdFilter.sys','s/wdf.syms',0x109b10,0x109b20,'WdF B RuntimeDriversCount')
scan(W+'drivers_WdFilter.sys','s/wdf.syms',0x109b30,0x109b50,'WdF C MpFreeDriverInfoEx ref')
scan(W+'drivers_WdFilter.sys','s/wdf.syms',0x109b70,0x109b90,'WdF D MpFreeDriverInfoEx ref alt')
print('ci.dll pattern:',pat(0x109aa0,0x109ac0), 'second:',pat(0x109ad4,0x109ad8))
