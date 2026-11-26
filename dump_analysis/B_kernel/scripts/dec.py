import sys,struct
d=open(sys.argv[1],'rb').read()
def dec(addr,n,K,wide):
    if wide:
        w=struct.unpack_from('<%dH'%n,d,addr)
        return ''.join(chr((w[i]^(((i>>3)+K+13*i)&0xffff))&0xffff) for i in range(n))
    return ''.join(chr(d[addr+i]^(((i>>3)+K+13*i)&0xff)) for i in range(n))
for a in sys.argv[2:]:
    addr,n,K,w=a.split(',')
    print(a,repr(dec(int(addr,16),int(n,16),int(K,16),w=='w')))
