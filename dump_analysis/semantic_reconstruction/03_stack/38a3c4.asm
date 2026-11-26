; pdata function 0x38a3c4..0x38a3f1 unwind=0x0
38a3c4  e9 a7 e8 03 00                 jmp    0x3c8c70
38a3c9  cc                             int3
38a3ca  cc                             int3
38a3cb  cc                             int3
38a3cc  e9 ff e7 03 00                 jmp    0x3c8bd0
38a3d1  cc                             int3
38a3d2  cc                             int3
38a3d3  cc                             int3
38a3d4  2b d1                          sub    edx,ecx
38a3d6  66 0f 6e c1                    movd   xmm0,ecx
38a3da  0f 5b c0                       cvtdq2ps xmm0,xmm0
38a3dd  66 0f 6e ca                    movd   xmm1,edx
38a3e1  0f 5b c9                       cvtdq2ps xmm1,xmm1
38a3e4  f3 0f 59 ca                    mulss  xmm1,xmm2
38a3e8  f3 0f 58 c8                    addss  xmm1,xmm0
38a3ec  f3 0f 2c c1                    cvttss2si eax,xmm1
38a3f0  c3                             ret
