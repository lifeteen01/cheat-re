; pdata function 0x2ebfec..0x2ec012 unwind=0x3d2064
2ebfec  48 83 ec 28                    sub    rsp,0x28
2ebff0  48 b8 55 55 55 55 55 55 55 05  movabs rax,0x555555555555555
2ebffa  48 3b c8                       cmp    rcx,rax
2ebffd  77 0d                          ja     0x2ec00c
2ebfff  48 8d 04 49                    lea    rax,[rcx+rcx*2]
2ec003  48 c1 e0 04                    shl    rax,0x4
2ec007  48 83 c4 28                    add    rsp,0x28
2ec00b  c3                             ret
2ec00c  e8 5f 16 fe ff                 call   0x2cd670
2ec011  cc                             int3

; pdata function 0x2de298..0x2de2be unwind=0x3d2064
2de298  48 83 ec 28                    sub    rsp,0x28
2de29c  48 b8 aa aa aa aa aa aa aa 02  movabs rax,0x2aaaaaaaaaaaaaa
2de2a6  48 3b c8                       cmp    rcx,rax
2de2a9  77 0d                          ja     0x2de2b8
2de2ab  48 8d 04 49                    lea    rax,[rcx+rcx*2]
2de2af  48 c1 e0 05                    shl    rax,0x5
2de2b3  48 83 c4 28                    add    rsp,0x28
2de2b7  c3                             ret
2de2b8  e8 b3 f3 fe ff                 call   0x2cd670
2de2bd  cc                             int3

; pdata function 0x2d7564..0x2d75d9 unwind=0x3d23fc
2d7564  48 83 ec 38                    sub    rsp,0x38
2d7568  0f 29 74 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm6
2d756d  0f 57 f6                       xorps  xmm6,xmm6
2d7570  48 85 d2                       test   rdx,rdx
2d7573  78 07                          js     0x2d757c
2d7575  f3 48 0f 2a f2                 cvtsi2ss xmm6,rdx
2d757a  eb 15                          jmp    0x2d7591
2d757c  48 8b c2                       mov    rax,rdx
2d757f  83 e2 01                       and    edx,0x1
2d7582  48 d1 e8                       shr    rax,1
2d7585  48 0b c2                       or     rax,rdx
2d7588  f3 48 0f 2a f0                 cvtsi2ss xmm6,rax
2d758d  f3 0f 58 f6                    addss  xmm6,xmm6
2d7591  e8 4a 15 00 00                 call   0x2d8ae0
2d7596  f3 0f 5e f0                    divss  xmm6,xmm0
2d759a  0f 28 c6                       movaps xmm0,xmm6
2d759d  e8 76 13 0f 00                 call   0x3c8918
2d75a2  f3 0f 10 0d 5a 60 fb ff        movss  xmm1,DWORD PTR [rip+0xfffffffffffb605a]        # 0x28d604
2d75aa  33 c9                          xor    ecx,ecx
2d75ac  0f 2f c1                       comiss xmm0,xmm1
2d75af  72 16                          jb     0x2d75c7
2d75b1  f3 0f 5c c1                    subss  xmm0,xmm1
2d75b5  0f 2f c1                       comiss xmm0,xmm1
2d75b8  73 0d                          jae    0x2d75c7
2d75ba  48 b8 00 00 00 00 00 00 00 80  movabs rax,0x8000000000000000
2d75c4  48 8b c8                       mov    rcx,rax
2d75c7  0f 28 74 24 20                 movaps xmm6,XMMWORD PTR [rsp+0x20]
2d75cc  f3 48 0f 2c c0                 cvttss2si rax,xmm0
2d75d1  48 03 c1                       add    rax,rcx
2d75d4  48 83 c4 38                    add    rsp,0x38
2d75d8  c3                             ret

; pdata function 0x2d8ae0..0x2d8af2 unwind=0x3d2064
2d8ae0  48 83 ec 28                    sub    rsp,0x28
2d8ae4  e8 3b 48 ff ff                 call   0x2cd324
2d8ae9  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
2d8aed  48 83 c4 28                    add    rsp,0x28
2d8af1  c3                             ret

; heuristic leaf/code range 0x2d7e10..0x2d7e15 unwind=0x0
2d7e10  48 8b 41 38                    mov    rax,QWORD PTR [rcx+0x38]
2d7e14  c3                             ret

; heuristic leaf/code range 0x2d4dc0..0x2d4dc8 unwind=0x0
2d4dc0  e9 f3 ff ff ff                 jmp    0x2d4db8
2d4dc5  cc                             int3
2d4dc6  cc                             int3
2d4dc7  cc                             int3

; heuristic leaf/code range 0x2d4db8..0x2d4dc0 unwind=0x0
2d4db8  48 8b 01                       mov    rax,QWORD PTR [rcx]
2d4dbb  48 83 c0 10                    add    rax,0x10
2d4dbf  c3                             ret

; heuristic leaf/code range 0x2d4e38..0x2d4e46 unwind=0x0
2d4e38  48 8b 01                       mov    rax,QWORD PTR [rcx]
2d4e3b  48 8b 50 08                    mov    rdx,QWORD PTR [rax+0x8]
2d4e3f  48 8b c1                       mov    rax,rcx
2d4e42  48 89 11                       mov    QWORD PTR [rcx],rdx
2d4e45  c3                             ret

; heuristic leaf/code range 0x2d4df0..0x2d4dfd unwind=0x0
2d4df0  48 8b 01                       mov    rax,QWORD PTR [rcx]
2d4df3  48 8b 10                       mov    rdx,QWORD PTR [rax]
2d4df6  48 8b c1                       mov    rax,rcx
2d4df9  48 89 11                       mov    QWORD PTR [rcx],rdx
2d4dfc  c3                             ret

; heuristic leaf/code range 0x2d7af8..0x2d7b1d unwind=0x0
2d7af8  4c 8b 52 08                    mov    r10,QWORD PTR [rdx+0x8]
2d7afc  4d 89 02                       mov    QWORD PTR [r10],r8
2d7aff  4d 8b 48 08                    mov    r9,QWORD PTR [r8+0x8]
2d7b03  49 89 09                       mov    QWORD PTR [r9],rcx
2d7b06  48 8b 41 08                    mov    rax,QWORD PTR [rcx+0x8]
2d7b0a  48 89 10                       mov    QWORD PTR [rax],rdx
2d7b0d  4c 89 49 08                    mov    QWORD PTR [rcx+0x8],r9
2d7b11  4d 89 50 08                    mov    QWORD PTR [r8+0x8],r10
2d7b15  48 89 42 08                    mov    QWORD PTR [rdx+0x8],rax
2d7b19  49 8b c0                       mov    rax,r8
2d7b1c  c3                             ret

