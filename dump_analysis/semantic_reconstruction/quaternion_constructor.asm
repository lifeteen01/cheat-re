; heuristic leaf/code range 0x2cc350..0x2cc36d unwind=0x0
2cc350  f3 0f 10 44 24 28              movss  xmm0,DWORD PTR [rsp+0x28]
2cc356  48 8b c1                       mov    rax,rcx
2cc359  f3 0f 11 41 0c                 movss  DWORD PTR [rcx+0xc],xmm0
2cc35e  f3 0f 11 09                    movss  DWORD PTR [rcx],xmm1
2cc362  f3 0f 11 51 04                 movss  DWORD PTR [rcx+0x4],xmm2
2cc367  f3 0f 11 59 08                 movss  DWORD PTR [rcx+0x8],xmm3
2cc36c  c3                             ret

; heuristic leaf/code range 0x3738b8..0x3738c9 unwind=0x0
3738b8  48 b8 7e 56 4f 5f 49 4f 58 3e  movabs rax,0x3e584f495f4f567e
3738c2  48 89 02                       mov    QWORD PTR [rdx],rax
3738c5  48 8b c2                       mov    rax,rdx
3738c8  c3                             ret

