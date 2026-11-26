; pdata function 0x2e3614..0x2e363a unwind=0x3d2038
2e3614  40 53                          rex push rbx
2e3616  48 83 ec 20                    sub    rsp,0x20
2e361a  48 8b d9                       mov    rbx,rcx
2e361d  e8 c2 9c ff ff                 call   0x2dd2e4
2e3622  84 c0                          test   al,al
2e3624  74 0b                          je     0x2e3631
2e3626  48 8b d3                       mov    rdx,rbx
2e3629  48 8b cb                       mov    rcx,rbx
2e362c  e8 cf fd ff ff                 call   0x2e3400
2e3631  48 8b c3                       mov    rax,rbx
2e3634  48 83 c4 20                    add    rsp,0x20
2e3638  5b                             pop    rbx
2e3639  c3                             ret
