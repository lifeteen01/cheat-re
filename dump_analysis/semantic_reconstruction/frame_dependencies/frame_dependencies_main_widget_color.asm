; heuristic leaf/code range 0x3789fc..0x378a14 unwind=0x0
3789fc  0f 28 c8                       movaps xmm1,xmm0
3789ff  0f 57 c0                       xorps  xmm0,xmm0
378a02  0f 2f c1                       comiss xmm0,xmm1
378a05  77 0c                          ja     0x378a13
378a07  f3 0f 10 05 45 48 f1 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff14845]        # 0x28d254 ; f32=1
378a0f  f3 0f 5d c1                    minss  xmm0,xmm1
378a13  c3                             ret

; pdata function 0x37898c..0x3789f9 unwind=0x3d2318
37898c  40 53                          rex push rbx
37898e  48 83 ec 30                    sub    rsp,0x30
378992  f3 41 0f 10 40 0c              movss  xmm0,DWORD PTR [r8+0xc]
378998  0f 28 e3                       movaps xmm4,xmm3
37899b  f3 0f 5c 42 0c                 subss  xmm0,DWORD PTR [rdx+0xc]
3789a0  f3 41 0f 10 58 08              movss  xmm3,DWORD PTR [r8+0x8]
3789a6  48 8b d9                       mov    rbx,rcx
3789a9  f3 0f 5c 5a 08                 subss  xmm3,DWORD PTR [rdx+0x8]
3789ae  f3 41 0f 10 50 04              movss  xmm2,DWORD PTR [r8+0x4]
3789b4  f3 0f 5c 52 04                 subss  xmm2,DWORD PTR [rdx+0x4]
3789b9  f3 41 0f 10 08                 movss  xmm1,DWORD PTR [r8]
3789be  f3 0f 5c 0a                    subss  xmm1,DWORD PTR [rdx]
3789c2  f3 0f 59 c4                    mulss  xmm0,xmm4
3789c6  f3 0f 59 dc                    mulss  xmm3,xmm4
3789ca  f3 0f 58 42 0c                 addss  xmm0,DWORD PTR [rdx+0xc]
3789cf  f3 0f 59 d4                    mulss  xmm2,xmm4
3789d3  f3 0f 58 5a 08                 addss  xmm3,DWORD PTR [rdx+0x8]
3789d8  f3 0f 59 cc                    mulss  xmm1,xmm4
3789dc  f3 0f 58 52 04                 addss  xmm2,DWORD PTR [rdx+0x4]
3789e1  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
3789e7  f3 0f 58 0a                    addss  xmm1,DWORD PTR [rdx]
3789eb  e8 60 39 f5 ff                 call   0x2cc350
3789f0  48 8b c3                       mov    rax,rbx
3789f3  48 83 c4 30                    add    rsp,0x30
3789f7  5b                             pop    rbx
3789f8  c3                             ret

