; heuristic leaf/code range 0x36b380..0x36b3a2 unwind=0x0
36b380  8b 05 a9 d3 f3 ff              mov    eax,DWORD PTR [rip+0xfffffffffff3d3a9]        # 0x2a872f
36b386  0f 10 05 83 d3 f3 ff           movups xmm0,XMMWORD PTR [rip+0xfffffffffff3d383]        # 0x2a8710
36b38d  0f 10 0d 8c d3 f3 ff           movups xmm1,XMMWORD PTR [rip+0xfffffffffff3d38c]        # 0x2a8720
36b394  0f 11 02                       movups XMMWORD PTR [rdx],xmm0
36b397  0f 11 4a 10                    movups XMMWORD PTR [rdx+0x10],xmm1
36b39b  89 42 1f                       mov    DWORD PTR [rdx+0x1f],eax
36b39e  48 8b c2                       mov    rax,rdx
36b3a1  c3                             ret

; heuristic leaf/code range 0x371218..0x37123a unwind=0x0
371218  8b 05 f1 79 f3 ff              mov    eax,DWORD PTR [rip+0xfffffffffff379f1]        # 0x2a8c0f
37121e  0f 10 05 cb 79 f3 ff           movups xmm0,XMMWORD PTR [rip+0xfffffffffff379cb]        # 0x2a8bf0
371225  0f 10 0d d4 79 f3 ff           movups xmm1,XMMWORD PTR [rip+0xfffffffffff379d4]        # 0x2a8c00
37122c  0f 11 02                       movups XMMWORD PTR [rdx],xmm0
37122f  0f 11 4a 10                    movups XMMWORD PTR [rdx+0x10],xmm1
371233  89 42 1f                       mov    DWORD PTR [rdx+0x1f],eax
371236  48 8b c2                       mov    rax,rdx
371239  c3                             ret

; heuristic leaf/code range 0x372674..0x37268d unwind=0x0
372674  0f 10 05 d5 65 f3 ff           movups xmm0,XMMWORD PTR [rip+0xfffffffffff365d5]        # 0x2a8c50
37267b  48 8b c2                       mov    rax,rdx
37267e  0f 10 0d d7 65 f3 ff           movups xmm1,XMMWORD PTR [rip+0xfffffffffff365d7]        # 0x2a8c5c
372685  0f 11 02                       movups XMMWORD PTR [rdx],xmm0
372688  0f 11 4a 0c                    movups XMMWORD PTR [rdx+0xc],xmm1
37268c  c3                             ret

; heuristic leaf/code range 0x372690..0x3726b4 unwind=0x0
372690  0f b7 05 f9 65 f3 ff           movzx  eax,WORD PTR [rip+0xfffffffffff365f9]        # 0x2a8c90
372697  0f 10 05 d2 65 f3 ff           movups xmm0,XMMWORD PTR [rip+0xfffffffffff365d2]        # 0x2a8c70
37269e  0f 10 0d db 65 f3 ff           movups xmm1,XMMWORD PTR [rip+0xfffffffffff365db]        # 0x2a8c80
3726a5  0f 11 02                       movups XMMWORD PTR [rdx],xmm0
3726a8  0f 11 4a 10                    movups XMMWORD PTR [rdx+0x10],xmm1
3726ac  66 89 42 20                    mov    WORD PTR [rdx+0x20],ax
3726b0  48 8b c2                       mov    rax,rdx
3726b3  c3                             ret

; heuristic leaf/code range 0x2dfad0..0x2dfada unwind=0x0
2dfad0  c7 02 74 57 4a 3a              mov    DWORD PTR [rdx],0x3a4a5774
2dfad6  48 8b c2                       mov    rax,rdx
2dfad9  c3                             ret

; heuristic leaf/code range 0x2dfbb4..0x2dfbcb unwind=0x0
2dfbb4  8b 05 4a de fa ff              mov    eax,DWORD PTR [rip+0xfffffffffffade4a]        # 0x28da04
2dfbba  89 02                          mov    DWORD PTR [rdx],eax
2dfbbc  0f b7 05 45 de fa ff           movzx  eax,WORD PTR [rip+0xfffffffffffade45]        # 0x28da08
2dfbc3  66 89 42 04                    mov    WORD PTR [rdx+0x4],ax
2dfbc7  48 8b c2                       mov    rax,rdx
2dfbca  c3                             ret

; heuristic leaf/code range 0x372644..0x372671 unwind=0x0
372644  8b 05 56 66 f3 ff              mov    eax,DWORD PTR [rip+0xfffffffffff36656]        # 0x2a8ca0
37264a  f2 0f 10 05 46 66 f3 ff        movsd  xmm0,QWORD PTR [rip+0xfffffffffff36646]        # 0x2a8c98
372652  f2 0f 11 02                    movsd  QWORD PTR [rdx],xmm0
372656  89 42 08                       mov    DWORD PTR [rdx+0x8],eax
372659  0f b7 05 44 66 f3 ff           movzx  eax,WORD PTR [rip+0xfffffffffff36644]        # 0x2a8ca4
372660  66 89 42 0c                    mov    WORD PTR [rdx+0xc],ax
372664  8a 05 3c 66 f3 ff              mov    al,BYTE PTR [rip+0xfffffffffff3663c]        # 0x2a8ca6
37266a  88 42 0e                       mov    BYTE PTR [rdx+0xe],al
37266d  48 8b c2                       mov    rax,rdx
372670  c3                             ret

; heuristic leaf/code range 0x370240..0x370255 unwind=0x0
370240  8b 05 b2 87 f3 ff              mov    eax,DWORD PTR [rip+0xfffffffffff387b2]        # 0x2a89f8
370246  89 02                          mov    DWORD PTR [rdx],eax
370248  8a 05 ae 87 f3 ff              mov    al,BYTE PTR [rip+0xfffffffffff387ae]        # 0x2a89fc
37024e  88 42 04                       mov    BYTE PTR [rdx+0x4],al
370251  48 8b c2                       mov    rax,rdx
370254  c3                             ret

