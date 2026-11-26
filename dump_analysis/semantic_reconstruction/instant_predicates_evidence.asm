; pdata function 0x2f7dd0..0x2f8034 unwind=0x3d32a4
2f7dd0  48 8b c4                       mov    rax,rsp
2f7dd3  55                             push   rbp
2f7dd4  53                             push   rbx
2f7dd5  56                             push   rsi
2f7dd6  57                             push   rdi
2f7dd7  41 56                          push   r14
2f7dd9  48 8d 68 a1                    lea    rbp,[rax-0x5f]
2f7ddd  48 81 ec d0 00 00 00           sub    rsp,0xd0
2f7de4  80 3d cd 01 0e 00 00           cmp    BYTE PTR [rip+0xe01cd],0x0        # 0x3d7fb8 ; CONFIG Bools.instanthit value(+0x48)
2f7deb  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
2f7def  0f 29 78 b8                    movaps XMMWORD PTR [rax-0x48],xmm7
2f7df3  44 0f 29 40 a8                 movaps XMMWORD PTR [rax-0x58],xmm8
2f7df8  44 0f 29 48 98                 movaps XMMWORD PTR [rax-0x68],xmm9
2f7dfd  0f 84 09 02 00 00              je     0x2f800c
2f7e03  e8 94 5c fe ff                 call   0x2dda9c
2f7e08  48 8b c8                       mov    rcx,rax
2f7e0b  4c 8b f0                       mov    r14,rax
2f7e0e  e8 f5 30 fd ff                 call   0x2caf08
2f7e13  84 c0                          test   al,al
2f7e15  0f 84 f1 01 00 00              je     0x2f800c
2f7e1b  49 8b ce                       mov    rcx,r14
2f7e1e  e8 61 0c 07 00                 call   0x368a84
2f7e23  48 8b c8                       mov    rcx,rax
2f7e26  48 8b f0                       mov    rsi,rax
2f7e29  e8 da 30 fd ff                 call   0x2caf08
2f7e2e  84 c0                          test   al,al
2f7e30  0f 84 d6 01 00 00              je     0x2f800c
2f7e36  48 8b ce                       mov    rcx,rsi
2f7e39  e8 26 96 07 00                 call   0x371464
2f7e3e  48 8b c8                       mov    rcx,rax
2f7e41  48 8b d8                       mov    rbx,rax
2f7e44  e8 bf 30 fd ff                 call   0x2caf08
2f7e49  84 c0                          test   al,al
2f7e4b  0f 84 bb 01 00 00              je     0x2f800c
2f7e51  48 8b cb                       mov    rcx,rbx
2f7e54  e8 df 3a 07 00                 call   0x36b938
2f7e59  48 8b c8                       mov    rcx,rax
2f7e5c  48 8b f8                       mov    rdi,rax
2f7e5f  e8 a4 30 fd ff                 call   0x2caf08
2f7e64  84 c0                          test   al,al
2f7e66  0f 84 a0 01 00 00              je     0x2f800c
2f7e6c  f3 0f 10 bb ac 03 00 00        movss  xmm7,DWORD PTR [rbx+0x3ac]
2f7e74  48 8b ce                       mov    rcx,rsi
2f7e77  e8 d0 96 07 00                 call   0x37154c
2f7e7c  48 8b c8                       mov    rcx,rax
2f7e7f  48 8b d0                       mov    rdx,rax
2f7e82  e8 81 30 fd ff                 call   0x2caf08
2f7e87  84 c0                          test   al,al
2f7e89  74 1a                          je     0x2f7ea5
2f7e8b  48 8b ca                       mov    rcx,rdx
2f7e8e  e8 89 a7 07 00                 call   0x37261c
2f7e93  3d 71 3d b7 34                 cmp    eax,0x34b73d71
2f7e98  75 0b                          jne    0x2f7ea5
2f7e9a  48 8b cb                       mov    rcx,rbx
2f7e9d  e8 62 36 07 00                 call   0x36b504
2f7ea2  0f 28 f8                       movaps xmm7,xmm0
2f7ea5  f3 44 0f 10 47 44              movss  xmm8,DWORD PTR [rdi+0x44]
2f7eab  f3 44 0f 10 4f 40              movss  xmm9,DWORD PTR [rdi+0x40]
2f7eb1  e8 fa 83 fe ff                 call   0x2e02b0
2f7eb6  48 8b c8                       mov    rcx,rax
2f7eb9  48 8b f8                       mov    rdi,rax
2f7ebc  e8 47 30 fd ff                 call   0x2caf08
2f7ec1  84 c0                          test   al,al
2f7ec3  0f 84 43 01 00 00              je     0x2f800c
2f7ec9  48 8b cf                       mov    rcx,rdi
2f7ecc  e8 cb 8f fe ff                 call   0x2e0e9c
2f7ed1  84 c0                          test   al,al
2f7ed3  0f 84 33 01 00 00              je     0x2f800c
2f7ed9  48 8d 55 97                    lea    rdx,[rbp-0x69]
2f7edd  48 8b cf                       mov    rcx,rdi
2f7ee0  e8 ab 18 07 00                 call   0x369790
2f7ee5  48 8d 4d b7                    lea    rcx,[rbp-0x49]
2f7ee9  e8 ce fc 0c 00                 call   0x3c7bbc
2f7eee  48 8b d0                       mov    rdx,rax
2f7ef1  48 8d 4d 97                    lea    rcx,[rbp-0x69]
2f7ef5  e8 b6 76 fe ff                 call   0x2df5b0
2f7efa  84 c0                          test   al,al
2f7efc  0f 85 0a 01 00 00              jne    0x2f800c
2f7f02  e8 65 eb fe ff                 call   0x2e6a6c
2f7f07  48 8d 55 e7                    lea    rdx,[rbp-0x19]
2f7f0b  49 8b ce                       mov    rcx,r14
2f7f0e  8b d8                          mov    ebx,eax
2f7f10  e8 4f 12 07 00                 call   0x369164
2f7f15  0f 57 f6                       xorps  xmm6,xmm6
2f7f18  48 8d 55 a7                    lea    rdx,[rbp-0x59]
2f7f1c  0f 57 db                       xorps  xmm3,xmm3
2f7f1f  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
2f7f25  44 8b c3                       mov    r8d,ebx
2f7f28  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
2f7f2b  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2f7f2f  89 4d af                       mov    DWORD PTR [rbp-0x51],ecx
2f7f32  8b 4d 9f                       mov    ecx,DWORD PTR [rbp-0x61]
2f7f35  f2 0f 11 45 a7                 movsd  QWORD PTR [rbp-0x59],xmm0
2f7f3a  f2 0f 10 45 97                 movsd  xmm0,QWORD PTR [rbp-0x69]
2f7f3f  89 4d bf                       mov    DWORD PTR [rbp-0x41],ecx
2f7f42  48 8d 4d b7                    lea    rcx,[rbp-0x49]
2f7f46  f2 0f 11 45 b7                 movsd  QWORD PTR [rbp-0x49],xmm0
2f7f4b  e8 d0 a3 fe ff                 call   0x2e2320
2f7f50  8a 0d 02 01 0e 00              mov    cl,BYTE PTR [rip+0xe0102]        # 0x3d8058 ; CONFIG Bools.DoFatBulletHit value(+0x48)
2f7f56  84 c0                          test   al,al
2f7f58  75 08                          jne    0x2f7f62
2f7f5a  84 c9                          test   cl,cl
2f7f5c  0f 84 aa 00 00 00              je     0x2f800c
2f7f62  80 3d 10 df 0e 00 00           cmp    BYTE PTR [rip+0xedf10],0x0        # 0x3e5e79
2f7f69  75 08                          jne    0x2f7f73
2f7f6b  84 c9                          test   cl,cl
2f7f6d  0f 85 99 00 00 00              jne    0x2f800c
2f7f73  48 8d 55 d7                    lea    rdx,[rbp-0x29]
2f7f77  49 8b ce                       mov    rcx,r14
2f7f7a  e8 e5 11 07 00                 call   0x369164
2f7f7f  41 b8 07 00 00 00              mov    r8d,0x7
2f7f85  48 8d 55 e7                    lea    rdx,[rbp-0x19]
2f7f89  48 8b cf                       mov    rcx,rdi
2f7f8c  e8 57 0c 07 00                 call   0x368be8
2f7f91  f3 0f 10 15 c3 b2 f9 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff9b2c3]        # 0x29325c ; f32=-0.9
2f7f99  48 8d 4d b7                    lea    rcx,[rbp-0x49]
2f7f9d  0f 57 db                       xorps  xmm3,xmm3
2f7fa0  0f 57 c9                       xorps  xmm1,xmm1
2f7fa3  48 8b d8                       mov    rbx,rax
2f7fa6  e8 fd fb 0c 00                 call   0x3c7ba8
2f7fab  4c 8b c0                       mov    r8,rax
2f7fae  48 8d 55 c7                    lea    rdx,[rbp-0x39]
2f7fb2  48 8b cb                       mov    rcx,rbx
2f7fb5  e8 4e 77 fe ff                 call   0x2df708
2f7fba  48 8d 55 c7                    lea    rdx,[rbp-0x39]
2f7fbe  48 8d 4d d7                    lea    rcx,[rbp-0x29]
2f7fc2  e8 69 7f fe ff                 call   0x2dff30
2f7fc7  f3 45 0f 58 c1                 addss  xmm8,xmm9
2f7fcc  48 8b ce                       mov    rcx,rsi
2f7fcf  0f 28 f0                       movaps xmm6,xmm0
2f7fd2  f3 44 0f 59 c7                 mulss  xmm8,xmm7
2f7fd7  f3 44 0f 59 05 18 5b f9 ff     mulss  xmm8,DWORD PTR [rip+0xfffffffffff95b18]        # 0x28daf8 ; f32=1.495
2f7fe0  f3 44 0f 59 05 0b b1 f9 ff     mulss  xmm8,DWORD PTR [rip+0xfffffffffff9b10b]        # 0x2930f4 ; f32=1.245
2f7fe9  e8 72 3b 03 00                 call   0x32bb60
2f7fee  f3 41 0f 58 c0                 addss  xmm0,xmm8
2f7ff3  0f 2f c6                       comiss xmm0,xmm6
2f7ff6  76 14                          jbe    0x2f800c
2f7ff8  f3 0f 10 05 cc 61 f9 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff961cc]        # 0x28e1cc ; f32=0.95
2f8000  0f 2f 05 4d c2 0e 00           comiss xmm0,DWORD PTR [rip+0xec24d]        # 0x3e4254
2f8007  0f 97 c0                       seta   al
2f800a  eb 02                          jmp    0x2f800e
2f800c  32 c0                          xor    al,al
2f800e  4c 8d 9c 24 d0 00 00 00        lea    r11,[rsp+0xd0]
2f8016  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
2f801b  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
2f8020  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
2f8025  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
2f802a  49 8b e3                       mov    rsp,r11
2f802d  41 5e                          pop    r14
2f802f  5f                             pop    rdi
2f8030  5e                             pop    rsi
2f8031  5b                             pop    rbx
2f8032  5d                             pop    rbp
2f8033  c3                             ret

; pdata function 0x2f824c..0x2f84e8 unwind=0x3d31cc
2f824c  48 8b c4                       mov    rax,rsp
2f824f  55                             push   rbp
2f8250  53                             push   rbx
2f8251  56                             push   rsi
2f8252  57                             push   rdi
2f8253  41 56                          push   r14
2f8255  48 8d 68 a1                    lea    rbp,[rax-0x5f]
2f8259  48 81 ec e0 00 00 00           sub    rsp,0xe0
2f8260  80 3d 51 fd 0d 00 00           cmp    BYTE PTR [rip+0xdfd51],0x0        # 0x3d7fb8 ; CONFIG Bools.instanthit value(+0x48)
2f8267  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
2f826b  0f 29 78 b8                    movaps XMMWORD PTR [rax-0x48],xmm7
2f826f  44 0f 29 40 a8                 movaps XMMWORD PTR [rax-0x58],xmm8
2f8274  44 0f 29 48 98                 movaps XMMWORD PTR [rax-0x68],xmm9
2f8279  44 0f 29 50 88                 movaps XMMWORD PTR [rax-0x78],xmm10
2f827e  0f 84 37 02 00 00              je     0x2f84bb
2f8284  e8 13 58 fe ff                 call   0x2dda9c
2f8289  48 8b c8                       mov    rcx,rax
2f828c  4c 8b f0                       mov    r14,rax
2f828f  e8 74 2c fd ff                 call   0x2caf08
2f8294  84 c0                          test   al,al
2f8296  0f 84 1f 02 00 00              je     0x2f84bb
2f829c  49 8b ce                       mov    rcx,r14
2f829f  e8 e0 07 07 00                 call   0x368a84
2f82a4  48 8b c8                       mov    rcx,rax
2f82a7  48 8b f0                       mov    rsi,rax
2f82aa  e8 59 2c fd ff                 call   0x2caf08
2f82af  84 c0                          test   al,al
2f82b1  0f 84 04 02 00 00              je     0x2f84bb
2f82b7  48 8b ce                       mov    rcx,rsi
2f82ba  e8 a5 91 07 00                 call   0x371464
2f82bf  48 8b c8                       mov    rcx,rax
2f82c2  48 8b d8                       mov    rbx,rax
2f82c5  e8 3e 2c fd ff                 call   0x2caf08
2f82ca  84 c0                          test   al,al
2f82cc  0f 84 e9 01 00 00              je     0x2f84bb
2f82d2  48 8b cb                       mov    rcx,rbx
2f82d5  e8 5e 36 07 00                 call   0x36b938
2f82da  48 8b c8                       mov    rcx,rax
2f82dd  48 8b f8                       mov    rdi,rax
2f82e0  e8 23 2c fd ff                 call   0x2caf08
2f82e5  84 c0                          test   al,al
2f82e7  0f 84 ce 01 00 00              je     0x2f84bb
2f82ed  f3 44 0f 10 83 ac 03 00 00     movss  xmm8,DWORD PTR [rbx+0x3ac]
2f82f6  48 8b ce                       mov    rcx,rsi
2f82f9  e8 4e 92 07 00                 call   0x37154c
2f82fe  48 8b c8                       mov    rcx,rax
2f8301  48 8b d0                       mov    rdx,rax
2f8304  e8 ff 2b fd ff                 call   0x2caf08
2f8309  84 c0                          test   al,al
2f830b  74 1b                          je     0x2f8328
2f830d  48 8b ca                       mov    rcx,rdx
2f8310  e8 07 a3 07 00                 call   0x37261c
2f8315  3d 71 3d b7 34                 cmp    eax,0x34b73d71
2f831a  75 0c                          jne    0x2f8328
2f831c  48 8b cb                       mov    rcx,rbx
2f831f  e8 e0 31 07 00                 call   0x36b504
2f8324  44 0f 28 c0                    movaps xmm8,xmm0
2f8328  f3 44 0f 10 4f 44              movss  xmm9,DWORD PTR [rdi+0x44]
2f832e  f3 44 0f 10 57 40              movss  xmm10,DWORD PTR [rdi+0x40]
2f8334  e8 77 7f fe ff                 call   0x2e02b0
2f8339  48 8b c8                       mov    rcx,rax
2f833c  48 8b f8                       mov    rdi,rax
2f833f  e8 c4 2b fd ff                 call   0x2caf08
2f8344  84 c0                          test   al,al
2f8346  0f 84 6f 01 00 00              je     0x2f84bb
2f834c  48 8b cf                       mov    rcx,rdi
2f834f  e8 48 8b fe ff                 call   0x2e0e9c
2f8354  84 c0                          test   al,al
2f8356  0f 84 5f 01 00 00              je     0x2f84bb
2f835c  48 8d 55 87                    lea    rdx,[rbp-0x79]
2f8360  48 8b cf                       mov    rcx,rdi
2f8363  e8 28 14 07 00                 call   0x369790
2f8368  48 8d 4d a7                    lea    rcx,[rbp-0x59]
2f836c  e8 4b f8 0c 00                 call   0x3c7bbc
2f8371  48 8b d0                       mov    rdx,rax
2f8374  48 8d 4d 87                    lea    rcx,[rbp-0x79]
2f8378  e8 33 72 fe ff                 call   0x2df5b0
2f837d  84 c0                          test   al,al
2f837f  0f 85 36 01 00 00              jne    0x2f84bb
2f8385  e8 e2 e6 fe ff                 call   0x2e6a6c
2f838a  48 8d 55 d7                    lea    rdx,[rbp-0x29]
2f838e  49 8b ce                       mov    rcx,r14
2f8391  8b d8                          mov    ebx,eax
2f8393  e8 cc 0d 07 00                 call   0x369164
2f8398  0f 57 f6                       xorps  xmm6,xmm6
2f839b  48 8d 55 97                    lea    rdx,[rbp-0x69]
2f839f  0f 57 db                       xorps  xmm3,xmm3
2f83a2  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
2f83a8  44 8b c3                       mov    r8d,ebx
2f83ab  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
2f83ae  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2f83b2  89 4d 9f                       mov    DWORD PTR [rbp-0x61],ecx
2f83b5  8b 4d 8f                       mov    ecx,DWORD PTR [rbp-0x71]
2f83b8  f2 0f 11 45 97                 movsd  QWORD PTR [rbp-0x69],xmm0
2f83bd  f2 0f 10 45 87                 movsd  xmm0,QWORD PTR [rbp-0x79]
2f83c2  89 4d af                       mov    DWORD PTR [rbp-0x51],ecx
2f83c5  48 8d 4d a7                    lea    rcx,[rbp-0x59]
2f83c9  f2 0f 11 45 a7                 movsd  QWORD PTR [rbp-0x59],xmm0
2f83ce  e8 4d 9f fe ff                 call   0x2e2320
2f83d3  8a 0d 7f fc 0d 00              mov    cl,BYTE PTR [rip+0xdfc7f]        # 0x3d8058 ; CONFIG Bools.DoFatBulletHit value(+0x48)
2f83d9  84 c0                          test   al,al
2f83db  75 08                          jne    0x2f83e5
2f83dd  84 c9                          test   cl,cl
2f83df  0f 84 d6 00 00 00              je     0x2f84bb
2f83e5  80 3d 8d da 0e 00 00           cmp    BYTE PTR [rip+0xeda8d],0x0        # 0x3e5e79
2f83ec  75 08                          jne    0x2f83f6
2f83ee  84 c9                          test   cl,cl
2f83f0  0f 85 c5 00 00 00              jne    0x2f84bb
2f83f6  48 8d 55 c7                    lea    rdx,[rbp-0x39]
2f83fa  49 8b ce                       mov    rcx,r14
2f83fd  e8 62 0d 07 00                 call   0x369164
2f8402  41 b8 07 00 00 00              mov    r8d,0x7
2f8408  48 8d 55 d7                    lea    rdx,[rbp-0x29]
2f840c  48 8b cf                       mov    rcx,rdi
2f840f  e8 d4 07 07 00                 call   0x368be8
2f8414  f3 0f 10 15 40 ae f9 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff9ae40]        # 0x29325c ; f32=-0.9
2f841c  48 8d 4d a7                    lea    rcx,[rbp-0x59]
2f8420  0f 57 db                       xorps  xmm3,xmm3
2f8423  0f 57 c9                       xorps  xmm1,xmm1
2f8426  48 8b d8                       mov    rbx,rax
2f8429  e8 7a f7 0c 00                 call   0x3c7ba8
2f842e  4c 8b c0                       mov    r8,rax
2f8431  48 8d 55 b7                    lea    rdx,[rbp-0x49]
2f8435  48 8b cb                       mov    rcx,rbx
2f8438  e8 cb 72 fe ff                 call   0x2df708
2f843d  48 8d 55 b7                    lea    rdx,[rbp-0x49]
2f8441  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2f8445  e8 e6 7a fe ff                 call   0x2dff30
2f844a  f3 0f 10 35 9a ee 0d 00        movss  xmm6,DWORD PTR [rip+0xdee9a]        # 0x3d72ec
2f8452  f3 45 0f 58 ca                 addss  xmm9,xmm10
2f8457  f3 0f 58 35 81 56 f9 ff        addss  xmm6,DWORD PTR [rip+0xfffffffffff95681]        # 0x28dae0 ; f32=0.0333333
2f845f  48 8b ce                       mov    rcx,rsi
2f8462  0f 28 f8                       movaps xmm7,xmm0
2f8465  f3 45 0f 59 c8                 mulss  xmm9,xmm8
2f846a  f3 0f 59 35 8a 56 f9 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff9568a]        # 0x28dafc ; f32=1.5
2f8472  f3 44 0f 59 0d 7d 56 f9 ff     mulss  xmm9,DWORD PTR [rip+0xfffffffffff9567d]        # 0x28daf8 ; f32=1.495
2f847b  f3 0f 58 35 61 56 f9 ff        addss  xmm6,DWORD PTR [rip+0xfffffffffff95661]        # 0x28dae4 ; f32=0.1
2f8483  f3 41 0f 59 f1                 mulss  xmm6,xmm9
2f8488  e8 d3 36 03 00                 call   0x32bb60
2f848d  f3 0f 58 c6                    addss  xmm0,xmm6
2f8491  0f 2f c7                       comiss xmm0,xmm7
2f8494  76 25                          jbe    0x2f84bb
2f8496  f3 0f 10 05 2e 5d f9 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff95d2e]        # 0x28e1cc ; f32=0.95
2f849e  0f 2f 05 af bd 0e 00           comiss xmm0,DWORD PTR [rip+0xebdaf]        # 0x3e4254
2f84a5  76 14                          jbe    0x2f84bb
2f84a7  f3 0f 10 05 21 ac f9 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff9ac21]        # 0x2930d0 ; f32=0.73
2f84af  0f 2f 05 36 ee 0d 00           comiss xmm0,DWORD PTR [rip+0xdee36]        # 0x3d72ec
2f84b6  0f 93 c0                       setae  al
2f84b9  eb 02                          jmp    0x2f84bd
2f84bb  32 c0                          xor    al,al
2f84bd  4c 8d 9c 24 e0 00 00 00        lea    r11,[rsp+0xe0]
2f84c5  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
2f84ca  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
2f84cf  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
2f84d4  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
2f84d9  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
2f84de  49 8b e3                       mov    rsp,r11
2f84e1  41 5e                          pop    r14
2f84e3  5f                             pop    rdi
2f84e4  5e                             pop    rsi
2f84e5  5b                             pop    rbx
2f84e6  5d                             pop    rbp
2f84e7  c3                             ret

