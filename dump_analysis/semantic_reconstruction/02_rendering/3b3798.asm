; pdata function 0x3b3798..0x3b383c unwind=0x3d555c
3b3798  4c 8b dc                       mov    r11,rsp
3b379b  49 89 5b 08                    mov    QWORD PTR [r11+0x8],rbx
3b379f  57                             push   rdi
3b37a0  48 83 ec 70                    sub    rsp,0x70
3b37a4  8b 05 76 95 05 00              mov    eax,DWORD PTR [rip+0x59576]        # 0x40cd20
3b37aa  48 8b da                       mov    rbx,rdx
3b37ad  48 8b f9                       mov    rdi,rcx
3b37b0  a8 01                          test   al,0x1
3b37b2  75 38                          jne    0x3b37ec
3b37b4  83 c8 01                       or     eax,0x1
3b37b7  49 8d 53 a8                    lea    rdx,[r11-0x58]
3b37bb  49 8d 4b 18                    lea    rcx,[r11+0x18]
3b37bf  89 05 5b 95 05 00              mov    DWORD PTR [rip+0x5955b],eax        # 0x40cd20
3b37c5  e8 b6 d6 ff ff                 call   0x3b0e80 ; STRING getter=0x3b0e80 Unity.Collections.LowLevel.Unsafe.UnsafeUtility::PinSystemObjectAndGetAddress
3b37ca  48 8b c8                       mov    rcx,rax
3b37cd  e8 1e 12 00 00                 call   0x3b49f0
3b37d2  48 8b c8                       mov    rcx,rax
3b37d5  e8 4e 15 00 00                 call   0x3b4d28
3b37da  4c 8b c0                       mov    r8,rax
3b37dd  48 89 05 34 95 05 00           mov    QWORD PTR [rip+0x59534],rax        # 0x40cd18
3b37e4  8b 05 36 95 05 00              mov    eax,DWORD PTR [rip+0x59536]        # 0x40cd20
3b37ea  eb 07                          jmp    0x3b37f3
3b37ec  4c 8b 05 25 95 05 00           mov    r8,QWORD PTR [rip+0x59525]        # 0x40cd18
3b37f3  a8 02                          test   al,0x2
3b37f5  75 1f                          jne    0x3b3816
3b37f7  48 8b 0d 62 26 02 00           mov    rcx,QWORD PTR [rip+0x22662]        # 0x3d5e60
3b37fe  48 8d 15 2b 95 05 00           lea    rdx,[rip+0x5952b]        # 0x40cd30
3b3805  83 c8 02                       or     eax,0x2
3b3808  45 33 c9                       xor    r9d,r9d
3b380b  89 05 0f 95 05 00              mov    DWORD PTR [rip+0x5950f],eax        # 0x40cd20
3b3811  e8 0e 85 f1 ff                 call   0x2cbd24
3b3816  48 8b 0d 43 26 02 00           mov    rcx,QWORD PTR [rip+0x22643]        # 0x3d5e60
3b381d  48 8d 15 0c 95 05 00           lea    rdx,[rip+0x5950c]        # 0x40cd30
3b3824  4c 8b cb                       mov    r9,rbx
3b3827  4c 8b c7                       mov    r8,rdi
3b382a  48 8b 9c 24 80 00 00 00        mov    rbx,QWORD PTR [rsp+0x80]
3b3832  48 83 c4 70                    add    rsp,0x70
3b3836  5f                             pop    rdi
3b3837  e9 58 e8 f1 ff                 jmp    0x2d2094
