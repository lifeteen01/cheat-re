; pdata function 0x2d57d4..0x2d57f4 unwind=0x3d2038
2d57d4  40 53                          rex push rbx
2d57d6  48 83 ec 20                    sub    rsp,0x20
2d57da  48 8b d9                       mov    rbx,rcx
2d57dd  e8 52 03 00 00                 call   0x2d5b34
2d57e2  84 c0                          test   al,al
2d57e4  75 08                          jne    0x2d57ee
2d57e6  48 8b cb                       mov    rcx,rbx
2d57e9  e8 06 00 00 00                 call   0x2d57f4
2d57ee  48 83 c4 20                    add    rsp,0x20
2d57f2  5b                             pop    rbx
2d57f3  c3                             ret

; pdata function 0x2cef64..0x2cef97 unwind=0x3d2038
2cef64  40 53                          rex push rbx
2cef66  48 83 ec 20                    sub    rsp,0x20
2cef6a  48 8b c2                       mov    rax,rdx
2cef6d  48 8b d9                       mov    rbx,rcx
2cef70  48 8b c8                       mov    rcx,rax
2cef73  49 8b d0                       mov    rdx,r8
2cef76  e8 89 8c 00 00                 call   0x2d7c04
2cef7b  48 8b c8                       mov    rcx,rax
2cef7e  e8 21 c4 ff ff                 call   0x2cb3a4
2cef83  48 8b d0                       mov    rdx,rax
2cef86  48 8b cb                       mov    rcx,rbx
2cef89  e8 f6 d2 ff ff                 call   0x2cc284
2cef8e  48 8b c3                       mov    rax,rbx
2cef91  48 83 c4 20                    add    rsp,0x20
2cef95  5b                             pop    rbx
2cef96  c3                             ret

; pdata function 0x2db6f8..0x2db739 unwind=0x3d2040
2db6f8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2db6fd  57                             push   rdi
2db6fe  48 83 ec 20                    sub    rsp,0x20
2db702  48 8b d9                       mov    rbx,rcx
2db705  48 8b fa                       mov    rdi,rdx
2db708  48 8b ca                       mov    rcx,rdx
2db70b  e8 94 fc fe ff                 call   0x2cb3a4
2db710  48 3b d8                       cmp    rbx,rax
2db713  74 16                          je     0x2db72b
2db715  4c 8b 47 08                    mov    r8,QWORD PTR [rdi+0x8]
2db719  48 8b cb                       mov    rcx,rbx
2db71c  4c 2b 07                       sub    r8,QWORD PTR [rdi]
2db71f  48 8b 17                       mov    rdx,QWORD PTR [rdi]
2db722  49 c1 f8 06                    sar    r8,0x6
2db726  e8 e5 e0 ff ff                 call   0x2d9810
2db72b  48 8b c3                       mov    rax,rbx
2db72e  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2db733  48 83 c4 20                    add    rsp,0x20
2db737  5f                             pop    rdi
2db738  c3                             ret

; pdata function 0x2d93fc..0x2d9497 unwind=0x3d2120
2d93fc  40 53                          rex push rbx
2d93fe  55                             push   rbp
2d93ff  56                             push   rsi
2d9400  57                             push   rdi
2d9401  48 83 ec 38                    sub    rsp,0x38
2d9405  49 8b f0                       mov    rsi,r8
2d9408  48 8b fa                       mov    rdi,rdx
2d940b  48 8b d9                       mov    rbx,rcx
2d940e  e8 45 b3 ff ff                 call   0x2d4758
2d9413  48 8b ce                       mov    rcx,rsi
2d9416  e8 79 f2 ff ff                 call   0x2d8694
2d941b  84 c0                          test   al,al
2d941d  74 0d                          je     0x2d942c
2d941f  48 8b d7                       mov    rdx,rdi
2d9422  48 8b cb                       mov    rcx,rbx
2d9425  e8 f2 fb ff ff                 call   0x2d901c
2d942a  eb 5f                          jmp    0x2d948b
2d942c  48 c7 44 24 78 00 00 00 00     mov    QWORD PTR [rsp+0x78],0x0
2d9435  45 33 c0                       xor    r8d,r8d
2d9438  eb 2d                          jmp    0x2d9467
2d943a  48 8b cd                       mov    rcx,rbp
2d943d  4c 8d 4c 24 20                 lea    r9,[rsp+0x20]
2d9442  48 2b 4c 24 78                 sub    rcx,QWORD PTR [rsp+0x78]
2d9447  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2d944c  48 8b cb                       mov    rcx,rbx
2d944f  e8 fc 95 ff ff                 call   0x2d2a50
2d9454  48 8b ce                       mov    rcx,rsi
2d9457  e8 7c f6 ff ff                 call   0x2d8ad8
2d945c  48 03 c5                       add    rax,rbp
2d945f  48 89 44 24 78                 mov    QWORD PTR [rsp+0x78],rax
2d9464  4c 8b c0                       mov    r8,rax
2d9467  48 8b d6                       mov    rdx,rsi
2d946a  48 8b cf                       mov    rcx,rdi
2d946d  e8 6e f4 ff ff                 call   0x2d88e0
2d9472  4c 8d 44 24 78                 lea    r8,[rsp+0x78]
2d9477  48 8b e8                       mov    rbp,rax
2d947a  48 8b d7                       mov    rdx,rdi
2d947d  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
2d9481  75 b7                          jne    0x2d943a
2d9483  48 8b cb                       mov    rcx,rbx
2d9486  e8 7d 95 ff ff                 call   0x2d2a08
2d948b  48 8b c3                       mov    rax,rbx
2d948e  48 83 c4 38                    add    rsp,0x38
2d9492  5f                             pop    rdi
2d9493  5e                             pop    rsi
2d9494  5d                             pop    rbp
2d9495  5b                             pop    rbx
2d9496  c3                             ret

; pdata function 0x2d8cc0..0x2d8d72 unwind=0x3d2308
2d8cc0  40 53                          rex push rbx
2d8cc2  55                             push   rbp
2d8cc3  56                             push   rsi
2d8cc4  57                             push   rdi
2d8cc5  41 56                          push   r14
2d8cc7  48 83 ec 20                    sub    rsp,0x20
2d8ccb  41 8b e8                       mov    ebp,r8d
2d8cce  4c 8b f2                       mov    r14,rdx
2d8cd1  e8 16 4b ff ff                 call   0x2cd7ec
2d8cd6  33 db                          xor    ebx,ebx
2d8cd8  48 8b f0                       mov    rsi,rax
2d8cdb  33 ff                          xor    edi,edi
2d8cdd  0f be 08                       movsx  ecx,BYTE PTR [rax]
2d8ce0  eb 08                          jmp    0x2d8cea
2d8ce2  0f be 4c 33 01                 movsx  ecx,BYTE PTR [rbx+rsi*1+0x1]
2d8ce7  48 ff c3                       inc    rbx
2d8cea  e8 71 1b 0f 00                 call   0x3ca860
2d8cef  85 c0                          test   eax,eax
2d8cf1  75 ef                          jne    0x2d8ce2
2d8cf3  8a 04 33                       mov    al,BYTE PTR [rbx+rsi*1]
2d8cf6  3c 2d                          cmp    al,0x2d
2d8cf8  75 07                          jne    0x2d8d01
2d8cfa  ba 01 00 00 00                 mov    edx,0x1
2d8cff  eb 06                          jmp    0x2d8d07
2d8d01  33 d2                          xor    edx,edx
2d8d03  3c 2b                          cmp    al,0x2b
2d8d05  75 03                          jne    0x2d8d0a
2d8d07  48 ff c3                       inc    rbx
2d8d0a  40 38 3c 33                    cmp    BYTE PTR [rbx+rsi*1],dil
2d8d0e  74 44                          je     0x2d8d54
2d8d10  48 8d 0c 33                    lea    rcx,[rbx+rsi*1]
2d8d14  8a 01                          mov    al,BYTE PTR [rcx]
2d8d16  2c 30                          sub    al,0x30
2d8d18  3c 09                          cmp    al,0x9
2d8d1a  77 08                          ja     0x2d8d24
2d8d1c  0f be 01                       movsx  eax,BYTE PTR [rcx]
2d8d1f  83 e8 30                       sub    eax,0x30
2d8d22  eb 1e                          jmp    0x2d8d42
2d8d24  8a 01                          mov    al,BYTE PTR [rcx]
2d8d26  2c 61                          sub    al,0x61
2d8d28  3c 05                          cmp    al,0x5
2d8d2a  77 08                          ja     0x2d8d34
2d8d2c  0f be 01                       movsx  eax,BYTE PTR [rcx]
2d8d2f  83 e8 57                       sub    eax,0x57
2d8d32  eb 0e                          jmp    0x2d8d42
2d8d34  8a 01                          mov    al,BYTE PTR [rcx]
2d8d36  2c 41                          sub    al,0x41
2d8d38  3c 05                          cmp    al,0x5
2d8d3a  77 18                          ja     0x2d8d54
2d8d3c  0f be 01                       movsx  eax,BYTE PTR [rcx]
2d8d3f  83 e8 37                       sub    eax,0x37
2d8d42  3b c5                          cmp    eax,ebp
2d8d44  7d 0e                          jge    0x2d8d54
2d8d46  0f af fd                       imul   edi,ebp
2d8d49  48 ff c3                       inc    rbx
2d8d4c  03 f8                          add    edi,eax
2d8d4e  80 79 01 00                    cmp    BYTE PTR [rcx+0x1],0x0
2d8d52  75 bc                          jne    0x2d8d10
2d8d54  4d 85 f6                       test   r14,r14
2d8d57  74 03                          je     0x2d8d5c
2d8d59  49 89 1e                       mov    QWORD PTR [r14],rbx
2d8d5c  8b cf                          mov    ecx,edi
2d8d5e  f7 d9                          neg    ecx
2d8d60  85 d2                          test   edx,edx
2d8d62  0f 45 f9                       cmovne edi,ecx
2d8d65  8b c7                          mov    eax,edi
2d8d67  48 83 c4 20                    add    rsp,0x20
2d8d6b  41 5e                          pop    r14
2d8d6d  5f                             pop    rdi
2d8d6e  5e                             pop    rsi
2d8d6f  5d                             pop    rbp
2d8d70  5b                             pop    rbx
2d8d71  c3                             ret

; pdata function 0x2dd284..0x2dd2db unwind=0x3d2948
2dd284  48 81 ec d8 00 00 00           sub    rsp,0xd8
2dd28b  48 8d 0d 7e b4 f3 ff           lea    rcx,[rip+0xfffffffffff3b47e]        # 0x218710
2dd292  e8 55 05 ff ff                 call   0x2cd7ec
2dd297  48 8b c8                       mov    rcx,rax
2dd29a  e8 35 85 ff ff                 call   0x2d57d4
2dd29f  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dd2a4  e8 57 8b ff ff                 call   0x2d5e00
2dd2a9  48 8b d0                       mov    rdx,rax
2dd2ac  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2dd2b1  e8 7a 76 ff ff                 call   0x2d4930
2dd2b6  48 8b d0                       mov    rdx,rax
2dd2b9  48 8d 0d 10 9b 0f 00           lea    rcx,[rip+0xf9b10]        # 0x3d6dd0
2dd2c0  e8 cf e5 ff ff                 call   0x2db894
2dd2c5  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2dd2ca  e8 95 e3 ff ff                 call   0x2db664
2dd2cf  48 81 c4 d8 00 00 00           add    rsp,0xd8
2dd2d6  e9 11 00 00 00                 jmp    0x2dd2ec

; pdata function 0x2cce78..0x2ccef2 unwind=0x3d20e4
2cce78  40 53                          rex push rbx
2cce7a  48 83 ec 40                    sub    rsp,0x40
2cce7e  3a 0d dc 92 10 00              cmp    cl,BYTE PTR [rip+0x1092dc]        # 0x3d6160
2cce84  8a d9                          mov    bl,cl
2cce86  74 64                          je     0x2cceec
2cce88  84 c9                          test   cl,cl
2cce8a  75 5a                          jne    0x2ccee6
2cce8c  48 8d 0d bd 92 10 00           lea    rcx,[rip+0x1092bd]        # 0x3d6150
2cce93  e8 d4 09 00 00                 call   0x2cd86c
2cce98  8b 44 24 21                    mov    eax,DWORD PTR [rsp+0x21]
2cce9c  89 05 d7 92 10 00              mov    DWORD PTR [rip+0x1092d7],eax        # 0x3d6179
2ccea2  0f b7 44 24 25                 movzx  eax,WORD PTR [rsp+0x25]
2ccea7  66 89 05 cf 92 10 00           mov    WORD PTR [rip+0x1092cf],ax        # 0x3d617d
2cceae  8a 44 24 27                    mov    al,BYTE PTR [rsp+0x27]
2cceb2  88 05 c7 92 10 00              mov    BYTE PTR [rip+0x1092c7],al        # 0x3d617f
2cceb8  88 1d a3 92 10 00              mov    BYTE PTR [rip+0x1092a3],bl        # 0x3d6161
2ccebe  88 1d b4 92 10 00              mov    BYTE PTR [rip+0x1092b4],bl        # 0x3d6178
2ccec4  48 c7 05 b1 92 10 00 00 00 00 00 mov    QWORD PTR [rip+0x1092b1],0x0        # 0x3d6180
2ccecf  48 c7 05 ae 92 10 00 00 00 00 00 mov    QWORD PTR [rip+0x1092ae],0x0        # 0x3d6188
2cceda  88 1d 83 92 10 00              mov    BYTE PTR [rip+0x109283],bl        # 0x3d6163
2ccee0  88 1d 7c 92 10 00              mov    BYTE PTR [rip+0x10927c],bl        # 0x3d6162
2ccee6  88 1d 74 92 10 00              mov    BYTE PTR [rip+0x109274],bl        # 0x3d6160
2cceec  48 83 c4 40                    add    rsp,0x40
2ccef0  5b                             pop    rbx
2ccef1  c3                             ret

; pdata function 0x2e5b7c..0x2e5bc3 unwind=0x3d2c10
2e5b7c  40 53                          rex push rbx
2e5b7e  48 83 ec 40                    sub    rsp,0x40
2e5b82  0f 29 74 24 30                 movaps XMMWORD PTR [rsp+0x30],xmm6
2e5b87  48 8b d9                       mov    rbx,rcx
2e5b8a  f3 0f 10 31                    movss  xmm6,DWORD PTR [rcx]
2e5b8e  0f 29 7c 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm7
2e5b93  0f 28 f9                       movaps xmm7,xmm1
2e5b96  e8 a5 06 00 00                 call   0x2e6240
2e5b9b  0f 2f c6                       comiss xmm0,xmm6
2e5b9e  76 11                          jbe    0x2e5bb1
2e5ba0  e8 9b 06 00 00                 call   0x2e6240
2e5ba5  f3 0f 58 c7                    addss  xmm0,xmm7
2e5ba9  b0 01                          mov    al,0x1
2e5bab  f3 0f 11 03                    movss  DWORD PTR [rbx],xmm0
2e5baf  eb 02                          jmp    0x2e5bb3
2e5bb1  32 c0                          xor    al,al
2e5bb3  0f 28 74 24 30                 movaps xmm6,XMMWORD PTR [rsp+0x30]
2e5bb8  0f 28 7c 24 20                 movaps xmm7,XMMWORD PTR [rsp+0x20]
2e5bbd  48 83 c4 40                    add    rsp,0x40
2e5bc1  5b                             pop    rbx
2e5bc2  c3                             ret

; pdata function 0x2e89e4..0x2e8a2d unwind=0x3d2040
2e89e4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2e89e9  57                             push   rdi
2e89ea  48 83 ec 20                    sub    rsp,0x20
2e89ee  40 8a fa                       mov    dil,dl
2e89f1  48 8b d9                       mov    rbx,rcx
2e89f4  e8 4b dd ff ff                 call   0x2e6744
2e89f9  84 c0                          test   al,al
2e89fb  74 05                          je     0x2e8a02
2e89fd  40 84 ff                       test   dil,dil
2e8a00  75 1e                          jne    0x2e8a20
2e8a02  8b 0b                          mov    ecx,DWORD PTR [rbx]
2e8a04  33 d2                          xor    edx,edx
2e8a06  e8 41 d4 ff ff                 call   0x2e5e4c
2e8a0b  84 c0                          test   al,al
2e8a0d  74 0d                          je     0x2e8a1c
2e8a0f  80 7b 08 00                    cmp    BYTE PTR [rbx+0x8],0x0
2e8a13  75 0b                          jne    0x2e8a20
2e8a15  b0 01                          mov    al,0x1
2e8a17  88 43 08                       mov    BYTE PTR [rbx+0x8],al
2e8a1a  eb 06                          jmp    0x2e8a22
2e8a1c  c6 43 08 00                    mov    BYTE PTR [rbx+0x8],0x0
2e8a20  32 c0                          xor    al,al
2e8a22  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2e8a27  48 83 c4 20                    add    rsp,0x20
2e8a2b  5f                             pop    rdi
2e8a2c  c3                             ret

