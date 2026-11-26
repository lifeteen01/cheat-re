; pdata function 0x2df69c..0x2df6ca unwind=0x3d2038
2df69c  40 53                          rex push rbx
2df69e  48 83 ec 20                    sub    rsp,0x20
2df6a2  f3 0f 10 51 04                 movss  xmm2,DWORD PTR [rcx+0x4]
2df6a7  48 8b da                       mov    rbx,rdx
2df6aa  f3 0f 10 09                    movss  xmm1,DWORD PTR [rcx]
2df6ae  48 8b ca                       mov    rcx,rdx
2df6b1  f3 41 0f 5c 50 04              subss  xmm2,DWORD PTR [r8+0x4]
2df6b7  f3 41 0f 5c 08                 subss  xmm1,DWORD PTR [r8]
2df6bc  e8 7f cc fe ff                 call   0x2cc340
2df6c1  48 8b c3                       mov    rax,rbx
2df6c4  48 83 c4 20                    add    rsp,0x20
2df6c8  5b                             pop    rbx
2df6c9  c3                             ret
