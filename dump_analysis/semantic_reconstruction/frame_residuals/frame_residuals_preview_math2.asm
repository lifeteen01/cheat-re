; pdata function 0x335e48..0x335ea6 unwind=0x3d3d84
335e48  40 53                          rex push rbx
335e4a  48 83 ec 50                    sub    rsp,0x50
335e4e  0f 29 74 24 40                 movaps XMMWORD PTR [rsp+0x40],xmm6
335e53  41 8a d9                       mov    bl,r9b
335e56  0f 29 7c 24 30                 movaps XMMWORD PTR [rsp+0x30],xmm7
335e5b  0f 28 f2                       movaps xmm6,xmm2
335e5e  44 0f 29 44 24 20              movaps XMMWORD PTR [rsp+0x20],xmm8
335e64  0f 28 f9                       movaps xmm7,xmm1
335e67  44 0f 28 c0                    movaps xmm8,xmm0
335e6b  e8 3c c8 05 00                 call   0x3926ac
335e70  f3 0f 10 94 24 80 00 00 00     movss  xmm2,DWORD PTR [rsp+0x80]
335e79  f3 0f 59 50 10                 mulss  xmm2,DWORD PTR [rax+0x10]
335e7e  84 db                          test   bl,bl
335e80  75 03                          jne    0x335e85
335e82  0f 28 f7                       movaps xmm6,xmm7
335e85  0f 28 ce                       movaps xmm1,xmm6
335e88  41 0f 28 c0                    movaps xmm0,xmm8
335e8c  0f 28 74 24 40                 movaps xmm6,XMMWORD PTR [rsp+0x40]
335e91  0f 28 7c 24 30                 movaps xmm7,XMMWORD PTR [rsp+0x30]
335e96  44 0f 28 44 24 20              movaps xmm8,XMMWORD PTR [rsp+0x20]
335e9c  48 83 c4 50                    add    rsp,0x50
335ea0  5b                             pop    rbx
335ea1  e9 b6 f7 ff ff                 jmp    0x33565c

; pdata function 0x378940..0x37896d unwind=0x3d2038
378940  40 53                          rex push rbx
378942  48 83 ec 20                    sub    rsp,0x20
378946  f3 0f 10 51 0c                 movss  xmm2,DWORD PTR [rcx+0xc]
37894b  48 8b da                       mov    rbx,rdx
37894e  f3 0f 10 49 08                 movss  xmm1,DWORD PTR [rcx+0x8]
378953  f3 0f 5c 51 04                 subss  xmm2,DWORD PTR [rcx+0x4]
378958  f3 0f 5c 09                    subss  xmm1,DWORD PTR [rcx]
37895c  48 8b ca                       mov    rcx,rdx
37895f  e8 dc 39 f5 ff                 call   0x2cc340
378964  48 8b c3                       mov    rax,rbx
378967  48 83 c4 20                    add    rsp,0x20
37896b  5b                             pop    rbx
37896c  c3                             ret

; heuristic leaf/code range 0x2d4870..0x2d487b unwind=0x0
2d4870  48 c7 01 00 00 00 00           mov    QWORD PTR [rcx],0x0
2d4877  48 8b c1                       mov    rax,rcx
2d487a  c3                             ret

