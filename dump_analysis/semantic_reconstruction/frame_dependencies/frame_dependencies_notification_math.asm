; heuristic leaf/code range 0x37efdc..0x37efed unwind=0x0
37efdc  48 b8 64 6d 7a 79 7e 6f 6e 3e  movabs rax,0x3e6e6f7e797a6d64
37efe6  48 89 02                       mov    QWORD PTR [rdx],rax
37efe9  48 8b c2                       mov    rax,rdx
37efec  c3                             ret

; pdata function 0x37a068..0x37a08e unwind=0x3d2038
37a068  40 53                          rex push rbx
37a06a  48 83 ec 20                    sub    rsp,0x20
37a06e  48 8b d9                       mov    rbx,rcx
37a071  e8 6e 32 f6 ff                 call   0x2dd2e4
37a076  84 c0                          test   al,al
37a078  74 0b                          je     0x37a085
37a07a  48 8b d3                       mov    rdx,rbx
37a07d  48 8b cb                       mov    rcx,rbx
37a080  e8 cb fe ff ff                 call   0x379f50
37a085  48 8b c3                       mov    rax,rbx
37a088  48 83 c4 20                    add    rsp,0x20
37a08c  5b                             pop    rbx
37a08d  c3                             ret

; heuristic leaf/code range 0x3762bc..0x3762cc unwind=0x0
3762bc  0f 2f c8                       comiss xmm1,xmm0
3762bf  77 07                          ja     0x3762c8
3762c1  f3 0f 5d d0                    minss  xmm2,xmm0
3762c5  0f 28 ca                       movaps xmm1,xmm2
3762c8  0f 28 c1                       movaps xmm0,xmm1
3762cb  c3                             ret

; pdata function 0x3367e4..0x33680f unwind=0x3d2038
3367e4  40 53                          rex push rbx
3367e6  48 83 ec 20                    sub    rsp,0x20
3367ea  f3 0f 10 52 04                 movss  xmm2,DWORD PTR [rdx+0x4]
3367ef  48 8b d9                       mov    rbx,rcx
3367f2  f3 0f 10 0a                    movss  xmm1,DWORD PTR [rdx]
3367f6  f3 41 0f 5c 50 04              subss  xmm2,DWORD PTR [r8+0x4]
3367fc  f3 41 0f 5c 08                 subss  xmm1,DWORD PTR [r8]
336801  e8 3a 5b f9 ff                 call   0x2cc340
336806  48 8b c3                       mov    rax,rbx
336809  48 83 c4 20                    add    rsp,0x20
33680d  5b                             pop    rbx
33680e  c3                             ret

