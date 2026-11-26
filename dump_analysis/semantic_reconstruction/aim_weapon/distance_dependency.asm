; heuristic leaf/code range 0x2dff30..0x2dff68 unwind=0x0
2dff30  f3 0f 10 09                    movss  xmm1,DWORD PTR [rcx]
2dff34  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
2dff39  f3 0f 5c 42 04                 subss  xmm0,DWORD PTR [rdx+0x4]
2dff3e  f3 0f 5c 0a                    subss  xmm1,DWORD PTR [rdx]
2dff42  f3 0f 10 51 08                 movss  xmm2,DWORD PTR [rcx+0x8]
2dff47  f3 0f 5c 52 08                 subss  xmm2,DWORD PTR [rdx+0x8]
2dff4c  f3 0f 59 c0                    mulss  xmm0,xmm0
2dff50  f3 0f 59 c9                    mulss  xmm1,xmm1
2dff54  f3 0f 59 d2                    mulss  xmm2,xmm2
2dff58  f3 0f 58 c1                    addss  xmm0,xmm1
2dff5c  f3 0f 58 c2                    addss  xmm0,xmm2
2dff60  e9 23 3d 00 00                 jmp    0x2e3c88
2dff65  cc                             int3
2dff66  cc                             int3
2dff67  cc                             int3

