# minimal PE parser (virtual-layout dumps: file offset == RVA)
import struct
def parse(img):
    e=struct.unpack_from('<I',img,0x3c)[0]
    nsec=struct.unpack_from('<H',img,e+6)[0]; osz=struct.unpack_from('<H',img,e+20)[0]
    opt=e+24; base=struct.unpack_from('<Q',img,opt+24)[0]
    ep=struct.unpack_from('<I',img,opt+16)[0]
    dd=[struct.unpack_from('<II',img,opt+112+8*i) for i in range(16)]
    secs=[]
    for i in range(nsec):
        o=opt+osz+40*i
        name=img[o:o+8].rstrip(b'\0').decode('latin1')
        vs,va,rs,ro=struct.unpack_from('<IIII',img,o+8); ch=struct.unpack_from('<I',img,o+36)[0]
        secs.append((name,va,vs,rs,ro,ch))
    return dict(base=base,ep=ep,dd=dd,secs=secs)
def exports(img,dd):
    va,sz=dd[0]
    if not va: return []
    n_f,n_n,af,an,ao=struct.unpack_from('<IIIII',img,va+20)
    out=[]
    for i in range(n_n):
        nm=struct.unpack_from('<I',img,an+4*i)[0]; o=struct.unpack_from('<H',img,ao+2*i)[0]
        f=struct.unpack_from('<I',img,af+4*o)[0]
        out.append((img[nm:img.index(b'\0',nm)].decode(),f))
    return out
