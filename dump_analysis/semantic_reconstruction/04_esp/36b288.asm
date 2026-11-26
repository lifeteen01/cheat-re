; pdata function 0x36b288..0x36b2ae unwind=0x3d2064
36b288  48 83 ec 28                    sub    rsp,0x28
36b28c  4c 8b c1                       mov    r8,rcx
36b28f  e8 74 fc f5 ff                 call   0x2caf08
36b294  84 c0                          test   al,al
36b296  75 05                          jne    0x36b29d
36b298  48 83 c4 28                    add    rsp,0x28
36b29c  c3                             ret
36b29d  ba 40 00 00 00                 mov    edx,0x40
36b2a2  49 8b c8                       mov    rcx,r8
36b2a5  48 83 c4 28                    add    rsp,0x28
36b2a9  e9 46 eb ff ff                 jmp    0x369df4
