# stdlib minidump reader: modules + memory64 ranges
import struct,sys
class MD:
    def __init__(s,p):
        s.f=open(p,'rb'); h=s.f.read(32)
        sig,ver,n,rva=struct.unpack_from('<IIII',h,0)
        s.f.seek(rva); dirs=[struct.unpack('<III',s.f.read(12)) for _ in range(n)]
        s.mods=[];s.ranges=[]
        for t,sz,r in dirs:
            if t==4:
                s.f.seek(r); c=struct.unpack('<I',s.f.read(4))[0]
                for i in range(c):
                    s.f.seek(r+4+i*108); b=s.f.read(108)
                    base,size=struct.unpack_from('<QI',b,0); nr=struct.unpack_from('<I',b,20)[0]
                    s.f.seek(nr); l=struct.unpack('<I',s.f.read(4))[0]; nm=s.f.read(l).decode('utf-16le')
                    s.mods.append((base,size,nm))
            if t==9:
                s.f.seek(r); c,boff=struct.unpack('<QQ',s.f.read(16))
                off=boff
                for i in range(c):
                    a,l=struct.unpack('<QQ',s.f.read(16)); s.ranges.append((a,l,off)); off+=l
    def read(s,a,n):
        for b,l,o in s.ranges:
            if b<=a<b+l:
                s.f.seek(o+a-b); return s.f.read(min(n,b+l-a))
        return None
    def region(s,a):
        for b,l,o in s.ranges:
            if b<=a<b+l: return b,l
    def mod(s,a):
        for b,sz,nm in s.mods:
            if b<=a<b+sz: return nm,a-b
