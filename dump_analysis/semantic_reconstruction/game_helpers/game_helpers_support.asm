; heuristic leaf/code range 0x2ea7a4..0x2ea7ac unwind=0x0
2ea7a4  48 8b ca                       mov    rcx,rdx
2ea7a7  e9 a8 d5 00 00                 jmp    0x2f7d54

; pdata function 0x2dec90..0x2decb5 unwind=0x3d2038
2dec90  40 53                          rex push rbx
2dec92  48 83 ec 20                    sub    rsp,0x20
2dec96  48 8b d9                       mov    rbx,rcx
2dec99  48 8b ca                       mov    rcx,rdx
2dec9c  e8 03 c7 fe ff                 call   0x2cb3a4
2deca1  48 8b d0                       mov    rdx,rax
2deca4  48 8b cb                       mov    rcx,rbx
2deca7  e8 58 f1 ff ff                 call   0x2dde04
2decac  48 8b c3                       mov    rax,rbx
2decaf  48 83 c4 20                    add    rsp,0x20
2decb3  5b                             pop    rbx
2decb4  c3                             ret

; heuristic leaf/code range 0x2f8540..0x2f8572 unwind=0x0
2f8540  48 89 4c 24 08                 mov    QWORD PTR [rsp+0x8],rcx
2f8545  ba 02 00 00 00                 mov    edx,0x2
2f854a  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
2f854f  8b 01                          mov    eax,DWORD PTR [rcx]
2f8551  c1 c8 18                       ror    eax,0x18
2f8554  35 ff 9b 4d 5d                 xor    eax,0x5d4d9bff
2f8559  2d 2f 48 7d 74                 sub    eax,0x747d482f
2f855e  c1 c8 06                       ror    eax,0x6
2f8561  89 01                          mov    DWORD PTR [rcx],eax
2f8563  48 8d 49 04                    lea    rcx,[rcx+0x4]
2f8567  83 c2 ff                       add    edx,0xffffffff
2f856a  75 e3                          jne    0x2f854f
2f856c  48 8b 44 24 08                 mov    rax,QWORD PTR [rsp+0x8]
2f8571  c3                             ret

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

; heuristic leaf/code range 0x3702f4..0x370305 unwind=0x0
3702f4  48 b8 70 5d 4d 6e 42 4c 58 3e  movabs rax,0x3e584c426e4d5d70
3702fe  48 89 02                       mov    QWORD PTR [rdx],rax
370301  48 8b c2                       mov    rax,rdx
370304  c3                             ret

; heuristic leaf/code range 0x36b380..0x36b3a2 unwind=0x0
36b380  8b 05 a9 d3 f3 ff              mov    eax,DWORD PTR [rip+0xfffffffffff3d3a9]        # 0x2a872f
36b386  0f 10 05 83 d3 f3 ff           movups xmm0,XMMWORD PTR [rip+0xfffffffffff3d383]        # 0x2a8710
36b38d  0f 10 0d 8c d3 f3 ff           movups xmm1,XMMWORD PTR [rip+0xfffffffffff3d38c]        # 0x2a8720
36b394  0f 11 02                       movups XMMWORD PTR [rdx],xmm0
36b397  0f 11 4a 10                    movups XMMWORD PTR [rdx+0x10],xmm1
36b39b  89 42 1f                       mov    DWORD PTR [rdx+0x1f],eax
36b39e  48 8b c2                       mov    rax,rdx
36b3a1  c3                             ret

; heuristic leaf/code range 0x371218..0x37123a unwind=0x0
371218  8b 05 f1 79 f3 ff              mov    eax,DWORD PTR [rip+0xfffffffffff379f1]        # 0x2a8c0f
37121e  0f 10 05 cb 79 f3 ff           movups xmm0,XMMWORD PTR [rip+0xfffffffffff379cb]        # 0x2a8bf0
371225  0f 10 0d d4 79 f3 ff           movups xmm1,XMMWORD PTR [rip+0xfffffffffff379d4]        # 0x2a8c00
37122c  0f 11 02                       movups XMMWORD PTR [rdx],xmm0
37122f  0f 11 4a 10                    movups XMMWORD PTR [rdx+0x10],xmm1
371233  89 42 1f                       mov    DWORD PTR [rdx+0x1f],eax
371236  48 8b c2                       mov    rax,rdx
371239  c3                             ret

; heuristic leaf/code range 0x372674..0x37268d unwind=0x0
372674  0f 10 05 d5 65 f3 ff           movups xmm0,XMMWORD PTR [rip+0xfffffffffff365d5]        # 0x2a8c50
37267b  48 8b c2                       mov    rax,rdx
37267e  0f 10 0d d7 65 f3 ff           movups xmm1,XMMWORD PTR [rip+0xfffffffffff365d7]        # 0x2a8c5c
372685  0f 11 02                       movups XMMWORD PTR [rdx],xmm0
372688  0f 11 4a 0c                    movups XMMWORD PTR [rdx+0xc],xmm1
37268c  c3                             ret

; heuristic leaf/code range 0x372690..0x3726b4 unwind=0x0
372690  0f b7 05 f9 65 f3 ff           movzx  eax,WORD PTR [rip+0xfffffffffff365f9]        # 0x2a8c90
372697  0f 10 05 d2 65 f3 ff           movups xmm0,XMMWORD PTR [rip+0xfffffffffff365d2]        # 0x2a8c70
37269e  0f 10 0d db 65 f3 ff           movups xmm1,XMMWORD PTR [rip+0xfffffffffff365db]        # 0x2a8c80
3726a5  0f 11 02                       movups XMMWORD PTR [rdx],xmm0
3726a8  0f 11 4a 10                    movups XMMWORD PTR [rdx+0x10],xmm1
3726ac  66 89 42 20                    mov    WORD PTR [rdx+0x20],ax
3726b0  48 8b c2                       mov    rax,rdx
3726b3  c3                             ret

