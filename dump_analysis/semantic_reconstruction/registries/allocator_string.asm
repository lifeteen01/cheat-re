; heuristic leaf/code range 0x2cc530..0x2cc534 unwind=0x0
2cc530  48 8b c2                       mov    rax,rdx
2cc533  c3                             ret

; pdata function 0x2d6e98..0x2d6ece unwind=0x3d2038
2d6e98  40 53                          rex push rbx
2d6e9a  48 83 ec 20                    sub    rsp,0x20
2d6e9e  48 8b d9                       mov    rbx,rcx
2d6ea1  48 c7 41 10 00 00 00 00        mov    QWORD PTR [rcx+0x10],0x0
2d6ea9  48 c7 41 18 0f 00 00 00        mov    QWORD PTR [rcx+0x18],0xf
2d6eb1  e8 3e 60 ff ff                 call   0x2ccef4
2d6eb6  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2d6ebb  c6 44 24 30 00                 mov    BYTE PTR [rsp+0x30],0x0
2d6ec0  48 8b cb                       mov    rcx,rbx
2d6ec3  e8 1c 69 ff ff                 call   0x2cd7e4
2d6ec8  48 83 c4 20                    add    rsp,0x20
2d6ecc  5b                             pop    rbx
2d6ecd  c3                             ret

; heuristic leaf/code range 0x2cb3a4..0x2cb3a8 unwind=0x0
2cb3a4  48 8b c1                       mov    rax,rcx
2cb3a7  c3                             ret

