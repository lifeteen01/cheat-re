; pdata function 0x3727e0..0x372953 unwind=0x3d4014
3727e0  40 53                          rex push rbx
3727e2  55                             push   rbp
3727e3  56                             push   rsi
3727e4  57                             push   rdi
3727e5  48 83 ec 78                    sub    rsp,0x78
3727e9  0f 29 74 24 60                 movaps XMMWORD PTR [rsp+0x60],xmm6
3727ee  48 8b d9                       mov    rbx,rcx
3727f1  e8 12 87 f5 ff                 call   0x2caf08
3727f6  84 c0                          test   al,al
3727f8  0f 84 3f 01 00 00              je     0x37293d
3727fe  83 fa ff                       cmp    edx,0xffffffff
372801  74 15                          je     0x372818
372803  66 0f 6e f2                    movd   xmm6,edx
372807  66 41 0f 6e c0                 movd   xmm0,r8d
37280c  0f 5b f6                       cvtdq2ps xmm6,xmm6
37280f  0f 5b c0                       cvtdq2ps xmm0,xmm0
372812  f3 0f 5e f0                    divss  xmm6,xmm0
372816  eb 13                          jmp    0x37282b
372818  f3 0f 10 0d 34 aa f1 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff1aa34]        # 0x28d254 ; f32=1
372820  0f 57 c0                       xorps  xmm0,xmm0
372823  e8 34 15 f7 ff                 call   0x2e3d5c
372828  0f 28 f0                       movaps xmm6,xmm0
37282b  48 8b 6b 50                    mov    rbp,QWORD PTR [rbx+0x50]
37282f  48 8b cd                       mov    rcx,rbp
372832  e8 d1 86 f5 ff                 call   0x2caf08
372837  84 c0                          test   al,al
372839  0f 84 fe 00 00 00              je     0x37293d
37283f  8b 05 db e5 08 00              mov    eax,DWORD PTR [rip+0x8e5db]        # 0x400e20
372845  a8 01                          test   al,0x1
372847  0f 85 ab 00 00 00              jne    0x3728f8
37284d  83 c8 01                       or     eax,0x1
372850  48 8d 94 24 b8 00 00 00        lea    rdx,[rsp+0xb8]
372858  48 8d 8c 24 b8 00 00 00        lea    rcx,[rsp+0xb8]
372860  89 05 ba e5 08 00              mov    DWORD PTR [rip+0x8e5ba],eax        # 0x400e20
372866  e8 c5 9e f5 ff                 call   0x2cc730
37286b  48 8b c8                       mov    rcx,rax
37286e  e8 31 b4 f5 ff                 call   0x2cdca4
372873  48 8d 54 24 31                 lea    rdx,[rsp+0x31]
372878  48 8b f0                       mov    rsi,rax
37287b  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
372880  e8 97 fe ff ff                 call   0x37271c ; STRING getter=0x37271c Evaluate
372885  48 8b c8                       mov    rcx,rax
372888  e8 ff 72 f7 ff                 call   0x2e9b8c
37288d  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
372892  48 8b f8                       mov    rdi,rax
372895  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
37289a  e8 45 fe ff ff                 call   0x3726e4 ; STRING getter=0x3726e4 UnityEngine
37289f  48 8b c8                       mov    rcx,rax
3728a2  e8 8d b5 f5 ff                 call   0x2cde34
3728a7  48 8d 54 24 46                 lea    rdx,[rsp+0x46]
3728ac  48 8b d8                       mov    rbx,rax
3728af  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3728b4  e8 8b fd ff ff                 call   0x372644 ; STRING getter=0x372644 AnimationCurve
3728b9  48 8b c8                       mov    rcx,rax
3728bc  e8 ab 5d f6 ff                 call   0x2d866c
3728c1  48 8b c8                       mov    rcx,rax
3728c4  48 8b d3                       mov    rdx,rbx
3728c7  e8 58 19 fc ff                 call   0x334224
3728cc  48 8b c8                       mov    rcx,rax
3728cf  c7 44 24 20 ff ff ff ff        mov    DWORD PTR [rsp+0x20],0xffffffff
3728d7  4c 8b ce                       mov    r9,rsi
3728da  41 83 c8 ff                    or     r8d,0xffffffff
3728de  48 8b d7                       mov    rdx,rdi
3728e1  e8 c6 20 fc ff                 call   0x3349ac
3728e6  4c 8b 00                       mov    r8,QWORD PTR [rax]
3728e9  8b 05 31 e5 08 00              mov    eax,DWORD PTR [rip+0x8e531]        # 0x400e20
3728ef  4c 89 05 22 e5 08 00           mov    QWORD PTR [rip+0x8e522],r8        # 0x400e18
3728f6  eb 07                          jmp    0x3728ff
3728f8  4c 8b 05 19 e5 08 00           mov    r8,QWORD PTR [rip+0x8e519]        # 0x400e18
3728ff  a8 02                          test   al,0x2
372901  75 1f                          jne    0x372922
372903  48 8b 0d 56 35 06 00           mov    rcx,QWORD PTR [rip+0x63556]        # 0x3d5e60
37290a  48 8d 15 1f e5 08 00           lea    rdx,[rip+0x8e51f]        # 0x400e30
372911  83 c8 02                       or     eax,0x2
372914  45 33 c9                       xor    r9d,r9d
372917  89 05 03 e5 08 00              mov    DWORD PTR [rip+0x8e503],eax        # 0x400e20
37291d  e8 02 94 f5 ff                 call   0x2cbd24
372922  48 8b 0d 37 35 06 00           mov    rcx,QWORD PTR [rip+0x63537]        # 0x3d5e60
372929  48 8d 15 00 e5 08 00           lea    rdx,[rip+0x8e500]        # 0x400e30
372930  0f 28 de                       movaps xmm3,xmm6
372933  4c 8b c5                       mov    r8,rbp
372936  e8 ed 8d fb ff                 call   0x32b728
37293b  eb 08                          jmp    0x372945
37293d  f3 0f 10 05 0f a9 f1 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff1a90f]        # 0x28d254 ; f32=1
372945  0f 28 74 24 60                 movaps xmm6,XMMWORD PTR [rsp+0x60]
37294a  48 83 c4 78                    add    rsp,0x78
37294e  5f                             pop    rdi
37294f  5e                             pop    rsi
372950  5d                             pop    rbp
372951  5b                             pop    rbx
372952  c3                             ret

; pdata function 0x372954..0x372aba unwind=0x3d2578
372954  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
372959  55                             push   rbp
37295a  56                             push   rsi
37295b  57                             push   rdi
37295c  48 83 ec 60                    sub    rsp,0x60
372960  48 8b d1                       mov    rdx,rcx
372963  e8 a0 85 f5 ff                 call   0x2caf08
372968  84 c0                          test   al,al
37296a  0f 84 32 01 00 00              je     0x372aa2
372970  80 7a 48 00                    cmp    BYTE PTR [rdx+0x48],0x0
372974  0f 84 28 01 00 00              je     0x372aa2
37297a  48 8b 6a 50                    mov    rbp,QWORD PTR [rdx+0x50]
37297e  48 8b cd                       mov    rcx,rbp
372981  e8 82 85 f5 ff                 call   0x2caf08
372986  84 c0                          test   al,al
372988  0f 84 14 01 00 00              je     0x372aa2
37298e  8b 05 7c e5 08 00              mov    eax,DWORD PTR [rip+0x8e57c]        # 0x400f10
372994  a8 01                          test   al,0x1
372996  0f 85 b1 00 00 00              jne    0x372a4d
37299c  83 c8 01                       or     eax,0x1
37299f  48 8d 94 24 88 00 00 00        lea    rdx,[rsp+0x88]
3729a7  48 8d 8c 24 88 00 00 00        lea    rcx,[rsp+0x88]
3729af  89 05 5b e5 08 00              mov    DWORD PTR [rip+0x8e55b],eax        # 0x400f10
3729b5  e8 76 9d f5 ff                 call   0x2cc730
3729ba  48 8b c8                       mov    rcx,rax
3729bd  e8 e2 b2 f5 ff                 call   0x2cdca4
3729c2  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3729c7  48 8b f0                       mov    rsi,rax
3729ca  48 8d 8c 24 90 00 00 00        lea    rcx,[rsp+0x90]
3729d2  e8 61 fd ff ff                 call   0x372738 ; STRING getter=0x372738 Evaluate
3729d7  48 8b c8                       mov    rcx,rax
3729da  e8 ad 71 f7 ff                 call   0x2e9b8c
3729df  48 8d 54 24 39                 lea    rdx,[rsp+0x39]
3729e4  48 8b f8                       mov    rdi,rax
3729e7  48 8d 8c 24 90 00 00 00        lea    rcx,[rsp+0x90]
3729ef  e8 0c fd ff ff                 call   0x372700 ; STRING getter=0x372700 UnityEngine
3729f4  48 8b c8                       mov    rcx,rax
3729f7  e8 38 b4 f5 ff                 call   0x2cde34
3729fc  48 8d 54 24 45                 lea    rdx,[rsp+0x45]
372a01  48 8b d8                       mov    rbx,rax
372a04  48 8d 8c 24 90 00 00 00        lea    rcx,[rsp+0x90]
372a0c  e8 a3 fc ff ff                 call   0x3726b4 ; STRING getter=0x3726b4 AnimationCurve
372a11  48 8b c8                       mov    rcx,rax
372a14  e8 53 5c f6 ff                 call   0x2d866c
372a19  48 8b c8                       mov    rcx,rax
372a1c  48 8b d3                       mov    rdx,rbx
372a1f  e8 00 18 fc ff                 call   0x334224
372a24  41 83 c8 ff                    or     r8d,0xffffffff
372a28  48 8b c8                       mov    rcx,rax
372a2b  4c 8b ce                       mov    r9,rsi
372a2e  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
372a33  48 8b d7                       mov    rdx,rdi
372a36  e8 71 1f fc ff                 call   0x3349ac
372a3b  4c 8b 00                       mov    r8,QWORD PTR [rax]
372a3e  8b 05 cc e4 08 00              mov    eax,DWORD PTR [rip+0x8e4cc]        # 0x400f10
372a44  4c 89 05 bd e4 08 00           mov    QWORD PTR [rip+0x8e4bd],r8        # 0x400f08
372a4b  eb 07                          jmp    0x372a54
372a4d  4c 8b 05 b4 e4 08 00           mov    r8,QWORD PTR [rip+0x8e4b4]        # 0x400f08
372a54  a8 02                          test   al,0x2
372a56  75 1f                          jne    0x372a77
372a58  48 8b 0d 01 34 06 00           mov    rcx,QWORD PTR [rip+0x63401]        # 0x3d5e60
372a5f  48 8d 15 ba e4 08 00           lea    rdx,[rip+0x8e4ba]        # 0x400f20
372a66  83 c8 02                       or     eax,0x2
372a69  45 33 c9                       xor    r9d,r9d
372a6c  89 05 9e e4 08 00              mov    DWORD PTR [rip+0x8e49e],eax        # 0x400f10
372a72  e8 ad 92 f5 ff                 call   0x2cbd24
372a77  f3 0f 10 0d d5 a7 f1 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff1a7d5]        # 0x28d254 ; f32=1
372a7f  0f 57 c0                       xorps  xmm0,xmm0
372a82  e8 d5 12 f7 ff                 call   0x2e3d5c
372a87  48 8b 0d d2 33 06 00           mov    rcx,QWORD PTR [rip+0x633d2]        # 0x3d5e60
372a8e  48 8d 15 8b e4 08 00           lea    rdx,[rip+0x8e48b]        # 0x400f20
372a95  0f 28 d8                       movaps xmm3,xmm0
372a98  4c 8b c5                       mov    r8,rbp
372a9b  e8 88 8c fb ff                 call   0x32b728
372aa0  eb 08                          jmp    0x372aaa
372aa2  f3 0f 10 05 aa a7 f1 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff1a7aa]        # 0x28d254 ; f32=1
372aaa  48 8b 9c 24 80 00 00 00        mov    rbx,QWORD PTR [rsp+0x80]
372ab2  48 83 c4 60                    add    rsp,0x60
372ab6  5f                             pop    rdi
372ab7  5e                             pop    rsi
372ab8  5d                             pop    rbp
372ab9  c3                             ret

; pdata function 0x32bd4c..0x32be05 unwind=0x3d3580
32bd4c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32bd51  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
32bd56  57                             push   rdi
32bd57  48 83 ec 40                    sub    rsp,0x40
32bd5b  8b 15 6f be 0c 00              mov    edx,DWORD PTR [rip+0xcbe6f]        # 0x3f7bd0
32bd61  41 8a f9                       mov    dil,r9b
32bd64  0f 29 74 24 30                 movaps XMMWORD PTR [rsp+0x30],xmm6
32bd69  49 8b f0                       mov    rsi,r8
32bd6c  0f 28 f1                       movaps xmm6,xmm1
32bd6f  48 8b d9                       mov    rbx,rcx
32bd72  f6 c2 01                       test   dl,0x1
32bd75  75 20                          jne    0x32bd97
32bd77  4c 8b 05 82 b1 0a 00           mov    r8,QWORD PTR [rip+0xab182]        # 0x3d6f00
32bd7e  83 ca 01                       or     edx,0x1
32bd81  49 81 c0 b0 86 65 03           add    r8,0x36586b0
32bd88  89 15 42 be 0c 00              mov    DWORD PTR [rip+0xcbe42],edx        # 0x3f7bd0
32bd8e  4c 89 05 33 be 0c 00           mov    QWORD PTR [rip+0xcbe33],r8        # 0x3f7bc8
32bd95  eb 07                          jmp    0x32bd9e
32bd97  4c 8b 05 2a be 0c 00           mov    r8,QWORD PTR [rip+0xcbe2a]        # 0x3f7bc8
32bd9e  f6 c2 02                       test   dl,0x2
32bda1  75 1f                          jne    0x32bdc2
32bda3  48 8b 0d b6 a0 0a 00           mov    rcx,QWORD PTR [rip+0xaa0b6]        # 0x3d5e60
32bdaa  83 ca 02                       or     edx,0x2
32bdad  89 15 1d be 0c 00              mov    DWORD PTR [rip+0xcbe1d],edx        # 0x3f7bd0
32bdb3  45 33 c9                       xor    r9d,r9d
32bdb6  48 8d 15 23 be 0c 00           lea    rdx,[rip+0xcbe23]        # 0x3f7be0
32bdbd  e8 62 ff f9 ff                 call   0x2cbd24
32bdc2  48 8b cb                       mov    rcx,rbx
32bdc5  e8 f2 bd 09 00                 call   0x3c7bbc
32bdca  48 8b 0d 8f a0 0a 00           mov    rcx,QWORD PTR [rip+0xaa08f]        # 0x3d5e60
32bdd1  48 8d 15 08 be 0c 00           lea    rdx,[rip+0xcbe08]        # 0x3f7be0
32bdd8  0f 28 de                       movaps xmm3,xmm6
32bddb  40 88 7c 24 28                 mov    BYTE PTR [rsp+0x28],dil
32bde0  4c 8b c3                       mov    r8,rbx
32bde3  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
32bde8  e8 b3 f9 ff ff                 call   0x32b7a0
32bded  48 8b 74 24 58                 mov    rsi,QWORD PTR [rsp+0x58]
32bdf2  48 8b c3                       mov    rax,rbx
32bdf5  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
32bdfa  0f 28 74 24 30                 movaps xmm6,XMMWORD PTR [rsp+0x30]
32bdff  48 83 c4 40                    add    rsp,0x40
32be03  5f                             pop    rdi
32be04  c3                             ret

