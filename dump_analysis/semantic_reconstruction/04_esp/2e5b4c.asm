; pdata function 0x2e5b4c..0x2e5b7a unwind=0x3d2064
2e5b4c  48 83 ec 28                    sub    rsp,0x28
2e5b50  80 39 00                       cmp    BYTE PTR [rcx],0x0
2e5b53  48 8b c2                       mov    rax,rdx
2e5b56  74 1d                          je     0x2e5b75
2e5b58  48 0f be 11                    movsx  rdx,BYTE PTR [rcx]
2e5b5c  48 33 d0                       xor    rdx,rax
2e5b5f  48 b8 b3 01 00 00 00 01 00 00  movabs rax,0x100000001b3
2e5b69  48 0f af d0                    imul   rdx,rax
2e5b6d  48 ff c1                       inc    rcx
2e5b70  e8 d7 ff ff ff                 call   0x2e5b4c
2e5b75  48 83 c4 28                    add    rsp,0x28
2e5b79  c3                             ret
