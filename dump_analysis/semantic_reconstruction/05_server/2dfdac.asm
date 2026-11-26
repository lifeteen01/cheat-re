; pdata function 0x2dfdac..0x2dfdcb unwind=0x0
2dfdac  f3 0f 10 02                    movss  xmm0,DWORD PTR [rdx]
2dfdb0  48 8b c1                       mov    rax,rcx
2dfdb3  f3 0f 58 01                    addss  xmm0,DWORD PTR [rcx]
2dfdb7  f3 0f 11 01                    movss  DWORD PTR [rcx],xmm0
2dfdbb  f3 0f 10 4a 04                 movss  xmm1,DWORD PTR [rdx+0x4]
2dfdc0  f3 0f 58 49 04                 addss  xmm1,DWORD PTR [rcx+0x4]
2dfdc5  f3 0f 11 49 04                 movss  DWORD PTR [rcx+0x4],xmm1
2dfdca  c3                             ret
