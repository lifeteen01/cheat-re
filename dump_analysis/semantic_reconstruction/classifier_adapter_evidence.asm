; pdata function 0x3721b4..0x37221f unwind=0x3d2040
3721b4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3721b9  57                             push   rdi
3721ba  48 83 ec 20                    sub    rsp,0x20
3721be  48 8b f9                       mov    rdi,rcx
3721c1  e8 42 8d f5 ff                 call   0x2caf08
3721c6  84 c0                          test   al,al
3721c8  74 48                          je     0x372212
3721ca  48 8b cf                       mov    rcx,rdi
3721cd  e8 7a f3 ff ff                 call   0x37154c
3721d2  48 8b c8                       mov    rcx,rax
3721d5  48 8b d8                       mov    rbx,rax
3721d8  e8 2b 8d f5 ff                 call   0x2caf08
3721dd  84 c0                          test   al,al
3721df  74 31                          je     0x372212
3721e1  48 8b cb                       mov    rcx,rbx
3721e4  e8 33 04 00 00                 call   0x37261c
3721e9  8b c8                          mov    ecx,eax
3721eb  e8 38 f6 ff ff                 call   0x371828
3721f0  84 c0                          test   al,al
3721f2  74 1e                          je     0x372212
3721f4  48 8b cb                       mov    rcx,rbx
3721f7  e8 70 01 00 00                 call   0x37236c
3721fc  85 c0                          test   eax,eax
3721fe  74 0d                          je     0x37220d
372200  48 8b cb                       mov    rcx,rbx
372203  e8 64 01 00 00                 call   0x37236c
372208  83 f8 05                       cmp    eax,0x5
37220b  75 05                          jne    0x372212
37220d  48 8b c7                       mov    rax,rdi
372210  eb 02                          jmp    0x372214
372212  33 c0                          xor    eax,eax
372214  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
372219  48 83 c4 20                    add    rsp,0x20
37221d  5f                             pop    rdi
37221e  c3                             ret

; pdata function 0x371464..0x3714c2 unwind=0x3d2040
371464  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
371469  57                             push   rdi
37146a  48 83 ec 20                    sub    rsp,0x20
37146e  48 8b d9                       mov    rbx,rcx
371471  e8 92 9a f5 ff                 call   0x2caf08
371476  84 c0                          test   al,al
371478  74 3b                          je     0x3714b5
37147a  48 8b cb                       mov    rcx,rbx
37147d  e8 ca 00 00 00                 call   0x37154c
371482  48 8b c8                       mov    rcx,rax
371485  48 8b f8                       mov    rdi,rax
371488  e8 7b 9a f5 ff                 call   0x2caf08
37148d  84 c0                          test   al,al
37148f  74 24                          je     0x3714b5
371491  48 8b cf                       mov    rcx,rdi
371494  e8 83 11 00 00                 call   0x37261c
371499  8b c8                          mov    ecx,eax
37149b  e8 48 05 00 00                 call   0x3719e8
3714a0  84 c0                          test   al,al
3714a2  74 11                          je     0x3714b5
3714a4  48 8b cf                       mov    rcx,rdi
3714a7  e8 c0 0e 00 00                 call   0x37236c
3714ac  85 c0                          test   eax,eax
3714ae  75 05                          jne    0x3714b5
3714b0  48 8b c3                       mov    rax,rbx
3714b3  eb 02                          jmp    0x3714b7
3714b5  33 c0                          xor    eax,eax
3714b7  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
3714bc  48 83 c4 20                    add    rsp,0x20
3714c0  5f                             pop    rdi
3714c1  c3                             ret

; pdata function 0x371eb8..0x371f24 unwind=0x3d2040
371eb8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
371ebd  57                             push   rdi
371ebe  48 83 ec 20                    sub    rsp,0x20
371ec2  48 8b d9                       mov    rbx,rcx
371ec5  e8 3e 90 f5 ff                 call   0x2caf08
371eca  84 c0                          test   al,al
371ecc  74 49                          je     0x371f17
371ece  48 8b cb                       mov    rcx,rbx
371ed1  e8 76 f6 ff ff                 call   0x37154c
371ed6  48 8b c8                       mov    rcx,rax
371ed9  48 8b f8                       mov    rdi,rax
371edc  e8 27 90 f5 ff                 call   0x2caf08
371ee1  84 c0                          test   al,al
371ee3  74 32                          je     0x371f17
371ee5  48 8b cf                       mov    rcx,rdi
371ee8  e8 2f 07 00 00                 call   0x37261c
371eed  3d 7c e8 65 1a                 cmp    eax,0x1a65e87c
371ef2  74 0e                          je     0x371f02
371ef4  3d 5b 8a 8f b1                 cmp    eax,0xb18f8a5b
371ef9  74 07                          je     0x371f02
371efb  3d 60 26 09 bd                 cmp    eax,0xbd092660
371f00  75 15                          jne    0x371f17
371f02  48 8b cf                       mov    rcx,rdi
371f05  e8 62 04 00 00                 call   0x37236c
371f0a  33 c9                          xor    ecx,ecx
371f0c  85 c0                          test   eax,eax
371f0e  48 0f 45 d9                    cmovne rbx,rcx
371f12  48 8b c3                       mov    rax,rbx
371f15  eb 02                          jmp    0x371f19
371f17  33 c0                          xor    eax,eax
371f19  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
371f1e  48 83 c4 20                    add    rsp,0x20
371f22  5f                             pop    rdi
371f23  c3                             ret

; pdata function 0x3716e0..0x371761 unwind=0x3d2040
3716e0  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3716e5  57                             push   rdi
3716e6  48 83 ec 20                    sub    rsp,0x20
3716ea  48 8b d9                       mov    rbx,rcx
3716ed  e8 16 98 f5 ff                 call   0x2caf08
3716f2  84 c0                          test   al,al
3716f4  74 5e                          je     0x371754
3716f6  48 8b cb                       mov    rcx,rbx
3716f9  e8 4e fe ff ff                 call   0x37154c
3716fe  48 8b c8                       mov    rcx,rax
371701  48 8b f8                       mov    rdi,rax
371704  e8 ff 97 f5 ff                 call   0x2caf08
371709  84 c0                          test   al,al
37170b  74 47                          je     0x371754
37170d  48 8b cf                       mov    rcx,rdi
371710  e8 07 0f 00 00                 call   0x37261c
371715  3d 8f 44 92 08                 cmp    eax,0x892448f
37171a  74 23                          je     0x37173f
37171c  3d 4c 42 c4 5c                 cmp    eax,0x5cc4424c
371721  74 1c                          je     0x37173f
371723  3d 0a b7 b8 6d                 cmp    eax,0x6db8b70a
371728  74 15                          je     0x37173f
37172a  3d ca b4 27 c8                 cmp    eax,0xc827b4ca
37172f  74 0e                          je     0x37173f
371731  3d 6b 53 45 53                 cmp    eax,0x5345536b
371736  74 07                          je     0x37173f
371738  3d 23 e4 55 4b                 cmp    eax,0x4b55e423
37173d  75 15                          jne    0x371754
37173f  48 8b cf                       mov    rcx,rdi
371742  e8 25 0c 00 00                 call   0x37236c
371747  33 c9                          xor    ecx,ecx
371749  85 c0                          test   eax,eax
37174b  48 0f 45 d9                    cmovne rbx,rcx
37174f  48 8b c3                       mov    rax,rbx
371752  eb 02                          jmp    0x371756
371754  33 c0                          xor    eax,eax
371756  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
37175b  48 83 c4 20                    add    rsp,0x20
37175f  5f                             pop    rdi
371760  c3                             ret

