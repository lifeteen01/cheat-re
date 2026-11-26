; pdata function 0x36ca34..0x36caa6 unwind=0x3d2038
36ca34  40 53                          rex push rbx
36ca36  48 83 ec 20                    sub    rsp,0x20
36ca3a  48 8b da                       mov    rbx,rdx
36ca3d  4c 8b c1                       mov    r8,rcx
36ca40  e8 c3 e4 f5 ff                 call   0x2caf08
36ca45  84 c0                          test   al,al
36ca47  75 0a                          jne    0x36ca53
36ca49  48 8b ca                       mov    rcx,rdx
36ca4c  e8 6b b1 05 00                 call   0x3c7bbc
36ca51  eb 4a                          jmp    0x36ca9d
36ca53  ba 10 00 00 00                 mov    edx,0x10
36ca58  49 8b c8                       mov    rcx,r8
36ca5b  e8 20 fa ff ff                 call   0x36c480
36ca60  4c 8b 00                       mov    r8,QWORD PTR [rax]
36ca63  49 8b c8                       mov    rcx,r8
36ca66  e8 9d e4 f5 ff                 call   0x2caf08
36ca6b  84 c0                          test   al,al
36ca6d  75 13                          jne    0x36ca82
36ca6f  0f 57 db                       xorps  xmm3,xmm3
36ca72  0f 57 d2                       xorps  xmm2,xmm2
36ca75  0f 57 c9                       xorps  xmm1,xmm1
36ca78  48 8b cb                       mov    rcx,rbx
36ca7b  e8 28 b1 05 00                 call   0x3c7ba8
36ca80  eb 1b                          jmp    0x36ca9d
36ca82  ba 44 04 00 00                 mov    edx,0x444
36ca87  49 8b c8                       mov    rcx,r8
36ca8a  e8 f1 f9 ff ff                 call   0x36c480
36ca8f  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
36ca93  f2 0f 11 03                    movsd  QWORD PTR [rbx],xmm0
36ca97  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
36ca9a  89 43 08                       mov    DWORD PTR [rbx+0x8],eax
36ca9d  48 8b c3                       mov    rax,rbx
36caa0  48 83 c4 20                    add    rsp,0x20
36caa4  5b                             pop    rbx
36caa5  c3                             ret
