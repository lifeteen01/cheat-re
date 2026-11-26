; pdata function 0x2df66c..0x2df69a unwind=0x3d2038
2df66c  40 53                          rex push rbx
2df66e  48 83 ec 20                    sub    rsp,0x20
2df672  0f 28 ca                       movaps xmm1,xmm2
2df675  0f 28 da                       movaps xmm3,xmm2
2df678  f3 0f 59 59 08                 mulss  xmm3,DWORD PTR [rcx+0x8]
2df67d  48 8b da                       mov    rbx,rdx
2df680  f3 0f 59 09                    mulss  xmm1,DWORD PTR [rcx]
2df684  f3 0f 59 51 04                 mulss  xmm2,DWORD PTR [rcx+0x4]
2df689  48 8b ca                       mov    rcx,rdx
2df68c  e8 17 85 0e 00                 call   0x3c7ba8
2df691  48 8b c3                       mov    rax,rbx
2df694  48 83 c4 20                    add    rsp,0x20
2df698  5b                             pop    rbx
2df699  c3                             ret
