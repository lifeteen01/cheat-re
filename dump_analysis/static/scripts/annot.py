# annot.py ASM DECSTR STRINGS > annotated asm (adds decoded/plain string comments)
import sys,re
dec={}
for l in open(sys.argv[2]):
    p=l.rstrip('\n').split(' ',4); dec[int(p[0],16)]=p[4] if len(p)>4 else ''
plain={}
for l in open(sys.argv[3]):
    p=l.rstrip('\n').split(' ',2)
    if len(p)==3: plain[int(p[1],16)]=p[0]+':'+p[2][:90]
for l in open(sys.argv[1]):
    m=re.match(r'^\s*([0-9a-f]+):\t[0-9a-f ]+\t(.*)$',l)
    if not m: continue
    a=int(m.group(1),16); t=m.group(2); c=''
    r=re.search(r'# 0x([0-9a-f]+)',t)
    if r and int(r.group(1),16) in plain: c='   ; "%s"'%plain[int(r.group(1),16)]
    if a in dec: c+='   ; DEC "%s"'%dec[a][:140]
    print('%x\t%s%s'%(a,t,c))
