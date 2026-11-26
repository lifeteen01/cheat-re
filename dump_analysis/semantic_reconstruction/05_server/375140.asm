; pdata function 0x375140..0x37527c unwind=0x3d2db8
375140  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
375145  48 89 6c 24 10                 mov    QWORD PTR [rsp+0x10],rbp
37514a  56                             push   rsi
37514b  57                             push   rdi
37514c  41 56                          push   r14
37514e  48 83 ec 60                    sub    rsp,0x60
375152  4c 8b f2                       mov    r14,rdx
375155  48 8b e9                       mov    rbp,rcx
375158  e8 ab 5d f5 ff                 call   0x2caf08
37515d  84 c0                          test   al,al
37515f  0f 84 02 01 00 00              je     0x375267
375165  8b 05 35 d3 08 00              mov    eax,DWORD PTR [rip+0x8d335]        # 0x4024a0
37516b  a8 01                          test   al,0x1
37516d  0f 85 b1 00 00 00              jne    0x375224
375173  83 c8 01                       or     eax,0x1
375176  48 8d 94 24 90 00 00 00        lea    rdx,[rsp+0x90]
37517e  48 8d 8c 24 90 00 00 00        lea    rcx,[rsp+0x90]
375186  89 05 14 d3 08 00              mov    DWORD PTR [rip+0x8d314],eax        # 0x4024a0
37518c  e8 9f 75 f5 ff                 call   0x2cc730
375191  48 8b c8                       mov    rcx,rax
375194  e8 0b 8b f5 ff                 call   0x2cdca4
375199  48 8d 54 24 46                 lea    rdx,[rsp+0x46]
37519e  48 8b f0                       mov    rsi,rax
3751a1  48 8d 8c 24 98 00 00 00        lea    rcx,[rsp+0x98]
3751a9  e8 ae f5 ff ff                 call   0x37475c ; STRING getter=0x37475c set_position
3751ae  48 8b c8                       mov    rcx,rax
3751b1  e8 d2 06 00 00                 call   0x375888
3751b6  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
3751bb  48 8b f8                       mov    rdi,rax
3751be  48 8d 8c 24 98 00 00 00        lea    rcx,[rsp+0x98]
3751c6  e8 55 f4 ff ff                 call   0x374620 ; STRING getter=0x374620 UnityEngine
3751cb  48 8b c8                       mov    rcx,rax
3751ce  e8 8d 06 00 00                 call   0x375860
3751d3  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3751d8  48 8b d8                       mov    rbx,rax
3751db  48 8d 8c 24 98 00 00 00        lea    rcx,[rsp+0x98]
3751e3  e8 20 f3 ff ff                 call   0x374508 ; STRING getter=0x374508 Transform
3751e8  48 8b c8                       mov    rcx,rax
3751eb  e8 d0 05 00 00                 call   0x3757c0
3751f0  48 8b c8                       mov    rcx,rax
3751f3  48 8b d3                       mov    rdx,rbx
3751f6  e8 29 f0 fb ff                 call   0x334224
3751fb  41 83 c8 ff                    or     r8d,0xffffffff
3751ff  48 8b c8                       mov    rcx,rax
375202  4c 8b ce                       mov    r9,rsi
375205  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
37520a  48 8b d7                       mov    rdx,rdi
37520d  e8 9a f7 fb ff                 call   0x3349ac
375212  4c 8b 00                       mov    r8,QWORD PTR [rax]
375215  8b 05 85 d2 08 00              mov    eax,DWORD PTR [rip+0x8d285]        # 0x4024a0
37521b  4c 89 05 76 d2 08 00           mov    QWORD PTR [rip+0x8d276],r8        # 0x402498
375222  eb 07                          jmp    0x37522b
375224  4c 8b 05 6d d2 08 00           mov    r8,QWORD PTR [rip+0x8d26d]        # 0x402498
37522b  a8 02                          test   al,0x2
37522d  75 1f                          jne    0x37524e
37522f  48 8b 0d 2a 0c 06 00           mov    rcx,QWORD PTR [rip+0x60c2a]        # 0x3d5e60
375236  48 8d 15 73 d2 08 00           lea    rdx,[rip+0x8d273]        # 0x4024b0
37523d  83 c8 02                       or     eax,0x2
375240  45 33 c9                       xor    r9d,r9d
375243  89 05 57 d2 08 00              mov    DWORD PTR [rip+0x8d257],eax        # 0x4024a0
375249  e8 d6 6a f5 ff                 call   0x2cbd24
37524e  48 8b 0d 0b 0c 06 00           mov    rcx,QWORD PTR [rip+0x60c0b]        # 0x3d5e60
375255  48 8d 15 54 d2 08 00           lea    rdx,[rip+0x8d254]        # 0x4024b0
37525c  4d 8b ce                       mov    r9,r14
37525f  4c 8b c5                       mov    r8,rbp
375262  e8 2d ce f5 ff                 call   0x2d2094
375267  4c 8d 5c 24 60                 lea    r11,[rsp+0x60]
37526c  49 8b 5b 20                    mov    rbx,QWORD PTR [r11+0x20]
375270  49 8b 6b 28                    mov    rbp,QWORD PTR [r11+0x28]
375274  49 8b e3                       mov    rsp,r11
375277  41 5e                          pop    r14
375279  5f                             pop    rdi
37527a  5e                             pop    rsi
37527b  c3                             ret
