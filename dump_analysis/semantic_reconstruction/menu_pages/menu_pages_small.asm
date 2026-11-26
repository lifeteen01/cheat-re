; pdata function 0x35013c..0x350434 unwind=0x3d3d68
35013c  48 8b c4                       mov    rax,rsp
35013f  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
350143  55                             push   rbp
350144  56                             push   rsi
350145  57                             push   rdi
350146  41 56                          push   r14
350148  41 57                          push   r15
35014a  48 8d 68 a1                    lea    rbp,[rax-0x5f]
35014e  48 81 ec b0 00 00 00           sub    rsp,0xb0
350155  f3 0f 10 0d 03 31 f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff43103]        # 0x293260 ; f32=-1
35015d  48 8d 4d 7f                    lea    rcx,[rbp+0x7f]
350161  0f 28 d1                       movaps xmm2,xmm1
350164  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
350168  e8 d3 c1 f7 ff                 call   0x2cc340
35016d  48 8d 55 d8                    lea    rdx,[rbp-0x28]
350171  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
350175  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
350179  e8 c2 37 00 00                 call   0x353940 ; STRING getter=0x353940 FAVORITE FUNCTIONS
35017e  48 8b c8                       mov    rcx,rax
350181  e8 0e dc f7 ff                 call   0x2cdd94
350186  48 8d 55 77                    lea    rdx,[rbp+0x77]
35018a  48 8b d8                       mov    rbx,rax
35018d  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
350191  e8 9a 05 00 00                 call   0x350730 ; STRING getter=0x350730 G
350196  48 8b c8                       mov    rcx,rax
350199  e8 c6 82 f8 ff                 call   0x2d8464
35019e  48 8b d0                       mov    rdx,rax
3501a1  48 8d 4d ef                    lea    rcx,[rbp-0x11]
3501a5  e8 22 c1 f7 ff                 call   0x2cc2cc
3501aa  48 8b c8                       mov    rcx,rax
3501ad  45 33 c9                       xor    r9d,r9d
3501b0  66 49 0f 7e f0                 movq   r8,xmm6
3501b5  48 8b d3                       mov    rdx,rbx
3501b8  e8 33 4c 03 00                 call   0x384df0
3501bd  48 8d 0d c4 f7 f2 ff           lea    rcx,[rip+0xfffffffffff2f7c4]        # 0x27f988
3501c4  e8 af 17 f8 ff                 call   0x2d1978
3501c9  48 8d 0d b8 f7 f2 ff           lea    rcx,[rip+0xfffffffffff2f7b8]        # 0x27f988
3501d0  48 8b f0                       mov    rsi,rax
3501d3  e8 e8 77 f8 ff                 call   0x2d79c0
3501d8  4c 8b f8                       mov    r15,rax
3501db  48 3b f0                       cmp    rsi,rax
3501de  0f 84 30 02 00 00              je     0x350414
3501e4  4c 8d 76 20                    lea    r14,[rsi+0x20]
3501e8  48 8d 55 cf                    lea    rdx,[rbp-0x31]
3501ec  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3501f0  e8 d3 4d 00 00                 call   0x354fc8 ; STRING getter=0x354fc8 checkbox
3501f5  48 8b c8                       mov    rcx,rax
3501f8  e8 8f 99 f9 ff                 call   0x2e9b8c
3501fd  48 8b d0                       mov    rdx,rax
350200  48 8b ce                       mov    rcx,rsi
350203  e8 30 ed f7 ff                 call   0x2cef38
350208  84 c0                          test   al,al
35020a  74 38                          je     0x350244
35020c  49 8b ce                       mov    rcx,r14
35020f  e8 d8 d5 f7 ff                 call   0x2cd7ec
350214  4c 8b 8e 90 00 00 00           mov    r9,QWORD PTR [rsi+0x90]
35021b  48 8b c8                       mov    rcx,rax
35021e  4c 8b 86 88 00 00 00           mov    r8,QWORD PTR [rsi+0x88]
350225  48 8d 05 fc d0 f3 ff           lea    rax,[rip+0xfffffffffff3d0fc]        # 0x28d328
35022c  48 8b 56 40                    mov    rdx,QWORD PTR [rsi+0x40]
350230  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
350235  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
35023a  e8 d5 ce 06 00                 call   0x3bd114
35023f  e9 b9 01 00 00                 jmp    0x3503fd
350244  48 8d 55 77                    lea    rdx,[rbp+0x77]
350248  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
35024c  e8 17 63 00 00                 call   0x356568 ; STRING getter=0x356568 combo
350251  48 8b c8                       mov    rcx,rax
350254  e8 83 82 f8 ff                 call   0x2d84dc
350259  48 8b d0                       mov    rdx,rax
35025c  48 8b ce                       mov    rcx,rsi
35025f  e8 d4 ec f7 ff                 call   0x2cef38
350264  84 c0                          test   al,al
350266  0f 84 82 00 00 00              je     0x3502ee
35026c  48 8d 4d b7                    lea    rcx,[rbp-0x49]
350270  e8 e3 44 f8 ff                 call   0x2d4758
350275  48 8d 9e b8 00 00 00           lea    rbx,[rsi+0xb8]
35027c  48 8b cb                       mov    rcx,rbx
35027f  e8 3c 77 f8 ff                 call   0x2d79c0
350284  48 8b cb                       mov    rcx,rbx
350287  48 8b f8                       mov    rdi,rax
35028a  e8 e9 16 f8 ff                 call   0x2d1978
35028f  48 8b d8                       mov    rbx,rax
350292  48 3b c7                       cmp    rax,rdi
350295  74 22                          je     0x3502b9
350297  48 8b cb                       mov    rcx,rbx
35029a  e8 4d d5 f7 ff                 call   0x2cd7ec
35029f  48 8d 55 6f                    lea    rdx,[rbp+0x6f]
3502a3  48 89 45 6f                    mov    QWORD PTR [rbp+0x6f],rax
3502a7  48 8d 4d b7                    lea    rcx,[rbp-0x49]
3502ab  e8 0c d3 f8 ff                 call   0x2dd5bc
3502b0  48 83 c3 20                    add    rbx,0x20
3502b4  48 3b df                       cmp    rbx,rdi
3502b7  75 de                          jne    0x350297
3502b9  48 8d 55 b7                    lea    rdx,[rbp-0x49]
3502bd  48 8d 4d ef                    lea    rcx,[rbp-0x11]
3502c1  e8 ae 60 fe ff                 call   0x336374
3502c6  49 8b ce                       mov    rcx,r14
3502c9  48 8b d8                       mov    rbx,rax
3502cc  e8 1b d5 f7 ff                 call   0x2cd7ec
3502d1  48 8b 56 48                    mov    rdx,QWORD PTR [rsi+0x48]
3502d5  48 8b c8                       mov    rcx,rax
3502d8  4c 8b c3                       mov    r8,rbx
3502db  e8 0c e0 06 00                 call   0x3be2ec
3502e0  48 8d 4d b7                    lea    rcx,[rbp-0x49]
3502e4  e8 d3 b2 f8 ff                 call   0x2db5bc
3502e9  e9 0f 01 00 00                 jmp    0x3503fd
3502ee  48 8d 55 0f                    lea    rdx,[rbp+0xf]
3502f2  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3502f6  e8 9d 73 00 00                 call   0x357698 ; STRING getter=0x357698 slider_int
3502fb  48 8b c8                       mov    rcx,rax
3502fe  e8 51 99 f9 ff                 call   0x2e9c54
350303  48 8b d0                       mov    rdx,rax
350306  48 8b ce                       mov    rcx,rsi
350309  e8 2a ec f7 ff                 call   0x2cef38
35030e  84 c0                          test   al,al
350310  74 3a                          je     0x35034c
350312  48 8d 4e 68                    lea    rcx,[rsi+0x68]
350316  e8 d1 d4 f7 ff                 call   0x2cd7ec
35031b  49 8b ce                       mov    rcx,r14
35031e  48 8b d8                       mov    rbx,rax
350321  e8 c6 d4 f7 ff                 call   0x2cd7ec
350326  44 8b 4e 54                    mov    r9d,DWORD PTR [rsi+0x54]
35032a  48 8b c8                       mov    rcx,rax
35032d  44 8b 46 50                    mov    r8d,DWORD PTR [rsi+0x50]
350331  48 8b 56 48                    mov    rdx,QWORD PTR [rsi+0x48]
350335  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
35033d  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
350342  e8 f1 40 07 00                 call   0x3c4438
350347  e9 b1 00 00 00                 jmp    0x3503fd
35034c  48 8d 55 1a                    lea    rdx,[rbp+0x1a]
350350  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
350354  e8 7f 7e 00 00                 call   0x3581d8 ; STRING getter=0x3581d8 slider_float
350359  48 8b c8                       mov    rcx,rax
35035c  e8 93 82 f8 ff                 call   0x2d85f4
350361  48 8b d0                       mov    rdx,rax
350364  48 8b ce                       mov    rcx,rsi
350367  e8 cc eb f7 ff                 call   0x2cef38
35036c  84 c0                          test   al,al
35036e  74 39                          je     0x3503a9
350370  48 8d 4e 68                    lea    rcx,[rsi+0x68]
350374  e8 73 d4 f7 ff                 call   0x2cd7ec
350379  49 8b ce                       mov    rcx,r14
35037c  48 8b d8                       mov    rbx,rax
35037f  e8 68 d4 f7 ff                 call   0x2cd7ec
350384  f3 0f 10 5e 64                 movss  xmm3,DWORD PTR [rsi+0x64]
350389  48 8b c8                       mov    rcx,rax
35038c  f3 0f 10 56 60                 movss  xmm2,DWORD PTR [rsi+0x60]
350391  48 8b 56 58                    mov    rdx,QWORD PTR [rsi+0x58]
350395  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
35039d  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3503a2  e8 4d 40 07 00                 call   0x3c43f4
3503a7  eb 54                          jmp    0x3503fd
3503a9  48 8d 55 d8                    lea    rdx,[rbp-0x28]
3503ad  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3503b1  e8 12 84 00 00                 call   0x3587c8 ; STRING getter=0x3587c8 multi_select
3503b6  48 8b c8                       mov    rcx,rax
3503b9  e8 36 82 f8 ff                 call   0x2d85f4
3503be  48 8b d0                       mov    rdx,rax
3503c1  48 8b ce                       mov    rcx,rsi
3503c4  e8 6f eb f7 ff                 call   0x2cef38
3503c9  84 c0                          test   al,al
3503cb  74 30                          je     0x3503fd
3503cd  48 8b be 98 00 00 00           mov    rdi,QWORD PTR [rsi+0x98]
3503d4  48 8d 96 a0 00 00 00           lea    rdx,[rsi+0xa0]
3503db  48 8d 4d ef                    lea    rcx,[rbp-0x11]
3503df  e8 d8 ae f8 ff                 call   0x2db2bc
3503e4  49 8b ce                       mov    rcx,r14
3503e7  48 8b d8                       mov    rbx,rax
3503ea  e8 fd d3 f7 ff                 call   0x2cd7ec
3503ef  48 8b c8                       mov    rcx,rax
3503f2  4c 8b c7                       mov    r8,rdi
3503f5  48 8b d3                       mov    rdx,rbx
3503f8  e8 1b 79 03 00                 call   0x387d18
3503fd  48 81 c6 e0 00 00 00           add    rsi,0xe0
350404  49 81 c6 e0 00 00 00           add    r14,0xe0
35040b  49 3b f7                       cmp    rsi,r15
35040e  0f 85 d4 fd ff ff              jne    0x3501e8
350414  4c 8d 9c 24 b0 00 00 00        lea    r11,[rsp+0xb0]
35041c  49 8b 5b 30                    mov    rbx,QWORD PTR [r11+0x30]
350420  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
350425  49 8b e3                       mov    rsp,r11
350428  41 5f                          pop    r15
35042a  41 5e                          pop    r14
35042c  5f                             pop    rdi
35042d  5e                             pop    rsi
35042e  5d                             pop    rbp
35042f  e9 18 6e 03 00                 jmp    0x38724c

; pdata function 0x33a6f8..0x33ac32 unwind=0x3d3ba8
33a6f8  40 55                          rex push rbp
33a6fa  53                             push   rbx
33a6fb  41 57                          push   r15
33a6fd  48 8b ec                       mov    rbp,rsp
33a700  48 81 ec 80 00 00 00           sub    rsp,0x80
33a707  f3 0f 10 15 51 8b f5 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff58b51]        # 0x293260 ; f32=-1
33a70f  48 8d 4d 38                    lea    rcx,[rbp+0x38]
33a713  0f 57 c9                       xorps  xmm1,xmm1
33a716  0f 29 74 24 70                 movaps XMMWORD PTR [rsp+0x70],xmm6
33a71b  e8 20 1c f9 ff                 call   0x2cc340
33a720  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
33a724  8b 05 be 29 0c 00              mov    eax,DWORD PTR [rip+0xc29be]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33a72a  83 f8 01                       cmp    eax,0x1
33a72d  75 0e                          jne    0x33a73d
33a72f  48 8d 0d 2a e5 f5 ff           lea    rcx,[rip+0xfffffffffff5e52a]        # 0x298c60
33a736  e8 c9 a8 02 00                 call   0x365004
33a73b  eb 23                          jmp    0x33a760
33a73d  83 f8 02                       cmp    eax,0x2
33a740  75 09                          jne    0x33a74b
33a742  48 8d 0d 27 e5 f5 ff           lea    rcx,[rip+0xfffffffffff5e527]        # 0x298c70
33a749  eb eb                          jmp    0x33a736
33a74b  48 8d 55 b0                    lea    rdx,[rbp-0x50]
33a74f  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33a753  e8 48 90 01 00                 call   0x3537a0 ; STRING getter=0x3537a0 Resources
33a758  48 8b c8                       mov    rcx,rax
33a75b  e8 e4 35 f9 ff                 call   0x2cdd44
33a760  48 8d 55 30                    lea    rdx,[rbp+0x30]
33a764  48 8b d8                       mov    rbx,rax
33a767  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33a76b  e8 fc 5f 01 00                 call   0x35076c ; STRING getter=0x35076c L
33a770  48 8b c8                       mov    rcx,rax
33a773  e8 ec dc f9 ff                 call   0x2d8464
33a778  48 8b d0                       mov    rdx,rax
33a77b  48 8d 4d d0                    lea    rcx,[rbp-0x30]
33a77f  e8 48 1b f9 ff                 call   0x2cc2cc
33a784  48 8b c8                       mov    rcx,rax
33a787  41 b1 01                       mov    r9b,0x1
33a78a  66 49 0f 7e f0                 movq   r8,xmm6
33a78f  48 8b d3                       mov    rdx,rbx
33a792  e8 59 a6 04 00                 call   0x384df0
33a797  8b 05 4b 29 0c 00              mov    eax,DWORD PTR [rip+0xc294b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33a79d  83 f8 01                       cmp    eax,0x1
33a7a0  75 09                          jne    0x33a7ab
33a7a2  48 8d 0d cf e4 f5 ff           lea    rcx,[rip+0xfffffffffff5e4cf]        # 0x298c78
33a7a9  eb 0c                          jmp    0x33a7b7
33a7ab  83 f8 02                       cmp    eax,0x2
33a7ae  75 0e                          jne    0x33a7be
33a7b0  48 8d 0d d9 e4 f5 ff           lea    rcx,[rip+0xfffffffffff5e4d9]        # 0x298c90
33a7b7  e8 48 a8 02 00                 call   0x365004
33a7bc  eb 15                          jmp    0x33a7d3
33a7be  48 8d 55 b0                    lea    rdx,[rbp-0x50]
33a7c2  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33a7c6  e8 4d a6 01 00                 call   0x354e18 ; STRING getter=0x354e18 Stone Ore
33a7cb  48 8b c8                       mov    rcx,rax
33a7ce  e8 71 35 f9 ff                 call   0x2cdd44
33a7d3  4c 8d 3d 4e 2b f5 ff           lea    r15,[rip+0xfffffffffff52b4e]        # 0x28d328
33a7da  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
33a7df  4c 8d 0d 32 0e 0b 00           lea    r9,[rip+0xb0e32]        # 0x3eb618 ; CONFIG C.StoneOreColor value(+0x48)
33a7e6  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
33a7eb  45 33 c0                       xor    r8d,r8d
33a7ee  48 8d 15 d3 d1 0a 00           lea    rdx,[rip+0xad1d3]        # 0x3e79c8 ; CONFIG Bools.StoneOre value(+0x48)
33a7f5  48 8b c8                       mov    rcx,rax
33a7f8  e8 17 29 08 00                 call   0x3bd114
33a7fd  8b 05 e5 28 0c 00              mov    eax,DWORD PTR [rip+0xc28e5]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33a803  83 f8 01                       cmp    eax,0x1
33a806  75 09                          jne    0x33a811
33a808  48 8d 0d 89 e4 f5 ff           lea    rcx,[rip+0xfffffffffff5e489]        # 0x298c98
33a80f  eb 0c                          jmp    0x33a81d
33a811  83 f8 02                       cmp    eax,0x2
33a814  75 0e                          jne    0x33a824
33a816  48 8d 0d 9b e4 f5 ff           lea    rcx,[rip+0xfffffffffff5e49b]        # 0x298cb8
33a81d  e8 e2 a7 02 00                 call   0x365004
33a822  eb 15                          jmp    0x33a839
33a824  48 8d 55 28                    lea    rdx,[rbp+0x28]
33a828  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33a82c  e8 0f 82 fb ff                 call   0x2f2a40
33a831  48 8b c8                       mov    rcx,rax
33a834  e8 db 8d fa ff                 call   0x2e3614
33a839  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
33a83e  4c 8d 0d f3 0e 0b 00           lea    r9,[rip+0xb0ef3]        # 0x3eb738 ; CONFIG C.MetalOreColor value(+0x48)
33a845  45 33 c0                       xor    r8d,r8d
33a848  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
33a84d  48 8d 15 c4 d1 0a 00           lea    rdx,[rip+0xad1c4]        # 0x3e7a18 ; CONFIG Bools.HQMOre value(+0x48)
33a854  48 8b c8                       mov    rcx,rax
33a857  e8 b8 28 08 00                 call   0x3bd114
33a85c  8b 05 86 28 0c 00              mov    eax,DWORD PTR [rip+0xc2886]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33a862  83 f8 01                       cmp    eax,0x1
33a865  75 09                          jne    0x33a870
33a867  48 8d 0d 5a e4 f5 ff           lea    rcx,[rip+0xfffffffffff5e45a]        # 0x298cc8
33a86e  eb 0c                          jmp    0x33a87c
33a870  83 f8 02                       cmp    eax,0x2
33a873  75 0e                          jne    0x33a883
33a875  48 8d 0d 64 e4 f5 ff           lea    rcx,[rip+0xfffffffffff5e464]        # 0x298ce0
33a87c  e8 83 a7 02 00                 call   0x365004
33a881  eb 15                          jmp    0x33a898
33a883  48 8d 55 b0                    lea    rdx,[rbp-0x50]
33a887  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33a88b  e8 a0 cc 01 00                 call   0x357530 ; STRING getter=0x357530 Metal Ore
33a890  48 8b c8                       mov    rcx,rax
33a893  e8 ac 34 f9 ff                 call   0x2cdd44
33a898  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
33a89d  4c 8d 0d 34 0e 0b 00           lea    r9,[rip+0xb0e34]        # 0x3eb6d8
33a8a4  45 33 c0                       xor    r8d,r8d
33a8a7  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
33a8ac  48 8d 15 b5 d1 0a 00           lea    rdx,[rip+0xad1b5]        # 0x3e7a68 ; CONFIG Bools.MetalOre value(+0x48)
33a8b3  48 8b c8                       mov    rcx,rax
33a8b6  e8 59 28 08 00                 call   0x3bd114
33a8bb  8b 05 27 28 0c 00              mov    eax,DWORD PTR [rip+0xc2827]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33a8c1  83 f8 01                       cmp    eax,0x1
33a8c4  75 09                          jne    0x33a8cf
33a8c6  48 8d 0d 1b e4 f5 ff           lea    rcx,[rip+0xfffffffffff5e41b]        # 0x298ce8
33a8cd  eb 0c                          jmp    0x33a8db
33a8cf  83 f8 02                       cmp    eax,0x2
33a8d2  75 0e                          jne    0x33a8e2
33a8d4  48 8d 0d 25 e4 f5 ff           lea    rcx,[rip+0xfffffffffff5e425]        # 0x298d00
33a8db  e8 24 a7 02 00                 call   0x365004
33a8e0  eb 15                          jmp    0x33a8f7
33a8e2  48 8d 55 b0                    lea    rdx,[rbp-0x50]
33a8e6  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33a8ea  e8 21 d7 01 00                 call   0x358010 ; STRING getter=0x358010 Sulfur Ore
33a8ef  48 8b c8                       mov    rcx,rax
33a8f2  e8 5d f3 fa ff                 call   0x2e9c54
33a8f7  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
33a8fc  4c 8d 0d 95 0e 0b 00           lea    r9,[rip+0xb0e95]        # 0x3eb798 ; CONFIG C.SulfurOreColor value(+0x48)
33a903  45 33 c0                       xor    r8d,r8d
33a906  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
33a90b  48 8d 15 f6 d1 0a 00           lea    rdx,[rip+0xad1f6]        # 0x3e7b08 ; CONFIG Bools.SulfurOre value(+0x48)
33a912  48 8b c8                       mov    rcx,rax
33a915  e8 fa 27 08 00                 call   0x3bd114
33a91a  8b 05 c8 27 0c 00              mov    eax,DWORD PTR [rip+0xc27c8]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33a920  83 f8 01                       cmp    eax,0x1
33a923  75 09                          jne    0x33a92e
33a925  48 8d 0d dc e3 f5 ff           lea    rcx,[rip+0xfffffffffff5e3dc]        # 0x298d08
33a92c  eb 0c                          jmp    0x33a93a
33a92e  83 f8 02                       cmp    eax,0x2
33a931  75 0e                          jne    0x33a941
33a933  48 8d 0d e6 e3 f5 ff           lea    rcx,[rip+0xfffffffffff5e3e6]        # 0x298d20
33a93a  e8 c5 a6 02 00                 call   0x365004
33a93f  eb 15                          jmp    0x33a956
33a941  48 8d 55 b0                    lea    rdx,[rbp-0x50]
33a945  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33a949  e8 06 dd 01 00                 call   0x358654 ; STRING getter=0x358654 Wood Pile
33a94e  48 8b c8                       mov    rcx,rax
33a951  e8 ee 33 f9 ff                 call   0x2cdd44
33a956  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
33a95b  4c 8d 0d 16 0d 0b 00           lea    r9,[rip+0xb0d16]        # 0x3eb678 ; CONFIG C.WoodPileColor value(+0x48)
33a962  45 33 c0                       xor    r8d,r8d
33a965  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
33a96a  48 8d 15 b7 c5 0a 00           lea    rdx,[rip+0xac5b7]        # 0x3e6f28 ; CONFIG Bools.WoodPile value(+0x48)
33a971  48 8b c8                       mov    rcx,rax
33a974  e8 9b 27 08 00                 call   0x3bd114
33a979  8b 05 69 27 0c 00              mov    eax,DWORD PTR [rip+0xc2769]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33a97f  83 f8 01                       cmp    eax,0x1
33a982  75 0e                          jne    0x33a992
33a984  48 8d 0d 9d e3 f5 ff           lea    rcx,[rip+0xfffffffffff5e39d]        # 0x298d28
33a98b  e8 74 a6 02 00                 call   0x365004
33a990  eb 23                          jmp    0x33a9b5
33a992  83 f8 02                       cmp    eax,0x2
33a995  75 09                          jne    0x33a9a0
33a997  48 8d 0d ba e3 f5 ff           lea    rcx,[rip+0xfffffffffff5e3ba]        # 0x298d58
33a99e  eb eb                          jmp    0x33a98b
33a9a0  48 8d 55 d0                    lea    rdx,[rbp-0x30]
33a9a4  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33a9a8  e8 0b fb 01 00                 call   0x35a4b8 ; STRING getter=0x35a4b8 Checks required tool
33a9ad  48 8b c8                       mov    rcx,rax
33a9b0  e8 07 5b fe ff                 call   0x3204bc
33a9b5  48 8b d8                       mov    rbx,rax
33a9b8  8b 05 2a 27 0c 00              mov    eax,DWORD PTR [rip+0xc272a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33a9be  83 f8 01                       cmp    eax,0x1
33a9c1  75 09                          jne    0x33a9cc
33a9c3  48 8d 0d 9e e3 f5 ff           lea    rcx,[rip+0xfffffffffff5e39e]        # 0x298d68
33a9ca  eb 0c                          jmp    0x33a9d8
33a9cc  83 f8 02                       cmp    eax,0x2
33a9cf  75 0e                          jne    0x33a9df
33a9d1  48 8d 0d c0 e3 f5 ff           lea    rcx,[rip+0xfffffffffff5e3c0]        # 0x298d98
33a9d8  e8 27 a6 02 00                 call   0x365004
33a9dd  eb 15                          jmp    0x33a9f4
33a9df  48 8d 55 b0                    lea    rdx,[rbp-0x50]
33a9e3  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33a9e7  e8 d8 e0 01 00                 call   0x358ac4 ; STRING getter=0x358ac4 Farming Tool Check
33a9ec  48 8b c8                       mov    rcx,rax
33a9ef  e8 a0 33 f9 ff                 call   0x2cdd94
33a9f4  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
33a9f9  48 8d 15 d8 c4 0a 00           lea    rdx,[rip+0xac4d8]        # 0x3e6ed8 ; CONFIG Bools.ToolMode value(+0x48)
33aa00  45 33 c9                       xor    r9d,r9d
33aa03  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
33aa08  45 33 c0                       xor    r8d,r8d
33aa0b  48 8b c8                       mov    rcx,rax
33aa0e  e8 01 27 08 00                 call   0x3bd114
33aa13  e8 34 c8 04 00                 call   0x38724c
33aa18  f3 0f 10 0d 40 88 f5 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff58840]        # 0x293260 ; f32=-1
33aa20  0f 57 c0                       xorps  xmm0,xmm0
33aa23  e8 dc 01 06 00                 call   0x39ac04
33aa28  f3 0f 10 15 30 88 f5 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff58830]        # 0x293260 ; f32=-1
33aa30  48 8d 4d 38                    lea    rcx,[rbp+0x38]
33aa34  0f 57 c9                       xorps  xmm1,xmm1
33aa37  e8 04 19 f9 ff                 call   0x2cc340
33aa3c  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
33aa40  8b 05 a2 26 0c 00              mov    eax,DWORD PTR [rip+0xc26a2]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33aa46  83 f8 01                       cmp    eax,0x1
33aa49  75 0e                          jne    0x33aa59
33aa4b  48 8d 0d 56 e3 f5 ff           lea    rcx,[rip+0xfffffffffff5e356]        # 0x298da8
33aa52  e8 ad a5 02 00                 call   0x365004
33aa57  eb 23                          jmp    0x33aa7c
33aa59  83 f8 02                       cmp    eax,0x2
33aa5c  75 09                          jne    0x33aa67
33aa5e  48 8d 0d 73 e3 f5 ff           lea    rcx,[rip+0xfffffffffff5e373]        # 0x298dd8
33aa65  eb eb                          jmp    0x33aa52
33aa67  48 8d 55 d0                    lea    rdx,[rbp-0x30]
33aa6b  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33aa6f  e8 c0 59 01 00                 call   0x350434 ; STRING getter=0x350434 Resources Modifications
33aa74  48 8b c8                       mov    rcx,rax
33aa77  e8 68 5a fe ff                 call   0x3204e4
33aa7c  48 8d 55 30                    lea    rdx,[rbp+0x30]
33aa80  48 8b d8                       mov    rbx,rax
33aa83  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33aa87  e8 38 a8 00 00                 call   0x3452c4 ; STRING getter=0x3452c4 D
33aa8c  48 8b c8                       mov    rcx,rax
33aa8f  e8 d0 d9 f9 ff                 call   0x2d8464
33aa94  48 8b d0                       mov    rdx,rax
33aa97  48 8d 4d b0                    lea    rcx,[rbp-0x50]
33aa9b  e8 2c 18 f9 ff                 call   0x2cc2cc
33aaa0  48 8b c8                       mov    rcx,rax
33aaa3  41 b1 01                       mov    r9b,0x1
33aaa6  66 49 0f 7e f0                 movq   r8,xmm6
33aaab  48 8b d3                       mov    rdx,rbx
33aaae  e8 3d a3 04 00                 call   0x384df0
33aab3  48 8d 55 b0                    lea    rdx,[rbp-0x50]
33aab7  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33aabb  e8 b4 62 01 00                 call   0x350d74 ; STRING getter=0x350d74 Ore Icons
33aac0  48 8b c8                       mov    rcx,rax
33aac3  e8 7c 32 f9 ff                 call   0x2cdd44
33aac8  48 8b c8                       mov    rcx,rax
33aacb  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
33aad0  45 33 c9                       xor    r9d,r9d
33aad3  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
33aad8  45 33 c0                       xor    r8d,r8d
33aadb  48 8d 15 f6 be 0a 00           lea    rdx,[rip+0xabef6]        # 0x3e69d8 ; CONFIG Bools.OreIcons value(+0x48)
33aae2  e8 2d 26 08 00                 call   0x3bd114
33aae7  80 3d 7a c0 0a 00 00           cmp    BYTE PTR [rip+0xac07a],0x0        # 0x3e6b68 ; CONFIG Bools.OtherIcons value(+0x48)
33aaee  74 59                          je     0x33ab49
33aaf0  48 8d 55 30                    lea    rdx,[rbp+0x30]
33aaf4  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33aaf8  e8 5b 78 01 00                 call   0x352358 ; STRING getter=0x352358 %.3f
33aafd  48 8b c8                       mov    rcx,rax
33ab00  e8 e7 8a fa ff                 call   0x2e35ec
33ab05  48 8d 55 b0                    lea    rdx,[rbp-0x50]
33ab09  48 8b d8                       mov    rbx,rax
33ab0c  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33ab10  e8 2b 66 01 00                 call   0x351140 ; STRING getter=0x351140 Icon Size
33ab15  48 8b c8                       mov    rcx,rax
33ab18  e8 27 32 f9 ff                 call   0x2cdd44
33ab1d  f3 0f 10 1d 1f 86 f5 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff5861f]        # 0x293144 ; f32=2.5
33ab25  48 8d 15 cc 27 0b 00           lea    rdx,[rip+0xb27cc]        # 0x3ed2f8 ; CONFIG F.OreIconsMult value(+0x48)
33ab2c  f3 0f 10 15 c8 2f f5 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff52fc8]        # 0x28dafc ; f32=1.5
33ab34  48 8b c8                       mov    rcx,rax
33ab37  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
33ab3f  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
33ab44  e8 ab 98 08 00                 call   0x3c43f4
33ab49  8b 05 99 25 0c 00              mov    eax,DWORD PTR [rip+0xc2599]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33ab4f  83 f8 01                       cmp    eax,0x1
33ab52  75 09                          jne    0x33ab5d
33ab54  48 8d 0d 8d e2 f5 ff           lea    rcx,[rip+0xfffffffffff5e28d]        # 0x298de8
33ab5b  eb 0c                          jmp    0x33ab69
33ab5d  83 f8 02                       cmp    eax,0x2
33ab60  75 0e                          jne    0x33ab70
33ab62  48 8d 0d 97 e2 f5 ff           lea    rcx,[rip+0xfffffffffff5e297]        # 0x298e00
33ab69  e8 96 a4 02 00                 call   0x365004
33ab6e  eb 15                          jmp    0x33ab85
33ab70  48 8d 55 b0                    lea    rdx,[rbp-0x50]
33ab74  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33ab78  e8 0f 69 01 00                 call   0x35148c ; STRING getter=0x35148c Ore Chams
33ab7d  48 8b c8                       mov    rcx,rax
33ab80  e8 bf 31 f9 ff                 call   0x2cdd44
33ab85  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
33ab8a  48 8d 15 f7 c2 0a 00           lea    rdx,[rip+0xac2f7]        # 0x3e6e88 ; CONFIG Bools.ChamOres value(+0x48)
33ab91  45 33 c9                       xor    r9d,r9d
33ab94  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
33ab99  45 33 c0                       xor    r8d,r8d
33ab9c  48 8b c8                       mov    rcx,rax
33ab9f  e8 70 25 08 00                 call   0x3bd114
33aba4  48 8d 55 30                    lea    rdx,[rbp+0x30]
33aba8  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33abac  e8 63 d6 01 00                 call   0x358214 ; STRING getter=0x358214 %d
33abb1  48 8b c8                       mov    rcx,rax
33abb4  e8 d3 d8 f9 ff                 call   0x2d848c
33abb9  8b 0d 29 25 0c 00              mov    ecx,DWORD PTR [rip+0xc2529]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33abbf  48 8b d8                       mov    rbx,rax
33abc2  83 f9 01                       cmp    ecx,0x1
33abc5  75 09                          jne    0x33abd0
33abc7  48 8d 0d 42 e2 f5 ff           lea    rcx,[rip+0xfffffffffff5e242]        # 0x298e10
33abce  eb 0c                          jmp    0x33abdc
33abd0  83 f9 02                       cmp    ecx,0x2
33abd3  75 0e                          jne    0x33abe3
33abd5  48 8d 0d 54 e2 f5 ff           lea    rcx,[rip+0xfffffffffff5e254]        # 0x298e30
33abdc  e8 23 a4 02 00                 call   0x365004
33abe1  eb 15                          jmp    0x33abf8
33abe3  48 8d 55 b0                    lea    rdx,[rbp-0x50]
33abe7  48 8d 4d 28                    lea    rcx,[rbp+0x28]
33abeb  e8 20 6b 01 00                 call   0x351710 ; STRING getter=0x351710 Node Distance
33abf0  48 8b c8                       mov    rcx,rax
33abf3  e8 90 25 fa ff                 call   0x2dd188
33abf8  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
33ac00  48 8d 15 81 3c 0b 00           lea    rdx,[rip+0xb3c81]        # 0x3ee888 ; CONFIG i.OreDistance value(+0x48)
33ac07  41 b9 f4 01 00 00              mov    r9d,0x1f4
33ac0d  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
33ac12  45 33 c0                       xor    r8d,r8d
33ac15  48 8b c8                       mov    rcx,rax
33ac18  e8 1b 98 08 00                 call   0x3c4438
33ac1d  0f 28 74 24 70                 movaps xmm6,XMMWORD PTR [rsp+0x70]
33ac22  48 81 c4 80 00 00 00           add    rsp,0x80
33ac29  41 5f                          pop    r15
33ac2b  5b                             pop    rbx
33ac2c  5d                             pop    rbp
33ac2d  e9 1a c6 04 00                 jmp    0x38724c

