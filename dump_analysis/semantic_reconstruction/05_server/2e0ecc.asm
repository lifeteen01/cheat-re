; pdata function 0x2e0ecc..0x2e0f10 unwind=0x0
2e0ecc  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
2e0ed0  f3 0f 10 49 04                 movss  xmm1,DWORD PTR [rcx+0x4]
2e0ed5  f3 0f 59 c0                    mulss  xmm0,xmm0
2e0ed9  f3 0f 59 c9                    mulss  xmm1,xmm1
2e0edd  f3 0f 58 c1                    addss  xmm0,xmm1
2e0ee1  e9 02 30 00 00                 jmp    0x2e3ee8
2e0ee6  cc                             int3
2e0ee7  cc                             int3
2e0ee8  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
2e0eec  f3 0f 10 49 04                 movss  xmm1,DWORD PTR [rcx+0x4]
2e0ef1  f3 0f 10 51 08                 movss  xmm2,DWORD PTR [rcx+0x8]
2e0ef6  f3 0f 59 c0                    mulss  xmm0,xmm0
2e0efa  f3 0f 59 c9                    mulss  xmm1,xmm1
2e0efe  f3 0f 59 d2                    mulss  xmm2,xmm2
2e0f02  f3 0f 58 c1                    addss  xmm0,xmm1
2e0f06  f3 0f 58 c2                    addss  xmm0,xmm2
2e0f0a  e9 79 2d 00 00                 jmp    0x2e3c88
2e0f0f  cc                             int3
