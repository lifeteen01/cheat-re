; pdata function 0x2dda50..0x2dda9c unwind=0x3d2318
2dda50  40 53                          rex push rbx
2dda52  48 83 ec 30                    sub    rsp,0x30
2dda56  48 8b d9                       mov    rbx,rcx
2dda59  e8 aa d4 fe ff                 call   0x2caf08
2dda5e  84 c0                          test   al,al
2dda60  74 34                          je     0x2dda96
2dda62  48 8b ca                       mov    rcx,rdx
2dda65  e8 9e d4 fe ff                 call   0x2caf08
2dda6a  84 c0                          test   al,al
2dda6c  74 28                          je     0x2dda96
2dda6e  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2dda73  48 8b cb                       mov    rcx,rbx
2dda76  e8 91 b7 08 00                 call   0x36920c
2dda7b  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
2dda7e  f3 0f 7f 05 aa 95 0f 00        movdqu XMMWORD PTR [rip+0xf95aa],xmm0        # 0x3d7030
2dda86  e8 91 f8 07 00                 call   0x35d31c
2dda8b  48 8b c8                       mov    rcx,rax
2dda8e  48 8b d3                       mov    rdx,rbx
2dda91  e8 a6 a1 03 00                 call   0x317c3c
2dda96  48 83 c4 30                    add    rsp,0x30
2dda9a  5b                             pop    rbx
2dda9b  c3                             ret
