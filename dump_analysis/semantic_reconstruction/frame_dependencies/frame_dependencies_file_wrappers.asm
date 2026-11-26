; pdata function 0x2d5b34..0x2d5b78 unwind=0x3d2534
2d5b34  40 53                          rex push rbx
2d5b36  48 83 ec 50                    sub    rsp,0x50
2d5b3a  0f 57 c0                       xorps  xmm0,xmm0
2d5b3d  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d5b42  33 c0                          xor    eax,eax
2d5b44  b3 01                          mov    bl,0x1
2d5b46  44 8a c3                       mov    r8b,bl
2d5b49  89 44 24 40                    mov    DWORD PTR [rsp+0x40],eax
2d5b4d  0f 11 44 24 20                 movups XMMWORD PTR [rsp+0x20],xmm0
2d5b52  0f 11 44 24 30                 movups XMMWORD PTR [rsp+0x30],xmm0
2d5b57  e8 7c 01 00 00                 call   0x2d5cd8
2d5b5c  85 c0                          test   eax,eax
2d5b5e  75 0e                          jne    0x2d5b6e
2d5b60  83 7c 24 20 ff                 cmp    DWORD PTR [rsp+0x20],0xffffffff
2d5b65  74 07                          je     0x2d5b6e
2d5b67  f6 44 24 20 10                 test   BYTE PTR [rsp+0x20],0x10
2d5b6c  75 02                          jne    0x2d5b70
2d5b6e  32 db                          xor    bl,bl
2d5b70  8a c3                          mov    al,bl
2d5b72  48 83 c4 50                    add    rsp,0x50
2d5b76  5b                             pop    rbx
2d5b77  c3                             ret

; pdata function 0x2d57f4..0x2d5918 unwind=0x3d2578
2d57f4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d57f9  55                             push   rbp
2d57fa  56                             push   rsi
2d57fb  57                             push   rdi
2d57fc  48 83 ec 60                    sub    rsp,0x60
2d5800  e8 d7 8d ff ff                 call   0x2ce5dc
2d5805  8b 0d 15 10 10 00              mov    ecx,DWORD PTR [rip+0x101015]        # 0x3d6820
2d580b  48 8b e8                       mov    rbp,rax
2d580e  f6 c1 01                       test   cl,0x1
2d5811  0f 85 b1 00 00 00              jne    0x2d58c8
2d5817  83 c9 01                       or     ecx,0x1
2d581a  48 8d 94 24 88 00 00 00        lea    rdx,[rsp+0x88]
2d5822  89 0d f8 0f 10 00              mov    DWORD PTR [rip+0x100ff8],ecx        # 0x3d6820
2d5828  48 8d 8c 24 88 00 00 00        lea    rcx,[rsp+0x88]
2d5830  e8 fb 6e ff ff                 call   0x2cc730
2d5835  48 8b c8                       mov    rcx,rax
2d5838  e8 67 84 ff ff                 call   0x2cdca4
2d583d  48 8d 54 24 45                 lea    rdx,[rsp+0x45]
2d5842  48 8b f0                       mov    rsi,rax
2d5845  48 8d 8c 24 90 00 00 00        lea    rcx,[rsp+0x90]
2d584d  e8 32 fb ff ff                 call   0x2d5384 ; STRING getter=0x2d5384 CreateDirectory
2d5852  48 8b c8                       mov    rcx,rax
2d5855  e8 d2 2c 00 00                 call   0x2d852c
2d585a  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2d585f  48 8b f8                       mov    rdi,rax
2d5862  48 8d 8c 24 90 00 00 00        lea    rcx,[rsp+0x90]
2d586a  e8 bd f9 ff ff                 call   0x2d522c ; STRING getter=0x2d522c System.IO
2d586f  48 8b c8                       mov    rcx,rax
2d5872  e8 a5 84 ff ff                 call   0x2cdd1c
2d5877  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
2d587c  48 8b d8                       mov    rbx,rax
2d587f  48 8d 8c 24 90 00 00 00        lea    rcx,[rsp+0x90]
2d5887  e8 b4 f7 ff ff                 call   0x2d5040 ; STRING getter=0x2d5040 FileSystem
2d588c  48 8b c8                       mov    rcx,rax
2d588f  e8 38 2d 00 00                 call   0x2d85cc
2d5894  48 8b c8                       mov    rcx,rax
2d5897  48 8b d3                       mov    rdx,rbx
2d589a  e8 85 e9 05 00                 call   0x334224
2d589f  41 83 c8 ff                    or     r8d,0xffffffff
2d58a3  48 8b c8                       mov    rcx,rax
2d58a6  4c 8b ce                       mov    r9,rsi
2d58a9  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
2d58ae  48 8b d7                       mov    rdx,rdi
2d58b1  e8 f6 f0 05 00                 call   0x3349ac
2d58b6  8b 0d 64 0f 10 00              mov    ecx,DWORD PTR [rip+0x100f64]        # 0x3d6820
2d58bc  4c 8b 00                       mov    r8,QWORD PTR [rax]
2d58bf  4c 89 05 52 0f 10 00           mov    QWORD PTR [rip+0x100f52],r8        # 0x3d6818
2d58c6  eb 07                          jmp    0x2d58cf
2d58c8  4c 8b 05 49 0f 10 00           mov    r8,QWORD PTR [rip+0x100f49]        # 0x3d6818
2d58cf  f6 c1 02                       test   cl,0x2
2d58d2  75 1f                          jne    0x2d58f3
2d58d4  83 c9 02                       or     ecx,0x2
2d58d7  48 8d 15 52 0f 10 00           lea    rdx,[rip+0x100f52]        # 0x3d6830
2d58de  89 0d 3c 0f 10 00              mov    DWORD PTR [rip+0x100f3c],ecx        # 0x3d6820
2d58e4  45 33 c9                       xor    r9d,r9d
2d58e7  48 8b 0d 72 05 10 00           mov    rcx,QWORD PTR [rip+0x100572]        # 0x3d5e60
2d58ee  e8 31 64 ff ff                 call   0x2cbd24
2d58f3  48 8b 0d 66 05 10 00           mov    rcx,QWORD PTR [rip+0x100566]        # 0x3d5e60
2d58fa  48 8d 15 2f 0f 10 00           lea    rdx,[rip+0x100f2f]        # 0x3d6830
2d5901  4c 8b c5                       mov    r8,rbp
2d5904  48 8b 9c 24 80 00 00 00        mov    rbx,QWORD PTR [rsp+0x80]
2d590c  48 83 c4 60                    add    rsp,0x60
2d5910  5f                             pop    rdi
2d5911  5e                             pop    rsi
2d5912  5d                             pop    rbp
2d5913  e9 e4 60 ff ff                 jmp    0x2cb9fc

; pdata function 0x2d61b4..0x2d62ad unwind=0x3d21a8
2d61b4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d61b9  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
2d61be  57                             push   rdi
2d61bf  48 83 ec 40                    sub    rsp,0x40
2d61c3  e8 14 84 ff ff                 call   0x2ce5dc
2d61c8  8b 0d 32 08 10 00              mov    ecx,DWORD PTR [rip+0x100832]        # 0x3d6a00
2d61ce  48 8b f0                       mov    rsi,rax
2d61d1  f6 c1 01                       test   cl,0x1
2d61d4  0f 85 83 00 00 00              jne    0x2d625d
2d61da  83 c9 01                       or     ecx,0x1
2d61dd  48 8d 54 24 2a                 lea    rdx,[rsp+0x2a]
2d61e2  89 0d 18 08 10 00              mov    DWORD PTR [rip+0x100818],ecx        # 0x3d6a00
2d61e8  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2d61ed  e8 16 f2 ff ff                 call   0x2d5408 ; STRING getter=0x2d5408 ReadAllBytes
2d61f2  48 8b c8                       mov    rcx,rax
2d61f5  e8 fa 23 00 00                 call   0x2d85f4
2d61fa  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d61ff  48 8b f8                       mov    rdi,rax
2d6202  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2d6207  e8 ac f0 ff ff                 call   0x2d52b8 ; STRING getter=0x2d52b8 System.IO
2d620c  48 8b c8                       mov    rcx,rax
2d620f  e8 30 7b ff ff                 call   0x2cdd44
2d6214  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2d6219  48 8b d8                       mov    rbx,rax
2d621c  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2d6221  e8 a2 ee ff ff                 call   0x2d50c8 ; STRING getter=0x2d50c8 File
2d6226  48 8b c8                       mov    rcx,rax
2d6229  e8 9e 7a ff ff                 call   0x2cdccc
2d622e  48 8b c8                       mov    rcx,rax
2d6231  48 8b d3                       mov    rdx,rbx
2d6234  e8 eb df 05 00                 call   0x334224
2d6239  45 33 c9                       xor    r9d,r9d
2d623c  48 8b c8                       mov    rcx,rax
2d623f  48 8b d7                       mov    rdx,rdi
2d6242  45 8d 41 01                    lea    r8d,[r9+0x1]
2d6246  e8 45 e8 05 00                 call   0x334a90
2d624b  8b 0d af 07 10 00              mov    ecx,DWORD PTR [rip+0x1007af]        # 0x3d6a00
2d6251  4c 8b 00                       mov    r8,QWORD PTR [rax]
2d6254  4c 89 05 9d 07 10 00           mov    QWORD PTR [rip+0x10079d],r8        # 0x3d69f8
2d625b  eb 07                          jmp    0x2d6264
2d625d  4c 8b 05 94 07 10 00           mov    r8,QWORD PTR [rip+0x100794]        # 0x3d69f8
2d6264  f6 c1 02                       test   cl,0x2
2d6267  75 1f                          jne    0x2d6288
2d6269  83 c9 02                       or     ecx,0x2
2d626c  48 8d 15 9d 07 10 00           lea    rdx,[rip+0x10079d]        # 0x3d6a10
2d6273  89 0d 87 07 10 00              mov    DWORD PTR [rip+0x100787],ecx        # 0x3d6a00
2d6279  45 33 c9                       xor    r9d,r9d
2d627c  48 8b 0d dd fb 0f 00           mov    rcx,QWORD PTR [rip+0xffbdd]        # 0x3d5e60
2d6283  e8 9c 5a ff ff                 call   0x2cbd24
2d6288  48 8b 0d d1 fb 0f 00           mov    rcx,QWORD PTR [rip+0xffbd1]        # 0x3d5e60
2d628f  48 8d 15 7a 07 10 00           lea    rdx,[rip+0x10077a]        # 0x3d6a10
2d6296  4c 8b c6                       mov    r8,rsi
2d6299  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
2d629e  48 8b 74 24 68                 mov    rsi,QWORD PTR [rsp+0x68]
2d62a3  48 83 c4 40                    add    rsp,0x40
2d62a7  5f                             pop    rdi
2d62a8  e9 4f 57 ff ff                 jmp    0x2cb9fc

; pdata function 0x2d5f84..0x2d6065 unwind=0x3d24a8
2d5f84  40 53                          rex push rbx
2d5f86  55                             push   rbp
2d5f87  56                             push   rsi
2d5f88  57                             push   rdi
2d5f89  48 83 ec 78                    sub    rsp,0x78
2d5f8d  49 8b f8                       mov    rdi,r8
2d5f90  48 8b da                       mov    rbx,rdx
2d5f93  48 8b e9                       mov    rbp,rcx
2d5f96  e8 bd e7 ff ff                 call   0x2d4758
2d5f9b  48 8b cb                       mov    rcx,rbx
2d5f9e  e8 39 86 ff ff                 call   0x2ce5dc
2d5fa3  48 8b cf                       mov    rcx,rdi
2d5fa6  48 8b d8                       mov    rbx,rax
2d5fa9  e8 2e 86 ff ff                 call   0x2ce5dc
2d5fae  48 8b d0                       mov    rdx,rax
2d5fb1  48 8b cb                       mov    rcx,rbx
2d5fb4  e8 d7 fe ff ff                 call   0x2d5e90
2d5fb9  48 8b f0                       mov    rsi,rax
2d5fbc  48 85 c0                       test   rax,rax
2d5fbf  0f 84 94 00 00 00              je     0x2d6059
2d5fc5  8b 78 18                       mov    edi,DWORD PTR [rax+0x18]
2d5fc8  33 db                          xor    ebx,ebx
2d5fca  85 ff                          test   edi,edi
2d5fcc  0f 84 87 00 00 00              je     0x2d6059
2d5fd2  8b d3                          mov    edx,ebx
2d5fd4  48 8b ce                       mov    rcx,rsi
2d5fd7  e8 d4 f6 ff ff                 call   0x2d56b0
2d5fdc  48 8b 08                       mov    rcx,QWORD PTR [rax]
2d5fdf  48 85 c9                       test   rcx,rcx
2d5fe2  74 6b                          je     0x2d604f
2d5fe4  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
2d5fe9  e8 2a 1e 00 00                 call   0x2d7e18
2d5fee  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d5ff3  48 8d 8c 24 b8 00 00 00        lea    rcx,[rsp+0xb8]
2d5ffb  e8 c0 f1 ff ff                 call   0x2d51c0 ; STRING getter=0x2d51c0 /\
2d6000  48 8b c8                       mov    rcx,rax
2d6003  e8 84 24 00 00                 call   0x2d848c
2d6008  48 8b d0                       mov    rdx,rax
2d600b  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
2d6010  49 83 c8 ff                    or     r8,0xffffffffffffffff
2d6014  e8 53 29 00 00                 call   0x2d896c
2d6019  49 83 c9 ff                    or     r9,0xffffffffffffffff
2d601d  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
2d6022  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
2d6027  4c 8d 40 01                    lea    r8,[rax+0x1]
2d602b  e8 68 34 00 00                 call   0x2d9498
2d6030  48 8b d0                       mov    rdx,rax
2d6033  48 8b cd                       mov    rcx,rbp
2d6036  e8 bd 2f 00 00                 call   0x2d8ff8
2d603b  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
2d6040  e8 af 64 ff ff                 call   0x2cc4f4
2d6045  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
2d604a  e8 a5 64 ff ff                 call   0x2cc4f4
2d604f  ff c3                          inc    ebx
2d6051  3b df                          cmp    ebx,edi
2d6053  0f 82 79 ff ff ff              jb     0x2d5fd2
2d6059  48 8b c5                       mov    rax,rbp
2d605c  48 83 c4 78                    add    rsp,0x78
2d6060  5f                             pop    rdi
2d6061  5e                             pop    rsi
2d6062  5d                             pop    rbp
2d6063  5b                             pop    rbx
2d6064  c3                             ret

