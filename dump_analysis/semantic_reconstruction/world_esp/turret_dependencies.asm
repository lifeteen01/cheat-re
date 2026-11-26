; pdata function 0x320db4..0x320f57 unwind=0x3d2f60
320db4  48 8b c4                       mov    rax,rsp
320db7  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
320dbb  57                             push   rdi
320dbc  48 81 ec b0 00 00 00           sub    rsp,0xb0
320dc3  f3 41 0f 10 40 04              movss  xmm0,DWORD PTR [r8+0x4]
320dc9  48 8b da                       mov    rbx,rdx
320dcc  0f 29 70 e8                    movaps XMMWORD PTR [rax-0x18],xmm6
320dd0  48 8b f9                       mov    rdi,rcx
320dd3  0f 29 78 d8                    movaps XMMWORD PTR [rax-0x28],xmm7
320dd7  44 0f 29 40 c8                 movaps XMMWORD PTR [rax-0x38],xmm8
320ddc  44 0f 29 48 b8                 movaps XMMWORD PTR [rax-0x48],xmm9
320de1  f3 45 0f 10 48 08              movss  xmm9,DWORD PTR [r8+0x8]
320de7  44 0f 29 50 a8                 movaps XMMWORD PTR [rax-0x58],xmm10
320dec  f3 45 0f 58 c9                 addss  xmm9,xmm9
320df1  44 0f 29 58 98                 movaps XMMWORD PTR [rax-0x68],xmm11
320df6  44 0f 29 60 88                 movaps XMMWORD PTR [rax-0x78],xmm12
320dfb  44 0f 29 6c 24 30              movaps XMMWORD PTR [rsp+0x30],xmm13
320e01  44 0f 28 e8                    movaps xmm13,xmm0
320e05  44 0f 29 74 24 20              movaps XMMWORD PTR [rsp+0x20],xmm14
320e0b  f3 44 0f 58 e8                 addss  xmm13,xmm0
320e10  f3 45 0f 10 30                 movss  xmm14,DWORD PTR [r8]
320e15  41 0f 28 f1                    movaps xmm6,xmm9
320e19  f3 41 0f 59 70 08              mulss  xmm6,DWORD PTR [r8+0x8]
320e1f  f3 45 0f 58 f6                 addss  xmm14,xmm14
320e24  45 0f 28 d1                    movaps xmm10,xmm9
320e28  45 0f 28 c1                    movaps xmm8,xmm9
320e2c  f3 45 0f 59 10                 mulss  xmm10,DWORD PTR [r8]
320e31  45 0f 28 dd                    movaps xmm11,xmm13
320e35  f3 45 0f 59 48 0c              mulss  xmm9,DWORD PTR [r8+0xc]
320e3b  41 0f 28 fd                    movaps xmm7,xmm13
320e3f  f3 41 0f 59 38                 mulss  xmm7,DWORD PTR [r8]
320e44  45 0f 28 e6                    movaps xmm12,xmm14
320e48  f3 45 0f 59 20                 mulss  xmm12,DWORD PTR [r8]
320e4d  f3 45 0f 59 70 0c              mulss  xmm14,DWORD PTR [r8+0xc]
320e53  f3 45 0f 59 68 0c              mulss  xmm13,DWORD PTR [r8+0xc]
320e59  f3 44 0f 59 d8                 mulss  xmm11,xmm0
320e5e  f3 44 0f 59 c0                 mulss  xmm8,xmm0
320e63  e8 54 6d 0a 00                 call   0x3c7bbc
320e68  f3 0f 10 25 e4 c3 f6 ff        movss  xmm4,DWORD PTR [rip+0xfffffffffff6c3e4]        # 0x28d254 ; f32=1
320e70  4c 8d 9c 24 b0 00 00 00        lea    r11,[rsp+0xb0]
320e78  0f 28 c6                       movaps xmm0,xmm6
320e7b  0f 28 cc                       movaps xmm1,xmm4
320e7e  f3 41 0f 58 c3                 addss  xmm0,xmm11
320e83  0f 28 d7                       movaps xmm2,xmm7
320e86  f3 41 0f 5c d1                 subss  xmm2,xmm9
320e8b  41 0f 28 dd                    movaps xmm3,xmm13
320e8f  f3 41 0f 58 da                 addss  xmm3,xmm10
320e94  48 8b c7                       mov    rax,rdi
320e97  f3 41 0f 58 f4                 addss  xmm6,xmm12
320e9c  f3 44 0f 58 cf                 addss  xmm9,xmm7
320ea1  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
320ea6  f3 0f 5c c8                    subss  xmm1,xmm0
320eaa  41 0f 28 c0                    movaps xmm0,xmm8
320eae  f3 0f 59 53 04                 mulss  xmm2,DWORD PTR [rbx+0x4]
320eb3  f3 41 0f 5c c6                 subss  xmm0,xmm14
320eb8  f3 0f 59 5b 08                 mulss  xmm3,DWORD PTR [rbx+0x8]
320ebd  f3 45 0f 58 f0                 addss  xmm14,xmm8
320ec2  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
320ec7  f3 45 0f 58 dc                 addss  xmm11,xmm12
320ecc  f3 0f 59 0b                    mulss  xmm1,DWORD PTR [rbx]
320ed0  f3 45 0f 5c d5                 subss  xmm10,xmm13
320ed5  45 0f 28 63 90                 movaps xmm12,XMMWORD PTR [r11-0x70]
320eda  f3 0f 58 ca                    addss  xmm1,xmm2
320ede  f3 0f 58 cb                    addss  xmm1,xmm3
320ee2  f3 0f 11 0f                    movss  DWORD PTR [rdi],xmm1
320ee6  0f 28 cc                       movaps xmm1,xmm4
320ee9  f3 44 0f 59 0b                 mulss  xmm9,DWORD PTR [rbx]
320eee  f3 0f 5c ce                    subss  xmm1,xmm6
320ef2  f3 0f 59 43 08                 mulss  xmm0,DWORD PTR [rbx+0x8]
320ef7  f3 41 0f 5c e3                 subss  xmm4,xmm11
320efc  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
320f01  f3 0f 59 4b 04                 mulss  xmm1,DWORD PTR [rbx+0x4]
320f06  45 0f 28 5b a0                 movaps xmm11,XMMWORD PTR [r11-0x60]
320f0b  f3 41 0f 58 c9                 addss  xmm1,xmm9
320f10  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
320f15  f3 0f 58 c8                    addss  xmm1,xmm0
320f19  f3 0f 11 4f 04                 movss  DWORD PTR [rdi+0x4],xmm1
320f1e  f3 44 0f 59 73 04              mulss  xmm14,DWORD PTR [rbx+0x4]
320f24  f3 44 0f 59 13                 mulss  xmm10,DWORD PTR [rbx]
320f29  f3 0f 59 63 08                 mulss  xmm4,DWORD PTR [rbx+0x8]
320f2e  49 8b 5b 10                    mov    rbx,QWORD PTR [r11+0x10]
320f32  f3 45 0f 58 f2                 addss  xmm14,xmm10
320f37  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
320f3c  f3 44 0f 58 f4                 addss  xmm14,xmm4
320f41  f3 44 0f 11 77 08              movss  DWORD PTR [rdi+0x8],xmm14
320f47  45 0f 28 6b 80                 movaps xmm13,XMMWORD PTR [r11-0x80]
320f4c  44 0f 28 74 24 20              movaps xmm14,XMMWORD PTR [rsp+0x20]
320f52  49 8b e3                       mov    rsp,r11
320f55  5f                             pop    rdi
320f56  c3                             ret

; pdata function 0x2e8fac..0x2e90d5 unwind=0x3d2c94
2e8fac  40 53                          rex push rbx
2e8fae  55                             push   rbp
2e8faf  56                             push   rsi
2e8fb0  57                             push   rdi
2e8fb1  41 56                          push   r14
2e8fb3  48 83 ec 70                    sub    rsp,0x70
2e8fb7  8b 05 6b c7 0f 00              mov    eax,DWORD PTR [rip+0xfc76b]        # 0x3e5728
2e8fbd  41 8b f1                       mov    esi,r9d
2e8fc0  0f 29 74 24 60                 movaps XMMWORD PTR [rsp+0x60],xmm6
2e8fc5  0f 28 f2                       movaps xmm6,xmm2
2e8fc8  48 8b ea                       mov    rbp,rdx
2e8fcb  4c 8b f1                       mov    r14,rcx
2e8fce  a8 01                          test   al,0x1
2e8fd0  0f 85 85 00 00 00              jne    0x2e905b
2e8fd6  83 c8 01                       or     eax,0x1
2e8fd9  48 8d 54 24 41                 lea    rdx,[rsp+0x41]
2e8fde  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2e8fe3  89 05 3f c7 0f 00              mov    DWORD PTR [rip+0xfc73f],eax        # 0x3e5728
2e8fe9  e8 9e c7 ff ff                 call   0x2e578c
2e8fee  48 8b c8                       mov    rcx,rax
2e8ff1  e8 42 41 ff ff                 call   0x2dd138
2e8ff6  48 8d 54 24 51                 lea    rdx,[rsp+0x51]
2e8ffb  48 8b f8                       mov    rdi,rax
2e8ffe  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2e9003  e8 d0 c5 ff ff                 call   0x2e55d8 ; STRING getter=0x2e55d8 UnityEngine
2e9008  48 8b c8                       mov    rcx,rax
2e900b  e8 fc 4d fe ff                 call   0x2cde0c
2e9010  48 8d 54 24 49                 lea    rdx,[rsp+0x49]
2e9015  48 8b d8                       mov    rbx,rax
2e9018  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2e901d  e8 5a c4 ff ff                 call   0x2e547c
2e9022  48 8b c8                       mov    rcx,rax
2e9025  e8 0e 41 ff ff                 call   0x2dd138
2e902a  48 8b c8                       mov    rcx,rax
2e902d  48 8b d3                       mov    rdx,rbx
2e9030  e8 ef b1 04 00                 call   0x334224
2e9035  48 8b c8                       mov    rcx,rax
2e9038  41 b1 01                       mov    r9b,0x1
2e903b  41 b8 06 00 00 00              mov    r8d,0x6
2e9041  48 8b d7                       mov    rdx,rdi
2e9044  e8 47 ba 04 00                 call   0x334a90
2e9049  4c 8b 00                       mov    r8,QWORD PTR [rax]
2e904c  8b 05 d6 c6 0f 00              mov    eax,DWORD PTR [rip+0xfc6d6]        # 0x3e5728
2e9052  4c 89 05 c7 c6 0f 00           mov    QWORD PTR [rip+0xfc6c7],r8        # 0x3e5720
2e9059  eb 07                          jmp    0x2e9062
2e905b  4c 8b 05 be c6 0f 00           mov    r8,QWORD PTR [rip+0xfc6be]        # 0x3e5720
2e9062  a8 02                          test   al,0x2
2e9064  75 1f                          jne    0x2e9085
2e9066  48 8b 0d f3 cd 0e 00           mov    rcx,QWORD PTR [rip+0xecdf3]        # 0x3d5e60
2e906d  48 8d 15 bc c6 0f 00           lea    rdx,[rip+0xfc6bc]        # 0x3e5730
2e9074  83 c8 02                       or     eax,0x2
2e9077  45 33 c9                       xor    r9d,r9d
2e907a  89 05 a8 c6 0f 00              mov    DWORD PTR [rip+0xfc6a8],eax        # 0x3e5728
2e9080  e8 9f 2c fe ff                 call   0x2cbd24
2e9085  8b 84 24 c8 00 00 00           mov    eax,DWORD PTR [rsp+0xc8]
2e908c  48 8d 15 9d c6 0f 00           lea    rdx,[rip+0xfc69d]        # 0x3e5730
2e9093  48 8b 0d c6 cd 0e 00           mov    rcx,QWORD PTR [rip+0xecdc6]        # 0x3d5e60
2e909a  4c 8b cd                       mov    r9,rbp
2e909d  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2e90a1  4d 8b c6                       mov    r8,r14
2e90a4  48 8b 84 24 c0 00 00 00        mov    rax,QWORD PTR [rsp+0xc0]
2e90ac  89 74 24 30                    mov    DWORD PTR [rsp+0x30],esi
2e90b0  f3 0f 11 74 24 28              movss  DWORD PTR [rsp+0x28],xmm6
2e90b6  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
2e90bb  e8 7c b6 ff ff                 call   0x2e473c
2e90c0  0f 28 74 24 60                 movaps xmm6,XMMWORD PTR [rsp+0x60]
2e90c5  84 c0                          test   al,al
2e90c7  0f 95 c0                       setne  al
2e90ca  48 83 c4 70                    add    rsp,0x70
2e90ce  41 5e                          pop    r14
2e90d0  5f                             pop    rdi
2e90d1  5e                             pop    rsi
2e90d2  5d                             pop    rbp
2e90d3  5b                             pop    rbx
2e90d4  c3                             ret

; pdata function 0x316574..0x316fce unwind=0x3d2d5c
316574  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
316579  55                             push   rbp
31657a  48 8b ec                       mov    rbp,rsp
31657d  48 83 ec 40                    sub    rsp,0x40
316581  b8 ba 6c 19 ff                 mov    eax,0xff196cba
316586  48 8b d9                       mov    rbx,rcx
316589  3b d0                          cmp    edx,eax
31658b  0f 8f 38 05 00 00              jg     0x316ac9
316591  0f 84 20 05 00 00              je     0x316ab7
316597  b8 c0 8a 6a ca                 mov    eax,0xca6a8ac0
31659c  3b d0                          cmp    edx,eax
31659e  0f 8f d1 02 00 00              jg     0x316875
3165a4  0f 84 b9 02 00 00              je     0x316863
3165aa  b8 6a af 90 a2                 mov    eax,0xa290af6a
3165af  3b d0                          cmp    edx,eax
3165b1  0f 8f 6d 01 00 00              jg     0x316724
3165b7  0f 84 55 01 00 00              je     0x316712
3165bd  b8 77 9b b9 97                 mov    eax,0x97b99b77
3165c2  3b d0                          cmp    edx,eax
3165c4  0f 8f c7 00 00 00              jg     0x316691
3165ca  0f 84 a7 00 00 00              je     0x316677
3165d0  81 fa 3e 38 66 80              cmp    edx,0x8066383e
3165d6  0f 84 81 00 00 00              je     0x31665d
3165dc  81 fa f9 be be 81              cmp    edx,0x81bebef9
3165e2  74 5f                          je     0x316643
3165e4  81 fa de b0 b9 88              cmp    edx,0x88b9b0de
3165ea  74 48                          je     0x316634
3165ec  81 fa 39 77 10 90              cmp    edx,0x90107739
3165f2  74 26                          je     0x31661a
3165f4  81 fa 50 35 ac 93              cmp    edx,0x93ac3550
3165fa  0f 85 f1 08 00 00              jne    0x316ef1
316600  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316604  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316608  e8 d3 0c fe ff                 call   0x2f72e0 ; STRING getter=0x2f72e0 Revolver
31660d  48 8b c8                       mov    rcx,rax
316610  e8 ef 1e fc ff                 call   0x2d8504
316615  e9 9b 09 00 00                 jmp    0x316fb5
31661a  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31661e  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316622  e8 e1 f9 fd ff                 call   0x2f6008 ; STRING getter=0x2f6008 M4 Shotgun
316627  48 8b c8                       mov    rcx,rax
31662a  e8 9d 1f fc ff                 call   0x2d85cc
31662f  e9 81 09 00 00                 jmp    0x316fb5
316634  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316638  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31663c  e8 ab 16 fe ff                 call   0x2f7cec ; STRING getter=0x2f7cec M92 Pistol
316641  eb e4                          jmp    0x316627
316643  48 8d 55 20                    lea    rdx,[rbp+0x20]
316647  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31664b  e8 10 b2 fd ff                 call   0x2f1860 ; STRING getter=0x2f1860 Eoka
316650  48 8b c8                       mov    rcx,rax
316653  e8 94 cf fc ff                 call   0x2e35ec
316658  e9 58 09 00 00                 jmp    0x316fb5
31665d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316661  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316665  e8 02 bc fd ff                 call   0x2f226c ; STRING getter=0x2f226c High Caliber Revolver
31666a  48 8b c8                       mov    rcx,rax
31666d  e8 f2 cf fc ff                 call   0x2e3664
316672  e9 3e 09 00 00                 jmp    0x316fb5
316677  48 8d 55 18                    lea    rdx,[rbp+0x18]
31667b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31667f  e8 a4 c5 fd ff                 call   0x2f2c28 ; STRING getter=0x2f2c28 MP5
316684  48 8b c8                       mov    rcx,rax
316687  e8 5c 6a fc ff                 call   0x2dd0e8
31668c  e9 24 09 00 00                 jmp    0x316fb5
316691  81 fa 4d 20 75 98              cmp    edx,0x9875204d
316697  74 5f                          je     0x3166f8
316699  81 fa 19 a4 2c 9c              cmp    edx,0x9c2ca419
31669f  74 48                          je     0x3166e9
3166a1  81 fa a1 36 3c 9f              cmp    edx,0x9f3c36a1
3166a7  74 26                          je     0x3166cf
3166a9  81 fa 44 b2 ba a0              cmp    edx,0xa0bab244
3166af  0f 85 3c 08 00 00              jne    0x316ef1
3166b5  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3166b9  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3166bd  e8 2a b6 fd ff                 call   0x2f1cec ; STRING getter=0x2f1cec Waterpipe
3166c2  48 8b c8                       mov    rcx,rax
3166c5  e8 52 76 fb ff                 call   0x2cdd1c
3166ca  e9 e6 08 00 00                 jmp    0x316fb5
3166cf  48 8d 55 20                    lea    rdx,[rbp+0x20]
3166d3  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3166d7  e8 38 d2 fd ff                 call   0x2f3914
3166dc  48 8b c8                       mov    rcx,rax
3166df  e8 54 6a fc ff                 call   0x2dd138
3166e4  e9 cc 08 00 00                 jmp    0x316fb5
3166e9  48 8d 55 18                    lea    rdx,[rbp+0x18]
3166ed  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3166f1  e8 8a a1 fd ff                 call   0x2f0880 ; STRING getter=0x2f0880 L96
3166f6  eb 8c                          jmp    0x316684
3166f8  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3166fc  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316700  e8 83 d7 fd ff                 call   0x2f3e88 ; STRING getter=0x2f3e88 Blunderbuss
316705  48 8b c8                       mov    rcx,rax
316708  e8 ff 76 fb ff                 call   0x2cde0c
31670d  e9 a3 08 00 00                 jmp    0x316fb5
316712  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316716  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31671a  e8 61 e7 fd ff                 call   0x2f4e80 ; STRING getter=0x2f4e80 Crossbow
31671f  e9 e9 fe ff ff                 jmp    0x31660d
316724  b8 c2 4a 44 be                 mov    eax,0xbe444ac2
316729  3b d0                          cmp    edx,eax
31672b  0f 8f b6 00 00 00              jg     0x3167e7
316731  0f 84 96 00 00 00              je     0x3167cd
316737  81 fa 0f 32 98 a8              cmp    edx,0xa898320f
31673d  74 74                          je     0x3167b3
31673f  81 fa 69 fc 0e a9              cmp    edx,0xa90efc69
316745  74 5a                          je     0x3167a1
316747  81 fa 7c 20 81 ae              cmp    edx,0xae81207c
31674d  74 40                          je     0x31678f
31674f  81 fa 01 1f 63 af              cmp    edx,0xaf631f01
316755  74 26                          je     0x31677d
316757  81 fa 83 e4 f5 b4              cmp    edx,0xb4f5e483
31675d  0f 85 8e 07 00 00              jne    0x316ef1
316763  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316767  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31676b  e8 90 d3 fd ff                 call   0x2f3b00 ; STRING getter=0x2f3b00 Rocket Launcher
316770  48 8b c8                       mov    rcx,rax
316773  e8 b4 1d fc ff                 call   0x2d852c
316778  e9 38 08 00 00                 jmp    0x316fb5
31677d  48 8d 55 20                    lea    rdx,[rbp+0x20]
316781  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316785  e8 f2 f3 fd ff                 call   0x2f5b7c
31678a  e9 4d ff ff ff                 jmp    0x3166dc
31678f  48 8d 55 20                    lea    rdx,[rbp+0x20]
316793  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316797  e8 b0 f7 fd ff                 call   0x2f5f4c ; STRING getter=0x2f5f4c Mace
31679c  e9 af fe ff ff                 jmp    0x316650
3167a1  48 8d 55 18                    lea    rdx,[rbp+0x18]
3167a5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3167a9  e8 82 e8 fd ff                 call   0x2f5030 ; STRING getter=0x2f5030 Bow
3167ae  e9 d1 fe ff ff                 jmp    0x316684
3167b3  48 8d 55 20                    lea    rdx,[rbp+0x20]
3167b7  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3167bb  e8 f0 f9 fd ff                 call   0x2f61b0 ; STRING getter=0x2f61b0 Spear
3167c0  48 8b c8                       mov    rcx,rax
3167c3  e8 ec 1c fc ff                 call   0x2d84b4
3167c8  e9 e8 07 00 00                 jmp    0x316fb5
3167cd  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3167d1  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3167d5  e8 ae f0 fd ff                 call   0x2f5888 ; STRING getter=0x2f5888 Assault Rifle
3167da  48 8b c8                       mov    rcx,rax
3167dd  e8 3a 1e fc ff                 call   0x2d861c
3167e2  e9 ce 07 00 00                 jmp    0x316fb5
3167e7  81 fa e7 a8 6a c0              cmp    edx,0xc06aa8e7
3167ed  74 5a                          je     0x316849
3167ef  81 fa 47 00 5a c1              cmp    edx,0xc15a0047
3167f5  74 40                          je     0x316837
3167f7  81 fa 18 7d fe c4              cmp    edx,0xc4fe7d18
3167fd  74 1e                          je     0x31681d
3167ff  81 fa e8 35 15 c7              cmp    edx,0xc71535e8
316805  0f 85 e6 06 00 00              jne    0x316ef1
31680b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31680f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316813  e8 40 ff fd ff                 call   0x2f6758 ; STRING getter=0x2f6758 Salvaged Cleaver
316818  e9 90 07 00 00                 jmp    0x316fad
31681d  48 8d 55 20                    lea    rdx,[rbp+0x20]
316821  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316825  e8 16 a6 fd ff                 call   0x2f0e40 ; STRING getter=0x2f0e40 Python
31682a  48 8b c8                       mov    rcx,rax
31682d  e8 de 68 fc ff                 call   0x2dd110
316832  e9 7e 07 00 00                 jmp    0x316fb5
316837  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31683b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31683f  e8 4c be fd ff                 call   0x2f2690 ; STRING getter=0x2f2690 Thompson
316844  e9 c4 fd ff ff                 jmp    0x31660d
316849  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31684d  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316851  e8 76 fc fd ff                 call   0x2f64cc ; STRING getter=0x2f64cc Snowball Launcher
316856  48 8b c8                       mov    rcx,rax
316859  e8 1e 1d fc ff                 call   0x2d857c
31685e  e9 52 07 00 00                 jmp    0x316fb5
316863  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316867  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31686b  e8 0c e7 fd ff                 call   0x2f4f7c ; STRING getter=0x2f4f7c Longsword
316870  e9 4d fe ff ff                 jmp    0x3166c2
316875  b8 69 72 12 e4                 mov    eax,0xe4127269
31687a  3b d0                          cmp    edx,eax
31687c  0f 8f 37 01 00 00              jg     0x3169b9
316882  0f 84 17 01 00 00              je     0x31699f
316888  b8 2f f4 46 da                 mov    eax,0xda46f42f
31688d  3b d0                          cmp    edx,eax
31688f  0f 8f 9e 00 00 00              jg     0x316933
316895  0f 84 86 00 00 00              je     0x316921
31689b  81 fa 06 2f 2e ce              cmp    edx,0xce2e2f06
3168a1  74 6c                          je     0x31690f
3168a3  81 fa 07 7f 18 cf              cmp    edx,0xcf187f07
3168a9  74 52                          je     0x3168fd
3168ab  81 fa fd ba d4 d2              cmp    edx,0xd2d4bafd
3168b1  74 38                          je     0x3168eb
3168b3  81 fa 43 5a 0b d3              cmp    edx,0xd30b5a43
3168b9  74 1e                          je     0x3168d9
3168bb  81 fa 14 eb cd d9              cmp    edx,0xd9cdeb14
3168c1  0f 85 2a 06 00 00              jne    0x316ef1
3168c7  48 8d 55 20                    lea    rdx,[rbp+0x20]
3168cb  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3168cf  e8 9c d3 fd ff                 call   0x2f3c70
3168d4  e9 03 fe ff ff                 jmp    0x3166dc
3168d9  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3168dd  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3168e1  e8 7e de fd ff                 call   0x2f4764 ; STRING getter=0x2f4764 Stone Hatchet
3168e6  e9 ef fe ff ff                 jmp    0x3167da
3168eb  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3168ef  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3168f3  e8 ec d7 fd ff                 call   0x2f40e4 ; STRING getter=0x2f40e4 Jackhammer
3168f8  e9 2a fd ff ff                 jmp    0x316627
3168fd  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316901  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316905  e8 be c5 fd ff                 call   0x2f2ec8 ; STRING getter=0x2f2ec8 Double Barrel
31690a  e9 cb fe ff ff                 jmp    0x3167da
31690f  48 8d 55 20                    lea    rdx,[rbp+0x20]
316913  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316917  e8 f8 ab fd ff                 call   0x2f1514 ; STRING getter=0x2f1514 HMLMG
31691c  e9 9f fe ff ff                 jmp    0x3167c0
316921  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316925  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316929  e8 0a e3 fd ff                 call   0x2f4c38 ; STRING getter=0x2f4c38 Frontier Hatchet
31692e  e9 7a 06 00 00                 jmp    0x316fad
316933  81 fa b4 8c 8e dd              cmp    edx,0xdd8e8cb4
316939  74 52                          je     0x31698d
31693b  81 fa dc 0d 79 df              cmp    edx,0xdf790ddc
316941  74 38                          je     0x31697b
316943  81 fa 9f a0 1a e0              cmp    edx,0xe01aa09f
316949  74 1e                          je     0x316969
31694b  81 fa 55 dd 59 e3              cmp    edx,0xe359dd55
316951  0f 85 9a 05 00 00              jne    0x316ef1
316957  48 8d 55 20                    lea    rdx,[rbp+0x20]
31695b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31695f  e8 a8 ed fd ff                 call   0x2f570c ; STRING getter=0x2f570c Spear
316964  e9 57 fe ff ff                 jmp    0x3167c0
316969  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31696d  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316971  e8 1e a2 fd ff                 call   0x2f0b94 ; STRING getter=0x2f0b94 Custom SMG
316976  e9 ac fc ff ff                 jmp    0x316627
31697b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31697f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316983  e8 a4 03 fe ff                 call   0x2f6d2c ; STRING getter=0x2f6d2c PaintBall gun
316988  e9 4d fe ff ff                 jmp    0x3167da
31698d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316991  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316995  e8 96 d5 fd ff                 call   0x2f3f30 ; STRING getter=0x2f3f30 Flame Thrower
31699a  e9 3b fe ff ff                 jmp    0x3167da
31699f  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3169a3  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3169a7  e8 84 da fd ff                 call   0x2f4430 ; STRING getter=0x2f4430 Salvaged Axe
3169ac  48 8b c8                       mov    rcx,rax
3169af  e8 a8 74 fb ff                 call   0x2cde5c
3169b4  e9 fc 05 00 00                 jmp    0x316fb5
3169b9  81 fa 1f 16 d8 ee              cmp    edx,0xeed8161f
3169bf  0f 84 e0 00 00 00              je     0x316aa5
3169c5  81 fa 6b cb 2f f4              cmp    edx,0xf42fcb6b
3169cb  0f 84 c2 00 00 00              je     0x316a93
3169d1  81 fa 03 02 a0 f4              cmp    edx,0xf4a00203
3169d7  0f 84 a4 00 00 00              je     0x316a81
3169dd  81 fa 6d 3d 0a fc              cmp    edx,0xfc0a3d6d
3169e3  0f 84 86 00 00 00              je     0x316a6f
3169e9  81 fa a8 3d 34 fc              cmp    edx,0xfc343da8
3169ef  74 6c                          je     0x316a5d
3169f1  81 fa 1e c3 68 fd              cmp    edx,0xfd68c31e
3169f7  74 52                          je     0x316a4b
3169f9  81 fa 1f 47 d8 fd              cmp    edx,0xfdd8471f
3169ff  74 38                          je     0x316a39
316a01  81 fa fb ce 0e fe              cmp    edx,0xfe0ecefb
316a07  74 1e                          je     0x316a27
316a09  81 fa 04 be c0 fe              cmp    edx,0xfec0be04
316a0f  0f 85 dc 04 00 00              jne    0x316ef1
316a15  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316a19  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a1d  e8 a6 f3 fd ff                 call   0x2f5dc8 ; STRING getter=0x2f5dc8 Mini Crossbow
316a22  e9 b3 fd ff ff                 jmp    0x3167da
316a27  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316a2b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a2f  e8 04 fb fd ff                 call   0x2f6538 ; STRING getter=0x2f6538 Speargun
316a34  e9 d4 fb ff ff                 jmp    0x31660d
316a39  48 8d 55 18                    lea    rdx,[rbp+0x18]
316a3d  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a41  e8 fe ff fd ff                 call   0x2f6a44 ; STRING getter=0x2f6a44 M16
316a46  e9 39 fc ff ff                 jmp    0x316684
316a4b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316a4f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a53  e8 30 e7 fd ff                 call   0x2f5188 ; STRING getter=0x2f5188 Handmade SMG
316a58  e9 4f ff ff ff                 jmp    0x3169ac
316a5d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316a61  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a65  e8 66 bf fd ff                 call   0x2f29d0 ; STRING getter=0x2f29d0 Semi-Rifle
316a6a  e9 b8 fb ff ff                 jmp    0x316627
316a6f  48 8d 55 18                    lea    rdx,[rbp+0x18]
316a73  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a77  e8 ac 98 fd ff                 call   0x2f0328 ; STRING getter=0x2f0328 SKS
316a7c  e9 03 fc ff ff                 jmp    0x316684
316a81  48 8d 55 20                    lea    rdx,[rbp+0x20]
316a85  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a89  e8 c6 ef fd ff                 call   0x2f5a54
316a8e  e9 49 fc ff ff                 jmp    0x3166dc
316a93  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316a97  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a9b  e8 14 d8 fd ff                 call   0x2f42b4 ; STRING getter=0x2f42b4 Assault Rifle
316aa0  e9 35 fd ff ff                 jmp    0x3167da
316aa5  48 8d 55 20                    lea    rdx,[rbp+0x20]
316aa9  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316aad  e8 e2 b3 fd ff                 call   0x2f1e94
316ab2  e9 25 fc ff ff                 jmp    0x3166dc
316ab7  48 8d 55 20                    lea    rdx,[rbp+0x20]
316abb  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316abf  e8 cc 00 fe ff                 call   0x2f6b90
316ac4  e9 13 fc ff ff                 jmp    0x3166dc
316ac9  b8 39 ba 72 53                 mov    eax,0x5372ba39
316ace  3b d0                          cmp    edx,eax
316ad0  0f 8f 83 02 00 00              jg     0x316d59
316ad6  0f 84 6b 02 00 00              je     0x316d47
316adc  b8 93 5e 94 21                 mov    eax,0x21945e93
316ae1  3b d0                          cmp    edx,eax
316ae3  0f 8f 3f 01 00 00              jg     0x316c28
316ae9  0f 84 27 01 00 00              je     0x316c16
316aef  b8 f7 0a 8c 13                 mov    eax,0x138c0af7
316af4  3b d0                          cmp    edx,eax
316af6  0f 8f a6 00 00 00              jg     0x316ba2
316afc  0f 84 8e 00 00 00              je     0x316b90
316b02  81 fa 2a e0 42 02              cmp    edx,0x242e02a
316b08  74 74                          je     0x316b7e
316b0a  81 fa 8c 49 b9 02              cmp    edx,0x2b9498c
316b10  74 5a                          je     0x316b6c
316b12  81 fa 36 ef 82 06              cmp    edx,0x682ef36
316b18  74 40                          je     0x316b5a
316b1a  81 fa 96 de 5c 0b              cmp    edx,0xb5cde96
316b20  74 1e                          je     0x316b40
316b22  81 fa 63 8b ec 10              cmp    edx,0x10ec8b63
316b28  0f 85 c3 03 00 00              jne    0x316ef1
316b2e  48 8d 55 20                    lea    rdx,[rbp+0x20]
316b32  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b36  e8 b5 03 fe ff                 call   0x2f6ef0
316b3b  e9 9c fb ff ff                 jmp    0x3166dc
316b40  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316b44  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b48  e8 0b db fd ff                 call   0x2f4658 ; STRING getter=0x2f4658 Abyss Metal Pickaxe
316b4d  48 8b c8                       mov    rcx,rax
316b50  e8 67 72 fb ff                 call   0x2cddbc
316b55  e9 5b 04 00 00                 jmp    0x316fb5
316b5a  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316b5e  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b62  e8 25 d8 fd ff                 call   0x2f438c ; STRING getter=0x2f438c Ice Pick
316b67  e9 a1 fa ff ff                 jmp    0x31660d
316b6c  48 8d 55 20                    lea    rdx,[rbp+0x20]
316b70  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b74  e8 53 ea fd ff                 call   0x2f55cc
316b79  e9 5e fb ff ff                 jmp    0x3166dc
316b7e  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316b82  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b86  e8 f9 02 fe ff                 call   0x2f6e84 ; STRING getter=0x2f6e84 Watergun
316b8b  e9 7d fa ff ff                 jmp    0x31660d
316b90  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316b94  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b98  e8 ef e1 fd ff                 call   0x2f4d8c ; STRING getter=0x2f4d8c Combat Knife
316b9d  e9 0a fe ff ff                 jmp    0x3169ac
316ba2  81 fa 5d 04 c5 15              cmp    edx,0x15c5045d
316ba8  74 5a                          je     0x316c04
316baa  81 fa 36 30 fd 19              cmp    edx,0x19fd3036
316bb0  74 40                          je     0x316bf2
316bb2  81 fa 65 6b 57 20              cmp    edx,0x20576b65
316bb8  74 1e                          je     0x316bd8
316bba  81 fa 92 41 0e 21              cmp    edx,0x210e4192
316bc0  0f 85 2b 03 00 00              jne    0x316ef1
316bc6  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316bca  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316bce  e8 29 bc fd ff                 call   0x2f27fc ; STRING getter=0x2f27fc Pump Shotgun
316bd3  e9 d4 fd ff ff                 jmp    0x3169ac
316bd8  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316bdc  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316be0  e8 6f e8 fd ff                 call   0x2f5454 ; STRING getter=0x2f5454 Homing Missile Launcher
316be5  48 8b c8                       mov    rcx,rax
316be8  e8 c7 ca fc ff                 call   0x2e36b4
316bed  e9 c3 03 00 00                 jmp    0x316fb5
316bf2  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316bf6  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316bfa  e8 c1 d9 fd ff                 call   0x2f45c0 ; STRING getter=0x2f45c0 Binoculars
316bff  e9 23 fa ff ff                 jmp    0x316627
316c04  48 8d 55 20                    lea    rdx,[rbp+0x20]
316c08  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316c0c  e8 d7 dc fd ff                 call   0x2f48e8
316c11  e9 c6 fa ff ff                 jmp    0x3166dc
316c16  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316c1a  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316c1e  e8 59 c4 fd ff                 call   0x2f307c ; STRING getter=0x2f307c Semi Pistol
316c23  e9 dd fa ff ff                 jmp    0x316705
316c28  b8 39 63 51 3b                 mov    eax,0x3b516339
316c2d  3b d0                          cmp    edx,eax
316c2f  0f 8f a6 00 00 00              jg     0x316cdb
316c35  0f 84 86 00 00 00              je     0x316cc1
316c3b  81 fa 87 3f d9 23              cmp    edx,0x23d93f87
316c41  74 6c                          je     0x316caf
316c43  81 fa 6f 4f ee 25              cmp    edx,0x25ee4f6f
316c49  74 52                          je     0x316c9d
316c4b  81 fa e4 23 33 2d              cmp    edx,0x2d3323e4
316c51  74 38                          je     0x316c8b
316c53  81 fa 5c bd 52 2e              cmp    edx,0x2e52bd5c
316c59  74 1e                          je     0x316c79
316c5b  81 fa 51 24 54 32              cmp    edx,0x32542451
316c61  0f 85 8a 02 00 00              jne    0x316ef1
316c67  48 8d 55 20                    lea    rdx,[rbp+0x20]
316c6b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316c6f  e8 40 c6 fd ff                 call   0x2f32b4 ; STRING getter=0x2f32b4 LR-300
316c74  e9 b1 fb ff ff                 jmp    0x31682a
316c79  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316c7d  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316c81  e8 1a fc fd ff                 call   0x2f68a0 ; STRING getter=0x2f68a0 Bowless Crossbow
316c86  e9 22 03 00 00                 jmp    0x316fad
316c8b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316c8f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316c93  e8 20 d8 fd ff                 call   0x2f44b8 ; STRING getter=0x2f44b8 Flash Bang
316c98  e9 8a f9 ff ff                 jmp    0x316627
316c9d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316ca1  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316ca5  e8 76 e5 fd ff                 call   0x2f5220 ; STRING getter=0x2f5220 ProtoType
316caa  e9 13 fa ff ff                 jmp    0x3166c2
316caf  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316cb3  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316cb7  e8 30 cd fd ff                 call   0x2f39ec ; STRING getter=0x2f39ec Rocket Launcher
316cbc  e9 af fa ff ff                 jmp    0x316770
316cc1  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316cc5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316cc9  e8 c6 ff fd ff                 call   0x2f6c94 ; STRING getter=0x2f6c94 Skinning Knife
316cce  48 8b c8                       mov    rcx,rax
316cd1  e8 6e 19 fc ff                 call   0x2d8644
316cd6  e9 da 02 00 00                 jmp    0x316fb5
316cdb  81 fa 73 7c 2a 3c              cmp    edx,0x3c2a7c73
316ce1  74 52                          je     0x316d35
316ce3  81 fa c0 a9 86 49              cmp    edx,0x4986a9c0
316ce9  74 38                          je     0x316d23
316ceb  81 fa d3 f9 7d 52              cmp    edx,0x527df9d3
316cf1  74 1e                          je     0x316d11
316cf3  81 fa 24 58 44 53              cmp    edx,0x53445824
316cf9  0f 85 f2 01 00 00              jne    0x316ef1
316cff  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316d03  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316d07  e8 78 df fd ff                 call   0x2f4c84 ; STRING getter=0x2f4c84 Abyss Metal Hatchet
316d0c  e9 3c fe ff ff                 jmp    0x316b4d
316d11  48 8d 55 20                    lea    rdx,[rbp+0x20]
316d15  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316d19  e8 56 02 fe ff                 call   0x2f6f74
316d1e  e9 b9 f9 ff ff                 jmp    0x3166dc
316d23  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316d27  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316d2b  e8 50 d0 fd ff                 call   0x2f3d80 ; STRING getter=0x2f3d80 HELauncher
316d30  e9 f2 f8 ff ff                 jmp    0x316627
316d35  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316d39  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316d3d  e8 6a ef fd ff                 call   0x2f5cac ; STRING getter=0x2f5cac Pitchfork
316d42  e9 7b f9 ff ff                 jmp    0x3166c2
316d47  48 8d 55 18                    lea    rdx,[rbp+0x18]
316d4b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316d4f  e8 dc e2 fd ff                 call   0x2f5030 ; STRING getter=0x2f5030 Bow
316d54  e9 2b f9 ff ff                 jmp    0x316684
316d59  b8 a9 d0 77 69                 mov    eax,0x6977d0a9
316d5e  3b d0                          cmp    edx,eax
316d60  0f 8f 2f 01 00 00              jg     0x316e95
316d66  0f 84 17 01 00 00              je     0x316e83
316d6c  b8 f8 e2 a2 5b                 mov    eax,0x5ba2e2f8
316d71  3b d0                          cmp    edx,eax
316d73  0f 8f 9e 00 00 00              jg     0x316e17
316d79  0f 84 86 00 00 00              je     0x316e05
316d7f  81 fa 3a ab ea 53              cmp    edx,0x53eaab3a
316d85  74 6c                          je     0x316df3
316d87  81 fa 77 9a e2 55              cmp    edx,0x55e29a77
316d8d  74 52                          je     0x316de1
316d8f  81 fa a3 21 76 56              cmp    edx,0x567621a3
316d95  74 38                          je     0x316dcf
316d97  81 fa 3b 5f 3d 58              cmp    edx,0x583d5f3b
316d9d  74 1e                          je     0x316dbd
316d9f  81 fa 80 f3 6c 5a              cmp    edx,0x5a6cf380
316da5  0f 85 46 01 00 00              jne    0x316ef1
316dab  48 8d 55 18                    lea    rdx,[rbp+0x18]
316daf  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316db3  e8 f8 b6 fd ff                 call   0x2f24b0 ; STRING getter=0x2f24b0 M39
316db8  e9 c7 f8 ff ff                 jmp    0x316684
316dbd  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316dc1  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316dc5  e8 aa dd fd ff                 call   0x2f4b74 ; STRING getter=0x2f4b74 Concrete Pickaxe
316dca  e9 de 01 00 00                 jmp    0x316fad
316dcf  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316dd3  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316dd7  e8 3c da fd ff                 call   0x2f4818 ; STRING getter=0x2f4818 Stone Pickaxe
316ddc  e9 f9 f9 ff ff                 jmp    0x3167da
316de1  48 8d 55 20                    lea    rdx,[rbp+0x20]
316de5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316de9  e8 b6 a3 fd ff                 call   0x2f11a4 ; STRING getter=0x2f11a4 M249
316dee  e9 5d f8 ff ff                 jmp    0x316650
316df3  48 8d 55 20                    lea    rdx,[rbp+0x20]
316df7  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316dfb  e8 e8 ff fd ff                 call   0x2f6de8 ; STRING getter=0x2f6de8 LR300
316e00  e9 bb f9 ff ff                 jmp    0x3167c0
316e05  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e09  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e0d  e8 fa e0 fd ff                 call   0x2f4f0c ; STRING getter=0x2f4f0c Compoundbow
316e12  e9 ee f8 ff ff                 jmp    0x316705
316e17  81 fa e9 7f 2e 63              cmp    edx,0x632e7fe9
316e1d  74 52                          je     0x316e71
316e1f  81 fa 54 3a 45 63              cmp    edx,0x63453a54
316e25  74 38                          je     0x316e5f
316e27  81 fa a0 b7 ef 65              cmp    edx,0x65efb7a0
316e2d  74 1e                          je     0x316e4d
316e2f  81 fa a3 14 f6 67              cmp    edx,0x67f614a3
316e35  0f 85 b6 00 00 00              jne    0x316ef1
316e3b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e3f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e43  e8 a4 d8 fd ff                 call   0x2f46ec ; STRING getter=0x2f46ec Salvaged Hammer
316e48  e9 23 f9 ff ff                 jmp    0x316770
316e4d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e51  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e55  e8 3a d2 fd ff                 call   0x2f4094 ; STRING getter=0x2f4094 Flame Thrower
316e5a  e9 7b f9 ff ff                 jmp    0x3167da
316e5f  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e63  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e67  e8 d0 c5 fd ff                 call   0x2f343c ; STRING getter=0x2f343c Bolt Action Rifle
316e6c  e9 e5 f9 ff ff                 jmp    0x316856
316e71  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e75  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e79  e8 5a f7 fd ff                 call   0x2f65d8 ; STRING getter=0x2f65d8 Salvaged Sword
316e7e  e9 4b fe ff ff                 jmp    0x316cce
316e83  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e87  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e8b  e8 0c fc fd ff                 call   0x2f6a9c ; STRING getter=0x2f6a9c Baseball Bat
316e90  e9 17 fb ff ff                 jmp    0x3169ac
316e95  81 fa 0b 68 f6 69              cmp    edx,0x69f6680b
316e9b  0f 84 ff 00 00 00              je     0x316fa0
316ea1  81 fa 85 03 72 6b              cmp    edx,0x6b720385
316ea7  0f 84 e1 00 00 00              je     0x316f8e
316ead  81 fa 64 62 47 6e              cmp    edx,0x6e476264
316eb3  0f 84 c3 00 00 00              je     0x316f7c
316eb9  81 fa 77 df e6 6f              cmp    edx,0x6fe6df77
316ebf  0f 84 a5 00 00 00              je     0x316f6a
316ec5  81 fa 2b a2 29 72              cmp    edx,0x7229a22b
316ecb  0f 84 82 00 00 00              je     0x316f53
316ed1  81 fa 89 d6 cb 73              cmp    edx,0x73cbd689
316ed7  74 68                          je     0x316f41
316ed9  81 fa ef 8b d9 73              cmp    edx,0x73d98bef
316edf  74 4e                          je     0x316f2f
316ee1  81 fa 79 2c f1 75              cmp    edx,0x75f12c79
316ee7  74 34                          je     0x316f1d
316ee9  81 fa b9 89 a8 7a              cmp    edx,0x7aa889b9
316eef  74 1a                          je     0x316f0b
316ef1  48 8d 55 18                    lea    rdx,[rbp+0x18]
316ef5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316ef9  e8 32 58 fb ff                 call   0x2cc730
316efe  48 8b c8                       mov    rcx,rax
316f01  e8 9e 6d fb ff                 call   0x2cdca4
316f06  e9 aa 00 00 00                 jmp    0x316fb5
316f0b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316f0f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f13  e8 08 dc fd ff                 call   0x2f4b20 ; STRING getter=0x2f4b20 FishingPole
316f18  e9 e8 f7 ff ff                 jmp    0x316705
316f1d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316f21  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f25  e8 be da fd ff                 call   0x2f49e8 ; STRING getter=0x2f49e8 Assault Rifle
316f2a  e9 ab f8 ff ff                 jmp    0x3167da
316f2f  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316f33  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f37  e8 78 f4 fd ff                 call   0x2f63b4 ; STRING getter=0x2f63b4 Stone Spear
316f3c  e9 c4 f7 ff ff                 jmp    0x316705
316f41  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316f45  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f49  e8 d6 c7 fd ff                 call   0x2f3724 ; STRING getter=0x2f3724 Assault Rifle
316f4e  e9 87 f8 ff ff                 jmp    0x3167da
316f53  48 8d 55 18                    lea    rdx,[rbp+0x18]
316f57  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f5b  e8 44 c6 fd ff                 call   0x2f35a4 ; STRING getter=0x2f35a4 C4
316f60  48 8b c8                       mov    rcx,rax
316f63  e8 24 15 fc ff                 call   0x2d848c
316f68  eb 4b                          jmp    0x316fb5
316f6a  48 8d 55 20                    lea    rdx,[rbp+0x20]
316f6e  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f72  e8 79 ab fd ff                 call   0x2f1af0
316f77  e9 60 f7 ff ff                 jmp    0x3166dc
316f7c  48 8d 55 20                    lea    rdx,[rbp+0x20]
316f80  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f84  e8 93 fb fd ff                 call   0x2f6b1c ; STRING getter=0x2f6b1c Paddle
316f89  e9 9c f8 ff ff                 jmp    0x31682a
316f8e  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316f92  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f96  e8 c5 d1 fd ff                 call   0x2f4160 ; STRING getter=0x2f4160 Chainsaw
316f9b  e9 6d f6 ff ff                 jmp    0x31660d
316fa0  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316fa4  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316fa8  e8 db d8 fd ff                 call   0x2f4888 ; STRING getter=0x2f4888 Concrete Hatchet
316fad  48 8b c8                       mov    rcx,rax
316fb0  e8 9f 15 fc ff                 call   0x2d8554
316fb5  48 8b d0                       mov    rdx,rax
316fb8  48 8b cb                       mov    rcx,rbx
316fbb  e8 0c 53 fb ff                 call   0x2cc2cc
316fc0  48 8b c3                       mov    rax,rbx
316fc3  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
316fc8  48 83 c4 40                    add    rsp,0x40
316fcc  5d                             pop    rbp
316fcd  c3                             ret

