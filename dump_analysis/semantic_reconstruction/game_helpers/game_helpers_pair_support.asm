; pdata function 0x2ea184..0x2ea1ad unwind=0x3d2318
2ea184  40 53                          rex push rbx
2ea186  48 83 ec 30                    sub    rsp,0x30
2ea18a  4d 8b d1                       mov    r10,r9
2ea18d  49 8b d0                       mov    rdx,r8
2ea190  32 c0                          xor    al,al
2ea192  4d 8b c2                       mov    r8,r10
2ea195  45 32 c9                       xor    r9b,r9b
2ea198  88 44 24 20                    mov    BYTE PTR [rsp+0x20],al
2ea19c  48 8b d9                       mov    rbx,rcx
2ea19f  e8 c8 03 00 00                 call   0x2ea56c
2ea1a4  48 8b c3                       mov    rax,rbx
2ea1a7  48 83 c4 30                    add    rsp,0x30
2ea1ab  5b                             pop    rbx
2ea1ac  c3                             ret

; heuristic leaf/code range 0x2df234..0x2df23e unwind=0x0
2df234  48 8b 02                       mov    rax,QWORD PTR [rdx]
2df237  48 89 01                       mov    QWORD PTR [rcx],rax
2df23a  48 8b c1                       mov    rax,rcx
2df23d  c3                             ret

; pdata function 0x2ea56c..0x2ea598 unwind=0x3d2038
2ea56c  40 53                          rex push rbx
2ea56e  48 83 ec 20                    sub    rsp,0x20
2ea572  48 8b d9                       mov    rbx,rcx
2ea575  48 8b ca                       mov    rcx,rdx
2ea578  e8 27 0e fe ff                 call   0x2cb3a4
2ea57d  48 8b c8                       mov    rcx,rax
2ea580  e8 53 40 fe ff                 call   0x2ce5d8
2ea585  48 8b 10                       mov    rdx,QWORD PTR [rax]
2ea588  48 8b c3                       mov    rax,rbx
2ea58b  48 89 13                       mov    QWORD PTR [rbx],rdx
2ea58e  c6 43 08 00                    mov    BYTE PTR [rbx+0x8],0x0
2ea592  48 83 c4 20                    add    rsp,0x20
2ea596  5b                             pop    rbx
2ea597  c3                             ret

