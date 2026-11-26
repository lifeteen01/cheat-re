; heuristic leaf/code range 0x350c20..0x350c31 unwind=0x0
350c20  48 b8 44 4d 5b 4e 5a 5e 4e 3e  movabs rax,0x3e4e5e5a4e5b4d44
350c2a  48 89 02                       mov    QWORD PTR [rdx],rax
350c2d  48 8b c2                       mov    rax,rdx
350c30  c3                             ret

; heuristic leaf/code range 0x350c64..0x350c75 unwind=0x0
350c64  48 b8 54 57 57 4e 5e 52 49 3e  movabs rax,0x3e49525e4e575754
350c6e  48 89 02                       mov    QWORD PTR [rdx],rax
350c71  48 8b c2                       mov    rax,rdx
350c74  c3                             ret

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

