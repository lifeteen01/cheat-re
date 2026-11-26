; heuristic leaf/code range 0x2cc730..0x2cc737 unwind=0x0
2cc730  c6 02 37                       mov    BYTE PTR [rdx],0x37
2cc733  48 8b c2                       mov    rax,rdx
2cc736  c3                             ret

; pdata function 0x2cdca4..0x2cdcca unwind=0x3d2038
2cdca4  40 53                          rex push rbx
2cdca6  48 83 ec 20                    sub    rsp,0x20
2cdcaa  48 8b d9                       mov    rbx,rcx
2cdcad  e8 aa 08 00 00                 call   0x2ce55c
2cdcb2  84 c0                          test   al,al
2cdcb4  74 0b                          je     0x2cdcc1
2cdcb6  48 8b d3                       mov    rdx,rbx
2cdcb9  48 8b cb                       mov    rcx,rbx
2cdcbc  e8 1b fd ff ff                 call   0x2cd9dc
2cdcc1  48 8b c3                       mov    rax,rbx
2cdcc4  48 83 c4 20                    add    rsp,0x20
2cdcc8  5b                             pop    rbx
2cdcc9  c3                             ret

; heuristic leaf/code range 0x2cd9dc..0x2cd9e3 unwind=0x0
2cd9dc  8a 02                          mov    al,BYTE PTR [rdx]
2cd9de  34 37                          xor    al,0x37
2cd9e0  88 01                          mov    BYTE PTR [rcx],al
2cd9e2  c3                             ret

