; pdata function 0x3215cc..0x3217e9 unwind=0x3d338c
3215cc  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3215d1  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
3215d6  55                             push   rbp
3215d7  57                             push   rdi
3215d8  41 56                          push   r14
3215da  48 8b ec                       mov    rbp,rsp
3215dd  48 81 ec 80 00 00 00           sub    rsp,0x80
3215e4  80 3d 5d 04 0d 00 00           cmp    BYTE PTR [rip+0xd045d],0x0        # 0x3f1a48 ; CONFIG Bools.InstantLoot value(+0x48)
3215eb  40 8a f2                       mov    sil,dl
3215ee  48 8b f9                       mov    rdi,rcx
3215f1  0f 84 6a 01 00 00              je     0x321761
3215f7  48 8d 55 30                    lea    rdx,[rbp+0x30]
3215fb  48 8d 4d 30                    lea    rcx,[rbp+0x30]
3215ff  e8 2c b1 fa ff                 call   0x2cc730
321604  48 8b c8                       mov    rcx,rax
321607  e8 98 c6 fa ff                 call   0x2cdca4
32160c  48 8d 55 b1                    lea    rdx,[rbp-0x4f]
321610  48 8b d8                       mov    rbx,rax
321613  48 8d 4d 38                    lea    rcx,[rbp+0x38]
321617  e8 4c ff ff ff                 call   0x321568 ; STRING getter=0x321568 ItemIcon/<>c__DisplayClass120_0
32161c  48 8b c8                       mov    rcx,rax
32161f  e8 78 02 00 00                 call   0x32189c
321624  48 8b c8                       mov    rcx,rax
321627  48 8b d3                       mov    rdx,rbx
32162a  e8 f5 2b 01 00                 call   0x334224
32162f  48 8b c8                       mov    rcx,rax
321632  48 8b d0                       mov    rdx,rax
321635  e8 ce 98 fa ff                 call   0x2caf08
32163a  84 c0                          test   al,al
32163c  0f 84 8f 01 00 00              je     0x3217d1
321642  48 8b ca                       mov    rcx,rdx
321645  e8 7a 02 00 00                 call   0x3218c4
32164a  48 8b c8                       mov    rcx,rax
32164d  4c 8b f0                       mov    r14,rax
321650  e8 b3 98 fa ff                 call   0x2caf08
321655  84 c0                          test   al,al
321657  0f 84 74 01 00 00              je     0x3217d1
32165d  49 89 7e 10                    mov    QWORD PTR [r14+0x10],rdi
321661  e8 86 01 00 00                 call   0x3217ec
321666  48 63 c8                       movsxd rcx,eax
321669  49 89 4e 18                    mov    QWORD PTR [r14+0x18],rcx
32166d  8b 0d e5 03 0d 00              mov    ecx,DWORD PTR [rip+0xd03e5]        # 0x3f1a58
321673  49 c7 46 20 00 00 00 00        mov    QWORD PTR [r14+0x20],0x0
32167b  f6 c1 01                       test   cl,0x1
32167e  0f 85 9a 00 00 00              jne    0x32171e
321684  83 c9 01                       or     ecx,0x1
321687  48 8d 55 30                    lea    rdx,[rbp+0x30]
32168b  89 0d c7 03 0d 00              mov    DWORD PTR [rip+0xd03c7],ecx        # 0x3f1a58
321691  48 8d 4d 30                    lea    rcx,[rbp+0x30]
321695  e8 96 b0 fa ff                 call   0x2cc730
32169a  48 8b c8                       mov    rcx,rax
32169d  e8 02 c6 fa ff                 call   0x2cdca4
3216a2  48 8d 55 b1                    lea    rdx,[rbp-0x4f]
3216a6  48 8b f0                       mov    rsi,rax
3216a9  48 8d 4d 38                    lea    rcx,[rbp+0x38]
3216ad  e8 ee fe ff ff                 call   0x3215a0 ; STRING getter=0x3215a0 <TryToMove>b__0
3216b2  48 8b c8                       mov    rcx,rax
3216b5  e8 a6 ba fb ff                 call   0x2dd160
3216ba  48 8d 55 b0                    lea    rdx,[rbp-0x50]
3216be  48 8b f8                       mov    rdi,rax
3216c1  48 8d 4d 38                    lea    rcx,[rbp+0x38]
3216c5  e8 66 b0 fa ff                 call   0x2cc730
3216ca  48 8b c8                       mov    rcx,rax
3216cd  e8 d2 c5 fa ff                 call   0x2cdca4
3216d2  48 8d 55 d1                    lea    rdx,[rbp-0x2f]
3216d6  48 8b d8                       mov    rbx,rax
3216d9  48 8d 4d 38                    lea    rcx,[rbp+0x38]
3216dd  e8 a2 fe ff ff                 call   0x321584 ; STRING getter=0x321584 ItemIcon/<>c__DisplayClass120_0
3216e2  48 8b c8                       mov    rcx,rax
3216e5  e8 b2 01 00 00                 call   0x32189c
3216ea  48 8b c8                       mov    rcx,rax
3216ed  48 8b d3                       mov    rdx,rbx
3216f0  e8 2f 2b 01 00                 call   0x334224
3216f5  41 83 c8 ff                    or     r8d,0xffffffff
3216f9  48 8b c8                       mov    rcx,rax
3216fc  4c 8b ce                       mov    r9,rsi
3216ff  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
321704  48 8b d7                       mov    rdx,rdi
321707  e8 a0 32 01 00                 call   0x3349ac
32170c  8b 0d 46 03 0d 00              mov    ecx,DWORD PTR [rip+0xd0346]        # 0x3f1a58
321712  4c 8b 00                       mov    r8,QWORD PTR [rax]
321715  4c 89 05 34 03 0d 00           mov    QWORD PTR [rip+0xd0334],r8        # 0x3f1a50
32171c  eb 07                          jmp    0x321725
32171e  4c 8b 05 2b 03 0d 00           mov    r8,QWORD PTR [rip+0xd032b]        # 0x3f1a50
321725  f6 c1 02                       test   cl,0x2
321728  75 1f                          jne    0x321749
32172a  83 c9 02                       or     ecx,0x2
32172d  48 8d 15 2c 03 0d 00           lea    rdx,[rip+0xd032c]        # 0x3f1a60
321734  89 0d 1e 03 0d 00              mov    DWORD PTR [rip+0xd031e],ecx        # 0x3f1a58
32173a  45 33 c9                       xor    r9d,r9d
32173d  48 8b 0d 1c 47 0b 00           mov    rcx,QWORD PTR [rip+0xb471c]        # 0x3d5e60
321744  e8 db a5 fa ff                 call   0x2cbd24
321749  48 8b 0d 10 47 0b 00           mov    rcx,QWORD PTR [rip+0xb4710]        # 0x3d5e60
321750  48 8d 15 09 03 0d 00           lea    rdx,[rip+0xd0309]        # 0x3f1a60
321757  4d 8b c6                       mov    r8,r14
32175a  e8 9d a2 fa ff                 call   0x2cb9fc
32175f  eb 70                          jmp    0x3217d1
321761  8b 1d f1 02 0d 00              mov    ebx,DWORD PTR [rip+0xd02f1]        # 0x3f1a58
321767  f6 c3 04                       test   bl,0x4
32176a  75 1e                          jne    0x32178a
32176c  83 cb 04                       or     ebx,0x4
32176f  48 8d 0d fa 50 0c 00           lea    rcx,[rip+0xc50fa]        # 0x3e6870
321776  89 1d dc 02 0d 00              mov    DWORD PTR [rip+0xd02dc],ebx        # 0x3f1a58
32177c  e8 57 ce fa ff                 call   0x2ce5d8
321781  48 89 05 b0 03 0d 00           mov    QWORD PTR [rip+0xd03b0],rax        # 0x3f1b38
321788  eb 07                          jmp    0x321791
32178a  48 8b 05 a7 03 0d 00           mov    rax,QWORD PTR [rip+0xd03a7]        # 0x3f1b38
321791  f6 c3 08                       test   bl,0x8
321794  75 22                          jne    0x3217b8
321796  48 8b 0d c3 46 0b 00           mov    rcx,QWORD PTR [rip+0xb46c3]        # 0x3d5e60
32179d  48 8d 15 9c 03 0d 00           lea    rdx,[rip+0xd039c]        # 0x3f1b40
3217a4  83 cb 08                       or     ebx,0x8
3217a7  45 33 c9                       xor    r9d,r9d
3217aa  4c 8b c0                       mov    r8,rax
3217ad  89 1d a5 02 0d 00              mov    DWORD PTR [rip+0xd02a5],ebx        # 0x3f1a58
3217b3  e8 6c a5 fa ff                 call   0x2cbd24
3217b8  48 8b 0d a1 46 0b 00           mov    rcx,QWORD PTR [rip+0xb46a1]        # 0x3d5e60
3217bf  48 8d 15 7a 03 0d 00           lea    rdx,[rip+0xd037a]        # 0x3f1b40
3217c6  44 8a ce                       mov    r9b,sil
3217c9  4c 8b c7                       mov    r8,rdi
3217cc  e8 23 fd ff ff                 call   0x3214f4
3217d1  4c 8d 9c 24 80 00 00 00        lea    r11,[rsp+0x80]
3217d9  49 8b 5b 20                    mov    rbx,QWORD PTR [r11+0x20]
3217dd  49 8b 73 28                    mov    rsi,QWORD PTR [r11+0x28]
3217e1  49 8b e3                       mov    rsp,r11
3217e4  41 5e                          pop    r14
3217e6  5f                             pop    rdi
3217e7  5d                             pop    rbp
3217e8  c3                             ret
