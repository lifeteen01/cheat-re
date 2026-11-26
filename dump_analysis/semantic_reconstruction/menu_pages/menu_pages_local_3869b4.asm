; pdata function 0x3869b4..0x386acb unwind=0x3d4474
3869b4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3869b9  55                             push   rbp
3869ba  56                             push   rsi
3869bb  57                             push   rdi
3869bc  41 56                          push   r14
3869be  41 57                          push   r15
3869c0  48 83 ec 30                    sub    rsp,0x30
3869c4  4c 8b f2                       mov    r14,rdx
3869c7  4c 8b f9                       mov    r15,rcx
3869ca  e8 fd c4 00 00                 call   0x392ecc
3869cf  33 d2                          xor    edx,edx
3869d1  49 8b cf                       mov    rcx,r15
3869d4  48 8b e8                       mov    rbp,rax
3869d7  e8 74 b2 00 00                 call   0x391c50
3869dc  f3 0f 10 0d 70 68 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff06870]        # 0x28d254 ; f32=1
3869e4  b9 01 00 00 00                 mov    ecx,0x1
3869e9  48 8b f0                       mov    rsi,rax
3869ec  e8 a7 b8 00 00                 call   0x392298
3869f1  4c 8b 05 30 f1 07 00           mov    r8,QWORD PTR [rip+0x7f130]        # 0x405b28
3869f8  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
3869fd  f3 0f 10 15 9b c7 f0 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff0c79b]        # 0x2931a0 ; f32=9
386a05  0f 57 c9                       xorps  xmm1,xmm1
386a08  8b f8                          mov    edi,eax
386a0a  f3 41 0f 10 80 30 3c 00 00     movss  xmm0,DWORD PTR [r8+0x3c30]
386a13  f3 0f 59 05 35 68 f0 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff06835]        # 0x28d250 ; f32=0.5
386a1b  f3 0f 5c d0                    subss  xmm2,xmm0
386a1f  e8 1c 59 f4 ff                 call   0x2cc340
386a24  48 8b d8                       mov    rbx,rax
386a27  e8 d4 67 fd ff                 call   0x35d200
386a2c  4c 8b c3                       mov    r8,rbx
386a2f  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
386a34  48 8d 90 00 01 00 00           lea    rdx,[rax+0x100]
386a3b  e8 98 8f f6 ff                 call   0x2ef9d8
386a40  48 8b d0                       mov    rdx,rax
386a43  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
386a48  4d 8b cf                       mov    r9,r15
386a4b  44 8b c7                       mov    r8d,edi
386a4e  48 8b cd                       mov    rcx,rbp
386a51  e8 66 c7 01 00                 call   0x3a31bc
386a56  0f 57 d2                       xorps  xmm2,xmm2
386a59  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
386a5e  0f 57 c9                       xorps  xmm1,xmm1
386a61  e8 da 58 f4 ff                 call   0x2cc340
386a66  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
386a6b  e8 dc 93 03 00                 call   0x3bfe4c
386a70  e8 bf c4 00 00                 call   0x392f34
386a75  f3 0f 5c 05 3f c7 f0 ff        subss  xmm0,DWORD PTR [rip+0xfffffffffff0c73f]        # 0x2931bc ; f32=16
386a7d  f3 0f 10 0d db c7 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff0c7db]        # 0x293260 ; f32=-1
386a85  f3 0f 5c 05 43 c7 f0 ff        subss  xmm0,DWORD PTR [rip+0xfffffffffff0c743]        # 0x2931d0 ; f32=24
386a8d  e8 72 41 01 00                 call   0x39ac04
386a92  f3 0f 10 15 26 c7 f0 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff0c726]        # 0x2931c0 ; f32=18
386a9a  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
386a9f  f3 0f 10 0d 29 c7 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff0c729]        # 0x2931d0 ; f32=24
386aa7  e8 94 58 f4 ff                 call   0x2cc340
386aac  49 8b d6                       mov    rdx,r14
386aaf  49 8b cf                       mov    rcx,r15
386ab2  4c 8b 00                       mov    r8,QWORD PTR [rax]
386ab5  e8 7e f9 ff ff                 call   0x386438
386aba  48 8b 5c 24 60                 mov    rbx,QWORD PTR [rsp+0x60]
386abf  48 83 c4 30                    add    rsp,0x30
386ac3  41 5f                          pop    r15
386ac5  41 5e                          pop    r14
386ac7  5f                             pop    rdi
386ac8  5e                             pop    rsi
386ac9  5d                             pop    rbp
386aca  c3                             ret

