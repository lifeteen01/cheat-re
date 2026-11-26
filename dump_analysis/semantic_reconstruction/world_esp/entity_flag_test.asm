; pdata function 0x3674b4..0x3674e4 unwind=0x3d2064
3674b4  48 83 ec 28                    sub    rsp,0x28
3674b8  44 8b ca                       mov    r9d,edx
3674bb  4c 8b c1                       mov    r8,rcx
3674be  e8 45 3a f6 ff                 call   0x2caf08
3674c3  84 c0                          test   al,al
3674c5  74 18                          je     0x3674df
3674c7  ba d8 01 00 00                 mov    edx,0x1d8
3674cc  49 8b c8                       mov    rcx,r8
3674cf  e8 68 79 f7 ff                 call   0x2dee3c
3674d4  8b 08                          mov    ecx,DWORD PTR [rax]
3674d6  41 23 c9                       and    ecx,r9d
3674d9  41 3b c9                       cmp    ecx,r9d
3674dc  0f 94 c0                       sete   al
3674df  48 83 c4 28                    add    rsp,0x28
3674e3  c3                             ret

