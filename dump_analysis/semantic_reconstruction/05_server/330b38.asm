; pdata function 0x330b38..0x332163 unwind=0x3d36c4
330b38  48 8b c4                       mov    rax,rsp
330b3b  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
330b3f  55                             push   rbp
330b40  56                             push   rsi
330b41  57                             push   rdi
330b42  41 54                          push   r12
330b44  41 55                          push   r13
330b46  41 56                          push   r14
330b48  41 57                          push   r15
330b4a  48 8d a8 58 fe ff ff           lea    rbp,[rax-0x1a8]
330b51  48 81 ec 70 02 00 00           sub    rsp,0x270
330b58  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
330b5c  4c 8b f1                       mov    r14,rcx
330b5f  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
330b63  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
330b68  44 0f 29 48 88                 movaps XMMWORD PTR [rax-0x78],xmm9
330b6d  44 0f 29 90 78 ff ff ff        movaps XMMWORD PTR [rax-0x88],xmm10
330b75  44 0f 29 98 68 ff ff ff        movaps XMMWORD PTR [rax-0x98],xmm11
330b7d  44 0f 29 a0 58 ff ff ff        movaps XMMWORD PTR [rax-0xa8],xmm12
330b85  44 0f 29 a8 48 ff ff ff        movaps XMMWORD PTR [rax-0xb8],xmm13
330b8d  44 0f 29 b0 38 ff ff ff        movaps XMMWORD PTR [rax-0xc8],xmm14
330b95  e8 6e a3 f9 ff                 call   0x2caf08
330b9a  84 c0                          test   al,al
330b9c  0f 84 76 15 00 00              je     0x332118
330ba2  e8 f5 ce fa ff                 call   0x2dda9c
330ba7  48 8b c8                       mov    rcx,rax
330baa  48 8b d8                       mov    rbx,rax
330bad  e8 56 a3 f9 ff                 call   0x2caf08
330bb2  84 c0                          test   al,al
330bb4  0f 84 5e 15 00 00              je     0x332118
330bba  49 8b ce                       mov    rcx,r14
330bbd  e8 12 37 04 00                 call   0x3742d4
330bc2  48 3b c3                       cmp    rax,rbx
330bc5  0f 85 4d 15 00 00              jne    0x332118
330bcb  49 8b ce                       mov    rcx,r14
330bce  e8 95 36 04 00                 call   0x374268
330bd3  84 c0                          test   al,al
330bd5  0f 84 3d 15 00 00              je     0x332118
330bdb  80 3d 26 71 0c 00 00           cmp    BYTE PTR [rip+0xc7126],0x0        # 0x3f7d08 ; CONFIG Bools.nospread value(+0x48)
330be2  74 20                          je     0x330c04
330be4  48 8d 4d d0                    lea    rcx,[rbp-0x30]
330be8  e8 cf 6f 09 00                 call   0x3c7bbc
330bed  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
330bf1  f2 41 0f 11 86 f8 00 00 00     movsd  QWORD PTR [r14+0xf8],xmm0
330bfa  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
330bfd  41 89 86 00 01 00 00           mov    DWORD PTR [r14+0x100],eax
330c04  48 8d 55 60                    lea    rdx,[rbp+0x60]
330c08  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
330c0f  e8 9c f6 ff ff                 call   0x3302b0 ; STRING getter=0x3302b0 Flesh
330c14  48 8b c8                       mov    rcx,rax
330c17  e8 c0 78 fa ff                 call   0x2d84dc
330c1c  bf 01 00 00 00                 mov    edi,0x1
330c21  4c 8b e8                       mov    r13,rax
330c24  8b 05 9e 89 0c 00              mov    eax,DWORD PTR [rip+0xc899e]        # 0x3f95c8 ; CONFIG i.CurrentProjectileMaterial value(+0x48)
330c2a  44 8d 7f 02                    lea    r15d,[rdi+0x2]
330c2e  85 c0                          test   eax,eax
330c30  75 20                          jne    0x330c52
330c32  48 8d 95 87 00 00 00           lea    rdx,[rbp+0x87]
330c39  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
330c40  e8 87 ef fa ff                 call   0x2dfbcc
330c45  48 8b c8                       mov    rcx,rax
330c48  e8 c7 29 fb ff                 call   0x2e3614
330c4d  e9 9d 00 00 00                 jmp    0x330cef
330c52  3b c7                          cmp    eax,edi
330c54  75 1a                          jne    0x330c70
330c56  48 8d 55 66                    lea    rdx,[rbp+0x66]
330c5a  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
330c61  e8 86 f8 ff ff                 call   0x3304ec ; STRING getter=0x3304ec Glass
330c66  48 8b c8                       mov    rcx,rax
330c69  e8 6e 78 fa ff                 call   0x2d84dc
330c6e  eb 7f                          jmp    0x330cef
330c70  83 f8 02                       cmp    eax,0x2
330c73  75 12                          jne    0x330c87
330c75  48 8d 55 6c                    lea    rdx,[rbp+0x6c]
330c79  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
330c80  e8 a3 f8 ff ff                 call   0x330528 ; STRING getter=0x330528 Metal
330c85  eb df                          jmp    0x330c66
330c87  41 3b c7                       cmp    eax,r15d
330c8a  75 15                          jne    0x330ca1
330c8c  48 8d 95 c0 01 00 00           lea    rdx,[rbp+0x1c0]
330c93  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
330c9a  e8 a1 f8 ff ff                 call   0x330540 ; STRING getter=0x330540 Wood
330c9f  eb 46                          jmp    0x330ce7
330ca1  83 f8 04                       cmp    eax,0x4
330ca4  75 12                          jne    0x330cb8
330ca6  48 8d 55 72                    lea    rdx,[rbp+0x72]
330caa  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
330cb1  e8 ba f8 ff ff                 call   0x330570 ; STRING getter=0x330570 Flesh
330cb6  eb ae                          jmp    0x330c66
330cb8  83 f8 05                       cmp    eax,0x5
330cbb  75 15                          jne    0x330cd2
330cbd  48 8d 95 c8 01 00 00           lea    rdx,[rbp+0x1c8]
330cc4  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
330ccb  e8 d4 f8 ff ff                 call   0x3305a4 ; STRING getter=0x3305a4 Dirt
330cd0  eb 15                          jmp    0x330ce7
330cd2  83 f8 06                       cmp    eax,0x6
330cd5  75 1b                          jne    0x330cf2
330cd7  48 8d 55 36                    lea    rdx,[rbp+0x36]
330cdb  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
330ce2  e8 d5 f8 ff ff                 call   0x3305bc ; STRING getter=0x3305bc Snow
330ce7  48 8b c8                       mov    rcx,rax
330cea  e8 dd cf f9 ff                 call   0x2cdccc
330cef  4c 8b e8                       mov    r13,rax
330cf2  f3 0f 10 0d 4a ce f5 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff5ce4a]        # 0x28db44 ; f32=100
330cfa  0f 57 c0                       xorps  xmm0,xmm0
330cfd  45 0f 57 c9                    xorps  xmm9,xmm9
330d01  e8 56 30 fb ff                 call   0x2e3d5c
330d06  80 3d bb 71 0a 00 00           cmp    BYTE PTR [rip+0xa71bb],0x0        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
330d0d  0f 28 f0                       movaps xmm6,xmm0
330d10  f3 44 0f 10 35 c3 cd f5 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff5cdc3]        # 0x28dadc ; f32=0.03125
330d19  0f 84 09 11 00 00              je     0x331e28
330d1f  e8 8c f5 fa ff                 call   0x2e02b0
330d24  48 8b c8                       mov    rcx,rax
330d27  4c 8b e0                       mov    r12,rax
330d2a  e8 d9 a1 f9 ff                 call   0x2caf08
330d2f  84 c0                          test   al,al
330d31  0f 84 f1 10 00 00              je     0x331e28
330d37  49 8b cc                       mov    rcx,r12
330d3a  e8 5d 01 fb ff                 call   0x2e0e9c
330d3f  84 c0                          test   al,al
330d41  0f 84 e1 10 00 00              je     0x331e28
330d47  49 8b cc                       mov    rcx,r12
330d4a  e8 05 4d fb ff                 call   0x2e5a54
330d4f  48 8b c8                       mov    rcx,rax
330d52  48 8b d0                       mov    rdx,rax
330d55  e8 ae a1 f9 ff                 call   0x2caf08
330d5a  84 c0                          test   al,al
330d5c  0f 84 c6 10 00 00              je     0x331e28
330d62  48 8b ca                       mov    rcx,rdx
330d65  e8 ea 55 fa ff                 call   0x2d6354
330d6a  48 8d 55 28                    lea    rdx,[rbp+0x28]
330d6e  48 8b d8                       mov    rbx,rax
330d71  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
330d78  e8 97 f8 ff ff                 call   0x330614 ; STRING getter=0x330614 ScientistNPC2
330d7d  48 8b c8                       mov    rcx,rax
330d80  e8 03 c4 fa ff                 call   0x2dd188
330d85  48 8b c8                       mov    rcx,rax
330d88  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
330d92  e8 b5 4d fb ff                 call   0x2e5b4c
330d97  f3 0f 10 3d 7d cd f5 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff5cd7d]        # 0x28db1c ; f32=10
330d9f  48 3b d8                       cmp    rbx,rax
330da2  48 8b f0                       mov    rsi,rax
330da5  41 b9 0f 00 00 00              mov    r9d,0xf
330dab  8b 05 c7 87 0c 00              mov    eax,DWORD PTR [rip+0xc87c7]        # 0x3f9578 ; CONFIG i.BoneIndex2 value(+0x48)
330db1  0f 94 c2                       sete   dl
330db4  85 c0                          test   eax,eax
330db6  75 0d                          jne    0x330dc5
330db8  bf 35 00 00 00                 mov    edi,0x35
330dbd  8d 47 fa                       lea    eax,[rdi-0x6]
330dc0  e9 26 01 00 00                 jmp    0x330eeb
330dc5  3b c7                          cmp    eax,edi
330dc7  75 0d                          jne    0x330dd6
330dc9  bf 17 00 00 00                 mov    edi,0x17
330dce  8d 47 fa                       lea    eax,[rdi-0x6]
330dd1  e9 15 01 00 00                 jmp    0x330eeb
330dd6  83 f8 02                       cmp    eax,0x2
330dd9  75 15                          jne    0x330df0
330ddb  b8 1d 00 00 00                 mov    eax,0x1d
330de0  48 3b de                       cmp    rbx,rsi
330de3  8d 78 fa                       lea    edi,[rax-0x6]
330de6  0f 44 c7                       cmove  eax,edi
330de9  8b f8                          mov    edi,eax
330deb  e9 01 01 00 00                 jmp    0x330ef1
330df0  41 3b c7                       cmp    eax,r15d
330df3  75 15                          jne    0x330e0a
330df5  bf 11 00 00 00                 mov    edi,0x11
330dfa  48 3b de                       cmp    rbx,rsi
330dfd  44 8d 47 f4                    lea    r8d,[rdi-0xc]
330e01  41 0f 44 f8                    cmove  edi,r8d
330e05  e9 e7 00 00 00                 jmp    0x330ef1
330e0a  b9 04 00 00 00                 mov    ecx,0x4
330e0f  3b c1                          cmp    eax,ecx
330e11  75 71                          jne    0x330e84
330e13  0f 2f 35 26 cd f5 ff           comiss xmm6,DWORD PTR [rip+0xfffffffffff5cd26]        # 0x28db40 ; f32=90
330e1a  77 9c                          ja     0x330db8
330e1c  0f 2f 35 19 cd f5 ff           comiss xmm6,DWORD PTR [rip+0xfffffffffff5cd19]        # 0x28db3c ; f32=80
330e23  76 7f                          jbe    0x330ea4
330e25  bf 34 00 00 00                 mov    edi,0x34
330e2a  8d 47 fa                       lea    eax,[rdi-0x6]
330e2d  e9 b9 00 00 00                 jmp    0x330eeb
330e32  bf 18 00 00 00                 mov    edi,0x18
330e37  8d 47 f6                       lea    eax,[rdi-0xa]
330e3a  e9 ac 00 00 00                 jmp    0x330eeb
330e3f  0f 2f 35 ea cc f5 ff           comiss xmm6,DWORD PTR [rip+0xfffffffffff5ccea]        # 0x28db30 ; f32=60
330e46  77 67                          ja     0x330eaf
330e48  0f 2f 35 dd cc f5 ff           comiss xmm6,DWORD PTR [rip+0xfffffffffff5ccdd]        # 0x28db2c ; f32=50
330e4f  77 16                          ja     0x330e67
330e51  0f 2f 35 d0 cc f5 ff           comiss xmm6,DWORD PTR [rip+0xfffffffffff5ccd0]        # 0x28db28 ; f32=40
330e58  76 5f                          jbe    0x330eb9
330e5a  bf 11 00 00 00                 mov    edi,0x11
330e5f  8d 47 f7                       lea    eax,[rdi-0x9]
330e62  e9 84 00 00 00                 jmp    0x330eeb
330e67  bf 0e 00 00 00                 mov    edi,0xe
330e6c  8d 47 f3                       lea    eax,[rdi-0xd]
330e6f  eb 7a                          jmp    0x330eeb
330e71  0f 2f 35 a8 cc f5 ff           comiss xmm6,DWORD PTR [rip+0xfffffffffff5cca8]        # 0x28db20 ; f32=20
330e78  76 56                          jbe    0x330ed0
330e7a  bf 1d 00 00 00                 mov    edi,0x1d
330e7f  8d 47 f3                       lea    eax,[rdi-0xd]
330e82  eb 67                          jmp    0x330eeb
330e84  bf 35 00 00 00                 mov    edi,0x35
330e89  44 8d 47 d0                    lea    r8d,[rdi-0x30]
330e8d  41 3b c0                       cmp    eax,r8d
330e90  75 5f                          jne    0x330ef1
330e92  0f 2f 35 a7 cc f5 ff           comiss xmm6,DWORD PTR [rip+0xfffffffffff5cca7]        # 0x28db40 ; f32=90
330e99  76 81                          jbe    0x330e1c
330e9b  41 8d 78 38                    lea    edi,[r8+0x38]
330e9f  8d 47 fe                       lea    eax,[rdi-0x2]
330ea2  eb 47                          jmp    0x330eeb
330ea4  0f 2f 35 8d cc f5 ff           comiss xmm6,DWORD PTR [rip+0xfffffffffff5cc8d]        # 0x28db38 ; f32=70
330eab  77 85                          ja     0x330e32
330ead  eb 90                          jmp    0x330e3f
330eaf  33 ff                          xor    edi,edi
330eb1  48 3b de                       cmp    rbx,rsi
330eb4  0f 44 f9                       cmove  edi,ecx
330eb7  eb 38                          jmp    0x330ef1
330eb9  0f 2f 35 64 cc f5 ff           comiss xmm6,DWORD PTR [rip+0xfffffffffff5cc64]        # 0x28db24 ; f32=30
330ec0  76 af                          jbe    0x330e71
330ec2  48 3b de                       cmp    rbx,rsi
330ec5  bf 14 00 00 00                 mov    edi,0x14
330eca  41 0f 44 f9                    cmove  edi,r9d
330ece  eb 21                          jmp    0x330ef1
330ed0  0f 2f f7                       comiss xmm6,xmm7
330ed3  76 0e                          jbe    0x330ee3
330ed5  48 3b de                       cmp    rbx,rsi
330ed8  bf 3d 00 00 00                 mov    edi,0x3d
330edd  41 0f 44 ff                    cmove  edi,r15d
330ee1  eb 0e                          jmp    0x330ef1
330ee3  b8 0a 00 00 00                 mov    eax,0xa
330ee8  41 8b ff                       mov    edi,r15d
330eeb  48 3b de                       cmp    rbx,rsi
330eee  0f 44 f8                       cmove  edi,eax
330ef1  49 8b cc                       mov    rcx,r12
330ef4  e8 13 93 03 00                 call   0x36a20c
330ef9  84 c0                          test   al,al
330efb  0f 85 27 0f 00 00              jne    0x331e28
330f01  49 8b ce                       mov    rcx,r14
330f04  e8 07 33 04 00                 call   0x374210
330f09  48 8b c8                       mov    rcx,rax
330f0c  4c 8b f8                       mov    r15,rax
330f0f  e8 f4 9f f9 ff                 call   0x2caf08
330f14  84 c0                          test   al,al
330f16  0f 84 0c 0f 00 00              je     0x331e28
330f1c  41 b8 36 00 00 00              mov    r8d,0x36
330f22  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
330f27  48 3b de                       cmp    rbx,rsi
330f2a  49 8b cc                       mov    rcx,r12
330f2d  41 8d 40 d9                    lea    eax,[r8-0x27]
330f31  44 0f 44 c0                    cmove  r8d,eax
330f35  e8 ae 7c 03 00                 call   0x368be8
330f3a  48 8d 55 90                    lea    rdx,[rbp-0x70]
330f3e  49 8b ce                       mov    rcx,r14
330f41  e8 9a 31 04 00                 call   0x3740e0
330f46  48 8d 55 b0                    lea    rdx,[rbp-0x50]
330f4a  49 8b ce                       mov    rcx,r14
330f4d  e8 d2 31 04 00                 call   0x374124
330f52  41 0f 28 d6                    movaps xmm2,xmm14
330f56  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
330f5b  48 8d 4d b0                    lea    rcx,[rbp-0x50]
330f5f  e8 08 e7 fa ff                 call   0x2df66c
330f64  4c 8b c0                       mov    r8,rax
330f67  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
330f6c  48 8d 4d 90                    lea    rcx,[rbp-0x70]
330f70  e8 57 e7 fa ff                 call   0x2df6cc
330f75  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
330f7a  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
330f7f  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
330f86  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
330f8a  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
330f8d  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
330f93  f2 0f 10 45 90                 movsd  xmm0,QWORD PTR [rbp-0x70]
330f98  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
330f9c  8b 45 98                       mov    eax,DWORD PTR [rbp-0x68]
330f9f  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
330fa5  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
330fa9  e8 ee e2 fa ff                 call   0x2df29c
330fae  41 0f 28 d6                    movaps xmm2,xmm14
330fb2  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
330fb7  48 8d 4d b0                    lea    rcx,[rbp-0x50]
330fbb  e8 ac e6 fa ff                 call   0x2df66c
330fc0  4c 8b c0                       mov    r8,rax
330fc3  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
330fc8  48 8d 4d 90                    lea    rcx,[rbp-0x70]
330fcc  e8 37 e7 fa ff                 call   0x2df708
330fd1  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
330fd6  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
330fdb  48 8d 4d 10                    lea    rcx,[rbp+0x10]
330fdf  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
330fe3  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
330fe6  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
330fec  f2 0f 10 45 90                 movsd  xmm0,QWORD PTR [rbp-0x70]
330ff1  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
330ff5  8b 45 98                       mov    eax,DWORD PTR [rbp-0x68]
330ff8  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
330ffe  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
331002  e8 95 e2 fa ff                 call   0x2df29c
331007  f2 0f 10 44 24 70              movsd  xmm0,QWORD PTR [rsp+0x70]
33100d  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
331012  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
331016  48 8d 55 80                    lea    rdx,[rbp-0x80]
33101a  48 8d 4d 10                    lea    rcx,[rbp+0x10]
33101e  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
331024  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
331028  e8 53 4a fb ff                 call   0x2e5a80
33102d  41 0f 28 d6                    movaps xmm2,xmm14
331031  48 8d 55 d0                    lea    rdx,[rbp-0x30]
331035  48 8d 4d b0                    lea    rcx,[rbp-0x50]
331039  e8 2e e6 fa ff                 call   0x2df66c
33103e  48 8d 4d d0                    lea    rcx,[rbp-0x30]
331042  e8 a1 fe fa ff                 call   0x2e0ee8
331047  4c 8d 45 90                    lea    r8,[rbp-0x70]
33104b  44 0f 28 e8                    movaps xmm13,xmm0
33104f  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
331054  48 8d 4d 80                    lea    rcx,[rbp-0x80]
331058  e8 6f e6 fa ff                 call   0x2df6cc
33105d  48 8b c8                       mov    rcx,rax
331060  e8 83 fe fa ff                 call   0x2e0ee8
331065  44 0f 28 d8                    movaps xmm11,xmm0
331069  e8 ae f7 fa ff                 call   0x2e081c
33106e  48 8d 55 80                    lea    rdx,[rbp-0x80]
331072  44 0f 28 c0                    movaps xmm8,xmm0
331076  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
33107b  e8 b0 ee fa ff                 call   0x2dff30
331080  44 0f 28 d0                    movaps xmm10,xmm0
331084  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
331088  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
33108d  f2 44 0f 10 64 24 70           movsd  xmm12,QWORD PTR [rsp+0x70]
331094  48 8d 4d 80                    lea    rcx,[rbp-0x80]
331098  f2 44 0f 11 64 24 30           movsd  QWORD PTR [rsp+0x30],xmm12
33109f  89 85 b8 01 00 00              mov    DWORD PTR [rbp+0x1b8],eax
3310a5  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
3310a9  e8 82 ee fa ff                 call   0x2dff30
3310ae  80 3d d3 83 0c 00 00           cmp    BYTE PTR [rip+0xc83d3],0x0        # 0x3f9488 ; CONFIG Bools.LegitBulletTP value(+0x48)
3310b5  0f 28 f0                       movaps xmm6,xmm0
3310b8  0f 84 31 01 00 00              je     0x3311ef
3310be  f3 0f 10 0d 62 84 0c 00        movss  xmm1,DWORD PTR [rip+0xc8462]        # 0x3f9528 ; CONFIG F.BulletSizeLegit value(+0x48)
3310c6  41 0f 2f ca                    comiss xmm1,xmm10
3310ca  0f 86 58 0d 00 00              jbe    0x331e28
3310d0  e8 97 59 fb ff                 call   0x2e6a6c
3310d5  f3 0f 10 1d 0b ca f5 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff5ca0b]        # 0x28dae8 ; f32=0.4
3310dd  4c 8d 45 80                    lea    r8,[rbp-0x80]
3310e1  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
3310e6  8b d8                          mov    ebx,eax
3310e8  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
3310ed  e8 3e f7 ff ff                 call   0x330830
3310f2  f3 0f 5d 35 3a 3d f6 ff        minss  xmm6,DWORD PTR [rip+0xfffffffffff63d3a]        # 0x294e34
3310fa  4c 8d 44 24 50                 lea    r8,[rsp+0x50]
3310ff  48 8d 55 80                    lea    rdx,[rbp-0x80]
331103  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
331108  0f 28 de                       movaps xmm3,xmm6
33110b  e8 20 f7 ff ff                 call   0x330830
331110  f2 0f 10 45 90                 movsd  xmm0,QWORD PTR [rbp-0x70]
331115  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
33111a  8b 45 98                       mov    eax,DWORD PTR [rbp-0x68]
33111d  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
331122  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
331128  0f 57 db                       xorps  xmm3,xmm3
33112b  f2 0f 10 44 24 70              movsd  xmm0,QWORD PTR [rsp+0x70]
331131  44 8b c3                       mov    r8d,ebx
331134  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
331138  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
33113c  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
331142  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
331149  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
33114d  e8 ce 11 fb ff                 call   0x2e2320
331152  84 c0                          test   al,al
331154  0f 84 ce 0c 00 00              je     0x331e28
33115a  49 8b ce                       mov    rcx,r14
33115d  e8 9e f5 ff ff                 call   0x330700
331162  48 8b c8                       mov    rcx,rax
331165  e8 9e 9d f9 ff                 call   0x2caf08
33116a  84 c0                          test   al,al
33116c  0f 84 b6 0c 00 00              je     0x331e28
331172  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
331177  49 8b ce                       mov    rcx,r14
33117a  e8 a5 2f 04 00                 call   0x374124
33117f  48 8b c8                       mov    rcx,rax
331182  e8 61 fd fa ff                 call   0x2e0ee8
331187  33 d2                          xor    edx,edx
331189  49 8b cc                       mov    rcx,r12
33118c  0f 28 f0                       movaps xmm6,xmm0
33118f  e8 1c 7b 03 00                 call   0x368cb0
331194  44 8b c0                       mov    r8d,eax
331197  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
33119c  49 8b cc                       mov    rcx,r12
33119f  e8 44 7a 03 00                 call   0x368be8
3311a4  48 8b c8                       mov    rcx,rax
3311a7  4c 8d 45 90                    lea    r8,[rbp-0x70]
3311ab  48 8d 55 c0                    lea    rdx,[rbp-0x40]
3311af  e8 18 e5 fa ff                 call   0x2df6cc
3311b4  48 8b c8                       mov    rcx,rax
3311b7  48 8d 55 a0                    lea    rdx,[rbp-0x60]
3311bb  e8 b8 00 fb ff                 call   0x2e1278
3311c0  48 8b c8                       mov    rcx,rax
3311c3  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3311c8  0f 28 d6                       movaps xmm2,xmm6
3311cb  e8 9c e4 fa ff                 call   0x2df66c
3311d0  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
3311d6  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
3311da  f2 41 0f 11 86 6c 01 00 00     movsd  QWORD PTR [r14+0x16c],xmm0
3311e3  41 89 86 74 01 00 00           mov    DWORD PTR [r14+0x174],eax
3311ea  e9 39 0c 00 00                 jmp    0x331e28
3311ef  f3 0f 10 05 e1 2b 0c 00        movss  xmm0,DWORD PTR [rip+0xc2be1]        # 0x3f3dd8 ; CONFIG F.BulletSize1 value(+0x48)
3311f7  41 0f 2f c2                    comiss xmm0,xmm10
3311fb  0f 86 5a 04 00 00              jbe    0x33165b
331201  e8 66 58 fb ff                 call   0x2e6a6c
331206  f3 0f 10 1d da c8 f5 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff5c8da]        # 0x28dae8 ; f32=0.4
33120e  4c 8d 45 80                    lea    r8,[rbp-0x80]
331212  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
331217  8b d8                          mov    ebx,eax
331219  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
33121e  e8 0d f6 ff ff                 call   0x330830
331223  f2 0f 10 45 80                 movsd  xmm0,QWORD PTR [rbp-0x80]
331228  8b 4d 88                       mov    ecx,DWORD PTR [rbp-0x78]
33122b  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
331231  f2 0f 10 45 10                 movsd  xmm0,QWORD PTR [rbp+0x10]
331236  89 4c 24 38                    mov    DWORD PTR [rsp+0x38],ecx
33123a  8b 4d 18                       mov    ecx,DWORD PTR [rbp+0x18]
33123d  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
331243  89 4c 24 58                    mov    DWORD PTR [rsp+0x58],ecx
331247  e8 20 58 fb ff                 call   0x2e6a6c
33124c  44 8b c0                       mov    r8d,eax
33124f  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
331256  0f 57 db                       xorps  xmm3,xmm3
331259  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
33125e  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
331263  e8 b8 10 fb ff                 call   0x2e2320
331268  84 c0                          test   al,al
33126a  0f 84 b8 0b 00 00              je     0x331e28
331270  f2 0f 10 44 24 70              movsd  xmm0,QWORD PTR [rsp+0x70]
331276  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
33127b  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
33127f  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
331284  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
33128a  0f 57 db                       xorps  xmm3,xmm3
33128d  f2 0f 10 45 80                 movsd  xmm0,QWORD PTR [rbp-0x80]
331292  44 8b c3                       mov    r8d,ebx
331295  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
331299  8b 45 88                       mov    eax,DWORD PTR [rbp-0x78]
33129c  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
3312a2  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
3312a9  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
3312ad  e8 6e 10 fb ff                 call   0x2e2320
3312b2  84 c0                          test   al,al
3312b4  0f 84 6e 0b 00 00              je     0x331e28
3312ba  8b 44 24 48                    mov    eax,DWORD PTR [rsp+0x48]
3312be  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3312c3  f2 0f 10 44 24 40              movsd  xmm0,QWORD PTR [rsp+0x40]
3312c9  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
3312ce  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
3312d2  0f 57 db                       xorps  xmm3,xmm3
3312d5  8b 85 b8 01 00 00              mov    eax,DWORD PTR [rbp+0x1b8]
3312db  44 8b c3                       mov    r8d,ebx
3312de  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
3312e2  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
3312e9  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
3312ef  f2 44 0f 11 64 24 50           movsd  QWORD PTR [rsp+0x50],xmm12
3312f6  e8 25 10 fb ff                 call   0x2e2320
3312fb  84 c0                          test   al,al
3312fd  0f 84 25 0b 00 00              je     0x331e28
331303  f2 0f 10 44 24 70              movsd  xmm0,QWORD PTR [rsp+0x70]
331309  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
33130e  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
331312  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
331317  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
33131d  0f 57 db                       xorps  xmm3,xmm3
331320  f2 0f 10 44 24 40              movsd  xmm0,QWORD PTR [rsp+0x40]
331326  44 8b c3                       mov    r8d,ebx
331329  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
33132d  8b 44 24 48                    mov    eax,DWORD PTR [rsp+0x48]
331331  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
331337  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
33133e  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
331342  e8 d9 0f fb ff                 call   0x2e2320
331347  84 c0                          test   al,al
331349  0f 84 d9 0a 00 00              je     0x331e28
33134f  f3 0f 5d 35 dd 3a f6 ff        minss  xmm6,DWORD PTR [rip+0xfffffffffff63add]        # 0x294e34
331357  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
33135c  48 8d 55 80                    lea    rdx,[rbp-0x80]
331360  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
331365  0f 28 de                       movaps xmm3,xmm6
331368  e8 c3 f4 ff ff                 call   0x330830
33136d  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
331373  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
331378  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
33137c  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
331381  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
331387  0f 57 db                       xorps  xmm3,xmm3
33138a  f2 0f 10 45 80                 movsd  xmm0,QWORD PTR [rbp-0x80]
33138f  44 8b c3                       mov    r8d,ebx
331392  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
331396  8b 45 88                       mov    eax,DWORD PTR [rbp-0x78]
331399  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
33139f  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
3313a6  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
3313aa  e8 71 0f fb ff                 call   0x2e2320
3313af  84 c0                          test   al,al
3313b1  0f 84 71 0a 00 00              je     0x331e28
3313b7  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
3313bd  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3313c2  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
3313c6  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3313cb  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
3313d1  0f 57 db                       xorps  xmm3,xmm3
3313d4  f2 0f 10 44 24 40              movsd  xmm0,QWORD PTR [rsp+0x40]
3313da  44 8b c3                       mov    r8d,ebx
3313dd  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
3313e1  8b 44 24 48                    mov    eax,DWORD PTR [rsp+0x48]
3313e5  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
3313eb  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
3313f2  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
3313f6  e8 25 0f fb ff                 call   0x2e2320
3313fb  84 c0                          test   al,al
3313fd  0f 84 25 0a 00 00              je     0x331e28
331403  49 8b ce                       mov    rcx,r14
331406  e8 f5 f2 ff ff                 call   0x330700
33140b  48 8b c8                       mov    rcx,rax
33140e  48 8b d8                       mov    rbx,rax
331411  e8 f2 9a f9 ff                 call   0x2caf08
331416  84 c0                          test   al,al
331418  0f 84 0a 0a 00 00              je     0x331e28
33141e  f2 0f 10 45 80                 movsd  xmm0,QWORD PTR [rbp-0x80]
331423  4c 8d 45 80                    lea    r8,[rbp-0x80]
331427  8b 4d 88                       mov    ecx,DWORD PTR [rbp-0x78]
33142a  48 8d 55 a0                    lea    rdx,[rbp-0x60]
33142e  f3 0f 10 3d 1e be f5 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff5be1e]        # 0x28d254 ; f32=1
331436  f2 41 0f 11 86 78 01 00 00     movsd  QWORD PTR [r14+0x178],xmm0
33143f  41 0f 28 c3                    movaps xmm0,xmm11
331443  f3 41 0f 58 86 84 01 00 00     addss  xmm0,DWORD PTR [r14+0x184]
33144c  f3 41 0f 5e fd                 divss  xmm7,xmm13
331451  41 89 8e 80 01 00 00           mov    DWORD PTR [r14+0x180],ecx
331458  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
33145d  f3 41 0f 11 86 84 01 00 00     movss  DWORD PTR [r14+0x184],xmm0
331466  f3 44 0f 59 df                 mulss  xmm11,xmm7
33146b  f3 45 0f 59 c3                 mulss  xmm8,xmm11
331470  f3 45 0f 58 86 88 01 00 00     addss  xmm8,DWORD PTR [r14+0x188]
331479  f3 45 0f 11 86 88 01 00 00     movss  DWORD PTR [r14+0x188],xmm8
331482  e8 45 e2 fa ff                 call   0x2df6cc
331487  48 8b c8                       mov    rcx,rax
33148a  e8 59 fa fa ff                 call   0x2e0ee8
33148f  0f 28 f0                       movaps xmm6,xmm0
331492  44 0f 28 c0                    movaps xmm8,xmm0
331496  f3 0f 59 f7                    mulss  xmm6,xmm7
33149a  e8 7d f3 fa ff                 call   0x2e081c
33149f  f2 0f 10 4d 80                 movsd  xmm1,QWORD PTR [rbp-0x80]
3314a4  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3314a9  8b 45 88                       mov    eax,DWORD PTR [rbp-0x78]
3314ac  0f 28 f8                       movaps xmm7,xmm0
3314af  48 8b cb                       mov    rcx,rbx
3314b2  f3 0f 59 fe                    mulss  xmm7,xmm6
3314b6  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
3314ba  f2 0f 11 4c 24 30              movsd  QWORD PTR [rsp+0x30],xmm1
3314c0  e8 7b 3c 04 00                 call   0x375140
3314c5  f3 45 0f 58 86 84 01 00 00     addss  xmm8,DWORD PTR [r14+0x184]
3314ce  f3 41 0f 58 be 88 01 00 00     addss  xmm7,DWORD PTR [r14+0x188]
3314d7  f2 0f 10 4c 24 50              movsd  xmm1,QWORD PTR [rsp+0x50]
3314dd  8b d7                          mov    edx,edi
3314df  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
3314e3  49 8b cc                       mov    rcx,r12
3314e6  f2 41 0f 11 8e 78 01 00 00     movsd  QWORD PTR [r14+0x178],xmm1
3314ef  f3 45 0f 11 86 84 01 00 00     movss  DWORD PTR [r14+0x184],xmm8
3314f8  f3 41 0f 11 be 88 01 00 00     movss  DWORD PTR [r14+0x188],xmm7
331501  41 89 86 80 01 00 00           mov    DWORD PTR [r14+0x180],eax
331508  41 c6 87 b0 00 00 00 01        mov    BYTE PTR [r15+0xb0],0x1
331510  4d 89 a7 90 00 00 00           mov    QWORD PTR [r15+0x90],r12
331517  e8 44 77 03 00                 call   0x368c60
33151c  48 8b c8                       mov    rcx,rax
33151f  48 8b d8                       mov    rbx,rax
331522  e8 e1 99 f9 ff                 call   0x2caf08
331527  84 c0                          test   al,al
331529  0f 84 f9 08 00 00              je     0x331e28
33152f  4c 8d 45 80                    lea    r8,[rbp-0x80]
331533  48 8d 55 a0                    lea    rdx,[rbp-0x60]
331537  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
33153c  e8 8b e1 fa ff                 call   0x2df6cc
331541  48 8b c8                       mov    rcx,rax
331544  48 8d 55 c0                    lea    rdx,[rbp-0x40]
331548  e8 2b fd fa ff                 call   0x2e1278
33154d  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
331552  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
331557  48 8d 4d f0                    lea    rcx,[rbp-0x10]
33155b  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
33155f  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
331562  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
331568  f2 0f 10 45 80                 movsd  xmm0,QWORD PTR [rbp-0x80]
33156d  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
331571  8b 45 88                       mov    eax,DWORD PTR [rbp-0x78]
331574  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
33157a  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
33157e  e8 19 dd fa ff                 call   0x2df29c
331583  f2 0f 10 44 24 40              movsd  xmm0,QWORD PTR [rsp+0x40]
331589  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
33158e  8b 44 24 48                    mov    eax,DWORD PTR [rsp+0x48]
331592  48 8d 55 a0                    lea    rdx,[rbp-0x60]
331596  48 8b cb                       mov    rcx,rbx
331599  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
33159f  49 89 9f d8 00 00 00           mov    QWORD PTR [r15+0xd8],rbx
3315a6  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
3315aa  e8 b1 37 04 00                 call   0x374d60
3315af  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
3315b4  48 8b cb                       mov    rcx,rbx
3315b7  48 8d 55 a0                    lea    rdx,[rbp-0x60]
3315bb  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3315bf  f2 41 0f 11 47 5c              movsd  QWORD PTR [r15+0x5c],xmm0
3315c5  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3315c8  f2 0f 10 44 24 40              movsd  xmm0,QWORD PTR [rsp+0x40]
3315ce  41 89 47 64                    mov    DWORD PTR [r15+0x64],eax
3315d2  8b 44 24 48                    mov    eax,DWORD PTR [rsp+0x48]
3315d6  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
3315da  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
3315e0  e8 13 36 04 00                 call   0x374bf8
3315e5  f2 0f 10 4d 00                 movsd  xmm1,QWORD PTR [rbp+0x0]
3315ea  49 8b cd                       mov    rcx,r13
3315ed  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3315f1  f2 41 0f 11 87 a4 00 00 00     movsd  QWORD PTR [r15+0xa4],xmm0
3315fa  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3315fd  0f 10 45 f0                    movups xmm0,XMMWORD PTR [rbp-0x10]
331601  41 89 87 ac 00 00 00           mov    DWORD PTR [r15+0xac],eax
331608  41 0f 11 47 6c                 movups XMMWORD PTR [r15+0x6c],xmm0
33160d  f2 41 0f 11 4f 7c              movsd  QWORD PTR [r15+0x7c],xmm1
331613  e8 c4 cf f9 ff                 call   0x2ce5dc
331618  f2 41 0f 10 87 a4 00 00 00     movsd  xmm0,QWORD PTR [r15+0xa4]
331621  4c 8d 4c 24 30                 lea    r9,[rsp+0x30]
331626  49 89 87 c0 00 00 00           mov    QWORD PTR [r15+0xc0],rax
33162d  49 8b 86 80 00 00 00           mov    rax,QWORD PTR [r14+0x80]
331634  49 89 87 d0 00 00 00           mov    QWORD PTR [r15+0xd0],rax
33163b  41 8b 87 ac 00 00 00           mov    eax,DWORD PTR [r15+0xac]
331642  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
331646  41 8b 47 64                    mov    eax,DWORD PTR [r15+0x64]
33164a  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
331650  f2 41 0f 10 47 5c              movsd  xmm0,QWORD PTR [r15+0x5c]
331656  e9 b3 07 00 00                 jmp    0x331e0e
33165b  48 3b de                       cmp    rbx,rsi
33165e  0f 84 c4 07 00 00              je     0x331e28
331664  80 3d 6d 7e 0c 00 00           cmp    BYTE PTR [rip+0xc7e6d],0x0        # 0x3f94d8 ; CONFIG Bools.ExtendMounted value(+0x48)
33166b  0f 84 b7 07 00 00              je     0x331e28
331671  49 8b cc                       mov    rcx,r12
331674  e8 97 74 03 00                 call   0x368b10
331679  48 8b c8                       mov    rcx,rax
33167c  48 8b d8                       mov    rbx,rax
33167f  e8 84 98 f9 ff                 call   0x2caf08
331684  84 c0                          test   al,al
331686  0f 84 9c 07 00 00              je     0x331e28
33168c  49 8b cc                       mov    rcx,r12
33168f  e8 6c f0 ff ff                 call   0x330700
331694  48 8b c8                       mov    rcx,rax
331697  4c 8b c0                       mov    r8,rax
33169a  e8 69 98 f9 ff                 call   0x2caf08
33169f  84 c0                          test   al,al
3316a1  0f 84 81 07 00 00              je     0x331e28
3316a7  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3316ac  49 8b c8                       mov    rcx,r8
3316af  e8 20 31 04 00                 call   0x3747d4
3316b4  48 8b 4b 38                    mov    rcx,QWORD PTR [rbx+0x38]
3316b8  e8 4b 98 f9 ff                 call   0x2caf08
3316bd  84 c0                          test   al,al
3316bf  0f 84 63 07 00 00              je     0x331e28
3316c5  48 8b 4b 38                    mov    rcx,QWORD PTR [rbx+0x38]
3316c9  e8 86 43 fb ff                 call   0x2e5a54
3316ce  48 8b c8                       mov    rcx,rax
3316d1  48 8b d8                       mov    rbx,rax
3316d4  e8 2f 98 f9 ff                 call   0x2caf08
3316d9  84 c0                          test   al,al
3316db  0f 84 47 07 00 00              je     0x331e28
3316e1  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3316e5  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
3316ec  e8 37 ea ff ff                 call   0x330128 ; STRING getter=0x330128 Bike
3316f1  48 8b c8                       mov    rcx,rax
3316f4  e8 d3 c5 f9 ff                 call   0x2cdccc
3316f9  48 8b d0                       mov    rdx,rax
3316fc  48 8b cb                       mov    rcx,rbx
3316ff  e8 80 91 09 00                 call   0x3ca884
331704  85 c0                          test   eax,eax
331706  0f 84 01 02 00 00              je     0x33190d
33170c  48 8d 55 f0                    lea    rdx,[rbp-0x10]
331710  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331717  e8 24 ea ff ff                 call   0x330140 ; STRING getter=0x330140 VehicleModuleSeating
33171c  48 8b c8                       mov    rcx,rax
33171f  e8 98 ed fe ff                 call   0x3204bc
331724  48 8b d0                       mov    rdx,rax
331727  48 8b cb                       mov    rcx,rbx
33172a  e8 55 91 09 00                 call   0x3ca884
33172f  85 c0                          test   eax,eax
331731  0f 84 d6 01 00 00              je     0x33190d
331737  48 8d 95 90 00 00 00           lea    rdx,[rbp+0x90]
33173e  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331745  e8 2a ea ff ff                 call   0x330174 ; STRING getter=0x330174 VehicleModuleEngine
33174a  48 8b c8                       mov    rcx,rax
33174d  e8 42 ed fe ff                 call   0x320494
331752  48 8b d0                       mov    rdx,rax
331755  48 8b cb                       mov    rcx,rbx
331758  e8 27 91 09 00                 call   0x3ca884
33175d  85 c0                          test   eax,eax
33175f  0f 84 a8 01 00 00              je     0x33190d
331765  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
33176a  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331771  e8 16 ea ff ff                 call   0x33018c ; STRING getter=0x33018c Minicopter
331776  48 8b c8                       mov    rcx,rax
331779  e8 d6 84 fb ff                 call   0x2e9c54
33177e  48 8b d0                       mov    rdx,rax
331781  48 8b cb                       mov    rcx,rbx
331784  e8 fb 90 09 00                 call   0x3ca884
331789  85 c0                          test   eax,eax
33178b  0f 84 7c 01 00 00              je     0x33190d
331791  48 8d 95 a8 00 00 00           lea    rdx,[rbp+0xa8]
331798  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
33179f  e8 04 ea ff ff                 call   0x3301a8 ; STRING getter=0x3301a8 AttackHelicopter
3317a4  48 8b c8                       mov    rcx,rax
3317a7  e8 08 84 fb ff                 call   0x2e9bb4
3317ac  48 8b d0                       mov    rdx,rax
3317af  48 8b cb                       mov    rcx,rbx
3317b2  e8 cd 90 09 00                 call   0x3ca884
3317b7  85 c0                          test   eax,eax
3317b9  0f 84 4e 01 00 00              je     0x33190d
3317bf  48 8d 55 40                    lea    rdx,[rbp+0x40]
3317c3  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
3317ca  e8 f1 e9 ff ff                 call   0x3301c0 ; STRING getter=0x3301c0 ScrapTransportHelicopter
3317cf  48 8b c8                       mov    rcx,rax
3317d2  e8 35 ed fe ff                 call   0x32050c
3317d7  48 8b d0                       mov    rdx,rax
3317da  48 8b cb                       mov    rcx,rbx
3317dd  e8 a2 90 09 00                 call   0x3ca884
3317e2  85 c0                          test   eax,eax
3317e4  0f 84 23 01 00 00              je     0x33190d
3317ea  48 8d 55 78                    lea    rdx,[rbp+0x78]
3317ee  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
3317f5  e8 e2 e9 ff ff                 call   0x3301dc ; STRING getter=0x3301dc CH47Helicopter
3317fa  48 8b c8                       mov    rcx,rax
3317fd  e8 6a 6e fa ff                 call   0x2d866c
331802  48 8b d0                       mov    rdx,rax
331805  48 8b cb                       mov    rcx,rbx
331808  e8 77 90 09 00                 call   0x3ca884
33180d  85 c0                          test   eax,eax
33180f  0f 84 f8 00 00 00              je     0x33190d
331815  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
33181a  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331821  e8 e6 e9 ff ff                 call   0x33020c ; STRING getter=0x33020c BasicCar
331826  48 8b c8                       mov    rcx,rax
331829  e8 5e 83 fb ff                 call   0x2e9b8c
33182e  48 8b d0                       mov    rdx,rax
331831  48 8b cb                       mov    rcx,rbx
331834  e8 4b 90 09 00                 call   0x3ca884
331839  85 c0                          test   eax,eax
33183b  0f 84 cc 00 00 00              je     0x33190d
331841  48 8d 55 a0                    lea    rdx,[rbp-0x60]
331845  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
33184c  e8 d7 e9 ff ff                 call   0x330228 ; STRING getter=0x330228 RidableHorse
331851  48 8b c8                       mov    rcx,rax
331854  e8 9b 6d fa ff                 call   0x2d85f4
331859  48 8b d0                       mov    rdx,rax
33185c  48 8b cb                       mov    rcx,rbx
33185f  e8 20 90 09 00                 call   0x3ca884
331864  85 c0                          test   eax,eax
331866  0f 84 a1 00 00 00              je     0x33190d
33186c  48 8d 55 28                    lea    rdx,[rbp+0x28]
331870  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331877  e8 d0 e9 ff ff                 call   0x33024c ; STRING getter=0x33024c MotorRowboat
33187c  48 8b c8                       mov    rcx,rax
33187f  e8 70 6d fa ff                 call   0x2d85f4
331884  48 8b d0                       mov    rdx,rax
331887  48 8b cb                       mov    rcx,rbx
33188a  e8 f5 8f 09 00                 call   0x3ca884
33188f  85 c0                          test   eax,eax
331891  74 7a                          je     0x33190d
331893  48 8d 55 c0                    lea    rdx,[rbp-0x40]
331897  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
33189e  e8 49 ea ff ff                 call   0x3302ec ; STRING getter=0x3302ec Kayak
3318a3  48 8b c8                       mov    rcx,rax
3318a6  e8 31 6c fa ff                 call   0x2d84dc
3318ab  48 8b d0                       mov    rdx,rax
3318ae  48 8b cb                       mov    rcx,rbx
3318b1  e8 ce 8f 09 00                 call   0x3ca884
3318b6  85 c0                          test   eax,eax
3318b8  74 53                          je     0x33190d
3318ba  48 8d 55 e5                    lea    rdx,[rbp-0x1b]
3318be  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
3318c5  e8 3a ea ff ff                 call   0x330304 ; STRING getter=0x330304 RHIB
3318ca  48 8b c8                       mov    rcx,rax
3318cd  e8 fa c3 f9 ff                 call   0x2cdccc
3318d2  48 8b d0                       mov    rdx,rax
3318d5  48 8b cb                       mov    rcx,rbx
3318d8  e8 a7 8f 09 00                 call   0x3ca884
3318dd  85 c0                          test   eax,eax
3318df  74 2c                          je     0x33190d
3318e1  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
3318e6  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
3318ed  e8 2a ea ff ff                 call   0x33031c ; STRING getter=0x33031c ModularCar
3318f2  48 8b c8                       mov    rcx,rax
3318f5  e8 5a 83 fb ff                 call   0x2e9c54
3318fa  48 8b d0                       mov    rdx,rax
3318fd  48 8b cb                       mov    rcx,rbx
331900  e8 7f 8f 09 00                 call   0x3ca884
331905  85 c0                          test   eax,eax
331907  0f 85 1b 05 00 00              jne    0x331e28
33190d  e8 0a 3f fe ff                 call   0x31581c
331912  0f 28 f0                       movaps xmm6,xmm0
331915  49 8b cc                       mov    rcx,r12
331918  f3 0f 5c 35 04 08 0c 00        subss  xmm6,DWORD PTR [rip+0xc0804]        # 0x3f2124
331920  f3 0f 5d 35 2c b9 f5 ff        minss  xmm6,DWORD PTR [rip+0xfffffffffff5b92c]        # 0x28d254
331928  e8 ff 7a 03 00                 call   0x36942c
33192d  0f 57 c9                       xorps  xmm1,xmm1
331930  48 8d 95 a8 00 00 00           lea    rdx,[rbp+0xa8]
331937  f3 0f 5f ce                    maxss  xmm1,xmm6
33193b  44 0f 28 c0                    movaps xmm8,xmm0
33193f  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331946  f3 0f 58 0d 92 c1 f5 ff        addss  xmm1,DWORD PTR [rip+0xfffffffffff5c192]        # 0x28dae0 ; f32=0.0333333
33194e  f3 0f 59 0d a6 c1 f5 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff5c1a6]        # 0x28dafc ; f32=1.5
331956  f3 44 0f 59 c1                 mulss  xmm8,xmm1
33195b  f3 44 0f 58 05 80 c1 f5 ff     addss  xmm8,DWORD PTR [rip+0xfffffffffff5c180]        # 0x28dae4 ; f32=0.1
331964  e8 cf e9 ff ff                 call   0x330338 ; STRING getter=0x330338 AttackHelicopter
331969  48 8b c8                       mov    rcx,rax
33196c  e8 43 82 fb ff                 call   0x2e9bb4
331971  48 8b d0                       mov    rdx,rax
331974  48 8b cb                       mov    rcx,rbx
331977  e8 08 8f 09 00                 call   0x3ca884
33197c  85 c0                          test   eax,eax
33197e  0f 84 a3 00 00 00              je     0x331a27
331984  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
331989  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331990  e8 bb e9 ff ff                 call   0x330350 ; STRING getter=0x330350 Minicopter
331995  48 8b c8                       mov    rcx,rax
331998  e8 b7 82 fb ff                 call   0x2e9c54
33199d  48 8b d0                       mov    rdx,rax
3319a0  48 8b cb                       mov    rcx,rbx
3319a3  e8 dc 8e 09 00                 call   0x3ca884
3319a8  85 c0                          test   eax,eax
3319aa  74 7b                          je     0x331a27
3319ac  48 8d 55 f0                    lea    rdx,[rbp-0x10]
3319b0  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
3319b7  e8 b0 e9 ff ff                 call   0x33036c ; STRING getter=0x33036c ScrapTransportHelicopter
3319bc  48 8b c8                       mov    rcx,rax
3319bf  e8 48 eb fe ff                 call   0x32050c
3319c4  48 8b d0                       mov    rdx,rax
3319c7  48 8b cb                       mov    rcx,rbx
3319ca  e8 b5 8e 09 00                 call   0x3ca884
3319cf  85 c0                          test   eax,eax
3319d1  74 54                          je     0x331a27
3319d3  48 8d 55 78                    lea    rdx,[rbp+0x78]
3319d7  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
3319de  e8 a5 e9 ff ff                 call   0x330388 ; STRING getter=0x330388 CH47Helicopter
3319e3  48 8b c8                       mov    rcx,rax
3319e6  e8 81 6c fa ff                 call   0x2d866c
3319eb  48 8b d0                       mov    rdx,rax
3319ee  48 8b cb                       mov    rcx,rbx
3319f1  e8 8e 8e 09 00                 call   0x3ca884
3319f6  85 c0                          test   eax,eax
3319f8  74 2d                          je     0x331a27
3319fa  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
3319ff  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331a06  e8 ad e9 ff ff                 call   0x3303b8 ; STRING getter=0x3303b8 BasicCar
331a0b  48 8b c8                       mov    rcx,rax
331a0e  e8 79 81 fb ff                 call   0x2e9b8c
331a13  48 8b d0                       mov    rdx,rax
331a16  48 8b cb                       mov    rcx,rbx
331a19  e8 66 8e 09 00                 call   0x3ca884
331a1e  85 c0                          test   eax,eax
331a20  74 05                          je     0x331a27
331a22  40 32 f6                       xor    sil,sil
331a25  eb 03                          jmp    0x331a2a
331a27  40 b6 01                       mov    sil,0x1
331a2a  48 8d 55 e5                    lea    rdx,[rbp-0x1b]
331a2e  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331a35  e8 9a e9 ff ff                 call   0x3303d4 ; STRING getter=0x3303d4 Bike
331a3a  48 8b c8                       mov    rcx,rax
331a3d  e8 8a c2 f9 ff                 call   0x2cdccc
331a42  48 8b d0                       mov    rdx,rax
331a45  48 8b cb                       mov    rcx,rbx
331a48  e8 37 8e 09 00                 call   0x3ca884
331a4d  85 c0                          test   eax,eax
331a4f  0f 84 25 01 00 00              je     0x331b7a
331a55  48 8d 95 90 00 00 00           lea    rdx,[rbp+0x90]
331a5c  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331a63  e8 84 e9 ff ff                 call   0x3303ec ; STRING getter=0x3303ec VehicleModuleEngine
331a68  48 8b c8                       mov    rcx,rax
331a6b  e8 24 ea fe ff                 call   0x320494
331a70  48 8b d0                       mov    rdx,rax
331a73  48 8b cb                       mov    rcx,rbx
331a76  e8 09 8e 09 00                 call   0x3ca884
331a7b  85 c0                          test   eax,eax
331a7d  0f 84 f7 00 00 00              je     0x331b7a
331a83  48 8d 55 f0                    lea    rdx,[rbp-0x10]
331a87  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331a8e  e8 a9 e9 ff ff                 call   0x33043c ; STRING getter=0x33043c VehicleModuleSeating
331a93  48 8b c8                       mov    rcx,rax
331a96  e8 21 ea fe ff                 call   0x3204bc
331a9b  48 8b d0                       mov    rdx,rax
331a9e  48 8b cb                       mov    rcx,rbx
331aa1  e8 de 8d 09 00                 call   0x3ca884
331aa6  85 c0                          test   eax,eax
331aa8  0f 84 cc 00 00 00              je     0x331b7a
331aae  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
331ab3  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331aba  e8 99 e9 ff ff                 call   0x330458 ; STRING getter=0x330458 ModularCar
331abf  48 8b c8                       mov    rcx,rax
331ac2  e8 8d 81 fb ff                 call   0x2e9c54
331ac7  48 8b d0                       mov    rdx,rax
331aca  48 8b cb                       mov    rcx,rbx
331acd  e8 b2 8d 09 00                 call   0x3ca884
331ad2  85 c0                          test   eax,eax
331ad4  0f 84 a0 00 00 00              je     0x331b7a
331ada  48 8d 55 28                    lea    rdx,[rbp+0x28]
331ade  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331ae5  e8 8a e9 ff ff                 call   0x330474 ; STRING getter=0x330474 RidableHorse
331aea  48 8b c8                       mov    rcx,rax
331aed  e8 02 6b fa ff                 call   0x2d85f4
331af2  48 8b d0                       mov    rdx,rax
331af5  48 8b cb                       mov    rcx,rbx
331af8  e8 87 8d 09 00                 call   0x3ca884
331afd  85 c0                          test   eax,eax
331aff  74 79                          je     0x331b7a
331b01  48 8d 55 a0                    lea    rdx,[rbp-0x60]
331b05  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331b0c  e8 87 e9 ff ff                 call   0x330498 ; STRING getter=0x330498 MotorRowboat
331b11  48 8b c8                       mov    rcx,rax
331b14  e8 db 6a fa ff                 call   0x2d85f4
331b19  48 8b d0                       mov    rdx,rax
331b1c  48 8b cb                       mov    rcx,rbx
331b1f  e8 60 8d 09 00                 call   0x3ca884
331b24  85 c0                          test   eax,eax
331b26  74 52                          je     0x331b7a
331b28  48 8d 55 c0                    lea    rdx,[rbp-0x40]
331b2c  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331b33  e8 84 e9 ff ff                 call   0x3304bc ; STRING getter=0x3304bc Kayak
331b38  48 8b c8                       mov    rcx,rax
331b3b  e8 9c 69 fa ff                 call   0x2d84dc
331b40  48 8b d0                       mov    rdx,rax
331b43  48 8b cb                       mov    rcx,rbx
331b46  e8 39 8d 09 00                 call   0x3ca884
331b4b  85 c0                          test   eax,eax
331b4d  74 2b                          je     0x331b7a
331b4f  48 8d 55 e0                    lea    rdx,[rbp-0x20]
331b53  48 8d 8d b8 01 00 00           lea    rcx,[rbp+0x1b8]
331b5a  e8 75 e9 ff ff                 call   0x3304d4 ; STRING getter=0x3304d4 RHIB
331b5f  48 8b c8                       mov    rcx,rax
331b62  e8 65 c1 f9 ff                 call   0x2cdccc
331b67  48 8b d0                       mov    rdx,rax
331b6a  48 8b cb                       mov    rcx,rbx
331b6d  e8 12 8d 09 00                 call   0x3ca884
331b72  85 c0                          test   eax,eax
331b74  74 04                          je     0x331b7a
331b76  32 c0                          xor    al,al
331b78  eb 02                          jmp    0x331b7c
331b7a  b0 01                          mov    al,0x1
331b7c  40 84 f6                       test   sil,sil
331b7f  74 07                          je     0x331b88
331b81  f3 41 0f 5f f8                 maxss  xmm7,xmm8
331b86  eb 12                          jmp    0x331b9a
331b88  84 c0                          test   al,al
331b8a  74 0a                          je     0x331b96
331b8c  f3 0f 10 3d f4 15 f6 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff615f4]        # 0x293188 ; f32=6
331b94  eb eb                          jmp    0x331b81
331b96  41 0f 28 f8                    movaps xmm7,xmm8
331b9a  f2 41 0f 10 b6 78 01 00 00     movsd  xmm6,QWORD PTR [r14+0x178]
331ba3  48 8d 55 a0                    lea    rdx,[rbp-0x60]
331ba7  f2 41 0f 10 86 6c 01 00 00     movsd  xmm0,QWORD PTR [r14+0x16c]
331bb0  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
331bb5  41 8b 9e 80 01 00 00           mov    ebx,DWORD PTR [r14+0x180]
331bbc  41 0f 28 d6                    movaps xmm2,xmm14
331bc0  41 8b 86 74 01 00 00           mov    eax,DWORD PTR [r14+0x174]
331bc7  f2 0f 11 74 24 60              movsd  QWORD PTR [rsp+0x60],xmm6
331bcd  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
331bd3  89 5c 24 68                    mov    DWORD PTR [rsp+0x68],ebx
331bd7  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
331bdb  e8 8c da fa ff                 call   0x2df66c
331be0  4c 8b c0                       mov    r8,rax
331be3  48 8d 55 c0                    lea    rdx,[rbp-0x40]
331be7  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
331bec  e8 17 db fa ff                 call   0x2df708
331bf1  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
331bf6  f2 0f 11 74 24 60              movsd  QWORD PTR [rsp+0x60],xmm6
331bfc  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
331c01  89 5c 24 68                    mov    DWORD PTR [rsp+0x68],ebx
331c05  48 8d 4d 40                    lea    rcx,[rbp+0x40]
331c09  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
331c0d  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
331c10  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
331c16  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
331c1a  e8 7d d6 fa ff                 call   0x2df29c
331c1f  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
331c25  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
331c2a  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
331c2e  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
331c33  48 8d 4d 40                    lea    rcx,[rbp+0x40]
331c37  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
331c3d  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
331c41  e8 3a 3e fb ff                 call   0x2e5a80
331c46  f2 41 0f 10 86 90 01 00 00     movsd  xmm0,QWORD PTR [r14+0x190]
331c4f  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
331c54  41 8b 86 98 01 00 00           mov    eax,DWORD PTR [r14+0x198]
331c5b  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
331c60  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
331c66  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
331c6a  e8 c1 e2 fa ff                 call   0x2dff30
331c6f  0f 2f f8                       comiss xmm7,xmm0
331c72  0f 82 b0 01 00 00              jb     0x331e28
331c78  f2 41 0f 10 46 28              movsd  xmm0,QWORD PTR [r14+0x28]
331c7e  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
331c83  41 8b 46 30                    mov    eax,DWORD PTR [r14+0x30]
331c87  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
331c8c  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
331c92  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
331c96  e8 95 e2 fa ff                 call   0x2dff30
331c9b  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
331ca0  0f 28 f0                       movaps xmm6,xmm0
331ca3  e8 40 f2 fa ff                 call   0x2e0ee8
331ca8  f3 41 0f 10 8e 88 01 00 00     movss  xmm1,DWORD PTR [r14+0x188]
331cb1  f3 41 0f 58 ce                 addss  xmm1,xmm14
331cb6  f3 0f 5d 0d 7a 31 f6 ff        minss  xmm1,DWORD PTR [rip+0xfffffffffff6317a]        # 0x294e38
331cbe  f3 0f 59 c1                    mulss  xmm0,xmm1
331cc2  f3 41 0f 58 46 44              addss  xmm0,DWORD PTR [r14+0x44]
331cc8  0f 2f c6                       comiss xmm0,xmm6
331ccb  0f 86 57 01 00 00              jbe    0x331e28
331cd1  8b d7                          mov    edx,edi
331cd3  41 c6 87 b0 00 00 00 01        mov    BYTE PTR [r15+0xb0],0x1
331cdb  49 8b cc                       mov    rcx,r12
331cde  4d 89 a7 90 00 00 00           mov    QWORD PTR [r15+0x90],r12
331ce5  e8 76 6f 03 00                 call   0x368c60
331cea  48 8b c8                       mov    rcx,rax
331ced  48 8b d8                       mov    rbx,rax
331cf0  e8 13 92 f9 ff                 call   0x2caf08
331cf5  84 c0                          test   al,al
331cf7  0f 84 2b 01 00 00              je     0x331e28
331cfd  8b 4c 24 58                    mov    ecx,DWORD PTR [rsp+0x58]
331d01  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
331d06  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
331d0c  48 8d 55 a0                    lea    rdx,[rbp-0x60]
331d10  89 4c 24 48                    mov    DWORD PTR [rsp+0x48],ecx
331d14  48 8b cb                       mov    rcx,rbx
331d17  49 89 9f d8 00 00 00           mov    QWORD PTR [r15+0xd8],rbx
331d1e  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
331d24  e8 37 30 04 00                 call   0x374d60
331d29  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
331d2e  48 8b cb                       mov    rcx,rbx
331d31  48 8d 55 a0                    lea    rdx,[rbp-0x60]
331d35  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
331d39  f2 41 0f 11 47 5c              movsd  QWORD PTR [r15+0x5c],xmm0
331d3f  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
331d42  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
331d48  41 89 47 64                    mov    DWORD PTR [r15+0x64],eax
331d4c  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
331d50  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
331d54  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
331d5a  e8 99 2e 04 00                 call   0x374bf8
331d5f  48 8d 4d a0                    lea    rcx,[rbp-0x60]
331d63  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
331d67  f2 41 0f 11 87 a4 00 00 00     movsd  QWORD PTR [r15+0xa4],xmm0
331d70  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
331d73  41 89 87 ac 00 00 00           mov    DWORD PTR [r15+0xac],eax
331d7a  e8 3d 5e 09 00                 call   0x3c7bbc
331d7f  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
331d84  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
331d89  48 8d 8d 90 00 00 00           lea    rcx,[rbp+0x90]
331d90  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
331d94  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
331d97  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
331d9d  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
331da3  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
331da7  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
331dab  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
331db1  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
331db5  e8 e2 d4 fa ff                 call   0x2df29c
331dba  49 8b cd                       mov    rcx,r13
331dbd  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
331dc0  41 0f 11 47 6c                 movups XMMWORD PTR [r15+0x6c],xmm0
331dc5  f2 0f 10 48 10                 movsd  xmm1,QWORD PTR [rax+0x10]
331dca  f2 41 0f 11 4f 7c              movsd  QWORD PTR [r15+0x7c],xmm1
331dd0  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
331dd3  f2 0f 10 48 10                 movsd  xmm1,QWORD PTR [rax+0x10]
331dd8  0f 11 45 f0                    movups XMMWORD PTR [rbp-0x10],xmm0
331ddc  f2 0f 11 4d 00                 movsd  QWORD PTR [rbp+0x0],xmm1
331de1  e8 f6 c7 f9 ff                 call   0x2ce5dc
331de6  f2 0f 10 45 fc                 movsd  xmm0,QWORD PTR [rbp-0x4]
331deb  4c 8d 4c 24 40                 lea    r9,[rsp+0x40]
331df0  49 89 87 c0 00 00 00           mov    QWORD PTR [r15+0xc0],rax
331df7  8b 45 04                       mov    eax,DWORD PTR [rbp+0x4]
331dfa  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
331e00  f2 0f 10 44 24 50              movsd  xmm0,QWORD PTR [rsp+0x50]
331e06  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
331e0a  8b 44 24 58                    mov    eax,DWORD PTR [rsp+0x58]
331e0e  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
331e13  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
331e19  49 8b d7                       mov    rdx,r15
331e1c  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
331e20  49 8b ce                       mov    rcx,r14
331e23  e8 40 23 04 00                 call   0x374168
331e28  80 3d 79 1d 0c 00 00           cmp    BYTE PTR [rip+0xc1d79],0x0        # 0x3f3ba8 ; CONFIG Bools.HeliMagic value(+0x48)
331e2f  0f 84 e3 02 00 00              je     0x332118
331e35  48 8b 3d 7c 54 0a 00           mov    rdi,QWORD PTR [rip+0xa547c]        # 0x3d72b8
331e3c  48 8b cf                       mov    rcx,rdi
331e3f  e8 c4 90 f9 ff                 call   0x2caf08
331e44  84 c0                          test   al,al
331e46  0f 84 cc 02 00 00              je     0x332118
331e4c  48 8b cf                       mov    rcx,rdi
331e4f  e8 48 f0 fa ff                 call   0x2e0e9c
331e54  84 c0                          test   al,al
331e56  0f 84 bc 02 00 00              je     0x332118
331e5c  49 8b ce                       mov    rcx,r14
331e5f  e8 ac 23 04 00                 call   0x374210
331e64  48 8b c8                       mov    rcx,rax
331e67  48 8b d8                       mov    rbx,rax
331e6a  e8 99 90 f9 ff                 call   0x2caf08
331e6f  84 c0                          test   al,al
331e71  0f 84 a1 02 00 00              je     0x332118
331e77  48 8b 97 e8 02 00 00           mov    rdx,QWORD PTR [rdi+0x2e8]
331e7e  48 8b ca                       mov    rcx,rdx
331e81  e8 82 90 f9 ff                 call   0x2caf08
331e86  84 c0                          test   al,al
331e88  0f 84 8a 02 00 00              je     0x332118
331e8e  48 8b 72 28                    mov    rsi,QWORD PTR [rdx+0x28]
331e92  48 8b ce                       mov    rcx,rsi
331e95  e8 6e 90 f9 ff                 call   0x2caf08
331e9a  84 c0                          test   al,al
331e9c  0f 84 76 02 00 00              je     0x332118
331ea2  48 8b cf                       mov    rcx,rdi
331ea5  e8 56 e8 ff ff                 call   0x330700
331eaa  48 8b c8                       mov    rcx,rax
331ead  4c 8b f8                       mov    r15,rax
331eb0  e8 53 90 f9 ff                 call   0x2caf08
331eb5  84 c0                          test   al,al
331eb7  0f 84 5b 02 00 00              je     0x332118
331ebd  e8 5a 39 fe ff                 call   0x31581c
331ec2  f3 0f 5c 05 5a 02 0c 00        subss  xmm0,DWORD PTR [rip+0xc025a]        # 0x3f2124
331eca  f3 0f 10 35 e6 12 f6 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff612e6]        # 0x2931b8 ; f32=15
331ed2  48 8d 55 b0                    lea    rdx,[rbp-0x50]
331ed6  0f 57 c9                       xorps  xmm1,xmm1
331ed9  49 8b cf                       mov    rcx,r15
331edc  f3 0f 5d 05 70 b3 f5 ff        minss  xmm0,DWORD PTR [rip+0xfffffffffff5b370]        # 0x28d254
331ee4  f3 0f 5f c8                    maxss  xmm1,xmm0
331ee8  f3 0f 58 0d f0 bb f5 ff        addss  xmm1,DWORD PTR [rip+0xfffffffffff5bbf0]        # 0x28dae0 ; f32=0.0333333
331ef0  f3 0f 59 0d 04 bc f5 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff5bc04]        # 0x28dafc ; f32=1.5
331ef8  f3 0f 59 0d 3c 2f f6 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff62f3c]        # 0x294e3c ; f32=95
331f00  f3 0f 58 0d dc bb f5 ff        addss  xmm1,DWORD PTR [rip+0xfffffffffff5bbdc]        # 0x28dae4 ; f32=0.1
331f08  f3 0f 5f f1                    maxss  xmm6,xmm1
331f0c  e8 c3 28 04 00                 call   0x3747d4
331f11  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
331f16  49 8b ce                       mov    rcx,r14
331f19  e8 c2 21 04 00                 call   0x3740e0
331f1e  48 8d 55 d0                    lea    rdx,[rbp-0x30]
331f22  49 8b ce                       mov    rcx,r14
331f25  e8 fa 21 04 00                 call   0x374124
331f2a  41 0f 28 d6                    movaps xmm2,xmm14
331f2e  48 8d 55 a0                    lea    rdx,[rbp-0x60]
331f32  48 8d 4d d0                    lea    rcx,[rbp-0x30]
331f36  e8 31 d7 fa ff                 call   0x2df66c
331f3b  4c 8b c0                       mov    r8,rax
331f3e  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
331f43  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
331f48  e8 bb d7 fa ff                 call   0x2df708
331f4d  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
331f52  48 8d 55 80                    lea    rdx,[rbp-0x80]
331f56  48 8d 4d 40                    lea    rcx,[rbp+0x40]
331f5a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
331f5e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
331f61  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
331f67  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
331f6d  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
331f71  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
331f75  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
331f7a  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
331f7d  e8 1a d3 fa ff                 call   0x2df29c
331f82  f2 0f 10 45 b0                 movsd  xmm0,QWORD PTR [rbp-0x50]
331f87  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
331f8c  8b 45 b8                       mov    eax,DWORD PTR [rbp-0x48]
331f8f  48 8d 55 90                    lea    rdx,[rbp-0x70]
331f93  48 8d 4d 40                    lea    rcx,[rbp+0x40]
331f97  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
331f9d  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
331fa1  e8 da 3a fb ff                 call   0x2e5a80
331fa6  48 8d 55 90                    lea    rdx,[rbp-0x70]
331faa  48 8d 4d b0                    lea    rcx,[rbp-0x50]
331fae  e8 7d df fa ff                 call   0x2dff30
331fb3  f3 0f 5d f6                    minss  xmm6,xmm6
331fb7  0f 2f f0                       comiss xmm6,xmm0
331fba  0f 82 58 01 00 00              jb     0x332118
331fc0  33 d2                          xor    edx,edx
331fc2  c6 83 b0 00 00 00 01           mov    BYTE PTR [rbx+0xb0],0x1
331fc9  48 8b 05 e8 52 0a 00           mov    rax,QWORD PTR [rip+0xa52e8]        # 0x3d72b8
331fd0  48 8b cf                       mov    rcx,rdi
331fd3  48 89 83 90 00 00 00           mov    QWORD PTR [rbx+0x90],rax
331fda  f3 0f 10 46 24                 movss  xmm0,DWORD PTR [rsi+0x24]
331fdf  41 0f 2f c1                    comiss xmm0,xmm9
331fe3  0f 96 c2                       setbe  dl
331fe6  83 c2 3e                       add    edx,0x3e
331fe9  e8 72 6c 03 00                 call   0x368c60
331fee  48 8b c8                       mov    rcx,rax
331ff1  48 8b f8                       mov    rdi,rax
331ff4  e8 0f 8f f9 ff                 call   0x2caf08
331ff9  84 c0                          test   al,al
331ffb  0f 84 17 01 00 00              je     0x332118
332001  8b 4d 98                       mov    ecx,DWORD PTR [rbp-0x68]
332004  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
332009  f2 0f 10 45 90                 movsd  xmm0,QWORD PTR [rbp-0x70]
33200e  48 8d 55 a0                    lea    rdx,[rbp-0x60]
332012  89 4c 24 78                    mov    DWORD PTR [rsp+0x78],ecx
332016  48 8b cf                       mov    rcx,rdi
332019  48 89 bb d8 00 00 00           mov    QWORD PTR [rbx+0xd8],rdi
332020  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
332026  e8 35 2d 04 00                 call   0x374d60
33202b  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
332030  48 8b cf                       mov    rcx,rdi
332033  48 8d 55 a0                    lea    rdx,[rbp-0x60]
332037  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
33203b  f2 0f 11 43 5c                 movsd  QWORD PTR [rbx+0x5c],xmm0
332040  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
332043  f2 0f 10 45 90                 movsd  xmm0,QWORD PTR [rbp-0x70]
332048  89 43 64                       mov    DWORD PTR [rbx+0x64],eax
33204b  8b 45 98                       mov    eax,DWORD PTR [rbp-0x68]
33204e  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
332052  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
332058  e8 9b 2b 04 00                 call   0x374bf8
33205d  48 8d 4d a0                    lea    rcx,[rbp-0x60]
332061  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
332065  f2 0f 11 83 a4 00 00 00        movsd  QWORD PTR [rbx+0xa4],xmm0
33206d  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
332070  89 83 ac 00 00 00              mov    DWORD PTR [rbx+0xac],eax
332076  e8 41 5b 09 00                 call   0x3c7bbc
33207b  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
332080  48 8d 55 80                    lea    rdx,[rbp-0x80]
332084  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
33208b  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
33208f  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
332092  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
332098  f2 0f 10 45 90                 movsd  xmm0,QWORD PTR [rbp-0x70]
33209d  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
3320a1  8b 45 98                       mov    eax,DWORD PTR [rbp-0x68]
3320a4  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
3320a9  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
3320ac  e8 eb d1 fa ff                 call   0x2df29c
3320b1  49 8b cd                       mov    rcx,r13
3320b4  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
3320b7  0f 11 43 6c                    movups XMMWORD PTR [rbx+0x6c],xmm0
3320bb  f2 0f 10 48 10                 movsd  xmm1,QWORD PTR [rax+0x10]
3320c0  f2 0f 11 4b 7c                 movsd  QWORD PTR [rbx+0x7c],xmm1
3320c5  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
3320c8  f2 0f 10 48 10                 movsd  xmm1,QWORD PTR [rax+0x10]
3320cd  0f 11 45 10                    movups XMMWORD PTR [rbp+0x10],xmm0
3320d1  f2 0f 11 4d 20                 movsd  QWORD PTR [rbp+0x20],xmm1
3320d6  e8 01 c5 f9 ff                 call   0x2ce5dc
3320db  f2 0f 10 45 1c                 movsd  xmm0,QWORD PTR [rbp+0x1c]
3320e0  4c 8d 4c 24 70                 lea    r9,[rsp+0x70]
3320e5  48 89 83 c0 00 00 00           mov    QWORD PTR [rbx+0xc0],rax
3320ec  4c 8d 45 80                    lea    r8,[rbp-0x80]
3320f0  8b 45 24                       mov    eax,DWORD PTR [rbp+0x24]
3320f3  48 8b d3                       mov    rdx,rbx
3320f6  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
3320fc  49 8b ce                       mov    rcx,r14
3320ff  f2 0f 10 45 90                 movsd  xmm0,QWORD PTR [rbp-0x70]
332104  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
332108  8b 45 98                       mov    eax,DWORD PTR [rbp-0x68]
33210b  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
332110  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
332113  e8 50 20 04 00                 call   0x374168
332118  4c 8d 9c 24 70 02 00 00        lea    r11,[rsp+0x270]
332120  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
332124  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
332129  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
33212e  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
332133  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
332138  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
33213d  45 0f 28 5b a0                 movaps xmm11,XMMWORD PTR [r11-0x60]
332142  45 0f 28 63 90                 movaps xmm12,XMMWORD PTR [r11-0x70]
332147  45 0f 28 6b 80                 movaps xmm13,XMMWORD PTR [r11-0x80]
33214c  45 0f 28 b3 70 ff ff ff        movaps xmm14,XMMWORD PTR [r11-0x90]
332154  49 8b e3                       mov    rsp,r11
332157  41 5f                          pop    r15
332159  41 5e                          pop    r14
33215b  41 5d                          pop    r13
33215d  41 5c                          pop    r12
33215f  5f                             pop    rdi
332160  5e                             pop    rsi
332161  5d                             pop    rbp
332162  c3                             ret
