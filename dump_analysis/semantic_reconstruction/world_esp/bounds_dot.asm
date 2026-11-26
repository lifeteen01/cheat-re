; heuristic leaf/code range 0x366184..0x3661a9 unwind=0x0
366184  f3 0f 10 42 04                 movss  xmm0,DWORD PTR [rdx+0x4]
366189  f3 0f 59 41 04                 mulss  xmm0,DWORD PTR [rcx+0x4]
36618e  f3 0f 10 0a                    movss  xmm1,DWORD PTR [rdx]
366192  f3 0f 59 09                    mulss  xmm1,DWORD PTR [rcx]
366196  f3 0f 10 52 08                 movss  xmm2,DWORD PTR [rdx+0x8]
36619b  f3 0f 59 51 08                 mulss  xmm2,DWORD PTR [rcx+0x8]
3661a0  f3 0f 58 c1                    addss  xmm0,xmm1
3661a4  f3 0f 58 c2                    addss  xmm0,xmm2
3661a8  c3                             ret

