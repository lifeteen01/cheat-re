; heuristic leaf/code range 0x2edae8..0x2edaed unwind=0x0
2edae8  48 8d 41 18                    lea    rax,[rcx+0x18]
2edaec  c3                             ret

; pdata function 0x2edb28..0x2edc09 unwind=0x3d2d4c
2edb28  48 8b c4                       mov    rax,rsp
2edb2b  48 89 58 18                    mov    QWORD PTR [rax+0x18],rbx
2edb2f  48 89 50 10                    mov    QWORD PTR [rax+0x10],rdx
2edb33  48 89 48 08                    mov    QWORD PTR [rax+0x8],rcx
2edb37  56                             push   rsi
2edb38  57                             push   rdi
2edb39  41 56                          push   r14
2edb3b  48 83 ec 20                    sub    rsp,0x20
2edb3f  48 8d 48 08                    lea    rcx,[rax+0x8]
2edb43  4d 8b f0                       mov    r14,r8
2edb46  e8 8d 0a fe ff                 call   0x2ce5d8
2edb4b  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
2edb50  48 8b d8                       mov    rbx,rax
2edb53  e8 80 0a fe ff                 call   0x2ce5d8
2edb58  48 8b f0                       mov    rsi,rax
2edb5b  e8 44 0a fe ff                 call   0x2ce5a4
2edb60  84 c0                          test   al,al
2edb62  75 20                          jne    0x2edb84
2edb64  49 8b ce                       mov    rcx,r14
2edb67  e8 f4 31 fe ff                 call   0x2d0d60
2edb6c  84 c0                          test   al,al
2edb6e  74 14                          je     0x2edb84
2edb70  48 2b f3                       sub    rsi,rbx
2edb73  48 8b cb                       mov    rcx,rbx
2edb76  48 c1 fe 02                    sar    rsi,0x2
2edb7a  48 8b d6                       mov    rdx,rsi
2edb7d  e8 f2 2b fe ff                 call   0x2d0774
2edb82  eb 77                          jmp    0x2edbfb
2edb84  33 c0                          xor    eax,eax
2edb86  4c 8b c6                       mov    r8,rsi
2edb89  4c 2b c3                       sub    r8,rbx
2edb8c  49 83 c0 03                    add    r8,0x3
2edb90  49 8b c8                       mov    rcx,r8
2edb93  48 c1 e9 02                    shr    rcx,0x2
2edb97  44 8d 48 04                    lea    r9d,[rax+0x4]
2edb9b  48 3b de                       cmp    rbx,rsi
2edb9e  48 0f 47 c8                    cmova  rcx,rax
2edba2  49 3b c9                       cmp    rcx,r9
2edba5  72 4f                          jb     0x2edbf6
2edba7  49 8b c8                       mov    rcx,r8
2edbaa  48 83 e1 fc                    and    rcx,0xfffffffffffffffc
2edbae  48 3b de                       cmp    rbx,rsi
2edbb1  48 0f 47 c8                    cmova  rcx,rax
2edbb5  49 3b de                       cmp    rbx,r14
2edbb8  77 0c                          ja     0x2edbc6
2edbba  48 8d 43 fc                    lea    rax,[rbx-0x4]
2edbbe  48 03 c1                       add    rax,rcx
2edbc1  49 3b c6                       cmp    rax,r14
2edbc4  73 30                          jae    0x2edbf6
2edbc6  49 63 3e                       movsxd rdi,DWORD PTR [r14]
2edbc9  33 c0                          xor    eax,eax
2edbcb  49 83 e0 f0                    and    r8,0xfffffffffffffff0
2edbcf  48 3b de                       cmp    rbx,rsi
2edbd2  4c 0f 47 c0                    cmova  r8,rax
2edbd6  33 d2                          xor    edx,edx
2edbd8  49 8b c0                       mov    rax,r8
2edbdb  49 f7 f1                       div    r9
2edbde  48 8b c8                       mov    rcx,rax
2edbe1  48 8b c7                       mov    rax,rdi
2edbe4  48 8b fb                       mov    rdi,rbx
2edbe7  49 03 d8                       add    rbx,r8
2edbea  f3 ab                          rep stos DWORD PTR [rdi],eax
2edbec  eb 08                          jmp    0x2edbf6
2edbee  41 8b 06                       mov    eax,DWORD PTR [r14]
2edbf1  89 03                          mov    DWORD PTR [rbx],eax
2edbf3  49 03 d9                       add    rbx,r9
2edbf6  48 3b de                       cmp    rbx,rsi
2edbf9  75 f3                          jne    0x2edbee
2edbfb  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
2edc00  48 83 c4 20                    add    rsp,0x20
2edc04  41 5e                          pop    r14
2edc06  5f                             pop    rdi
2edc07  5e                             pop    rsi
2edc08  c3                             ret

; pdata function 0x37c484..0x37c554 unwind=0x3d3eb4
37c484  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
37c489  48 89 7c 24 10                 mov    QWORD PTR [rsp+0x10],rdi
37c48e  55                             push   rbp
37c48f  48 8b ec                       mov    rbp,rsp
37c492  48 83 ec 50                    sub    rsp,0x50
37c496  49 8b d8                       mov    rbx,r8
37c499  44 8b c2                       mov    r8d,edx
37c49c  33 d2                          xor    edx,edx
37c49e  e8 a9 6e 01 00                 call   0x39334c
37c4a3  89 45 28                       mov    DWORD PTR [rbp+0x28],eax
37c4a6  48 8d 3d c3 68 08 00           lea    rdi,[rip+0x868c3]        # 0x402d70
37c4ad  8b 05 fd 68 08 00              mov    eax,DWORD PTR [rip+0x868fd]        # 0x402db0
37c4b3  a8 01                          test   al,0x1
37c4b5  75 1d                          jne    0x37c4d4
37c4b7  83 c8 01                       or     eax,0x1
37c4ba  48 8b cf                       mov    rcx,rdi
37c4bd  89 05 ed 68 08 00              mov    DWORD PTR [rip+0x868ed],eax        # 0x402db0
37c4c3  e8 d4 03 00 00                 call   0x37c89c
37c4c8  48 8d 0d 95 47 05 00           lea    rcx,[rip+0x54795]        # 0x3d0c64
37c4cf  e8 58 0e f5 ff                 call   0x2cd32c
37c4d4  4c 8d 45 28                    lea    r8,[rbp+0x28]
37c4d8  48 8b cf                       mov    rcx,rdi
37c4db  48 8d 55 d0                    lea    rdx,[rbp-0x30]
37c4df  e8 88 24 00 00                 call   0x37e96c
37c4e4  48 8d 55 d8                    lea    rdx,[rbp-0x28]
37c4e8  48 8b cf                       mov    rcx,rdi
37c4eb  e8 40 24 00 00                 call   0x37e930
37c4f0  48 8b d0                       mov    rdx,rax
37c4f3  48 8d 4d d0                    lea    rcx,[rbp-0x30]
37c4f7  e8 38 00 f5 ff                 call   0x2cc534
37c4fc  84 c0                          test   al,al
37c4fe  74 37                          je     0x37c537
37c500  4c 8b c3                       mov    r8,rbx
37c503  48 8d 55 28                    lea    rdx,[rbp+0x28]
37c507  48 8d 4d e8                    lea    rcx,[rbp-0x18]
37c50b  e8 70 fd ff ff                 call   0x37c280
37c510  4c 8d 45 e8                    lea    r8,[rbp-0x18]
37c514  48 8b cf                       mov    rcx,rdi
37c517  48 8d 55 d8                    lea    rdx,[rbp-0x28]
37c51b  e8 9c 24 00 00                 call   0x37e9bc
37c520  4c 8d 45 28                    lea    r8,[rbp+0x28]
37c524  48 8b cf                       mov    rcx,rdi
37c527  48 8d 55 d8                    lea    rdx,[rbp-0x28]
37c52b  e8 3c 24 00 00                 call   0x37e96c
37c530  48 8b 08                       mov    rcx,QWORD PTR [rax]
37c533  48 89 4d d0                    mov    QWORD PTR [rbp-0x30],rcx
37c537  48 8d 4d d0                    lea    rcx,[rbp-0x30]
37c53b  e8 8c 04 00 00                 call   0x37c9cc
37c540  48 8b 5c 24 60                 mov    rbx,QWORD PTR [rsp+0x60]
37c545  48 83 c0 04                    add    rax,0x4
37c549  48 8b 7c 24 68                 mov    rdi,QWORD PTR [rsp+0x68]
37c54e  48 83 c4 50                    add    rsp,0x50
37c552  5d                             pop    rbp
37c553  c3                             ret

; pdata function 0x37ca80..0x37caab unwind=0x3d23fc
37ca80  48 83 ec 38                    sub    rsp,0x38
37ca84  0f 29 74 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm6
37ca89  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
37ca8e  0f 28 f1                       movaps xmm6,xmm1
37ca91  e8 aa be ff ff                 call   0x378940
37ca96  48 8b c8                       mov    rcx,rax
37ca99  0f 28 ce                       movaps xmm1,xmm6
37ca9c  e8 9f 80 01 00                 call   0x394b40
37caa1  0f 28 74 24 20                 movaps xmm6,XMMWORD PTR [rsp+0x20]
37caa6  48 83 c4 38                    add    rsp,0x38
37caaa  c3                             ret

; pdata function 0x37c984..0x37c9c9 unwind=0x3d2040
37c984  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
37c989  57                             push   rdi
37c98a  48 83 ec 20                    sub    rsp,0x20
37c98e  48 8b da                       mov    rbx,rdx
37c991  48 8b f9                       mov    rdi,rcx
37c994  e8 af ff ff ff                 call   0x37c948
37c999  48 8d 53 30                    lea    rdx,[rbx+0x30]
37c99d  48 8d 4f 30                    lea    rcx,[rdi+0x30]
37c9a1  e8 3e 82 f5 ff                 call   0x2d4be4
37c9a6  0f 10 43 50                    movups xmm0,XMMWORD PTR [rbx+0x50]
37c9aa  f3 0f 7f 47 50                 movdqu XMMWORD PTR [rdi+0x50],xmm0
37c9af  8a 43 60                       mov    al,BYTE PTR [rbx+0x60]
37c9b2  88 47 60                       mov    BYTE PTR [rdi+0x60],al
37c9b5  8b 43 64                       mov    eax,DWORD PTR [rbx+0x64]
37c9b8  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
37c9bd  89 47 64                       mov    DWORD PTR [rdi+0x64],eax
37c9c0  48 8b c7                       mov    rax,rdi
37c9c3  48 83 c4 20                    add    rsp,0x20
37c9c7  5f                             pop    rdi
37c9c8  c3                             ret

