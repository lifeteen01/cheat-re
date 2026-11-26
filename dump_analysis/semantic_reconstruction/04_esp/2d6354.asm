; heuristic leaf/code range 0x2d6354..0x2d6381 unwind=0x0
2d6354  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
2d635e  eb 18                          jmp    0x2d6378
2d6360  48 0f be 01                    movsx  rax,BYTE PTR [rcx]
2d6364  49 b8 b3 01 00 00 00 01 00 00  movabs r8,0x100000001b3
2d636e  48 33 d0                       xor    rdx,rax
2d6371  48 ff c1                       inc    rcx
2d6374  49 0f af d0                    imul   rdx,r8
2d6378  80 39 00                       cmp    BYTE PTR [rcx],0x0
2d637b  75 e3                          jne    0x2d6360
2d637d  48 8b c2                       mov    rax,rdx
2d6380  c3                             ret
