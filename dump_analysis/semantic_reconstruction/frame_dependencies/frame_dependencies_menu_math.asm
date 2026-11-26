; pdata function 0x388a14..0x388b49 unwind=0x3d29a4
388a14  4c 8b dc                       mov    r11,rsp
388a17  49 89 5b 08                    mov    QWORD PTR [r11+0x8],rbx
388a1b  49 89 73 10                    mov    QWORD PTR [r11+0x10],rsi
388a1f  57                             push   rdi
388a20  48 83 ec 70                    sub    rsp,0x70
388a24  8b 05 be ac 07 00              mov    eax,DWORD PTR [rip+0x7acbe]        # 0x4036e8
388a2a  0f 29 74 24 60                 movaps XMMWORD PTR [rsp+0x60],xmm6
388a2f  0f 28 f1                       movaps xmm6,xmm1
388a32  0f 29 7c 24 50                 movaps XMMWORD PTR [rsp+0x50],xmm7
388a37  0f 28 f8                       movaps xmm7,xmm0
388a3a  a8 01                          test   al,0x1
388a3c  0f 85 a9 00 00 00              jne    0x388aeb
388a42  83 c8 01                       or     eax,0x1
388a45  49 8d 53 18                    lea    rdx,[r11+0x18]
388a49  49 8d 4b 18                    lea    rcx,[r11+0x18]
388a4d  89 05 95 ac 07 00              mov    DWORD PTR [rip+0x7ac95],eax        # 0x4036e8
388a53  e8 d8 3c f4 ff                 call   0x2cc730
388a58  48 8b c8                       mov    rcx,rax
388a5b  e8 44 52 f4 ff                 call   0x2cdca4
388a60  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
388a65  48 8b f0                       mov    rsi,rax
388a68  48 8d 8c 24 98 00 00 00        lea    rcx,[rsp+0x98]
388a70  e8 0f a5 ff ff                 call   0x382f84 ; STRING getter=0x382f84 Range
388a75  48 8b c8                       mov    rcx,rax
388a78  e8 37 fa f4 ff                 call   0x2d84b4
388a7d  48 8d 54 24 3d                 lea    rdx,[rsp+0x3d]
388a82  48 8b f8                       mov    rdi,rax
388a85  48 8d 8c 24 98 00 00 00        lea    rcx,[rsp+0x98]
388a8d  e8 b2 a4 ff ff                 call   0x382f44 ; STRING getter=0x382f44 UnityEngine
388a92  48 8b c8                       mov    rcx,rax
388a95  e8 72 53 f4 ff                 call   0x2cde0c
388a9a  48 8d 54 24 36                 lea    rdx,[rsp+0x36]
388a9f  48 8b d8                       mov    rbx,rax
388aa2  48 8d 8c 24 98 00 00 00        lea    rcx,[rsp+0x98]
388aaa  e8 05 a4 ff ff                 call   0x382eb4 ; STRING getter=0x382eb4 Random
388aaf  48 8b c8                       mov    rcx,rax
388ab2  e8 59 46 f5 ff                 call   0x2dd110
388ab7  48 8b c8                       mov    rcx,rax
388aba  48 8b d3                       mov    rdx,rbx
388abd  e8 62 b7 fa ff                 call   0x334224
388ac2  41 83 c8 ff                    or     r8d,0xffffffff
388ac6  48 8b c8                       mov    rcx,rax
388ac9  4c 8b ce                       mov    r9,rsi
388acc  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
388ad1  48 8b d7                       mov    rdx,rdi
388ad4  e8 d3 be fa ff                 call   0x3349ac
388ad9  4c 8b 00                       mov    r8,QWORD PTR [rax]
388adc  8b 05 06 ac 07 00              mov    eax,DWORD PTR [rip+0x7ac06]        # 0x4036e8
388ae2  4c 89 05 f7 ab 07 00           mov    QWORD PTR [rip+0x7abf7],r8        # 0x4036e0
388ae9  eb 07                          jmp    0x388af2
388aeb  4c 8b 05 ee ab 07 00           mov    r8,QWORD PTR [rip+0x7abee]        # 0x4036e0
388af2  a8 02                          test   al,0x2
388af4  75 1f                          jne    0x388b15
388af6  48 8b 0d 63 d3 04 00           mov    rcx,QWORD PTR [rip+0x4d363]        # 0x3d5e60
388afd  48 8d 15 ec ab 07 00           lea    rdx,[rip+0x7abec]        # 0x4036f0
388b04  83 c8 02                       or     eax,0x2
388b07  45 33 c9                       xor    r9d,r9d
388b0a  89 05 d8 ab 07 00              mov    DWORD PTR [rip+0x7abd8],eax        # 0x4036e8
388b10  e8 0f 32 f4 ff                 call   0x2cbd24
388b15  48 8b 0d 44 d3 04 00           mov    rcx,QWORD PTR [rip+0x4d344]        # 0x3d5e60
388b1c  48 8d 15 cd ab 07 00           lea    rdx,[rip+0x7abcd]        # 0x4036f0
388b23  0f 28 de                       movaps xmm3,xmm6
388b26  0f 28 d7                       movaps xmm2,xmm7
388b29  0f 28 74 24 60                 movaps xmm6,XMMWORD PTR [rsp+0x60]
388b2e  4c 8d 5c 24 70                 lea    r11,[rsp+0x70]
388b33  49 8b 5b 10                    mov    rbx,QWORD PTR [r11+0x10]
388b37  49 8b 73 18                    mov    rsi,QWORD PTR [r11+0x18]
388b3b  0f 28 7c 24 50                 movaps xmm7,XMMWORD PTR [rsp+0x50]
388b40  49 8b e3                       mov    rsp,r11
388b43  5f                             pop    rdi
388b44  e9 8b 5e f5 ff                 jmp    0x2de9d4

; pdata function 0x335e48..0x335ea6 unwind=0x3d3d84
335e48  40 53                          rex push rbx
335e4a  48 83 ec 50                    sub    rsp,0x50
335e4e  0f 29 74 24 40                 movaps XMMWORD PTR [rsp+0x40],xmm6
335e53  41 8a d9                       mov    bl,r9b
335e56  0f 29 7c 24 30                 movaps XMMWORD PTR [rsp+0x30],xmm7
335e5b  0f 28 f2                       movaps xmm6,xmm2
335e5e  44 0f 29 44 24 20              movaps XMMWORD PTR [rsp+0x20],xmm8
335e64  0f 28 f9                       movaps xmm7,xmm1
335e67  44 0f 28 c0                    movaps xmm8,xmm0
335e6b  e8 3c c8 05 00                 call   0x3926ac
335e70  f3 0f 10 94 24 80 00 00 00     movss  xmm2,DWORD PTR [rsp+0x80]
335e79  f3 0f 59 50 10                 mulss  xmm2,DWORD PTR [rax+0x10]
335e7e  84 db                          test   bl,bl
335e80  75 03                          jne    0x335e85
335e82  0f 28 f7                       movaps xmm6,xmm7
335e85  0f 28 ce                       movaps xmm1,xmm6
335e88  41 0f 28 c0                    movaps xmm0,xmm8
335e8c  0f 28 74 24 40                 movaps xmm6,XMMWORD PTR [rsp+0x40]
335e91  0f 28 7c 24 30                 movaps xmm7,XMMWORD PTR [rsp+0x30]
335e96  44 0f 28 44 24 20              movaps xmm8,XMMWORD PTR [rsp+0x20]
335e9c  48 83 c4 50                    add    rsp,0x50
335ea0  5b                             pop    rbx
335ea1  e9 b6 f7 ff ff                 jmp    0x33565c

