; pdata function 0x36821c..0x368242 unwind=0x3d2064
36821c  48 83 ec 28                    sub    rsp,0x28
368220  4c 8b c1                       mov    r8,rcx
368223  e8 e0 2c f6 ff                 call   0x2caf08
368228  84 c0                          test   al,al
36822a  75 05                          jne    0x368231
36822c  48 83 c4 28                    add    rsp,0x28
368230  c3                             ret
368231  ba 00 01 00 00                 mov    edx,0x100
368236  49 8b c8                       mov    rcx,r8
368239  48 83 c4 28                    add    rsp,0x28
36823d  e9 b2 1b 00 00                 jmp    0x369df4
