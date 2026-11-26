; pdata function 0x3b3950..0x3b3997 unwind=0x3d2318
3b3950  40 53                          rex push rbx
3b3952  48 83 ec 30                    sub    rsp,0x30
3b3956  f3 0f 10 42 0c                 movss  xmm0,DWORD PTR [rdx+0xc]
3b395b  48 8b d9                       mov    rbx,rcx
3b395e  f3 0f 10 5a 08                 movss  xmm3,DWORD PTR [rdx+0x8]
3b3963  f3 0f 10 52 04                 movss  xmm2,DWORD PTR [rdx+0x4]
3b3968  f3 0f 10 0a                    movss  xmm1,DWORD PTR [rdx]
3b396c  f3 41 0f 59 40 0c              mulss  xmm0,DWORD PTR [r8+0xc]
3b3972  f3 41 0f 59 58 08              mulss  xmm3,DWORD PTR [r8+0x8]
3b3978  f3 41 0f 59 50 04              mulss  xmm2,DWORD PTR [r8+0x4]
3b397e  f3 41 0f 59 08                 mulss  xmm1,DWORD PTR [r8]
3b3983  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
3b3989  e8 c2 89 f1 ff                 call   0x2cc350
3b398e  48 8b c3                       mov    rax,rbx
3b3991  48 83 c4 30                    add    rsp,0x30
3b3995  5b                             pop    rbx
3b3996  c3                             ret
