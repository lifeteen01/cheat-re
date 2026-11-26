; pdata function 0x36a20c..0x36a238 unwind=0x3d2064
36a20c  48 83 ec 28                    sub    rsp,0x28
36a210  4c 8b c1                       mov    r8,rcx
36a213  e8 f0 0c f6 ff                 call   0x2caf08
36a218  84 c0                          test   al,al
36a21a  74 15                          je     0x36a231
36a21c  84 d2                          test   dl,dl
36a21e  75 11                          jne    0x36a231
36a220  ba 10 00 00 00                 mov    edx,0x10
36a225  49 8b c8                       mov    rcx,r8
36a228  48 83 c4 28                    add    rsp,0x28
36a22c  e9 c3 fb ff ff                 jmp    0x369df4
36a231  32 c0                          xor    al,al
36a233  48 83 c4 28                    add    rsp,0x28
36a237  c3                             ret
