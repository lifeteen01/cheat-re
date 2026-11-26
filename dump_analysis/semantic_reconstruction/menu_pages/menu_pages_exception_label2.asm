; heuristic leaf/code range 0x356034..0x3560cc unwind=0x0
356034  41 b8 02 00 00 00              mov    r8d,0x2
35603a  48 8d 0d 0f ad f4 ff           lea    rcx,[rip+0xfffffffffff4ad0f]        # 0x2a0d50
356041  48 8b c2                       mov    rax,rdx
356044  45 8d 48 7e                    lea    r9d,[r8+0x7e]
356048  0f 10 01                       movups xmm0,XMMWORD PTR [rcx]
35604b  0f 10 49 10                    movups xmm1,XMMWORD PTR [rcx+0x10]
35604f  0f 11 00                       movups XMMWORD PTR [rax],xmm0
356052  0f 10 41 20                    movups xmm0,XMMWORD PTR [rcx+0x20]
356056  0f 11 48 10                    movups XMMWORD PTR [rax+0x10],xmm1
35605a  0f 10 49 30                    movups xmm1,XMMWORD PTR [rcx+0x30]
35605e  0f 11 40 20                    movups XMMWORD PTR [rax+0x20],xmm0
356062  0f 10 41 40                    movups xmm0,XMMWORD PTR [rcx+0x40]
356066  0f 11 48 30                    movups XMMWORD PTR [rax+0x30],xmm1
35606a  0f 10 49 50                    movups xmm1,XMMWORD PTR [rcx+0x50]
35606e  0f 11 40 40                    movups XMMWORD PTR [rax+0x40],xmm0
356072  0f 10 41 60                    movups xmm0,XMMWORD PTR [rcx+0x60]
356076  0f 11 48 50                    movups XMMWORD PTR [rax+0x50],xmm1
35607a  0f 10 49 70                    movups xmm1,XMMWORD PTR [rcx+0x70]
35607e  49 03 c9                       add    rcx,r9
356081  0f 11 40 60                    movups XMMWORD PTR [rax+0x60],xmm0
356085  0f 11 48 70                    movups XMMWORD PTR [rax+0x70],xmm1
356089  49 03 c1                       add    rax,r9
35608c  49 83 e8 01                    sub    r8,0x1
356090  75 b6                          jne    0x356048
356092  0f 10 01                       movups xmm0,XMMWORD PTR [rcx]
356095  0f 10 49 10                    movups xmm1,XMMWORD PTR [rcx+0x10]
356099  0f 11 00                       movups XMMWORD PTR [rax],xmm0
35609c  0f 10 41 20                    movups xmm0,XMMWORD PTR [rcx+0x20]
3560a0  0f 11 48 10                    movups XMMWORD PTR [rax+0x10],xmm1
3560a4  0f 10 49 30                    movups xmm1,XMMWORD PTR [rcx+0x30]
3560a8  0f 11 40 20                    movups XMMWORD PTR [rax+0x20],xmm0
3560ac  0f 10 41 40                    movups xmm0,XMMWORD PTR [rcx+0x40]
3560b0  0f 11 48 30                    movups XMMWORD PTR [rax+0x30],xmm1
3560b4  0f 10 49 50                    movups xmm1,XMMWORD PTR [rcx+0x50]
3560b8  0f 11 40 40                    movups XMMWORD PTR [rax+0x40],xmm0
3560bc  0f 10 41 5f                    movups xmm0,XMMWORD PTR [rcx+0x5f]
3560c0  0f 11 48 50                    movups XMMWORD PTR [rax+0x50],xmm1
3560c4  0f 11 40 5f                    movups XMMWORD PTR [rax+0x5f],xmm0
3560c8  48 8b c2                       mov    rax,rdx
3560cb  c3                             ret

