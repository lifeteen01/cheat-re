; pdata function 0x3810f0..0x3811c2 unwind=0x3d45f4
3810f0  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3810f5  48 89 7c 24 10                 mov    QWORD PTR [rsp+0x10],rdi
3810fa  55                             push   rbp
3810fb  48 8b ec                       mov    rbp,rsp
3810fe  48 83 ec 70                    sub    rsp,0x70
381102  49 8b d8                       mov    rbx,r8
381105  44 8b c2                       mov    r8d,edx
381108  33 d2                          xor    edx,edx
38110a  e8 3d 22 01 00                 call   0x39334c
38110f  89 45 28                       mov    DWORD PTR [rbp+0x28],eax
381112  48 8d 3d c7 46 08 00           lea    rdi,[rip+0x846c7]        # 0x4057e0
381119  8b 05 01 47 08 00              mov    eax,DWORD PTR [rip+0x84701]        # 0x405820
38111f  a8 01                          test   al,0x1
381121  75 1d                          jne    0x381140
381123  83 c8 01                       or     eax,0x1
381126  48 8b cf                       mov    rcx,rdi
381129  89 05 f1 46 08 00              mov    DWORD PTR [rip+0x846f1],eax        # 0x405820
38112f  e8 e8 15 00 00                 call   0x38271c
381134  48 8d 0d 95 fb 04 00           lea    rcx,[rip+0x4fb95]        # 0x3d0cd0
38113b  e8 ec c1 f4 ff                 call   0x2cd32c
381140  4c 8d 45 28                    lea    r8,[rbp+0x28]
381144  48 8b cf                       mov    rcx,rdi
381147  48 8d 55 b0                    lea    rdx,[rbp-0x50]
38114b  e8 1c d8 ff ff                 call   0x37e96c
381150  48 8d 55 b8                    lea    rdx,[rbp-0x48]
381154  48 8b cf                       mov    rcx,rdi
381157  e8 d4 d7 ff ff                 call   0x37e930
38115c  48 8b d0                       mov    rdx,rax
38115f  48 8d 4d b0                    lea    rcx,[rbp-0x50]
381163  e8 cc b3 f4 ff                 call   0x2cc534
381168  84 c0                          test   al,al
38116a  74 37                          je     0x3811a3
38116c  4c 8b c3                       mov    r8,rbx
38116f  48 8d 55 28                    lea    rdx,[rbp+0x28]
381173  48 8d 4d c8                    lea    rcx,[rbp-0x38]
381177  e8 4c ed ff ff                 call   0x37fec8
38117c  4c 8d 45 c8                    lea    r8,[rbp-0x38]
381180  48 8b cf                       mov    rcx,rdi
381183  48 8d 55 b8                    lea    rdx,[rbp-0x48]
381187  e8 60 64 00 00                 call   0x3875ec
38118c  4c 8d 45 28                    lea    r8,[rbp+0x28]
381190  48 8b cf                       mov    rcx,rdi
381193  48 8d 55 b8                    lea    rdx,[rbp-0x48]
381197  e8 d0 d7 ff ff                 call   0x37e96c
38119c  48 8b 08                       mov    rcx,QWORD PTR [rax]
38119f  48 89 4d b0                    mov    QWORD PTR [rbp-0x50],rcx
3811a3  48 8d 4d b0                    lea    rcx,[rbp-0x50]
3811a7  e8 20 b8 ff ff                 call   0x37c9cc
3811ac  4c 8d 5c 24 70                 lea    r11,[rsp+0x70]
3811b1  48 83 c0 04                    add    rax,0x4
3811b5  49 8b 5b 10                    mov    rbx,QWORD PTR [r11+0x10]
3811b9  49 8b 7b 18                    mov    rdi,QWORD PTR [r11+0x18]
3811bd  49 8b e3                       mov    rsp,r11
3811c0  5d                             pop    rbp
3811c1  c3                             ret

; pdata function 0x381020..0x3810f0 unwind=0x3d4050
381020  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
381025  48 89 7c 24 10                 mov    QWORD PTR [rsp+0x10],rdi
38102a  55                             push   rbp
38102b  48 8b ec                       mov    rbp,rsp
38102e  48 83 ec 60                    sub    rsp,0x60
381032  49 8b d8                       mov    rbx,r8
381035  44 8b c2                       mov    r8d,edx
381038  33 d2                          xor    edx,edx
38103a  e8 0d 23 01 00                 call   0x39334c
38103f  89 45 28                       mov    DWORD PTR [rbp+0x28],eax
381042  48 8d 3d e7 47 08 00           lea    rdi,[rip+0x847e7]        # 0x405830
381049  8b 05 21 48 08 00              mov    eax,DWORD PTR [rip+0x84821]        # 0x405870
38104f  a8 01                          test   al,0x1
381051  75 1d                          jne    0x381070
381053  83 c8 01                       or     eax,0x1
381056  48 8b cf                       mov    rcx,rdi
381059  89 05 11 48 08 00              mov    DWORD PTR [rip+0x84811],eax        # 0x405870
38105f  e8 84 16 00 00                 call   0x3826e8
381064  48 8d 0d 59 fc 04 00           lea    rcx,[rip+0x4fc59]        # 0x3d0cc4
38106b  e8 bc c2 f4 ff                 call   0x2cd32c
381070  4c 8d 45 28                    lea    r8,[rbp+0x28]
381074  48 8b cf                       mov    rcx,rdi
381077  48 8d 55 c0                    lea    rdx,[rbp-0x40]
38107b  e8 ec d8 ff ff                 call   0x37e96c
381080  48 8d 55 c8                    lea    rdx,[rbp-0x38]
381084  48 8b cf                       mov    rcx,rdi
381087  e8 a4 d8 ff ff                 call   0x37e930
38108c  48 8b d0                       mov    rdx,rax
38108f  48 8d 4d c0                    lea    rcx,[rbp-0x40]
381093  e8 9c b4 f4 ff                 call   0x2cc534
381098  84 c0                          test   al,al
38109a  74 37                          je     0x3810d3
38109c  4c 8b c3                       mov    r8,rbx
38109f  48 8d 55 28                    lea    rdx,[rbp+0x28]
3810a3  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3810a7  e8 d8 ed ff ff                 call   0x37fe84
3810ac  4c 8d 45 d8                    lea    r8,[rbp-0x28]
3810b0  48 8b cf                       mov    rcx,rdi
3810b3  48 8d 55 c8                    lea    rdx,[rbp-0x38]
3810b7  e8 08 65 00 00                 call   0x3875c4
3810bc  4c 8d 45 28                    lea    r8,[rbp+0x28]
3810c0  48 8b cf                       mov    rcx,rdi
3810c3  48 8d 55 c8                    lea    rdx,[rbp-0x38]
3810c7  e8 a0 d8 ff ff                 call   0x37e96c
3810cc  48 8b 08                       mov    rcx,QWORD PTR [rax]
3810cf  48 89 4d c0                    mov    QWORD PTR [rbp-0x40],rcx
3810d3  48 8d 4d c0                    lea    rcx,[rbp-0x40]
3810d7  e8 f0 b8 ff ff                 call   0x37c9cc
3810dc  48 8b 5c 24 70                 mov    rbx,QWORD PTR [rsp+0x70]
3810e1  48 83 c0 04                    add    rax,0x4
3810e5  48 8b 7c 24 78                 mov    rdi,QWORD PTR [rsp+0x78]
3810ea  48 83 c4 60                    add    rsp,0x60
3810ee  5d                             pop    rbp
3810ef  c3                             ret

