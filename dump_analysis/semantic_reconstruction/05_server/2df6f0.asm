; pdata function 0x2df6cc..0x2df705 unwind=0x3d2038
2df6cc  40 53                          rex push rbx
2df6ce  48 83 ec 20                    sub    rsp,0x20
2df6d2  f3 0f 10 59 08                 movss  xmm3,DWORD PTR [rcx+0x8]
2df6d7  48 8b da                       mov    rbx,rdx
2df6da  f3 0f 10 51 04                 movss  xmm2,DWORD PTR [rcx+0x4]
2df6df  f3 0f 10 09                    movss  xmm1,DWORD PTR [rcx]
2df6e3  48 8b ca                       mov    rcx,rdx
2df6e6  f3 41 0f 5c 58 08              subss  xmm3,DWORD PTR [r8+0x8]
2df6ec  f3 41 0f 5c 50 04              subss  xmm2,DWORD PTR [r8+0x4]
2df6f2  f3 41 0f 5c 08                 subss  xmm1,DWORD PTR [r8]
2df6f7  e8 ac 84 0e 00                 call   0x3c7ba8
2df6fc  48 8b c3                       mov    rax,rbx
2df6ff  48 83 c4 20                    add    rsp,0x20
2df703  5b                             pop    rbx
2df704  c3                             ret
