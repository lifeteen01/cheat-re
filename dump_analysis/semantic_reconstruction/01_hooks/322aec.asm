; pdata function 0x322aec..0x322ef7 unwind=0x3d3410
322aec  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
322af1  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
322af6  55                             push   rbp
322af7  57                             push   rdi
322af8  41 55                          push   r13
322afa  41 56                          push   r14
322afc  41 57                          push   r15
322afe  48 8b ec                       mov    rbp,rsp
322b01  48 83 ec 60                    sub    rsp,0x60
322b05  49 8b f0                       mov    rsi,r8
322b08  4c 8b fa                       mov    r15,rdx
322b0b  48 8b f9                       mov    rdi,rcx
322b0e  e8 e5 03 00 00                 call   0x322ef8
322b13  8b 1d 87 f9 0c 00              mov    ebx,DWORD PTR [rip+0xcf987]        # 0x3f24a0
322b19  4c 8b f0                       mov    r14,rax
322b1c  f6 c3 01                       test   bl,0x1
322b1f  75 1e                          jne    0x322b3f
322b21  83 cb 01                       or     ebx,0x1
322b24  48 8d 0d cd dd 0c 00           lea    rcx,[rip+0xcddcd]        # 0x3f08f8
322b2b  89 1d 6f f9 0c 00              mov    DWORD PTR [rip+0xcf96f],ebx        # 0x3f24a0
322b31  e8 a2 ba fa ff                 call   0x2ce5d8
322b36  48 89 05 5b f9 0c 00           mov    QWORD PTR [rip+0xcf95b],rax        # 0x3f2498
322b3d  eb 07                          jmp    0x322b46
322b3f  48 8b 05 52 f9 0c 00           mov    rax,QWORD PTR [rip+0xcf952]        # 0x3f2498
322b46  f6 c3 02                       test   bl,0x2
322b49  75 22                          jne    0x322b6d
322b4b  48 8b 0d 0e 33 0b 00           mov    rcx,QWORD PTR [rip+0xb330e]        # 0x3d5e60
322b52  48 8d 15 57 f9 0c 00           lea    rdx,[rip+0xcf957]        # 0x3f24b0
322b59  83 cb 02                       or     ebx,0x2
322b5c  45 33 c9                       xor    r9d,r9d
322b5f  4c 8b c0                       mov    r8,rax
322b62  89 1d 38 f9 0c 00              mov    DWORD PTR [rip+0xcf938],ebx        # 0x3f24a0
322b68  e8 b7 91 fa ff                 call   0x2cbd24
322b6d  48 8b 0d ec 32 0b 00           mov    rcx,QWORD PTR [rip+0xb32ec]        # 0x3d5e60
322b74  48 8d 15 35 f9 0c 00           lea    rdx,[rip+0xcf935]        # 0x3f24b0
322b7b  4d 8b cf                       mov    r9,r15
322b7e  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
322b83  4c 8b c7                       mov    r8,rdi
322b86  e8 c5 8e fa ff                 call   0x2cba50
322b8b  49 8b ce                       mov    rcx,r14
322b8e  e8 75 83 fa ff                 call   0x2caf08
322b93  84 c0                          test   al,al
322b95  0f 84 43 03 00 00              je     0x322ede
322b9b  8a 0d e7 f8 0c 00              mov    cl,BYTE PTR [rip+0xcf8e7]        # 0x3f2488 ; CONFIG Bools.SmoothFlyhack value(+0x48)
322ba1  84 c9                          test   cl,cl
322ba3  75 0a                          jne    0x322baf
322ba5  32 c0                          xor    al,al
322ba7  88 05 94 cc 0c 00              mov    BYTE PTR [rip+0xccc94],al        # 0x3ef841
322bad  eb 06                          jmp    0x322bb5
322baf  8a 05 8c cc 0c 00              mov    al,BYTE PTR [rip+0xccc8c]        # 0x3ef841
322bb5  80 3d c5 ce 0c 00 00           cmp    BYTE PTR [rip+0xccec5],0x0        # 0x3efa81
322bbc  74 08                          je     0x322bc6
322bbe  84 c9                          test   cl,cl
322bc0  74 04                          je     0x322bc6
322bc2  84 c0                          test   al,al
322bc4  75 0e                          jne    0x322bd4
322bc6  80 3d d4 56 0b 00 00           cmp    BYTE PTR [rip+0xb56d4],0x0        # 0x3d82a1
322bcd  75 05                          jne    0x322bd4
322bcf  45 32 ff                       xor    r15b,r15b
322bd2  eb 03                          jmp    0x322bd7
322bd4  41 b7 01                       mov    r15b,0x1
322bd7  8b 05 c3 f8 0c 00              mov    eax,DWORD PTR [rip+0xcf8c3]        # 0x3f24a0
322bdd  41 83 cd ff                    or     r13d,0xffffffff
322be1  a8 04                          test   al,0x4
322be3  0f 85 99 00 00 00              jne    0x322c82
322be9  83 c8 04                       or     eax,0x4
322bec  48 8d 55 48                    lea    rdx,[rbp+0x48]
322bf0  48 8d 4d 48                    lea    rcx,[rbp+0x48]
322bf4  89 05 a6 f8 0c 00              mov    DWORD PTR [rip+0xcf8a6],eax        # 0x3f24a0
322bfa  e8 31 9b fa ff                 call   0x2cc730
322bff  48 8b c8                       mov    rcx,rax
322c02  e8 9d b0 fa ff                 call   0x2cdca4
322c07  48 8d 55 e8                    lea    rdx,[rbp-0x18]
322c0b  48 8b f0                       mov    rsi,rax
322c0e  48 8d 4d d0                    lea    rcx,[rbp-0x30]
322c12  e8 09 fe ff ff                 call   0x322a20 ; STRING getter=0x322a20 set_isTrigger
322c17  48 8b c8                       mov    rcx,rax
322c1a  e8 69 a5 fb ff                 call   0x2dd188
322c1f  48 8d 55 dc                    lea    rdx,[rbp-0x24]
322c23  48 8b f8                       mov    rdi,rax
322c26  48 8d 4d d0                    lea    rcx,[rbp-0x30]
322c2a  e8 d5 fd ff ff                 call   0x322a04 ; STRING getter=0x322a04 UnityEngine
322c2f  48 8b c8                       mov    rcx,rax
322c32  e8 fd b1 fa ff                 call   0x2cde34
322c37  48 8d 55 d1                    lea    rdx,[rbp-0x2f]
322c3b  48 8b d8                       mov    rbx,rax
322c3e  48 8d 4d d0                    lea    rcx,[rbp-0x30]
322c42  e8 a1 fd ff ff                 call   0x3229e8 ; STRING getter=0x3229e8 Collider
322c47  48 8b c8                       mov    rcx,rax
322c4a  e8 3d 6f fc ff                 call   0x2e9b8c
322c4f  48 8b c8                       mov    rcx,rax
322c52  48 8b d3                       mov    rdx,rbx
322c55  e8 ca 15 01 00                 call   0x334224
322c5a  48 8b c8                       mov    rcx,rax
322c5d  44 89 6c 24 20                 mov    DWORD PTR [rsp+0x20],r13d
322c62  4c 8b ce                       mov    r9,rsi
322c65  45 8b c5                       mov    r8d,r13d
322c68  48 8b d7                       mov    rdx,rdi
322c6b  e8 3c 1d 01 00                 call   0x3349ac
322c70  4c 8b 00                       mov    r8,QWORD PTR [rax]
322c73  8b 05 27 f8 0c 00              mov    eax,DWORD PTR [rip+0xcf827]        # 0x3f24a0
322c79  4c 89 05 08 f9 0c 00           mov    QWORD PTR [rip+0xcf908],r8        # 0x3f2588
322c80  eb 07                          jmp    0x322c89
322c82  4c 8b 05 ff f8 0c 00           mov    r8,QWORD PTR [rip+0xcf8ff]        # 0x3f2588
322c89  a8 08                          test   al,0x8
322c8b  75 1f                          jne    0x322cac
322c8d  48 8b 0d cc 31 0b 00           mov    rcx,QWORD PTR [rip+0xb31cc]        # 0x3d5e60
322c94  48 8d 15 f5 f8 0c 00           lea    rdx,[rip+0xcf8f5]        # 0x3f2590
322c9b  83 c8 08                       or     eax,0x8
322c9e  45 33 c9                       xor    r9d,r9d
322ca1  89 05 f9 f7 0c 00              mov    DWORD PTR [rip+0xcf7f9],eax        # 0x3f24a0
322ca7  e8 78 90 fa ff                 call   0x2cbd24
322cac  48 8b 0d ad 31 0b 00           mov    rcx,QWORD PTR [rip+0xb31ad]        # 0x3d5e60
322cb3  48 8d 15 d6 f8 0c 00           lea    rdx,[rip+0xcf8d6]        # 0x3f2590
322cba  45 8a cf                       mov    r9b,r15b
322cbd  4d 8b c6                       mov    r8,r14
322cc0  e8 2f e8 ff ff                 call   0x3214f4
322cc5  80 3d b5 cd 0c 00 00           cmp    BYTE PTR [rip+0xccdb5],0x0        # 0x3efa81
322ccc  0f 84 08 01 00 00              je     0x322dda
322cd2  80 3d 68 cb 0c 00 00           cmp    BYTE PTR [rip+0xccb68],0x0        # 0x3ef841
322cd9  0f 85 fb 00 00 00              jne    0x322dda
322cdf  8b 05 bb f7 0c 00              mov    eax,DWORD PTR [rip+0xcf7bb]        # 0x3f24a0
322ce5  a8 10                          test   al,0x10
322ce7  0f 85 99 00 00 00              jne    0x322d86
322ced  83 c8 10                       or     eax,0x10
322cf0  48 8d 55 48                    lea    rdx,[rbp+0x48]
322cf4  48 8d 4d 48                    lea    rcx,[rbp+0x48]
322cf8  89 05 a2 f7 0c 00              mov    DWORD PTR [rip+0xcf7a2],eax        # 0x3f24a0
322cfe  e8 2d 9a fa ff                 call   0x2cc730
322d03  48 8b c8                       mov    rcx,rax
322d06  e8 99 af fa ff                 call   0x2cdca4
322d0b  48 8d 55 d1                    lea    rdx,[rbp-0x2f]
322d0f  48 8b f0                       mov    rsi,rax
322d12  48 8d 4d d0                    lea    rcx,[rbp-0x30]
322d16  e8 6d fd ff ff                 call   0x322a88 ; STRING getter=0x322a88 set_radius
322d1b  48 8b c8                       mov    rcx,rax
322d1e  e8 31 6f fc ff                 call   0x2e9c54
322d23  48 8d 55 dc                    lea    rdx,[rbp-0x24]
322d27  48 8b f8                       mov    rdi,rax
322d2a  48 8d 4d d0                    lea    rcx,[rbp-0x30]
322d2e  e8 21 fd ff ff                 call   0x322a54 ; STRING getter=0x322a54 UnityEngine
322d33  48 8b c8                       mov    rcx,rax
322d36  e8 f9 b0 fa ff                 call   0x2cde34
322d3b  48 8d 55 e8                    lea    rdx,[rbp-0x18]
322d3f  48 8b d8                       mov    rbx,rax
322d42  48 8d 4d d0                    lea    rcx,[rbp-0x30]
322d46  e8 f9 fc ff ff                 call   0x322a44 ; STRING getter=0x322a44 CapsuleCollider
322d4b  48 8b c8                       mov    rcx,rax
322d4e  e8 0d a4 fb ff                 call   0x2dd160
322d53  48 8b c8                       mov    rcx,rax
322d56  48 8b d3                       mov    rdx,rbx
322d59  e8 c6 14 01 00                 call   0x334224
322d5e  48 8b c8                       mov    rcx,rax
322d61  44 89 6c 24 20                 mov    DWORD PTR [rsp+0x20],r13d
322d66  4c 8b ce                       mov    r9,rsi
322d69  45 8b c5                       mov    r8d,r13d
322d6c  48 8b d7                       mov    rdx,rdi
322d6f  e8 38 1c 01 00                 call   0x3349ac
322d74  4c 8b 00                       mov    r8,QWORD PTR [rax]
322d77  8b 05 23 f7 0c 00              mov    eax,DWORD PTR [rip+0xcf723]        # 0x3f24a0
322d7d  4c 89 05 ec f8 0c 00           mov    QWORD PTR [rip+0xcf8ec],r8        # 0x3f2670
322d84  eb 07                          jmp    0x322d8d
322d86  4c 8b 05 e3 f8 0c 00           mov    r8,QWORD PTR [rip+0xcf8e3]        # 0x3f2670
322d8d  a8 20                          test   al,0x20
322d8f  75 1f                          jne    0x322db0
322d91  48 8b 0d c8 30 0b 00           mov    rcx,QWORD PTR [rip+0xb30c8]        # 0x3d5e60
322d98  48 8d 15 e1 f8 0c 00           lea    rdx,[rip+0xcf8e1]        # 0x3f2680
322d9f  83 c8 20                       or     eax,0x20
322da2  45 33 c9                       xor    r9d,r9d
322da5  89 05 f5 f6 0c 00              mov    DWORD PTR [rip+0xcf6f5],eax        # 0x3f24a0
322dab  e8 74 8f fa ff                 call   0x2cbd24
322db0  f3 0f 10 1d 00 03 f7 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff70300]        # 0x2930b8 ; f32=0.38
322db8  48 8d 15 c1 f8 0c 00           lea    rdx,[rip+0xcf8c1]        # 0x3f2680
322dbf  48 8b 0d 9a 30 0b 00           mov    rcx,QWORD PTR [rip+0xb309a]        # 0x3d5e60
322dc6  4d 8b c6                       mov    r8,r14
322dc9  e8 8e f4 ff ff                 call   0x32225c
322dce  c6 05 93 f8 0c 00 01           mov    BYTE PTR [rip+0xcf893],0x1        # 0x3f2668
322dd5  e9 04 01 00 00                 jmp    0x322ede
322dda  80 3d 87 f8 0c 00 00           cmp    BYTE PTR [rip+0xcf887],0x0        # 0x3f2668
322de1  0f 84 f7 00 00 00              je     0x322ede
322de7  8b 05 b3 f6 0c 00              mov    eax,DWORD PTR [rip+0xcf6b3]        # 0x3f24a0
322ded  a8 40                          test   al,0x40
322def  0f 85 99 00 00 00              jne    0x322e8e
322df5  83 c8 40                       or     eax,0x40
322df8  48 8d 55 48                    lea    rdx,[rbp+0x48]
322dfc  48 8d 4d 48                    lea    rcx,[rbp+0x48]
322e00  89 05 9a f6 0c 00              mov    DWORD PTR [rip+0xcf69a],eax        # 0x3f24a0
322e06  e8 25 99 fa ff                 call   0x2cc730
322e0b  48 8b c8                       mov    rcx,rax
322e0e  e8 91 ae fa ff                 call   0x2cdca4
322e13  48 8d 55 d1                    lea    rdx,[rbp-0x2f]
322e17  48 8b f0                       mov    rsi,rax
322e1a  48 8d 4d d0                    lea    rcx,[rbp-0x30]
322e1e  e8 ad fc ff ff                 call   0x322ad0 ; STRING getter=0x322ad0 set_radius
322e23  48 8b c8                       mov    rcx,rax
322e26  e8 29 6e fc ff                 call   0x2e9c54
322e2b  48 8d 55 dc                    lea    rdx,[rbp-0x24]
322e2f  48 8b f8                       mov    rdi,rax
322e32  48 8d 4d d0                    lea    rcx,[rbp-0x30]
322e36  e8 79 fc ff ff                 call   0x322ab4 ; STRING getter=0x322ab4 UnityEngine
322e3b  48 8b c8                       mov    rcx,rax
322e3e  e8 f1 af fa ff                 call   0x2cde34
322e43  48 8d 55 e8                    lea    rdx,[rbp-0x18]
322e47  48 8b d8                       mov    rbx,rax
322e4a  48 8d 4d d0                    lea    rcx,[rbp-0x30]
322e4e  e8 51 fc ff ff                 call   0x322aa4 ; STRING getter=0x322aa4 CapsuleCollider
322e53  48 8b c8                       mov    rcx,rax
322e56  e8 05 a3 fb ff                 call   0x2dd160
322e5b  48 8b c8                       mov    rcx,rax
322e5e  48 8b d3                       mov    rdx,rbx
322e61  e8 be 13 01 00                 call   0x334224
322e66  48 8b c8                       mov    rcx,rax
322e69  44 89 6c 24 20                 mov    DWORD PTR [rsp+0x20],r13d
322e6e  4c 8b ce                       mov    r9,rsi
322e71  45 8b c5                       mov    r8d,r13d
322e74  48 8b d7                       mov    rdx,rdi
322e77  e8 30 1b 01 00                 call   0x3349ac
322e7c  4c 8b 00                       mov    r8,QWORD PTR [rax]
322e7f  8b 05 1b f6 0c 00              mov    eax,DWORD PTR [rip+0xcf61b]        # 0x3f24a0
322e85  4c 89 05 cc f8 0c 00           mov    QWORD PTR [rip+0xcf8cc],r8        # 0x3f2758
322e8c  eb 07                          jmp    0x322e95
322e8e  4c 8b 05 c3 f8 0c 00           mov    r8,QWORD PTR [rip+0xcf8c3]        # 0x3f2758
322e95  84 c0                          test   al,al
322e97  78 20                          js     0x322eb9
322e99  48 8b 0d c0 2f 0b 00           mov    rcx,QWORD PTR [rip+0xb2fc0]        # 0x3d5e60
322ea0  48 8d 15 b9 f8 0c 00           lea    rdx,[rip+0xcf8b9]        # 0x3f2760
322ea7  0f ba e8 07                    bts    eax,0x7
322eab  45 33 c9                       xor    r9d,r9d
322eae  89 05 ec f5 0c 00              mov    DWORD PTR [rip+0xcf5ec],eax        # 0x3f24a0
322eb4  e8 6b 8e fa ff                 call   0x2cbd24
322eb9  f3 0f 10 1d 8f a3 f6 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff6a38f]        # 0x28d250 ; f32=0.5
322ec1  48 8d 15 98 f8 0c 00           lea    rdx,[rip+0xcf898]        # 0x3f2760
322ec8  48 8b 0d 91 2f 0b 00           mov    rcx,QWORD PTR [rip+0xb2f91]        # 0x3d5e60
322ecf  4d 8b c6                       mov    r8,r14
322ed2  e8 85 f3 ff ff                 call   0x32225c
322ed7  c6 05 8a f7 0c 00 00           mov    BYTE PTR [rip+0xcf78a],0x0        # 0x3f2668
322ede  4c 8d 5c 24 60                 lea    r11,[rsp+0x60]
322ee3  49 8b 5b 30                    mov    rbx,QWORD PTR [r11+0x30]
322ee7  49 8b 73 38                    mov    rsi,QWORD PTR [r11+0x38]
322eeb  49 8b e3                       mov    rsp,r11
322eee  41 5f                          pop    r15
322ef0  41 5e                          pop    r14
322ef2  41 5d                          pop    r13
322ef4  5f                             pop    rdi
322ef5  5d                             pop    rbp
322ef6  c3                             ret
