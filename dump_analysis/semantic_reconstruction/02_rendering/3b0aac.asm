; pdata function 0x3b0aac..0x3b0af6 unwind=0x3d2318
3b0aac  40 53                          rex push rbx
3b0aae  48 83 ec 30                    sub    rsp,0x30
3b0ab2  f3 0f 10 41 0c                 movss  xmm0,DWORD PTR [rcx+0xc]
3b0ab7  48 8b da                       mov    rbx,rdx
3b0aba  f3 0f 10 59 08                 movss  xmm3,DWORD PTR [rcx+0x8]
3b0abf  f3 0f 10 51 04                 movss  xmm2,DWORD PTR [rcx+0x4]
3b0ac4  f3 0f 10 09                    movss  xmm1,DWORD PTR [rcx]
3b0ac8  48 8b ca                       mov    rcx,rdx
3b0acb  f3 41 0f 5c 40 0c              subss  xmm0,DWORD PTR [r8+0xc]
3b0ad1  f3 41 0f 5c 58 08              subss  xmm3,DWORD PTR [r8+0x8]
3b0ad7  f3 41 0f 5c 50 04              subss  xmm2,DWORD PTR [r8+0x4]
3b0add  f3 41 0f 5c 08                 subss  xmm1,DWORD PTR [r8]
3b0ae2  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
3b0ae8  e8 63 b8 f1 ff                 call   0x2cc350
3b0aed  48 8b c3                       mov    rax,rbx
3b0af0  48 83 c4 30                    add    rsp,0x30
3b0af4  5b                             pop    rbx
3b0af5  c3                             ret
