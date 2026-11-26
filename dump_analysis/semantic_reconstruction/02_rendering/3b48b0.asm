; pdata function 0x3b48b0..0x3b48d6 unwind=0x3d2038
3b48b0  40 53                          rex push rbx
3b48b2  48 83 ec 20                    sub    rsp,0x20
3b48b6  48 8b d9                       mov    rbx,rcx
3b48b9  e8 e2 03 fb ff                 call   0x364ca0
3b48be  84 c0                          test   al,al
3b48c0  74 0b                          je     0x3b48cd
3b48c2  48 8b d3                       mov    rdx,rbx
3b48c5  48 8b cb                       mov    rcx,rbx
3b48c8  e8 7f fd ff ff                 call   0x3b464c
3b48cd  48 8b c3                       mov    rax,rbx
3b48d0  48 83 c4 20                    add    rsp,0x20
3b48d4  5b                             pop    rbx
3b48d5  c3                             ret
