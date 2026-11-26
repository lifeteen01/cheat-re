; pdata function 0x34d784..0x34e43b unwind=0x3d3d14
34d784  48 8b c4                       mov    rax,rsp
34d787  55                             push   rbp
34d788  53                             push   rbx
34d789  56                             push   rsi
34d78a  57                             push   rdi
34d78b  41 55                          push   r13
34d78d  41 56                          push   r14
34d78f  41 57                          push   r15
34d791  48 8d a8 88 fe ff ff           lea    rbp,[rax-0x178]
34d798  48 81 ec 40 02 00 00           sub    rsp,0x240
34d79f  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
34d7a3  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
34d7a7  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
34d7ac  44 0f 29 58 88                 movaps XMMWORD PTR [rax-0x78],xmm11
34d7b1  e8 da 14 04 00                 call   0x38ec90
34d7b6  f3 44 0f 10 1d 95 fa f3 ff     movss  xmm11,DWORD PTR [rip+0xfffffffffff3fa95]        # 0x28d254 ; f32=1
34d7bf  b9 04 00 00 00                 mov    ecx,0x4
34d7c4  41 0f 28 cb                    movaps xmm1,xmm11
34d7c8  e8 cb 4a 04 00                 call   0x392298
34d7cd  8b d0                          mov    edx,eax
34d7cf  b9 08 00 00 00                 mov    ecx,0x8
34d7d4  e8 13 b4 04 00                 call   0x398bec
34d7d9  48 8d 15 e8 fa 0a 00           lea    rdx,[rip+0xafae8]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34d7e0  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34d7e4  e8 ab 69 f8 ff                 call   0x2d4194
34d7e9  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34d7f0  e8 47 4b 04 00                 call   0x39233c
34d7f5  f3 44 0f 10 05 26 03 f4 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff40326]        # 0x28db24 ; f32=30
34d7fe  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
34d802  f3 0f 59 35 46 fa f3 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff3fa46]        # 0x28d250 ; f32=0.5
34d80a  f3 41 0f 5c f0                 subss  xmm6,xmm8
34d80f  e8 b8 4d 04 00                 call   0x3925cc
34d814  0f 28 d0                       movaps xmm2,xmm0
34d817  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34d81e  0f 28 ce                       movaps xmm1,xmm6
34d821  e8 1a eb f7 ff                 call   0x2cc340
34d826  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34d82a  e8 a9 b2 f8 ff                 call   0x2d8ad8
34d82f  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34d833  48 8b f8                       mov    rdi,rax
34d836  e8 b1 ff f7 ff                 call   0x2cd7ec
34d83b  8b 0d a7 f8 0a 00              mov    ecx,DWORD PTR [rip+0xaf8a7]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34d841  41 bf 01 00 00 00              mov    r15d,0x1
34d847  48 8b f0                       mov    rsi,rax
34d84a  41 3b cf                       cmp    ecx,r15d
34d84d  75 0e                          jne    0x34d85d
34d84f  48 8d 0d 2a a4 f5 ff           lea    rcx,[rip+0xfffffffffff5a42a]        # 0x2a7c80
34d856  e8 a9 77 01 00                 call   0x365004
34d85b  eb 27                          jmp    0x34d884
34d85d  83 f9 02                       cmp    ecx,0x2
34d860  75 09                          jne    0x34d86b
34d862  48 8d 0d 27 a4 f5 ff           lea    rcx,[rip+0xfffffffffff5a427]        # 0x2a7c90
34d869  eb eb                          jmp    0x34d856
34d86b  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34d870  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34d877  e8 70 60 00 00                 call   0x3538ec ; STRING getter=0x3538ec Search..
34d87c  48 8b c8                       mov    rcx,rax
34d87f  e8 08 c3 f9 ff                 call   0x2e9b8c
34d884  48 8d 55 90                    lea    rdx,[rbp-0x70]
34d888  48 8b d8                       mov    rbx,rax
34d88b  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34d892  e8 8d 49 00 00                 call   0x352224 ; STRING getter=0x352224 ##search
34d897  48 8b c8                       mov    rcx,rax
34d89a  e8 ed c2 f9 ff                 call   0x2e9b8c
34d89f  48 c7 44 24 38 00 00 00 00     mov    QWORD PTR [rsp+0x38],0x0
34d8a8  48 8b c8                       mov    rcx,rax
34d8ab  48 8d 85 90 01 00 00           lea    rax,[rbp+0x190]
34d8b2  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
34d8bb  c7 44 24 28 00 50 00 00        mov    DWORD PTR [rsp+0x28],0x5000
34d8c3  44 8b cf                       mov    r9d,edi
34d8c6  4c 8b c6                       mov    r8,rsi
34d8c9  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
34d8ce  48 8b d3                       mov    rdx,rbx
34d8d1  e8 62 2c 07 00                 call   0x3c0538
34d8d6  e8 b1 67 04 00                 call   0x39408c
34d8db  41 8b cf                       mov    ecx,r15d
34d8de  88 05 11 fc 0a 00              mov    BYTE PTR [rip+0xafc11],al        # 0x3fd4f5
34d8e4  e8 23 b0 04 00                 call   0x39890c
34d8e9  8b 05 f9 fe 0a 00              mov    eax,DWORD PTR [rip+0xafef9]        # 0x3fd7e8
34d8ef  41 84 c7                       test   r15b,al
34d8f2  75 15                          jne    0x34d909
34d8f4  41 0b c7                       or     eax,r15d
34d8f7  48 8d 0d a6 32 08 00           lea    rcx,[rip+0x832a6]        # 0x3d0ba4
34d8fe  89 05 e4 fe 0a 00              mov    DWORD PTR [rip+0xafee4],eax        # 0x3fd7e8
34d904  e8 23 fa f7 ff                 call   0x2cd32c
34d909  f3 0f 10 0d ab 58 f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff458ab]        # 0x2931bc ; f32=16
34d911  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34d918  0f 28 d1                       movaps xmm2,xmm1
34d91b  e8 20 ea f7 ff                 call   0x2cc340
34d920  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34d927  b9 02 00 00 00                 mov    ecx,0x2
34d92c  e8 2f b3 04 00                 call   0x398c60
34d931  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34d936  e8 01 4a 04 00                 call   0x39233c
34d93b  f3 0f 10 15 1d 59 f4 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff4591d]        # 0x293260 ; f32=-1
34d943  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34d94a  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
34d94e  f3 0f 59 0d fa f8 f3 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff3f8fa]        # 0x28d250 ; f32=0.5
34d956  f3 41 0f 5c c8                 subss  xmm1,xmm8
34d95b  e8 e0 e9 f7 ff                 call   0x2cc340
34d960  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34d967  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34d96e  e8 b1 73 00 00                 call   0x354d24 ; STRING getter=0x354d24 list
34d973  48 8b c8                       mov    rcx,rax
34d976  e8 51 03 f8 ff                 call   0x2cdccc
34d97b  48 8b c8                       mov    rcx,rax
34d97e  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
34d985  41 b9 00 00 01 00              mov    r9d,0x10000
34d98b  45 33 c0                       xor    r8d,r8d
34d98e  e8 e9 0f 04 00                 call   0x38e97c
34d993  4c 8d 2d fe e6 0a 00           lea    r13,[rip+0xae6fe]        # 0x3fc098
34d99a  49 8b cd                       mov    rcx,r13
34d99d  e8 f6 f5 f8 ff                 call   0x2dcf98
34d9a2  4c 8d 35 a7 ae ec ff           lea    r14,[rip+0xffffffffffecaea7]        # 0x218850
34d9a9  33 f6                          xor    esi,esi
34d9ab  49 8b ce                       mov    rcx,r14
34d9ae  e8 2d 76 01 00                 call   0x364fe0
34d9b3  48 85 c0                       test   rax,rax
34d9b6  0f 84 bf 01 00 00              je     0x34db7b
34d9bc  48 63 d6                       movsxd rdx,esi
34d9bf  49 8b ce                       mov    rcx,r14
34d9c2  e8 dd 8d fe ff                 call   0x3367a4
34d9c7  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
34d9ce  4c 8b f0                       mov    r14,rax
34d9d1  48 8d 48 48                    lea    rcx,[rax+0x48]
34d9d5  e8 fa ac f8 ff                 call   0x2d86d4
34d9da  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
34d9df  49 8d 4e 48                    lea    rcx,[r14+0x48]
34d9e3  48 8b 18                       mov    rbx,QWORD PTR [rax]
34d9e6  e8 05 a3 f8 ff                 call   0x2d7cf0
34d9eb  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34d9f2  48 8b f8                       mov    rdi,rax
34d9f5  e8 aa d9 f7 ff                 call   0x2cb3a4
34d9fa  48 8b 17                       mov    rdx,QWORD PTR [rdi]
34d9fd  48 8d 4d a8                    lea    rcx,[rbp-0x58]
34da01  4c 8b c8                       mov    r9,rax
34da04  4c 8b c3                       mov    r8,rbx
34da07  e8 14 7b fe ff                 call   0x335520
34da0c  48 8d 3d b5 f8 0a 00           lea    rdi,[rip+0xaf8b5]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34da13  48 8b cf                       mov    rcx,rdi
34da16  e8 d5 86 fe ff                 call   0x3360f0
34da1b  84 c0                          test   al,al
34da1d  0f 85 25 01 00 00              jne    0x34db48
34da23  49 8d 56 28                    lea    rdx,[r14+0x28]
34da27  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34da2b  e8 64 67 f8 ff                 call   0x2d4194
34da30  41 8b 96 90 00 00 00           mov    edx,DWORD PTR [r14+0x90]
34da37  48 8d 4d f0                    lea    rcx,[rbp-0x10]
34da3b  e8 d0 ba f8 ff                 call   0x2d9510
34da40  48 8d 55 28                    lea    rdx,[rbp+0x28]
34da44  48 8b cf                       mov    rcx,rdi
34da47  e8 88 ac f8 ff                 call   0x2d86d4
34da4c  48 8d 55 30                    lea    rdx,[rbp+0x30]
34da50  48 8b cf                       mov    rcx,rdi
34da53  48 8b 18                       mov    rbx,QWORD PTR [rax]
34da56  e8 95 a2 f8 ff                 call   0x2d7cf0
34da5b  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34da62  48 8b f8                       mov    rdi,rax
34da65  e8 3a d9 f7 ff                 call   0x2cb3a4
34da6a  48 8b 17                       mov    rdx,QWORD PTR [rdi]
34da6d  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34da72  4c 8b c8                       mov    r9,rax
34da75  4c 8b c3                       mov    r8,rbx
34da78  e8 a3 7a fe ff                 call   0x335520
34da7d  48 8d 55 80                    lea    rdx,[rbp-0x80]
34da81  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34da85  e8 66 a2 f8 ff                 call   0x2d7cf0
34da8a  48 8d 55 10                    lea    rdx,[rbp+0x10]
34da8e  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34da92  48 8b 38                       mov    rdi,QWORD PTR [rax]
34da95  e8 3a ac f8 ff                 call   0x2d86d4
34da9a  48 8d 55 90                    lea    rdx,[rbp-0x70]
34da9e  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34daa2  48 8b 18                       mov    rbx,QWORD PTR [rax]
34daa5  e8 46 a2 f8 ff                 call   0x2d7cf0
34daaa  48 8d 0d 5f 8a f8 ff           lea    rcx,[rip+0xfffffffffff88a5f]        # 0x2d6510
34dab1  4c 8b cf                       mov    r9,rdi
34dab4  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
34dab9  4c 8b c3                       mov    r8,rbx
34dabc  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
34dac1  48 8b 10                       mov    rdx,QWORD PTR [rax]
34dac4  e8 07 88 fe ff                 call   0x3362d0
34dac9  45 33 c0                       xor    r8d,r8d
34dacc  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
34dad1  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34dad5  e8 06 ae f8 ff                 call   0x2d88e0
34dada  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
34dade  75 4c                          jne    0x34db2c
34dae0  45 33 c0                       xor    r8d,r8d
34dae3  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
34dae8  48 8d 4d a8                    lea    rcx,[rbp-0x58]
34daec  e8 ef ad f8 ff                 call   0x2d88e0
34daf1  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
34daf5  75 35                          jne    0x34db2c
34daf7  45 33 c0                       xor    r8d,r8d
34dafa  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
34daff  48 8d 4d f0                    lea    rcx,[rbp-0x10]
34db03  e8 d8 ad f8 ff                 call   0x2d88e0
34db08  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
34db0c  75 1e                          jne    0x34db2c
34db0e  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34db13  e8 dc e9 f7 ff                 call   0x2cc4f4
34db18  48 8d 4d f0                    lea    rcx,[rbp-0x10]
34db1c  e8 d3 e9 f7 ff                 call   0x2cc4f4
34db21  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34db25  e8 ca e9 f7 ff                 call   0x2cc4f4
34db2a  eb 28                          jmp    0x34db54
34db2c  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34db31  e8 be e9 f7 ff                 call   0x2cc4f4
34db36  48 8d 4d f0                    lea    rcx,[rbp-0x10]
34db3a  e8 b5 e9 f7 ff                 call   0x2cc4f4
34db3f  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34db43  e8 ac e9 f7 ff                 call   0x2cc4f4
34db48  49 8d 56 28                    lea    rdx,[r14+0x28]
34db4c  49 8b cd                       mov    rcx,r13
34db4f  e8 c8 b4 f8 ff                 call   0x2d901c
34db54  48 8d 4d a8                    lea    rcx,[rbp-0x58]
34db58  e8 97 e9 f7 ff                 call   0x2cc4f4
34db5d  4c 8d 35 ec ac ec ff           lea    r14,[rip+0xffffffffffecacec]        # 0x218850
34db64  41 03 f7                       add    esi,r15d
34db67  49 8b ce                       mov    rcx,r14
34db6a  e8 71 74 01 00                 call   0x364fe0
34db6f  48 63 ce                       movsxd rcx,esi
34db72  48 3b c8                       cmp    rcx,rax
34db75  0f 82 41 fe ff ff              jb     0x34d9bc
34db7b  49 8b cd                       mov    rcx,r13
34db7e  e8 1d ab f8 ff                 call   0x2d86a0
34db83  84 c0                          test   al,al
34db85  74 0c                          je     0x34db93
34db87  c7 05 5b fc 0a 00 ff ff ff ff  mov    DWORD PTR [rip+0xafc5b],0xffffffff        # 0x3fd7ec
34db91  eb 29                          jmp    0x34dbbc
34db93  48 63 1d 52 fc 0a 00           movsxd rbx,DWORD PTR [rip+0xafc52]        # 0x3fd7ec
34db9a  85 db                          test   ebx,ebx
34db9c  78 0d                          js     0x34dbab
34db9e  49 8b cd                       mov    rcx,r13
34dba1  e8 42 b8 f8 ff                 call   0x2d93e8
34dba6  48 3b d8                       cmp    rbx,rax
34dba9  72 11                          jb     0x34dbbc
34dbab  49 8b cd                       mov    rcx,r13
34dbae  e8 35 b8 f8 ff                 call   0x2d93e8
34dbb3  41 2b c7                       sub    eax,r15d
34dbb6  89 05 30 fc 0a 00              mov    DWORD PTR [rip+0xafc30],eax        # 0x3fd7ec
34dbbc  49 8b cd                       mov    rcx,r13
34dbbf  e8 dc aa f8 ff                 call   0x2d86a0
34dbc4  0f 57 ff                       xorps  xmm7,xmm7
34dbc7  84 c0                          test   al,al
34dbc9  75 7c                          jne    0x34dc47
34dbcb  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34dbd2  e8 65 47 04 00                 call   0x39233c
34dbd7  0f 57 d2                       xorps  xmm2,xmm2
34dbda  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34dbe1  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
34dbe5  e8 56 e7 f7 ff                 call   0x2cc340
34dbea  49 8b d5                       mov    rdx,r13
34dbed  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
34dbf2  e8 c5 d6 f8 ff                 call   0x2db2bc
34dbf7  49 8b d5                       mov    rdx,r13
34dbfa  48 8d 4d 90                    lea    rcx,[rbp-0x70]
34dbfe  48 8b f8                       mov    rdi,rax
34dc01  e8 b6 d6 f8 ff                 call   0x2db2bc
34dc06  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34dc0d  48 8b d8                       mov    rbx,rax
34dc10  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34dc17  e8 64 89 00 00                 call   0x356580 ; STRING getter=0x356580 Player
34dc1c  48 8b c8                       mov    rcx,rax
34dc1f  e8 d0 00 f8 ff                 call   0x2cdcf4
34dc24  48 8b 95 88 01 00 00           mov    rdx,QWORD PTR [rbp+0x188]
34dc2b  4c 8d 05 ba fb 0a 00           lea    r8,[rip+0xafbba]        # 0x3fd7ec
34dc32  48 8b c8                       mov    rcx,rax
34dc35  44 88 7c 24 28                 mov    BYTE PTR [rsp+0x28],r15b
34dc3a  4c 8b cb                       mov    r9,rbx
34dc3d  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
34dc42  e8 05 9e 03 00                 call   0x387a4c
34dc47  e8 3c 2e 04 00                 call   0x390a88
34dc4c  41 8b cf                       mov    ecx,r15d
34dc4f  e8 18 ad 04 00                 call   0x39896c
34dc54  e8 a3 32 04 00                 call   0x390efc
34dc59  f3 0f 10 0d ff 55 f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff455ff]        # 0x293260 ; f32=-1
34dc61  0f 57 c0                       xorps  xmm0,xmm0
34dc64  e8 9b cf 04 00                 call   0x39ac04
34dc69  f3 0f 10 15 ef 55 f4 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff455ef]        # 0x293260 ; f32=-1
34dc71  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34dc78  0f 57 c9                       xorps  xmm1,xmm1
34dc7b  e8 c0 e6 f7 ff                 call   0x2cc340
34dc80  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34dc85  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34dc8c  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
34dc90  e8 d3 a2 00 00                 call   0x357f68 ; STRING getter=0x357f68 All Options
34dc95  48 8b c8                       mov    rcx,rax
34dc98  e8 97 01 f8 ff                 call   0x2cde34
34dc9d  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34dca4  48 8b d8                       mov    rbx,rax
34dca7  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34dcae  e8 89 2a 00 00                 call   0x35073c ; STRING getter=0x35073c H
34dcb3  48 8b c8                       mov    rcx,rax
34dcb6  e8 a9 a7 f8 ff                 call   0x2d8464
34dcbb  48 8b d0                       mov    rdx,rax
34dcbe  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34dcc2  e8 05 e6 f7 ff                 call   0x2cc2cc
34dcc7  48 8b c8                       mov    rcx,rax
34dcca  45 8a cf                       mov    r9b,r15b
34dccd  66 49 0f 7e f0                 movq   r8,xmm6
34dcd2  48 8b d3                       mov    rdx,rbx
34dcd5  e8 16 71 03 00                 call   0x384df0
34dcda  48 63 1d 0b fb 0a 00           movsxd rbx,DWORD PTR [rip+0xafb0b]        # 0x3fd7ec
34dce1  85 db                          test   ebx,ebx
34dce3  0f 88 1a 07 00 00              js     0x34e403
34dce9  49 8b cd                       mov    rcx,r13
34dcec  e8 f7 b6 f8 ff                 call   0x2d93e8
34dcf1  48 3b d8                       cmp    rbx,rax
34dcf4  0f 83 09 07 00 00              jae    0x34e403
34dcfa  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34dd01  49 8b ce                       mov    rcx,r14
34dd04  e8 a7 aa f8 ff                 call   0x2d87b0
34dd09  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34dd10  49 8b ce                       mov    rcx,r14
34dd13  48 8b 18                       mov    rbx,QWORD PTR [rax]
34dd16  e8 75 a0 f8 ff                 call   0x2d7d90
34dd1b  44 8a 8d 88 01 00 00           mov    r9b,BYTE PTR [rbp+0x188]
34dd22  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34dd29  4c 8b c3                       mov    r8,rbx
34dd2c  48 8b 10                       mov    rdx,QWORD PTR [rax]
34dd2f  e8 28 84 fe ff                 call   0x33615c
34dd34  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34dd39  49 8b ce                       mov    rcx,r14
34dd3c  48 8b d8                       mov    rbx,rax
34dd3f  e8 4c a0 f8 ff                 call   0x2d7d90
34dd44  48 8b d0                       mov    rdx,rax
34dd47  48 8b cb                       mov    rcx,rbx
34dd4a  e8 71 8a fe ff                 call   0x3367c0
34dd4f  49 8b ce                       mov    rcx,r14
34dd52  48 63 d8                       movsxd rbx,eax
34dd55  e8 86 72 01 00                 call   0x364fe0
34dd5a  48 3b d8                       cmp    rbx,rax
34dd5d  0f 83 a0 06 00 00              jae    0x34e403
34dd63  48 8b d3                       mov    rdx,rbx
34dd66  49 8b ce                       mov    rcx,r14
34dd69  e8 36 8a fe ff                 call   0x3367a4
34dd6e  33 c9                          xor    ecx,ecx
34dd70  4c 8b f0                       mov    r14,rax
34dd73  e8 90 d1 f7 ff                 call   0x2caf08
34dd78  84 c0                          test   al,al
34dd7a  0f 84 e6 00 00 00              je     0x34de66
34dd80  f3 0f 10 0d bc fd f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff3fdbc]        # 0x28db44 ; f32=100
34dd88  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34dd8f  0f 28 d1                       movaps xmm2,xmm1
34dd92  e8 a9 e5 f7 ff                 call   0x2cc340
34dd97  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34dd9e  e8 99 45 04 00                 call   0x39233c
34dda3  f3 0f 10 8d 90 01 00 00        movss  xmm1,DWORD PTR [rbp+0x190]
34ddab  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34ddb2  f3 0f 5c 8d 88 01 00 00        subss  xmm1,DWORD PTR [rbp+0x188]
34ddba  0f 57 d2                       xorps  xmm2,xmm2
34ddbd  f3 0f 58 0d 17 54 f4 ff        addss  xmm1,DWORD PTR [rip+0xfffffffffff45417]        # 0x2931dc ; f32=28
34ddc5  e8 76 e5 f7 ff                 call   0x2cc340
34ddca  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34ddcf  e8 04 46 04 00                 call   0x3923d8
34ddd4  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34dddb  e8 d8 d5 04 00                 call   0x39b3b8
34dde0  0f 57 db                       xorps  xmm3,xmm3
34dde3  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
34dde9  0f 57 d2                       xorps  xmm2,xmm2
34ddec  48 8d 4d 10                    lea    rcx,[rbp+0x10]
34ddf0  0f 57 c9                       xorps  xmm1,xmm1
34ddf3  e8 58 e5 f7 ff                 call   0x2cc350
34ddf8  41 0f 28 db                    movaps xmm3,xmm11
34ddfc  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
34de03  41 0f 28 d3                    movaps xmm2,xmm11
34de07  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34de0b  41 0f 28 cb                    movaps xmm1,xmm11
34de0f  48 8b f0                       mov    rsi,rax
34de12  e8 39 e5 f7 ff                 call   0x2cc350
34de17  41 0f 28 d3                    movaps xmm2,xmm11
34de1b  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
34de20  41 0f 28 cb                    movaps xmm1,xmm11
34de24  48 8b f8                       mov    rdi,rax
34de27  e8 14 e5 f7 ff                 call   0x2cc340
34de2c  0f 57 d2                       xorps  xmm2,xmm2
34de2f  48 8d 4d 90                    lea    rcx,[rbp-0x70]
34de33  0f 57 c9                       xorps  xmm1,xmm1
34de36  48 8b d8                       mov    rbx,rax
34de39  e8 02 e5 f7 ff                 call   0x2cc340
34de3e  4c 8b c0                       mov    r8,rax
34de41  48 89 74 24 28                 mov    QWORD PTR [rsp+0x28],rsi
34de46  4c 8b cb                       mov    r9,rbx
34de49  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
34de4e  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34de55  33 c9                          xor    ecx,ecx
34de57  e8 50 23 07 00                 call   0x3c01ac
34de5c  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34de61  e8 52 d5 04 00                 call   0x39b3b8
34de66  49 8d 56 48                    lea    rdx,[r14+0x48]
34de6a  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34de6f  e8 20 63 f8 ff                 call   0x2d4194
34de74  49 8d 56 28                    lea    rdx,[r14+0x28]
34de78  48 8d 4d a8                    lea    rcx,[rbp-0x58]
34de7c  e8 13 63 f8 ff                 call   0x2d4194
34de81  41 8b 96 90 00 00 00           mov    edx,DWORD PTR [r14+0x90]
34de88  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34de8c  e8 7f b6 f8 ff                 call   0x2d9510
34de91  49 8d 56 68                    lea    rdx,[r14+0x68]
34de95  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
34de9c  e8 f3 62 f8 ff                 call   0x2d4194
34dea1  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34dea6  e8 e9 a7 f8 ff                 call   0x2d8694
34deab  84 c0                          test   al,al
34dead  0f 85 28 05 00 00              jne    0x34e3db
34deb3  48 8d 4d a8                    lea    rcx,[rbp-0x58]
34deb7  e8 d8 a7 f8 ff                 call   0x2d8694
34debc  84 c0                          test   al,al
34debe  0f 85 17 05 00 00              jne    0x34e3db
34dec4  e8 6b 50 04 00                 call   0x392f34
34dec9  f3 0f 59 05 7f f3 f3 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff3f37f]        # 0x28d250 ; f32=0.5
34ded1  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34ded8  41 0f 28 d0                    movaps xmm2,xmm8
34dedc  f3 41 0f 5c c0                 subss  xmm0,xmm8
34dee1  0f 28 c8                       movaps xmm1,xmm0
34dee4  e8 57 e4 f7 ff                 call   0x2cc340
34dee9  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34deee  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34def5  e8 66 ad 00 00                 call   0x358c60 ; STRING getter=0x358c60 Refresh List
34defa  48 8b c8                       mov    rcx,rax
34defd  e8 f2 a6 f8 ff                 call   0x2d85f4
34df02  48 8b c8                       mov    rcx,rax
34df05  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34df0c  e8 c7 e8 06 00                 call   0x3bc7d8
34df11  84 c0                          test   al,al
34df13  74 16                          je     0x34df2b
34df15  48 8d 0d 34 a9 ec ff           lea    rcx,[rip+0xffffffffffeca934]        # 0x218850
34df1c  c7 05 c6 f8 0a 00 ff ff ff ff  mov    DWORD PTR [rip+0xaf8c6],0xffffffff        # 0x3fd7ec
34df26  e8 41 51 01 00                 call   0x36306c
34df2b  f3 0f 10 0d 2d 53 f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff4532d]        # 0x293260 ; f32=-1
34df33  0f 57 c0                       xorps  xmm0,xmm0
34df36  e8 c9 cc 04 00                 call   0x39ac04
34df3b  e8 f4 4f 04 00                 call   0x392f34
34df40  f3 0f 59 05 08 f3 f3 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff3f308]        # 0x28d250 ; f32=0.5
34df48  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34df4f  41 0f 28 d0                    movaps xmm2,xmm8
34df53  f3 41 0f 5c c0                 subss  xmm0,xmm8
34df58  0f 28 c8                       movaps xmm1,xmm0
34df5b  e8 e0 e3 f7 ff                 call   0x2cc340
34df60  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34df65  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34df6c  e8 33 c7 00 00                 call   0x35a6a4 ; STRING getter=0x35a6a4 Copy Steam Link
34df71  48 8b c8                       mov    rcx,rax
34df74  e8 e7 f1 f8 ff                 call   0x2dd160
34df79  48 8b c8                       mov    rcx,rax
34df7c  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34df83  e8 50 e8 06 00                 call   0x3bc7d8
34df88  84 c0                          test   al,al
34df8a  0f 84 3e 01 00 00              je     0x34e0ce
34df90  48 8d 55 c8                    lea    rdx,[rbp-0x38]
34df94  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34df9b  e8 f0 74 ff ff                 call   0x345490 ; STRING getter=0x345490 https://steamcommunity.com/profiles/
34dfa0  48 8b c8                       mov    rcx,rax
34dfa3  e8 54 5d 01 00                 call   0x363cfc
34dfa8  48 8b d0                       mov    rdx,rax
34dfab  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
34dfb0  48 8d 4d f0                    lea    rcx,[rbp-0x10]
34dfb4  e8 5b c7 f9 ff                 call   0x2ea714
34dfb9  8b 05 29 f8 0a 00              mov    eax,DWORD PTR [rip+0xaf829]        # 0x3fd7e8
34dfbf  a8 02                          test   al,0x2
34dfc1  0f 85 ad 00 00 00              jne    0x34e074
34dfc7  83 c8 02                       or     eax,0x2
34dfca  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34dfd1  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34dfd8  89 05 0a f8 0a 00              mov    DWORD PTR [rip+0xaf80a],eax        # 0x3fd7e8
34dfde  e8 4d e7 f7 ff                 call   0x2cc730
34dfe3  48 8b c8                       mov    rcx,rax
34dfe6  e8 b9 fc f7 ff                 call   0x2cdca4
34dfeb  48 8d 55 10                    lea    rdx,[rbp+0x10]
34dfef  48 8b f0                       mov    rsi,rax
34dff2  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34dff9  e8 ea 32 00 00                 call   0x3512e8 ; STRING getter=0x3512e8 set_systemCopyBuffer
34dffe  48 8b c8                       mov    rcx,rax
34e001  e8 b6 24 fd ff                 call   0x3204bc
34e006  48 8d 55 90                    lea    rdx,[rbp-0x70]
34e00a  48 8b f8                       mov    rdi,rax
34e00d  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34e014  e8 1b 2e 00 00                 call   0x350e34 ; STRING getter=0x350e34 UnityEngine
34e019  48 8b c8                       mov    rcx,rax
34e01c  e8 13 fe f7 ff                 call   0x2cde34
34e021  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34e026  48 8b d8                       mov    rbx,rax
34e029  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34e030  e8 67 26 00 00                 call   0x35069c ; STRING getter=0x35069c GUIUtility
34e035  48 8b c8                       mov    rcx,rax
34e038  e8 17 bc f9 ff                 call   0x2e9c54
34e03d  48 8b c8                       mov    rcx,rax
34e040  48 8b d3                       mov    rdx,rbx
34e043  e8 dc 61 fe ff                 call   0x334224
34e048  48 8b c8                       mov    rcx,rax
34e04b  c7 44 24 20 ff ff ff ff        mov    DWORD PTR [rsp+0x20],0xffffffff
34e053  4c 8b ce                       mov    r9,rsi
34e056  41 83 c8 ff                    or     r8d,0xffffffff
34e05a  48 8b d7                       mov    rdx,rdi
34e05d  e8 4a 69 fe ff                 call   0x3349ac
34e062  4c 8b 00                       mov    r8,QWORD PTR [rax]
34e065  8b 05 7d f7 0a 00              mov    eax,DWORD PTR [rip+0xaf77d]        # 0x3fd7e8
34e06b  4c 89 05 7e f7 0a 00           mov    QWORD PTR [rip+0xaf77e],r8        # 0x3fd7f0
34e072  eb 07                          jmp    0x34e07b
34e074  4c 8b 05 75 f7 0a 00           mov    r8,QWORD PTR [rip+0xaf775]        # 0x3fd7f0
34e07b  a8 04                          test   al,0x4
34e07d  75 1f                          jne    0x34e09e
34e07f  48 8b 0d da 7d 08 00           mov    rcx,QWORD PTR [rip+0x87dda]        # 0x3d5e60
34e086  48 8d 15 73 f7 0a 00           lea    rdx,[rip+0xaf773]        # 0x3fd800
34e08d  83 c8 04                       or     eax,0x4
34e090  45 33 c9                       xor    r9d,r9d
34e093  89 05 4f f7 0a 00              mov    DWORD PTR [rip+0xaf74f],eax        # 0x3fd7e8
34e099  e8 86 dc f7 ff                 call   0x2cbd24
34e09e  48 8d 4d f0                    lea    rcx,[rbp-0x10]
34e0a2  e8 45 f7 f7 ff                 call   0x2cd7ec
34e0a7  48 8b c8                       mov    rcx,rax
34e0aa  e8 2d 05 f8 ff                 call   0x2ce5dc
34e0af  48 8b 0d aa 7d 08 00           mov    rcx,QWORD PTR [rip+0x87daa]        # 0x3d5e60
34e0b6  48 8d 15 43 f7 0a 00           lea    rdx,[rip+0xaf743]        # 0x3fd800
34e0bd  4c 8b c0                       mov    r8,rax
34e0c0  e8 37 d9 f7 ff                 call   0x2cb9fc
34e0c5  48 8d 4d f0                    lea    rcx,[rbp-0x10]
34e0c9  e8 26 e4 f7 ff                 call   0x2cc4f4
34e0ce  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e0d5  e8 ca d2 f7 ff                 call   0x2cb3a4
34e0da  8b 0d 08 f0 0a 00              mov    ecx,DWORD PTR [rip+0xaf008]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e0e0  48 8b d8                       mov    rbx,rax
34e0e3  41 3b cf                       cmp    ecx,r15d
34e0e6  75 09                          jne    0x34e0f1
34e0e8  48 8d 0d b1 9b f5 ff           lea    rcx,[rip+0xfffffffffff59bb1]        # 0x2a7ca0
34e0ef  eb 0c                          jmp    0x34e0fd
34e0f1  83 f9 02                       cmp    ecx,0x2
34e0f4  75 0e                          jne    0x34e104
34e0f6  48 8d 0d bb 9b f5 ff           lea    rcx,[rip+0xfffffffffff59bbb]        # 0x2a7cb8
34e0fd  e8 02 6f 01 00                 call   0x365004
34e102  eb 19                          jmp    0x34e11d
34e104  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34e109  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e110  e8 b7 36 00 00                 call   0x3517cc
34e115  48 8b c8                       mov    rcx,rax
34e118  e8 f7 54 f9 ff                 call   0x2e3614
34e11d  48 8b d0                       mov    rdx,rax
34e120  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
34e127  e8 a0 e1 f7 ff                 call   0x2cc2cc
34e12c  8b 05 b6 ef 0a 00              mov    eax,DWORD PTR [rip+0xaefb6]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e132  41 3b c7                       cmp    eax,r15d
34e135  75 09                          jne    0x34e140
34e137  48 8d 0d 82 9b f5 ff           lea    rcx,[rip+0xfffffffffff59b82]        # 0x2a7cc0
34e13e  eb 0c                          jmp    0x34e14c
34e140  83 f8 02                       cmp    eax,0x2
34e143  75 0e                          jne    0x34e153
34e145  48 8d 0d 8c 9b f5 ff           lea    rcx,[rip+0xfffffffffff59b8c]        # 0x2a7cd8
34e14c  e8 b3 6e 01 00                 call   0x365004
34e151  eb 18                          jmp    0x34e16b
34e153  48 8d 55 90                    lea    rdx,[rbp-0x70]
34e157  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34e15e  e8 11 39 00 00                 call   0x351a74 ; STRING getter=0x351a74 Friendly
34e163  48 8b c8                       mov    rcx,rax
34e166  e8 21 ba f9 ff                 call   0x2e9b8c
34e16b  48 8b d0                       mov    rdx,rax
34e16e  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
34e175  e8 52 e1 f7 ff                 call   0x2cc2cc
34e17a  8b 05 68 ef 0a 00              mov    eax,DWORD PTR [rip+0xaef68]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e180  41 3b c7                       cmp    eax,r15d
34e183  75 09                          jne    0x34e18e
34e185  48 8d 0d c4 a6 f4 ff           lea    rcx,[rip+0xfffffffffff4a6c4]        # 0x298850
34e18c  eb 0c                          jmp    0x34e19a
34e18e  83 f8 02                       cmp    eax,0x2
34e191  75 0e                          jne    0x34e1a1
34e193  48 8d 0d c2 a6 f4 ff           lea    rcx,[rip+0xfffffffffff4a6c2]        # 0x29885c
34e19a  e8 65 6e 01 00                 call   0x365004
34e19f  eb 1b                          jmp    0x34e1bc
34e1a1  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
34e1a8  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34e1af  e8 d4 3a 00 00                 call   0x351c88 ; STRING getter=0x351c88 Enemy
34e1b4  48 8b c8                       mov    rcx,rax
34e1b7  e8 20 a3 f8 ff                 call   0x2d84dc
34e1bc  48 8b d0                       mov    rdx,rax
34e1bf  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
34e1c6  e8 01 e1 f7 ff                 call   0x2cc2cc
34e1cb  4c 8d 85 00 01 00 00           lea    r8,[rbp+0x100]
34e1d2  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
34e1d9  48 8d 4d 30                    lea    rcx,[rbp+0x30]
34e1dd  e8 8a e2 f7 ff                 call   0x2cc46c
34e1e2  4c 8b c3                       mov    r8,rbx
34e1e5  48 8d 55 80                    lea    rdx,[rbp-0x80]
34e1e9  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34e1ed  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
34e1f0  f3 0f 7f 45 80                 movdqu XMMWORD PTR [rbp-0x80],xmm0
34e1f5  e8 3e 82 fe ff                 call   0x336438
34e1fa  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
34e1ff  48 8b d8                       mov    rbx,rax
34e202  48 8d 0d 57 90 08 00           lea    rcx,[rip+0x89057]        # 0x3d7260
34e209  e8 86 15 fa ff                 call   0x2ef794
34e20e  8b 0d d4 ee 0a 00              mov    ecx,DWORD PTR [rip+0xaeed4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e214  48 8d 78 24                    lea    rdi,[rax+0x24]
34e218  41 3b cf                       cmp    ecx,r15d
34e21b  75 09                          jne    0x34e226
34e21d  48 8d 0d bc 9a f5 ff           lea    rcx,[rip+0xfffffffffff59abc]        # 0x2a7ce0
34e224  eb 0c                          jmp    0x34e232
34e226  83 f9 02                       cmp    ecx,0x2
34e229  75 0e                          jne    0x34e239
34e22b  48 8d 0d de 9a f5 ff           lea    rcx,[rip+0xfffffffffff59ade]        # 0x2a7d10
34e232  e8 cd 6d 01 00                 call   0x365004
34e237  eb 18                          jmp    0x34e251
34e239  48 8d 55 10                    lea    rdx,[rbp+0x10]
34e23d  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34e244  e8 f3 32 00 00                 call   0x35153c ; STRING getter=0x35153c Custom status
34e249  48 8b c8                       mov    rcx,rax
34e24c  e8 37 ef f8 ff                 call   0x2dd188
34e251  4c 8b c3                       mov    r8,rbx
34e254  48 8b d7                       mov    rdx,rdi
34e257  48 8b c8                       mov    rcx,rax
34e25a  e8 a9 0d 07 00                 call   0x3bf008
34e25f  ba 20 00 00 00                 mov    edx,0x20
34e264  4c 8d 0d 89 e2 f7 ff           lea    r9,[rip+0xfffffffffff7e289]        # 0x2cc4f4
34e26b  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
34e272  44 8d 42 e3                    lea    r8d,[rdx-0x1d]
34e276  e8 4d d8 f8 ff                 call   0x2dbac8
34e27b  48 8d 4d a8                    lea    rcx,[rbp-0x58]
34e27f  e8 68 f5 f7 ff                 call   0x2cd7ec
34e284  8b 0d 5e ee 0a 00              mov    ecx,DWORD PTR [rip+0xaee5e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e28a  48 8b d8                       mov    rbx,rax
34e28d  41 3b cf                       cmp    ecx,r15d
34e290  75 09                          jne    0x34e29b
34e292  48 8d 0d 87 9a f5 ff           lea    rcx,[rip+0xfffffffffff59a87]        # 0x2a7d20
34e299  eb 0c                          jmp    0x34e2a7
34e29b  83 f9 02                       cmp    ecx,0x2
34e29e  75 0e                          jne    0x34e2ae
34e2a0  48 8d 0d 89 9a f5 ff           lea    rcx,[rip+0xfffffffffff59a89]        # 0x2a7d30
34e2a7  e8 58 6d 01 00                 call   0x365004
34e2ac  eb 19                          jmp    0x34e2c7
34e2ae  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34e2b3  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e2ba  e8 f5 3b 00 00                 call   0x351eb4 ; STRING getter=0x351eb4 Name: %s
34e2bf  48 8b c8                       mov    rcx,rax
34e2c2  e8 c5 b8 f9 ff                 call   0x2e9b8c
34e2c7  48 8b d3                       mov    rdx,rbx
34e2ca  48 8b c8                       mov    rcx,rax
34e2cd  e8 be 6b 07 00                 call   0x3c4e90
34e2d2  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34e2d7  e8 10 f5 f7 ff                 call   0x2cd7ec
34e2dc  8b 0d 06 ee 0a 00              mov    ecx,DWORD PTR [rip+0xaee06]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e2e2  48 8b d8                       mov    rbx,rax
34e2e5  41 3b cf                       cmp    ecx,r15d
34e2e8  75 09                          jne    0x34e2f3
34e2ea  48 8d 0d 4f 9a f5 ff           lea    rcx,[rip+0xfffffffffff59a4f]        # 0x2a7d40
34e2f1  eb 0c                          jmp    0x34e2ff
34e2f3  83 f9 02                       cmp    ecx,0x2
34e2f6  75 0e                          jne    0x34e306
34e2f8  48 8d 0d 59 9a f5 ff           lea    rcx,[rip+0xfffffffffff59a59]        # 0x2a7d58
34e2ff  e8 00 6d 01 00                 call   0x365004
34e304  eb 19                          jmp    0x34e31f
34e306  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34e30b  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e312  e8 51 3e 00 00                 call   0x352168 ; STRING getter=0x352168 Steam ID: %s
34e317  48 8b c8                       mov    rcx,rax
34e31a  e8 d5 a2 f8 ff                 call   0x2d85f4
34e31f  48 8b d3                       mov    rdx,rbx
34e322  48 8b c8                       mov    rcx,rax
34e325  e8 66 6b 07 00                 call   0x3c4e90
34e32a  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34e32e  e8 b9 f4 f7 ff                 call   0x2cd7ec
34e333  8b 0d af ed 0a 00              mov    ecx,DWORD PTR [rip+0xaedaf]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e339  48 8b d8                       mov    rbx,rax
34e33c  41 3b cf                       cmp    ecx,r15d
34e33f  75 09                          jne    0x34e34a
34e341  48 8d 0d 28 9a f5 ff           lea    rcx,[rip+0xfffffffffff59a28]        # 0x2a7d70
34e348  eb 0c                          jmp    0x34e356
34e34a  83 f9 02                       cmp    ecx,0x2
34e34d  75 0e                          jne    0x34e35d
34e34f  48 8d 0d 3a 9a f5 ff           lea    rcx,[rip+0xfffffffffff59a3a]        # 0x2a7d90
34e356  e8 a9 6c 01 00                 call   0x365004
34e35b  eb 19                          jmp    0x34e376
34e35d  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34e362  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e369  e8 86 41 00 00                 call   0x3524f4 ; STRING getter=0x3524f4 Team ID: %s
34e36e  48 8b c8                       mov    rcx,rax
34e371  e8 be fa f7 ff                 call   0x2cde34
34e376  48 8b d3                       mov    rdx,rbx
34e379  48 8b c8                       mov    rcx,rax
34e37c  e8 0f 6b 07 00                 call   0x3c4e90
34e381  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
34e388  e8 5f f4 f7 ff                 call   0x2cd7ec
34e38d  8b 0d 55 ed 0a 00              mov    ecx,DWORD PTR [rip+0xaed55]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e393  48 8b d8                       mov    rbx,rax
34e396  41 3b cf                       cmp    ecx,r15d
34e399  75 09                          jne    0x34e3a4
34e39b  48 8d 0d 06 9a f5 ff           lea    rcx,[rip+0xfffffffffff59a06]        # 0x2a7da8
34e3a2  eb 0c                          jmp    0x34e3b0
34e3a4  83 f9 02                       cmp    ecx,0x2
34e3a7  75 0e                          jne    0x34e3b7
34e3a9  48 8d 0d 38 9a f5 ff           lea    rcx,[rip+0xfffffffffff59a38]        # 0x2a7de8
34e3b0  e8 4f 6c 01 00                 call   0x365004
34e3b5  eb 19                          jmp    0x34e3d0
34e3b7  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34e3bc  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e3c3  e8 3c 43 00 00                 call   0x352704 ; STRING getter=0x352704 Last Known Grid : %s
34e3c8  48 8b c8                       mov    rcx,rax
34e3cb  e8 ec 20 fd ff                 call   0x3204bc
34e3d0  48 8b d3                       mov    rdx,rbx
34e3d3  48 8b c8                       mov    rcx,rax
34e3d6  e8 b5 6a 07 00                 call   0x3c4e90
34e3db  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
34e3e2  e8 0d e1 f7 ff                 call   0x2cc4f4
34e3e7  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34e3eb  e8 04 e1 f7 ff                 call   0x2cc4f4
34e3f0  48 8d 4d a8                    lea    rcx,[rbp-0x58]
34e3f4  e8 fb e0 f7 ff                 call   0x2cc4f4
34e3f9  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34e3fe  e8 f1 e0 f7 ff                 call   0x2cc4f4
34e403  e8 44 8e 03 00                 call   0x38724c
34e408  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34e40c  e8 e3 e0 f7 ff                 call   0x2cc4f4
34e411  4c 8d 9c 24 40 02 00 00        lea    r11,[rsp+0x240]
34e419  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
34e41e  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
34e423  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
34e428  45 0f 28 5b c0                 movaps xmm11,XMMWORD PTR [r11-0x40]
34e42d  49 8b e3                       mov    rsp,r11
34e430  41 5f                          pop    r15
34e432  41 5e                          pop    r14
34e434  41 5d                          pop    r13
34e436  5f                             pop    rdi
34e437  5e                             pop    rsi
34e438  5b                             pop    rbx
34e439  5d                             pop    rbp
34e43a  c3                             ret
