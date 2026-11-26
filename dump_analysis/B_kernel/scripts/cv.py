import struct,sys
for f in sys.argv[1:]:
    d=open(f,'rb').read()
    pe=struct.unpack_from('<I',d,0x3c)[0]; o=pe+24
    nsec=struct.unpack_from('<H',d,pe+6)[0]; osz=struct.unpack_from('<H',d,pe+20)[0]
    secs=[struct.unpack_from('<8sIIII',d,o+osz+40*i) for i in range(nsec)]
    def r2o(rva):
        for n,vs,va,rs,ra in secs:
            if va<=rva<va+max(vs,rs): return rva-va+ra
    dva,dsz=struct.unpack_from('<II',d,o+112+8*6)
    p=r2o(dva)
    for i in range(dsz//28):
        ch,ts,mj,mn,typ,sz,rva,ptr=struct.unpack_from('<IIHHIIII',d,p+28*i)
        if typ==2 and d[ptr:ptr+4]==b'RSDS':
            g=d[ptr+4:ptr+20]; age=struct.unpack_from('<I',d,ptr+20)[0]; name=d[ptr+24:d.index(b'\0',ptr+24)].decode()
            a,b,c=struct.unpack_from('<IHH',g); gs='%08X%04X%04X%s'%(a,b,c,g[8:].hex().upper())
            print(f,name,gs+'%X'%age)
