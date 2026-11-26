; pdata function 0x369324..0x3693af unwind=0x3d2038
369324  40 53                          rex push rbx
369326  48 83 ec 20                    sub    rsp,0x20
36932a  48 8b d9                       mov    rbx,rcx
36932d  e8 d6 1b f6 ff                 call   0x2caf08
369332  84 c0                          test   al,al
369334  75 08                          jne    0x36933e
369336  33 c0                          xor    eax,eax
369338  48 83 c4 20                    add    rsp,0x20
36933c  5b                             pop    rbx
36933d  c3                             ret
36933e  8b 0d 3c 56 09 00              mov    ecx,DWORD PTR [rip+0x9563c]        # 0x3fe980
369344  f6 c1 01                       test   cl,0x1
369347  75 20                          jne    0x369369
369349  4c 8b 05 b0 db 06 00           mov    r8,QWORD PTR [rip+0x6dbb0]        # 0x3d6f00
369350  83 c9 01                       or     ecx,0x1
369353  49 81 c0 30 08 ee 03           add    r8,0x3ee0830
36935a  89 0d 20 56 09 00              mov    DWORD PTR [rip+0x95620],ecx        # 0x3fe980
369360  4c 89 05 11 56 09 00           mov    QWORD PTR [rip+0x95611],r8        # 0x3fe978
369367  eb 07                          jmp    0x369370
369369  4c 8b 05 08 56 09 00           mov    r8,QWORD PTR [rip+0x95608]        # 0x3fe978
369370  f6 c1 02                       test   cl,0x2
369373  75 1f                          jne    0x369394
369375  83 c9 02                       or     ecx,0x2
369378  48 8d 15 11 56 09 00           lea    rdx,[rip+0x95611]        # 0x3fe990
36937f  89 0d fb 55 09 00              mov    DWORD PTR [rip+0x955fb],ecx        # 0x3fe980
369385  45 33 c9                       xor    r9d,r9d
369388  48 8b 0d d1 ca 06 00           mov    rcx,QWORD PTR [rip+0x6cad1]        # 0x3d5e60
36938f  e8 90 29 f6 ff                 call   0x2cbd24
369394  48 8b 0d c5 ca 06 00           mov    rcx,QWORD PTR [rip+0x6cac5]        # 0x3d5e60
36939b  48 8d 15 ee 55 09 00           lea    rdx,[rip+0x955ee]        # 0x3fe990
3693a2  4c 8b c3                       mov    r8,rbx
3693a5  48 83 c4 20                    add    rsp,0x20
3693a9  5b                             pop    rbx
3693aa  e9 4d 26 f6 ff                 jmp    0x2cb9fc

; pdata function 0x37224c..0x372278 unwind=0x3d2064
37224c  48 83 ec 28                    sub    rsp,0x28
372250  48 8b d1                       mov    rdx,rcx
372253  e8 b0 8c f5 ff                 call   0x2caf08
372258  84 c0                          test   al,al
37225a  74 15                          je     0x372271
37225c  48 8b 52 20                    mov    rdx,QWORD PTR [rdx+0x20]
372260  48 8b ca                       mov    rcx,rdx
372263  e8 a0 8c f5 ff                 call   0x2caf08
372268  84 c0                          test   al,al
37226a  74 05                          je     0x372271
37226c  8b 42 18                       mov    eax,DWORD PTR [rdx+0x18]
37226f  eb 02                          jmp    0x372273
372271  33 c0                          xor    eax,eax
372273  48 83 c4 28                    add    rsp,0x28
372277  c3                             ret

; pdata function 0x3722f0..0x372339 unwind=0x3d2064
3722f0  48 83 ec 28                    sub    rsp,0x28
3722f4  44 8b c2                       mov    r8d,edx
3722f7  48 8b d1                       mov    rdx,rcx
3722fa  e8 09 8c f5 ff                 call   0x2caf08
3722ff  84 c0                          test   al,al
372301  74 2f                          je     0x372332
372303  48 8b 52 20                    mov    rdx,QWORD PTR [rdx+0x20]
372307  48 8b ca                       mov    rcx,rdx
37230a  e8 f9 8b f5 ff                 call   0x2caf08
37230f  84 c0                          test   al,al
372311  74 1f                          je     0x372332
372313  48 8b 52 10                    mov    rdx,QWORD PTR [rdx+0x10]
372317  48 8b ca                       mov    rcx,rdx
37231a  e8 e9 8b f5 ff                 call   0x2caf08
37231f  84 c0                          test   al,al
372321  74 0f                          je     0x372332
372323  42 8d 0c c5 00 00 00 00        lea    ecx,[r8*8+0x0]
37232b  48 8b 44 11 20                 mov    rax,QWORD PTR [rcx+rdx*1+0x20]
372330  eb 02                          jmp    0x372334
372332  33 c0                          xor    eax,eax
372334  48 83 c4 28                    add    rsp,0x28
372338  c3                             ret

; pdata function 0x371c38..0x371da3 unwind=0x3d2568
371c38  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
371c3d  55                             push   rbp
371c3e  56                             push   rsi
371c3f  57                             push   rdi
371c40  48 83 ec 50                    sub    rsp,0x50
371c44  48 8b d1                       mov    rdx,rcx
371c47  e8 bc 92 f5 ff                 call   0x2caf08
371c4c  84 c0                          test   al,al
371c4e  0f 84 40 01 00 00              je     0x371d94
371c54  48 8b ca                       mov    rcx,rdx
371c57  e8 7c f9 ff ff                 call   0x3715d8
371c5c  48 8b c8                       mov    rcx,rax
371c5f  48 8b d0                       mov    rdx,rax
371c62  e8 a1 92 f5 ff                 call   0x2caf08
371c67  84 c0                          test   al,al
371c69  0f 84 25 01 00 00              je     0x371d94
371c6f  48 8b 6a 50                    mov    rbp,QWORD PTR [rdx+0x50]
371c73  48 8b cd                       mov    rcx,rbp
371c76  e8 8d 92 f5 ff                 call   0x2caf08
371c7b  84 c0                          test   al,al
371c7d  0f 84 11 01 00 00              je     0x371d94
371c83  8b 05 b7 ef 08 00              mov    eax,DWORD PTR [rip+0x8efb7]        # 0x400c40
371c89  a8 01                          test   al,0x1
371c8b  0f 85 ae 00 00 00              jne    0x371d3f
371c91  83 c8 01                       or     eax,0x1
371c94  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
371c99  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
371c9e  89 05 9c ef 08 00              mov    DWORD PTR [rip+0x8ef9c],eax        # 0x400c40
371ca4  e8 87 aa f5 ff                 call   0x2cc730
371ca9  48 8b c8                       mov    rcx,rax
371cac  e8 f3 bf f5 ff                 call   0x2cdca4
371cb1  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
371cb6  48 8b f0                       mov    rsi,rax
371cb9  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
371cc1  e8 b2 f5 ff ff                 call   0x371278 ; STRING getter=0x371278 get_texture
371cc6  48 8b c8                       mov    rcx,rax
371cc9  e8 66 c1 f5 ff                 call   0x2cde34
371cce  48 8d 54 24 3c                 lea    rdx,[rsp+0x3c]
371cd3  48 8b f8                       mov    rdi,rax
371cd6  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
371cde  e8 79 f5 ff ff                 call   0x37125c ; STRING getter=0x37125c UnityEngine
371ce3  48 8b c8                       mov    rcx,rax
371ce6  e8 49 c1 f5 ff                 call   0x2cde34
371ceb  48 8d 94 24 88 00 00 00        lea    rdx,[rsp+0x88]
371cf3  48 8b d8                       mov    rbx,rax
371cf6  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
371cfe  e8 39 f5 ff ff                 call   0x37123c ; STRING getter=0x37123c Sprite
371d03  48 8b c8                       mov    rcx,rax
371d06  e8 e9 bf f5 ff                 call   0x2cdcf4
371d0b  48 8b c8                       mov    rcx,rax
371d0e  48 8b d3                       mov    rdx,rbx
371d11  e8 0e 25 fc ff                 call   0x334224
371d16  41 83 c8 ff                    or     r8d,0xffffffff
371d1a  48 8b c8                       mov    rcx,rax
371d1d  4c 8b ce                       mov    r9,rsi
371d20  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
371d25  48 8b d7                       mov    rdx,rdi
371d28  e8 7f 2c fc ff                 call   0x3349ac
371d2d  4c 8b 00                       mov    r8,QWORD PTR [rax]
371d30  8b 05 0a ef 08 00              mov    eax,DWORD PTR [rip+0x8ef0a]        # 0x400c40
371d36  4c 89 05 fb ee 08 00           mov    QWORD PTR [rip+0x8eefb],r8        # 0x400c38
371d3d  eb 07                          jmp    0x371d46
371d3f  4c 8b 05 f2 ee 08 00           mov    r8,QWORD PTR [rip+0x8eef2]        # 0x400c38
371d46  a8 02                          test   al,0x2
371d48  75 1f                          jne    0x371d69
371d4a  48 8b 0d 0f 41 06 00           mov    rcx,QWORD PTR [rip+0x6410f]        # 0x3d5e60
371d51  48 8d 15 f8 ee 08 00           lea    rdx,[rip+0x8eef8]        # 0x400c50
371d58  83 c8 02                       or     eax,0x2
371d5b  45 33 c9                       xor    r9d,r9d
371d5e  89 05 dc ee 08 00              mov    DWORD PTR [rip+0x8eedc],eax        # 0x400c40
371d64  e8 bb 9f f5 ff                 call   0x2cbd24
371d69  48 8b 0d f0 40 06 00           mov    rcx,QWORD PTR [rip+0x640f0]        # 0x3d5e60
371d70  48 8d 15 d9 ee 08 00           lea    rdx,[rip+0x8eed9]        # 0x400c50
371d77  4c 8b c5                       mov    r8,rbp
371d7a  e8 7d 9c f5 ff                 call   0x2cb9fc
371d7f  48 8b c8                       mov    rcx,rax
371d82  48 8b d0                       mov    rdx,rax
371d85  e8 7e 91 f5 ff                 call   0x2caf08
371d8a  f6 d8                          neg    al
371d8c  48 1b c0                       sbb    rax,rax
371d8f  48 23 c2                       and    rax,rdx
371d92  eb 02                          jmp    0x371d96
371d94  33 c0                          xor    eax,eax
371d96  48 8b 5c 24 70                 mov    rbx,QWORD PTR [rsp+0x70]
371d9b  48 83 c4 50                    add    rsp,0x50
371d9f  5f                             pop    rdi
371da0  5e                             pop    rsi
371da1  5d                             pop    rbp
371da2  c3                             ret

