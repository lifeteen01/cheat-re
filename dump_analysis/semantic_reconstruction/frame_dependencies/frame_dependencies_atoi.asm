; heuristic leaf/code range 0x3c88ec..0x3c8918 unwind=0x0
3c88ec  33 c0                          xor    eax,eax
3c88ee  45 33 d2                       xor    r10d,r10d
3c88f1  4c 8b c9                       mov    r9,rcx
3c88f4  38 01                          cmp    BYTE PTR [rcx],al
3c88f6  74 1f                          je     0x3c8917
3c88f8  49 63 d2                       movsxd rdx,r10d
3c88fb  8d 04 80                       lea    eax,[rax+rax*4]
3c88fe  41 ff c2                       inc    r10d
3c8901  8d 40 e8                       lea    eax,[rax-0x18]
3c8904  49 63 ca                       movsxd rcx,r10d
3c8907  45 0f be 04 11                 movsx  r8d,BYTE PTR [r9+rdx*1]
3c890c  41 80 3c 09 00                 cmp    BYTE PTR [r9+rcx*1],0x0
3c8911  41 8d 04 40                    lea    eax,[r8+rax*2]
3c8915  75 e1                          jne    0x3c88f8
3c8917  c3                             ret

