; pdata function 0x34f35c..0x350033 unwind=0x3d3d3c
34f35c  48 8b c4                       mov    rax,rsp
34f35f  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
34f363  55                             push   rbp
34f364  56                             push   rsi
34f365  57                             push   rdi
34f366  41 54                          push   r12
34f368  41 55                          push   r13
34f36a  41 56                          push   r14
34f36c  41 57                          push   r15
34f36e  48 8d a8 88 fe ff ff           lea    rbp,[rax-0x178]
34f375  48 81 ec 40 02 00 00           sub    rsp,0x240
34f37c  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
34f380  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
34f384  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
34f389  44 0f 29 58 88                 movaps XMMWORD PTR [rax-0x78],xmm11
34f38e  e8 fd f8 03 00                 call   0x38ec90
34f393  f3 44 0f 10 1d b8 de f3 ff     movss  xmm11,DWORD PTR [rip+0xfffffffffff3deb8]        # 0x28d254 ; f32=1
34f39c  b9 04 00 00 00                 mov    ecx,0x4
34f3a1  41 0f 28 cb                    movaps xmm1,xmm11
34f3a5  e8 ee 2e 04 00                 call   0x392298
34f3aa  8b d0                          mov    edx,eax
34f3ac  b9 08 00 00 00                 mov    ecx,0x8
34f3b1  e8 36 98 04 00                 call   0x398bec
34f3b6  48 8d 15 0b df 0a 00           lea    rdx,[rip+0xadf0b]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34f3bd  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34f3c1  e8 ce 4d f8 ff                 call   0x2d4194
34f3c6  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34f3cd  e8 6a 2f 04 00                 call   0x39233c
34f3d2  f3 44 0f 10 05 49 e7 f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff3e749]        # 0x28db24 ; f32=30
34f3db  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
34f3df  f3 0f 59 35 69 de f3 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff3de69]        # 0x28d250 ; f32=0.5
34f3e7  f3 41 0f 5c f0                 subss  xmm6,xmm8
34f3ec  e8 db 31 04 00                 call   0x3925cc
34f3f1  0f 28 d0                       movaps xmm2,xmm0
34f3f4  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34f3fb  0f 28 ce                       movaps xmm1,xmm6
34f3fe  e8 3d cf f7 ff                 call   0x2cc340
34f403  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34f407  e8 cc 96 f8 ff                 call   0x2d8ad8
34f40c  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34f410  48 8b f8                       mov    rdi,rax
34f413  e8 d4 e3 f7 ff                 call   0x2cd7ec
34f418  8b 0d ca dc 0a 00              mov    ecx,DWORD PTR [rip+0xadcca]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34f41e  41 bc 02 00 00 00              mov    r12d,0x2
34f424  48 8b f0                       mov    rsi,rax
34f427  45 8d 7c 24 ff                 lea    r15d,[r12-0x1]
34f42c  41 3b cf                       cmp    ecx,r15d
34f42f  75 0e                          jne    0x34f43f
34f431  48 8d 0d 48 88 f5 ff           lea    rcx,[rip+0xfffffffffff58848]        # 0x2a7c80
34f438  e8 c7 5b 01 00                 call   0x365004
34f43d  eb 27                          jmp    0x34f466
34f43f  41 3b cc                       cmp    ecx,r12d
34f442  75 09                          jne    0x34f44d
34f444  48 8d 0d 45 88 f5 ff           lea    rcx,[rip+0xfffffffffff58845]        # 0x2a7c90
34f44b  eb eb                          jmp    0x34f438
34f44d  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34f452  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f459  e8 c6 44 00 00                 call   0x353924 ; STRING getter=0x353924 Search..
34f45e  48 8b c8                       mov    rcx,rax
34f461  e8 26 a7 f9 ff                 call   0x2e9b8c
34f466  48 8d 55 b0                    lea    rdx,[rbp-0x50]
34f46a  48 8b d8                       mov    rbx,rax
34f46d  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f474  e8 e3 2d 00 00                 call   0x35225c ; STRING getter=0x35225c ##search
34f479  48 8b c8                       mov    rcx,rax
34f47c  e8 0b a7 f9 ff                 call   0x2e9b8c
34f481  48 c7 44 24 38 00 00 00 00     mov    QWORD PTR [rsp+0x38],0x0
34f48a  48 8b c8                       mov    rcx,rax
34f48d  48 8d 85 90 01 00 00           lea    rax,[rbp+0x190]
34f494  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
34f49d  c7 44 24 28 00 50 00 00        mov    DWORD PTR [rsp+0x28],0x5000
34f4a5  44 8b cf                       mov    r9d,edi
34f4a8  4c 8b c6                       mov    r8,rsi
34f4ab  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
34f4b0  48 8b d3                       mov    rdx,rbx
34f4b3  e8 80 10 07 00                 call   0x3c0538
34f4b8  e8 cf 4b 04 00                 call   0x39408c
34f4bd  41 8b cf                       mov    ecx,r15d
34f4c0  88 05 2f e0 0a 00              mov    BYTE PTR [rip+0xae02f],al        # 0x3fd4f5
34f4c6  e8 41 94 04 00                 call   0x39890c
34f4cb  8b 05 f7 e4 0a 00              mov    eax,DWORD PTR [rip+0xae4f7]        # 0x3fd9c8
34f4d1  41 84 c7                       test   r15b,al
34f4d4  75 15                          jne    0x34f4eb
34f4d6  41 0b c7                       or     eax,r15d
34f4d9  48 8d 0d dc 16 08 00           lea    rcx,[rip+0x816dc]        # 0x3d0bbc
34f4e0  89 05 e2 e4 0a 00              mov    DWORD PTR [rip+0xae4e2],eax        # 0x3fd9c8
34f4e6  e8 41 de f7 ff                 call   0x2cd32c
34f4eb  f3 0f 10 0d c9 3c f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff43cc9]        # 0x2931bc ; f32=16
34f4f3  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f4fa  0f 28 d1                       movaps xmm2,xmm1
34f4fd  e8 3e ce f7 ff                 call   0x2cc340
34f502  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34f509  41 8b cc                       mov    ecx,r12d
34f50c  e8 4f 97 04 00                 call   0x398c60
34f511  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34f516  e8 21 2e 04 00                 call   0x39233c
34f51b  f3 0f 10 15 3d 3d f4 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff43d3d]        # 0x293260 ; f32=-1
34f523  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34f52a  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
34f52e  f3 0f 59 0d 1a dd f3 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff3dd1a]        # 0x28d250 ; f32=0.5
34f536  f3 41 0f 5c c8                 subss  xmm1,xmm8
34f53b  e8 00 ce f7 ff                 call   0x2cc340
34f540  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34f547  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f54e  e8 01 58 00 00                 call   0x354d54 ; STRING getter=0x354d54 list
34f553  48 8b c8                       mov    rcx,rax
34f556  e8 71 e7 f7 ff                 call   0x2cdccc
34f55b  48 8b c8                       mov    rcx,rax
34f55e  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
34f565  41 b9 00 00 01 00              mov    r9d,0x10000
34f56b  45 33 c0                       xor    r8d,r8d
34f56e  e8 09 f4 03 00                 call   0x38e97c
34f573  4c 8d 2d 4e cb 0a 00           lea    r13,[rip+0xacb4e]        # 0x3fc0c8
34f57a  49 8b cd                       mov    rcx,r13
34f57d  e8 16 da f8 ff                 call   0x2dcf98
34f582  48 8d 0d c7 92 ec ff           lea    rcx,[rip+0xffffffffffec92c7]        # 0x218850
34f589  e8 32 84 f8 ff                 call   0x2d79c0
34f58e  48 8d 0d bb 92 ec ff           lea    rcx,[rip+0xffffffffffec92bb]        # 0x218850
34f595  4c 8b f0                       mov    r14,rax
34f598  e8 db 23 f8 ff                 call   0x2d1978
34f59d  48 8b f0                       mov    rsi,rax
34f5a0  49 3b c6                       cmp    rax,r14
34f5a3  0f 84 ba 01 00 00              je     0x34f763
34f5a9  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
34f5b0  48 8d 4e 48                    lea    rcx,[rsi+0x48]
34f5b4  e8 8f 54 01 00                 call   0x364a48
34f5b9  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
34f5be  48 8d 4e 48                    lea    rcx,[rsi+0x48]
34f5c2  48 8b 18                       mov    rbx,QWORD PTR [rax]
34f5c5  e8 8e 39 01 00                 call   0x362f58
34f5ca  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f5d1  48 8b f8                       mov    rdi,rax
34f5d4  e8 cb bd f7 ff                 call   0x2cb3a4
34f5d9  48 8b 17                       mov    rdx,QWORD PTR [rdi]
34f5dc  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34f5e1  4c 8b c8                       mov    r9,rax
34f5e4  4c 8b c3                       mov    r8,rbx
34f5e7  e8 34 5f fe ff                 call   0x335520
34f5ec  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
34f5f1  48 8d 0d 68 7c 08 00           lea    rcx,[rip+0x87c68]        # 0x3d7260
34f5f8  e8 97 01 fa ff                 call   0x2ef794
34f5fd  44 39 60 24                    cmp    DWORD PTR [rax+0x24],r12d
34f601  0f 85 42 01 00 00              jne    0x34f749
34f607  48 8d 3d ba dc 0a 00           lea    rdi,[rip+0xadcba]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34f60e  48 8b cf                       mov    rcx,rdi
34f611  e8 da 6a fe ff                 call   0x3360f0
34f616  84 c0                          test   al,al
34f618  0f 85 1f 01 00 00              jne    0x34f73d
34f61e  48 8d 56 28                    lea    rdx,[rsi+0x28]
34f622  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34f626  e8 69 4b f8 ff                 call   0x2d4194
34f62b  8b 96 90 00 00 00              mov    edx,DWORD PTR [rsi+0x90]
34f631  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34f635  e8 d6 9e f8 ff                 call   0x2d9510
34f63a  48 8d 55 28                    lea    rdx,[rbp+0x28]
34f63e  48 8b cf                       mov    rcx,rdi
34f641  e8 8e 90 f8 ff                 call   0x2d86d4
34f646  48 8d 55 30                    lea    rdx,[rbp+0x30]
34f64a  48 8b cf                       mov    rcx,rdi
34f64d  48 8b 18                       mov    rbx,QWORD PTR [rax]
34f650  e8 9b 86 f8 ff                 call   0x2d7cf0
34f655  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34f65c  48 8b f8                       mov    rdi,rax
34f65f  e8 40 bd f7 ff                 call   0x2cb3a4
34f664  48 8b 17                       mov    rdx,QWORD PTR [rdi]
34f667  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34f66b  4c 8b c8                       mov    r9,rax
34f66e  4c 8b c3                       mov    r8,rbx
34f671  e8 aa 5e fe ff                 call   0x335520
34f676  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34f67a  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34f67e  e8 6d 86 f8 ff                 call   0x2d7cf0
34f683  48 8d 55 10                    lea    rdx,[rbp+0x10]
34f687  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34f68b  48 8b 38                       mov    rdi,QWORD PTR [rax]
34f68e  e8 41 90 f8 ff                 call   0x2d86d4
34f693  48 8d 55 b0                    lea    rdx,[rbp-0x50]
34f697  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34f69b  48 8b 18                       mov    rbx,QWORD PTR [rax]
34f69e  e8 4d 86 f8 ff                 call   0x2d7cf0
34f6a3  48 8d 0d 66 6e f8 ff           lea    rcx,[rip+0xfffffffffff86e66]        # 0x2d6510
34f6aa  4c 8b cf                       mov    r9,rdi
34f6ad  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
34f6b2  4c 8b c3                       mov    r8,rbx
34f6b5  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
34f6ba  48 8b 10                       mov    rdx,QWORD PTR [rax]
34f6bd  e8 0e 6c fe ff                 call   0x3362d0
34f6c2  45 33 c0                       xor    r8d,r8d
34f6c5  48 8d 55 80                    lea    rdx,[rbp-0x80]
34f6c9  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34f6cd  e8 0e 92 f8 ff                 call   0x2d88e0
34f6d2  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
34f6d6  75 4a                          jne    0x34f722
34f6d8  45 33 c0                       xor    r8d,r8d
34f6db  48 8d 55 80                    lea    rdx,[rbp-0x80]
34f6df  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34f6e4  e8 f7 91 f8 ff                 call   0x2d88e0
34f6e9  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
34f6ed  75 33                          jne    0x34f722
34f6ef  45 33 c0                       xor    r8d,r8d
34f6f2  48 8d 55 80                    lea    rdx,[rbp-0x80]
34f6f6  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34f6fa  e8 e1 91 f8 ff                 call   0x2d88e0
34f6ff  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
34f703  75 1d                          jne    0x34f722
34f705  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34f709  e8 e6 cd f7 ff                 call   0x2cc4f4
34f70e  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34f712  e8 dd cd f7 ff                 call   0x2cc4f4
34f717  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34f71b  e8 d4 cd f7 ff                 call   0x2cc4f4
34f720  eb 27                          jmp    0x34f749
34f722  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34f726  e8 c9 cd f7 ff                 call   0x2cc4f4
34f72b  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34f72f  e8 c0 cd f7 ff                 call   0x2cc4f4
34f734  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34f738  e8 b7 cd f7 ff                 call   0x2cc4f4
34f73d  48 8d 56 28                    lea    rdx,[rsi+0x28]
34f741  49 8b cd                       mov    rcx,r13
34f744  e8 d3 98 f8 ff                 call   0x2d901c
34f749  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34f74e  e8 a1 cd f7 ff                 call   0x2cc4f4
34f753  48 81 c6 98 00 00 00           add    rsi,0x98
34f75a  49 3b f6                       cmp    rsi,r14
34f75d  0f 85 46 fe ff ff              jne    0x34f5a9
34f763  49 8b cd                       mov    rcx,r13
34f766  e8 35 8f f8 ff                 call   0x2d86a0
34f76b  84 c0                          test   al,al
34f76d  74 0c                          je     0x34f77b
34f76f  c7 05 53 e2 0a 00 ff ff ff ff  mov    DWORD PTR [rip+0xae253],0xffffffff        # 0x3fd9cc
34f779  eb 29                          jmp    0x34f7a4
34f77b  48 63 1d 4a e2 0a 00           movsxd rbx,DWORD PTR [rip+0xae24a]        # 0x3fd9cc
34f782  85 db                          test   ebx,ebx
34f784  78 0d                          js     0x34f793
34f786  49 8b cd                       mov    rcx,r13
34f789  e8 5a 9c f8 ff                 call   0x2d93e8
34f78e  48 3b d8                       cmp    rbx,rax
34f791  72 11                          jb     0x34f7a4
34f793  49 8b cd                       mov    rcx,r13
34f796  e8 4d 9c f8 ff                 call   0x2d93e8
34f79b  41 2b c7                       sub    eax,r15d
34f79e  89 05 28 e2 0a 00              mov    DWORD PTR [rip+0xae228],eax        # 0x3fd9cc
34f7a4  49 8b cd                       mov    rcx,r13
34f7a7  e8 f4 8e f8 ff                 call   0x2d86a0
34f7ac  0f 57 ff                       xorps  xmm7,xmm7
34f7af  84 c0                          test   al,al
34f7b1  75 7c                          jne    0x34f82f
34f7b3  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f7ba  e8 7d 2b 04 00                 call   0x39233c
34f7bf  0f 57 d2                       xorps  xmm2,xmm2
34f7c2  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f7c9  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
34f7cd  e8 6e cb f7 ff                 call   0x2cc340
34f7d2  49 8b d5                       mov    rdx,r13
34f7d5  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
34f7da  e8 dd ba f8 ff                 call   0x2db2bc
34f7df  49 8b d5                       mov    rdx,r13
34f7e2  48 8d 4d b0                    lea    rcx,[rbp-0x50]
34f7e6  48 8b f8                       mov    rdi,rax
34f7e9  e8 ce ba f8 ff                 call   0x2db2bc
34f7ee  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34f7f5  48 8b d8                       mov    rbx,rax
34f7f8  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f7ff  e8 bc 6d 00 00                 call   0x3565c0 ; STRING getter=0x3565c0 Player
34f804  48 8b c8                       mov    rcx,rax
34f807  e8 e8 e4 f7 ff                 call   0x2cdcf4
34f80c  48 8b 95 88 01 00 00           mov    rdx,QWORD PTR [rbp+0x188]
34f813  4c 8d 05 b2 e1 0a 00           lea    r8,[rip+0xae1b2]        # 0x3fd9cc
34f81a  48 8b c8                       mov    rcx,rax
34f81d  44 88 7c 24 28                 mov    BYTE PTR [rsp+0x28],r15b
34f822  4c 8b cb                       mov    r9,rbx
34f825  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
34f82a  e8 1d 82 03 00                 call   0x387a4c
34f82f  e8 54 12 04 00                 call   0x390a88
34f834  41 8b cf                       mov    ecx,r15d
34f837  e8 30 91 04 00                 call   0x39896c
34f83c  e8 bb 16 04 00                 call   0x390efc
34f841  f3 0f 10 0d 17 3a f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff43a17]        # 0x293260 ; f32=-1
34f849  0f 57 c0                       xorps  xmm0,xmm0
34f84c  e8 b3 b3 04 00                 call   0x39ac04
34f851  f3 0f 10 15 07 3a f4 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff43a07]        # 0x293260 ; f32=-1
34f859  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34f860  0f 57 c9                       xorps  xmm1,xmm1
34f863  e8 d8 ca f7 ff                 call   0x2cc340
34f868  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34f86d  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f874  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
34f878  e8 37 87 00 00                 call   0x357fb4 ; STRING getter=0x357fb4 Enemy Options
34f87d  48 8b c8                       mov    rcx,rax
34f880  e8 03 d9 f8 ff                 call   0x2dd188
34f885  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34f88c  48 8b d8                       mov    rbx,rax
34f88f  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f896  e8 a1 0e 00 00                 call   0x35073c ; STRING getter=0x35073c H
34f89b  48 8b c8                       mov    rcx,rax
34f89e  e8 c1 8b f8 ff                 call   0x2d8464
34f8a3  48 8b d0                       mov    rdx,rax
34f8a6  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34f8aa  e8 1d ca f7 ff                 call   0x2cc2cc
34f8af  48 8b c8                       mov    rcx,rax
34f8b2  45 8a cf                       mov    r9b,r15b
34f8b5  66 49 0f 7e f0                 movq   r8,xmm6
34f8ba  48 8b d3                       mov    rdx,rbx
34f8bd  e8 2e 55 03 00                 call   0x384df0
34f8c2  48 63 1d 03 e1 0a 00           movsxd rbx,DWORD PTR [rip+0xae103]        # 0x3fd9cc
34f8c9  85 db                          test   ebx,ebx
34f8cb  0f 88 25 07 00 00              js     0x34fff6
34f8d1  49 8b cd                       mov    rcx,r13
34f8d4  e8 0f 9b f8 ff                 call   0x2d93e8
34f8d9  48 3b d8                       cmp    rbx,rax
34f8dc  0f 83 14 07 00 00              jae    0x34fff6
34f8e2  48 8d 3d 67 8f ec ff           lea    rdi,[rip+0xffffffffffec8f67]        # 0x218850
34f8e9  48 8b cf                       mov    rcx,rdi
34f8ec  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34f8f3  e8 b8 8e f8 ff                 call   0x2d87b0
34f8f8  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34f8ff  48 8b cf                       mov    rcx,rdi
34f902  48 8b 18                       mov    rbx,QWORD PTR [rax]
34f905  e8 86 84 f8 ff                 call   0x2d7d90
34f90a  44 8a 8d 88 01 00 00           mov    r9b,BYTE PTR [rbp+0x188]
34f911  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34f918  4c 8b c3                       mov    r8,rbx
34f91b  48 8b 10                       mov    rdx,QWORD PTR [rax]
34f91e  e8 31 69 fe ff                 call   0x336254
34f923  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34f928  48 8b cf                       mov    rcx,rdi
34f92b  48 8b d8                       mov    rbx,rax
34f92e  e8 5d 84 f8 ff                 call   0x2d7d90
34f933  48 8b d0                       mov    rdx,rax
34f936  48 8b cb                       mov    rcx,rbx
34f939  e8 82 6e fe ff                 call   0x3367c0
34f93e  48 8b cf                       mov    rcx,rdi
34f941  48 63 d8                       movsxd rbx,eax
34f944  e8 97 56 01 00                 call   0x364fe0
34f949  48 3b d8                       cmp    rbx,rax
34f94c  0f 83 a4 06 00 00              jae    0x34fff6
34f952  48 8b d3                       mov    rdx,rbx
34f955  48 8b cf                       mov    rcx,rdi
34f958  e8 47 6e fe ff                 call   0x3367a4
34f95d  33 c9                          xor    ecx,ecx
34f95f  4c 8b f0                       mov    r14,rax
34f962  e8 a1 b5 f7 ff                 call   0x2caf08
34f967  84 c0                          test   al,al
34f969  0f 84 ed 00 00 00              je     0x34fa5c
34f96f  f3 0f 10 0d cd e1 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff3e1cd]        # 0x28db44 ; f32=100
34f977  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f97e  0f 28 d1                       movaps xmm2,xmm1
34f981  e8 ba c9 f7 ff                 call   0x2cc340
34f986  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34f98d  e8 aa 29 04 00                 call   0x39233c
34f992  f3 0f 10 8d 90 01 00 00        movss  xmm1,DWORD PTR [rbp+0x190]
34f99a  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34f9a1  f3 0f 5c 8d 88 01 00 00        subss  xmm1,DWORD PTR [rbp+0x188]
34f9a9  0f 57 d2                       xorps  xmm2,xmm2
34f9ac  f3 0f 58 0d 28 38 f4 ff        addss  xmm1,DWORD PTR [rip+0xfffffffffff43828]        # 0x2931dc ; f32=28
34f9b4  e8 87 c9 f7 ff                 call   0x2cc340
34f9b9  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34f9be  e8 15 2a 04 00                 call   0x3923d8
34f9c3  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34f9ca  e8 e9 b9 04 00                 call   0x39b3b8
34f9cf  0f 57 db                       xorps  xmm3,xmm3
34f9d2  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
34f9d8  0f 57 d2                       xorps  xmm2,xmm2
34f9db  48 8d 4d 10                    lea    rcx,[rbp+0x10]
34f9df  0f 57 c9                       xorps  xmm1,xmm1
34f9e2  e8 69 c9 f7 ff                 call   0x2cc350
34f9e7  41 0f 28 db                    movaps xmm3,xmm11
34f9eb  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
34f9f2  41 0f 28 d3                    movaps xmm2,xmm11
34f9f6  48 8d 4d a0                    lea    rcx,[rbp-0x60]
34f9fa  41 0f 28 cb                    movaps xmm1,xmm11
34f9fe  48 8b f0                       mov    rsi,rax
34fa01  e8 4a c9 f7 ff                 call   0x2cc350
34fa06  41 0f 28 d3                    movaps xmm2,xmm11
34fa0a  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
34fa0f  41 0f 28 cb                    movaps xmm1,xmm11
34fa13  48 8b f8                       mov    rdi,rax
34fa16  e8 25 c9 f7 ff                 call   0x2cc340
34fa1b  0f 57 d2                       xorps  xmm2,xmm2
34fa1e  48 8d 4d b0                    lea    rcx,[rbp-0x50]
34fa22  0f 57 c9                       xorps  xmm1,xmm1
34fa25  48 8b d8                       mov    rbx,rax
34fa28  e8 13 c9 f7 ff                 call   0x2cc340
34fa2d  4c 8b c0                       mov    r8,rax
34fa30  48 89 74 24 28                 mov    QWORD PTR [rsp+0x28],rsi
34fa35  4c 8b cb                       mov    r9,rbx
34fa38  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
34fa3d  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34fa44  33 c9                          xor    ecx,ecx
34fa46  e8 61 07 07 00                 call   0x3c01ac
34fa4b  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34fa50  e8 63 b9 04 00                 call   0x39b3b8
34fa55  48 8d 3d f4 8d ec ff           lea    rdi,[rip+0xffffffffffec8df4]        # 0x218850
34fa5c  49 8d 56 48                    lea    rdx,[r14+0x48]
34fa60  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34fa65  e8 2a 47 f8 ff                 call   0x2d4194
34fa6a  49 8d 56 28                    lea    rdx,[r14+0x28]
34fa6e  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34fa72  e8 1d 47 f8 ff                 call   0x2d4194
34fa77  41 8b 96 90 00 00 00           mov    edx,DWORD PTR [r14+0x90]
34fa7e  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34fa82  e8 89 9a f8 ff                 call   0x2d9510
34fa87  49 8d 56 68                    lea    rdx,[r14+0x68]
34fa8b  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
34fa92  e8 fd 46 f8 ff                 call   0x2d4194
34fa97  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34fa9c  e8 f3 8b f8 ff                 call   0x2d8694
34faa1  84 c0                          test   al,al
34faa3  0f 85 25 05 00 00              jne    0x34ffce
34faa9  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34faad  e8 e2 8b f8 ff                 call   0x2d8694
34fab2  84 c0                          test   al,al
34fab4  0f 85 14 05 00 00              jne    0x34ffce
34faba  e8 75 34 04 00                 call   0x392f34
34fabf  f3 0f 59 05 89 d7 f3 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff3d789]        # 0x28d250 ; f32=0.5
34fac7  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34face  41 0f 28 d0                    movaps xmm2,xmm8
34fad2  f3 41 0f 5c c0                 subss  xmm0,xmm8
34fad7  0f 28 c8                       movaps xmm1,xmm0
34fada  e8 61 c8 f7 ff                 call   0x2cc340
34fadf  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34fae4  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34faeb  e8 ac 91 00 00                 call   0x358c9c ; STRING getter=0x358c9c Refresh Player List
34faf0  48 8b c8                       mov    rcx,rax
34faf3  e8 9c 09 fd ff                 call   0x320494
34faf8  48 8b c8                       mov    rcx,rax
34fafb  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34fb02  e8 d1 cc 06 00                 call   0x3bc7d8
34fb07  84 c0                          test   al,al
34fb09  74 12                          je     0x34fb1d
34fb0b  48 8b cf                       mov    rcx,rdi
34fb0e  c7 05 b4 de 0a 00 ff ff ff ff  mov    DWORD PTR [rip+0xadeb4],0xffffffff        # 0x3fd9cc
34fb18  e8 4f 35 01 00                 call   0x36306c
34fb1d  f3 0f 10 0d 3b 37 f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff4373b]        # 0x293260 ; f32=-1
34fb25  0f 57 c0                       xorps  xmm0,xmm0
34fb28  e8 d7 b0 04 00                 call   0x39ac04
34fb2d  e8 02 34 04 00                 call   0x392f34
34fb32  f3 0f 59 05 16 d7 f3 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff3d716]        # 0x28d250 ; f32=0.5
34fb3a  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34fb41  41 0f 28 d0                    movaps xmm2,xmm8
34fb45  f3 41 0f 5c c0                 subss  xmm0,xmm8
34fb4a  0f 28 c8                       movaps xmm1,xmm0
34fb4d  e8 ee c7 f7 ff                 call   0x2cc340
34fb52  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34fb57  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34fb5e  e8 61 ab 00 00                 call   0x35a6c4 ; STRING getter=0x35a6c4 Copy Steam Link
34fb63  48 8b c8                       mov    rcx,rax
34fb66  e8 f5 d5 f8 ff                 call   0x2dd160
34fb6b  48 8b c8                       mov    rcx,rax
34fb6e  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34fb75  e8 5e cc 06 00                 call   0x3bc7d8
34fb7a  84 c0                          test   al,al
34fb7c  0f 84 3f 01 00 00              je     0x34fcc1
34fb82  48 8d 55 e8                    lea    rdx,[rbp-0x18]
34fb86  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34fb8d  e8 4e 59 ff ff                 call   0x3454e0 ; STRING getter=0x3454e0 https://steamcommunity.com/profiles/
34fb92  48 8b c8                       mov    rcx,rax
34fb95  e8 62 41 01 00                 call   0x363cfc
34fb9a  48 8b d0                       mov    rdx,rax
34fb9d  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
34fba2  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34fba6  e8 69 ab f9 ff                 call   0x2ea714
34fbab  8b 05 17 de 0a 00              mov    eax,DWORD PTR [rip+0xade17]        # 0x3fd9c8
34fbb1  41 84 c4                       test   r12b,al
34fbb4  0f 85 ad 00 00 00              jne    0x34fc67
34fbba  41 0b c4                       or     eax,r12d
34fbbd  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34fbc4  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34fbcb  89 05 f7 dd 0a 00              mov    DWORD PTR [rip+0xaddf7],eax        # 0x3fd9c8
34fbd1  e8 5a cb f7 ff                 call   0x2cc730
34fbd6  48 8b c8                       mov    rcx,rax
34fbd9  e8 c6 e0 f7 ff                 call   0x2cdca4
34fbde  48 8d 55 10                    lea    rdx,[rbp+0x10]
34fbe2  48 8b f0                       mov    rsi,rax
34fbe5  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34fbec  e8 2f 17 00 00                 call   0x351320 ; STRING getter=0x351320 set_systemCopyBuffer
34fbf1  48 8b c8                       mov    rcx,rax
34fbf4  e8 c3 08 fd ff                 call   0x3204bc
34fbf9  48 8d 55 b0                    lea    rdx,[rbp-0x50]
34fbfd  48 8b f8                       mov    rdi,rax
34fc00  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34fc07  e8 60 12 00 00                 call   0x350e6c ; STRING getter=0x350e6c UnityEngine
34fc0c  48 8b c8                       mov    rcx,rax
34fc0f  e8 20 e2 f7 ff                 call   0x2cde34
34fc14  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34fc19  48 8b d8                       mov    rbx,rax
34fc1c  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34fc23  e8 ac 0a 00 00                 call   0x3506d4 ; STRING getter=0x3506d4 GUIUtility
34fc28  48 8b c8                       mov    rcx,rax
34fc2b  e8 24 a0 f9 ff                 call   0x2e9c54
34fc30  48 8b c8                       mov    rcx,rax
34fc33  48 8b d3                       mov    rdx,rbx
34fc36  e8 e9 45 fe ff                 call   0x334224
34fc3b  48 8b c8                       mov    rcx,rax
34fc3e  c7 44 24 20 ff ff ff ff        mov    DWORD PTR [rsp+0x20],0xffffffff
34fc46  4c 8b ce                       mov    r9,rsi
34fc49  41 83 c8 ff                    or     r8d,0xffffffff
34fc4d  48 8b d7                       mov    rdx,rdi
34fc50  e8 57 4d fe ff                 call   0x3349ac
34fc55  4c 8b 00                       mov    r8,QWORD PTR [rax]
34fc58  8b 05 6a dd 0a 00              mov    eax,DWORD PTR [rip+0xadd6a]        # 0x3fd9c8
34fc5e  4c 89 05 6b dd 0a 00           mov    QWORD PTR [rip+0xadd6b],r8        # 0x3fd9d0
34fc65  eb 07                          jmp    0x34fc6e
34fc67  4c 8b 05 62 dd 0a 00           mov    r8,QWORD PTR [rip+0xadd62]        # 0x3fd9d0
34fc6e  a8 04                          test   al,0x4
34fc70  75 1f                          jne    0x34fc91
34fc72  48 8b 0d e7 61 08 00           mov    rcx,QWORD PTR [rip+0x861e7]        # 0x3d5e60
34fc79  48 8d 15 60 dd 0a 00           lea    rdx,[rip+0xadd60]        # 0x3fd9e0
34fc80  83 c8 04                       or     eax,0x4
34fc83  45 33 c9                       xor    r9d,r9d
34fc86  89 05 3c dd 0a 00              mov    DWORD PTR [rip+0xadd3c],eax        # 0x3fd9c8
34fc8c  e8 93 c0 f7 ff                 call   0x2cbd24
34fc91  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34fc95  e8 52 db f7 ff                 call   0x2cd7ec
34fc9a  48 8b c8                       mov    rcx,rax
34fc9d  e8 3a e9 f7 ff                 call   0x2ce5dc
34fca2  48 8b 0d b7 61 08 00           mov    rcx,QWORD PTR [rip+0x861b7]        # 0x3d5e60
34fca9  48 8d 15 30 dd 0a 00           lea    rdx,[rip+0xadd30]        # 0x3fd9e0
34fcb0  4c 8b c0                       mov    r8,rax
34fcb3  e8 44 bd f7 ff                 call   0x2cb9fc
34fcb8  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34fcbc  e8 33 c8 f7 ff                 call   0x2cc4f4
34fcc1  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34fcc8  e8 d7 b6 f7 ff                 call   0x2cb3a4
34fccd  8b 0d 15 d4 0a 00              mov    ecx,DWORD PTR [rip+0xad415]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fcd3  48 8b d8                       mov    rbx,rax
34fcd6  41 3b cf                       cmp    ecx,r15d
34fcd9  75 09                          jne    0x34fce4
34fcdb  48 8d 0d be 7f f5 ff           lea    rcx,[rip+0xfffffffffff57fbe]        # 0x2a7ca0
34fce2  eb 0c                          jmp    0x34fcf0
34fce4  41 3b cc                       cmp    ecx,r12d
34fce7  75 0e                          jne    0x34fcf7
34fce9  48 8d 0d c8 7f f5 ff           lea    rcx,[rip+0xfffffffffff57fc8]        # 0x2a7cb8
34fcf0  e8 0f 53 01 00                 call   0x365004
34fcf5  eb 19                          jmp    0x34fd10
34fcf7  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34fcfc  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34fd03  e8 c4 1a 00 00                 call   0x3517cc
34fd08  48 8b c8                       mov    rcx,rax
34fd0b  e8 04 39 f9 ff                 call   0x2e3614
34fd10  48 8b d0                       mov    rdx,rax
34fd13  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
34fd1a  e8 ad c5 f7 ff                 call   0x2cc2cc
34fd1f  8b 05 c3 d3 0a 00              mov    eax,DWORD PTR [rip+0xad3c3]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fd25  41 3b c7                       cmp    eax,r15d
34fd28  75 09                          jne    0x34fd33
34fd2a  48 8d 0d 8f 7f f5 ff           lea    rcx,[rip+0xfffffffffff57f8f]        # 0x2a7cc0
34fd31  eb 0c                          jmp    0x34fd3f
34fd33  41 3b c4                       cmp    eax,r12d
34fd36  75 0e                          jne    0x34fd46
34fd38  48 8d 0d 99 7f f5 ff           lea    rcx,[rip+0xfffffffffff57f99]        # 0x2a7cd8
34fd3f  e8 c0 52 01 00                 call   0x365004
34fd44  eb 18                          jmp    0x34fd5e
34fd46  48 8d 55 b0                    lea    rdx,[rbp-0x50]
34fd4a  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34fd51  e8 56 1d 00 00                 call   0x351aac ; STRING getter=0x351aac Friendly
34fd56  48 8b c8                       mov    rcx,rax
34fd59  e8 2e 9e f9 ff                 call   0x2e9b8c
34fd5e  48 8b d0                       mov    rdx,rax
34fd61  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
34fd68  e8 5f c5 f7 ff                 call   0x2cc2cc
34fd6d  8b 05 75 d3 0a 00              mov    eax,DWORD PTR [rip+0xad375]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fd73  41 3b c7                       cmp    eax,r15d
34fd76  75 09                          jne    0x34fd81
34fd78  48 8d 0d d1 8a f4 ff           lea    rcx,[rip+0xfffffffffff48ad1]        # 0x298850
34fd7f  eb 0c                          jmp    0x34fd8d
34fd81  41 3b c4                       cmp    eax,r12d
34fd84  75 0e                          jne    0x34fd94
34fd86  48 8d 0d cf 8a f4 ff           lea    rcx,[rip+0xfffffffffff48acf]        # 0x29885c
34fd8d  e8 72 52 01 00                 call   0x365004
34fd92  eb 1b                          jmp    0x34fdaf
34fd94  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
34fd9b  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34fda2  e8 11 1f 00 00                 call   0x351cb8 ; STRING getter=0x351cb8 Enemy
34fda7  48 8b c8                       mov    rcx,rax
34fdaa  e8 2d 87 f8 ff                 call   0x2d84dc
34fdaf  48 8b d0                       mov    rdx,rax
34fdb2  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
34fdb9  e8 0e c5 f7 ff                 call   0x2cc2cc
34fdbe  4c 8d 85 00 01 00 00           lea    r8,[rbp+0x100]
34fdc5  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
34fdcc  48 8d 4d 30                    lea    rcx,[rbp+0x30]
34fdd0  e8 97 c6 f7 ff                 call   0x2cc46c
34fdd5  4c 8b c3                       mov    r8,rbx
34fdd8  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34fddc  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34fde0  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
34fde3  f3 0f 7f 45 a0                 movdqu XMMWORD PTR [rbp-0x60],xmm0
34fde8  e8 4b 66 fe ff                 call   0x336438
34fded  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
34fdf2  48 8b d8                       mov    rbx,rax
34fdf5  48 8d 0d 64 74 08 00           lea    rcx,[rip+0x87464]        # 0x3d7260
34fdfc  e8 93 f9 f9 ff                 call   0x2ef794
34fe01  8b 0d e1 d2 0a 00              mov    ecx,DWORD PTR [rip+0xad2e1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fe07  48 8d 78 24                    lea    rdi,[rax+0x24]
34fe0b  41 3b cf                       cmp    ecx,r15d
34fe0e  75 09                          jne    0x34fe19
34fe10  48 8d 0d c9 7e f5 ff           lea    rcx,[rip+0xfffffffffff57ec9]        # 0x2a7ce0
34fe17  eb 0c                          jmp    0x34fe25
34fe19  41 3b cc                       cmp    ecx,r12d
34fe1c  75 0e                          jne    0x34fe2c
34fe1e  48 8d 0d eb 7e f5 ff           lea    rcx,[rip+0xfffffffffff57eeb]        # 0x2a7d10
34fe25  e8 da 51 01 00                 call   0x365004
34fe2a  eb 18                          jmp    0x34fe44
34fe2c  48 8d 55 10                    lea    rdx,[rbp+0x10]
34fe30  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34fe37  e8 48 17 00 00                 call   0x351584 ; STRING getter=0x351584 Custom status
34fe3c  48 8b c8                       mov    rcx,rax
34fe3f  e8 44 d3 f8 ff                 call   0x2dd188
34fe44  4c 8b c3                       mov    r8,rbx
34fe47  48 8b d7                       mov    rdx,rdi
34fe4a  48 8b c8                       mov    rcx,rax
34fe4d  e8 b6 f1 06 00                 call   0x3bf008
34fe52  ba 20 00 00 00                 mov    edx,0x20
34fe57  4c 8d 0d 96 c6 f7 ff           lea    r9,[rip+0xfffffffffff7c696]        # 0x2cc4f4
34fe5e  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
34fe65  44 8d 42 e3                    lea    r8d,[rdx-0x1d]
34fe69  e8 5a bc f8 ff                 call   0x2dbac8
34fe6e  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34fe72  e8 75 d9 f7 ff                 call   0x2cd7ec
34fe77  8b 0d 6b d2 0a 00              mov    ecx,DWORD PTR [rip+0xad26b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fe7d  48 8b d8                       mov    rbx,rax
34fe80  41 3b cf                       cmp    ecx,r15d
34fe83  75 09                          jne    0x34fe8e
34fe85  48 8d 0d 94 7e f5 ff           lea    rcx,[rip+0xfffffffffff57e94]        # 0x2a7d20
34fe8c  eb 0c                          jmp    0x34fe9a
34fe8e  41 3b cc                       cmp    ecx,r12d
34fe91  75 0e                          jne    0x34fea1
34fe93  48 8d 0d 96 7e f5 ff           lea    rcx,[rip+0xfffffffffff57e96]        # 0x2a7d30
34fe9a  e8 65 51 01 00                 call   0x365004
34fe9f  eb 19                          jmp    0x34feba
34fea1  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34fea6  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34fead  e8 3a 20 00 00                 call   0x351eec ; STRING getter=0x351eec Name: %s
34feb2  48 8b c8                       mov    rcx,rax
34feb5  e8 d2 9c f9 ff                 call   0x2e9b8c
34feba  48 8b d3                       mov    rdx,rbx
34febd  48 8b c8                       mov    rcx,rax
34fec0  e8 cb 4f 07 00                 call   0x3c4e90
34fec5  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34feca  e8 1d d9 f7 ff                 call   0x2cd7ec
34fecf  8b 0d 13 d2 0a 00              mov    ecx,DWORD PTR [rip+0xad213]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34fed5  48 8b d8                       mov    rbx,rax
34fed8  41 3b cf                       cmp    ecx,r15d
34fedb  75 09                          jne    0x34fee6
34fedd  48 8d 0d 5c 7e f5 ff           lea    rcx,[rip+0xfffffffffff57e5c]        # 0x2a7d40
34fee4  eb 0c                          jmp    0x34fef2
34fee6  41 3b cc                       cmp    ecx,r12d
34fee9  75 0e                          jne    0x34fef9
34feeb  48 8d 0d 66 7e f5 ff           lea    rcx,[rip+0xfffffffffff57e66]        # 0x2a7d58
34fef2  e8 0d 51 01 00                 call   0x365004
34fef7  eb 19                          jmp    0x34ff12
34fef9  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34fefe  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34ff05  e8 c2 22 00 00                 call   0x3521cc ; STRING getter=0x3521cc Steam ID: %s
34ff0a  48 8b c8                       mov    rcx,rax
34ff0d  e8 e2 86 f8 ff                 call   0x2d85f4
34ff12  48 8b d3                       mov    rdx,rbx
34ff15  48 8b c8                       mov    rcx,rax
34ff18  e8 73 4f 07 00                 call   0x3c4e90
34ff1d  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34ff21  e8 c6 d8 f7 ff                 call   0x2cd7ec
34ff26  8b 0d bc d1 0a 00              mov    ecx,DWORD PTR [rip+0xad1bc]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ff2c  48 8b d8                       mov    rbx,rax
34ff2f  41 3b cf                       cmp    ecx,r15d
34ff32  75 09                          jne    0x34ff3d
34ff34  48 8d 0d 35 7e f5 ff           lea    rcx,[rip+0xfffffffffff57e35]        # 0x2a7d70
34ff3b  eb 0c                          jmp    0x34ff49
34ff3d  41 3b cc                       cmp    ecx,r12d
34ff40  75 0e                          jne    0x34ff50
34ff42  48 8d 0d 47 7e f5 ff           lea    rcx,[rip+0xfffffffffff57e47]        # 0x2a7d90
34ff49  e8 b6 50 01 00                 call   0x365004
34ff4e  eb 19                          jmp    0x34ff69
34ff50  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34ff55  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34ff5c  e8 cb 25 00 00                 call   0x35252c ; STRING getter=0x35252c Team ID: %s
34ff61  48 8b c8                       mov    rcx,rax
34ff64  e8 cb de f7 ff                 call   0x2cde34
34ff69  48 8b d3                       mov    rdx,rbx
34ff6c  48 8b c8                       mov    rcx,rax
34ff6f  e8 1c 4f 07 00                 call   0x3c4e90
34ff74  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
34ff7b  e8 6c d8 f7 ff                 call   0x2cd7ec
34ff80  8b 0d 62 d1 0a 00              mov    ecx,DWORD PTR [rip+0xad162]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ff86  48 8b d8                       mov    rbx,rax
34ff89  41 3b cf                       cmp    ecx,r15d
34ff8c  75 09                          jne    0x34ff97
34ff8e  48 8d 0d 13 7e f5 ff           lea    rcx,[rip+0xfffffffffff57e13]        # 0x2a7da8
34ff95  eb 0c                          jmp    0x34ffa3
34ff97  41 3b cc                       cmp    ecx,r12d
34ff9a  75 0e                          jne    0x34ffaa
34ff9c  48 8d 0d 45 7e f5 ff           lea    rcx,[rip+0xfffffffffff57e45]        # 0x2a7de8
34ffa3  e8 5c 50 01 00                 call   0x365004
34ffa8  eb 19                          jmp    0x34ffc3
34ffaa  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34ffaf  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34ffb6  e8 81 27 00 00                 call   0x35273c ; STRING getter=0x35273c Last Known Grid : %s
34ffbb  48 8b c8                       mov    rcx,rax
34ffbe  e8 f9 04 fd ff                 call   0x3204bc
34ffc3  48 8b d3                       mov    rdx,rbx
34ffc6  48 8b c8                       mov    rcx,rax
34ffc9  e8 c2 4e 07 00                 call   0x3c4e90
34ffce  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
34ffd5  e8 1a c5 f7 ff                 call   0x2cc4f4
34ffda  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34ffde  e8 11 c5 f7 ff                 call   0x2cc4f4
34ffe3  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34ffe7  e8 08 c5 f7 ff                 call   0x2cc4f4
34ffec  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34fff1  e8 fe c4 f7 ff                 call   0x2cc4f4
34fff6  e8 51 72 03 00                 call   0x38724c
34fffb  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34ffff  e8 f0 c4 f7 ff                 call   0x2cc4f4
350004  4c 8d 9c 24 40 02 00 00        lea    r11,[rsp+0x240]
35000c  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
350010  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
350015  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
35001a  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
35001f  45 0f 28 5b c0                 movaps xmm11,XMMWORD PTR [r11-0x40]
350024  49 8b e3                       mov    rsp,r11
350027  41 5f                          pop    r15
350029  41 5e                          pop    r14
35002b  41 5d                          pop    r13
35002d  41 5c                          pop    r12
35002f  5f                             pop    rdi
350030  5e                             pop    rsi
350031  5d                             pop    rbp
350032  c3                             ret
