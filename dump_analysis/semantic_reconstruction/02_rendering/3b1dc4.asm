; pdata function 0x3b1dc4..0x3b1edb unwind=0x3d2bb4
3b1dc4  4c 8b dc                       mov    r11,rsp
3b1dc7  49 89 5b 08                    mov    QWORD PTR [r11+0x8],rbx
3b1dcb  55                             push   rbp
3b1dcc  56                             push   rsi
3b1dcd  57                             push   rdi
3b1dce  48 83 ec 70                    sub    rsp,0x70
3b1dd2  8b 05 28 b1 05 00              mov    eax,DWORD PTR [rip+0x5b128]        # 0x40cf00
3b1dd8  48 8b e9                       mov    rbp,rcx
3b1ddb  a8 01                          test   al,0x1
3b1ddd  0f 85 a9 00 00 00              jne    0x3b1e8c
3b1de3  83 c8 01                       or     eax,0x1
3b1de6  49 8d 53 10                    lea    rdx,[r11+0x10]
3b1dea  49 8d 4b 10                    lea    rcx,[r11+0x10]
3b1dee  89 05 0c b1 05 00              mov    DWORD PTR [rip+0x5b10c],eax        # 0x40cf00
3b1df4  e8 37 a9 f1 ff                 call   0x2cc730
3b1df9  48 8b c8                       mov    rcx,rax
3b1dfc  e8 a3 be f1 ff                 call   0x2cdca4
3b1e01  48 8d 54 24 3e                 lea    rdx,[rsp+0x3e]
3b1e06  48 8b f0                       mov    rsi,rax
3b1e09  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
3b1e11  e8 06 f7 ff ff                 call   0x3b151c ; STRING getter=0x3b151c DisableScissorRect
3b1e16  48 8b c8                       mov    rcx,rax
3b1e19  e8 4e bf f1 ff                 call   0x2cdd6c
3b1e1e  48 8d 54 24 51                 lea    rdx,[rsp+0x51]
3b1e23  48 8b f8                       mov    rdi,rax
3b1e26  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
3b1e2e  e8 25 f4 ff ff                 call   0x3b1258 ; STRING getter=0x3b1258 UnityEngine.Rendering
3b1e33  48 8b c8                       mov    rcx,rax
3b1e36  e8 29 18 f3 ff                 call   0x2e3664
3b1e3b  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3b1e40  48 8b d8                       mov    rbx,rax
3b1e43  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
3b1e4b  e8 2c ee ff ff                 call   0x3b0c7c ; STRING getter=0x3b0c7c CommandBuffer
3b1e50  48 8b c8                       mov    rcx,rax
3b1e53  e8 c4 67 f2 ff                 call   0x2d861c
3b1e58  48 8b c8                       mov    rcx,rax
3b1e5b  48 8b d3                       mov    rdx,rbx
3b1e5e  e8 c1 23 f8 ff                 call   0x334224
3b1e63  41 83 c8 ff                    or     r8d,0xffffffff
3b1e67  48 8b c8                       mov    rcx,rax
3b1e6a  4c 8b ce                       mov    r9,rsi
3b1e6d  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
3b1e72  48 8b d7                       mov    rdx,rdi
3b1e75  e8 32 2b f8 ff                 call   0x3349ac
3b1e7a  4c 8b 00                       mov    r8,QWORD PTR [rax]
3b1e7d  8b 05 7d b0 05 00              mov    eax,DWORD PTR [rip+0x5b07d]        # 0x40cf00
3b1e83  4c 89 05 6e b0 05 00           mov    QWORD PTR [rip+0x5b06e],r8        # 0x40cef8
3b1e8a  eb 07                          jmp    0x3b1e93
3b1e8c  4c 8b 05 65 b0 05 00           mov    r8,QWORD PTR [rip+0x5b065]        # 0x40cef8
3b1e93  a8 02                          test   al,0x2
3b1e95  75 1f                          jne    0x3b1eb6
3b1e97  48 8b 0d c2 3f 02 00           mov    rcx,QWORD PTR [rip+0x23fc2]        # 0x3d5e60
3b1e9e  48 8d 15 6b b0 05 00           lea    rdx,[rip+0x5b06b]        # 0x40cf10
3b1ea5  83 c8 02                       or     eax,0x2
3b1ea8  45 33 c9                       xor    r9d,r9d
3b1eab  89 05 4f b0 05 00              mov    DWORD PTR [rip+0x5b04f],eax        # 0x40cf00
3b1eb1  e8 6e 9e f1 ff                 call   0x2cbd24
3b1eb6  48 8b 0d a3 3f 02 00           mov    rcx,QWORD PTR [rip+0x23fa3]        # 0x3d5e60
3b1ebd  48 8d 15 4c b0 05 00           lea    rdx,[rip+0x5b04c]        # 0x40cf10
3b1ec4  4c 8b c5                       mov    r8,rbp
3b1ec7  48 8b 9c 24 90 00 00 00        mov    rbx,QWORD PTR [rsp+0x90]
3b1ecf  48 83 c4 70                    add    rsp,0x70
3b1ed3  5f                             pop    rdi
3b1ed4  5e                             pop    rsi
3b1ed5  5d                             pop    rbp
3b1ed6  e9 21 9b f1 ff                 jmp    0x2cb9fc
