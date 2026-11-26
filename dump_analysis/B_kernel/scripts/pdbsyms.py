# minimal MSF7 PDB public-symbol dumper: prints RVA name (uses PE section table for seg->rva)
import struct,sys
pdb,pef=sys.argv[1],sys.argv[2]
d=open(pdb,'rb').read()
bs,fbm,nb,ndb,_,bma=struct.unpack_from('<IIIIII',d,32)
nblk=(ndb+bs-1)//bs
dirblocks=struct.unpack_from('<%dI'%nblk,d,bma*bs)
dr=b''.join(d[b*bs:(b+1)*bs] for b in dirblocks)[:ndb]
ns=struct.unpack_from('<I',dr,0)[0]
sizes=struct.unpack_from('<%dI'%ns,dr,4)
p=4+4*ns; streams=[]
for s in sizes:
    if s==0xffffffff: s=0
    n=(s+bs-1)//bs
    bl=struct.unpack_from('<%dI'%n,dr,p); p+=4*n
    streams.append(b''.join(d[b*bs:(b+1)*bs] for b in bl)[:s])
dbi=streams[3]
symrec=struct.unpack_from('<H',dbi,20)[0]
sr=streams[symrec]
pe=open(pef,'rb').read(); e=struct.unpack_from('<I',pe,0x3c)[0]
nsec=struct.unpack_from('<H',pe,e+6)[0]; osz=struct.unpack_from('<H',pe,e+20)[0]
secva=[struct.unpack_from('<I',pe,e+24+osz+40*i+12)[0] for i in range(nsec)]
i=0
while i+4<=len(sr):
    ln,kind=struct.unpack_from('<HH',sr,i)
    if kind==0x110e:
        fl,off,seg=struct.unpack_from('<IIH',sr,i+4)
        name=sr[i+14:sr.index(b'\0',i+14)].decode('latin1')
        if 1<=seg<=nsec: print('%08x %s'%(secva[seg-1]+off,name))
    i+=ln+2
