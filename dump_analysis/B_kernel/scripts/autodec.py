# heuristic: find inline decrypt loops in sd output and decode
import sys,re,struct
img=sys.argv[1]; asm=open(sys.argv[2]).read().splitlines()
d=open(img,'rb').read()
def dec(addr,n,K,wide):
    if wide:
        w=struct.unpack_from('<%dH'%n,d,addr)
        return ''.join(chr((w[i]^(((i>>3)+K+13*i)&0xffff))&0xffff) for i in range(n))
    return ''.join(chr(d[addr+i]^(((i>>3)+K+13*i)&0xff)) for i in range(n))
for i,l in enumerate(asm):
    m=re.search(r'cmp    (r\w+),0x([0-9a-f]+)$',l)
    if not m: continue
    # look back for loop body with imul ...,0xd
    win=asm[max(0,i-14):i]
    if not any('0xd' in x and 'imul' in x for x in win): continue
    wide=any('WORD PTR' in x and 'xor' in x for x in win)
    K=None
    for x in win:
        mm=re.search(r'add    (?:ax|dl|al|cx|cl|dx),0x([0-9a-f]+)$',x) or re.search(r'add    (?:ax|dl|al),(\w+)$',x)
        if mm and re.match('[0-9a-f]+$',mm.group(1)): K=int(mm.group(1),16)
    back=asm[max(0,i-60):i]
    if K is None:
        for x in reversed(back):
            mm=re.search(r'mov    (?:edx|r8d|edi|r9d|esi|ecx|r10d|r11d),0x([0-9a-f]+)$',x) or re.search(r'mov    (?:WORD|BYTE) PTR \[[^\]]+\],0x([0-9a-f]+)$',x)
            if mm: K=int(mm.group(1),16)&(0xffff if wide else 0xff); break
    src=None
    for x in reversed(back):
        mm=re.search(r'# 0x([0-9a-f]+)$',x)
        if mm and ('movaps' in x or 'movups' in x or 'movsd' in x or 'mov    eax' in x or 'movdqa' in x or 'movdqu' in x or 'mov    rax' in x):
            src=int(mm.group(1),16)
            # earliest consecutive
    # take earliest rip load in the block of loads before loop
    loads=[int(re.search(r'# 0x([0-9a-f]+)$',x).group(1),16) for x in back if re.search(r'# 0x([0-9a-f]+)$',x) and ('movaps' in x or 'movups' in x or 'movsd' in x or 'movdqa' in x or 'movdqu' in x or re.search(r'mov    e?r?ax,(?:DWORD|QWORD)',x) or 'movzx' in x)]
    if not loads or K is None: continue
    src=min(l for l in loads if l>=0x6c000) if any(l>=0x6c000 for l in loads) else None
    if src is None: continue
    n=int(m.group(2),16)
    try: s=dec(src,n,K,wide)
    except Exception: continue
    if sum(32<=ord(c)<127 for c in s)>=0.8*len(s.rstrip('\0')):
        print('%s src=%x K=%x n=%x %s %r'%(l.split(':')[0],src,K,n,'W' if wide else 'A',s.rstrip('\0')))
