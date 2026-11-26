; pdata function 0x36920c..0x36924c unwind=0x3d2038
36920c  40 53                          rex push rbx
36920e  48 83 ec 20                    sub    rsp,0x20
369212  48 8b da                       mov    rbx,rdx
369215  48 8b d1                       mov    rdx,rcx
369218  e8 eb 1c f6 ff                 call   0x2caf08
36921d  84 c0                          test   al,al
36921f  74 22                          je     0x369243
369221  48 8b ca                       mov    rcx,rdx
369224  e8 6f 00 00 00                 call   0x369298
369229  48 8b c8                       mov    rcx,rax
36922c  4c 8b c0                       mov    r8,rax
36922f  e8 d4 1c f6 ff                 call   0x2caf08
369234  84 c0                          test   al,al
369236  74 0b                          je     0x369243
369238  48 8b d3                       mov    rdx,rbx
36923b  49 8b c8                       mov    rcx,r8
36923e  e8 81 a7 00 00                 call   0x3739c4
369243  48 8b c3                       mov    rax,rbx
369246  48 83 c4 20                    add    rsp,0x20
36924a  5b                             pop    rbx
36924b  c3                             ret
