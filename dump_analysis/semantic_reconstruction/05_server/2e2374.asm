; pdata function 0x2e2374..0x2e2472 unwind=0x3d2a4c
2e2374  48 8b c4                       mov    rax,rsp
2e2377  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
2e237b  55                             push   rbp
2e237c  48 8d a8 68 f6 ff ff           lea    rbp,[rax-0x998]
2e2383  48 81 ec 90 0a 00 00           sub    rsp,0xa90
2e238a  f2 41 0f 10 01                 movsd  xmm0,QWORD PTR [r9]
2e238f  4d 8b d0                       mov    r10,r8
2e2392  4c 8b c2                       mov    r8,rdx
2e2395  0f 29 78 e8                    movaps XMMWORD PTR [rax-0x18],xmm7
2e2399  41 8b 41 08                    mov    eax,DWORD PTR [r9+0x8]
2e239d  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2e23a2  48 8b d9                       mov    rbx,rcx
2e23a5  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2e23ab  49 8b ca                       mov    rcx,r10
2e23ae  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2e23b2  e8 15 d3 ff ff                 call   0x2df6cc
2e23b7  4c 8d 4c 24 40                 lea    r9,[rsp+0x40]
2e23bc  4c 8d 44 24 50                 lea    r8,[rsp+0x50]
2e23c1  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2e23c6  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e23ca  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2e23cf  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e23d2  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
2e23d6  48 8b 85 c0 09 00 00           mov    rax,QWORD PTR [rbp+0x9c0]
2e23dd  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
2e23e2  c6 44 24 20 00                 mov    BYTE PTR [rsp+0x20],0x0
2e23e7  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
2e23ed  e8 82 00 00 00                 call   0x2e2474
2e23f2  f3 0f 10 44 24 30              movss  xmm0,DWORD PTR [rsp+0x30]
2e23f8  f3 0f 5c 05 4c ae fa ff        subss  xmm0,DWORD PTR [rip+0xfffffffffffaae4c]        # 0x28d24c
2e2400  e8 27 13 00 00                 call   0x2e372c
2e2405  f3 0f 10 3d c7 b6 fa ff        movss  xmm7,DWORD PTR [rip+0xfffffffffffab6c7]        # 0x28dad4 ; f32=0.0001
2e240d  0f 2f f8                       comiss xmm7,xmm0
2e2410  76 3a                          jbe    0x2e244c
2e2412  f3 0f 10 44 24 34              movss  xmm0,DWORD PTR [rsp+0x34]
2e2418  f3 0f 5c 05 2c ae fa ff        subss  xmm0,DWORD PTR [rip+0xfffffffffffaae2c]        # 0x28d24c
2e2420  e8 07 13 00 00                 call   0x2e372c
2e2425  0f 2f f8                       comiss xmm7,xmm0
2e2428  76 22                          jbe    0x2e244c
2e242a  f3 0f 10 44 24 38              movss  xmm0,DWORD PTR [rsp+0x38]
2e2430  f3 0f 5c 05 14 ae fa ff        subss  xmm0,DWORD PTR [rip+0xfffffffffffaae14]        # 0x28d24c
2e2438  e8 ef 12 00 00                 call   0x2e372c
2e243d  0f 2f f8                       comiss xmm7,xmm0
2e2440  76 0a                          jbe    0x2e244c
2e2442  48 8b cb                       mov    rcx,rbx
2e2445  e8 72 57 0e 00                 call   0x3c7bbc
2e244a  eb 0d                          jmp    0x2e2459
2e244c  48 8b d3                       mov    rdx,rbx
2e244f  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2e2454  e8 1f ee ff ff                 call   0x2e1278
2e2459  4c 8d 9c 24 90 0a 00 00        lea    r11,[rsp+0xa90]
2e2461  48 8b c3                       mov    rax,rbx
2e2464  49 8b 5b 10                    mov    rbx,QWORD PTR [r11+0x10]
2e2468  41 0f 28 7b f0                 movaps xmm7,XMMWORD PTR [r11-0x10]
2e246d  49 8b e3                       mov    rsp,r11
2e2470  5d                             pop    rbp
2e2471  c3                             ret
