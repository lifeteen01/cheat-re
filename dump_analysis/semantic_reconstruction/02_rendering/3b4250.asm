; pdata function 0x3b4250..0x3b44cf unwind=0x3d55cc
3b4250  48 8b c4                       mov    rax,rsp
3b4253  48 89 48 08                    mov    QWORD PTR [rax+0x8],rcx
3b4257  55                             push   rbp
3b4258  53                             push   rbx
3b4259  56                             push   rsi
3b425a  57                             push   rdi
3b425b  41 54                          push   r12
3b425d  41 55                          push   r13
3b425f  41 56                          push   r14
3b4261  41 57                          push   r15
3b4263  48 8d 68 a1                    lea    rbp,[rax-0x5f]
3b4267  48 81 ec e8 00 00 00           sub    rsp,0xe8
3b426e  33 db                          xor    ebx,ebx
3b4270  0f 29 70 a8                    movaps XMMWORD PTR [rax-0x58],xmm6
3b4274  4c 8b f9                       mov    r15,rcx
3b4277  39 59 04                       cmp    DWORD PTR [rcx+0x4],ebx
3b427a  7e 14                          jle    0x3b4290
3b427c  4c 8b 41 10                    mov    r8,QWORD PTR [rcx+0x10]
3b4280  33 d2                          xor    edx,edx
3b4282  49 8b 0c d0                    mov    rcx,QWORD PTR [r8+rdx*8]
3b4286  ff c2                          inc    edx
3b4288  03 19                          add    ebx,DWORD PTR [rcx]
3b428a  41 3b 57 04                    cmp    edx,DWORD PTR [r15+0x4]
3b428e  7c f2                          jl     0x3b4282
3b4290  39 1d be b7 ec ff              cmp    DWORD PTR [rip+0xffffffffffecb7be],ebx        # 0x27fa54
3b4296  74 22                          je     0x3b42ba
3b4298  48 8b 0d a1 8e 05 00           mov    rcx,QWORD PTR [rip+0x58ea1]        # 0x40d140
3b429f  b2 01                          mov    dl,0x1
3b42a1  e8 96 ae ff ff                 call   0x3af13c
3b42a6  48 8b 0d 93 8e 05 00           mov    rcx,QWORD PTR [rip+0x58e93]        # 0x40d140
3b42ad  8b d3                          mov    edx,ebx
3b42af  89 1d 9f b7 ec ff              mov    DWORD PTR [rip+0xffffffffffecb79f],ebx        # 0x27fa54
3b42b5  e8 3e c6 ff ff                 call   0x3b08f8
3b42ba  41 8b 57 0c                    mov    edx,DWORD PTR [r15+0xc]
3b42be  4c 8d 05 5b 8e 05 00           lea    r8,[rip+0x58e5b]        # 0x40d120
3b42c5  48 8b 0d 74 8e 05 00           mov    rcx,QWORD PTR [rip+0x58e74]        # 0x40d140
3b42cc  e8 3f fd ff ff                 call   0x3b4010
3b42d1  41 8b 57 08                    mov    edx,DWORD PTR [r15+0x8]
3b42d5  45 33 c0                       xor    r8d,r8d
3b42d8  48 8b 0d 61 8e 05 00           mov    rcx,QWORD PTR [rip+0x58e61]        # 0x40d140
3b42df  e8 f8 f8 ff ff                 call   0x3b3bdc
3b42e4  33 db                          xor    ebx,ebx
3b42e6  48 8d 4d a7                    lea    rcx,[rbp-0x59]
3b42ea  33 ff                          xor    edi,edi
3b42ec  89 5d 6f                       mov    DWORD PTR [rbp+0x6f],ebx
3b42ef  89 7d 77                       mov    DWORD PTR [rbp+0x77],edi
3b42f2  e8 61 04 f2 ff                 call   0x2d4758
3b42f7  41 8b 47 04                    mov    eax,DWORD PTR [r15+0x4]
3b42fb  45 33 ed                       xor    r13d,r13d
3b42fe  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
3b4302  44 89 6c 24 40                 mov    DWORD PTR [rsp+0x40],r13d
3b4307  85 c0                          test   eax,eax
3b4309  0f 8e 60 01 00 00              jle    0x3b446f
3b430f  49 8b 47 10                    mov    rax,QWORD PTR [r15+0x10]
3b4313  45 33 c9                       xor    r9d,r9d
3b4316  48 8b 0d 23 8e 05 00           mov    rcx,QWORD PTR [rip+0x58e23]        # 0x40d140
3b431d  33 d2                          xor    edx,edx
3b431f  c7 44 24 38 0f 00 00 00        mov    DWORD PTR [rsp+0x38],0xf
3b4327  c7 44 24 30 14 00 00 00        mov    DWORD PTR [rsp+0x30],0x14
3b432f  4e 8b 24 e8                    mov    r12,QWORD PTR [rax+r13*8]
3b4333  41 8b 44 24 20                 mov    eax,DWORD PTR [r12+0x20]
3b4338  4d 8b 44 24 28                 mov    r8,QWORD PTR [r12+0x28]
3b433d  89 44 24 28                    mov    DWORD PTR [rsp+0x28],eax
3b4341  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
3b4345  e8 ee fb ff ff                 call   0x3b3f38
3b434a  41 8b 44 24 10                 mov    eax,DWORD PTR [r12+0x10]
3b434f  44 8b cf                       mov    r9d,edi
3b4352  49 8b 54 24 18                 mov    rdx,QWORD PTR [r12+0x18]
3b4357  45 33 c0                       xor    r8d,r8d
3b435a  48 8b 0d df 8d 05 00           mov    rcx,QWORD PTR [rip+0x58ddf]        # 0x40d140
3b4361  c7 44 24 30 0f 00 00 00        mov    DWORD PTR [rsp+0x30],0xf
3b4369  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
3b4371  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
3b4375  e8 8a f7 ff ff                 call   0x3b3b04
3b437a  41 8b 04 24                    mov    eax,DWORD PTR [r12]
3b437e  33 c9                          xor    ecx,ecx
3b4380  89 44 24 44                    mov    DWORD PTR [rsp+0x44],eax
3b4384  89 4d 7f                       mov    DWORD PTR [rbp+0x7f],ecx
3b4387  85 c0                          test   eax,eax
3b4389  0f 8e bd 00 00 00              jle    0x3b444c
3b438f  44 8b 7d 6f                    mov    r15d,DWORD PTR [rbp+0x6f]
3b4393  44 8b 6d 77                    mov    r13d,DWORD PTR [rbp+0x77]
3b4397  8b d1                          mov    edx,ecx
3b4399  49 8b cc                       mov    rcx,r12
3b439c  e8 ef 77 fd ff                 call   0x38bb90
3b43a1  0f 57 db                       xorps  xmm3,xmm3
3b43a4  48 8d 4d ef                    lea    rcx,[rbp-0x11]
3b43a8  0f 57 d2                       xorps  xmm2,xmm2
3b43ab  0f 57 c9                       xorps  xmm1,xmm1
3b43ae  44 8b 70 18                    mov    r14d,DWORD PTR [rax+0x18]
3b43b2  8b 78 1c                       mov    edi,DWORD PTR [rax+0x1c]
3b43b5  8b 70 20                       mov    esi,DWORD PTR [rax+0x20]
3b43b8  e8 eb 37 01 00                 call   0x3c7ba8
3b43bd  0f 57 db                       xorps  xmm3,xmm3
3b43c0  48 8d 4d fb                    lea    rcx,[rbp-0x5]
3b43c4  0f 57 d2                       xorps  xmm2,xmm2
3b43c7  0f 57 c9                       xorps  xmm1,xmm1
3b43ca  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
3b43ce  8b 58 08                       mov    ebx,DWORD PTR [rax+0x8]
3b43d1  e8 d2 37 01 00                 call   0x3c7ba8
3b43d6  4c 8d 45 87                    lea    r8,[rbp-0x79]
3b43da  f2 0f 11 75 97                 movsd  QWORD PTR [rbp-0x69],xmm6
3b43df  48 8d 55 97                    lea    rdx,[rbp-0x69]
3b43e3  89 5d 9f                       mov    DWORD PTR [rbp-0x61],ebx
3b43e6  48 8d 4d bf                    lea    rcx,[rbp-0x41]
3b43ea  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3b43ee  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3b43f1  f2 0f 11 45 87                 movsd  QWORD PTR [rbp-0x79],xmm0
3b43f6  89 45 8f                       mov    DWORD PTR [rbp-0x71],eax
3b43f9  e8 86 c5 ff ff                 call   0x3b0984
3b43fe  42 8d 04 2f                    lea    eax,[rdi+r13*1]
3b4402  c7 45 d7 00 00 00 00           mov    DWORD PTR [rbp-0x29],0x0
3b4409  89 45 db                       mov    DWORD PTR [rbp-0x25],eax
3b440c  48 8d 55 bf                    lea    rdx,[rbp-0x41]
3b4410  43 8d 04 3e                    lea    eax,[r14+r15*1]
3b4414  89 75 df                       mov    DWORD PTR [rbp-0x21],esi
3b4417  48 8d 4d a7                    lea    rcx,[rbp-0x59]
3b441b  89 45 e3                       mov    DWORD PTR [rbp-0x1d],eax
3b441e  48 c7 45 e7 00 00 00 00        mov    QWORD PTR [rbp-0x19],0x0
3b4426  e8 91 c3 ff ff                 call   0x3b07bc
3b442b  8b 4d 7f                       mov    ecx,DWORD PTR [rbp+0x7f]
3b442e  ff c1                          inc    ecx
3b4430  89 4d 7f                       mov    DWORD PTR [rbp+0x7f],ecx
3b4433  3b 4c 24 44                    cmp    ecx,DWORD PTR [rsp+0x44]
3b4437  0f 8c 5a ff ff ff              jl     0x3b4397
3b443d  4c 8b 7d 67                    mov    r15,QWORD PTR [rbp+0x67]
3b4441  44 8b 6c 24 40                 mov    r13d,DWORD PTR [rsp+0x40]
3b4446  8b 5d 6f                       mov    ebx,DWORD PTR [rbp+0x6f]
3b4449  8b 7d 77                       mov    edi,DWORD PTR [rbp+0x77]
3b444c  41 03 5c 24 20                 add    ebx,DWORD PTR [r12+0x20]
3b4451  41 ff c5                       inc    r13d
3b4454  41 03 7c 24 10                 add    edi,DWORD PTR [r12+0x10]
3b4459  89 5d 6f                       mov    DWORD PTR [rbp+0x6f],ebx
3b445c  89 7d 77                       mov    DWORD PTR [rbp+0x77],edi
3b445f  44 89 6c 24 40                 mov    DWORD PTR [rsp+0x40],r13d
3b4464  44 3b 6c 24 48                 cmp    r13d,DWORD PTR [rsp+0x48]
3b4469  0f 8c a0 fe ff ff              jl     0x3b430f
3b446f  48 8d 4d a7                    lea    rcx,[rbp-0x59]
3b4473  e8 dc b8 fc ff                 call   0x37fd54
3b4478  48 8d 4d a7                    lea    rcx,[rbp-0x59]
3b447c  48 8b d8                       mov    rbx,rax
3b447f  e8 f4 d4 f1 ff                 call   0x2d1978
3b4484  48 8b 0d b5 8c 05 00           mov    rcx,QWORD PTR [rip+0x58cb5]        # 0x40d140
3b448b  48 8b d0                       mov    rdx,rax
3b448e  41 b9 0f 00 00 00              mov    r9d,0xf
3b4494  44 8b c3                       mov    r8d,ebx
3b4497  e8 c0 f9 ff ff                 call   0x3b3e5c
3b449c  48 8b 0d 9d 8c 05 00           mov    rcx,QWORD PTR [rip+0x58c9d]        # 0x40d140
3b44a3  33 d2                          xor    edx,edx
3b44a5  e8 96 b4 ff ff                 call   0x3af940
3b44aa  48 8d 4d a7                    lea    rcx,[rbp-0x59]
3b44ae  e8 d1 c5 ff ff                 call   0x3b0a84
3b44b3  0f 28 b4 24 d0 00 00 00        movaps xmm6,XMMWORD PTR [rsp+0xd0]
3b44bb  48 81 c4 e8 00 00 00           add    rsp,0xe8
3b44c2  41 5f                          pop    r15
3b44c4  41 5e                          pop    r14
3b44c6  41 5d                          pop    r13
3b44c8  41 5c                          pop    r12
3b44ca  5f                             pop    rdi
3b44cb  5e                             pop    rsi
3b44cc  5b                             pop    rbx
3b44cd  5d                             pop    rbp
3b44ce  c3                             ret
