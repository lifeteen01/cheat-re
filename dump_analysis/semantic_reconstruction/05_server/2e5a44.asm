; pdata function 0x2e5a44..0x2e5a54 unwind=0x0
2e5a44  0f 2f c8                       comiss xmm1,xmm0
2e5a47  77 07                          ja     0x2e5a50
2e5a49  0f 28 ca                       movaps xmm1,xmm2
2e5a4c  f3 0f 5d c8                    minss  xmm1,xmm0
2e5a50  0f 28 c1                       movaps xmm0,xmm1
2e5a53  c3                             ret
