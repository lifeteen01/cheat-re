; pdata function 0x389e84..0x389f18 unwind=0x3d2130
389e84  40 53                          rex push rbx
389e86  55                             push   rbp
389e87  56                             push   rsi
389e88  57                             push   rdi
389e89  48 83 ec 28                    sub    rsp,0x28
389e8d  48 8b f1                       mov    rsi,rcx
389e90  48 85 c9                       test   rcx,rcx
389e93  75 19                          jne    0x389eae
389e95  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
389e9a  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
389e9f  e8 8c 28 f4 ff                 call   0x2cc730
389ea4  48 8b c8                       mov    rcx,rax
389ea7  e8 f8 3d f4 ff                 call   0x2cdca4
389eac  eb 61                          jmp    0x389f0f
389eae  48 63 0d 1b b9 07 00           movsxd rcx,DWORD PTR [rip+0x7b91b]        # 0x4057d0
389eb5  48 8d 15 14 99 07 00           lea    rdx,[rip+0x79914]        # 0x4037d0
389ebc  48 8b e9                       mov    rbp,rcx
389ebf  b8 01 00 00 00                 mov    eax,0x1
389ec4  2b c1                          sub    eax,ecx
389ec6  48 c1 e5 0c                    shl    rbp,0xc
389eca  48 8b ce                       mov    rcx,rsi
389ecd  89 05 fd b8 07 00              mov    DWORD PTR [rip+0x7b8fd],eax        # 0x4057d0
389ed3  48 03 ea                       add    rbp,rdx
389ed6  e8 29 0a 04 00                 call   0x3ca904
389edb  48 8b d8                       mov    rbx,rax
389ede  48 3d 00 10 00 00              cmp    rax,0x1000
389ee4  72 07                          jb     0x389eed
389ee6  bb ff 0f 00 00                 mov    ebx,0xfff
389eeb  eb 05                          jmp    0x389ef2
389eed  48 85 c0                       test   rax,rax
389ef0  74 16                          je     0x389f08
389ef2  33 ff                          xor    edi,edi
389ef4  0f be 0c 37                    movsx  ecx,BYTE PTR [rdi+rsi*1]
389ef8  e8 e3 ea ff ff                 call   0x3889e0
389efd  88 04 2f                       mov    BYTE PTR [rdi+rbp*1],al
389f00  48 ff c7                       inc    rdi
389f03  48 3b fb                       cmp    rdi,rbx
389f06  72 ec                          jb     0x389ef4
389f08  c6 04 2b 00                    mov    BYTE PTR [rbx+rbp*1],0x0
389f0c  48 8b c5                       mov    rax,rbp
389f0f  48 83 c4 28                    add    rsp,0x28
389f13  5f                             pop    rdi
389f14  5e                             pop    rsi
389f15  5d                             pop    rbp
389f16  5b                             pop    rbx
389f17  c3                             ret

; pdata function 0x384cc0..0x384ceb unwind=0x3d2b74
384cc0  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
384cc5  48 83 ec 28                    sub    rsp,0x28
384cc9  48 63 d1                       movsxd rdx,ecx
384ccc  48 8d 0d 35 74 07 00           lea    rcx,[rip+0x77435]        # 0x3fc108
384cd3  e8 d8 1a fb ff                 call   0x3367b0
384cd8  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
384cdd  48 8d 48 58                    lea    rcx,[rax+0x58]
384ce1  e8 1e c0 f9 ff                 call   0x320d04
384ce6  48 83 c4 28                    add    rsp,0x28
384cea  c3                             ret

