; heuristic leaf/code range 0x378970..0x37897a unwind=0x0
378970  f3 0f 10 41 08                 movss  xmm0,DWORD PTR [rcx+0x8]
378975  f3 0f 5c 01                    subss  xmm0,DWORD PTR [rcx]
378979  c3                             ret

; heuristic leaf/code range 0x378934..0x37893f unwind=0x0
378934  f3 0f 10 41 0c                 movss  xmm0,DWORD PTR [rcx+0xc]
378939  f3 0f 5c 41 04                 subss  xmm0,DWORD PTR [rcx+0x4]
37893e  c3                             ret

; pdata function 0x2ef9d8..0x2efa03 unwind=0x3d2038
2ef9d8  40 53                          rex push rbx
2ef9da  48 83 ec 20                    sub    rsp,0x20
2ef9de  f3 0f 10 52 04                 movss  xmm2,DWORD PTR [rdx+0x4]
2ef9e3  48 8b d9                       mov    rbx,rcx
2ef9e6  f3 0f 10 0a                    movss  xmm1,DWORD PTR [rdx]
2ef9ea  f3 41 0f 58 50 04              addss  xmm2,DWORD PTR [r8+0x4]
2ef9f0  f3 41 0f 58 08                 addss  xmm1,DWORD PTR [r8]
2ef9f5  e8 46 c9 fd ff                 call   0x2cc340
2ef9fa  48 8b c3                       mov    rax,rbx
2ef9fd  48 83 c4 20                    add    rsp,0x20
2efa01  5b                             pop    rbx
2efa02  c3                             ret

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

; heuristic leaf/code range 0x2db388..0x2db39e unwind=0x0
2db388  f2 0f 10 02                    movsd  xmm0,QWORD PTR [rdx]
2db38c  48 8b c1                       mov    rax,rcx
2db38f  f2 0f 11 01                    movsd  QWORD PTR [rcx],xmm0
2db393  f2 41 0f 10 08                 movsd  xmm1,QWORD PTR [r8]
2db398  f2 0f 11 49 08                 movsd  QWORD PTR [rcx+0x8],xmm1
2db39d  c3                             ret

; pdata function 0x392f14..0x392f34 unwind=0x3d2038
392f14  40 53                          rex push rbx
392f16  48 83 ec 20                    sub    rsp,0x20
392f1a  48 8b d9                       mov    rbx,rcx
392f1d  e8 a6 f4 ff ff                 call   0x3923c8
392f22  f2 0f 10 40 28                 movsd  xmm0,QWORD PTR [rax+0x28]
392f27  48 8b c3                       mov    rax,rbx
392f2a  f2 0f 11 03                    movsd  QWORD PTR [rbx],xmm0
392f2e  48 83 c4 20                    add    rsp,0x20
392f32  5b                             pop    rbx
392f33  c3                             ret

