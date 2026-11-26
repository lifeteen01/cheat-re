; pdata function 0x36dc30..0x36dd75 unwind=0x3d3374
36dc30  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
36dc35  48 89 74 24 18                 mov    QWORD PTR [rsp+0x18],rsi
36dc3a  55                             push   rbp
36dc3b  57                             push   rdi
36dc3c  41 54                          push   r12
36dc3e  41 56                          push   r14
36dc40  41 57                          push   r15
36dc42  48 8b ec                       mov    rbp,rsp
36dc45  48 83 ec 40                    sub    rsp,0x40
36dc49  48 8b f9                       mov    rdi,rcx
36dc4c  4d 8b e0                       mov    r12,r8
36dc4f  49 8b c8                       mov    rcx,r8
36dc52  48 8b f2                       mov    rsi,rdx
36dc55  e8 4a d7 f5 ff                 call   0x2cb3a4
36dc5a  48 8b d0                       mov    rdx,rax
36dc5d  48 8b cf                       mov    rcx,rdi
36dc60  48 8b d8                       mov    rbx,rax
36dc63  e8 3c cb f7 ff                 call   0x2ea7a4
36dc68  4c 8b c8                       mov    r9,rax
36dc6b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
36dc6f  4c 8b c3                       mov    r8,rbx
36dc72  48 8b cf                       mov    rcx,rdi
36dc75  4c 8b f8                       mov    r15,rax
36dc78  e8 7b e1 f7 ff                 call   0x2ebdf8
36dc7d  4c 8b 45 e8                    mov    r8,QWORD PTR [rbp-0x18]
36dc81  4c 8d 77 08                    lea    r14,[rdi+0x8]
36dc85  4d 85 c0                       test   r8,r8
36dc88  74 24                          je     0x36dcae
36dc8a  48 8d 55 48                    lea    rdx,[rbp+0x48]
36dc8e  49 8b ce                       mov    rcx,r14
36dc91  e8 6e 98 f6 ff                 call   0x2d7504
36dc96  4c 8d 45 30                    lea    r8,[rbp+0x30]
36dc9a  c6 45 30 00                    mov    BYTE PTR [rbp+0x30],0x0
36dc9e  48 8b d0                       mov    rdx,rax
36dca1  48 8b ce                       mov    rcx,rsi
36dca4  e8 5f 11 f6 ff                 call   0x2cee08
36dca9  e9 ab 00 00 00                 jmp    0x36dd59
36dcae  48 8b cf                       mov    rcx,rdi
36dcb1  e8 aa 1d 00 00                 call   0x36fa60
36dcb6  49 8b cc                       mov    rcx,r12
36dcb9  e8 e6 d6 f5 ff                 call   0x2cb3a4
36dcbe  49 8b ce                       mov    rcx,r14
36dcc1  48 8b d8                       mov    rbx,rax
36dcc4  e8 5b f6 f5 ff                 call   0x2cd324
36dcc9  48 8b d0                       mov    rdx,rax
36dccc  48 8d 4d f0                    lea    rcx,[rbp-0x10]
36dcd0  4c 8b c3                       mov    r8,rbx
36dcd3  e8 60 f3 ff ff                 call   0x36d038
36dcd8  48 8b cf                       mov    rcx,rdi
36dcdb  e8 64 90 f6 ff                 call   0x2d6d44
36dce0  84 c0                          test   al,al
36dce2  74 2f                          je     0x36dd13
36dce4  48 8b cf                       mov    rcx,rdi
36dce7  e8 cc 20 00 00                 call   0x36fdb8
36dcec  48 8b 4d f8                    mov    rcx,QWORD PTR [rbp-0x8]
36dcf0  48 83 c1 10                    add    rcx,0x10
36dcf4  e8 ab d6 f5 ff                 call   0x2cb3a4
36dcf9  4c 8b c0                       mov    r8,rax
36dcfc  48 8d 55 e0                    lea    rdx,[rbp-0x20]
36dd00  4d 8b cf                       mov    r9,r15
36dd03  48 8b cf                       mov    rcx,rdi
36dd06  e8 ed e0 f7 ff                 call   0x2ebdf8
36dd0b  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
36dd0e  f3 0f 7f 45 e0                 movdqu XMMWORD PTR [rbp-0x20],xmm0
36dd13  48 8d 4d f0                    lea    rcx,[rbp-0x10]
36dd17  e8 1c 99 f6 ff                 call   0x2d7638
36dd1c  4c 8b 45 e0                    mov    r8,QWORD PTR [rbp-0x20]
36dd20  4c 8b c8                       mov    r9,rax
36dd23  49 8b d7                       mov    rdx,r15
36dd26  48 8b cf                       mov    rcx,rdi
36dd29  e8 fa 95 f6 ff                 call   0x2d7328
36dd2e  4c 8b c0                       mov    r8,rax
36dd31  48 8d 55 48                    lea    rdx,[rbp+0x48]
36dd35  49 8b ce                       mov    rcx,r14
36dd38  e8 c7 97 f6 ff                 call   0x2d7504
36dd3d  4c 8d 45 30                    lea    r8,[rbp+0x30]
36dd41  c6 45 30 01                    mov    BYTE PTR [rbp+0x30],0x1
36dd45  48 8b d0                       mov    rdx,rax
36dd48  48 8b ce                       mov    rcx,rsi
36dd4b  e8 b8 10 f6 ff                 call   0x2cee08
36dd50  48 8d 4d f0                    lea    rcx,[rbp-0x10]
36dd54  e8 cb 02 00 00                 call   0x36e024
36dd59  4c 8d 5c 24 40                 lea    r11,[rsp+0x40]
36dd5e  48 8b c6                       mov    rax,rsi
36dd61  49 8b 5b 38                    mov    rbx,QWORD PTR [r11+0x38]
36dd65  49 8b 73 40                    mov    rsi,QWORD PTR [r11+0x40]
36dd69  49 8b e3                       mov    rsp,r11
36dd6c  41 5f                          pop    r15
36dd6e  41 5e                          pop    r14
36dd70  41 5c                          pop    r12
36dd72  5f                             pop    rdi
36dd73  5d                             pop    rbp
36dd74  c3                             ret

; pdata function 0x36d564..0x36d590 unwind=0x3d2318
36d564  40 53                          rex push rbx
36d566  48 83 ec 30                    sub    rsp,0x30
36d56a  4d 8b c8                       mov    r9,r8
36d56d  48 8b d9                       mov    rbx,rcx
36d570  4c 8b c2                       mov    r8,rdx
36d573  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
36d578  e8 7b e8 f7 ff                 call   0x2ebdf8
36d57d  48 83 78 08 00                 cmp    QWORD PTR [rax+0x8],0x0
36d582  48 0f 44 c3                    cmove  rax,rbx
36d586  48 8b 40 08                    mov    rax,QWORD PTR [rax+0x8]
36d58a  48 83 c4 30                    add    rsp,0x30
36d58e  5b                             pop    rbx
36d58f  c3                             ret

; pdata function 0x36dd78..0x36dded unwind=0x3d2130
36dd78  40 53                          rex push rbx
36dd7a  55                             push   rbp
36dd7b  56                             push   rsi
36dd7c  57                             push   rdi
36dd7d  48 83 ec 28                    sub    rsp,0x28
36dd81  49 8b d8                       mov    rbx,r8
36dd84  48 8b e9                       mov    rbp,rcx
36dd87  e8 d4 62 f6 ff                 call   0x2d4060
36dd8c  48 8b d3                       mov    rdx,rbx
36dd8f  48 8d 4d 08                    lea    rcx,[rbp+0x8]
36dd93  e8 58 00 00 00                 call   0x36ddf0
36dd98  48 8b d3                       mov    rdx,rbx
36dd9b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
36dd9f  e8 60 0f f6 ff                 call   0x2ced04
36dda4  48 8b cd                       mov    rcx,rbp
36dda7  48 c7 45 30 07 00 00 00        mov    QWORD PTR [rbp+0x30],0x7
36ddaf  48 c7 45 38 08 00 00 00        mov    QWORD PTR [rbp+0x38],0x8
36ddb7  e8 68 f5 f5 ff                 call   0x2cd324
36ddbc  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
36ddc1  48 8d 4d 08                    lea    rcx,[rbp+0x8]
36ddc5  c7 00 00 00 80 3f              mov    DWORD PTR [rax],0x3f800000
36ddcb  e8 d0 9b f6 ff                 call   0x2d79a0
36ddd0  ba 10 00 00 00                 mov    edx,0x10
36ddd5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
36ddd9  4c 8b 00                       mov    r8,QWORD PTR [rax]
36dddc  e8 bf 8a f6 ff                 call   0x2d68a0
36dde1  48 8b c5                       mov    rax,rbp
36dde4  48 83 c4 28                    add    rsp,0x28
36dde8  5f                             pop    rdi
36dde9  5e                             pop    rsi
36ddea  5d                             pop    rbp
36ddeb  5b                             pop    rbx
36ddec  c3                             ret

