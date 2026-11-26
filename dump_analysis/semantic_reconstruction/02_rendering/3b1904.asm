; pdata function 0x3b1904..0x3b197e unwind=0x3d558c
3b1904  48 83 ec 48                    sub    rsp,0x48
3b1908  48 8b 0d 69 b8 05 00           mov    rcx,QWORD PTR [rip+0x5b869]        # 0x40d178
3b190f  0f 29 74 24 30                 movaps XMMWORD PTR [rsp+0x30],xmm6
3b1914  0f 28 f1                       movaps xmm6,xmm1
3b1917  0f 29 7c 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm7
3b191c  0f 28 f8                       movaps xmm7,xmm0
3b191f  e8 18 1f 00 00                 call   0x3b383c
3b1924  48 8b 0d 4d b8 05 00           mov    rcx,QWORD PTR [rip+0x5b84d]        # 0x40d178
3b192b  f3 0f 2c d7                    cvttss2si edx,xmm7
3b192f  e8 9c 27 00 00                 call   0x3b40d0
3b1934  48 8b 0d 3d b8 05 00           mov    rcx,QWORD PTR [rip+0x5b83d]        # 0x40d178
3b193b  f3 0f 2c d6                    cvttss2si edx,xmm6
3b193f  e8 98 20 00 00                 call   0x3b39dc
3b1944  48 8b 0d 2d b8 05 00           mov    rcx,QWORD PTR [rip+0x5b82d]        # 0x40d178
3b194b  e8 30 00 00 00                 call   0x3b1980
3b1950  0f 28 d6                       movaps xmm2,xmm6
3b1953  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3b1958  0f 28 cf                       movaps xmm1,xmm7
3b195b  e8 e0 a9 f1 ff                 call   0x2cc340
3b1960  48 8b 0d 01 b8 05 00           mov    rcx,QWORD PTR [rip+0x5b801]        # 0x40d168
3b1967  48 8b 10                       mov    rdx,QWORD PTR [rax]
3b196a  e8 4d 24 00 00                 call   0x3b3dbc
3b196f  0f 28 74 24 30                 movaps xmm6,XMMWORD PTR [rsp+0x30]
3b1974  0f 28 7c 24 20                 movaps xmm7,XMMWORD PTR [rsp+0x20]
3b1979  48 83 c4 48                    add    rsp,0x48
3b197d  c3                             ret
