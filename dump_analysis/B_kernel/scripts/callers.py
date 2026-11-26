import sys,struct
d=open(sys.argv[1],'rb').read()
lo,hi=int(sys.argv[2],16),int(sys.argv[3],16)
ts=[int(x,16) for x in sys.argv[4:]]
for i in range(lo,hi-5):
    if d[i] in (0xe8,0xe9):
        t=i+5+struct.unpack_from('<i',d,i+1)[0]
        if t in ts: print('%x %s -> %x'%(i,'call' if d[i]==0xe8 else 'jmp',t))
