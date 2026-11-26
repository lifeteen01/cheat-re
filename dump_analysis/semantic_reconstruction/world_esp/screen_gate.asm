; pdata function 0x317130..0x317193 unwind=0x3d2f50
317130  48 83 ec 48                    sub    rsp,0x48
317134  0f 29 74 24 30                 movaps XMMWORD PTR [rsp+0x30],xmm6
317139  0f 57 c0                       xorps  xmm0,xmm0
31713c  0f 29 7c 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm7
317141  66 48 0f 6e f9                 movq   xmm7,rcx
317146  0f 2f f8                       comiss xmm7,xmm0
317149  f2 0f 11 7c 24 58              movsd  QWORD PTR [rsp+0x58],xmm7
31714f  72 31                          jb     0x317182
317151  f3 0f 10 74 24 5c              movss  xmm6,DWORD PTR [rsp+0x5c]
317157  0f 2f f0                       comiss xmm6,xmm0
31715a  72 26                          jb     0x317182
31715c  e8 8f 99 fc ff                 call   0x2e0af0
317161  66 0f 6e c0                    movd   xmm0,eax
317165  0f 5b c0                       cvtdq2ps xmm0,xmm0
317168  0f 2f c7                       comiss xmm0,xmm7
31716b  72 15                          jb     0x317182
31716d  e8 7e 98 fc ff                 call   0x2e09f0
317172  66 0f 6e c0                    movd   xmm0,eax
317176  0f 5b c0                       cvtdq2ps xmm0,xmm0
317179  0f 2f c6                       comiss xmm0,xmm6
31717c  72 04                          jb     0x317182
31717e  b0 01                          mov    al,0x1
317180  eb 02                          jmp    0x317184
317182  32 c0                          xor    al,al
317184  0f 28 74 24 30                 movaps xmm6,XMMWORD PTR [rsp+0x30]
317189  0f 28 7c 24 20                 movaps xmm7,XMMWORD PTR [rsp+0x20]
31718e  48 83 c4 48                    add    rsp,0x48
317192  c3                             ret

