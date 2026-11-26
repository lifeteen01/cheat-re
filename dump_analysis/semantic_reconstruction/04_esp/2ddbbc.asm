; pdata function 0x2ddbbc..0x2ddbf7 unwind=0x3d204c
2ddbbc  48 83 ec 38                    sub    rsp,0x38
2ddbc0  4c 8b c2                       mov    r8,rdx
2ddbc3  e8 40 d3 fe ff                 call   0x2caf08
2ddbc8  84 c0                          test   al,al
2ddbca  74 26                          je     0x2ddbf2
2ddbcc  48 8b ca                       mov    rcx,rdx
2ddbcf  e8 34 d3 fe ff                 call   0x2caf08
2ddbd4  84 c0                          test   al,al
2ddbd6  74 1a                          je     0x2ddbf2
2ddbd8  0f 10 05 51 94 0f 00           movups xmm0,XMMWORD PTR [rip+0xf9451]        # 0x3d7030
2ddbdf  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2ddbe4  49 8b c8                       mov    rcx,r8
2ddbe7  66 0f 7f 44 24 20              movdqa XMMWORD PTR [rsp+0x20],xmm0
2ddbed  e8 12 61 09 00                 call   0x373d04
2ddbf2  48 83 c4 38                    add    rsp,0x38
2ddbf6  c3                             ret
