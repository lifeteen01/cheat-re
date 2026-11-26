; pdata function 0x387a4c..0x387bad unwind=0x3d4488
387a4c  40 53                          rex push rbx
387a4e  55                             push   rbp
387a4f  56                             push   rsi
387a50  57                             push   rdi
387a51  41 56                          push   r14
387a53  41 57                          push   r15
387a55  48 83 ec 58                    sub    rsp,0x58
387a59  f3 0f 10 15 87 14 ec ff        movss  xmm2,DWORD PTR [rip+0xffffffffffec1487]        # 0x248ee8 ; f32=1
387a61  48 8b d9                       mov    rbx,rcx
387a64  f3 0f 59 15 74 67 f0 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff06774]        # 0x28e1e0 ; f32=8
387a6c  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
387a71  4d 8b f1                       mov    r14,r9
387a74  4d 8b f8                       mov    r15,r8
387a77  0f 57 c9                       xorps  xmm1,xmm1
387a7a  0f 29 74 24 40                 movaps XMMWORD PTR [rsp+0x40],xmm6
387a7f  48 89 54 24 38                 mov    QWORD PTR [rsp+0x38],rdx
387a84  e8 b7 48 f4 ff                 call   0x2cc340
387a89  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
387a8e  b9 02 00 00 00                 mov    ecx,0x2
387a93  e8 c8 11 01 00                 call   0x398c60
387a98  41 b9 00 00 01 00              mov    r9d,0x10000
387a9e  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
387aa3  45 33 c0                       xor    r8d,r8d
387aa6  48 8b cb                       mov    rcx,rbx
387aa9  e8 ce 6e 00 00                 call   0x38e97c
387aae  0f 57 d2                       xorps  xmm2,xmm2
387ab1  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
387ab6  0f 57 c9                       xorps  xmm1,xmm1
387ab9  e8 82 48 f4 ff                 call   0x2cc340
387abe  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
387ac3  b9 0e 00 00 00                 mov    ecx,0xe
387ac8  e8 93 11 01 00                 call   0x398c60
387acd  49 8b ce                       mov    rcx,r14
387ad0  33 ed                          xor    ebp,ebp
387ad2  e8 11 19 f5 ff                 call   0x2d93e8
387ad7  48 85 c0                       test   rax,rax
387ada  0f 84 8d 00 00 00              je     0x387b6d
387ae0  48 8b 8c 24 b0 00 00 00        mov    rcx,QWORD PTR [rsp+0xb0]
387ae8  48 63 fd                       movsxd rdi,ebp
387aeb  48 8b d7                       mov    rdx,rdi
387aee  e8 2d d2 f4 ff                 call   0x2d4d20
387af3  48 8b c8                       mov    rcx,rax
387af6  e8 f1 5c f4 ff                 call   0x2cd7ec
387afb  48 8b f0                       mov    rsi,rax
387afe  e8 31 b4 00 00                 call   0x392f34
387b03  0f 28 f0                       movaps xmm6,xmm0
387b06  e8 c1 aa 00 00                 call   0x3925cc
387b0b  0f 28 d0                       movaps xmm2,xmm0
387b0e  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
387b13  0f 28 ce                       movaps xmm1,xmm6
387b16  e8 25 48 f4 ff                 call   0x2cc340
387b1b  41 39 2f                       cmp    DWORD PTR [r15],ebp
387b1e  48 8b d7                       mov    rdx,rdi
387b21  49 8b ce                       mov    rcx,r14
387b24  0f 94 c3                       sete   bl
387b27  e8 f4 d1 f4 ff                 call   0x2d4d20
387b2c  48 8b c8                       mov    rcx,rax
387b2f  e8 b8 5c f4 ff                 call   0x2cd7ec
387b34  48 8b c8                       mov    rcx,rax
387b37  c6 44 24 28 01                 mov    BYTE PTR [rsp+0x28],0x1
387b3c  4c 8d 4c 24 30                 lea    r9,[rsp+0x30]
387b41  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
387b46  45 33 c0                       xor    r8d,r8d
387b49  8a d3                          mov    dl,bl
387b4b  e8 58 bd 03 00                 call   0x3c38a8
387b50  84 c0                          test   al,al
387b52  74 03                          je     0x387b57
387b54  41 89 2f                       mov    DWORD PTR [r15],ebp
387b57  49 8b ce                       mov    rcx,r14
387b5a  ff c5                          inc    ebp
387b5c  e8 87 18 f5 ff                 call   0x2d93e8
387b61  48 63 d5                       movsxd rdx,ebp
387b64  48 3b d0                       cmp    rdx,rax
387b67  0f 82 73 ff ff ff              jb     0x387ae0
387b6d  b9 01 00 00 00                 mov    ecx,0x1
387b72  e8 f5 0d 01 00                 call   0x39896c
387b77  e8 0c 8f 00 00                 call   0x390a88
387b7c  b9 01 00 00 00                 mov    ecx,0x1
387b81  e8 e6 0d 01 00                 call   0x39896c
387b86  49 8b ce                       mov    rcx,r14
387b89  e8 f2 ce f4 ff                 call   0x2d4a80
387b8e  48 8b 8c 24 b0 00 00 00        mov    rcx,QWORD PTR [rsp+0xb0]
387b96  e8 e5 ce f4 ff                 call   0x2d4a80
387b9b  0f 28 74 24 40                 movaps xmm6,XMMWORD PTR [rsp+0x40]
387ba0  48 83 c4 58                    add    rsp,0x58
387ba4  41 5f                          pop    r15
387ba6  41 5e                          pop    r14
387ba8  5f                             pop    rdi
387ba9  5e                             pop    rsi
387baa  5d                             pop    rbp
387bab  5b                             pop    rbx
387bac  c3                             ret

; pdata function 0x33615c..0x3361d8 unwind=0x3d3280
33615c  4c 89 44 24 18                 mov    QWORD PTR [rsp+0x18],r8
336161  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
336166  53                             push   rbx
336167  56                             push   rsi
336168  57                             push   rdi
336169  48 83 ec 20                    sub    rsp,0x20
33616d  48 8b f9                       mov    rdi,rcx
336170  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
336175  e8 ca a8 f9 ff                 call   0x2d0a44
33617a  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
33617f  48 89 44 24 40                 mov    QWORD PTR [rsp+0x40],rax
336184  48 8b d8                       mov    rbx,rax
336187  e8 b8 a8 f9 ff                 call   0x2d0a44
33618c  48 8b f0                       mov    rsi,rax
33618f  48 3b d8                       cmp    rbx,rax
336192  74 22                          je     0x3361b6
336194  48 8b d3                       mov    rdx,rbx
336197  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
33619c  e8 2b f4 ff ff                 call   0x3355cc
3361a1  84 c0                          test   al,al
3361a3  75 11                          jne    0x3361b6
3361a5  48 81 c3 98 00 00 00           add    rbx,0x98
3361ac  48 89 5c 24 40                 mov    QWORD PTR [rsp+0x40],rbx
3361b1  48 3b de                       cmp    rbx,rsi
3361b4  75 de                          jne    0x336194
3361b6  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
3361bb  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3361c0  e8 67 b6 f9 ff                 call   0x2d182c
3361c5  48 8b 44 24 48                 mov    rax,QWORD PTR [rsp+0x48]
3361ca  48 89 07                       mov    QWORD PTR [rdi],rax
3361cd  48 8b c7                       mov    rax,rdi
3361d0  48 83 c4 20                    add    rsp,0x20
3361d4  5f                             pop    rdi
3361d5  5e                             pop    rsi
3361d6  5b                             pop    rbx
3361d7  c3                             ret

; pdata function 0x3361d8..0x336254 unwind=0x3d3280
3361d8  4c 89 44 24 18                 mov    QWORD PTR [rsp+0x18],r8
3361dd  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
3361e2  53                             push   rbx
3361e3  56                             push   rsi
3361e4  57                             push   rdi
3361e5  48 83 ec 20                    sub    rsp,0x20
3361e9  48 8b f9                       mov    rdi,rcx
3361ec  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3361f1  e8 4e a8 f9 ff                 call   0x2d0a44
3361f6  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
3361fb  48 89 44 24 40                 mov    QWORD PTR [rsp+0x40],rax
336200  48 8b d8                       mov    rbx,rax
336203  e8 3c a8 f9 ff                 call   0x2d0a44
336208  48 8b f0                       mov    rsi,rax
33620b  48 3b d8                       cmp    rbx,rax
33620e  74 22                          je     0x336232
336210  48 8b d3                       mov    rdx,rbx
336213  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
336218  e8 df f3 ff ff                 call   0x3355fc
33621d  84 c0                          test   al,al
33621f  75 11                          jne    0x336232
336221  48 81 c3 98 00 00 00           add    rbx,0x98
336228  48 89 5c 24 40                 mov    QWORD PTR [rsp+0x40],rbx
33622d  48 3b de                       cmp    rbx,rsi
336230  75 de                          jne    0x336210
336232  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
336237  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
33623c  e8 eb b5 f9 ff                 call   0x2d182c
336241  48 8b 44 24 48                 mov    rax,QWORD PTR [rsp+0x48]
336246  48 89 07                       mov    QWORD PTR [rdi],rax
336249  48 8b c7                       mov    rax,rdi
33624c  48 83 c4 20                    add    rsp,0x20
336250  5f                             pop    rdi
336251  5e                             pop    rsi
336252  5b                             pop    rbx
336253  c3                             ret

; pdata function 0x336254..0x3362d0 unwind=0x3d3280
336254  4c 89 44 24 18                 mov    QWORD PTR [rsp+0x18],r8
336259  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
33625e  53                             push   rbx
33625f  56                             push   rsi
336260  57                             push   rdi
336261  48 83 ec 20                    sub    rsp,0x20
336265  48 8b f9                       mov    rdi,rcx
336268  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
33626d  e8 d2 a7 f9 ff                 call   0x2d0a44
336272  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
336277  48 89 44 24 40                 mov    QWORD PTR [rsp+0x40],rax
33627c  48 8b d8                       mov    rbx,rax
33627f  e8 c0 a7 f9 ff                 call   0x2d0a44
336284  48 8b f0                       mov    rsi,rax
336287  48 3b d8                       cmp    rbx,rax
33628a  74 22                          je     0x3362ae
33628c  48 8b d3                       mov    rdx,rbx
33628f  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
336294  e8 93 f3 ff ff                 call   0x33562c
336299  84 c0                          test   al,al
33629b  75 11                          jne    0x3362ae
33629d  48 81 c3 98 00 00 00           add    rbx,0x98
3362a4  48 89 5c 24 40                 mov    QWORD PTR [rsp+0x40],rbx
3362a9  48 3b de                       cmp    rbx,rsi
3362ac  75 de                          jne    0x33628c
3362ae  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
3362b3  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3362b8  e8 6f b5 f9 ff                 call   0x2d182c
3362bd  48 8b 44 24 48                 mov    rax,QWORD PTR [rsp+0x48]
3362c2  48 89 07                       mov    QWORD PTR [rdi],rax
3362c5  48 8b c7                       mov    rax,rdi
3362c8  48 83 c4 20                    add    rsp,0x20
3362cc  5f                             pop    rdi
3362cd  5e                             pop    rsi
3362ce  5b                             pop    rbx
3362cf  c3                             ret

; heuristic leaf/code range 0x3367c0..0x3367e2 unwind=0x0
3367c0  4c 8b 01                       mov    r8,QWORD PTR [rcx]
3367c3  48 b8 1b ca 6b 28 af a1 bc 06  movabs rax,0x6bca1af286bca1b
3367cd  4c 2b 02                       sub    r8,QWORD PTR [rdx]
3367d0  49 f7 e8                       imul   r8
3367d3  48 c1 fa 02                    sar    rdx,0x2
3367d7  48 8b c2                       mov    rax,rdx
3367da  48 c1 e8 3f                    shr    rax,0x3f
3367de  48 03 c2                       add    rax,rdx
3367e1  c3                             ret

; pdata function 0x335520..0x335590 unwind=0x3d2668
335520  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
335525  4c 89 44 24 18                 mov    QWORD PTR [rsp+0x18],r8
33552a  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
33552f  57                             push   rdi
335530  48 83 ec 20                    sub    rsp,0x20
335534  8a 54 24 30                    mov    dl,BYTE PTR [rsp+0x30]
335538  4d 8b c1                       mov    r8,r9
33553b  48 8b d9                       mov    rbx,rcx
33553e  e8 7d 56 f9 ff                 call   0x2cabc0
335543  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
335548  e8 f7 b4 f9 ff                 call   0x2d0a44
33554d  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
335552  48 8b f8                       mov    rdi,rax
335555  e8 ea b4 f9 ff                 call   0x2d0a44
33555a  48 3b f8                       cmp    rdi,rax
33555d  75 0a                          jne    0x335569
33555f  48 8b cb                       mov    rcx,rbx
335562  e8 31 19 fa ff                 call   0x2d6e98
335567  eb 19                          jmp    0x335582
335569  48 2b c7                       sub    rax,rdi
33556c  48 8b c8                       mov    rcx,rax
33556f  e8 30 5e f9 ff                 call   0x2cb3a4
335574  4c 8b c0                       mov    r8,rax
335577  48 8b d7                       mov    rdx,rdi
33557a  48 8b cb                       mov    rcx,rbx
33557d  e8 86 5c f9 ff                 call   0x2cb208
335582  48 8b c3                       mov    rax,rbx
335585  48 8b 5c 24 48                 mov    rbx,QWORD PTR [rsp+0x48]
33558a  48 83 c4 20                    add    rsp,0x20
33558e  5f                             pop    rdi
33558f  c3                             ret

; pdata function 0x3362d0..0x336371 unwind=0x3d371c
3362d0  4c 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],r9
3362d5  4c 89 44 24 18                 mov    QWORD PTR [rsp+0x18],r8
3362da  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
3362df  55                             push   rbp
3362e0  53                             push   rbx
3362e1  56                             push   rsi
3362e2  57                             push   rdi
3362e3  41 56                          push   r14
3362e5  48 8b ec                       mov    rbp,rsp
3362e8  48 83 ec 30                    sub    rsp,0x30
3362ec  48 8b f9                       mov    rdi,rcx
3362ef  48 8d 4d 38                    lea    rcx,[rbp+0x38]
3362f3  e8 4c a7 f9 ff                 call   0x2d0a44
3362f8  48 8d 4d 40                    lea    rcx,[rbp+0x40]
3362fc  48 89 45 f0                    mov    QWORD PTR [rbp-0x10],rax
336300  48 8b d8                       mov    rbx,rax
336303  e8 3c a7 f9 ff                 call   0x2d0a44
336308  48 8d 55 30                    lea    rdx,[rbp+0x30]
33630c  48 89 45 30                    mov    QWORD PTR [rbp+0x30],rax
336310  48 8d 4d f0                    lea    rcx,[rbp-0x10]
336314  4c 8b f0                       mov    r14,rax
336317  e8 5c f9 ff ff                 call   0x335c78
33631c  48 8b d0                       mov    rdx,rax
33631f  48 8d 4d 48                    lea    rcx,[rbp+0x48]
336323  e8 1c a7 f9 ff                 call   0x2d0a44
336328  48 89 45 30                    mov    QWORD PTR [rbp+0x30],rax
33632c  49 3b de                       cmp    rbx,r14
33632f  74 1e                          je     0x33634f
336331  48 8b f3                       mov    rsi,rbx
336334  8a 0b                          mov    cl,BYTE PTR [rbx]
336336  ff 55 50                       call   QWORD PTR [rbp+0x50]
336339  48 8b 4d 30                    mov    rcx,QWORD PTR [rbp+0x30]
33633d  48 8d 5e 01                    lea    rbx,[rsi+0x1]
336341  48 8b f3                       mov    rsi,rbx
336344  88 01                          mov    BYTE PTR [rcx],al
336346  48 ff 45 30                    inc    QWORD PTR [rbp+0x30]
33634a  49 3b de                       cmp    rbx,r14
33634d  75 e5                          jne    0x336334
33634f  48 8d 55 30                    lea    rdx,[rbp+0x30]
336353  48 8d 4d 48                    lea    rcx,[rbp+0x48]
336357  e8 d0 b4 f9 ff                 call   0x2d182c
33635c  48 8b 45 48                    mov    rax,QWORD PTR [rbp+0x48]
336360  48 89 07                       mov    QWORD PTR [rdi],rax
336363  48 8b c7                       mov    rax,rdi
336366  48 83 c4 30                    add    rsp,0x30
33636a  41 5e                          pop    r14
33636c  5f                             pop    rdi
33636d  5e                             pop    rsi
33636e  5b                             pop    rbx
33636f  5d                             pop    rbp
336370  c3                             ret

; heuristic leaf/code range 0x3360f0..0x3360f8 unwind=0x0
3360f0  e9 9f 25 fa ff                 jmp    0x2d8694
3360f5  cc                             int3
3360f6  cc                             int3
3360f7  cc                             int3

