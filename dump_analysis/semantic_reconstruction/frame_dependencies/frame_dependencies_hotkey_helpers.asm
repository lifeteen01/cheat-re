; pdata function 0x35d350..0x35d40c unwind=0x3d24b8
35d350  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
35d355  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
35d35a  57                             push   rdi
35d35b  48 83 ec 50                    sub    rsp,0x50
35d35f  48 8b d9                       mov    rbx,rcx
35d362  8b f2                          mov    esi,edx
35d364  48 8d 0d f5 ec 09 00           lea    rcx,[rip+0x9ecf5]        # 0x3fc060
35d36b  33 ff                          xor    edi,edi
35d36d  e8 4a 7c 00 00                 call   0x364fbc
35d372  48 85 c0                       test   rax,rax
35d375  74 47                          je     0x35d3be
35d377  48 8d 0d e2 ec 09 00           lea    rcx,[rip+0x9ece2]        # 0x3fc060
35d37e  e8 55 12 f7 ff                 call   0x2ce5d8
35d383  48 63 cf                       movsxd rcx,edi
35d386  48 8d 14 89                    lea    rdx,[rcx+rcx*4]
35d38a  48 8d 14 d0                    lea    rdx,[rax+rdx*8]
35d38e  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
35d393  e8 60 92 fd ff                 call   0x3365f8
35d398  39 74 24 40                    cmp    DWORD PTR [rsp+0x40],esi
35d39c  74 55                          je     0x35d3f3
35d39e  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
35d3a3  e8 5c f1 f6 ff                 call   0x2cc504
35d3a8  48 8d 0d b1 ec 09 00           lea    rcx,[rip+0x9ecb1]        # 0x3fc060
35d3af  ff c7                          inc    edi
35d3b1  e8 06 7c 00 00                 call   0x364fbc
35d3b6  48 63 cf                       movsxd rcx,edi
35d3b9  48 3b c8                       cmp    rcx,rax
35d3bc  72 b9                          jb     0x35d377
35d3be  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
35d3c3  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
35d3c8  e8 13 4f ff ff                 call   0x3522e0 ; STRING getter=0x3522e0 None
35d3cd  48 8b c8                       mov    rcx,rax
35d3d0  e8 f7 08 f7 ff                 call   0x2cdccc
35d3d5  48 8b d0                       mov    rdx,rax
35d3d8  48 8b cb                       mov    rcx,rbx
35d3db  e8 ec ee f6 ff                 call   0x2cc2cc
35d3e0  48 8b 74 24 68                 mov    rsi,QWORD PTR [rsp+0x68]
35d3e5  48 8b c3                       mov    rax,rbx
35d3e8  48 8b 5c 24 60                 mov    rbx,QWORD PTR [rsp+0x60]
35d3ed  48 83 c4 50                    add    rsp,0x50
35d3f1  5f                             pop    rdi
35d3f2  c3                             ret
35d3f3  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
35d3f8  48 8b cb                       mov    rcx,rbx
35d3fb  e8 94 6d f7 ff                 call   0x2d4194
35d400  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
35d405  e8 fa f0 f6 ff                 call   0x2cc504
35d40a  eb d4                          jmp    0x35d3e0

; pdata function 0x35d40c..0x35d4c8 unwind=0x3d24b8
35d40c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
35d411  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
35d416  57                             push   rdi
35d417  48 83 ec 50                    sub    rsp,0x50
35d41b  48 8b d9                       mov    rbx,rcx
35d41e  8b f2                          mov    esi,edx
35d420  48 8d 0d 49 ec 09 00           lea    rcx,[rip+0x9ec49]        # 0x3fc070
35d427  33 ff                          xor    edi,edi
35d429  e8 8e 7b 00 00                 call   0x364fbc
35d42e  48 85 c0                       test   rax,rax
35d431  74 47                          je     0x35d47a
35d433  48 8d 0d 36 ec 09 00           lea    rcx,[rip+0x9ec36]        # 0x3fc070
35d43a  e8 99 11 f7 ff                 call   0x2ce5d8
35d43f  48 63 cf                       movsxd rcx,edi
35d442  48 8d 14 89                    lea    rdx,[rcx+rcx*4]
35d446  48 8d 14 d0                    lea    rdx,[rax+rdx*8]
35d44a  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
35d44f  e8 a4 91 fd ff                 call   0x3365f8
35d454  39 74 24 40                    cmp    DWORD PTR [rsp+0x40],esi
35d458  74 55                          je     0x35d4af
35d45a  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
35d45f  e8 a0 f0 f6 ff                 call   0x2cc504
35d464  48 8d 0d 05 ec 09 00           lea    rcx,[rip+0x9ec05]        # 0x3fc070
35d46b  ff c7                          inc    edi
35d46d  e8 4a 7b 00 00                 call   0x364fbc
35d472  48 63 cf                       movsxd rcx,edi
35d475  48 3b c8                       cmp    rcx,rax
35d478  72 b9                          jb     0x35d433
35d47a  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
35d47f  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
35d484  e8 6f 4e ff ff                 call   0x3522f8 ; STRING getter=0x3522f8 None
35d489  48 8b c8                       mov    rcx,rax
35d48c  e8 3b 08 f7 ff                 call   0x2cdccc
35d491  48 8b d0                       mov    rdx,rax
35d494  48 8b cb                       mov    rcx,rbx
35d497  e8 30 ee f6 ff                 call   0x2cc2cc
35d49c  48 8b 74 24 68                 mov    rsi,QWORD PTR [rsp+0x68]
35d4a1  48 8b c3                       mov    rax,rbx
35d4a4  48 8b 5c 24 60                 mov    rbx,QWORD PTR [rsp+0x60]
35d4a9  48 83 c4 50                    add    rsp,0x50
35d4ad  5f                             pop    rdi
35d4ae  c3                             ret
35d4af  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
35d4b4  48 8b cb                       mov    rcx,rbx
35d4b7  e8 d8 6c f7 ff                 call   0x2d4194
35d4bc  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
35d4c1  e8 3e f0 f6 ff                 call   0x2cc504
35d4c6  eb d4                          jmp    0x35d49c

; pdata function 0x35bc70..0x35c25a unwind=0x3d3b18
35bc70  84 d2                          test   dl,dl
35bc72  0f 84 e1 05 00 00              je     0x35c259
35bc78  48 8b c4                       mov    rax,rsp
35bc7b  55                             push   rbp
35bc7c  53                             push   rbx
35bc7d  56                             push   rsi
35bc7e  57                             push   rdi
35bc7f  41 54                          push   r12
35bc81  41 55                          push   r13
35bc83  41 56                          push   r14
35bc85  41 57                          push   r15
35bc87  48 8d 68 a1                    lea    rbp,[rax-0x5f]
35bc8b  48 81 ec c8 00 00 00           sub    rsp,0xc8
35bc92  0f 29 70 a8                    movaps XMMWORD PTR [rax-0x58],xmm6
35bc96  bf ff 00 00 00                 mov    edi,0xff
35bc9b  0f 29 78 98                    movaps XMMWORD PTR [rax-0x68],xmm7
35bc9f  45 33 ed                       xor    r13d,r13d
35bca2  44 0f 29 40 88                 movaps XMMWORD PTR [rax-0x78],xmm8
35bca7  4c 8b e1                       mov    r12,rcx
35bcaa  41 8a c0                       mov    al,r8b
35bcad  89 7c 24 20                    mov    DWORD PTR [rsp+0x20],edi
35bcb1  f6 d8                          neg    al
35bcb3  48 8d 4d cf                    lea    rcx,[rbp-0x31]
35bcb7  1b d2                          sbb    edx,edx
35bcb9  f7 d2                          not    edx
35bcbb  23 d7                          and    edx,edi
35bcbd  41 f6 d8                       neg    r8b
35bcc0  45 1b c0                       sbb    r8d,r8d
35bcc3  45 33 c9                       xor    r9d,r9d
35bcc6  44 23 c7                       and    r8d,edi
35bcc9  e8 4a f6 f7 ff                 call   0x2db318
35bcce  e8 2d 15 00 00                 call   0x35d200
35bcd3  4c 8b f8                       mov    r15,rax
35bcd6  48 85 c0                       test   rax,rax
35bcd9  0f 84 54 05 00 00              je     0x35c233
35bcdf  48 8d 4d a7                    lea    rcx,[rbp-0x59]
35bce3  e8 84 67 03 00                 call   0x39246c
35bce8  e8 2f 16 00 00                 call   0x35d31c
35bced  48 8d 0d 8c 10 0a 00           lea    rcx,[rip+0xa108c]        # 0x3fcd80
35bcf4  4c 8b f0                       mov    r14,rax
35bcf7  e8 e0 3a f9 ff                 call   0x2ef7dc
35bcfc  48 8d 1d 0d 12 0a 00           lea    rbx,[rip+0xa120d]        # 0x3fcf10
35bd03  85 c0                          test   eax,eax
35bd05  75 24                          jne    0x35bd2b
35bd07  48 8b cb                       mov    rcx,rbx
35bd0a  e8 cd 3a f9 ff                 call   0x2ef7dc
35bd0f  8b c8                          mov    ecx,eax
35bd11  41 8d 55 0d                    lea    edx,[r13+0xd]
35bd15  e8 06 15 00 00                 call   0x35d220
35bd1a  f3 44 0f 10 05 8d 74 f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff3748d]        # 0x2931b0 ; f32=13
35bd23  4c 8b f0                       mov    r14,rax
35bd26  e9 cf 00 00 00                 jmp    0x35bdfa
35bd2b  83 f8 01                       cmp    eax,0x1
35bd2e  75 25                          jne    0x35bd55
35bd30  48 8b cb                       mov    rcx,rbx
35bd33  e8 a4 3a f9 ff                 call   0x2ef7dc
35bd38  8b c8                          mov    ecx,eax
35bd3a  ba 10 00 00 00                 mov    edx,0x10
35bd3f  e8 dc 14 00 00                 call   0x35d220
35bd44  f3 44 0f 10 05 6f 74 f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff3746f]        # 0x2931bc ; f32=16
35bd4d  4c 8b f0                       mov    r14,rax
35bd50  e9 a5 00 00 00                 jmp    0x35bdfa
35bd55  83 f8 02                       cmp    eax,0x2
35bd58  75 22                          jne    0x35bd7c
35bd5a  48 8b cb                       mov    rcx,rbx
35bd5d  e8 7a 3a f9 ff                 call   0x2ef7dc
35bd62  8b c8                          mov    ecx,eax
35bd64  ba 12 00 00 00                 mov    edx,0x12
35bd69  e8 b2 14 00 00                 call   0x35d220
35bd6e  f3 44 0f 10 05 49 74 f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff37449]        # 0x2931c0 ; f32=18
35bd77  4c 8b f0                       mov    r14,rax
35bd7a  eb 7e                          jmp    0x35bdfa
35bd7c  83 f8 03                       cmp    eax,0x3
35bd7f  75 22                          jne    0x35bda3
35bd81  48 8b cb                       mov    rcx,rbx
35bd84  e8 53 3a f9 ff                 call   0x2ef7dc
35bd89  8b c8                          mov    ecx,eax
35bd8b  ba 14 00 00 00                 mov    edx,0x14
35bd90  e8 8b 14 00 00                 call   0x35d220
35bd95  f3 44 0f 10 05 82 1d f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff31d82]        # 0x28db20 ; f32=20
35bd9e  4c 8b f0                       mov    r14,rax
35bda1  eb 57                          jmp    0x35bdfa
35bda3  83 f8 04                       cmp    eax,0x4
35bda6  75 22                          jne    0x35bdca
35bda8  48 8b cb                       mov    rcx,rbx
35bdab  e8 2c 3a f9 ff                 call   0x2ef7dc
35bdb0  8b c8                          mov    ecx,eax
35bdb2  ba 16 00 00 00                 mov    edx,0x16
35bdb7  e8 64 14 00 00                 call   0x35d220
35bdbc  f3 44 0f 10 05 03 74 f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff37403]        # 0x2931c8 ; f32=22
35bdc5  4c 8b f0                       mov    r14,rax
35bdc8  eb 30                          jmp    0x35bdfa
35bdca  83 f8 05                       cmp    eax,0x5
35bdcd  75 22                          jne    0x35bdf1
35bdcf  48 8b cb                       mov    rcx,rbx
35bdd2  e8 05 3a f9 ff                 call   0x2ef7dc
35bdd7  8b c8                          mov    ecx,eax
35bdd9  ba 18 00 00 00                 mov    edx,0x18
35bdde  e8 3d 14 00 00                 call   0x35d220
35bde3  f3 44 0f 10 05 e4 73 f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff373e4]        # 0x2931d0 ; f32=24
35bdec  4c 8b f0                       mov    r14,rax
35bdef  eb 09                          jmp    0x35bdfa
35bdf1  4d 8b 36                       mov    r14,QWORD PTR [r14]
35bdf4  f3 45 0f 10 46 14              movss  xmm8,DWORD PTR [r14+0x14]
35bdfa  48 8b cb                       mov    rcx,rbx
35bdfd  e8 da 39 f9 ff                 call   0x2ef7dc
35be02  83 f8 02                       cmp    eax,0x2
35be05  75 0b                          jne    0x35be12
35be07  f3 44 0f 10 05 94 73 f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff37394]        # 0x2931a4 ; f32=11
35be10  eb 0d                          jmp    0x35be1f
35be12  85 c0                          test   eax,eax
35be14  75 09                          jne    0x35be1f
35be16  f3 44 0f 10 05 fd 1c f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff31cfd]        # 0x28db1c ; f32=10
35be1f  49 8b cc                       mov    rcx,r12
35be22  e8 c5 19 f7 ff                 call   0x2cd7ec
35be27  f3 0f 10 1d 25 1d f3 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff31d25]        # 0x28db54
35be2f  48 8d 55 af                    lea    rdx,[rbp-0x51]
35be33  4c 89 6c 24 38                 mov    QWORD PTR [rsp+0x38],r13
35be38  0f 57 f6                       xorps  xmm6,xmm6
35be3b  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
35be40  41 0f 28 d0                    movaps xmm2,xmm8
35be44  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
35be49  49 8b ce                       mov    rcx,r14
35be4c  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
35be52  e8 1d 7a 04 00                 call   0x3a3874
35be57  f3 0f 10 4d a7                 movss  xmm1,DWORD PTR [rbp-0x59]
35be5c  48 8d 4d 7f                    lea    rcx,[rbp+0x7f]
35be60  41 0f 28 d0                    movaps xmm2,xmm8
35be64  f3 0f 5c 55 b3                 subss  xmm2,DWORD PTR [rbp-0x4d]
35be69  f3 0f 59 15 df 13 f3 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff313df]        # 0x28d250 ; f32=0.5
35be71  f3 0f 58 55 ab                 addss  xmm2,DWORD PTR [rbp-0x55]
35be76  e8 c5 04 f7 ff                 call   0x2cc340
35be7b  45 33 c9                       xor    r9d,r9d
35be7e  89 7c 24 20                    mov    DWORD PTR [rsp+0x20],edi
35be82  45 33 c0                       xor    r8d,r8d
35be85  48 8d 4d bf                    lea    rcx,[rbp-0x41]
35be89  33 d2                          xor    edx,edx
35be8b  e8 88 f4 f7 ff                 call   0x2db318
35be90  49 8b b7 98 02 00 00           mov    rsi,QWORD PTR [r15+0x298]
35be97  49 8b cc                       mov    rcx,r12
35be9a  e8 4d 19 f7 ff                 call   0x2cd7ec
35be9f  48 8d 4d bf                    lea    rcx,[rbp-0x41]
35bea3  48 8b f8                       mov    rdi,rax
35bea6  e8 61 39 f9 ff                 call   0x2ef80c
35beab  f3 0f 10 4d 7f                 movss  xmm1,DWORD PTR [rbp+0x7f]
35beb0  48 8d 4d b7                    lea    rcx,[rbp-0x49]
35beb4  f3 0f 10 3d 98 13 f3 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff31398]        # 0x28d254 ; f32=1
35bebc  8b d8                          mov    ebx,eax
35bebe  f3 0f 10 95 83 00 00 00        movss  xmm2,DWORD PTR [rbp+0x83]
35bec6  f3 0f 5c cf                    subss  xmm1,xmm7
35beca  e8 71 04 f7 ff                 call   0x2cc340
35becf  4c 89 6c 24 40                 mov    QWORD PTR [rsp+0x40],r13
35bed4  4c 8b c8                       mov    r9,rax
35bed7  f3 0f 11 74 24 38              movss  DWORD PTR [rsp+0x38],xmm6
35bedd  41 0f 28 d0                    movaps xmm2,xmm8
35bee1  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
35bee6  49 8b d6                       mov    rdx,r14
35bee9  48 89 7c 24 28                 mov    QWORD PTR [rsp+0x28],rdi
35beee  48 8b ce                       mov    rcx,rsi
35bef1  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
35bef5  e8 fe 72 04 00                 call   0x3a31f8
35befa  49 8b b7 98 02 00 00           mov    rsi,QWORD PTR [r15+0x298]
35bf01  49 8b cc                       mov    rcx,r12
35bf04  e8 e3 18 f7 ff                 call   0x2cd7ec
35bf09  48 8d 4d bf                    lea    rcx,[rbp-0x41]
35bf0d  48 8b f8                       mov    rdi,rax
35bf10  e8 f7 38 f9 ff                 call   0x2ef80c
35bf15  f3 0f 10 4d 7f                 movss  xmm1,DWORD PTR [rbp+0x7f]
35bf1a  48 8d 4d b7                    lea    rcx,[rbp-0x49]
35bf1e  f3 0f 10 95 83 00 00 00        movss  xmm2,DWORD PTR [rbp+0x83]
35bf26  f3 0f 58 cf                    addss  xmm1,xmm7
35bf2a  8b d8                          mov    ebx,eax
35bf2c  e8 0f 04 f7 ff                 call   0x2cc340
35bf31  4c 89 6c 24 40                 mov    QWORD PTR [rsp+0x40],r13
35bf36  4c 8b c8                       mov    r9,rax
35bf39  f3 0f 11 74 24 38              movss  DWORD PTR [rsp+0x38],xmm6
35bf3f  41 0f 28 d0                    movaps xmm2,xmm8
35bf43  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
35bf48  49 8b d6                       mov    rdx,r14
35bf4b  48 89 7c 24 28                 mov    QWORD PTR [rsp+0x28],rdi
35bf50  48 8b ce                       mov    rcx,rsi
35bf53  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
35bf57  e8 9c 72 04 00                 call   0x3a31f8
35bf5c  49 8b b7 98 02 00 00           mov    rsi,QWORD PTR [r15+0x298]
35bf63  49 8b cc                       mov    rcx,r12
35bf66  e8 81 18 f7 ff                 call   0x2cd7ec
35bf6b  48 8d 4d bf                    lea    rcx,[rbp-0x41]
35bf6f  48 8b f8                       mov    rdi,rax
35bf72  e8 95 38 f9 ff                 call   0x2ef80c
35bf77  f3 0f 10 95 83 00 00 00        movss  xmm2,DWORD PTR [rbp+0x83]
35bf7f  48 8d 4d b7                    lea    rcx,[rbp-0x49]
35bf83  f3 0f 10 4d 7f                 movss  xmm1,DWORD PTR [rbp+0x7f]
35bf88  f3 0f 5c d7                    subss  xmm2,xmm7
35bf8c  8b d8                          mov    ebx,eax
35bf8e  e8 ad 03 f7 ff                 call   0x2cc340
35bf93  4c 89 6c 24 40                 mov    QWORD PTR [rsp+0x40],r13
35bf98  4c 8b c8                       mov    r9,rax
35bf9b  f3 0f 11 74 24 38              movss  DWORD PTR [rsp+0x38],xmm6
35bfa1  41 0f 28 d0                    movaps xmm2,xmm8
35bfa5  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
35bfaa  49 8b d6                       mov    rdx,r14
35bfad  48 89 7c 24 28                 mov    QWORD PTR [rsp+0x28],rdi
35bfb2  48 8b ce                       mov    rcx,rsi
35bfb5  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
35bfb9  e8 3a 72 04 00                 call   0x3a31f8
35bfbe  49 8b b7 98 02 00 00           mov    rsi,QWORD PTR [r15+0x298]
35bfc5  49 8b cc                       mov    rcx,r12
35bfc8  e8 1f 18 f7 ff                 call   0x2cd7ec
35bfcd  48 8d 4d bf                    lea    rcx,[rbp-0x41]
35bfd1  48 8b f8                       mov    rdi,rax
35bfd4  e8 33 38 f9 ff                 call   0x2ef80c
35bfd9  f3 0f 10 95 83 00 00 00        movss  xmm2,DWORD PTR [rbp+0x83]
35bfe1  48 8d 4d b7                    lea    rcx,[rbp-0x49]
35bfe5  f3 0f 10 4d 7f                 movss  xmm1,DWORD PTR [rbp+0x7f]
35bfea  f3 0f 58 d7                    addss  xmm2,xmm7
35bfee  8b d8                          mov    ebx,eax
35bff0  e8 4b 03 f7 ff                 call   0x2cc340
35bff5  4c 89 6c 24 40                 mov    QWORD PTR [rsp+0x40],r13
35bffa  4c 8b c8                       mov    r9,rax
35bffd  f3 0f 11 74 24 38              movss  DWORD PTR [rsp+0x38],xmm6
35c003  41 0f 28 d0                    movaps xmm2,xmm8
35c007  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
35c00c  49 8b d6                       mov    rdx,r14
35c00f  48 89 7c 24 28                 mov    QWORD PTR [rsp+0x28],rdi
35c014  48 8b ce                       mov    rcx,rsi
35c017  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
35c01b  e8 d8 71 04 00                 call   0x3a31f8
35c020  49 8b b7 98 02 00 00           mov    rsi,QWORD PTR [r15+0x298]
35c027  49 8b cc                       mov    rcx,r12
35c02a  e8 bd 17 f7 ff                 call   0x2cd7ec
35c02f  48 8d 4d bf                    lea    rcx,[rbp-0x41]
35c033  48 8b f8                       mov    rdi,rax
35c036  e8 d1 37 f9 ff                 call   0x2ef80c
35c03b  f3 0f 10 95 83 00 00 00        movss  xmm2,DWORD PTR [rbp+0x83]
35c043  48 8d 4d b7                    lea    rcx,[rbp-0x49]
35c047  f3 0f 10 4d 7f                 movss  xmm1,DWORD PTR [rbp+0x7f]
35c04c  f3 0f 5c d7                    subss  xmm2,xmm7
35c050  f3 0f 5c cf                    subss  xmm1,xmm7
35c054  8b d8                          mov    ebx,eax
35c056  e8 e5 02 f7 ff                 call   0x2cc340
35c05b  4c 89 6c 24 40                 mov    QWORD PTR [rsp+0x40],r13
35c060  4c 8b c8                       mov    r9,rax
35c063  f3 0f 11 74 24 38              movss  DWORD PTR [rsp+0x38],xmm6
35c069  41 0f 28 d0                    movaps xmm2,xmm8
35c06d  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
35c072  49 8b d6                       mov    rdx,r14
35c075  48 89 7c 24 28                 mov    QWORD PTR [rsp+0x28],rdi
35c07a  48 8b ce                       mov    rcx,rsi
35c07d  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
35c081  e8 72 71 04 00                 call   0x3a31f8
35c086  49 8b b7 98 02 00 00           mov    rsi,QWORD PTR [r15+0x298]
35c08d  49 8b cc                       mov    rcx,r12
35c090  e8 57 17 f7 ff                 call   0x2cd7ec
35c095  48 8d 4d bf                    lea    rcx,[rbp-0x41]
35c099  48 8b f8                       mov    rdi,rax
35c09c  e8 6b 37 f9 ff                 call   0x2ef80c
35c0a1  f3 0f 10 95 83 00 00 00        movss  xmm2,DWORD PTR [rbp+0x83]
35c0a9  48 8d 4d b7                    lea    rcx,[rbp-0x49]
35c0ad  f3 0f 10 4d 7f                 movss  xmm1,DWORD PTR [rbp+0x7f]
35c0b2  f3 0f 5c d7                    subss  xmm2,xmm7
35c0b6  f3 0f 58 cf                    addss  xmm1,xmm7
35c0ba  8b d8                          mov    ebx,eax
35c0bc  e8 7f 02 f7 ff                 call   0x2cc340
35c0c1  4c 89 6c 24 40                 mov    QWORD PTR [rsp+0x40],r13
35c0c6  4c 8b c8                       mov    r9,rax
35c0c9  f3 0f 11 74 24 38              movss  DWORD PTR [rsp+0x38],xmm6
35c0cf  41 0f 28 d0                    movaps xmm2,xmm8
35c0d3  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
35c0d8  49 8b d6                       mov    rdx,r14
35c0db  48 89 7c 24 28                 mov    QWORD PTR [rsp+0x28],rdi
35c0e0  48 8b ce                       mov    rcx,rsi
35c0e3  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
35c0e7  e8 0c 71 04 00                 call   0x3a31f8
35c0ec  49 8b b7 98 02 00 00           mov    rsi,QWORD PTR [r15+0x298]
35c0f3  49 8b cc                       mov    rcx,r12
35c0f6  e8 f1 16 f7 ff                 call   0x2cd7ec
35c0fb  48 8d 4d bf                    lea    rcx,[rbp-0x41]
35c0ff  48 8b f8                       mov    rdi,rax
35c102  e8 05 37 f9 ff                 call   0x2ef80c
35c107  f3 0f 10 95 83 00 00 00        movss  xmm2,DWORD PTR [rbp+0x83]
35c10f  48 8d 4d b7                    lea    rcx,[rbp-0x49]
35c113  f3 0f 10 4d 7f                 movss  xmm1,DWORD PTR [rbp+0x7f]
35c118  f3 0f 58 d7                    addss  xmm2,xmm7
35c11c  f3 0f 5c cf                    subss  xmm1,xmm7
35c120  8b d8                          mov    ebx,eax
35c122  e8 19 02 f7 ff                 call   0x2cc340
35c127  4c 89 6c 24 40                 mov    QWORD PTR [rsp+0x40],r13
35c12c  4c 8b c8                       mov    r9,rax
35c12f  f3 0f 11 74 24 38              movss  DWORD PTR [rsp+0x38],xmm6
35c135  41 0f 28 d0                    movaps xmm2,xmm8
35c139  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
35c13e  49 8b d6                       mov    rdx,r14
35c141  48 89 7c 24 28                 mov    QWORD PTR [rsp+0x28],rdi
35c146  48 8b ce                       mov    rcx,rsi
35c149  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
35c14d  e8 a6 70 04 00                 call   0x3a31f8
35c152  49 8b b7 98 02 00 00           mov    rsi,QWORD PTR [r15+0x298]
35c159  49 8b cc                       mov    rcx,r12
35c15c  e8 8b 16 f7 ff                 call   0x2cd7ec
35c161  48 8d 4d bf                    lea    rcx,[rbp-0x41]
35c165  48 8b f8                       mov    rdi,rax
35c168  e8 9f 36 f9 ff                 call   0x2ef80c
35c16d  f3 0f 10 95 83 00 00 00        movss  xmm2,DWORD PTR [rbp+0x83]
35c175  48 8d 4d b7                    lea    rcx,[rbp-0x49]
35c179  f3 0f 10 4d 7f                 movss  xmm1,DWORD PTR [rbp+0x7f]
35c17e  f3 0f 58 d7                    addss  xmm2,xmm7
35c182  f3 0f 58 cf                    addss  xmm1,xmm7
35c186  8b d8                          mov    ebx,eax
35c188  e8 b3 01 f7 ff                 call   0x2cc340
35c18d  4c 89 6c 24 40                 mov    QWORD PTR [rsp+0x40],r13
35c192  4c 8b c8                       mov    r9,rax
35c195  f3 0f 11 74 24 38              movss  DWORD PTR [rsp+0x38],xmm6
35c19b  41 0f 28 d0                    movaps xmm2,xmm8
35c19f  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
35c1a4  49 8b d6                       mov    rdx,r14
35c1a7  48 89 7c 24 28                 mov    QWORD PTR [rsp+0x28],rdi
35c1ac  48 8b ce                       mov    rcx,rsi
35c1af  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
35c1b3  e8 40 70 04 00                 call   0x3a31f8
35c1b8  49 8b bf 98 02 00 00           mov    rdi,QWORD PTR [r15+0x298]
35c1bf  49 8b cc                       mov    rcx,r12
35c1c2  e8 25 16 f7 ff                 call   0x2cd7ec
35c1c7  48 8d 4d cf                    lea    rcx,[rbp-0x31]
35c1cb  48 8b d8                       mov    rbx,rax
35c1ce  e8 39 36 f9 ff                 call   0x2ef80c
35c1d3  4c 89 6c 24 40                 mov    QWORD PTR [rsp+0x40],r13
35c1d8  4c 8d 4d 7f                    lea    r9,[rbp+0x7f]
35c1dc  f3 0f 11 74 24 38              movss  DWORD PTR [rsp+0x38],xmm6
35c1e2  41 0f 28 d0                    movaps xmm2,xmm8
35c1e6  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
35c1eb  49 8b d6                       mov    rdx,r14
35c1ee  48 89 5c 24 28                 mov    QWORD PTR [rsp+0x28],rbx
35c1f3  48 8b cf                       mov    rcx,rdi
35c1f6  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
35c1fa  e8 f9 6f 04 00                 call   0x3a31f8
35c1ff  f3 0f 10 4d af                 movss  xmm1,DWORD PTR [rbp-0x51]
35c204  48 8d 4d b7                    lea    rcx,[rbp-0x49]
35c208  41 0f 28 d0                    movaps xmm2,xmm8
35c20c  e8 2f 01 f7 ff                 call   0x2cc340
35c211  48 8b c8                       mov    rcx,rax
35c214  e8 33 3c 06 00                 call   0x3bfe4c
35c219  e8 3e 63 03 00                 call   0x39255c
35c21e  0f 28 f0                       movaps xmm6,xmm0
35c221  f3 0f 5c f7                    subss  xmm6,xmm7
35c225  e8 1e 62 03 00                 call   0x392448
35c22a  f3 0f 5c c6                    subss  xmm0,xmm6
35c22e  e8 19 f2 03 00                 call   0x39b44c
35c233  4c 8d 9c 24 c8 00 00 00        lea    r11,[rsp+0xc8]
35c23b  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
35c240  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
35c245  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
35c24a  49 8b e3                       mov    rsp,r11
35c24d  41 5f                          pop    r15
35c24f  41 5e                          pop    r14
35c251  41 5d                          pop    r13
35c253  41 5c                          pop    r12
35c255  5f                             pop    rdi
35c256  5e                             pop    rsi
35c257  5b                             pop    rbx
35c258  5d                             pop    rbp
35c259  c3                             ret

