; heuristic leaf/code range 0x354304..0x354384 unwind=0x0
354304  41 b8 02 00 00 00              mov    r8d,0x2
35430a  48 8d 0d 7f c7 f4 ff           lea    rcx,[rip+0xfffffffffff4c77f]        # 0x2a0a90
354311  48 8b c2                       mov    rax,rdx
354314  45 8d 48 7e                    lea    r9d,[r8+0x7e]
354318  0f 10 01                       movups xmm0,XMMWORD PTR [rcx]
35431b  0f 10 49 10                    movups xmm1,XMMWORD PTR [rcx+0x10]
35431f  0f 11 00                       movups XMMWORD PTR [rax],xmm0
354322  0f 10 41 20                    movups xmm0,XMMWORD PTR [rcx+0x20]
354326  0f 11 48 10                    movups XMMWORD PTR [rax+0x10],xmm1
35432a  0f 10 49 30                    movups xmm1,XMMWORD PTR [rcx+0x30]
35432e  0f 11 40 20                    movups XMMWORD PTR [rax+0x20],xmm0
354332  0f 10 41 40                    movups xmm0,XMMWORD PTR [rcx+0x40]
354336  0f 11 48 30                    movups XMMWORD PTR [rax+0x30],xmm1
35433a  0f 10 49 50                    movups xmm1,XMMWORD PTR [rcx+0x50]
35433e  0f 11 40 40                    movups XMMWORD PTR [rax+0x40],xmm0
354342  0f 10 41 60                    movups xmm0,XMMWORD PTR [rcx+0x60]
354346  0f 11 48 50                    movups XMMWORD PTR [rax+0x50],xmm1
35434a  0f 10 49 70                    movups xmm1,XMMWORD PTR [rcx+0x70]
35434e  49 03 c9                       add    rcx,r9
354351  0f 11 40 60                    movups XMMWORD PTR [rax+0x60],xmm0
354355  0f 11 48 70                    movups XMMWORD PTR [rax+0x70],xmm1
354359  49 03 c1                       add    rax,r9
35435c  49 83 e8 01                    sub    r8,0x1
354360  75 b6                          jne    0x354318
354362  0f 10 01                       movups xmm0,XMMWORD PTR [rcx]
354365  0f 10 49 10                    movups xmm1,XMMWORD PTR [rcx+0x10]
354369  0f 11 00                       movups XMMWORD PTR [rax],xmm0
35436c  0f 10 41 20                    movups xmm0,XMMWORD PTR [rcx+0x20]
354370  0f 11 48 10                    movups XMMWORD PTR [rax+0x10],xmm1
354374  0f 10 49 29                    movups xmm1,XMMWORD PTR [rcx+0x29]
354378  0f 11 40 20                    movups XMMWORD PTR [rax+0x20],xmm0
35437c  0f 11 48 29                    movups XMMWORD PTR [rax+0x29],xmm1
354380  48 8b c2                       mov    rax,rdx
354383  c3                             ret

