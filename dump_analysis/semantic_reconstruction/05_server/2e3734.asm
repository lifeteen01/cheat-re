; pdata function 0x2e3734..0x2e38e4 unwind=0x3d2a0c
2e3734  40 55                          rex push rbp
2e3736  53                             push   rbx
2e3737  56                             push   rsi
2e3738  57                             push   rdi
2e3739  48 8b ec                       mov    rbp,rsp
2e373c  48 83 ec 68                    sub    rsp,0x68
2e3740  0f 29 74 24 50                 movaps XMMWORD PTR [rsp+0x50],xmm6
2e3745  48 8b da                       mov    rbx,rdx
2e3748  0f 57 f6                       xorps  xmm6,xmm6
2e374b  0f 29 7c 24 40                 movaps XMMWORD PTR [rsp+0x40],xmm7
2e3750  f2 0f 5a f2                    cvtsd2ss xmm6,xmm2
2e3754  48 8b f1                       mov    rsi,rcx
2e3757  44 0f 29 4c 24 30              movaps XMMWORD PTR [rsp+0x30],xmm9
2e375d  0f 28 c6                       movaps xmm0,xmm6
2e3760  e8 33 ca ff ff                 call   0x2e0198
2e3765  0f 28 f8                       movaps xmm7,xmm0
2e3768  0f 28 c6                       movaps xmm0,xmm6
2e376b  e8 f8 c7 ff ff                 call   0x2dff68
2e3770  0f 28 c8                       movaps xmm1,xmm0
2e3773  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2e3777  0f 28 d7                       movaps xmm2,xmm7
2e377a  e8 c1 8b fe ff                 call   0x2cc340
2e377f  f3 0f 10 16                    movss  xmm2,DWORD PTR [rsi]
2e3783  48 8d 55 28                    lea    rdx,[rbp+0x28]
2e3787  48 8b c8                       mov    rcx,rax
2e378a  e8 b5 be ff ff                 call   0x2df644
2e378f  0f 57 f6                       xorps  xmm6,xmm6
2e3792  0f 2f 75 28                    comiss xmm6,DWORD PTR [rbp+0x28]
2e3796  76 26                          jbe    0x2e37be
2e3798  f3 0f 10 4d 2c                 movss  xmm1,DWORD PTR [rbp+0x2c]
2e379d  f3 0f 10 06                    movss  xmm0,DWORD PTR [rsi]
2e37a1  e8 1a fc ff ff                 call   0x2e33c0
2e37a6  0f 28 d0                       movaps xmm2,xmm0
2e37a9  48 8d 4d 28                    lea    rcx,[rbp+0x28]
2e37ad  0f 57 c9                       xorps  xmm1,xmm1
2e37b0  e8 8b 8b fe ff                 call   0x2cc340
2e37b5  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e37b9  f2 0f 11 45 28                 movsd  QWORD PTR [rbp+0x28],xmm0
2e37be  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2e37c2  e8 a9 10 ff ff                 call   0x2d4870
2e37c7  f3 0f 10 7e 08                 movss  xmm7,DWORD PTR [rsi+0x8]
2e37cc  45 0f 57 c9                    xorps  xmm9,xmm9
2e37d0  f3 0f 59 3d 40 a3 fa ff        mulss  xmm7,DWORD PTR [rip+0xfffffffffffaa340]        # 0x28db18 ; f32=9.81
2e37d8  33 ff                          xor    edi,edi
2e37da  48 c7 83 00 0a 00 00 00 00 00 00 mov    QWORD PTR [rbx+0xa00],0x0
2e37e5  f3 0f 59 3d ef a2 fa ff        mulss  xmm7,DWORD PTR [rip+0xfffffffffffaa2ef]        # 0x28dadc ; f32=0.03125
2e37ed  f3 0f 10 15 e7 a2 fa ff        movss  xmm2,DWORD PTR [rip+0xfffffffffffaa2e7]        # 0x28dadc ; f32=0.03125
2e37f5  48 8d 55 38                    lea    rdx,[rbp+0x38]
2e37f9  48 8d 4d 28                    lea    rcx,[rbp+0x28]
2e37fd  e8 42 be ff ff                 call   0x2df644
2e3802  83 bb 04 0a 00 00 00           cmp    DWORD PTR [rbx+0xa04],0x0
2e3809  75 2f                          jne    0x2e383a
2e380b  f3 0f 58 35 c9 a2 fa ff        addss  xmm6,DWORD PTR [rip+0xfffffffffffaa2c9]        # 0x28dadc ; f32=0.03125
2e3813  48 8d 4d 38                    lea    rcx,[rbp+0x38]
2e3817  e8 b0 d6 ff ff                 call   0x2e0ecc
2e381c  0f 2f 35 c1 a2 fa ff           comiss xmm6,DWORD PTR [rip+0xfffffffffffaa2c1]        # 0x28dae4 ; f32=0.1
2e3823  f3 44 0f 58 c8                 addss  xmm9,xmm0
2e3828  72 10                          jb     0x2e383a
2e382a  44 0f 2f 4e 0c                 comiss xmm9,DWORD PTR [rsi+0xc]
2e382f  72 09                          jb     0x2e383a
2e3831  8d 47 01                       lea    eax,[rdi+0x1]
2e3834  89 83 04 0a 00 00              mov    DWORD PTR [rbx+0xa04],eax
2e383a  48 8d 55 38                    lea    rdx,[rbp+0x38]
2e383e  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2e3842  e8 65 c5 ff ff                 call   0x2dfdac
2e3847  f3 0f 10 45 2c                 movss  xmm0,DWORD PTR [rbp+0x2c]
2e384c  48 8d 55 40                    lea    rdx,[rbp+0x40]
2e3850  f3 0f 10 56 04                 movss  xmm2,DWORD PTR [rsi+0x4]
2e3855  f3 0f 5c c7                    subss  xmm0,xmm7
2e3859  48 8d 4d 28                    lea    rcx,[rbp+0x28]
2e385d  f3 0f 11 45 2c                 movss  DWORD PTR [rbp+0x2c],xmm0
2e3862  e8 dd bd ff ff                 call   0x2df644
2e3867  f3 0f 10 15 6d a2 fa ff        movss  xmm2,DWORD PTR [rip+0xfffffffffffaa26d]        # 0x28dadc ; f32=0.03125
2e386f  48 8d 55 b8                    lea    rdx,[rbp-0x48]
2e3873  48 8b c8                       mov    rcx,rax
2e3876  e8 c9 bd ff ff                 call   0x2df644
2e387b  4c 8b c0                       mov    r8,rax
2e387e  48 8d 55 c0                    lea    rdx,[rbp-0x40]
2e3882  48 8d 4d 28                    lea    rcx,[rbp+0x28]
2e3886  e8 11 be ff ff                 call   0x2df69c
2e388b  f3 0f 10 4d 30                 movss  xmm1,DWORD PTR [rbp+0x30]
2e3890  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e3894  f2 0f 11 45 28                 movsd  QWORD PTR [rbp+0x28],xmm0
2e3899  f3 0f 10 45 34                 movss  xmm0,DWORD PTR [rbp+0x34]
2e389e  f3 0f 11 84 bb 00 05 00 00     movss  DWORD PTR [rbx+rdi*4+0x500],xmm0
2e38a7  f3 0f 11 0c bb                 movss  DWORD PTR [rbx+rdi*4],xmm1
2e38ac  0f 2f 8b 00 0a 00 00           comiss xmm1,DWORD PTR [rbx+0xa00]
2e38b3  76 08                          jbe    0x2e38bd
2e38b5  f3 0f 11 8b 00 0a 00 00        movss  DWORD PTR [rbx+0xa00],xmm1
2e38bd  ff c7                          inc    edi
2e38bf  81 ff 40 01 00 00              cmp    edi,0x140
2e38c5  0f 8c 22 ff ff ff              jl     0x2e37ed
2e38cb  0f 28 74 24 50                 movaps xmm6,XMMWORD PTR [rsp+0x50]
2e38d0  0f 28 7c 24 40                 movaps xmm7,XMMWORD PTR [rsp+0x40]
2e38d5  44 0f 28 4c 24 30              movaps xmm9,XMMWORD PTR [rsp+0x30]
2e38db  48 83 c4 68                    add    rsp,0x68
2e38df  5f                             pop    rdi
2e38e0  5e                             pop    rsi
2e38e1  5b                             pop    rbx
2e38e2  5d                             pop    rbp
2e38e3  c3                             ret
