; pdata function 0x2df644..0x2df66a unwind=0x3d2038
2df644  40 53                          rex push rbx
2df646  48 83 ec 20                    sub    rsp,0x20
2df64a  0f 28 ca                       movaps xmm1,xmm2
2df64d  48 8b da                       mov    rbx,rdx
2df650  f3 0f 59 09                    mulss  xmm1,DWORD PTR [rcx]
2df654  f3 0f 59 51 04                 mulss  xmm2,DWORD PTR [rcx+0x4]
2df659  48 8b ca                       mov    rcx,rdx
2df65c  e8 df cc fe ff                 call   0x2cc340
2df661  48 8b c3                       mov    rax,rbx
2df664  48 83 c4 20                    add    rsp,0x20
2df668  5b                             pop    rbx
2df669  c3                             ret
