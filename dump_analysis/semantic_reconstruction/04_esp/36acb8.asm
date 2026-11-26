; pdata function 0x36acb8..0x36acde unwind=0x3d2064
36acb8  48 83 ec 28                    sub    rsp,0x28
36acbc  4c 8b c1                       mov    r8,rcx
36acbf  e8 44 02 f6 ff                 call   0x2caf08
36acc4  84 c0                          test   al,al
36acc6  75 05                          jne    0x36accd
36acc8  48 83 c4 28                    add    rsp,0x28
36accc  c3                             ret
36accd  ba 00 00 02 00                 mov    edx,0x20000
36acd2  49 8b c8                       mov    rcx,r8
36acd5  48 83 c4 28                    add    rsp,0x28
36acd9  e9 16 f1 ff ff                 jmp    0x369df4
