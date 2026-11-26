; explicit leaf/assembly range 0x315bd0..0x315c34 unwind=0x0
315bd0  4c 8b d1                       mov    r10,rcx
315bd3  4c 8b c9                       mov    r9,rcx
315bd6  49 81 e2 00 e0 ff ff           and    r10,0xffffffffffffe000
315bdd  41 80 7a 20 04                 cmp    BYTE PTR [r10+0x20],0x4
315be2  73 4d                          jae    0x315c31
315be4  41 81 e1 ff 1f 00 00           and    r9d,0x1fff
315beb  49 83 e9 28                    sub    r9,0x28
315bef  49 c1 e9 03                    shr    r9,0x3
315bf3  45 3b 4a 1c                    cmp    r9d,DWORD PTR [r10+0x1c]
315bf7  73 38                          jae    0x315c31
315bf9  49 8b 42 10                    mov    rax,QWORD PTR [r10+0x10]
315bfd  41 8b d1                       mov    edx,r9d
315c00  c1 ea 05                       shr    edx,0x5
315c03  41 8b c9                       mov    ecx,r9d
315c06  c1 e2 02                       shl    edx,0x2
315c09  44 8b 04 02                    mov    r8d,DWORD PTR [rdx+rax*1]
315c0d  41 d3 e8                       shr    r8d,cl
315c10  41 f6 c0 01                    test   r8b,0x1
315c14  74 1b                          je     0x315c31
315c16  41 80 7a 20 01                 cmp    BYTE PTR [r10+0x20],0x1
315c1b  42 8d 04 cd 28 00 00 00        lea    eax,[r9*8+0x28]
315c23  76 05                          jbe    0x315c2a
315c25  4a 8b 04 10                    mov    rax,QWORD PTR [rax+r10*1]
315c29  c3                             ret
315c2a  42 8b 04 10                    mov    eax,DWORD PTR [rax+r10*1]
315c2e  f7 d0                          not    eax
315c30  c3                             ret
315c31  33 c0                          xor    eax,eax
315c33  c3                             ret
