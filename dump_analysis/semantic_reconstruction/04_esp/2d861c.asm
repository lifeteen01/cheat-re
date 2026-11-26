; pdata function 0x2d861c..0x2d8642 unwind=0x3d2038
2d861c  40 53                          rex push rbx
2d861e  48 83 ec 20                    sub    rsp,0x20
2d8622  48 8b d9                       mov    rbx,rcx
2d8625  e8 96 04 00 00                 call   0x2d8ac0
2d862a  84 c0                          test   al,al
2d862c  74 0b                          je     0x2d8639
2d862e  48 8b d3                       mov    rdx,rbx
2d8631  48 8b cb                       mov    rcx,rbx
2d8634  e8 af fc ff ff                 call   0x2d82e8
2d8639  48 8b c3                       mov    rax,rbx
2d863c  48 83 c4 20                    add    rsp,0x20
2d8640  5b                             pop    rbx
2d8641  c3                             ret
