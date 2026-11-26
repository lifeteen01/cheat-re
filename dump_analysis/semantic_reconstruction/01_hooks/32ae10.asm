; pdata function 0x32ae10..0x32aefc unwind=0x3d2348
32ae10  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32ae15  57                             push   rdi
32ae16  48 83 ec 30                    sub    rsp,0x30
32ae1a  48 8b f9                       mov    rdi,rcx
32ae1d  e8 b2 94 04 00                 call   0x3742d4
32ae22  48 8b d8                       mov    rbx,rax
32ae25  e8 72 2c fb ff                 call   0x2dda9c
32ae2a  48 3b d8                       cmp    rbx,rax
32ae2d  75 56                          jne    0x32ae85
32ae2f  80 3d 92 ee 0b 00 00           cmp    BYTE PTR [rip+0xbee92],0x0        # 0x3e9cc8 ; CONFIG Bools.tracers value(+0x48)
32ae36  74 45                          je     0x32ae7d
32ae38  48 8b cf                       mov    rcx,rdi
32ae3b  e8 6c 94 04 00                 call   0x3742ac
32ae40  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
32ae45  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
32ae49  48 8d 0d c0 b1 0b 00           lea    rcx,[rip+0xbb1c0]        # 0x3e6010
32ae50  e8 8b ff ff ff                 call   0x32ade0
32ae55  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
32ae5a  48 8b cf                       mov    rcx,rdi
32ae5d  48 8b d8                       mov    rbx,rax
32ae60  e8 7b 92 04 00                 call   0x3740e0
32ae65  e8 b2 a9 fe ff                 call   0x31581c
32ae6a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
32ae6f  f3 0f 11 44 24 2c              movss  DWORD PTR [rsp+0x2c],xmm0
32ae75  48 8b cb                       mov    rcx,rbx
32ae78  e8 27 03 00 00                 call   0x32b1a4
32ae7d  48 8b cf                       mov    rcx,rdi
32ae80  e8 b3 5c 00 00                 call   0x330b38
32ae85  8b 1d 65 c8 0c 00              mov    ebx,DWORD PTR [rip+0xcc865]        # 0x3f76f0
32ae8b  f6 c3 01                       test   bl,0x1
32ae8e  75 1e                          jne    0x32aeae
32ae90  83 cb 01                       or     ebx,0x1
32ae93  48 8d 0d 96 5a 0c 00           lea    rcx,[rip+0xc5a96]        # 0x3f0930
32ae9a  89 1d 50 c8 0c 00              mov    DWORD PTR [rip+0xcc850],ebx        # 0x3f76f0
32aea0  e8 33 37 fa ff                 call   0x2ce5d8
32aea5  48 89 05 3c c8 0c 00           mov    QWORD PTR [rip+0xcc83c],rax        # 0x3f76e8
32aeac  eb 07                          jmp    0x32aeb5
32aeae  48 8b 05 33 c8 0c 00           mov    rax,QWORD PTR [rip+0xcc833]        # 0x3f76e8
32aeb5  f6 c3 02                       test   bl,0x2
32aeb8  75 22                          jne    0x32aedc
32aeba  48 8b 0d 9f af 0a 00           mov    rcx,QWORD PTR [rip+0xaaf9f]        # 0x3d5e60
32aec1  48 8d 15 38 c8 0c 00           lea    rdx,[rip+0xcc838]        # 0x3f7700
32aec8  83 cb 02                       or     ebx,0x2
32aecb  45 33 c9                       xor    r9d,r9d
32aece  4c 8b c0                       mov    r8,rax
32aed1  89 1d 19 c8 0c 00              mov    DWORD PTR [rip+0xcc819],ebx        # 0x3f76f0
32aed7  e8 48 0e fa ff                 call   0x2cbd24
32aedc  48 8b 0d 7d af 0a 00           mov    rcx,QWORD PTR [rip+0xaaf7d]        # 0x3d5e60
32aee3  48 8d 15 16 c8 0c 00           lea    rdx,[rip+0xcc816]        # 0x3f7700
32aeea  4c 8b c7                       mov    r8,rdi
32aeed  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
32aef2  48 83 c4 30                    add    rsp,0x30
32aef6  5f                             pop    rdi
32aef7  e9 00 0b fa ff                 jmp    0x2cb9fc
