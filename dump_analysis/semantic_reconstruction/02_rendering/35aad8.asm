; pdata function 0x35aad8..0x35abee unwind=0x3d3828
35aad8  48 8b c4                       mov    rax,rsp
35aadb  53                             push   rbx
35aadc  48 83 ec 60                    sub    rsp,0x60
35aae0  0f 29 70 e8                    movaps XMMWORD PTR [rax-0x18],xmm6
35aae4  48 8d 48 c8                    lea    rcx,[rax-0x38]
35aae8  0f 29 78 d8                    movaps XMMWORD PTR [rax-0x28],xmm7
35aaec  0f 57 db                       xorps  xmm3,xmm3
35aaef  0f 57 ff                       xorps  xmm7,xmm7
35aaf2  0f 57 d2                       xorps  xmm2,xmm2
35aaf5  0f 57 c9                       xorps  xmm1,xmm1
35aaf8  f3 0f 11 78 b8                 movss  DWORD PTR [rax-0x48],xmm7
35aafd  e8 4e 18 f7 ff                 call   0x2cc350
35ab02  48 8b d0                       mov    rdx,rax
35ab05  b9 03 00 00 00                 mov    ecx,0x3
35ab0a  e8 75 e0 03 00                 call   0x398b84
35ab0f  0f 57 d2                       xorps  xmm2,xmm2
35ab12  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
35ab17  0f 57 c9                       xorps  xmm1,xmm1
35ab1a  e8 21 18 f7 ff                 call   0x2cc340
35ab1f  0f 57 d2                       xorps  xmm2,xmm2
35ab22  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
35ab2a  0f 57 c9                       xorps  xmm1,xmm1
35ab2d  48 8b d8                       mov    rbx,rax
35ab30  e8 0b 18 f7 ff                 call   0x2cc340
35ab35  4c 8b c3                       mov    r8,rbx
35ab38  48 8b c8                       mov    rcx,rax
35ab3b  bb 02 00 00 00                 mov    ebx,0x2
35ab40  8b d3                          mov    edx,ebx
35ab42  e8 ed 0b 04 00                 call   0x39b734
35ab47  e8 60 7b 03 00                 call   0x3926ac
35ab4c  f3 0f 10 70 0c                 movss  xmm6,DWORD PTR [rax+0xc]
35ab51  e8 56 7b 03 00                 call   0x3926ac
35ab56  0f 28 d6                       movaps xmm2,xmm6
35ab59  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
35ab5e  f3 0f 10 48 08                 movss  xmm1,DWORD PTR [rax+0x8]
35ab63  e8 d8 17 f7 ff                 call   0x2cc340
35ab68  48 8b c8                       mov    rcx,rax
35ab6b  8b d3                          mov    edx,ebx
35ab6d  e8 fe 0b 04 00                 call   0x39b770
35ab72  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
35ab77  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
35ab7c  e8 0f 77 ff ff                 call   0x352290 ; STRING getter=0x352290 BackBuffer
35ab81  48 8b c8                       mov    rcx,rax
35ab84  e8 cb f0 f8 ff                 call   0x2e9c54
35ab89  48 8b c8                       mov    rcx,rax
35ab8c  33 d2                          xor    edx,edx
35ab8e  41 b8 81 02 0c 00              mov    r8d,0xc0281
35ab94  e8 0b 24 03 00                 call   0x38cfa4
35ab99  0f 57 d2                       xorps  xmm2,xmm2
35ab9c  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
35aba1  0f 57 c9                       xorps  xmm1,xmm1
35aba4  e8 97 17 f7 ff                 call   0x2cc340
35aba9  48 8b c8                       mov    rcx,rax
35abac  33 d2                          xor    edx,edx
35abae  e8 6d 0f 04 00                 call   0x39bb20
35abb3  e8 f4 7a 03 00                 call   0x3926ac
35abb8  f3 0f 10 70 0c                 movss  xmm6,DWORD PTR [rax+0xc]
35abbd  e8 ea 7a 03 00                 call   0x3926ac
35abc2  0f 28 d6                       movaps xmm2,xmm6
35abc5  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
35abca  f3 0f 10 48 08                 movss  xmm1,DWORD PTR [rax+0x8]
35abcf  e8 6c 17 f7 ff                 call   0x2cc340
35abd4  48 8b c8                       mov    rcx,rax
35abd7  33 d2                          xor    edx,edx
35abd9  e8 8e 10 04 00                 call   0x39bc6c
35abde  0f 28 74 24 50                 movaps xmm6,XMMWORD PTR [rsp+0x50]
35abe3  0f 28 7c 24 40                 movaps xmm7,XMMWORD PTR [rsp+0x40]
35abe8  48 83 c4 60                    add    rsp,0x60
35abec  5b                             pop    rbx
35abed  c3                             ret
