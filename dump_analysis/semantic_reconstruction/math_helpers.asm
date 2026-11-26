; heuristic leaf/code range 0x2e3c88..0x2e3ce2 unwind=0x0
2e3c88  f3 0f 10 1d 6c 9e fa ff        movss  xmm3,DWORD PTR [rip+0xfffffffffffa9e6c]        # 0x28dafc ; f32=1.5
2e3c90  0f 28 e0                       movaps xmm4,xmm0
2e3c93  f3 0f 59 25 b5 95 fa ff        mulss  xmm4,DWORD PTR [rip+0xfffffffffffa95b5]        # 0x28d250 ; f32=0.5
2e3c9b  0f 28 d3                       movaps xmm2,xmm3
2e3c9e  b8 df 59 37 5f                 mov    eax,0x5f3759df
2e3ca3  66 0f 7e c1                    movd   ecx,xmm0
2e3ca7  d1 f9                          sar    ecx,1
2e3ca9  2b c1                          sub    eax,ecx
2e3cab  66 0f 6e c8                    movd   xmm1,eax
2e3caf  0f 28 c1                       movaps xmm0,xmm1
2e3cb2  f3 0f 59 c4                    mulss  xmm0,xmm4
2e3cb6  f3 0f 59 c1                    mulss  xmm0,xmm1
2e3cba  f3 0f 5c d0                    subss  xmm2,xmm0
2e3cbe  f3 0f 59 d1                    mulss  xmm2,xmm1
2e3cc2  0f 28 c2                       movaps xmm0,xmm2
2e3cc5  f3 0f 59 c4                    mulss  xmm0,xmm4
2e3cc9  f3 0f 59 c2                    mulss  xmm0,xmm2
2e3ccd  f3 0f 5c d8                    subss  xmm3,xmm0
2e3cd1  f3 0f 10 05 7b 95 fa ff        movss  xmm0,DWORD PTR [rip+0xfffffffffffa957b]        # 0x28d254 ; f32=1
2e3cd9  f3 0f 59 da                    mulss  xmm3,xmm2
2e3cdd  f3 0f 5e c3                    divss  xmm0,xmm3
2e3ce1  c3                             ret

; heuristic leaf/code range 0x2e3ee8..0x2e3ef8 unwind=0x0
2e3ee8  e9 47 50 0e 00                 jmp    0x3c8f34
2e3eed  cc                             int3
2e3eee  cc                             int3
2e3eef  cc                             int3
2e3ef0  0f 54 05 69 9c fa ff           andps  xmm0,XMMWORD PTR [rip+0xfffffffffffa9c69]        # 0x28db60
2e3ef7  c3                             ret

; heuristic leaf/code range 0x3c8f34..0x3c8f3c unwind=0x0
3c8f34  e9 4f ad f1 ff                 jmp    0x2e3c88
3c8f39  cc                             int3
3c8f3a  cc                             int3
3c8f3b  cc                             int3

