; pdata function 0x2dbb70..0x2dbbdd unwind=0x3d20e4
2dbb70  40 53                          rex push rbx
2dbb72  48 83 ec 40                    sub    rsp,0x40
2dbb76  48 8b d9                       mov    rbx,rcx
2dbb79  48 8d 0d 90 cb f3 ff           lea    rcx,[rip+0xfffffffffff3cb90]        # 0x218710
2dbb80  e8 67 1c ff ff                 call   0x2cd7ec
2dbb85  48 8b c8                       mov    rcx,rax
2dbb88  e8 47 9c ff ff                 call   0x2d57d4
2dbb8d  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2dbb92  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
2dbb97  e8 80 94 ff ff                 call   0x2d501c ; STRING getter=0x2d501c \
2dbb9c  48 8b c8                       mov    rcx,rax
2dbb9f  e8 c0 c8 ff ff                 call   0x2d8464
2dbba4  4c 8b c0                       mov    r8,rax
2dbba7  48 8d 15 62 cb f3 ff           lea    rdx,[rip+0xfffffffffff3cb62]        # 0x218710
2dbbae  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbbb3  e8 1c 34 ff ff                 call   0x2cefd4
2dbbb8  48 8b d0                       mov    rdx,rax
2dbbbb  4c 8d 05 fe b2 0f 00           lea    r8,[rip+0xfb2fe]        # 0x3d6ec0
2dbbc2  48 8b cb                       mov    rcx,rbx
2dbbc5  e8 9a 33 ff ff                 call   0x2cef64
2dbbca  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbbcf  e8 20 09 ff ff                 call   0x2cc4f4
2dbbd4  48 8b c3                       mov    rax,rbx
2dbbd7  48 83 c4 40                    add    rsp,0x40
2dbbdb  5b                             pop    rbx
2dbbdc  c3                             ret

; pdata function 0x2dbb00..0x2dbb6d unwind=0x3d20e4
2dbb00  40 53                          rex push rbx
2dbb02  48 83 ec 40                    sub    rsp,0x40
2dbb06  48 8b d9                       mov    rbx,rcx
2dbb09  48 8d 0d 00 cc f3 ff           lea    rcx,[rip+0xfffffffffff3cc00]        # 0x218710
2dbb10  e8 d7 1c ff ff                 call   0x2cd7ec
2dbb15  48 8b c8                       mov    rcx,rax
2dbb18  e8 b7 9c ff ff                 call   0x2d57d4
2dbb1d  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2dbb22  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
2dbb27  e8 f0 94 ff ff                 call   0x2d501c ; STRING getter=0x2d501c \
2dbb2c  48 8b c8                       mov    rcx,rax
2dbb2f  e8 30 c9 ff ff                 call   0x2d8464
2dbb34  4c 8b c0                       mov    r8,rax
2dbb37  48 8d 15 d2 cb f3 ff           lea    rdx,[rip+0xfffffffffff3cbd2]        # 0x218710
2dbb3e  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbb43  e8 8c 34 ff ff                 call   0x2cefd4
2dbb48  48 8b d0                       mov    rdx,rax
2dbb4b  4c 8d 05 8e b3 0f 00           lea    r8,[rip+0xfb38e]        # 0x3d6ee0
2dbb52  48 8b cb                       mov    rcx,rbx
2dbb55  e8 0a 34 ff ff                 call   0x2cef64
2dbb5a  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbb5f  e8 90 09 ff ff                 call   0x2cc4f4
2dbb64  48 8b c3                       mov    rax,rbx
2dbb67  48 83 c4 40                    add    rsp,0x40
2dbb6b  5b                             pop    rbx
2dbb6c  c3                             ret

; pdata function 0x2d5be4..0x2d5cd5 unwind=0x3d236c
2d5be4  40 53                          rex push rbx
2d5be6  56                             push   rsi
2d5be7  57                             push   rdi
2d5be8  48 83 ec 30                    sub    rsp,0x30
2d5bec  8b 05 de 10 10 00              mov    eax,DWORD PTR [rip+0x1010de]        # 0x3d6cd0
2d5bf2  48 8b f1                       mov    rsi,rcx
2d5bf5  a8 01                          test   al,0x1
2d5bf7  0f 85 83 00 00 00              jne    0x2d5c80
2d5bfd  83 c8 01                       or     eax,0x1
2d5c00  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
2d5c05  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2d5c0a  89 05 c0 10 10 00              mov    DWORD PTR [rip+0x1010c0],eax        # 0x3d6cd0
2d5c10  e8 9b f7 ff ff                 call   0x2d53b0 ; STRING getter=0x2d53b0 Exists
2d5c15  48 8b c8                       mov    rcx,rax
2d5c18  e8 d7 80 ff ff                 call   0x2cdcf4
2d5c1d  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d5c22  48 8b f8                       mov    rdi,rax
2d5c25  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2d5c2a  e8 35 f6 ff ff                 call   0x2d5264 ; STRING getter=0x2d5264 System.IO
2d5c2f  48 8b c8                       mov    rcx,rax
2d5c32  e8 0d 81 ff ff                 call   0x2cdd44
2d5c37  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2d5c3c  48 8b d8                       mov    rbx,rax
2d5c3f  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2d5c44  e8 2f f4 ff ff                 call   0x2d5078 ; STRING getter=0x2d5078 File
2d5c49  48 8b c8                       mov    rcx,rax
2d5c4c  e8 7b 80 ff ff                 call   0x2cdccc
2d5c51  48 8b c8                       mov    rcx,rax
2d5c54  48 8b d3                       mov    rdx,rbx
2d5c57  e8 c8 e5 05 00                 call   0x334224
2d5c5c  45 33 c9                       xor    r9d,r9d
2d5c5f  48 8b c8                       mov    rcx,rax
2d5c62  48 8b d7                       mov    rdx,rdi
2d5c65  45 8d 41 01                    lea    r8d,[r9+0x1]
2d5c69  e8 22 ee 05 00                 call   0x334a90
2d5c6e  4c 8b 00                       mov    r8,QWORD PTR [rax]
2d5c71  8b 05 59 10 10 00              mov    eax,DWORD PTR [rip+0x101059]        # 0x3d6cd0
2d5c77  4c 89 05 4a 10 10 00           mov    QWORD PTR [rip+0x10104a],r8        # 0x3d6cc8
2d5c7e  eb 07                          jmp    0x2d5c87
2d5c80  4c 8b 05 41 10 10 00           mov    r8,QWORD PTR [rip+0x101041]        # 0x3d6cc8
2d5c87  a8 02                          test   al,0x2
2d5c89  75 1f                          jne    0x2d5caa
2d5c8b  48 8b 0d ce 01 10 00           mov    rcx,QWORD PTR [rip+0x1001ce]        # 0x3d5e60
2d5c92  48 8d 15 47 10 10 00           lea    rdx,[rip+0x101047]        # 0x3d6ce0
2d5c99  83 c8 02                       or     eax,0x2
2d5c9c  45 33 c9                       xor    r9d,r9d
2d5c9f  89 05 2b 10 10 00              mov    DWORD PTR [rip+0x10102b],eax        # 0x3d6cd0
2d5ca5  e8 7a 60 ff ff                 call   0x2cbd24
2d5caa  48 8b ce                       mov    rcx,rsi
2d5cad  e8 2a 89 ff ff                 call   0x2ce5dc
2d5cb2  48 8b 0d a7 01 10 00           mov    rcx,QWORD PTR [rip+0x1001a7]        # 0x3d5e60
2d5cb9  48 8d 15 20 10 10 00           lea    rdx,[rip+0x101020]        # 0x3d6ce0
2d5cc0  4c 8b c0                       mov    r8,rax
2d5cc3  e8 34 5d ff ff                 call   0x2cb9fc
2d5cc8  84 c0                          test   al,al
2d5cca  0f 95 c0                       setne  al
2d5ccd  48 83 c4 30                    add    rsp,0x30
2d5cd1  5f                             pop    rdi
2d5cd2  5e                             pop    rsi
2d5cd3  5b                             pop    rbx
2d5cd4  c3                             ret

; pdata function 0x2dbbe0..0x2dbebd unwind=0x3d292c
2dbbe0  48 8b c4                       mov    rax,rsp
2dbbe3  48 89 58 20                    mov    QWORD PTR [rax+0x20],rbx
2dbbe7  55                             push   rbp
2dbbe8  56                             push   rsi
2dbbe9  57                             push   rdi
2dbbea  48 8d 68 a8                    lea    rbp,[rax-0x58]
2dbbee  48 81 ec 40 01 00 00           sub    rsp,0x140
2dbbf5  0f 29 70 d8                    movaps XMMWORD PTR [rax-0x28],xmm6
2dbbf9  48 8d 4d a8                    lea    rcx,[rbp-0x58]
2dbbfd  0f 29 78 c8                    movaps XMMWORD PTR [rax-0x38],xmm7
2dbc01  e8 fa fe ff ff                 call   0x2dbb00
2dbc06  48 8d 4d a8                    lea    rcx,[rbp-0x58]
2dbc0a  e8 dd 1b ff ff                 call   0x2cd7ec
2dbc0f  48 8b c8                       mov    rcx,rax
2dbc12  e8 cd 9f ff ff                 call   0x2d5be4
2dbc17  84 c0                          test   al,al
2dbc19  0f 84 78 02 00 00              je     0x2dbe97
2dbc1f  48 8d 4d a8                    lea    rcx,[rbp-0x58]
2dbc23  e8 c4 1b ff ff                 call   0x2cd7ec
2dbc28  48 8b c8                       mov    rcx,rax
2dbc2b  e8 84 a5 ff ff                 call   0x2d61b4
2dbc30  48 8b d8                       mov    rbx,rax
2dbc33  48 85 c0                       test   rax,rax
2dbc36  0f 84 5b 02 00 00              je     0x2dbe97
2dbc3c  48 8b c8                       mov    rcx,rax
2dbc3f  e8 c0 52 ff ff                 call   0x2d0f04
2dbc44  4c 8b 43 18                    mov    r8,QWORD PTR [rbx+0x18]
2dbc48  48 8d 4d e8                    lea    rcx,[rbp-0x18]
2dbc4c  48 8b d0                       mov    rdx,rax
2dbc4f  e8 18 f5 ff ff                 call   0x2db16c
2dbc54  48 8d 55 60                    lea    rdx,[rbp+0x60]
2dbc58  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2dbc5c  e8 77 95 ff ff                 call   0x2d51d8 ; STRING getter=0x2d51d8 ,
2dbc61  48 8b c8                       mov    rcx,rax
2dbc64  e8 fb c7 ff ff                 call   0x2d8464
2dbc69  48 8b d0                       mov    rdx,rax
2dbc6c  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbc71  e8 56 06 ff ff                 call   0x2cc2cc
2dbc76  4c 8d 44 24 20                 lea    r8,[rsp+0x20]
2dbc7b  48 8d 55 e8                    lea    rdx,[rbp-0x18]
2dbc7f  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2dbc84  e8 73 d7 ff ff                 call   0x2d93fc
2dbc89  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbc8e  e8 61 08 ff ff                 call   0x2cc4f4
2dbc93  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2dbc98  e8 bb 8a ff ff                 call   0x2d4758
2dbc9d  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2dbca2  e8 19 bd ff ff                 call   0x2d79c0
2dbca7  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2dbcac  48 8b f8                       mov    rdi,rax
2dbcaf  e8 c4 5c ff ff                 call   0x2d1978
2dbcb4  48 8b d8                       mov    rbx,rax
2dbcb7  48 3b c7                       cmp    rax,rdi
2dbcba  0f 84 a9 01 00 00              je     0x2dbe69
2dbcc0  be 0a 00 00 00                 mov    esi,0xa
2dbcc5  48 8d 55 68                    lea    rdx,[rbp+0x68]
2dbcc9  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2dbccd  e8 66 fc ff ff                 call   0x2db938 ; STRING getter=0x2db938 |
2dbcd2  48 8b c8                       mov    rcx,rax
2dbcd5  e8 8a c7 ff ff                 call   0x2d8464
2dbcda  48 8b d0                       mov    rdx,rax
2dbcdd  48 8d 4d c8                    lea    rcx,[rbp-0x38]
2dbce1  e8 e6 05 ff ff                 call   0x2cc2cc
2dbce6  4c 8d 45 c8                    lea    r8,[rbp-0x38]
2dbcea  48 8b d3                       mov    rdx,rbx
2dbced  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbcf2  e8 05 d7 ff ff                 call   0x2d93fc
2dbcf7  48 8d 4d c8                    lea    rcx,[rbp-0x38]
2dbcfb  e8 f4 07 ff ff                 call   0x2cc4f4
2dbd00  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbd05  e8 de d6 ff ff                 call   0x2d93e8
2dbd0a  48 83 f8 07                    cmp    rax,0x7
2dbd0e  0f 85 3e 01 00 00              jne    0x2dbe52
2dbd14  33 d2                          xor    edx,edx
2dbd16  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbd1b  e8 00 90 ff ff                 call   0x2d4d20
2dbd20  48 8b c8                       mov    rcx,rax
2dbd23  44 8b c6                       mov    r8d,esi
2dbd26  33 d2                          xor    edx,edx
2dbd28  e8 93 cf ff ff                 call   0x2d8cc0
2dbd2d  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2dbd32  89 45 70                       mov    DWORD PTR [rbp+0x70],eax
2dbd35  e8 ba 8b ff ff                 call   0x2d48f4
2dbd3a  ba 03 00 00 00                 mov    edx,0x3
2dbd3f  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbd44  e8 d7 8f ff ff                 call   0x2d4d20
2dbd49  48 8b c8                       mov    rcx,rax
2dbd4c  44 8b c6                       mov    r8d,esi
2dbd4f  33 d2                          xor    edx,edx
2dbd51  e8 6a cf ff ff                 call   0x2d8cc0
2dbd56  ba 02 00 00 00                 mov    edx,0x2
2dbd5b  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbd60  66 0f 6e f8                    movd   xmm7,eax
2dbd64  0f 5b ff                       cvtdq2ps xmm7,xmm7
2dbd67  f3 0f 5e 3d 91 18 fb ff        divss  xmm7,DWORD PTR [rip+0xfffffffffffb1891]        # 0x28d600 ; f32=1000
2dbd6f  e8 ac 8f ff ff                 call   0x2d4d20
2dbd74  48 8b c8                       mov    rcx,rax
2dbd77  44 8b c6                       mov    r8d,esi
2dbd7a  33 d2                          xor    edx,edx
2dbd7c  e8 3f cf ff ff                 call   0x2d8cc0
2dbd81  ba 01 00 00 00                 mov    edx,0x1
2dbd86  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbd8b  66 0f 6e f0                    movd   xmm6,eax
2dbd8f  0f 5b f6                       cvtdq2ps xmm6,xmm6
2dbd92  f3 0f 5e 35 66 18 fb ff        divss  xmm6,DWORD PTR [rip+0xfffffffffffb1866]        # 0x28d600 ; f32=1000
2dbd9a  e8 81 8f ff ff                 call   0x2d4d20
2dbd9f  48 8b c8                       mov    rcx,rax
2dbda2  44 8b c6                       mov    r8d,esi
2dbda5  33 d2                          xor    edx,edx
2dbda7  e8 14 cf ff ff                 call   0x2d8cc0
2dbdac  48 8d 4d 08                    lea    rcx,[rbp+0x8]
2dbdb0  66 0f 6e c8                    movd   xmm1,eax
2dbdb4  0f 28 df                       movaps xmm3,xmm7
2dbdb7  0f 28 d6                       movaps xmm2,xmm6
2dbdba  0f 5b c9                       cvtdq2ps xmm1,xmm1
2dbdbd  f3 0f 5e 0d 3b 18 fb ff        divss  xmm1,DWORD PTR [rip+0xfffffffffffb183b]        # 0x28d600 ; f32=1000
2dbdc5  e8 de bd 0e 00                 call   0x3c7ba8
2dbdca  ba 04 00 00 00                 mov    edx,0x4
2dbdcf  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbdd4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2dbdd8  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
2dbdde  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2dbde1  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
2dbde5  e8 36 8f ff ff                 call   0x2d4d20
2dbdea  48 8b c8                       mov    rcx,rax
2dbded  44 8b c6                       mov    r8d,esi
2dbdf0  33 d2                          xor    edx,edx
2dbdf2  e8 c9 ce ff ff                 call   0x2d8cc0
2dbdf7  ba 05 00 00 00                 mov    edx,0x5
2dbdfc  89 44 24 7c                    mov    DWORD PTR [rsp+0x7c],eax
2dbe00  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbe05  e8 16 8f ff ff                 call   0x2d4d20
2dbe0a  48 8b c8                       mov    rcx,rax
2dbe0d  44 8b c6                       mov    r8d,esi
2dbe10  33 d2                          xor    edx,edx
2dbe12  e8 a9 ce ff ff                 call   0x2d8cc0
2dbe17  ba 06 00 00 00                 mov    edx,0x6
2dbe1c  89 45 80                       mov    DWORD PTR [rbp-0x80],eax
2dbe1f  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbe24  e8 f7 8e ff ff                 call   0x2d4d20
2dbe29  48 8b d0                       mov    rdx,rax
2dbe2c  48 8d 4d 88                    lea    rcx,[rbp-0x78]
2dbe30  e8 ef 8d ff ff                 call   0x2d4c24
2dbe35  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
2dbe3a  48 8d 55 70                    lea    rdx,[rbp+0x70]
2dbe3e  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2dbe43  e8 78 6b ff ff                 call   0x2d29c0
2dbe48  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2dbe4d  e8 3e 8c ff ff                 call   0x2d4a90
2dbe52  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbe57  e8 24 8c ff ff                 call   0x2d4a80
2dbe5c  48 83 c3 20                    add    rbx,0x20
2dbe60  48 3b df                       cmp    rbx,rdi
2dbe63  0f 85 5c fe ff ff              jne    0x2dbcc5
2dbe69  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2dbe6e  48 8d 0d 0b c9 f3 ff           lea    rcx,[rip+0xfffffffffff3c90b]        # 0x218780
2dbe75  e8 7e f8 ff ff                 call   0x2db6f8
2dbe7a  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2dbe7f  e8 f4 8b ff ff                 call   0x2d4a78
2dbe84  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2dbe89  e8 f2 8b ff ff                 call   0x2d4a80
2dbe8e  48 8d 4d e8                    lea    rcx,[rbp-0x18]
2dbe92  e8 5d 06 ff ff                 call   0x2cc4f4
2dbe97  48 8d 4d a8                    lea    rcx,[rbp-0x58]
2dbe9b  e8 54 06 ff ff                 call   0x2cc4f4
2dbea0  4c 8d 9c 24 40 01 00 00        lea    r11,[rsp+0x140]
2dbea8  49 8b 5b 38                    mov    rbx,QWORD PTR [r11+0x38]
2dbeac  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
2dbeb1  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
2dbeb6  49 8b e3                       mov    rsp,r11
2dbeb9  5f                             pop    rdi
2dbeba  5e                             pop    rsi
2dbebb  5d                             pop    rbp
2dbebc  c3                             ret

; pdata function 0x2dbec0..0x2dc19d unwind=0x3d292c
2dbec0  48 8b c4                       mov    rax,rsp
2dbec3  48 89 58 20                    mov    QWORD PTR [rax+0x20],rbx
2dbec7  55                             push   rbp
2dbec8  56                             push   rsi
2dbec9  57                             push   rdi
2dbeca  48 8d 68 a8                    lea    rbp,[rax-0x58]
2dbece  48 81 ec 40 01 00 00           sub    rsp,0x140
2dbed5  0f 29 70 d8                    movaps XMMWORD PTR [rax-0x28],xmm6
2dbed9  48 8d 4d a8                    lea    rcx,[rbp-0x58]
2dbedd  0f 29 78 c8                    movaps XMMWORD PTR [rax-0x38],xmm7
2dbee1  e8 8a fc ff ff                 call   0x2dbb70
2dbee6  48 8d 4d a8                    lea    rcx,[rbp-0x58]
2dbeea  e8 fd 18 ff ff                 call   0x2cd7ec
2dbeef  48 8b c8                       mov    rcx,rax
2dbef2  e8 ed 9c ff ff                 call   0x2d5be4
2dbef7  84 c0                          test   al,al
2dbef9  0f 84 78 02 00 00              je     0x2dc177
2dbeff  48 8d 4d a8                    lea    rcx,[rbp-0x58]
2dbf03  e8 e4 18 ff ff                 call   0x2cd7ec
2dbf08  48 8b c8                       mov    rcx,rax
2dbf0b  e8 a4 a2 ff ff                 call   0x2d61b4
2dbf10  48 8b d8                       mov    rbx,rax
2dbf13  48 85 c0                       test   rax,rax
2dbf16  0f 84 5b 02 00 00              je     0x2dc177
2dbf1c  48 8b c8                       mov    rcx,rax
2dbf1f  e8 e0 4f ff ff                 call   0x2d0f04
2dbf24  4c 8b 43 18                    mov    r8,QWORD PTR [rbx+0x18]
2dbf28  48 8d 4d e8                    lea    rcx,[rbp-0x18]
2dbf2c  48 8b d0                       mov    rdx,rax
2dbf2f  e8 38 f2 ff ff                 call   0x2db16c
2dbf34  48 8d 55 60                    lea    rdx,[rbp+0x60]
2dbf38  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2dbf3c  e8 97 92 ff ff                 call   0x2d51d8 ; STRING getter=0x2d51d8 ,
2dbf41  48 8b c8                       mov    rcx,rax
2dbf44  e8 1b c5 ff ff                 call   0x2d8464
2dbf49  48 8b d0                       mov    rdx,rax
2dbf4c  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbf51  e8 76 03 ff ff                 call   0x2cc2cc
2dbf56  4c 8d 44 24 20                 lea    r8,[rsp+0x20]
2dbf5b  48 8d 55 e8                    lea    rdx,[rbp-0x18]
2dbf5f  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2dbf64  e8 93 d4 ff ff                 call   0x2d93fc
2dbf69  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbf6e  e8 81 05 ff ff                 call   0x2cc4f4
2dbf73  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2dbf78  e8 db 87 ff ff                 call   0x2d4758
2dbf7d  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2dbf82  e8 39 ba ff ff                 call   0x2d79c0
2dbf87  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2dbf8c  48 8b f8                       mov    rdi,rax
2dbf8f  e8 e4 59 ff ff                 call   0x2d1978
2dbf94  48 8b d8                       mov    rbx,rax
2dbf97  48 3b c7                       cmp    rax,rdi
2dbf9a  0f 84 a9 01 00 00              je     0x2dc149
2dbfa0  be 0a 00 00 00                 mov    esi,0xa
2dbfa5  48 8d 55 68                    lea    rdx,[rbp+0x68]
2dbfa9  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2dbfad  e8 86 f9 ff ff                 call   0x2db938 ; STRING getter=0x2db938 |
2dbfb2  48 8b c8                       mov    rcx,rax
2dbfb5  e8 aa c4 ff ff                 call   0x2d8464
2dbfba  48 8b d0                       mov    rdx,rax
2dbfbd  48 8d 4d c8                    lea    rcx,[rbp-0x38]
2dbfc1  e8 06 03 ff ff                 call   0x2cc2cc
2dbfc6  4c 8d 45 c8                    lea    r8,[rbp-0x38]
2dbfca  48 8b d3                       mov    rdx,rbx
2dbfcd  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbfd2  e8 25 d4 ff ff                 call   0x2d93fc
2dbfd7  48 8d 4d c8                    lea    rcx,[rbp-0x38]
2dbfdb  e8 14 05 ff ff                 call   0x2cc4f4
2dbfe0  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbfe5  e8 fe d3 ff ff                 call   0x2d93e8
2dbfea  48 83 f8 07                    cmp    rax,0x7
2dbfee  0f 85 3e 01 00 00              jne    0x2dc132
2dbff4  33 d2                          xor    edx,edx
2dbff6  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dbffb  e8 20 8d ff ff                 call   0x2d4d20
2dc000  48 8b c8                       mov    rcx,rax
2dc003  44 8b c6                       mov    r8d,esi
2dc006  33 d2                          xor    edx,edx
2dc008  e8 b3 cc ff ff                 call   0x2d8cc0
2dc00d  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2dc012  89 45 70                       mov    DWORD PTR [rbp+0x70],eax
2dc015  e8 da 88 ff ff                 call   0x2d48f4
2dc01a  ba 03 00 00 00                 mov    edx,0x3
2dc01f  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dc024  e8 f7 8c ff ff                 call   0x2d4d20
2dc029  48 8b c8                       mov    rcx,rax
2dc02c  44 8b c6                       mov    r8d,esi
2dc02f  33 d2                          xor    edx,edx
2dc031  e8 8a cc ff ff                 call   0x2d8cc0
2dc036  ba 02 00 00 00                 mov    edx,0x2
2dc03b  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dc040  66 0f 6e f8                    movd   xmm7,eax
2dc044  0f 5b ff                       cvtdq2ps xmm7,xmm7
2dc047  f3 0f 5e 3d b1 15 fb ff        divss  xmm7,DWORD PTR [rip+0xfffffffffffb15b1]        # 0x28d600 ; f32=1000
2dc04f  e8 cc 8c ff ff                 call   0x2d4d20
2dc054  48 8b c8                       mov    rcx,rax
2dc057  44 8b c6                       mov    r8d,esi
2dc05a  33 d2                          xor    edx,edx
2dc05c  e8 5f cc ff ff                 call   0x2d8cc0
2dc061  ba 01 00 00 00                 mov    edx,0x1
2dc066  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dc06b  66 0f 6e f0                    movd   xmm6,eax
2dc06f  0f 5b f6                       cvtdq2ps xmm6,xmm6
2dc072  f3 0f 5e 35 86 15 fb ff        divss  xmm6,DWORD PTR [rip+0xfffffffffffb1586]        # 0x28d600 ; f32=1000
2dc07a  e8 a1 8c ff ff                 call   0x2d4d20
2dc07f  48 8b c8                       mov    rcx,rax
2dc082  44 8b c6                       mov    r8d,esi
2dc085  33 d2                          xor    edx,edx
2dc087  e8 34 cc ff ff                 call   0x2d8cc0
2dc08c  48 8d 4d 08                    lea    rcx,[rbp+0x8]
2dc090  66 0f 6e c8                    movd   xmm1,eax
2dc094  0f 28 df                       movaps xmm3,xmm7
2dc097  0f 28 d6                       movaps xmm2,xmm6
2dc09a  0f 5b c9                       cvtdq2ps xmm1,xmm1
2dc09d  f3 0f 5e 0d 5b 15 fb ff        divss  xmm1,DWORD PTR [rip+0xfffffffffffb155b]        # 0x28d600 ; f32=1000
2dc0a5  e8 fe ba 0e 00                 call   0x3c7ba8
2dc0aa  ba 04 00 00 00                 mov    edx,0x4
2dc0af  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dc0b4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2dc0b8  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
2dc0be  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2dc0c1  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
2dc0c5  e8 56 8c ff ff                 call   0x2d4d20
2dc0ca  48 8b c8                       mov    rcx,rax
2dc0cd  44 8b c6                       mov    r8d,esi
2dc0d0  33 d2                          xor    edx,edx
2dc0d2  e8 e9 cb ff ff                 call   0x2d8cc0
2dc0d7  ba 05 00 00 00                 mov    edx,0x5
2dc0dc  89 44 24 7c                    mov    DWORD PTR [rsp+0x7c],eax
2dc0e0  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dc0e5  e8 36 8c ff ff                 call   0x2d4d20
2dc0ea  48 8b c8                       mov    rcx,rax
2dc0ed  44 8b c6                       mov    r8d,esi
2dc0f0  33 d2                          xor    edx,edx
2dc0f2  e8 c9 cb ff ff                 call   0x2d8cc0
2dc0f7  ba 06 00 00 00                 mov    edx,0x6
2dc0fc  89 45 80                       mov    DWORD PTR [rbp-0x80],eax
2dc0ff  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dc104  e8 17 8c ff ff                 call   0x2d4d20
2dc109  48 8b d0                       mov    rdx,rax
2dc10c  48 8d 4d 88                    lea    rcx,[rbp-0x78]
2dc110  e8 0f 8b ff ff                 call   0x2d4c24
2dc115  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
2dc11a  48 8d 55 70                    lea    rdx,[rbp+0x70]
2dc11e  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2dc123  e8 98 68 ff ff                 call   0x2d29c0
2dc128  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2dc12d  e8 5e 89 ff ff                 call   0x2d4a90
2dc132  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dc137  e8 44 89 ff ff                 call   0x2d4a80
2dc13c  48 83 c3 20                    add    rbx,0x20
2dc140  48 3b df                       cmp    rbx,rdi
2dc143  0f 85 5c fe ff ff              jne    0x2dbfa5
2dc149  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2dc14e  48 8d 0d 13 c6 f3 ff           lea    rcx,[rip+0xfffffffffff3c613]        # 0x218768
2dc155  e8 9e f5 ff ff                 call   0x2db6f8
2dc15a  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2dc15f  e8 14 89 ff ff                 call   0x2d4a78
2dc164  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2dc169  e8 12 89 ff ff                 call   0x2d4a80
2dc16e  48 8d 4d e8                    lea    rcx,[rbp-0x18]
2dc172  e8 7d 03 ff ff                 call   0x2cc4f4
2dc177  48 8d 4d a8                    lea    rcx,[rbp-0x58]
2dc17b  e8 74 03 ff ff                 call   0x2cc4f4
2dc180  4c 8d 9c 24 40 01 00 00        lea    r11,[rsp+0x140]
2dc188  49 8b 5b 38                    mov    rbx,QWORD PTR [r11+0x38]
2dc18c  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
2dc191  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
2dc196  49 8b e3                       mov    rsp,r11
2dc199  5f                             pop    rdi
2dc19a  5e                             pop    rsi
2dc19b  5d                             pop    rbp
2dc19c  c3                             ret

; pdata function 0x2dd284..0x2dd2db unwind=0x3d2948
2dd284  48 81 ec d8 00 00 00           sub    rsp,0xd8
2dd28b  48 8d 0d 7e b4 f3 ff           lea    rcx,[rip+0xfffffffffff3b47e]        # 0x218710
2dd292  e8 55 05 ff ff                 call   0x2cd7ec
2dd297  48 8b c8                       mov    rcx,rax
2dd29a  e8 35 85 ff ff                 call   0x2d57d4
2dd29f  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dd2a4  e8 57 8b ff ff                 call   0x2d5e00
2dd2a9  48 8b d0                       mov    rdx,rax
2dd2ac  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2dd2b1  e8 7a 76 ff ff                 call   0x2d4930
2dd2b6  48 8b d0                       mov    rdx,rax
2dd2b9  48 8d 0d 10 9b 0f 00           lea    rcx,[rip+0xf9b10]        # 0x3d6dd0
2dd2c0  e8 cf e5 ff ff                 call   0x2db894
2dd2c5  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2dd2ca  e8 95 e3 ff ff                 call   0x2db664
2dd2cf  48 81 c4 d8 00 00 00           add    rsp,0xd8
2dd2d6  e9 11 00 00 00                 jmp    0x2dd2ec

; pdata function 0x2d91c4..0x2d92eb unwind=0x3d25c8
2d91c4  40 55                          rex push rbp
2d91c6  53                             push   rbx
2d91c7  57                             push   rdi
2d91c8  48 8b ec                       mov    rbp,rsp
2d91cb  48 83 ec 50                    sub    rsp,0x50
2d91cf  48 8d 0d 3a f5 f3 ff           lea    rcx,[rip+0xfffffffffff3f53a]        # 0x218710
2d91d6  e8 11 46 ff ff                 call   0x2cd7ec
2d91db  48 8b c8                       mov    rcx,rax
2d91de  e8 f1 c5 ff ff                 call   0x2d57d4
2d91e3  48 8d 55 20                    lea    rdx,[rbp+0x20]
2d91e7  48 8d 4d 20                    lea    rcx,[rbp+0x20]
2d91eb  e8 98 bf ff ff                 call   0x2d5188 ; STRING getter=0x2d5188 *.bin
2d91f0  48 8b c8                       mov    rcx,rax
2d91f3  e8 bc f2 ff ff                 call   0x2d84b4
2d91f8  48 8d 0d 11 f5 f3 ff           lea    rcx,[rip+0xfffffffffff3f511]        # 0x218710
2d91ff  48 8b d8                       mov    rbx,rax
2d9202  e8 e5 45 ff ff                 call   0x2cd7ec
2d9207  48 8b d0                       mov    rdx,rax
2d920a  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2d920e  4c 8b c3                       mov    r8,rbx
2d9211  e8 6e cd ff ff                 call   0x2d5f84
2d9216  48 8d 55 20                    lea    rdx,[rbp+0x20]
2d921a  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2d921e  e8 8d f5 ff ff                 call   0x2d87b0
2d9223  48 8d 55 28                    lea    rdx,[rbp+0x28]
2d9227  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2d922b  48 8b 38                       mov    rdi,QWORD PTR [rax]
2d922e  e8 7d f5 ff ff                 call   0x2d87b0
2d9233  48 8d 55 30                    lea    rdx,[rbp+0x30]
2d9237  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2d923b  48 8b 18                       mov    rbx,QWORD PTR [rax]
2d923e  e8 4d eb ff ff                 call   0x2d7d90
2d9243  44 8a 4d 20                    mov    r9b,BYTE PTR [rbp+0x20]
2d9247  48 8d 4d 38                    lea    rcx,[rbp+0x38]
2d924b  4c 8b c3                       mov    r8,rbx
2d924e  48 8b 10                       mov    rdx,QWORD PTR [rax]
2d9251  e8 8a a3 ff ff                 call   0x2d35e0
2d9256  4c 8b cf                       mov    r9,rdi
2d9259  48 8d 55 d0                    lea    rdx,[rbp-0x30]
2d925d  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2d9261  4c 8b 00                       mov    r8,QWORD PTR [rax]
2d9264  e8 b3 f5 ff ff                 call   0x2d881c
2d9269  48 8d 3d e0 f4 f3 ff           lea    rdi,[rip+0xfffffffffff3f4e0]        # 0x218750
2d9270  48 8b cf                       mov    rcx,rdi
2d9273  48 8d 55 e0                    lea    rdx,[rbp-0x20]
2d9277  e8 f4 b9 ff ff                 call   0x2d4c70
2d927c  48 8d 55 20                    lea    rdx,[rbp+0x20]
2d9280  48 8b cf                       mov    rcx,rdi
2d9283  e8 28 f5 ff ff                 call   0x2d87b0
2d9288  48 8d 55 28                    lea    rdx,[rbp+0x28]
2d928c  48 8b cf                       mov    rcx,rdi
2d928f  48 8b 18                       mov    rbx,QWORD PTR [rax]
2d9292  e8 f9 ea ff ff                 call   0x2d7d90
2d9297  44 8a 45 20                    mov    r8b,BYTE PTR [rbp+0x20]
2d929b  48 8b d3                       mov    rdx,rbx
2d929e  48 8b 08                       mov    rcx,QWORD PTR [rax]
2d92a1  e8 be ab ff ff                 call   0x2d3e64
2d92a6  48 8d 0d 83 f4 f3 ff           lea    rcx,[rip+0xfffffffffff3f483]        # 0x218730
2d92ad  e8 12 d2 ff ff                 call   0x2d64c4
2d92b2  84 c0                          test   al,al
2d92b4  75 24                          jne    0x2d92da
2d92b6  48 8d 55 d0                    lea    rdx,[rbp-0x30]
2d92ba  48 8d 4d 20                    lea    rcx,[rbp+0x20]
2d92be  e8 49 c2 ff ff                 call   0x2d550c ; STRING getter=0x2d550c DefaultCfg.bin
2d92c3  48 8b c8                       mov    rcx,rax
2d92c6  e8 79 f3 ff ff                 call   0x2d8644
2d92cb  48 8b d0                       mov    rdx,rax
2d92ce  48 8d 0d 5b f4 f3 ff           lea    rcx,[rip+0xfffffffffff3f45b]        # 0x218730
2d92d5  e8 8e b9 ff ff                 call   0x2d4c68
2d92da  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2d92de  e8 9d b7 ff ff                 call   0x2d4a80
2d92e3  48 83 c4 50                    add    rsp,0x50
2d92e7  5f                             pop    rdi
2d92e8  5b                             pop    rbx
2d92e9  5d                             pop    rbp
2d92ea  c3                             ret

; pdata function 0x315c34..0x3163d5 unwind=0x3d2520
315c34  40 55                          rex push rbp
315c36  53                             push   rbx
315c37  56                             push   rsi
315c38  57                             push   rdi
315c39  41 56                          push   r14
315c3b  41 57                          push   r15
315c3d  48 8d 6c 24 f8                 lea    rbp,[rsp-0x8]
315c42  48 81 ec 08 01 00 00           sub    rsp,0x108
315c49  e8 7e 99 05 00                 call   0x36f5cc
315c4e  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315c53  e8 08 e9 fb ff                 call   0x2d4560
315c58  ba 04 00 00 00                 mov    edx,0x4
315c5d  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315c62  e8 85 36 fc ff                 call   0x2d92ec
315c67  33 db                          xor    ebx,ebx
315c69  48 8d 15 c0 47 f2 ff           lea    rdx,[rip+0xfffffffffff247c0]        # 0x23a430
315c70  8a 14 1a                       mov    dl,BYTE PTR [rdx+rbx*1]
315c73  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315c78  80 fa 0a                       cmp    dl,0xa
315c7b  75 4f                          jne    0x315ccc
315c7d  e8 12 2a fc ff                 call   0x2d8694
315c82  84 c0                          test   al,al
315c84  75 19                          jne    0x315c9f
315c86  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315c8b  e8 9c 4c 00 00                 call   0x31a92c
315c90  80 38 0d                       cmp    BYTE PTR [rax],0xd
315c93  75 0a                          jne    0x315c9f
315c95  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315c9a  e8 59 b0 00 00                 call   0x320cf8
315c9f  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315ca4  e8 2f 2e fc ff                 call   0x2d8ad8
315ca9  48 83 f8 04                    cmp    rax,0x4
315cad  75 11                          jne    0x315cc0
315caf  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
315cb4  48 8d 0d cd 2b f0 ff           lea    rcx,[rip+0xfffffffffff02bcd]        # 0x218888
315cbb  e8 5c 33 fc ff                 call   0x2d901c
315cc0  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315cc5  e8 aa 22 fc ff                 call   0x2d7f74
315cca  eb 05                          jmp    0x315cd1
315ccc  e8 a3 32 fc ff                 call   0x2d8f74
315cd1  48 ff c3                       inc    rbx
315cd4  48 81 fb 5e ea 00 00           cmp    rbx,0xea5e
315cdb  72 8c                          jb     0x315c69
315cdd  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315ce2  e8 ad 29 fc ff                 call   0x2d8694
315ce7  84 c0                          test   al,al
315ce9  75 3a                          jne    0x315d25
315ceb  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315cf0  e8 37 4c 00 00                 call   0x31a92c
315cf5  80 38 0d                       cmp    BYTE PTR [rax],0xd
315cf8  75 0a                          jne    0x315d04
315cfa  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315cff  e8 f4 af 00 00                 call   0x320cf8
315d04  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
315d09  e8 ca 2d fc ff                 call   0x2d8ad8
315d0e  48 83 f8 04                    cmp    rax,0x4
315d12  75 11                          jne    0x315d25
315d14  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
315d19  48 8d 0d 68 2b f0 ff           lea    rcx,[rip+0xfffffffffff02b68]        # 0x218888
315d20  e8 f7 32 fc ff                 call   0x2d901c
315d25  48 8d 55 40                    lea    rdx,[rbp+0x40]
315d29  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315d2d  e8 fe 69 fb ff                 call   0x2cc730
315d32  48 8b c8                       mov    rcx,rax
315d35  e8 6a 7f fb ff                 call   0x2cdca4
315d3a  48 8d 55 50                    lea    rdx,[rbp+0x50]
315d3e  48 8b f8                       mov    rdi,rax
315d41  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315d45  e8 ba d9 fd ff                 call   0x2f3704 ; STRING getter=0x2f3704 Update
315d4a  48 8b c8                       mov    rcx,rax
315d4d  e8 a2 7f fb ff                 call   0x2cdcf4
315d52  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315d57  48 8b d8                       mov    rbx,rax
315d5a  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315d5e  e8 ed c4 fd ff                 call   0x2f2250 ; STRING getter=0x2f2250 Projectile
315d63  48 8b c8                       mov    rcx,rax
315d66  e8 e9 3e fd ff                 call   0x2e9c54
315d6b  48 8b d0                       mov    rdx,rax
315d6e  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315d73  4c 8d 0d 96 50 01 00           lea    r9,[rip+0x15096]        # 0x32ae10
315d7a  4c 8b c3                       mov    r8,rbx
315d7d  48 8d 0d ac ab 0d 00           lea    rcx,[rip+0xdabac]        # 0x3f0930
315d84  e8 83 4b fd ff                 call   0x2ea90c
315d89  48 8d 55 40                    lea    rdx,[rbp+0x40]
315d8d  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315d91  e8 9a 69 fb ff                 call   0x2cc730
315d96  48 8b c8                       mov    rcx,rax
315d99  e8 06 7f fb ff                 call   0x2cdca4
315d9e  48 8d 55 50                    lea    rdx,[rbp+0x50]
315da2  48 8b f8                       mov    rdi,rax
315da5  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315da9  e8 1a ec fd ff                 call   0x2f49c8 ; STRING getter=0x2f49c8 Update
315dae  48 8b c8                       mov    rcx,rax
315db1  e8 3e 7f fb ff                 call   0x2cdcf4
315db6  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315dbb  48 8b d8                       mov    rbx,rax
315dbe  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315dc2  e8 c9 e4 fd ff                 call   0x2f4290 ; STRING getter=0x2f4290 WaterOverlay
315dc7  48 8b c8                       mov    rcx,rax
315dca  e8 25 28 fc ff                 call   0x2d85f4
315dcf  48 8b d0                       mov    rdx,rax
315dd2  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315dd7  4c 8d 0d 76 c7 01 00           lea    r9,[rip+0x1c776]        # 0x332554
315dde  4c 8b c3                       mov    r8,rbx
315de1  48 8d 0d e0 09 0d 00           lea    rcx,[rip+0xd09e0]        # 0x3e67c8
315de8  e8 1f 4b fd ff                 call   0x2ea90c
315ded  48 8d 55 40                    lea    rdx,[rbp+0x40]
315df1  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315df5  e8 36 69 fb ff                 call   0x2cc730
315dfa  48 8b c8                       mov    rcx,rax
315dfd  e8 a2 7e fb ff                 call   0x2cdca4
315e02  48 8d 55 50                    lea    rdx,[rbp+0x50]
315e06  48 8b f8                       mov    rdi,rax
315e09  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315e0d  e8 d6 01 fe ff                 call   0x2f5fe8 ; STRING getter=0x2f5fe8 Update
315e12  48 8b c8                       mov    rcx,rax
315e15  e8 da 7e fb ff                 call   0x2cdcf4
315e1a  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315e1f  48 8b d8                       mov    rbx,rax
315e22  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315e26  e8 d1 f3 fd ff                 call   0x2f51fc ; STRING getter=0x2f51fc SmokeGrenade
315e2b  48 8b c8                       mov    rcx,rax
315e2e  e8 c1 27 fc ff                 call   0x2d85f4
315e33  48 8b d0                       mov    rdx,rax
315e36  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315e3b  4c 8d 0d f6 91 01 00           lea    r9,[rip+0x191f6]        # 0x32f038
315e42  4c 8b c3                       mov    r8,rbx
315e45  48 8d 0d b4 09 0d 00           lea    rcx,[rip+0xd09b4]        # 0x3e6800
315e4c  e8 bb 4a fd ff                 call   0x2ea90c
315e51  48 8d 55 40                    lea    rdx,[rbp+0x40]
315e55  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315e59  e8 d2 68 fb ff                 call   0x2cc730
315e5e  48 8b c8                       mov    rcx,rax
315e61  e8 3e 7e fb ff                 call   0x2cdca4
315e66  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315e6b  48 8b f8                       mov    rdi,rax
315e6e  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315e72  e8 4d 14 fe ff                 call   0x2f72c4 ; STRING getter=0x2f72c4 LateUpdate
315e77  48 8b c8                       mov    rcx,rax
315e7a  e8 d5 3d fd ff                 call   0x2e9c54
315e7f  48 8b d8                       mov    rbx,rax
315e82  48 8d 55 50                    lea    rdx,[rbp+0x50]
315e86  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315e8a  e8 ed 0c fe ff                 call   0x2f6b7c
315e8f  48 8b c8                       mov    rcx,rax
315e92  e8 7d d7 fc ff                 call   0x2e3614
315e97  48 8b d0                       mov    rdx,rax
315e9a  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315e9f  4c 8d 0d 62 95 01 00           lea    r9,[rip+0x19562]        # 0x32f408
315ea6  4c 8b c3                       mov    r8,rbx
315ea9  48 8d 0d 88 09 0d 00           lea    rcx,[rip+0xd0988]        # 0x3e6838
315eb0  e8 57 4a fd ff                 call   0x2ea90c
315eb5  48 8d 55 40                    lea    rdx,[rbp+0x40]
315eb9  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315ebd  e8 6e 68 fb ff                 call   0x2cc730
315ec2  48 8b c8                       mov    rcx,rax
315ec5  e8 da 7d fb ff                 call   0x2cdca4
315eca  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
315ecf  48 8b f8                       mov    rdi,rax
315ed2  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315ed6  e8 29 a4 fd ff                 call   0x2f0304 ; STRING getter=0x2f0304 %ff5c768afbd21540016ff268deca16199f9d287c
315edb  48 8b c8                       mov    rcx,rax
315ede  e8 21 d8 fc ff                 call   0x2e3704
315ee3  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
315ee8  48 8b d8                       mov    rbx,rax
315eeb  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315eef  e8 dc 1d fe ff                 call   0x2f7cd0 ; STRING getter=0x2f7cd0 ItemIcon
315ef4  48 8b c8                       mov    rcx,rax
315ef7  e8 90 3c fd ff                 call   0x2e9b8c
315efc  41 83 cf ff                    or     r15d,0xffffffff
315f00  4c 8d 0d c5 b6 00 00           lea    r9,[rip+0xb6c5]        # 0x3215cc
315f07  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
315f0c  48 8d 0d 5d 09 0d 00           lea    rcx,[rip+0xd095d]        # 0x3e6870
315f13  48 8b d0                       mov    rdx,rax
315f16  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315f1b  4c 8b c3                       mov    r8,rbx
315f1e  e8 55 4a fd ff                 call   0x2ea978
315f23  48 8d 55 40                    lea    rdx,[rbp+0x40]
315f27  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315f2b  e8 00 68 fb ff                 call   0x2cc730
315f30  48 8b c8                       mov    rcx,rax
315f33  e8 6c 7d fb ff                 call   0x2cdca4
315f38  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
315f3d  48 8b f8                       mov    rdi,rax
315f40  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315f44  e8 27 ac fd ff                 call   0x2f0b70 ; STRING getter=0x2f0b70 %123bd3a03dc442df4d55d50e4bcff18dffb8caf0
315f49  48 8b c8                       mov    rcx,rax
315f4c  e8 b3 d7 fc ff                 call   0x2e3704
315f51  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315f56  48 8b d8                       mov    rbx,rax
315f59  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315f5d  e8 06 a9 fd ff                 call   0x2f0868 ; STRING getter=0x2f0868 PlayerWalkMovement
315f62  48 8b c8                       mov    rcx,rax
315f65  e8 2a 7e fb ff                 call   0x2cdd94
315f6a  48 8b d0                       mov    rdx,rax
315f6d  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
315f72  4c 8d 0d 7f 4a 01 00           lea    r9,[rip+0x14a7f]        # 0x32a9f8
315f79  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315f7e  4c 8b c3                       mov    r8,rbx
315f81  48 8d 0d 38 a9 0d 00           lea    rcx,[rip+0xda938]        # 0x3f08c0
315f88  e8 eb 49 fd ff                 call   0x2ea978
315f8d  48 8d 55 40                    lea    rdx,[rbp+0x40]
315f91  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315f95  e8 96 67 fb ff                 call   0x2cc730
315f9a  48 8b c8                       mov    rcx,rax
315f9d  e8 02 7d fb ff                 call   0x2cdca4
315fa2  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
315fa7  48 8b f8                       mov    rdi,rax
315faa  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315fae  e8 b9 b1 fd ff                 call   0x2f116c ; STRING getter=0x2f116c %9a4b1fd10d6243652214a9bef78c6ecd197d0836
315fb3  48 8b c8                       mov    rcx,rax
315fb6  e8 49 d7 fc ff                 call   0x2e3704
315fbb  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
315fc0  48 8b d8                       mov    rbx,rax
315fc3  48 8d 4d 48                    lea    rcx,[rbp+0x48]
315fc7  e8 5c ae fd ff                 call   0x2f0e28 ; STRING getter=0x2f0e28 PlayerWalkMovement
315fcc  48 8b c8                       mov    rcx,rax
315fcf  e8 c0 7d fb ff                 call   0x2cdd94
315fd4  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
315fd9  4c 8d 0d 50 eb 00 00           lea    r9,[rip+0xeb50]        # 0x324b30
315fe0  48 8b d0                       mov    rdx,rax
315fe3  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
315fe8  4c 8b c3                       mov    r8,rbx
315feb  48 8d 0d b6 08 0d 00           lea    rcx,[rip+0xd08b6]        # 0x3e68a8
315ff2  e8 81 49 fd ff                 call   0x2ea978
315ff7  48 8d 55 40                    lea    rdx,[rbp+0x40]
315ffb  48 8d 4d 40                    lea    rcx,[rbp+0x40]
315fff  e8 2c 67 fb ff                 call   0x2cc730
316004  48 8b c8                       mov    rcx,rax
316007  e8 98 7c fb ff                 call   0x2cdca4
31600c  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
316011  48 8b f8                       mov    rdi,rax
316014  48 8d 4d 48                    lea    rcx,[rbp+0x48]
316018  e8 1f b8 fd ff                 call   0x2f183c ; STRING getter=0x2f183c %1d9a027bf72a0c970debaab6d90583b700d8985f
31601d  48 8b c8                       mov    rcx,rax
316020  e8 df d6 fc ff                 call   0x2e3704
316025  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
31602a  48 8b d8                       mov    rbx,rax
31602d  48 8d 4d 48                    lea    rcx,[rbp+0x48]
316031  e8 c6 b4 fd ff                 call   0x2f14fc ; STRING getter=0x2f14fc PlayerWalkMovement
316036  48 8b c8                       mov    rcx,rax
316039  e8 56 7d fb ff                 call   0x2cdd94
31603e  48 8b d0                       mov    rdx,rax
316041  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
316046  4c 8d 0d 9f ca 00 00           lea    r9,[rip+0xca9f]        # 0x322aec
31604d  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
316052  4c 8b c3                       mov    r8,rbx
316055  48 8d 0d 9c a8 0d 00           lea    rcx,[rip+0xda89c]        # 0x3f08f8
31605c  e8 17 49 fd ff                 call   0x2ea978
316061  48 8d 55 40                    lea    rdx,[rbp+0x40]
316065  48 8d 4d 40                    lea    rcx,[rbp+0x40]
316069  e8 c2 66 fb ff                 call   0x2cc730
31606e  48 8b c8                       mov    rcx,rax
316071  e8 2e 7c fb ff                 call   0x2cdca4
316076  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
31607b  48 8b d8                       mov    rbx,rax
31607e  48 8d 4d 48                    lea    rcx,[rbp+0x48]
316082  e8 45 ba fd ff                 call   0x2f1acc ; STRING getter=0x2f1acc %3d67d36f0966e1032c23f962d7b0990a6bc78bb0
316087  48 8b c8                       mov    rcx,rax
31608a  e8 75 d6 fc ff                 call   0x2e3704
31608f  48 8b d0                       mov    rdx,rax
316092  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
316097  4c 8b cb                       mov    r9,rbx
31609a  4c 8d 05 47 6a 01 00           lea    r8,[rip+0x16a47]        # 0x32cae8
3160a1  48 8d 0d 70 08 0d 00           lea    rcx,[rip+0xd0870]        # 0x3e6918
3160a8  e8 7b 49 fd ff                 call   0x2eaa28
3160ad  48 8d 55 40                    lea    rdx,[rbp+0x40]
3160b1  48 8d 4d 40                    lea    rcx,[rbp+0x40]
3160b5  e8 76 66 fb ff                 call   0x2cc730
3160ba  48 8b c8                       mov    rcx,rax
3160bd  e8 e2 7b fb ff                 call   0x2cdca4
3160c2  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
3160c7  48 8b d8                       mov    rbx,rax
3160ca  48 8d 4d 48                    lea    rcx,[rbp+0x48]
3160ce  e8 f5 bb fd ff                 call   0x2f1cc8 ; STRING getter=0x2f1cc8 %ab2af99e738349c0dc873c5b1a248f283a19f0de
3160d3  48 8b c8                       mov    rcx,rax
3160d6  e8 29 d6 fc ff                 call   0x2e3704
3160db  48 8b d0                       mov    rdx,rax
3160de  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
3160e3  4c 8b cb                       mov    r9,rbx
3160e6  4c 8d 05 3f 55 01 00           lea    r8,[rip+0x1553f]        # 0x32b62c
3160ed  48 8d 0d ec 07 0d 00           lea    rcx,[rip+0xd07ec]        # 0x3e68e0
3160f4  e8 2f 49 fd ff                 call   0x2eaa28
3160f9  48 8d 55 40                    lea    rdx,[rbp+0x40]
3160fd  48 8d 4d 40                    lea    rcx,[rbp+0x40]
316101  e8 2a 66 fb ff                 call   0x2cc730
316106  48 8b c8                       mov    rcx,rax
316109  e8 96 7b fb ff                 call   0x2cdca4
31610e  48 8b 3d eb 0d 0c 00           mov    rdi,QWORD PTR [rip+0xc0deb]        # 0x3d6f00
316115  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
31611a  48 8d 4d 48                    lea    rcx,[rbp+0x48]
31611e  48 8b d8                       mov    rbx,rax
316121  e8 52 bd fd ff                 call   0x2f1e78 ; STRING getter=0x2f1e78 BasePlayer
316126  48 8b c8                       mov    rcx,rax
316129  e8 26 3b fd ff                 call   0x2e9c54
31612e  48 8b d0                       mov    rdx,rax
316131  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
316136  4c 8d 0d bf 30 fd ff           lea    r9,[rip+0xfffffffffffd30bf]        # 0x2e91fc
31613d  4c 8d 87 e0 64 f4 03           lea    r8,[rdi+0x3f464e0]
316144  48 8d 0d 9d ec 0c 00           lea    rcx,[rip+0xcec9d]        # 0x3e4de8
31614b  e8 88 02 00 00                 call   0x3163d8
316150  48 8d 55 40                    lea    rdx,[rbp+0x40]
316154  48 8d 4d 40                    lea    rcx,[rbp+0x40]
316158  e8 d3 65 fb ff                 call   0x2cc730
31615d  48 8b c8                       mov    rcx,rax
316160  e8 3f 7b fb ff                 call   0x2cdca4
316165  48 8d 55 48                    lea    rdx,[rbp+0x48]
316169  4c 8b f0                       mov    r14,rax
31616c  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316170  e8 bb 65 fb ff                 call   0x2cc730
316175  48 8b c8                       mov    rcx,rax
316178  e8 27 7b fb ff                 call   0x2cdca4
31617d  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
316182  48 8b f0                       mov    rsi,rax
316185  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316189  e8 4a c6 fd ff                 call   0x2f27d8 ; STRING getter=0x2f27d8 %63e89e5a824099e8f26742a92de9abbad07f05ea
31618e  48 8b c8                       mov    rcx,rax
316191  e8 6e d5 fc ff                 call   0x2e3704
316196  48 8d 55 58                    lea    rdx,[rbp+0x58]
31619a  48 8b f8                       mov    rdi,rax
31619d  48 8d 4d 50                    lea    rcx,[rbp+0x50]
3161a1  e8 8a 65 fb ff                 call   0x2cc730
3161a6  48 8b c8                       mov    rcx,rax
3161a9  e8 f6 7a fb ff                 call   0x2cdca4
3161ae  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
3161b3  48 8b d8                       mov    rbx,rax
3161b6  48 8d 4d 50                    lea    rcx,[rbp+0x50]
3161ba  e8 b5 c4 fd ff                 call   0x2f2674 ; STRING getter=0x2f2674 BaseMelee
3161bf  48 8b c8                       mov    rcx,rax
3161c2  e8 7d 7b fb ff                 call   0x2cdd44
3161c7  48 8b c8                       mov    rcx,rax
3161ca  48 8b d3                       mov    rdx,rbx
3161cd  e8 52 e0 01 00                 call   0x334224
3161d2  48 8b c8                       mov    rcx,rax
3161d5  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
3161da  4c 8b ce                       mov    r9,rsi
3161dd  45 8b c7                       mov    r8d,r15d
3161e0  48 8b d7                       mov    rdx,rdi
3161e3  e8 c4 e7 01 00                 call   0x3349ac
3161e8  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3161ed  48 8d 4d 50                    lea    rcx,[rbp+0x50]
3161f1  48 8b 18                       mov    rbx,QWORD PTR [rax]
3161f4  e8 9b c2 fd ff                 call   0x2f2494 ; STRING getter=0x2f2494 BaseMelee
3161f9  48 8b c8                       mov    rcx,rax
3161fc  e8 43 7b fb ff                 call   0x2cdd44
316201  48 8b d0                       mov    rdx,rax
316204  4c 89 74 24 20                 mov    QWORD PTR [rsp+0x20],r14
316209  4c 8d 0d d0 b0 fc ff           lea    r9,[rip+0xfffffffffffcb0d0]        # 0x2e12e0
316210  4c 8b c3                       mov    r8,rbx
316213  48 8d 0d 6e dd 0c 00           lea    rcx,[rip+0xcdd6e]        # 0x3e3f88
31621a  e8 b9 01 00 00                 call   0x3163d8
31621f  48 8d 55 40                    lea    rdx,[rbp+0x40]
316223  48 8d 4d 40                    lea    rcx,[rbp+0x40]
316227  e8 04 65 fb ff                 call   0x2cc730
31622c  48 8b c8                       mov    rcx,rax
31622f  e8 70 7a fb ff                 call   0x2cdca4
316234  48 8d 55 48                    lea    rdx,[rbp+0x48]
316238  4c 8b f0                       mov    r14,rax
31623b  48 8d 4d 50                    lea    rcx,[rbp+0x50]
31623f  e8 ec 64 fb ff                 call   0x2cc730
316244  48 8b c8                       mov    rcx,rax
316247  e8 58 7a fb ff                 call   0x2cdca4
31624c  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
316251  48 8b f0                       mov    rsi,rax
316254  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316258  e8 47 cc fd ff                 call   0x2f2ea4 ; STRING getter=0x2f2ea4 %4cc4b6b196d68ad25ed5d5f1fbe104df3d40db05
31625d  48 8b c8                       mov    rcx,rax
316260  e8 9f d4 fc ff                 call   0x2e3704
316265  48 8d 55 58                    lea    rdx,[rbp+0x58]
316269  48 8b f8                       mov    rdi,rax
31626c  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316270  e8 bb 64 fb ff                 call   0x2cc730
316275  48 8b c8                       mov    rcx,rax
316278  e8 27 7a fb ff                 call   0x2cdca4
31627d  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
316282  48 8b d8                       mov    rbx,rax
316285  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316289  e8 76 c9 fd ff                 call   0x2f2c04 ; STRING getter=0x2f2c04 BaseLauncher
31628e  48 8b c8                       mov    rcx,rax
316291  e8 5e 23 fc ff                 call   0x2d85f4
316296  48 8b c8                       mov    rcx,rax
316299  48 8b d3                       mov    rdx,rbx
31629c  e8 83 df 01 00                 call   0x334224
3162a1  48 8b c8                       mov    rcx,rax
3162a4  4c 8b ce                       mov    r9,rsi
3162a7  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
3162ac  45 8b c7                       mov    r8d,r15d
3162af  48 8b d7                       mov    rdx,rdi
3162b2  e8 f5 e6 01 00                 call   0x3349ac
3162b7  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
3162bc  48 8d 4d 50                    lea    rcx,[rbp+0x50]
3162c0  48 8b 18                       mov    rbx,QWORD PTR [rax]
3162c3  e8 e4 c6 fd ff                 call   0x2f29ac ; STRING getter=0x2f29ac BaseLauncher
3162c8  48 8b c8                       mov    rcx,rax
3162cb  e8 24 23 fc ff                 call   0x2d85f4
3162d0  48 8b d0                       mov    rdx,rax
3162d3  4c 89 74 24 20                 mov    QWORD PTR [rsp+0x20],r14
3162d8  4c 8d 0d 31 78 fc ff           lea    r9,[rip+0xfffffffffffc7831]        # 0x2ddb10
3162df  4c 8b c3                       mov    r8,rbx
3162e2  48 8d 0d 0f 0d 0c 00           lea    rcx,[rip+0xc0d0f]        # 0x3d6ff8
3162e9  e8 ea 00 00 00                 call   0x3163d8
3162ee  48 8d 55 40                    lea    rdx,[rbp+0x40]
3162f2  48 8d 4d 40                    lea    rcx,[rbp+0x40]
3162f6  e8 35 64 fb ff                 call   0x2cc730
3162fb  48 8b c8                       mov    rcx,rax
3162fe  e8 a1 79 fb ff                 call   0x2cdca4
316303  48 8d 55 48                    lea    rdx,[rbp+0x48]
316307  4c 8b f0                       mov    r14,rax
31630a  48 8d 4d 50                    lea    rcx,[rbp+0x50]
31630e  e8 1d 64 fb ff                 call   0x2cc730
316313  48 8b c8                       mov    rcx,rax
316316  e8 89 79 fb ff                 call   0x2cdca4
31631b  48 8d 54 24 75                 lea    rdx,[rsp+0x75]
316320  48 8b f0                       mov    rsi,rax
316323  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316327  e8 ec d0 fd ff                 call   0x2f3418 ; STRING getter=0x2f3418 %de96eb58e7d7ac99390d675d488860f809aad2a8
31632c  48 8b c8                       mov    rcx,rax
31632f  e8 d0 d3 fc ff                 call   0x2e3704
316334  48 8d 55 58                    lea    rdx,[rbp+0x58]
316338  48 8b f8                       mov    rdi,rax
31633b  48 8d 4d 50                    lea    rcx,[rbp+0x50]
31633f  e8 ec 63 fb ff                 call   0x2cc730
316344  48 8b c8                       mov    rcx,rax
316347  e8 58 79 fb ff                 call   0x2cdca4
31634c  48 8d 55 9f                    lea    rdx,[rbp-0x61]
316350  48 8b d8                       mov    rbx,rax
316353  48 8d 4d 50                    lea    rcx,[rbp+0x50]
316357  e8 34 cf fd ff                 call   0x2f3290 ; STRING getter=0x2f3290 %fa0c08e032f18b0fa1549031fa4c42174b53b0bb
31635c  48 8b c8                       mov    rcx,rax
31635f  e8 a0 d3 fc ff                 call   0x2e3704
316364  48 8b c8                       mov    rcx,rax
316367  48 8b d3                       mov    rdx,rbx
31636a  e8 b5 de 01 00                 call   0x334224
31636f  48 8b c8                       mov    rcx,rax
316372  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
316377  4c 8b ce                       mov    r9,rsi
31637a  45 8b c7                       mov    r8d,r15d
31637d  48 8b d7                       mov    rdx,rdi
316380  e8 27 e6 01 00                 call   0x3349ac
316385  48 8d 55 c9                    lea    rdx,[rbp-0x37]
316389  48 8d 4d 50                    lea    rcx,[rbp+0x50]
31638d  48 8b 18                       mov    rbx,QWORD PTR [rax]
316390  e8 c3 cc fd ff                 call   0x2f3058 ; STRING getter=0x2f3058 %fa0c08e032f18b0fa1549031fa4c42174b53b0bb
316395  48 8b c8                       mov    rcx,rax
316398  e8 67 d3 fc ff                 call   0x2e3704
31639d  48 8b d0                       mov    rdx,rax
3163a0  4c 89 74 24 20                 mov    QWORD PTR [rsp+0x20],r14
3163a5  4c 8d 0d fc 6a 01 00           lea    r9,[rip+0x16afc]        # 0x32cea8
3163ac  4c 8b c3                       mov    r8,rbx
3163af  48 8d 0d d2 a4 0d 00           lea    rcx,[rip+0xda4d2]        # 0x3f0888
3163b6  e8 9d 00 00 00                 call   0x316458
3163bb  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3163c0  e8 2f 61 fb ff                 call   0x2cc4f4
3163c5  48 81 c4 08 01 00 00           add    rsp,0x108
3163cc  41 5f                          pop    r15
3163ce  41 5e                          pop    r14
3163d0  5f                             pop    rdi
3163d1  5e                             pop    rsi
3163d2  5b                             pop    rbx
3163d3  5d                             pop    rbp
3163d4  c3                             ret

; pdata function 0x35ccf4..0x35d1fd unwind=0x3d3838
35ccf4  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
35ccf9  48 89 74 24 18                 mov    QWORD PTR [rsp+0x18],rsi
35ccfe  55                             push   rbp
35ccff  57                             push   rdi
35cd00  41 55                          push   r13
35cd02  41 56                          push   r14
35cd04  41 57                          push   r15
35cd06  48 8d 6c 24 f0                 lea    rbp,[rsp-0x10]
35cd0b  48 81 ec 10 01 00 00           sub    rsp,0x110
35cd12  48 8b f1                       mov    rsi,rcx
35cd15  33 c9                          xor    ecx,ecx
35cd17  e8 48 3b 03 00                 call   0x390864
35cd1c  e8 8b 59 03 00                 call   0x3926ac
35cd21  0f 57 c9                       xorps  xmm1,xmm1
35cd24  b9 04 00 00 00                 mov    ecx,0x4
35cd29  48 8b f8                       mov    rdi,rax
35cd2c  e8 97 bf 03 00                 call   0x398cc8
35cd31  48 8b 4f 50                    mov    rcx,QWORD PTR [rdi+0x50]
35cd35  41 bd 01 00 00 00              mov    r13d,0x1
35cd3b  44 09 2f                       or     DWORD PTR [rdi],r13d
35cd3e  48 c7 47 18 00 00 00 00        mov    QWORD PTR [rdi+0x18],0x0
35cd46  e8 f5 6e 04 00                 call   0x3a3c40
35cd4b  e8 7c 9d 02 00                 call   0x386acc
35cd50  e8 cb c4 02 00                 call   0x389220
35cd55  4c 8d 3d 84 f3 09 00           lea    r15,[rip+0x9f384]        # 0x3fc0e0
35cd5c  33 d2                          xor    edx,edx
35cd5e  49 8b cf                       mov    rcx,r15
35cd61  e8 52 9a fd ff                 call   0x3367b8
35cd66  48 8b c8                       mov    rcx,rax
35cd69  48 8d 15 80 38 f0 ff           lea    rdx,[rip+0xfffffffffff03880]        # 0x2605f0
35cd70  41 b8 5c e2 00 00              mov    r8d,0xe25c
35cd76  e8 d5 81 00 00                 call   0x364f50
35cd7b  41 8b d5                       mov    edx,r13d
35cd7e  49 8b cf                       mov    rcx,r15
35cd81  e8 32 9a fd ff                 call   0x3367b8
35cd86  48 8b c8                       mov    rcx,rax
35cd89  48 8d 15 c0 1a f1 ff           lea    rdx,[rip+0xfffffffffff11ac0]        # 0x26e850
35cd90  41 b8 3c e4 00 00              mov    r8d,0xe43c
35cd96  e8 b5 81 00 00                 call   0x364f50
35cd9b  45 8d 75 01                    lea    r14d,[r13+0x1]
35cd9f  49 8b cf                       mov    rcx,r15
35cda2  41 8b d6                       mov    edx,r14d
35cda5  e8 0e 9a fd ff                 call   0x3367b8
35cdaa  48 8b c8                       mov    rcx,rax
35cdad  48 8d 15 dc fe f1 ff           lea    rdx,[rip+0xfffffffffff1fedc]        # 0x27cc90
35cdb4  41 b8 f8 2c 00 00              mov    r8d,0x2cf8
35cdba  e8 91 81 00 00                 call   0x364f50
35cdbf  33 d2                          xor    edx,edx
35cdc1  49 8b cf                       mov    rcx,r15
35cdc4  e8 ef 99 fd ff                 call   0x3367b8
35cdc9  48 8b d8                       mov    rbx,rax
35cdcc  e8 db 58 03 00                 call   0x3926ac
35cdd1  48 8b 48 50                    mov    rcx,QWORD PTR [rax+0x50]
35cdd5  e8 da 79 04 00                 call   0x3a47b4
35cdda  48 8b d0                       mov    rdx,rax
35cddd  48 8b cb                       mov    rcx,rbx
35cde0  e8 a7 81 00 00                 call   0x364f8c
35cde5  41 8b d5                       mov    edx,r13d
35cde8  49 8b cf                       mov    rcx,r15
35cdeb  e8 c8 99 fd ff                 call   0x3367b8
35cdf0  48 8b d8                       mov    rbx,rax
35cdf3  e8 b4 58 03 00                 call   0x3926ac
35cdf8  48 8b 48 50                    mov    rcx,QWORD PTR [rax+0x50]
35cdfc  e8 b3 79 04 00                 call   0x3a47b4
35ce01  48 8b d0                       mov    rdx,rax
35ce04  48 8b cb                       mov    rcx,rbx
35ce07  e8 80 81 00 00                 call   0x364f8c
35ce0c  41 8b d6                       mov    edx,r14d
35ce0f  49 8b cf                       mov    rcx,r15
35ce12  e8 a1 99 fd ff                 call   0x3367b8
35ce17  48 8b d8                       mov    rbx,rax
35ce1a  e8 8d 58 03 00                 call   0x3926ac
35ce1f  48 8b 48 50                    mov    rcx,QWORD PTR [rax+0x50]
35ce23  e8 8c 79 04 00                 call   0x3a47b4
35ce28  48 8b d0                       mov    rdx,rax
35ce2b  48 8b cb                       mov    rcx,rbx
35ce2e  e8 59 81 00 00                 call   0x364f8c
35ce33  33 d2                          xor    edx,edx
35ce35  49 8b cf                       mov    rcx,r15
35ce38  e8 7b 99 fd ff                 call   0x3367b8
35ce3d  f3 0f 10 0d 6f 63 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff3636f]        # 0x2931b4 ; f32=14
35ce45  48 8b c8                       mov    rcx,rax
35ce48  45 8a c5                       mov    r8b,r13b
35ce4b  e8 54 7d 00 00                 call   0x364ba4
35ce50  33 d2                          xor    edx,edx
35ce52  49 8b cf                       mov    rcx,r15
35ce55  e8 5e 99 fd ff                 call   0x3367b8
35ce5a  f3 0f 10 0d 46 63 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff36346]        # 0x2931a8 ; f32=12
35ce62  48 8b c8                       mov    rcx,rax
35ce65  45 8a c5                       mov    r8b,r13b
35ce68  e8 37 7d 00 00                 call   0x364ba4
35ce6d  41 8b d5                       mov    edx,r13d
35ce70  49 8b cf                       mov    rcx,r15
35ce73  e8 40 99 fd ff                 call   0x3367b8
35ce78  f3 0f 10 0d 28 63 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff36328]        # 0x2931a8 ; f32=12
35ce80  48 8b c8                       mov    rcx,rax
35ce83  45 8a c5                       mov    r8b,r13b
35ce86  e8 19 7d 00 00                 call   0x364ba4
35ce8b  41 8b d5                       mov    edx,r13d
35ce8e  49 8b cf                       mov    rcx,r15
35ce91  e8 22 99 fd ff                 call   0x3367b8
35ce96  f3 0f 10 0d 9e b3 f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff4b39e]        # 0x2a823c ; f32=17
35ce9e  48 8b c8                       mov    rcx,rax
35cea1  45 8a c5                       mov    r8b,r13b
35cea4  e8 fb 7c 00 00                 call   0x364ba4
35cea9  41 8b d6                       mov    edx,r14d
35ceac  49 8b cf                       mov    rcx,r15
35ceaf  e8 04 99 fd ff                 call   0x3367b8
35ceb4  f3 0f 10 0d 00 63 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff36300]        # 0x2931bc ; f32=16
35cebc  48 8b c8                       mov    rcx,rax
35cebf  45 8a c5                       mov    r8b,r13b
35cec2  e8 dd 7c 00 00                 call   0x364ba4
35cec7  41 8b d6                       mov    edx,r14d
35ceca  49 8b cf                       mov    rcx,r15
35cecd  e8 e6 98 fd ff                 call   0x3367b8
35ced2  f3 0f 10 0d de 62 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff362de]        # 0x2931b8 ; f32=15
35ceda  48 8b c8                       mov    rcx,rax
35cedd  45 8a c5                       mov    r8b,r13b
35cee0  e8 bf 7c 00 00                 call   0x364ba4
35cee5  41 8b d6                       mov    edx,r14d
35cee8  49 8b cf                       mov    rcx,r15
35ceeb  e8 c8 98 fd ff                 call   0x3367b8
35cef0  f3 0f 10 0d 24 0c f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff30c24]        # 0x28db1c ; f32=10
35cef8  48 8b c8                       mov    rcx,rax
35cefb  45 8a c5                       mov    r8b,r13b
35cefe  e8 a1 7c 00 00                 call   0x364ba4
35cf03  41 8b d5                       mov    edx,r13d
35cf06  49 8b cf                       mov    rcx,r15
35cf09  e8 aa 98 fd ff                 call   0x3367b8
35cf0e  f3 0f 10 0d 9a 62 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff3629a]        # 0x2931b0 ; f32=13
35cf16  48 8b c8                       mov    rcx,rax
35cf19  45 8a c5                       mov    r8b,r13b
35cf1c  e8 83 7c 00 00                 call   0x364ba4
35cf21  41 8b d5                       mov    edx,r13d
35cf24  49 8b cf                       mov    rcx,r15
35cf27  e8 8c 98 fd ff                 call   0x3367b8
35cf2c  f3 0f 10 0d 88 62 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff36288]        # 0x2931bc ; f32=16
35cf34  48 8b c8                       mov    rcx,rax
35cf37  45 8a c5                       mov    r8b,r13b
35cf3a  e8 65 7c 00 00                 call   0x364ba4
35cf3f  41 8b d5                       mov    edx,r13d
35cf42  49 8b cf                       mov    rcx,r15
35cf45  e8 6e 98 fd ff                 call   0x3367b8
35cf4a  f3 0f 10 0d 6e 62 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff3626e]        # 0x2931c0 ; f32=18
35cf52  48 8b c8                       mov    rcx,rax
35cf55  45 8a c5                       mov    r8b,r13b
35cf58  e8 47 7c 00 00                 call   0x364ba4
35cf5d  41 8b d5                       mov    edx,r13d
35cf60  49 8b cf                       mov    rcx,r15
35cf63  e8 50 98 fd ff                 call   0x3367b8
35cf68  f3 0f 10 0d b0 0b f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff30bb0]        # 0x28db20 ; f32=20
35cf70  48 8b c8                       mov    rcx,rax
35cf73  45 8a c5                       mov    r8b,r13b
35cf76  e8 29 7c 00 00                 call   0x364ba4
35cf7b  41 8b d5                       mov    edx,r13d
35cf7e  49 8b cf                       mov    rcx,r15
35cf81  e8 32 98 fd ff                 call   0x3367b8
35cf86  f3 0f 10 0d 3a 62 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff3623a]        # 0x2931c8 ; f32=22
35cf8e  48 8b c8                       mov    rcx,rax
35cf91  45 8a c5                       mov    r8b,r13b
35cf94  e8 0b 7c 00 00                 call   0x364ba4
35cf99  41 8b d5                       mov    edx,r13d
35cf9c  49 8b cf                       mov    rcx,r15
35cf9f  e8 14 98 fd ff                 call   0x3367b8
35cfa4  f3 0f 10 0d 24 62 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff36224]        # 0x2931d0 ; f32=24
35cfac  48 8b c8                       mov    rcx,rax
35cfaf  45 8a c5                       mov    r8b,r13b
35cfb2  e8 ed 7b 00 00                 call   0x364ba4
35cfb7  48 8b 5f 50                    mov    rbx,QWORD PTR [rdi+0x50]
35cfbb  48 8b cb                       mov    rcx,rbx
35cfbe  e8 f1 77 04 00                 call   0x3a47b4
35cfc3  f3 0f 10 1d d9 61 f3 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff361d9]        # 0x2931a4 ; f32=11
35cfcb  48 8d 15 5e 23 ef ff           lea    rdx,[rip+0xffffffffffef235e]        # 0x24f330
35cfd2  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
35cfd7  41 be b4 12 01 00              mov    r14d,0x112b4
35cfdd  45 8b c6                       mov    r8d,r14d
35cfe0  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
35cfe9  48 8b cb                       mov    rcx,rbx
35cfec  e8 63 2e 04 00                 call   0x39fe54
35cff1  48 89 06                       mov    QWORD PTR [rsi],rax
35cff4  48 8b 5f 50                    mov    rbx,QWORD PTR [rdi+0x50]
35cff8  48 8b cb                       mov    rcx,rbx
35cffb  e8 b4 77 04 00                 call   0x3a47b4
35d000  f3 0f 10 1d 14 0b f3 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff30b14]        # 0x28db1c ; f32=10
35d008  48 8d 15 21 bf ee ff           lea    rdx,[rip+0xffffffffffeebf21]        # 0x248f30
35d00f  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
35d014  41 b8 00 64 00 00              mov    r8d,0x6400
35d01a  48 8b cb                       mov    rcx,rbx
35d01d  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
35d026  e8 29 2e 04 00                 call   0x39fe54
35d02b  48 89 46 08                    mov    QWORD PTR [rsi+0x8],rax
35d02f  48 8b 5f 50                    mov    rbx,QWORD PTR [rdi+0x50]
35d033  48 8b cb                       mov    rcx,rbx
35d036  e8 79 77 04 00                 call   0x3a47b4
35d03b  f3 0f 10 1d 79 61 f3 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff36179]        # 0x2931bc ; f32=16
35d043  48 8d 15 e6 22 ef ff           lea    rdx,[rip+0xffffffffffef22e6]        # 0x24f330
35d04a  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
35d04f  45 8b c6                       mov    r8d,r14d
35d052  48 8b cb                       mov    rcx,rbx
35d055  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
35d05e  e8 f1 2d 04 00                 call   0x39fe54
35d063  48 89 46 10                    mov    QWORD PTR [rsi+0x10],rax
35d067  8b 05 83 04 0a 00              mov    eax,DWORD PTR [rip+0xa0483]        # 0x3fd4f0
35d06d  41 84 c5                       test   r13b,al
35d070  75 21                          jne    0x35d093
35d072  41 0b c5                       or     eax,r13d
35d075  48 8d 0d 64 04 0a 00           lea    rcx,[rip+0xa0464]        # 0x3fd4e0
35d07c  89 05 6e 04 0a 00              mov    DWORD PTR [rip+0xa046e],eax        # 0x3fd4f0
35d082  e8 19 e3 f7 ff                 call   0x2db3a0
35d087  48 8d 0d 82 3b 07 00           lea    rcx,[rip+0x73b82]        # 0x3d0c10
35d08e  e8 99 02 f7 ff                 call   0x2cd32c
35d093  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d098  e8 bf 94 fd ff                 call   0x33655c
35d09d  48 8d 4d 80                    lea    rcx,[rbp-0x80]
35d0a1  e8 aa 24 04 00                 call   0x39f550
35d0a6  48 8d 15 13 8a f3 ff           lea    rdx,[rip+0xfffffffffff38a13]        # 0x295ac0
35d0ad  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d0b2  e8 35 40 04 00                 call   0x3a10ec
35d0b7  48 8b 4f 50                    mov    rcx,QWORD PTR [rdi+0x50]
35d0bb  e8 0c 77 04 00                 call   0x3a47cc
35d0c0  48 8b d0                       mov    rdx,rax
35d0c3  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d0c8  e8 1f 40 04 00                 call   0x3a10ec
35d0cd  48 8b 4f 50                    mov    rcx,QWORD PTR [rdi+0x50]
35d0d1  e8 de 76 04 00                 call   0x3a47b4
35d0d6  48 8b d0                       mov    rdx,rax
35d0d9  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d0de  e8 09 40 04 00                 call   0x3a10ec
35d0e3  48 8b 4f 50                    mov    rcx,QWORD PTR [rdi+0x50]
35d0e7  e8 5c 76 04 00                 call   0x3a4748
35d0ec  48 8b d0                       mov    rdx,rax
35d0ef  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d0f4  e8 f3 3f 04 00                 call   0x3a10ec
35d0f9  48 8b 4f 50                    mov    rcx,QWORD PTR [rdi+0x50]
35d0fd  e8 c2 76 04 00                 call   0x3a47c4
35d102  48 8b d0                       mov    rdx,rax
35d105  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d10a  e8 dd 3f 04 00                 call   0x3a10ec
35d10f  48 8b 4f 50                    mov    rcx,QWORD PTR [rdi+0x50]
35d113  e8 18 77 04 00                 call   0x3a4830
35d118  48 8b d0                       mov    rdx,rax
35d11b  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d120  e8 c7 3f 04 00                 call   0x3a10ec
35d125  48 8b 4f 50                    mov    rcx,QWORD PTR [rdi+0x50]
35d129  e8 12 77 04 00                 call   0x3a4840
35d12e  48 8b d0                       mov    rdx,rax
35d131  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d136  e8 b1 3f 04 00                 call   0x3a10ec
35d13b  48 8b 4f 50                    mov    rcx,QWORD PTR [rdi+0x50]
35d13f  e8 f4 76 04 00                 call   0x3a4838
35d144  48 8b d0                       mov    rdx,rax
35d147  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d14c  e8 9b 3f 04 00                 call   0x3a10ec
35d151  48 8b 4f 50                    mov    rcx,QWORD PTR [rdi+0x50]
35d155  e8 f6 75 04 00                 call   0x3a4750
35d15a  48 8b d0                       mov    rdx,rax
35d15d  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d162  e8 85 3f 04 00                 call   0x3a10ec
35d167  48 8d 15 72 03 0a 00           lea    rdx,[rip+0xa0372]        # 0x3fd4e0
35d16e  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d173  e8 68 65 04 00                 call   0x3a36e0
35d178  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
35d17d  48 8d 4d 40                    lea    rcx,[rbp+0x40]
35d181  e8 3e 51 ff ff                 call   0x3522c4 ; STRING getter=0x3522c4 C:\Windows\Fonts\msyhbd.ttc
35d186  48 8b c8                       mov    rcx,rax
35d189  e8 f6 33 fc ff                 call   0x320584
35d18e  48 8b d0                       mov    rdx,rax
35d191  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
35d196  e8 31 f1 f6 ff                 call   0x2cc2cc
35d19b  48 8b 1d 46 03 0a 00           mov    rbx,QWORD PTR [rip+0xa0346]        # 0x3fd4e8
35d1a2  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
35d1a7  e8 40 06 f7 ff                 call   0x2cd7ec
35d1ac  f3 0f 10 15 08 60 f3 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff36008]        # 0x2931bc ; f32=16
35d1b4  4c 8d 4d 80                    lea    r9,[rbp-0x80]
35d1b8  48 8b 4f 50                    mov    rcx,QWORD PTR [rdi+0x50]
35d1bc  48 8b d0                       mov    rdx,rax
35d1bf  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
35d1c4  e8 f7 d6 ff ff                 call   0x35a8c0
35d1c9  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
35d1ce  48 89 46 18                    mov    QWORD PTR [rsi+0x18],rax
35d1d2  e8 1d f3 f6 ff                 call   0x2cc4f4
35d1d7  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35d1dc  e8 fb 94 fd ff                 call   0x3366dc
35d1e1  4c 8d 9c 24 10 01 00 00        lea    r11,[rsp+0x110]
35d1e9  49 8b 5b 38                    mov    rbx,QWORD PTR [r11+0x38]
35d1ed  49 8b 73 40                    mov    rsi,QWORD PTR [r11+0x40]
35d1f1  49 8b e3                       mov    rsp,r11
35d1f4  41 5f                          pop    r15
35d1f6  41 5e                          pop    r14
35d1f8  41 5d                          pop    r13
35d1fa  5f                             pop    rdi
35d1fb  5d                             pop    rbp
35d1fc  c3                             ret

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

; pdata function 0x35cb18..0x35cb40 unwind=0x3d2064
35cb18  48 83 ec 28                    sub    rsp,0x28
35cb1c  e8 df 06 00 00                 call   0x35d200
35cb21  48 8b 88 98 02 00 00           mov    rcx,QWORD PTR [rax+0x298]
35cb28  e8 33 a8 04 00                 call   0x3a7360
35cb2d  e8 62 3e 03 00                 call   0x390994
35cb32  b9 01 00 00 00                 mov    ecx,0x1
35cb37  48 83 c4 28                    add    rsp,0x28
35cb3b  e9 cc bd 03 00                 jmp    0x39890c

; pdata function 0x307638..0x3096c1 unwind=0x3d2ea0
307638  48 8b c4                       mov    rax,rsp
30763b  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
30763f  55                             push   rbp
307640  56                             push   rsi
307641  57                             push   rdi
307642  41 54                          push   r12
307644  41 55                          push   r13
307646  41 56                          push   r14
307648  41 57                          push   r15
30764a  48 8d a8 78 fe ff ff           lea    rbp,[rax-0x188]
307651  48 81 ec 50 02 00 00           sub    rsp,0x250
307658  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
30765c  33 c9                          xor    ecx,ecx
30765e  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
307662  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
307667  44 0f 29 48 88                 movaps XMMWORD PTR [rax-0x78],xmm9
30766c  44 0f 29 90 78 ff ff ff        movaps XMMWORD PTR [rax-0x88],xmm10
307674  44 0f 29 98 68 ff ff ff        movaps XMMWORD PTR [rax-0x98],xmm11
30767c  44 0f 29 a0 58 ff ff ff        movaps XMMWORD PTR [rax-0xa8],xmm12
307684  44 0f 29 a8 48 ff ff ff        movaps XMMWORD PTR [rax-0xb8],xmm13
30768c  44 0f 29 b0 38 ff ff ff        movaps XMMWORD PTR [rax-0xc8],xmm14
307694  44 0f 29 b8 28 ff ff ff        movaps XMMWORD PTR [rax-0xd8],xmm15
30769c  e8 13 d5 00 00                 call   0x314bb4
3076a1  48 8b c8                       mov    rcx,rax
3076a4  48 89 45 90                    mov    QWORD PTR [rbp-0x70],rax
3076a8  4c 8b f0                       mov    r14,rax
3076ab  e8 58 38 fc ff                 call   0x2caf08
3076b0  33 ff                          xor    edi,edi
3076b2  84 c0                          test   al,al
3076b4  0f 84 b4 1f 00 00              je     0x30966e
3076ba  49 8b ce                       mov    rcx,r14
3076bd  e8 da 97 fd ff                 call   0x2e0e9c
3076c2  84 c0                          test   al,al
3076c4  0f 84 a4 1f 00 00              je     0x30966e
3076ca  49 8b ce                       mov    rcx,r14
3076cd  e8 52 1c 06 00                 call   0x369324
3076d2  48 8b c8                       mov    rcx,rax
3076d5  48 89 45 98                    mov    QWORD PTR [rbp-0x68],rax
3076d9  4c 8b e0                       mov    r12,rax
3076dc  e8 27 38 fc ff                 call   0x2caf08
3076e1  84 c0                          test   al,al
3076e3  0f 84 85 1f 00 00              je     0x30966e
3076e9  44 8d 47 02                    lea    r8d,[rdi+0x2]
3076ed  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
3076f2  48 8d 0d df 8a 0e 00           lea    rcx,[rip+0xe8adf]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
3076f9  e8 f2 21 fe ff                 call   0x2e98f0
3076fe  48 8b c8                       mov    rcx,rax
307701  e8 6a d6 fc ff                 call   0x2d4d70
307706  f3 0f 10 35 ee b9 f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff8b9ee]        # 0x2930fc ; f32=1.35
30770e  44 8d 6f 01                    lea    r13d,[rdi+0x1]
307712  f3 44 0f 10 25 cd ba f8 ff     movss  xmm12,DWORD PTR [rip+0xfffffffffff8bacd]        # 0x2931e8 ; f32=36
30771b  45 0f 57 c0                    xorps  xmm8,xmm8
30771f  f3 44 0f 10 35 f4 63 f8 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff863f4]        # 0x28db1c ; f32=10
307728  f3 44 0f 10 15 1f 5b f8 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff85b1f]        # 0x28d250 ; f32=0.5
307731  f3 44 0f 10 1d 1a 5b f8 ff     movss  xmm11,DWORD PTR [rip+0xfffffffffff85b1a]        # 0x28d254 ; f32=1
30773a  f3 44 0f 10 3d dd 63 f8 ff     movss  xmm15,DWORD PTR [rip+0xfffffffffff863dd]        # 0x28db20 ; f32=20
307743  84 c0                          test   al,al
307745  0f 84 3e 06 00 00              je     0x307d89
30774b  ba 90 00 00 00                 mov    edx,0x90
307750  49 8b ce                       mov    rcx,r14
307753  e8 e4 76 fd ff                 call   0x2dee3c
307758  48 8b 30                       mov    rsi,QWORD PTR [rax]
30775b  48 8b ce                       mov    rcx,rsi
30775e  e8 a5 37 fc ff                 call   0x2caf08
307763  84 c0                          test   al,al
307765  0f 84 1e 06 00 00              je     0x307d89
30776b  44 8b 7e 18                    mov    r15d,DWORD PTR [rsi+0x18]
30776f  45 85 ff                       test   r15d,r15d
307772  0f 8e 11 06 00 00              jle    0x307d89
307778  0f 57 d2                       xorps  xmm2,xmm2
30777b  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307782  0f 57 c9                       xorps  xmm1,xmm1
307785  e8 b6 4b fc ff                 call   0x2cc340
30778a  f3 0f 10 15 0a 87 0e 00        movss  xmm2,DWORD PTR [rip+0xe870a]        # 0x3efe9c
307792  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
307799  f3 0f 10 0d f7 86 0e 00        movss  xmm1,DWORD PTR [rip+0xe86f7]        # 0x3efe98 ; CONFIG V2.ParentedPosition value(+0x48)
3077a1  48 8b d8                       mov    rbx,rax
3077a4  e8 97 4b fc ff                 call   0x2cc340
3077a9  48 8b c8                       mov    rcx,rax
3077ac  8d 57 02                       lea    edx,[rdi+0x2]
3077af  4c 8b c3                       mov    r8,rbx
3077b2  e8 7d 3f 09 00                 call   0x39b734
3077b7  40 38 3d ff e4 0d 00           cmp    BYTE PTR [rip+0xde4ff],dil        # 0x3e5cbd
3077be  74 46                          je     0x307806
3077c0  0f 57 d2                       xorps  xmm2,xmm2
3077c3  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3077ca  0f 57 c9                       xorps  xmm1,xmm1
3077cd  e8 6e 4b fc ff                 call   0x2cc340
3077d2  f3 0f 10 15 c2 86 0e 00        movss  xmm2,DWORD PTR [rip+0xe86c2]        # 0x3efe9c
3077da  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
3077e1  f3 0f 10 0d af 86 0e 00        movss  xmm1,DWORD PTR [rip+0xe86af]        # 0x3efe98 ; CONFIG V2.ParentedPosition value(+0x48)
3077e9  48 8b d8                       mov    rbx,rax
3077ec  e8 4f 4b fc ff                 call   0x2cc340
3077f1  48 8b c8                       mov    rcx,rax
3077f4  4c 8b c3                       mov    r8,rbx
3077f7  41 8b d5                       mov    edx,r13d
3077fa  e8 35 3f 09 00                 call   0x39b734
3077ff  40 88 3d b7 e4 0d 00           mov    BYTE PTR [rip+0xde4b7],dil        # 0x3e5cbd
307806  ba 54 00 00 00                 mov    edx,0x54
30780b  c7 44 24 20 ff 00 00 00        mov    DWORD PTR [rsp+0x20],0xff
307813  48 8d 4d b0                    lea    rcx,[rbp-0x50]
307817  44 8d 4a 0e                    lea    r9d,[rdx+0xe]
30781b  44 8d 42 7b                    lea    r8d,[rdx+0x7b]
30781f  e8 f4 3a fd ff                 call   0x2db318
307824  48 8b c8                       mov    rcx,rax
307827  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
30782c  e8 cf 7f fe ff                 call   0x2ef800
307831  f3 0f 10 5c 24 50              movss  xmm3,DWORD PTR [rsp+0x50]
307837  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
30783c  f3 0f 10 54 24 4c              movss  xmm2,DWORD PTR [rsp+0x4c]
307842  f3 0f 10 4c 24 48              movss  xmm1,DWORD PTR [rsp+0x48]
307848  f3 0f 10 44 24 54              movss  xmm0,DWORD PTR [rsp+0x54]
30784e  f3 0f 5e de                    divss  xmm3,xmm6
307852  f3 0f 5e d6                    divss  xmm2,xmm6
307856  f3 0f 5e ce                    divss  xmm1,xmm6
30785a  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
307860  e8 eb 4a fc ff                 call   0x2cc350
307865  f3 0f 10 15 cf 86 0e 00        movss  xmm2,DWORD PTR [rip+0xe86cf]        # 0x3eff3c
30786d  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307874  f3 0f 10 0d bc 86 0e 00        movss  xmm1,DWORD PTR [rip+0xe86bc]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
30787c  e8 bf 4a fc ff                 call   0x2cc340
307881  ba 02 00 00 00                 mov    edx,0x2
307886  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30788d  e8 de 3e 09 00                 call   0x39b770
307892  0f 57 d2                       xorps  xmm2,xmm2
307895  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30789c  0f 57 c9                       xorps  xmm1,xmm1
30789f  e8 9c 4a fc ff                 call   0x2cc340
3078a4  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
3078ab  b9 02 00 00 00                 mov    ecx,0x2
3078b0  e8 ab 13 09 00                 call   0x398c60
3078b5  0f b6 1d 5c 0f f1 ff           movzx  ebx,BYTE PTR [rip+0xfffffffffff10f5c]        # 0x218818
3078bc  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
3078c1  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3078c8  e8 77 aa fe ff                 call   0x2f2344 ; STRING getter=0x2f2344 Parented Window
3078cd  48 8b c8                       mov    rcx,rax
3078d0  e8 8b 58 fd ff                 call   0x2dd160
3078d5  f7 db                          neg    ebx
3078d7  48 8b c8                       mov    rcx,rax
3078da  45 1b c0                       sbb    r8d,r8d
3078dd  33 d2                          xor    edx,edx
3078df  41 83 e0 fc                    and    r8d,0xfffffffc
3078e3  41 83 c0 2f                    add    r8d,0x2f
3078e7  e8 b8 56 08 00                 call   0x38cfa4
3078ec  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
3078f3  45 0f 28 cc                    movaps xmm9,xmm12
3078f7  e8 70 ab 08 00                 call   0x39246c
3078fc  48 8d 4d 88                    lea    rcx,[rbp-0x78]
307900  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
307904  e8 63 ab 08 00                 call   0x39246c
307909  0f 28 ce                       movaps xmm1,xmm6
30790c  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307913  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
307918  e8 23 4a fc ff                 call   0x2cc340
30791d  f3 0f 10 85 98 01 00 00        movss  xmm0,DWORD PTR [rbp+0x198]
307925  41 8b cd                       mov    ecx,r13d
307928  f3 0f 10 8d 9c 01 00 00        movss  xmm1,DWORD PTR [rbp+0x19c]
307930  f3 0f 11 05 60 85 0e 00        movss  DWORD PTR [rip+0xe8560],xmm0        # 0x3efe98 ; CONFIG V2.ParentedPosition value(+0x48)
307938  f3 0f 11 0d 5c 85 0e 00        movss  DWORD PTR [rip+0xe855c],xmm1        # 0x3efe9c
307940  e8 27 10 09 00                 call   0x39896c
307945  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
30794c  e8 c3 b5 08 00                 call   0x392f14
307951  48 8d 4d 88                    lea    rcx,[rbp-0x78]
307955  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
307959  e8 b6 b5 08 00                 call   0x392f14
30795e  0f 28 ce                       movaps xmm1,xmm6
307961  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307968  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
30796d  e8 ce 49 fc ff                 call   0x2cc340
307972  f3 0f 10 85 98 01 00 00        movss  xmm0,DWORD PTR [rbp+0x198]
30797a  48 8d 95 a0 01 00 00           lea    rdx,[rbp+0x1a0]
307981  f3 0f 10 8d 9c 01 00 00        movss  xmm1,DWORD PTR [rbp+0x19c]
307989  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307990  f3 0f 11 05 a0 85 0e 00        movss  DWORD PTR [rip+0xe85a0],xmm0        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307998  f3 0f 11 0d 9c 85 0e 00        movss  DWORD PTR [rip+0xe859c],xmm1        # 0x3eff3c
3079a0  e8 4f 95 fe ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
3079a5  48 8b c8                       mov    rcx,rax
3079a8  e8 b7 0a fd ff                 call   0x2d8464
3079ad  48 8b f8                       mov    rdi,rax
3079b0  48 8d 55 38                    lea    rdx,[rbp+0x38]
3079b4  49 8b ce                       mov    rcx,r14
3079b7  e8 84 16 06 00                 call   0x369040
3079bc  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
3079c1  48 8b d8                       mov    rbx,rax
3079c4  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3079cb  e8 e8 bd fe ff                 call   0x2f37b8 ; STRING getter=0x2f37b8 Parented(
3079d0  48 8b c8                       mov    rcx,rax
3079d3  e8 6c 63 fc ff                 call   0x2cdd44
3079d8  48 8b d0                       mov    rdx,rax
3079db  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3079df  4c 8b c3                       mov    r8,rbx
3079e2  e8 f5 2c fe ff                 call   0x2ea6dc
3079e7  48 8b d0                       mov    rdx,rax
3079ea  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3079ee  4c 8b c7                       mov    r8,rdi
3079f1  e8 42 33 fc ff                 call   0x2cad38
3079f6  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3079fa  e8 f5 4a fc ff                 call   0x2cc4f4
3079ff  48 8d 4d 38                    lea    rcx,[rbp+0x38]
307a03  e8 ec 4a fc ff                 call   0x2cc4f4
307a08  f3 44 0f 10 2d 27 85 0e 00     movss  xmm13,DWORD PTR [rip+0xe8527]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307a11  48 8d 4d d8                    lea    rcx,[rbp-0x28]
307a15  f3 45 0f 5c ee                 subss  xmm13,xmm14
307a1a  e8 cd 5d fc ff                 call   0x2cd7ec
307a1f  f3 0f 10 3d 39 b8 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff8b839]        # 0x293260 ; f32=-1
307a27  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
307a2c  48 8b d0                       mov    rdx,rax
307a2f  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
307a35  45 33 c9                       xor    r9d,r9d
307a38  45 33 c0                       xor    r8d,r8d
307a3b  e8 5c 7d 08 00                 call   0x38f79c
307a40  41 0f 28 f5                    movaps xmm6,xmm13
307a44  f3 0f 5c 74 24 70              subss  xmm6,DWORD PTR [rsp+0x70]
307a4a  f3 41 0f 59 f2                 mulss  xmm6,xmm10
307a4f  e8 d0 a9 08 00                 call   0x392424
307a54  f3 0f 58 c6                    addss  xmm0,xmm6
307a58  e8 b3 39 09 00                 call   0x39b410
307a5d  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
307a62  41 8b cd                       mov    ecx,r13d
307a65  e8 1a 11 09 00                 call   0x398b84
307a6a  48 8d 4d d8                    lea    rcx,[rbp-0x28]
307a6e  e8 79 5d fc ff                 call   0x2cd7ec
307a73  48 8b c8                       mov    rcx,rax
307a76  e8 15 d4 0b 00                 call   0x3c4e90
307a7b  41 8b cd                       mov    ecx,r13d
307a7e  e8 89 0e 09 00                 call   0x39890c
307a83  48 8d 8d a8 01 00 00           lea    rcx,[rbp+0x1a8]
307a8a  e8 dd a9 08 00                 call   0x39246c
307a8f  f3 0f 10 85 ac 01 00 00        movss  xmm0,DWORD PTR [rbp+0x1ac]
307a97  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307a9e  f3 0f 58 05 c2 b7 f8 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff8b7c2]        # 0x293268 ; f32=-16
307aa6  f3 0f 10 0d e6 b6 f8 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff8b6e6]        # 0x293194 ; f32=7
307aae  0f 57 d2                       xorps  xmm2,xmm2
307ab1  f3 0f 11 85 ac 01 00 00        movss  DWORD PTR [rbp+0x1ac],xmm0
307ab9  e8 82 48 fc ff                 call   0x2cc340
307abe  4c 8b c0                       mov    r8,rax
307ac1  48 8d 95 a8 01 00 00           lea    rdx,[rbp+0x1a8]
307ac8  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307acd  e8 06 7f fe ff                 call   0x2ef9d8
307ad2  f3 0f 10 0d 5e 84 0e 00        movss  xmm1,DWORD PTR [rip+0xe845e]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307ada  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307ae1  f3 0f 5c 0d cb b6 f8 ff        subss  xmm1,DWORD PTR [rip+0xfffffffffff8b6cb]        # 0x2931b4 ; f32=14
307ae9  41 0f 28 d3                    movaps xmm2,xmm11
307aed  f3 41 0f 59 ca                 mulss  xmm1,xmm10
307af2  e8 49 48 fc ff                 call   0x2cc340
307af7  4c 8b c0                       mov    r8,rax
307afa  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
307aff  48 8d 4d a0                    lea    rcx,[rbp-0x60]
307b03  e8 d0 7e fe ff                 call   0x2ef9d8
307b08  e8 bf b3 08 00                 call   0x392ecc
307b0d  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
307b12  48 8b f8                       mov    rdi,rax
307b15  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
307b1a  e8 d1 71 fe ff                 call   0x2eecf0
307b1f  48 8b c8                       mov    rcx,rax
307b22  e8 e5 7c fe ff                 call   0x2ef80c
307b27  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
307b2c  8b d8                          mov    ebx,eax
307b2e  48 8d 4d b0                    lea    rcx,[rbp-0x50]
307b32  e8 b9 71 fe ff                 call   0x2eecf0
307b37  48 8b c8                       mov    rcx,rax
307b3a  e8 cd 7c fe ff                 call   0x2ef80c
307b3f  45 33 ed                       xor    r13d,r13d
307b42  4c 8d 45 a0                    lea    r8,[rbp-0x60]
307b46  44 89 6c 24 30                 mov    DWORD PTR [rsp+0x30],r13d
307b4b  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
307b50  89 5c 24 28                    mov    DWORD PTR [rsp+0x28],ebx
307b54  45 33 c9                       xor    r9d,r9d
307b57  48 8b cf                       mov    rcx,rdi
307b5a  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
307b5e  e8 75 97 09 00                 call   0x3a12d8
307b63  f3 0f 10 0d cd 83 0e 00        movss  xmm1,DWORD PTR [rip+0xe83cd]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307b6b  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307b72  f3 41 0f 59 ca                 mulss  xmm1,xmm10
307b77  0f 57 d2                       xorps  xmm2,xmm2
307b7a  e8 c1 47 fc ff                 call   0x2cc340
307b7f  4c 8b c0                       mov    r8,rax
307b82  48 8d 95 a8 01 00 00           lea    rdx,[rbp+0x1a8]
307b89  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
307b8e  e8 45 7e fe ff                 call   0x2ef9d8
307b93  f3 0f 10 0d 9d 83 0e 00        movss  xmm1,DWORD PTR [rip+0xe839d]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307b9b  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307ba2  f3 41 0f 5c ce                 subss  xmm1,xmm14
307ba7  41 0f 28 d3                    movaps xmm2,xmm11
307bab  f3 41 0f 59 ca                 mulss  xmm1,xmm10
307bb0  e8 8b 47 fc ff                 call   0x2cc340
307bb5  4c 8b c0                       mov    r8,rax
307bb8  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
307bbd  48 8d 4d d0                    lea    rcx,[rbp-0x30]
307bc1  e8 12 7e fe ff                 call   0x2ef9d8
307bc6  e8 01 b3 08 00                 call   0x392ecc
307bcb  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
307bd0  48 8b f8                       mov    rdi,rax
307bd3  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
307bd8  e8 13 71 fe ff                 call   0x2eecf0
307bdd  48 8b c8                       mov    rcx,rax
307be0  e8 27 7c fe ff                 call   0x2ef80c
307be5  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
307bea  8b d8                          mov    ebx,eax
307bec  48 8d 4d b0                    lea    rcx,[rbp-0x50]
307bf0  e8 fb 70 fe ff                 call   0x2eecf0
307bf5  48 8b c8                       mov    rcx,rax
307bf8  e8 0f 7c fe ff                 call   0x2ef80c
307bfd  89 5c 24 30                    mov    DWORD PTR [rsp+0x30],ebx
307c01  4c 8d 45 d0                    lea    r8,[rbp-0x30]
307c05  44 8b c8                       mov    r9d,eax
307c08  44 89 6c 24 28                 mov    DWORD PTR [rsp+0x28],r13d
307c0d  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
307c12  44 89 6c 24 20                 mov    DWORD PTR [rsp+0x20],r13d
307c17  48 8b cf                       mov    rcx,rdi
307c1a  e8 b9 96 09 00                 call   0x3a12d8
307c1f  f3 0f 10 15 71 b5 f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff8b571]        # 0x293198 ; f32=7.5
307c27  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307c2e  0f 57 c9                       xorps  xmm1,xmm1
307c31  e8 0a 47 fc ff                 call   0x2cc340
307c36  48 8b d0                       mov    rdx,rax
307c39  41 8d 4d 0e                    lea    ecx,[r13+0xe]
307c3d  e8 1e 10 09 00                 call   0x398c60
307c42  e8 01 a8 08 00                 call   0x392448
307c47  f3 0f 5c 05 35 b5 f8 ff        subss  xmm0,DWORD PTR [rip+0xfffffffffff8b535]        # 0x293184 ; f32=5.7
307c4f  e8 f8 37 09 00                 call   0x39b44c
307c54  33 ff                          xor    edi,edi
307c56  8b df                          mov    ebx,edi
307c58  44 8d 6f 01                    lea    r13d,[rdi+0x1]
307c5c  48 8b 56 10                    mov    rdx,QWORD PTR [rsi+0x10]
307c60  48 8b ca                       mov    rcx,rdx
307c63  e8 a0 32 fc ff                 call   0x2caf08
307c68  84 c0                          test   al,al
307c6a  0f 84 c7 00 00 00              je     0x307d37
307c70  8d 04 dd 00 00 00 00           lea    eax,[rbx*8+0x0]
307c77  48 63 c8                       movsxd rcx,eax
307c7a  4c 8b 44 0a 20                 mov    r8,QWORD PTR [rdx+rcx*1+0x20]
307c7f  49 8b c8                       mov    rcx,r8
307c82  e8 81 32 fc ff                 call   0x2caf08
307c87  84 c0                          test   al,al
307c89  0f 84 a8 00 00 00              je     0x307d37
307c8f  49 8b c8                       mov    rcx,r8
307c92  e8 d1 f9 05 00                 call   0x367668
307c97  8b d0                          mov    edx,eax
307c99  48 8d 4d b0                    lea    rcx,[rbp-0x50]
307c9d  e8 d2 e8 00 00                 call   0x316574
307ca2  48 8d 4d b0                    lea    rcx,[rbp-0x50]
307ca6  e8 e9 09 fd ff                 call   0x2d8694
307cab  84 c0                          test   al,al
307cad  75 7f                          jne    0x307d2e
307caf  e8 98 a8 08 00                 call   0x39254c
307cb4  4c 8b c8                       mov    r9,rax
307cb7  48 8d 55 b0                    lea    rdx,[rbp-0x50]
307cbb  41 0f 28 d5                    movaps xmm2,xmm13
307cbf  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
307cc4  e8 ab 10 01 00                 call   0x318d74
307cc9  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
307cce  e8 19 5b fc ff                 call   0x2cd7ec
307cd3  48 8b d0                       mov    rdx,rax
307cd6  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
307cdc  45 33 c9                       xor    r9d,r9d
307cdf  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307ce6  45 33 c0                       xor    r8d,r8d
307ce9  e8 ae 7a 08 00                 call   0x38f79c
307cee  41 0f 28 f5                    movaps xmm6,xmm13
307cf2  f3 0f 5c b5 98 01 00 00        subss  xmm6,DWORD PTR [rbp+0x198]
307cfa  f3 41 0f 59 f2                 mulss  xmm6,xmm10
307cff  e8 20 a7 08 00                 call   0x392424
307d04  f3 0f 58 c6                    addss  xmm0,xmm6
307d08  e8 03 37 09 00                 call   0x39b410
307d0d  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
307d12  e8 d5 5a fc ff                 call   0x2cd7ec
307d17  48 8b c8                       mov    rcx,rax
307d1a  e8 71 d1 0b 00                 call   0x3c4e90
307d1f  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
307d24  f3 45 0f 58 cf                 addss  xmm9,xmm15
307d29  e8 c6 47 fc ff                 call   0x2cc4f4
307d2e  48 8d 4d b0                    lea    rcx,[rbp-0x50]
307d32  e8 bd 47 fc ff                 call   0x2cc4f4
307d37  41 03 dd                       add    ebx,r13d
307d3a  41 3b df                       cmp    ebx,r15d
307d3d  0f 8c 19 ff ff ff              jl     0x307c5c
307d43  f3 0f 10 0d ed 81 0e 00        movss  xmm1,DWORD PTR [rip+0xe81ed]        # 0x3eff38 ; CONFIG V2.ParentedSize value(+0x48)
307d4b  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307d52  41 0f 28 d1                    movaps xmm2,xmm9
307d56  e8 e5 45 fc ff                 call   0x2cc340
307d5b  33 d2                          xor    edx,edx
307d5d  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307d64  e8 03 3f 09 00                 call   0x39bc6c
307d69  41 8b cd                       mov    ecx,r13d
307d6c  e8 fb 0b 09 00                 call   0x39896c
307d71  48 8d 4d d8                    lea    rcx,[rbp-0x28]
307d75  e8 7a 47 fc ff                 call   0x2cc4f4
307d7a  e8 15 8c 08 00                 call   0x390994
307d7f  f3 0f 10 35 75 b3 f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff8b375]        # 0x2930fc ; f32=1.35
307d87  eb 08                          jmp    0x307d91
307d89  f3 0f 10 3d cf b4 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff8b4cf]        # 0x293260 ; f32=-1
307d91  4d 8b c5                       mov    r8,r13
307d94  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
307d99  48 8d 0d 38 84 0e 00           lea    rcx,[rip+0xe8438]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
307da0  e8 4b 1b fe ff                 call   0x2e98f0
307da5  48 8b c8                       mov    rcx,rax
307da8  e8 c3 cf fc ff                 call   0x2d4d70
307dad  f3 44 0f 10 0d 5a b4 f8 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff8b45a]        # 0x293210 ; f32=96
307db6  f3 44 0f 10 35 c9 b3 f8 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff8b3c9]        # 0x293188 ; f32=6
307dbf  84 c0                          test   al,al
307dc1  0f 84 30 0c 00 00              je     0x3089f7
307dc7  49 8b cc                       mov    rcx,r12
307dca  e8 51 c0 06 00                 call   0x373e20
307dcf  48 8b c8                       mov    rcx,rax
307dd2  4c 8b e8                       mov    r13,rax
307dd5  e8 2e 31 fc ff                 call   0x2caf08
307dda  84 c0                          test   al,al
307ddc  0f 84 15 0c 00 00              je     0x3089f7
307de2  49 8b cd                       mov    rcx,r13
307de5  e8 62 a4 06 00                 call   0x37224c
307dea  89 85 a0 01 00 00              mov    DWORD PTR [rbp+0x1a0],eax
307df0  44 8b f8                       mov    r15d,eax
307df3  85 c0                          test   eax,eax
307df5  0f 8e fc 0b 00 00              jle    0x3089f7
307dfb  41 b8 03 00 00 00              mov    r8d,0x3
307e01  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
307e06  48 8d 0d cb 83 0e 00           lea    rcx,[rip+0xe83cb]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
307e0d  e8 de 1a fe ff                 call   0x2e98f0
307e12  48 8b c8                       mov    rcx,rax
307e15  e8 56 cf fc ff                 call   0x2d4d70
307e1a  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307e21  84 c0                          test   al,al
307e23  0f 84 18 05 00 00              je     0x308341
307e29  f3 44 0f 10 15 b6 5f 0e 00     movss  xmm10,DWORD PTR [rip+0xe5fb6]        # 0x3edde8 ; CONFIG F.IconSize value(+0x48)
307e32  45 0f 28 ea                    movaps xmm13,xmm10
307e36  66 41 0f 6e cf                 movd   xmm1,r15d
307e3b  f3 44 0f 59 2d fc 5c f8 ff     mulss  xmm13,DWORD PTR [rip+0xfffffffffff85cfc]        # 0x28db40 ; f32=90
307e44  0f 5b c9                       cvtdq2ps xmm1,xmm1
307e47  41 0f 28 d5                    movaps xmm2,xmm13
307e4b  f3 0f 58 15 e1 b2 f8 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff8b2e1]        # 0x293134 ; f32=2
307e53  f3 41 0f 59 ca                 mulss  xmm1,xmm10
307e58  f3 41 0f 59 c9                 mulss  xmm1,xmm9
307e5d  f3 41 0f 58 ce                 addss  xmm1,xmm14
307e62  e8 d9 44 fc ff                 call   0x2cc340
307e67  48 8b c8                       mov    rcx,rax
307e6a  33 d2                          xor    edx,edx
307e6c  e8 ff 38 09 00                 call   0x39b770
307e71  0f 57 db                       xorps  xmm3,xmm3
307e74  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
307e7b  0f 57 d2                       xorps  xmm2,xmm2
307e7e  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
307e83  0f 57 c9                       xorps  xmm1,xmm1
307e86  e8 c5 44 fc ff                 call   0x2cc350
307e8b  48 8b d0                       mov    rdx,rax
307e8e  b9 36 00 00 00                 mov    ecx,0x36
307e93  e8 ec 0c 09 00                 call   0x398b84
307e98  0f 57 db                       xorps  xmm3,xmm3
307e9b  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
307ea2  0f 57 d2                       xorps  xmm2,xmm2
307ea5  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
307eaa  0f 57 c9                       xorps  xmm1,xmm1
307ead  e8 9e 44 fc ff                 call   0x2cc350
307eb2  48 8b d0                       mov    rdx,rax
307eb5  b9 03 00 00 00                 mov    ecx,0x3
307eba  e8 c5 0c 09 00                 call   0x398b84
307ebf  0f 57 c9                       xorps  xmm1,xmm1
307ec2  b9 04 00 00 00                 mov    ecx,0x4
307ec7  e8 fc 0d 09 00                 call   0x398cc8
307ecc  0f 57 d2                       xorps  xmm2,xmm2
307ecf  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307ed6  0f 57 c9                       xorps  xmm1,xmm1
307ed9  e8 62 44 fc ff                 call   0x2cc340
307ede  f3 0f 10 15 66 7f 0e 00        movss  xmm2,DWORD PTR [rip+0xe7f66]        # 0x3efe4c
307ee6  48 8d 8d a8 01 00 00           lea    rcx,[rbp+0x1a8]
307eed  f3 0f 10 0d 53 7f 0e 00        movss  xmm1,DWORD PTR [rip+0xe7f53]        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
307ef5  48 8b d8                       mov    rbx,rax
307ef8  e8 43 44 fc ff                 call   0x2cc340
307efd  48 8b c8                       mov    rcx,rax
307f00  4c 8b c3                       mov    r8,rbx
307f03  ba 02 00 00 00                 mov    edx,0x2
307f08  e8 27 38 09 00                 call   0x39b734
307f0d  40 38 3d a8 dd 0d 00           cmp    BYTE PTR [rip+0xddda8],dil        # 0x3e5cbc
307f14  74 48                          je     0x307f5e
307f16  0f 57 d2                       xorps  xmm2,xmm2
307f19  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307f20  0f 57 c9                       xorps  xmm1,xmm1
307f23  e8 18 44 fc ff                 call   0x2cc340
307f28  f3 0f 10 15 1c 7f 0e 00        movss  xmm2,DWORD PTR [rip+0xe7f1c]        # 0x3efe4c
307f30  48 8d 8d a8 01 00 00           lea    rcx,[rbp+0x1a8]
307f37  f3 0f 10 0d 09 7f 0e 00        movss  xmm1,DWORD PTR [rip+0xe7f09]        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
307f3f  48 8b d8                       mov    rbx,rax
307f42  e8 f9 43 fc ff                 call   0x2cc340
307f47  48 8b c8                       mov    rcx,rax
307f4a  4c 8b c3                       mov    r8,rbx
307f4d  ba 01 00 00 00                 mov    edx,0x1
307f52  e8 dd 37 09 00                 call   0x39b734
307f57  40 88 3d 5e dd 0d 00           mov    BYTE PTR [rip+0xddd5e],dil        # 0x3e5cbc
307f5e  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
307f63  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307f6a  e8 0d ca fe ff                 call   0x2f497c ; STRING getter=0x2f497c Clothing Icons
307f6f  48 8b c8                       mov    rcx,rax
307f72  e8 f5 06 fd ff                 call   0x2d866c
307f77  48 8b c8                       mov    rcx,rax
307f7a  33 d2                          xor    edx,edx
307f7c  41 b8 ab 00 00 00              mov    r8d,0xab
307f82  e8 1d 50 08 00                 call   0x38cfa4
307f87  84 c0                          test   al,al
307f89  0f 84 90 03 00 00              je     0x30831f
307f8f  41 0f 28 c2                    movaps xmm0,xmm10
307f93  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307f98  f3 0f 59 05 6c b2 f8 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff8b26c]        # 0x29320c ; f32=91
307fa0  f3 0f 11 44 24 70              movss  DWORD PTR [rsp+0x70],xmm0
307fa6  e8 4d af 08 00                 call   0x392ef8
307fab  f3 0f 10 54 24 44              movss  xmm2,DWORD PTR [rsp+0x44]
307fb1  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
307fb8  f3 0f 10 4c 24 40              movss  xmm1,DWORD PTR [rsp+0x40]
307fbe  e8 7d 43 fc ff                 call   0x2cc340
307fc3  f3 0f 10 85 98 01 00 00        movss  xmm0,DWORD PTR [rbp+0x198]
307fcb  f3 0f 10 8d 9c 01 00 00        movss  xmm1,DWORD PTR [rbp+0x19c]
307fd3  f3 0f 11 05 6d 7e 0e 00        movss  DWORD PTR [rip+0xe7e6d],xmm0        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
307fdb  f3 0f 11 0d 69 7e 0e 00        movss  DWORD PTR [rip+0xe7e69],xmm1        # 0x3efe4c
307fe3  e8 e4 ae 08 00                 call   0x392ecc
307fe8  44 8b b5 a0 01 00 00           mov    r14d,DWORD PTR [rbp+0x1a0]
307fef  41 0f 28 c2                    movaps xmm0,xmm10
307ff3  f3 41 0f 59 c1                 mulss  xmm0,xmm9
307ff8  45 0f 28 fa                    movaps xmm15,xmm10
307ffc  4c 8b e0                       mov    r12,rax
307fff  44 8b ff                       mov    r15d,edi
308002  f3 44 0f 59 3d f9 b1 f8 ff     mulss  xmm15,DWORD PTR [rip+0xfffffffffff8b1f9]        # 0x293204 ; f32=77
30800b  0f 57 f6                       xorps  xmm6,xmm6
30800e  f3 0f 11 44 24 68              movss  DWORD PTR [rsp+0x68],xmm0
308014  41 0f 28 c2                    movaps xmm0,xmm10
308018  f3 44 0f 59 15 87 b1 f8 ff     mulss  xmm10,DWORD PTR [rip+0xfffffffffff8b187]        # 0x2931a8 ; f32=12
308021  f3 41 0f 59 c6                 mulss  xmm0,xmm14
308026  f3 0f 11 b5 98 01 00 00        movss  DWORD PTR [rbp+0x198],xmm6
30802e  f3 44 0f 11 7d d0              movss  DWORD PTR [rbp-0x30],xmm15
308034  f3 0f 11 85 a8 01 00 00        movss  DWORD PTR [rbp+0x1a8],xmm0
30803c  41 8b d7                       mov    edx,r15d
30803f  49 8b cd                       mov    rcx,r13
308042  e8 a9 a2 06 00                 call   0x3722f0
308047  48 8b c8                       mov    rcx,rax
30804a  48 8b d8                       mov    rbx,rax
30804d  e8 b6 2e fc ff                 call   0x2caf08
308052  84 c0                          test   al,al
308054  0f 84 91 02 00 00              je     0x3082eb
30805a  ba 10 00 00 00                 mov    edx,0x10
30805f  48 8b cb                       mov    rcx,rbx
308062  e8 d5 6d fd ff                 call   0x2dee3c
308067  48 8b 08                       mov    rcx,QWORD PTR [rax]
30806a  e8 99 2e fc ff                 call   0x2caf08
30806f  84 c0                          test   al,al
308071  0f 84 74 02 00 00              je     0x3082eb
308077  48 8b cb                       mov    rcx,rbx
30807a  e8 15 92 06 00                 call   0x371294
30807f  48 8b cb                       mov    rcx,rbx
308082  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
308085  e8 ae 9b 06 00                 call   0x371c38
30808a  48 8b c8                       mov    rcx,rax
30808d  48 89 45 a8                    mov    QWORD PTR [rbp-0x58],rax
308091  e8 72 2e fc ff                 call   0x2caf08
308096  84 c0                          test   al,al
308098  0f 84 4d 02 00 00              je     0x3082eb
30809e  ba d8 00 00 00                 mov    edx,0xd8
3080a3  48 8b cb                       mov    rcx,rbx
3080a6  e8 91 6d fd ff                 call   0x2dee3c
3080ab  ba b4 00 00 00                 mov    edx,0xb4
3080b0  48 8b cb                       mov    rcx,rbx
3080b3  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
3080b7  f3 0f 11 85 a0 01 00 00        movss  DWORD PTR [rbp+0x1a0],xmm0
3080bf  e8 78 6d fd ff                 call   0x2dee3c
3080c4  48 8b cb                       mov    rcx,rbx
3080c7  f3 44 0f 10 38                 movss  xmm15,DWORD PTR [rax]
3080cc  e8 b3 a0 06 00                 call   0x372184
3080d1  f3 44 0f 10 4c 24 44           movss  xmm9,DWORD PTR [rsp+0x44]
3080d8  44 0f 28 e6                    movaps xmm12,xmm6
3080dc  f3 44 0f 58 64 24 40           addss  xmm12,DWORD PTR [rsp+0x40]
3080e3  84 c0                          test   al,al
3080e5  0f 84 b7 00 00 00              je     0x3081a2
3080eb  f3 0f 10 b5 a8 01 00 00        movss  xmm6,DWORD PTR [rbp+0x1a8]
3080f3  48 8d 4d 58                    lea    rcx,[rbp+0x58]
3080f7  41 0f 28 f9                    movaps xmm7,xmm9
3080fb  f3 41 0f 58 f4                 addss  xmm6,xmm12
308100  f3 41 0f 58 fd                 addss  xmm7,xmm13
308105  0f 28 ce                       movaps xmm1,xmm6
308108  0f 28 d7                       movaps xmm2,xmm7
30810b  e8 30 42 fc ff                 call   0x2cc340
308110  41 0f 28 d1                    movaps xmm2,xmm9
308114  48 8d 4d 60                    lea    rcx,[rbp+0x60]
308118  41 0f 28 cc                    movaps xmm1,xmm12
30811c  48 8b d8                       mov    rbx,rax
30811f  e8 1c 42 fc ff                 call   0x2cc340
308124  48 8b d0                       mov    rdx,rax
308127  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
30812b  41 b9 6e 87 42 4c              mov    r9d,0x4c42876e
308131  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
308138  4c 8b c3                       mov    r8,rbx
30813b  49 8b cc                       mov    rcx,r12
30813e  e8 01 91 09 00                 call   0x3a1244
308143  0f 28 d7                       movaps xmm2,xmm7
308146  48 8d 4d 68                    lea    rcx,[rbp+0x68]
30814a  0f 28 ce                       movaps xmm1,xmm6
30814d  e8 ee 41 fc ff                 call   0x2cc340
308152  f3 44 0f 5e bd a0 01 00 00     divss  xmm15,DWORD PTR [rbp+0x1a0]
30815b  48 8d 4d 70                    lea    rcx,[rbp+0x70]
30815f  48 8b d8                       mov    rbx,rax
308162  41 0f 28 d3                    movaps xmm2,xmm11
308166  41 0f 28 cc                    movaps xmm1,xmm12
30816a  f3 45 0f 5d fb                 minss  xmm15,xmm11
30816f  f3 41 0f 5c d7                 subss  xmm2,xmm15
308174  f3 41 0f 59 d5                 mulss  xmm2,xmm13
308179  f3 41 0f 58 d1                 addss  xmm2,xmm9
30817e  e8 bd 41 fc ff                 call   0x2cc340
308183  48 8b d0                       mov    rdx,rax
308186  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
30818a  41 b9 6e 87 42 cc              mov    r9d,0xcc42876e
308190  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
308197  4c 8b c3                       mov    r8,rbx
30819a  49 8b cc                       mov    rcx,r12
30819d  e8 a2 90 09 00                 call   0x3a1244
3081a2  41 0f 28 f9                    movaps xmm7,xmm9
3081a6  48 8d 4d 78                    lea    rcx,[rbp+0x78]
3081aa  41 0f 28 f4                    movaps xmm6,xmm12
3081ae  f3 41 0f 58 fb                 addss  xmm7,xmm11
3081b3  41 0f 28 d3                    movaps xmm2,xmm11
3081b7  f3 41 0f 58 f6                 addss  xmm6,xmm14
3081bc  41 0f 28 cb                    movaps xmm1,xmm11
3081c0  e8 7b 41 fc ff                 call   0x2cc340
3081c5  0f 57 d2                       xorps  xmm2,xmm2
3081c8  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
3081cf  0f 57 c9                       xorps  xmm1,xmm1
3081d2  48 8b f0                       mov    rsi,rax
3081d5  e8 66 41 fc ff                 call   0x2cc340
3081da  f3 0f 10 45 d0                 movss  xmm0,DWORD PTR [rbp-0x30]
3081df  48 8d 4d b0                    lea    rcx,[rbp-0x50]
3081e3  0f 28 d7                       movaps xmm2,xmm7
3081e6  0f 28 ce                       movaps xmm1,xmm6
3081e9  f3 0f 58 d0                    addss  xmm2,xmm0
3081ed  48 8b f8                       mov    rdi,rax
3081f0  f3 0f 58 c8                    addss  xmm1,xmm0
3081f4  e8 47 41 fc ff                 call   0x2cc340
3081f9  0f 28 d7                       movaps xmm2,xmm7
3081fc  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
308201  0f 28 ce                       movaps xmm1,xmm6
308204  48 8b d8                       mov    rbx,rax
308207  e8 34 41 fc ff                 call   0x2cc340
30820c  48 8b 55 a8                    mov    rdx,QWORD PTR [rbp-0x58]
308210  4c 8b c0                       mov    r8,rax
308213  c7 44 24 30 ff ff ff ff        mov    DWORD PTR [rsp+0x30],0xffffffff
30821b  4c 8b cb                       mov    r9,rbx
30821e  48 89 74 24 28                 mov    QWORD PTR [rsp+0x28],rsi
308223  49 8b cc                       mov    rcx,r12
308226  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
30822b  e8 38 7f 09 00                 call   0x3a0168
308230  8b 45 a0                       mov    eax,DWORD PTR [rbp-0x60]
308233  83 f8 01                       cmp    eax,0x1
308236  0f 8e 97 00 00 00              jle    0x3082d3
30823c  8b d0                          mov    edx,eax
30823e  48 8d 4d d8                    lea    rcx,[rbp-0x28]
308242  e8 c9 12 fd ff                 call   0x2d9510
308247  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30824b  e8 9c 55 fc ff                 call   0x2cd7ec
308250  f3 0f 10 05 08 b0 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff8b008]        # 0x293260 ; f32=-1
308258  48 8d 4d 88                    lea    rcx,[rbp-0x78]
30825c  48 8b d0                       mov    rdx,rax
30825f  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
308265  45 33 c9                       xor    r9d,r9d
308268  45 33 c0                       xor    r8d,r8d
30826b  e8 2c 75 08 00                 call   0x38f79c
308270  f3 0f 10 4c 24 70              movss  xmm1,DWORD PTR [rsp+0x70]
308276  f3 45 0f 58 cd                 addss  xmm9,xmm13
30827b  f3 0f 5c 4d 88                 subss  xmm1,DWORD PTR [rbp-0x78]
308280  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
308285  f3 45 0f 5c ca                 subss  xmm9,xmm10
30828a  f3 41 0f 58 cc                 addss  xmm1,xmm12
30828f  f3 44 0f 5c 0d e8 ae f8 ff     subss  xmm9,DWORD PTR [rip+0xfffffffffff8aee8]        # 0x293180 ; f32=5
308298  41 0f 28 d1                    movaps xmm2,xmm9
30829c  e8 9f 40 fc ff                 call   0x2cc340
3082a1  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3082a5  48 8b d8                       mov    rbx,rax
3082a8  e8 3f 55 fc ff                 call   0x2cd7ec
3082ad  33 ff                          xor    edi,edi
3082af  4c 8b c8                       mov    r9,rax
3082b2  41 b8 ff ff ff c8              mov    r8d,0xc8ffffff
3082b8  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
3082bd  48 8b d3                       mov    rdx,rbx
3082c0  49 8b cc                       mov    rcx,r12
3082c3  e8 f4 ae 09 00                 call   0x3a31bc
3082c8  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3082cc  e8 23 42 fc ff                 call   0x2cc4f4
3082d1  eb 02                          jmp    0x3082d5
3082d3  33 ff                          xor    edi,edi
3082d5  f3 0f 10 b5 98 01 00 00        movss  xmm6,DWORD PTR [rbp+0x198]
3082dd  f3 0f 58 74 24 68              addss  xmm6,DWORD PTR [rsp+0x68]
3082e3  f3 0f 11 b5 98 01 00 00        movss  DWORD PTR [rbp+0x198],xmm6
3082eb  41 ff c7                       inc    r15d
3082ee  45 3b fe                       cmp    r15d,r14d
3082f1  0f 8c 45 fd ff ff              jl     0x30803c
3082f7  e8 98 86 08 00                 call   0x390994
3082fc  f3 44 0f 10 0d 0b af f8 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff8af0b]        # 0x293210 ; f32=96
308305  f3 44 0f 10 25 da ae f8 ff     movss  xmm12,DWORD PTR [rip+0xfffffffffff8aeda]        # 0x2931e8 ; f32=36
30830e  f3 44 0f 10 3d 09 58 f8 ff     movss  xmm15,DWORD PTR [rip+0xfffffffffff85809]        # 0x28db20 ; f32=20
308317  4c 8b 75 90                    mov    r14,QWORD PTR [rbp-0x70]
30831b  4c 8b 65 98                    mov    r12,QWORD PTR [rbp-0x68]
30831f  b9 01 00 00 00                 mov    ecx,0x1
308324  e8 43 06 09 00                 call   0x39896c
308329  b9 01 00 00 00                 mov    ecx,0x1
30832e  e8 d9 05 09 00                 call   0x39890c
308333  f3 44 0f 10 15 14 4f f8 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff84f14]        # 0x28d250 ; f32=0.5
30833c  e9 b6 06 00 00                 jmp    0x3089f7
308341  0f 57 d2                       xorps  xmm2,xmm2
308344  0f 57 c9                       xorps  xmm1,xmm1
308347  e8 f4 3f fc ff                 call   0x2cc340
30834c  f3 0f 10 15 f8 7a 0e 00        movss  xmm2,DWORD PTR [rip+0xe7af8]        # 0x3efe4c
308354  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
30835b  f3 0f 10 0d e5 7a 0e 00        movss  xmm1,DWORD PTR [rip+0xe7ae5]        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
308363  48 8b d8                       mov    rbx,rax
308366  e8 d5 3f fc ff                 call   0x2cc340
30836b  48 8b c8                       mov    rcx,rax
30836e  4c 8b c3                       mov    r8,rbx
308371  ba 02 00 00 00                 mov    edx,0x2
308376  e8 b9 33 09 00                 call   0x39b734
30837b  40 38 3d 3a d9 0d 00           cmp    BYTE PTR [rip+0xdd93a],dil        # 0x3e5cbc
308382  74 48                          je     0x3083cc
308384  0f 57 d2                       xorps  xmm2,xmm2
308387  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30838e  0f 57 c9                       xorps  xmm1,xmm1
308391  e8 aa 3f fc ff                 call   0x2cc340
308396  f3 0f 10 15 ae 7a 0e 00        movss  xmm2,DWORD PTR [rip+0xe7aae]        # 0x3efe4c
30839e  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
3083a5  f3 0f 10 0d 9b 7a 0e 00        movss  xmm1,DWORD PTR [rip+0xe7a9b]        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
3083ad  48 8b d8                       mov    rbx,rax
3083b0  e8 8b 3f fc ff                 call   0x2cc340
3083b5  48 8b c8                       mov    rcx,rax
3083b8  4c 8b c3                       mov    r8,rbx
3083bb  ba 01 00 00 00                 mov    edx,0x1
3083c0  e8 6f 33 09 00                 call   0x39b734
3083c5  40 88 3d f0 d8 0d 00           mov    BYTE PTR [rip+0xdd8f0],dil        # 0x3e5cbc
3083cc  ba 54 00 00 00                 mov    edx,0x54
3083d1  c7 44 24 20 ff 00 00 00        mov    DWORD PTR [rsp+0x20],0xff
3083d9  48 8d 4d b0                    lea    rcx,[rbp-0x50]
3083dd  44 8d 4a 0e                    lea    r9d,[rdx+0xe]
3083e1  44 8d 42 7b                    lea    r8d,[rdx+0x7b]
3083e5  e8 2e 2f fd ff                 call   0x2db318
3083ea  48 8b c8                       mov    rcx,rax
3083ed  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
3083f2  e8 09 74 fe ff                 call   0x2ef800
3083f7  f3 0f 10 5c 24 50              movss  xmm3,DWORD PTR [rsp+0x50]
3083fd  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
308402  f3 0f 10 54 24 4c              movss  xmm2,DWORD PTR [rsp+0x4c]
308408  f3 0f 10 4c 24 48              movss  xmm1,DWORD PTR [rsp+0x48]
30840e  f3 0f 10 44 24 54              movss  xmm0,DWORD PTR [rsp+0x54]
308414  f3 0f 5e de                    divss  xmm3,xmm6
308418  f3 0f 5e d6                    divss  xmm2,xmm6
30841c  f3 0f 5e ce                    divss  xmm1,xmm6
308420  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
308426  e8 25 3f fc ff                 call   0x2cc350
30842b  f3 0f 10 15 59 7b 0e 00        movss  xmm2,DWORD PTR [rip+0xe7b59]        # 0x3eff8c
308433  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30843a  f3 0f 10 0d 46 7b 0e 00        movss  xmm1,DWORD PTR [rip+0xe7b46]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
308442  e8 f9 3e fc ff                 call   0x2cc340
308447  ba 02 00 00 00                 mov    edx,0x2
30844c  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308453  e8 18 33 09 00                 call   0x39b770
308458  0f 57 d2                       xorps  xmm2,xmm2
30845b  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308462  0f 57 c9                       xorps  xmm1,xmm1
308465  e8 d6 3e fc ff                 call   0x2cc340
30846a  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
308471  b9 02 00 00 00                 mov    ecx,0x2
308476  e8 e5 07 09 00                 call   0x398c60
30847b  0f b6 1d 96 03 f1 ff           movzx  ebx,BYTE PTR [rip+0xfffffffffff10396]        # 0x218818
308482  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
308487  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30848e  e8 19 ce fe ff                 call   0x2f52ac ; STRING getter=0x2f52ac Clothing Window
308493  48 8b c8                       mov    rcx,rax
308496  e8 c5 4c fd ff                 call   0x2dd160
30849b  f7 db                          neg    ebx
30849d  48 8b c8                       mov    rcx,rax
3084a0  45 1b c0                       sbb    r8d,r8d
3084a3  33 d2                          xor    edx,edx
3084a5  41 83 e0 fc                    and    r8d,0xfffffffc
3084a9  41 83 c0 2f                    add    r8d,0x2f
3084ad  e8 f2 4a 08 00                 call   0x38cfa4
3084b2  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
3084b9  45 0f 28 ec                    movaps xmm13,xmm12
3084bd  e8 aa 9f 08 00                 call   0x39246c
3084c2  48 8d 8d a8 01 00 00           lea    rcx,[rbp+0x1a8]
3084c9  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
3084cd  e8 9a 9f 08 00                 call   0x39246c
3084d2  0f 28 ce                       movaps xmm1,xmm6
3084d5  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3084dc  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
3084e1  e8 5a 3e fc ff                 call   0x2cc340
3084e6  f3 0f 10 85 98 01 00 00        movss  xmm0,DWORD PTR [rbp+0x198]
3084ee  b9 01 00 00 00                 mov    ecx,0x1
3084f3  f3 0f 10 8d 9c 01 00 00        movss  xmm1,DWORD PTR [rbp+0x19c]
3084fb  f3 0f 11 05 45 79 0e 00        movss  DWORD PTR [rip+0xe7945],xmm0        # 0x3efe48 ; CONFIG V2.ClothingPosition value(+0x48)
308503  f3 0f 11 0d 41 79 0e 00        movss  DWORD PTR [rip+0xe7941],xmm1        # 0x3efe4c
30850b  e8 5c 04 09 00                 call   0x39896c
308510  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
308517  e8 f8 a9 08 00                 call   0x392f14
30851c  48 8d 8d a8 01 00 00           lea    rcx,[rbp+0x1a8]
308523  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
308527  e8 e8 a9 08 00                 call   0x392f14
30852c  0f 28 ce                       movaps xmm1,xmm6
30852f  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308536  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
30853b  e8 00 3e fc ff                 call   0x2cc340
308540  f3 0f 10 85 98 01 00 00        movss  xmm0,DWORD PTR [rbp+0x198]
308548  48 8d 95 a0 01 00 00           lea    rdx,[rbp+0x1a0]
30854f  f3 0f 10 8d 9c 01 00 00        movss  xmm1,DWORD PTR [rbp+0x19c]
308557  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30855e  f3 0f 11 05 22 7a 0e 00        movss  DWORD PTR [rip+0xe7a22],xmm0        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
308566  f3 0f 11 0d 1e 7a 0e 00        movss  DWORD PTR [rip+0xe7a1e],xmm1        # 0x3eff8c
30856e  e8 81 89 fe ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
308573  48 8b c8                       mov    rcx,rax
308576  e8 e9 fe fc ff                 call   0x2d8464
30857b  48 8b f8                       mov    rdi,rax
30857e  48 8d 55 38                    lea    rdx,[rbp+0x38]
308582  49 8b ce                       mov    rcx,r14
308585  e8 b6 0a 06 00                 call   0x369040
30858a  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
30858f  48 8b d8                       mov    rbx,rax
308592  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308599  e8 c2 da fe ff                 call   0x2f6060 ; STRING getter=0x2f6060 Clothing(
30859e  48 8b c8                       mov    rcx,rax
3085a1  e8 9e 57 fc ff                 call   0x2cdd44
3085a6  48 8b d0                       mov    rdx,rax
3085a9  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3085ad  4c 8b c3                       mov    r8,rbx
3085b0  e8 27 21 fe ff                 call   0x2ea6dc
3085b5  48 8b d0                       mov    rdx,rax
3085b8  48 8d 4d f8                    lea    rcx,[rbp-0x8]
3085bc  4c 8b c7                       mov    r8,rdi
3085bf  e8 74 27 fc ff                 call   0x2cad38
3085c4  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3085c8  e8 27 3f fc ff                 call   0x2cc4f4
3085cd  48 8d 4d 38                    lea    rcx,[rbp+0x38]
3085d1  e8 1e 3f fc ff                 call   0x2cc4f4
3085d6  f3 0f 10 35 aa 79 0e 00        movss  xmm6,DWORD PTR [rip+0xe79aa]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
3085de  48 8d 4d f8                    lea    rcx,[rbp-0x8]
3085e2  f3 0f 5c 35 32 55 f8 ff        subss  xmm6,DWORD PTR [rip+0xfffffffffff85532]        # 0x28db1c ; f32=10
3085ea  e8 fd 51 fc ff                 call   0x2cd7ec
3085ef  48 8b d0                       mov    rdx,rax
3085f2  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
3085f8  45 33 c9                       xor    r9d,r9d
3085fb  48 8d 4d 98                    lea    rcx,[rbp-0x68]
3085ff  45 33 c0                       xor    r8d,r8d
308602  e8 95 71 08 00                 call   0x38f79c
308607  f3 0f 5c 75 98                 subss  xmm6,DWORD PTR [rbp-0x68]
30860c  f3 41 0f 59 f2                 mulss  xmm6,xmm10
308611  e8 0e 9e 08 00                 call   0x392424
308616  f3 0f 58 c6                    addss  xmm0,xmm6
30861a  e8 f1 2d 09 00                 call   0x39b410
30861f  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
308624  b9 01 00 00 00                 mov    ecx,0x1
308629  e8 56 05 09 00                 call   0x398b84
30862e  48 8d 4d f8                    lea    rcx,[rbp-0x8]
308632  e8 b5 51 fc ff                 call   0x2cd7ec
308637  48 8b c8                       mov    rcx,rax
30863a  e8 51 c8 0b 00                 call   0x3c4e90
30863f  b9 01 00 00 00                 mov    ecx,0x1
308644  e8 c3 02 09 00                 call   0x39890c
308649  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30864e  e8 19 9e 08 00                 call   0x39246c
308653  f3 0f 10 44 24 44              movss  xmm0,DWORD PTR [rsp+0x44]
308659  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308660  f3 0f 58 05 00 ac f8 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff8ac00]        # 0x293268 ; f32=-16
308668  f3 0f 10 0d 24 ab f8 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff8ab24]        # 0x293194 ; f32=7
308670  0f 57 d2                       xorps  xmm2,xmm2
308673  f3 0f 11 44 24 44              movss  DWORD PTR [rsp+0x44],xmm0
308679  e8 c2 3c fc ff                 call   0x2cc340
30867e  4c 8b c0                       mov    r8,rax
308681  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
308686  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
30868b  e8 48 73 fe ff                 call   0x2ef9d8
308690  f3 0f 10 0d f0 78 0e 00        movss  xmm1,DWORD PTR [rip+0xe78f0]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
308698  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30869f  f3 0f 5c 0d 0d ab f8 ff        subss  xmm1,DWORD PTR [rip+0xfffffffffff8ab0d]        # 0x2931b4 ; f32=14
3086a7  41 0f 28 d3                    movaps xmm2,xmm11
3086ab  f3 41 0f 59 ca                 mulss  xmm1,xmm10
3086b0  e8 8b 3c fc ff                 call   0x2cc340
3086b5  4c 8b c0                       mov    r8,rax
3086b8  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
3086bd  48 8d 4d 90                    lea    rcx,[rbp-0x70]
3086c1  e8 12 73 fe ff                 call   0x2ef9d8
3086c6  e8 01 a8 08 00                 call   0x392ecc
3086cb  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
3086d0  48 8b f8                       mov    rdi,rax
3086d3  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3086d8  e8 13 66 fe ff                 call   0x2eecf0
3086dd  48 8b c8                       mov    rcx,rax
3086e0  e8 27 71 fe ff                 call   0x2ef80c
3086e5  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
3086ea  8b d8                          mov    ebx,eax
3086ec  48 8d 4d b0                    lea    rcx,[rbp-0x50]
3086f0  e8 fb 65 fe ff                 call   0x2eecf0
3086f5  48 8b c8                       mov    rcx,rax
3086f8  e8 0f 71 fe ff                 call   0x2ef80c
3086fd  33 f6                          xor    esi,esi
3086ff  4c 8d 45 90                    lea    r8,[rbp-0x70]
308703  89 74 24 30                    mov    DWORD PTR [rsp+0x30],esi
308707  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
30870c  89 5c 24 28                    mov    DWORD PTR [rsp+0x28],ebx
308710  45 33 c9                       xor    r9d,r9d
308713  48 8b cf                       mov    rcx,rdi
308716  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
30871a  e8 b9 8b 09 00                 call   0x3a12d8
30871f  f3 0f 10 0d 61 78 0e 00        movss  xmm1,DWORD PTR [rip+0xe7861]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
308727  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30872e  f3 41 0f 59 ca                 mulss  xmm1,xmm10
308733  0f 57 d2                       xorps  xmm2,xmm2
308736  e8 05 3c fc ff                 call   0x2cc340
30873b  4c 8b c0                       mov    r8,rax
30873e  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
308743  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
308748  e8 8b 72 fe ff                 call   0x2ef9d8
30874d  f3 0f 10 0d 33 78 0e 00        movss  xmm1,DWORD PTR [rip+0xe7833]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
308755  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30875c  f3 0f 5c 0d b8 53 f8 ff        subss  xmm1,DWORD PTR [rip+0xfffffffffff853b8]        # 0x28db1c ; f32=10
308764  41 0f 28 d3                    movaps xmm2,xmm11
308768  f3 41 0f 59 ca                 mulss  xmm1,xmm10
30876d  e8 ce 3b fc ff                 call   0x2cc340
308772  4c 8b c0                       mov    r8,rax
308775  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
30877a  48 8d 4d 88                    lea    rcx,[rbp-0x78]
30877e  e8 55 72 fe ff                 call   0x2ef9d8
308783  e8 44 a7 08 00                 call   0x392ecc
308788  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
30878d  48 8b f8                       mov    rdi,rax
308790  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
308795  e8 56 65 fe ff                 call   0x2eecf0
30879a  48 8b c8                       mov    rcx,rax
30879d  e8 6a 70 fe ff                 call   0x2ef80c
3087a2  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
3087a7  8b d8                          mov    ebx,eax
3087a9  48 8d 4d b0                    lea    rcx,[rbp-0x50]
3087ad  e8 3e 65 fe ff                 call   0x2eecf0
3087b2  48 8b c8                       mov    rcx,rax
3087b5  e8 52 70 fe ff                 call   0x2ef80c
3087ba  89 5c 24 30                    mov    DWORD PTR [rsp+0x30],ebx
3087be  4c 8d 45 88                    lea    r8,[rbp-0x78]
3087c2  44 8b c8                       mov    r9d,eax
3087c5  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
3087c9  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
3087ce  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
3087d2  48 8b cf                       mov    rcx,rdi
3087d5  e8 fe 8a 09 00                 call   0x3a12d8
3087da  f3 0f 10 15 b6 a9 f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff8a9b6]        # 0x293198 ; f32=7.5
3087e2  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3087e9  0f 57 c9                       xorps  xmm1,xmm1
3087ec  e8 4f 3b fc ff                 call   0x2cc340
3087f1  48 8b d0                       mov    rdx,rax
3087f4  8d 4e 0e                       lea    ecx,[rsi+0xe]
3087f7  e8 64 04 09 00                 call   0x398c60
3087fc  e8 47 9c 08 00                 call   0x392448
308801  f3 0f 5c 05 7b a9 f8 ff        subss  xmm0,DWORD PTR [rip+0xfffffffffff8a97b]        # 0x293184 ; f32=5.7
308809  e8 3e 2c 09 00                 call   0x39b44c
30880e  8b d6                          mov    edx,esi
308810  49 8b cd                       mov    rcx,r13
308813  e8 d8 9a 06 00                 call   0x3722f0
308818  48 8b c8                       mov    rcx,rax
30881b  48 8b d8                       mov    rbx,rax
30881e  e8 e5 26 fc ff                 call   0x2caf08
308823  84 c0                          test   al,al
308825  0f 84 83 01 00 00              je     0x3089ae
30882b  ba 10 00 00 00                 mov    edx,0x10
308830  48 8b cb                       mov    rcx,rbx
308833  e8 04 66 fd ff                 call   0x2dee3c
308838  4c 8b 00                       mov    r8,QWORD PTR [rax]
30883b  49 8b c8                       mov    rcx,r8
30883e  e8 c5 26 fc ff                 call   0x2caf08
308843  84 c0                          test   al,al
308845  0f 84 63 01 00 00              je     0x3089ae
30884b  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
308850  49 8b c8                       mov    rcx,r8
308853  e8 40 9b 06 00                 call   0x372398
308858  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
30885d  e8 32 fe fc ff                 call   0x2d8694
308862  84 c0                          test   al,al
308864  0f 85 3a 01 00 00              jne    0x3089a4
30886a  48 8b cb                       mov    rcx,rbx
30886d  e8 22 8a 06 00                 call   0x371294
308872  8b d0                          mov    edx,eax
308874  48 8d 4d 18                    lea    rcx,[rbp+0x18]
308878  8b f8                          mov    edi,eax
30887a  e8 91 0c fd ff                 call   0x2d9510
30887f  48 8d 95 a8 01 00 00           lea    rdx,[rbp+0x1a8]
308886  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30888d  e8 92 f4 fe ff                 call   0x2f7d24 ; STRING getter=0x2f7d24 ) 
308892  48 8b c8                       mov    rcx,rax
308895  e8 5a 7b 01 00                 call   0x3203f4
30889a  48 8d 95 a0 01 00 00           lea    rdx,[rbp+0x1a0]
3088a1  48 8b d8                       mov    rbx,rax
3088a4  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3088ab  e8 30 80 fe ff                 call   0x2f08e0 ; STRING getter=0x2f08e0 (
3088b0  48 8b c8                       mov    rcx,rax
3088b3  e8 ac fb fc ff                 call   0x2d8464
3088b8  48 8b d0                       mov    rdx,rax
3088bb  4c 8d 45 18                    lea    r8,[rbp+0x18]
3088bf  48 8d 8d 88 00 00 00           lea    rcx,[rbp+0x88]
3088c6  e8 49 1e fe ff                 call   0x2ea714
3088cb  48 8b d0                       mov    rdx,rax
3088ce  48 8d 4d 38                    lea    rcx,[rbp+0x38]
3088d2  4c 8b c3                       mov    r8,rbx
3088d5  e8 5e 24 fc ff                 call   0x2cad38
3088da  48 8d 8d 88 00 00 00           lea    rcx,[rbp+0x88]
3088e1  e8 0e 3c fc ff                 call   0x2cc4f4
3088e6  f3 0f 10 35 9a 76 0e 00        movss  xmm6,DWORD PTR [rip+0xe769a]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
3088ee  48 8d 4d b0                    lea    rcx,[rbp-0x50]
3088f2  f3 0f 5c 35 22 52 f8 ff        subss  xmm6,DWORD PTR [rip+0xfffffffffff85222]        # 0x28db1c ; f32=10
3088fa  83 ff 01                       cmp    edi,0x1
3088fd  7e 10                          jle    0x30890f
3088ff  4c 8d 44 24 48                 lea    r8,[rsp+0x48]
308904  48 8d 55 38                    lea    rdx,[rbp+0x38]
308908  e8 43 1d fe ff                 call   0x2ea650
30890d  eb 0a                          jmp    0x308919
30890f  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
308914  e8 7b b8 fc ff                 call   0x2d4194
308919  e8 2e 9c 08 00                 call   0x39254c
30891e  4c 8b c8                       mov    r9,rax
308921  48 8d 55 b0                    lea    rdx,[rbp-0x50]
308925  0f 28 d6                       movaps xmm2,xmm6
308928  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30892c  e8 43 04 01 00                 call   0x318d74
308931  48 8d 4d d8                    lea    rcx,[rbp-0x28]
308935  e8 b2 4e fc ff                 call   0x2cd7ec
30893a  48 8b d0                       mov    rdx,rax
30893d  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
308943  45 33 c9                       xor    r9d,r9d
308946  48 8d 4d a8                    lea    rcx,[rbp-0x58]
30894a  45 33 c0                       xor    r8d,r8d
30894d  e8 4a 6e 08 00                 call   0x38f79c
308952  f3 0f 5c 75 a8                 subss  xmm6,DWORD PTR [rbp-0x58]
308957  f3 41 0f 59 f2                 mulss  xmm6,xmm10
30895c  e8 c3 9a 08 00                 call   0x392424
308961  f3 0f 58 c6                    addss  xmm0,xmm6
308965  e8 a6 2a 09 00                 call   0x39b410
30896a  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30896e  e8 79 4e fc ff                 call   0x2cd7ec
308973  48 8b c8                       mov    rcx,rax
308976  e8 15 c5 0b 00                 call   0x3c4e90
30897b  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30897f  f3 45 0f 58 ef                 addss  xmm13,xmm15
308984  e8 6b 3b fc ff                 call   0x2cc4f4
308989  48 8d 4d b0                    lea    rcx,[rbp-0x50]
30898d  e8 62 3b fc ff                 call   0x2cc4f4
308992  48 8d 4d 38                    lea    rcx,[rbp+0x38]
308996  e8 59 3b fc ff                 call   0x2cc4f4
30899b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
30899f  e8 50 3b fc ff                 call   0x2cc4f4
3089a4  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3089a9  e8 46 3b fc ff                 call   0x2cc4f4
3089ae  ff c6                          inc    esi
3089b0  41 3b f7                       cmp    esi,r15d
3089b3  0f 8c 55 fe ff ff              jl     0x30880e
3089b9  f3 0f 10 0d c7 75 0e 00        movss  xmm1,DWORD PTR [rip+0xe75c7]        # 0x3eff88 ; CONFIG V2.ClothingSize value(+0x48)
3089c1  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3089c8  41 0f 28 d5                    movaps xmm2,xmm13
3089cc  e8 6f 39 fc ff                 call   0x2cc340
3089d1  33 d2                          xor    edx,edx
3089d3  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3089da  e8 8d 32 09 00                 call   0x39bc6c
3089df  b9 01 00 00 00                 mov    ecx,0x1
3089e4  e8 83 ff 08 00                 call   0x39896c
3089e9  48 8d 4d f8                    lea    rcx,[rbp-0x8]
3089ed  e8 02 3b fc ff                 call   0x2cc4f4
3089f2  e8 9d 7f 08 00                 call   0x390994
3089f7  45 33 c0                       xor    r8d,r8d
3089fa  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
3089ff  48 8d 0d d2 77 0e 00           lea    rcx,[rip+0xe77d2]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
308a06  e8 e5 0e fe ff                 call   0x2e98f0
308a0b  48 8b c8                       mov    rcx,rax
308a0e  e8 5d c3 fc ff                 call   0x2d4d70
308a13  33 f6                          xor    esi,esi
308a15  84 c0                          test   al,al
308a17  0f 84 51 0c 00 00              je     0x30966e
308a1d  49 8b cc                       mov    rcx,r12
308a20  e8 a3 b3 06 00                 call   0x373dc8
308a25  48 8b c8                       mov    rcx,rax
308a28  4c 8b e8                       mov    r13,rax
308a2b  e8 d8 24 fc ff                 call   0x2caf08
308a30  84 c0                          test   al,al
308a32  0f 84 36 0c 00 00              je     0x30966e
308a38  49 8b cd                       mov    rcx,r13
308a3b  e8 0c 98 06 00                 call   0x37224c
308a40  44 8b e0                       mov    r12d,eax
308a43  85 c0                          test   eax,eax
308a45  0f 8e 23 0c 00 00              jle    0x30966e
308a4b  44 8d 46 03                    lea    r8d,[rsi+0x3]
308a4f  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
308a54  48 8d 0d 7d 77 0e 00           lea    rcx,[rip+0xe777d]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
308a5b  e8 90 0e fe ff                 call   0x2e98f0
308a60  48 8b c8                       mov    rcx,rax
308a63  e8 08 c3 fc ff                 call   0x2d4d70
308a68  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308a6f  84 c0                          test   al,al
308a71  0f 84 d5 04 00 00              je     0x308f4c
308a77  f3 44 0f 10 15 68 53 0e 00     movss  xmm10,DWORD PTR [rip+0xe5368]        # 0x3edde8 ; CONFIG F.IconSize value(+0x48)
308a80  45 0f 28 ea                    movaps xmm13,xmm10
308a84  66 41 0f 6e cc                 movd   xmm1,r12d
308a89  f3 44 0f 59 2d ae 50 f8 ff     mulss  xmm13,DWORD PTR [rip+0xfffffffffff850ae]        # 0x28db40 ; f32=90
308a92  0f 5b c9                       cvtdq2ps xmm1,xmm1
308a95  41 0f 28 d5                    movaps xmm2,xmm13
308a99  f3 0f 58 15 93 a6 f8 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff8a693]        # 0x293134 ; f32=2
308aa1  f3 41 0f 59 ca                 mulss  xmm1,xmm10
308aa6  f3 41 0f 59 c9                 mulss  xmm1,xmm9
308aab  f3 41 0f 58 ce                 addss  xmm1,xmm14
308ab0  e8 8b 38 fc ff                 call   0x2cc340
308ab5  48 8b c8                       mov    rcx,rax
308ab8  33 d2                          xor    edx,edx
308aba  e8 b1 2c 09 00                 call   0x39b770
308abf  0f 57 db                       xorps  xmm3,xmm3
308ac2  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
308ac9  0f 57 d2                       xorps  xmm2,xmm2
308acc  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
308ad1  0f 57 c9                       xorps  xmm1,xmm1
308ad4  e8 77 38 fc ff                 call   0x2cc350
308ad9  48 8b d0                       mov    rdx,rax
308adc  8d 4e 36                       lea    ecx,[rsi+0x36]
308adf  e8 a0 00 09 00                 call   0x398b84
308ae4  0f 57 db                       xorps  xmm3,xmm3
308ae7  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
308aee  0f 57 d2                       xorps  xmm2,xmm2
308af1  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
308af6  0f 57 c9                       xorps  xmm1,xmm1
308af9  e8 52 38 fc ff                 call   0x2cc350
308afe  48 8b d0                       mov    rdx,rax
308b01  8d 4e 03                       lea    ecx,[rsi+0x3]
308b04  e8 7b 00 09 00                 call   0x398b84
308b09  0f 57 c9                       xorps  xmm1,xmm1
308b0c  8d 4e 04                       lea    ecx,[rsi+0x4]
308b0f  e8 b4 01 09 00                 call   0x398cc8
308b14  0f 57 d2                       xorps  xmm2,xmm2
308b17  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308b1e  0f 57 c9                       xorps  xmm1,xmm1
308b21  e8 1a 38 fc ff                 call   0x2cc340
308b26  f3 0f 10 15 ce 72 0e 00        movss  xmm2,DWORD PTR [rip+0xe72ce]        # 0x3efdfc
308b2e  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
308b35  f3 0f 10 0d bb 72 0e 00        movss  xmm1,DWORD PTR [rip+0xe72bb]        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
308b3d  48 8b d8                       mov    rbx,rax
308b40  e8 fb 37 fc ff                 call   0x2cc340
308b45  48 8b c8                       mov    rcx,rax
308b48  8d 56 02                       lea    edx,[rsi+0x2]
308b4b  4c 8b c3                       mov    r8,rbx
308b4e  e8 e1 2b 09 00                 call   0x39b734
308b53  40 38 35 61 d1 0d 00           cmp    BYTE PTR [rip+0xdd161],sil        # 0x3e5cbb
308b5a  74 46                          je     0x308ba2
308b5c  0f 57 d2                       xorps  xmm2,xmm2
308b5f  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308b66  0f 57 c9                       xorps  xmm1,xmm1
308b69  e8 d2 37 fc ff                 call   0x2cc340
308b6e  f3 0f 10 15 86 72 0e 00        movss  xmm2,DWORD PTR [rip+0xe7286]        # 0x3efdfc
308b76  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
308b7d  f3 0f 10 0d 73 72 0e 00        movss  xmm1,DWORD PTR [rip+0xe7273]        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
308b85  48 8b d8                       mov    rbx,rax
308b88  e8 b3 37 fc ff                 call   0x2cc340
308b8d  48 8b c8                       mov    rcx,rax
308b90  8d 56 01                       lea    edx,[rsi+0x1]
308b93  4c 8b c3                       mov    r8,rbx
308b96  e8 99 2b 09 00                 call   0x39b734
308b9b  40 88 35 19 d1 0d 00           mov    BYTE PTR [rip+0xdd119],sil        # 0x3e5cbb
308ba2  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
308ba7  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308bae  e8 11 77 fe ff                 call   0x2f02c4 ; STRING getter=0x2f02c4 Hotbar Icons
308bb3  48 8b c8                       mov    rcx,rax
308bb6  e8 39 fa fc ff                 call   0x2d85f4
308bbb  48 8b c8                       mov    rcx,rax
308bbe  33 d2                          xor    edx,edx
308bc0  41 b8 ab 00 00 00              mov    r8d,0xab
308bc6  e8 d9 43 08 00                 call   0x38cfa4
308bcb  84 c0                          test   al,al
308bcd  0f 84 60 03 00 00              je     0x308f33
308bd3  41 0f 28 c2                    movaps xmm0,xmm10
308bd7  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
308bdc  f3 0f 59 05 28 a6 f8 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff8a628]        # 0x29320c ; f32=91
308be4  f3 0f 11 44 24 70              movss  DWORD PTR [rsp+0x70],xmm0
308bea  e8 09 a3 08 00                 call   0x392ef8
308bef  f3 0f 10 54 24 44              movss  xmm2,DWORD PTR [rsp+0x44]
308bf5  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308bfc  f3 0f 10 4c 24 40              movss  xmm1,DWORD PTR [rsp+0x40]
308c02  e8 39 37 fc ff                 call   0x2cc340
308c07  f3 0f 10 85 98 01 00 00        movss  xmm0,DWORD PTR [rbp+0x198]
308c0f  f3 0f 10 8d 9c 01 00 00        movss  xmm1,DWORD PTR [rbp+0x19c]
308c17  f3 0f 11 05 d9 71 0e 00        movss  DWORD PTR [rip+0xe71d9],xmm0        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
308c1f  f3 0f 11 0d d5 71 0e 00        movss  DWORD PTR [rip+0xe71d5],xmm1        # 0x3efdfc
308c27  e8 a0 a2 08 00                 call   0x392ecc
308c2c  41 0f 28 c2                    movaps xmm0,xmm10
308c30  45 0f 28 fa                    movaps xmm15,xmm10
308c34  f3 44 0f 59 3d c7 a5 f8 ff     mulss  xmm15,DWORD PTR [rip+0xfffffffffff8a5c7]        # 0x293204 ; f32=77
308c3d  0f 57 f6                       xorps  xmm6,xmm6
308c40  4c 8b f8                       mov    r15,rax
308c43  44 8b f6                       mov    r14d,esi
308c46  f3 41 0f 59 c1                 mulss  xmm0,xmm9
308c4b  f3 0f 11 b5 98 01 00 00        movss  DWORD PTR [rbp+0x198],xmm6
308c53  f3 0f 11 45 a0                 movss  DWORD PTR [rbp-0x60],xmm0
308c58  41 0f 28 c2                    movaps xmm0,xmm10
308c5c  f3 44 0f 59 15 43 a5 f8 ff     mulss  xmm10,DWORD PTR [rip+0xfffffffffff8a543]        # 0x2931a8 ; f32=12
308c65  f3 41 0f 59 c6                 mulss  xmm0,xmm14
308c6a  f3 0f 11 85 a0 01 00 00        movss  DWORD PTR [rbp+0x1a0],xmm0
308c72  41 8b d6                       mov    edx,r14d
308c75  49 8b cd                       mov    rcx,r13
308c78  e8 73 96 06 00                 call   0x3722f0
308c7d  48 8b c8                       mov    rcx,rax
308c80  48 8b d8                       mov    rbx,rax
308c83  e8 80 22 fc ff                 call   0x2caf08
308c88  84 c0                          test   al,al
308c8a  0f 84 92 02 00 00              je     0x308f22
308c90  ba 10 00 00 00                 mov    edx,0x10
308c95  48 8b cb                       mov    rcx,rbx
308c98  e8 9f 61 fd ff                 call   0x2dee3c
308c9d  48 8b 08                       mov    rcx,QWORD PTR [rax]
308ca0  e8 63 22 fc ff                 call   0x2caf08
308ca5  84 c0                          test   al,al
308ca7  0f 84 75 02 00 00              je     0x308f22
308cad  48 8b cb                       mov    rcx,rbx
308cb0  e8 df 85 06 00                 call   0x371294
308cb5  48 8b cb                       mov    rcx,rbx
308cb8  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
308cbc  e8 77 8f 06 00                 call   0x371c38
308cc1  48 8b c8                       mov    rcx,rax
308cc4  48 89 45 98                    mov    QWORD PTR [rbp-0x68],rax
308cc8  e8 3b 22 fc ff                 call   0x2caf08
308ccd  84 c0                          test   al,al
308ccf  0f 84 4d 02 00 00              je     0x308f22
308cd5  ba d8 00 00 00                 mov    edx,0xd8
308cda  48 8b cb                       mov    rcx,rbx
308cdd  e8 5a 61 fd ff                 call   0x2dee3c
308ce2  ba b4 00 00 00                 mov    edx,0xb4
308ce7  48 8b cb                       mov    rcx,rbx
308cea  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
308cee  f3 0f 11 85 a8 01 00 00        movss  DWORD PTR [rbp+0x1a8],xmm0
308cf6  e8 41 61 fd ff                 call   0x2dee3c
308cfb  48 8b cb                       mov    rcx,rbx
308cfe  f3 44 0f 10 30                 movss  xmm14,DWORD PTR [rax]
308d03  e8 7c 94 06 00                 call   0x372184
308d08  f3 44 0f 10 4c 24 44           movss  xmm9,DWORD PTR [rsp+0x44]
308d0f  44 0f 28 e6                    movaps xmm12,xmm6
308d13  f3 44 0f 58 64 24 40           addss  xmm12,DWORD PTR [rsp+0x40]
308d1a  84 c0                          test   al,al
308d1c  0f 84 bc 00 00 00              je     0x308dde
308d22  f3 0f 10 b5 a0 01 00 00        movss  xmm6,DWORD PTR [rbp+0x1a0]
308d2a  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
308d2f  41 0f 28 f9                    movaps xmm7,xmm9
308d33  f3 41 0f 58 f4                 addss  xmm6,xmm12
308d38  f3 41 0f 58 fd                 addss  xmm7,xmm13
308d3d  0f 28 ce                       movaps xmm1,xmm6
308d40  0f 28 d7                       movaps xmm2,xmm7
308d43  e8 f8 35 fc ff                 call   0x2cc340
308d48  41 0f 28 d1                    movaps xmm2,xmm9
308d4c  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
308d51  41 0f 28 cc                    movaps xmm1,xmm12
308d55  48 8b d8                       mov    rbx,rax
308d58  e8 e3 35 fc ff                 call   0x2cc340
308d5d  48 8b d0                       mov    rdx,rax
308d60  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
308d64  41 b9 6e 87 42 4c              mov    r9d,0x4c42876e
308d6a  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
308d71  4c 8b c3                       mov    r8,rbx
308d74  49 8b cf                       mov    rcx,r15
308d77  e8 c8 84 09 00                 call   0x3a1244
308d7c  0f 28 d7                       movaps xmm2,xmm7
308d7f  48 8d 4d b0                    lea    rcx,[rbp-0x50]
308d83  0f 28 ce                       movaps xmm1,xmm6
308d86  e8 b5 35 fc ff                 call   0x2cc340
308d8b  f3 44 0f 5e b5 a8 01 00 00     divss  xmm14,DWORD PTR [rbp+0x1a8]
308d94  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
308d9b  48 8b d8                       mov    rbx,rax
308d9e  41 0f 28 d3                    movaps xmm2,xmm11
308da2  41 0f 28 cc                    movaps xmm1,xmm12
308da6  f3 45 0f 5d f3                 minss  xmm14,xmm11
308dab  f3 41 0f 5c d6                 subss  xmm2,xmm14
308db0  f3 41 0f 59 d5                 mulss  xmm2,xmm13
308db5  f3 41 0f 58 d1                 addss  xmm2,xmm9
308dba  e8 81 35 fc ff                 call   0x2cc340
308dbf  48 8b d0                       mov    rdx,rax
308dc2  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
308dc6  41 b9 6e 87 42 cc              mov    r9d,0xcc42876e
308dcc  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
308dd3  4c 8b c3                       mov    r8,rbx
308dd6  49 8b cf                       mov    rcx,r15
308dd9  e8 66 84 09 00                 call   0x3a1244
308dde  41 0f 28 f9                    movaps xmm7,xmm9
308de2  48 8d 4d 78                    lea    rcx,[rbp+0x78]
308de6  41 0f 28 f4                    movaps xmm6,xmm12
308dea  f3 41 0f 58 fb                 addss  xmm7,xmm11
308def  f3 0f 58 35 91 a3 f8 ff        addss  xmm6,DWORD PTR [rip+0xfffffffffff8a391]        # 0x293188 ; f32=6
308df7  41 0f 28 d3                    movaps xmm2,xmm11
308dfb  41 0f 28 cb                    movaps xmm1,xmm11
308dff  e8 3c 35 fc ff                 call   0x2cc340
308e04  0f 57 d2                       xorps  xmm2,xmm2
308e07  48 8d 4d 70                    lea    rcx,[rbp+0x70]
308e0b  0f 57 c9                       xorps  xmm1,xmm1
308e0e  48 8b f0                       mov    rsi,rax
308e11  e8 2a 35 fc ff                 call   0x2cc340
308e16  0f 28 d7                       movaps xmm2,xmm7
308e19  48 8d 4d 68                    lea    rcx,[rbp+0x68]
308e1d  0f 28 ce                       movaps xmm1,xmm6
308e20  f3 41 0f 58 d7                 addss  xmm2,xmm15
308e25  f3 41 0f 58 cf                 addss  xmm1,xmm15
308e2a  48 8b f8                       mov    rdi,rax
308e2d  e8 0e 35 fc ff                 call   0x2cc340
308e32  0f 28 d7                       movaps xmm2,xmm7
308e35  48 8d 4d 60                    lea    rcx,[rbp+0x60]
308e39  0f 28 ce                       movaps xmm1,xmm6
308e3c  48 8b d8                       mov    rbx,rax
308e3f  e8 fc 34 fc ff                 call   0x2cc340
308e44  48 8b 55 98                    mov    rdx,QWORD PTR [rbp-0x68]
308e48  4c 8b c0                       mov    r8,rax
308e4b  c7 44 24 30 ff ff ff ff        mov    DWORD PTR [rsp+0x30],0xffffffff
308e53  4c 8b cb                       mov    r9,rbx
308e56  48 89 74 24 28                 mov    QWORD PTR [rsp+0x28],rsi
308e5b  49 8b cf                       mov    rcx,r15
308e5e  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
308e63  e8 00 73 09 00                 call   0x3a0168
308e68  8b 44 24 68                    mov    eax,DWORD PTR [rsp+0x68]
308e6c  83 f8 01                       cmp    eax,0x1
308e6f  0f 8e 96 00 00 00              jle    0x308f0b
308e75  8b d0                          mov    edx,eax
308e77  48 8d 4d f8                    lea    rcx,[rbp-0x8]
308e7b  e8 90 06 fd ff                 call   0x2d9510
308e80  48 8d 4d f8                    lea    rcx,[rbp-0x8]
308e84  e8 63 49 fc ff                 call   0x2cd7ec
308e89  f3 0f 10 05 cf a3 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff8a3cf]        # 0x293260 ; f32=-1
308e91  48 8d 4d 90                    lea    rcx,[rbp-0x70]
308e95  48 8b d0                       mov    rdx,rax
308e98  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
308e9e  45 33 c9                       xor    r9d,r9d
308ea1  45 33 c0                       xor    r8d,r8d
308ea4  e8 f3 68 08 00                 call   0x38f79c
308ea9  f3 0f 10 4c 24 70              movss  xmm1,DWORD PTR [rsp+0x70]
308eaf  f3 45 0f 58 cd                 addss  xmm9,xmm13
308eb4  f3 0f 5c 4d 90                 subss  xmm1,DWORD PTR [rbp-0x70]
308eb9  48 8d 4d 58                    lea    rcx,[rbp+0x58]
308ebd  f3 45 0f 5c ca                 subss  xmm9,xmm10
308ec2  f3 41 0f 58 cc                 addss  xmm1,xmm12
308ec7  f3 44 0f 5c 0d b0 a2 f8 ff     subss  xmm9,DWORD PTR [rip+0xfffffffffff8a2b0]        # 0x293180 ; f32=5
308ed0  41 0f 28 d1                    movaps xmm2,xmm9
308ed4  e8 67 34 fc ff                 call   0x2cc340
308ed9  48 8d 4d f8                    lea    rcx,[rbp-0x8]
308edd  48 8b d8                       mov    rbx,rax
308ee0  e8 07 49 fc ff                 call   0x2cd7ec
308ee5  33 f6                          xor    esi,esi
308ee7  4c 8b c8                       mov    r9,rax
308eea  41 b8 ff ff ff c8              mov    r8d,0xc8ffffff
308ef0  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
308ef5  48 8b d3                       mov    rdx,rbx
308ef8  49 8b cf                       mov    rcx,r15
308efb  e8 bc a2 09 00                 call   0x3a31bc
308f00  48 8d 4d f8                    lea    rcx,[rbp-0x8]
308f04  e8 eb 35 fc ff                 call   0x2cc4f4
308f09  eb 02                          jmp    0x308f0d
308f0b  33 f6                          xor    esi,esi
308f0d  f3 0f 10 b5 98 01 00 00        movss  xmm6,DWORD PTR [rbp+0x198]
308f15  f3 0f 58 75 a0                 addss  xmm6,DWORD PTR [rbp-0x60]
308f1a  f3 0f 11 b5 98 01 00 00        movss  DWORD PTR [rbp+0x198],xmm6
308f22  41 ff c6                       inc    r14d
308f25  45 3b f4                       cmp    r14d,r12d
308f28  0f 8c 44 fd ff ff              jl     0x308c72
308f2e  e8 61 7a 08 00                 call   0x390994
308f33  b9 01 00 00 00                 mov    ecx,0x1
308f38  e8 2f fa 08 00                 call   0x39896c
308f3d  b9 01 00 00 00                 mov    ecx,0x1
308f42  e8 c5 f9 08 00                 call   0x39890c
308f47  e9 22 07 00 00                 jmp    0x30966e
308f4c  0f 57 d2                       xorps  xmm2,xmm2
308f4f  0f 57 c9                       xorps  xmm1,xmm1
308f52  e8 e9 33 fc ff                 call   0x2cc340
308f57  f3 0f 10 15 9d 6e 0e 00        movss  xmm2,DWORD PTR [rip+0xe6e9d]        # 0x3efdfc
308f5f  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
308f66  f3 0f 10 0d 8a 6e 0e 00        movss  xmm1,DWORD PTR [rip+0xe6e8a]        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
308f6e  48 8b d8                       mov    rbx,rax
308f71  e8 ca 33 fc ff                 call   0x2cc340
308f76  48 8b c8                       mov    rcx,rax
308f79  4c 8b c3                       mov    r8,rbx
308f7c  ba 02 00 00 00                 mov    edx,0x2
308f81  e8 ae 27 09 00                 call   0x39b734
308f86  40 38 35 2e cd 0d 00           cmp    BYTE PTR [rip+0xdcd2e],sil        # 0x3e5cbb
308f8d  74 48                          je     0x308fd7
308f8f  0f 57 d2                       xorps  xmm2,xmm2
308f92  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
308f99  0f 57 c9                       xorps  xmm1,xmm1
308f9c  e8 9f 33 fc ff                 call   0x2cc340
308fa1  f3 0f 10 15 53 6e 0e 00        movss  xmm2,DWORD PTR [rip+0xe6e53]        # 0x3efdfc
308fa9  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
308fb0  f3 0f 10 0d 40 6e 0e 00        movss  xmm1,DWORD PTR [rip+0xe6e40]        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
308fb8  48 8b d8                       mov    rbx,rax
308fbb  e8 80 33 fc ff                 call   0x2cc340
308fc0  48 8b c8                       mov    rcx,rax
308fc3  4c 8b c3                       mov    r8,rbx
308fc6  ba 01 00 00 00                 mov    edx,0x1
308fcb  e8 64 27 09 00                 call   0x39b734
308fd0  40 88 35 e4 cc 0d 00           mov    BYTE PTR [rip+0xdcce4],sil        # 0x3e5cbb
308fd7  ba 54 00 00 00                 mov    edx,0x54
308fdc  c7 44 24 20 ff 00 00 00        mov    DWORD PTR [rsp+0x20],0xff
308fe4  48 8d 4d b0                    lea    rcx,[rbp-0x50]
308fe8  44 8d 4a 0e                    lea    r9d,[rdx+0xe]
308fec  44 8d 42 7b                    lea    r8d,[rdx+0x7b]
308ff0  e8 23 23 fd ff                 call   0x2db318
308ff5  48 8b c8                       mov    rcx,rax
308ff8  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
308ffd  e8 fe 67 fe ff                 call   0x2ef800
309002  f3 0f 10 05 f2 a0 f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff8a0f2]        # 0x2930fc ; f32=1.35
30900a  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
30900f  f3 0f 10 5c 24 50              movss  xmm3,DWORD PTR [rsp+0x50]
309015  f3 0f 10 54 24 4c              movss  xmm2,DWORD PTR [rsp+0x4c]
30901b  f3 0f 10 4c 24 48              movss  xmm1,DWORD PTR [rsp+0x48]
309021  f3 0f 5e d8                    divss  xmm3,xmm0
309025  f3 0f 5e d0                    divss  xmm2,xmm0
309029  f3 0f 5e c8                    divss  xmm1,xmm0
30902d  f3 0f 10 44 24 54              movss  xmm0,DWORD PTR [rsp+0x54]
309033  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
309039  e8 12 33 fc ff                 call   0x2cc350
30903e  f3 0f 10 15 a6 6e 0e 00        movss  xmm2,DWORD PTR [rip+0xe6ea6]        # 0x3efeec
309046  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30904d  f3 0f 10 0d 93 6e 0e 00        movss  xmm1,DWORD PTR [rip+0xe6e93]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
309055  e8 e6 32 fc ff                 call   0x2cc340
30905a  ba 02 00 00 00                 mov    edx,0x2
30905f  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
309066  e8 05 27 09 00                 call   0x39b770
30906b  0f 57 d2                       xorps  xmm2,xmm2
30906e  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
309075  0f 57 c9                       xorps  xmm1,xmm1
309078  e8 c3 32 fc ff                 call   0x2cc340
30907d  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
309084  b9 02 00 00 00                 mov    ecx,0x2
309089  e8 d2 fb 08 00                 call   0x398c60
30908e  0f b6 1d 83 f7 f0 ff           movzx  ebx,BYTE PTR [rip+0xfffffffffff0f783]        # 0x218818
309095  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
30909a  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3090a1  e8 46 78 fe ff                 call   0x2f08ec ; STRING getter=0x2f08ec Hotbar Window
3090a6  48 8b c8                       mov    rcx,rax
3090a9  e8 da 40 fd ff                 call   0x2dd188
3090ae  f7 db                          neg    ebx
3090b0  48 8b c8                       mov    rcx,rax
3090b3  45 1b c0                       sbb    r8d,r8d
3090b6  33 d2                          xor    edx,edx
3090b8  41 83 e0 fc                    and    r8d,0xfffffffc
3090bc  41 83 c0 2f                    add    r8d,0x2f
3090c0  e8 df 3e 08 00                 call   0x38cfa4
3090c5  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
3090cc  e8 9b 93 08 00                 call   0x39246c
3090d1  48 8d 8d a8 01 00 00           lea    rcx,[rbp+0x1a8]
3090d8  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
3090dc  e8 8b 93 08 00                 call   0x39246c
3090e1  0f 28 ce                       movaps xmm1,xmm6
3090e4  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3090eb  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
3090f0  e8 4b 32 fc ff                 call   0x2cc340
3090f5  f3 0f 10 85 98 01 00 00        movss  xmm0,DWORD PTR [rbp+0x198]
3090fd  b9 01 00 00 00                 mov    ecx,0x1
309102  f3 0f 10 8d 9c 01 00 00        movss  xmm1,DWORD PTR [rbp+0x19c]
30910a  f3 0f 11 05 e6 6c 0e 00        movss  DWORD PTR [rip+0xe6ce6],xmm0        # 0x3efdf8 ; CONFIG V2.HotBarPosition value(+0x48)
309112  f3 0f 11 0d e2 6c 0e 00        movss  DWORD PTR [rip+0xe6ce2],xmm1        # 0x3efdfc
30911a  e8 4d f8 08 00                 call   0x39896c
30911f  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
309126  e8 e9 9d 08 00                 call   0x392f14
30912b  48 8d 8d a8 01 00 00           lea    rcx,[rbp+0x1a8]
309132  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
309136  e8 d9 9d 08 00                 call   0x392f14
30913b  0f 28 ce                       movaps xmm1,xmm6
30913e  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
309145  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
30914a  e8 f1 31 fc ff                 call   0x2cc340
30914f  f3 0f 10 85 98 01 00 00        movss  xmm0,DWORD PTR [rbp+0x198]
309157  48 8d 95 a0 01 00 00           lea    rdx,[rbp+0x1a0]
30915e  f3 0f 10 8d 9c 01 00 00        movss  xmm1,DWORD PTR [rbp+0x19c]
309166  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30916d  f3 0f 11 05 73 6d 0e 00        movss  DWORD PTR [rip+0xe6d73],xmm0        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
309175  f3 0f 11 0d 6f 6d 0e 00        movss  DWORD PTR [rip+0xe6d6f],xmm1        # 0x3efeec
30917d  e8 72 7d fe ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
309182  48 8b c8                       mov    rcx,rax
309185  e8 da f2 fc ff                 call   0x2d8464
30918a  48 8b f8                       mov    rdi,rax
30918d  48 8d 55 18                    lea    rdx,[rbp+0x18]
309191  49 8b ce                       mov    rcx,r14
309194  e8 a7 fe 05 00                 call   0x369040
309199  48 8d 95 a8 01 00 00           lea    rdx,[rbp+0x1a8]
3091a0  48 8b d8                       mov    rbx,rax
3091a3  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3091aa  e8 49 7a fe ff                 call   0x2f0bf8
3091af  48 8b c8                       mov    rcx,rax
3091b2  e8 5d a4 fd ff                 call   0x2e3614
3091b7  48 8b d0                       mov    rdx,rax
3091ba  48 8d 8d 88 00 00 00           lea    rcx,[rbp+0x88]
3091c1  4c 8b c3                       mov    r8,rbx
3091c4  e8 13 15 fe ff                 call   0x2ea6dc
3091c9  48 8b d0                       mov    rdx,rax
3091cc  48 8d 4d 38                    lea    rcx,[rbp+0x38]
3091d0  4c 8b c7                       mov    r8,rdi
3091d3  e8 60 1b fc ff                 call   0x2cad38
3091d8  48 8d 8d 88 00 00 00           lea    rcx,[rbp+0x88]
3091df  e8 10 33 fc ff                 call   0x2cc4f4
3091e4  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3091e8  e8 07 33 fc ff                 call   0x2cc4f4
3091ed  f3 0f 10 35 f3 6c 0e 00        movss  xmm6,DWORD PTR [rip+0xe6cf3]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
3091f5  48 8d 4d 38                    lea    rcx,[rbp+0x38]
3091f9  f3 44 0f 10 0d 1a 49 f8 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff8491a]        # 0x28db1c ; f32=10
309202  f3 41 0f 5c f1                 subss  xmm6,xmm9
309207  e8 e0 45 fc ff                 call   0x2cd7ec
30920c  f3 0f 10 3d 4c a0 f8 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff8a04c]        # 0x293260 ; f32=-1
309214  48 8d 4d 98                    lea    rcx,[rbp-0x68]
309218  48 8b d0                       mov    rdx,rax
30921b  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
309221  45 33 c9                       xor    r9d,r9d
309224  45 33 c0                       xor    r8d,r8d
309227  e8 70 65 08 00                 call   0x38f79c
30922c  f3 0f 5c 75 98                 subss  xmm6,DWORD PTR [rbp-0x68]
309231  f3 41 0f 59 f2                 mulss  xmm6,xmm10
309236  e8 e9 91 08 00                 call   0x392424
30923b  f3 0f 58 c6                    addss  xmm0,xmm6
30923f  e8 cc 21 09 00                 call   0x39b410
309244  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
309249  b9 01 00 00 00                 mov    ecx,0x1
30924e  e8 31 f9 08 00                 call   0x398b84
309253  48 8d 4d 38                    lea    rcx,[rbp+0x38]
309257  e8 90 45 fc ff                 call   0x2cd7ec
30925c  48 8b c8                       mov    rcx,rax
30925f  e8 2c bc 0b 00                 call   0x3c4e90
309264  b9 01 00 00 00                 mov    ecx,0x1
309269  e8 9e f6 08 00                 call   0x39890c
30926e  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
309273  e8 f4 91 08 00                 call   0x39246c
309278  f3 0f 10 44 24 44              movss  xmm0,DWORD PTR [rsp+0x44]
30927e  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
309285  f3 0f 58 05 db 9f f8 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff89fdb]        # 0x293268 ; f32=-16
30928d  f3 0f 10 0d ff 9e f8 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff89eff]        # 0x293194 ; f32=7
309295  0f 57 d2                       xorps  xmm2,xmm2
309298  f3 0f 11 44 24 44              movss  DWORD PTR [rsp+0x44],xmm0
30929e  e8 9d 30 fc ff                 call   0x2cc340
3092a3  4c 8b c0                       mov    r8,rax
3092a6  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
3092ab  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
3092b0  e8 23 67 fe ff                 call   0x2ef9d8
3092b5  f3 0f 10 0d 2b 6c 0e 00        movss  xmm1,DWORD PTR [rip+0xe6c2b]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
3092bd  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3092c4  f3 0f 5c 0d e8 9e f8 ff        subss  xmm1,DWORD PTR [rip+0xfffffffffff89ee8]        # 0x2931b4 ; f32=14
3092cc  41 0f 28 d3                    movaps xmm2,xmm11
3092d0  f3 41 0f 59 ca                 mulss  xmm1,xmm10
3092d5  e8 66 30 fc ff                 call   0x2cc340
3092da  4c 8b c0                       mov    r8,rax
3092dd  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
3092e2  48 8d 4d 90                    lea    rcx,[rbp-0x70]
3092e6  e8 ed 66 fe ff                 call   0x2ef9d8
3092eb  e8 dc 9b 08 00                 call   0x392ecc
3092f0  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
3092f5  48 8b f8                       mov    rdi,rax
3092f8  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3092fd  e8 ee 59 fe ff                 call   0x2eecf0
309302  48 8b c8                       mov    rcx,rax
309305  e8 02 65 fe ff                 call   0x2ef80c
30930a  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
30930f  8b d8                          mov    ebx,eax
309311  48 8d 4d b0                    lea    rcx,[rbp-0x50]
309315  e8 d6 59 fe ff                 call   0x2eecf0
30931a  48 8b c8                       mov    rcx,rax
30931d  e8 ea 64 fe ff                 call   0x2ef80c
309322  89 74 24 30                    mov    DWORD PTR [rsp+0x30],esi
309326  4c 8d 45 90                    lea    r8,[rbp-0x70]
30932a  89 5c 24 28                    mov    DWORD PTR [rsp+0x28],ebx
30932e  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
309333  45 33 c9                       xor    r9d,r9d
309336  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
30933a  48 8b cf                       mov    rcx,rdi
30933d  e8 96 7f 09 00                 call   0x3a12d8
309342  f3 0f 10 0d 9e 6b 0e 00        movss  xmm1,DWORD PTR [rip+0xe6b9e]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
30934a  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
309351  f3 41 0f 59 ca                 mulss  xmm1,xmm10
309356  0f 57 d2                       xorps  xmm2,xmm2
309359  e8 e2 2f fc ff                 call   0x2cc340
30935e  4c 8b c0                       mov    r8,rax
309361  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
309366  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
30936b  e8 68 66 fe ff                 call   0x2ef9d8
309370  f3 0f 10 0d 70 6b 0e 00        movss  xmm1,DWORD PTR [rip+0xe6b70]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
309378  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30937f  f3 41 0f 5c c9                 subss  xmm1,xmm9
309384  41 0f 28 d3                    movaps xmm2,xmm11
309388  f3 41 0f 59 ca                 mulss  xmm1,xmm10
30938d  e8 ae 2f fc ff                 call   0x2cc340
309392  4c 8b c0                       mov    r8,rax
309395  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
30939a  48 8d 4d 88                    lea    rcx,[rbp-0x78]
30939e  e8 35 66 fe ff                 call   0x2ef9d8
3093a3  e8 24 9b 08 00                 call   0x392ecc
3093a8  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
3093ad  48 8b f8                       mov    rdi,rax
3093b0  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3093b5  e8 36 59 fe ff                 call   0x2eecf0
3093ba  48 8b c8                       mov    rcx,rax
3093bd  e8 4a 64 fe ff                 call   0x2ef80c
3093c2  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
3093c7  8b d8                          mov    ebx,eax
3093c9  48 8d 4d b0                    lea    rcx,[rbp-0x50]
3093cd  e8 1e 59 fe ff                 call   0x2eecf0
3093d2  48 8b c8                       mov    rcx,rax
3093d5  e8 32 64 fe ff                 call   0x2ef80c
3093da  89 5c 24 30                    mov    DWORD PTR [rsp+0x30],ebx
3093de  4c 8d 45 88                    lea    r8,[rbp-0x78]
3093e2  44 8b c8                       mov    r9d,eax
3093e5  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
3093e9  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
3093ee  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
3093f2  48 8b cf                       mov    rcx,rdi
3093f5  e8 de 7e 09 00                 call   0x3a12d8
3093fa  f3 0f 10 15 96 9d f8 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff89d96]        # 0x293198 ; f32=7.5
309402  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
309409  0f 57 c9                       xorps  xmm1,xmm1
30940c  e8 2f 2f fc ff                 call   0x2cc340
309411  48 8b d0                       mov    rdx,rax
309414  b9 0e 00 00 00                 mov    ecx,0xe
309419  e8 42 f8 08 00                 call   0x398c60
30941e  e8 25 90 08 00                 call   0x392448
309423  f3 0f 5c 05 59 9d f8 ff        subss  xmm0,DWORD PTR [rip+0xfffffffffff89d59]        # 0x293184 ; f32=5.7
30942b  e8 1c 20 09 00                 call   0x39b44c
309430  49 8b ce                       mov    rcx,r14
309433  e8 4c f6 05 00                 call   0x368a84
309438  48 8b c8                       mov    rcx,rax
30943b  48 8b d0                       mov    rdx,rax
30943e  e8 c5 1a fc ff                 call   0x2caf08
309443  84 c0                          test   al,al
309445  74 0d                          je     0x309454
309447  48 8b ca                       mov    rcx,rdx
30944a  e8 d1 8d 06 00                 call   0x372220
30944f  44 8b f0                       mov    r14d,eax
309452  eb 06                          jmp    0x30945a
309454  41 be 6f a0 fe ff              mov    r14d,0xfffea06f
30945a  8b d6                          mov    edx,esi
30945c  49 8b cd                       mov    rcx,r13
30945f  e8 8c 8e 06 00                 call   0x3722f0
309464  48 8b c8                       mov    rcx,rax
309467  48 8b d8                       mov    rbx,rax
30946a  e8 99 1a fc ff                 call   0x2caf08
30946f  84 c0                          test   al,al
309471  0f 84 ae 01 00 00              je     0x309625
309477  ba 10 00 00 00                 mov    edx,0x10
30947c  48 8b cb                       mov    rcx,rbx
30947f  e8 b8 59 fd ff                 call   0x2dee3c
309484  4c 8b 00                       mov    r8,QWORD PTR [rax]
309487  49 8b c8                       mov    rcx,r8
30948a  e8 79 1a fc ff                 call   0x2caf08
30948f  84 c0                          test   al,al
309491  0f 84 8e 01 00 00              je     0x309625
309497  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
30949c  49 8b c8                       mov    rcx,r8
30949f  e8 f4 8e 06 00                 call   0x372398
3094a4  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3094a9  e8 e6 f1 fc ff                 call   0x2d8694
3094ae  84 c0                          test   al,al
3094b0  0f 85 65 01 00 00              jne    0x30961b
3094b6  48 8b cb                       mov    rcx,rbx
3094b9  e8 46 81 06 00                 call   0x371604
3094be  48 8b cb                       mov    rcx,rbx
3094c1  44 8b f8                       mov    r15d,eax
3094c4  e8 cb 7d 06 00                 call   0x371294
3094c9  8b d0                          mov    edx,eax
3094cb  48 8d 4d b0                    lea    rcx,[rbp-0x50]
3094cf  8b f8                          mov    edi,eax
3094d1  e8 3a 00 fd ff                 call   0x2d9510
3094d6  48 8d 95 a8 01 00 00           lea    rdx,[rbp+0x1a8]
3094dd  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
3094e4  e8 77 80 fe ff                 call   0x2f1560 ; STRING getter=0x2f1560 ) 
3094e9  48 8b c8                       mov    rcx,rax
3094ec  e8 03 6f 01 00                 call   0x3203f4
3094f1  48 8d 95 a0 01 00 00           lea    rdx,[rbp+0x1a0]
3094f8  48 8b d8                       mov    rbx,rax
3094fb  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
309502  e8 d9 73 fe ff                 call   0x2f08e0 ; STRING getter=0x2f08e0 (
309507  48 8b c8                       mov    rcx,rax
30950a  e8 55 ef fc ff                 call   0x2d8464
30950f  48 8b d0                       mov    rdx,rax
309512  4c 8d 45 b0                    lea    r8,[rbp-0x50]
309516  48 8d 8d 88 00 00 00           lea    rcx,[rbp+0x88]
30951d  e8 f2 11 fe ff                 call   0x2ea714
309522  48 8b d0                       mov    rdx,rax
309525  48 8d 4d 18                    lea    rcx,[rbp+0x18]
309529  4c 8b c3                       mov    r8,rbx
30952c  e8 07 18 fc ff                 call   0x2cad38
309531  48 8d 8d 88 00 00 00           lea    rcx,[rbp+0x88]
309538  e8 b7 2f fc ff                 call   0x2cc4f4
30953d  f3 0f 10 35 a3 69 0e 00        movss  xmm6,DWORD PTR [rip+0xe69a3]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
309545  48 8d 4d d8                    lea    rcx,[rbp-0x28]
309549  f3 41 0f 5c f1                 subss  xmm6,xmm9
30954e  83 ff 01                       cmp    edi,0x1
309551  7e 10                          jle    0x309563
309553  4c 8d 44 24 48                 lea    r8,[rsp+0x48]
309558  48 8d 55 18                    lea    rdx,[rbp+0x18]
30955c  e8 ef 10 fe ff                 call   0x2ea650
309561  eb 0a                          jmp    0x30956d
309563  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
309568  e8 27 ac fc ff                 call   0x2d4194
30956d  e8 da 8f 08 00                 call   0x39254c
309572  4c 8b c8                       mov    r9,rax
309575  48 8d 55 d8                    lea    rdx,[rbp-0x28]
309579  0f 28 d6                       movaps xmm2,xmm6
30957c  48 8d 4d f8                    lea    rcx,[rbp-0x8]
309580  e8 ef f7 00 00                 call   0x318d74
309585  48 8d 4d f8                    lea    rcx,[rbp-0x8]
309589  e8 5e 42 fc ff                 call   0x2cd7ec
30958e  48 8b d0                       mov    rdx,rax
309591  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
309597  45 33 c9                       xor    r9d,r9d
30959a  48 8d 4d a8                    lea    rcx,[rbp-0x58]
30959e  45 33 c0                       xor    r8d,r8d
3095a1  e8 f6 61 08 00                 call   0x38f79c
3095a6  f3 0f 5c 75 a8                 subss  xmm6,DWORD PTR [rbp-0x58]
3095ab  f3 41 0f 59 f2                 mulss  xmm6,xmm10
3095b0  e8 6f 8e 08 00                 call   0x392424
3095b5  f3 0f 58 c6                    addss  xmm0,xmm6
3095b9  e8 52 1e 09 00                 call   0x39b410
3095be  45 3b f7                       cmp    r14d,r15d
3095c1  75 0f                          jne    0x3095d2
3095c3  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
3095c8  b9 01 00 00 00                 mov    ecx,0x1
3095cd  e8 b2 f5 08 00                 call   0x398b84
3095d2  48 8d 4d f8                    lea    rcx,[rbp-0x8]
3095d6  e8 11 42 fc ff                 call   0x2cd7ec
3095db  48 8b c8                       mov    rcx,rax
3095de  e8 ad b8 0b 00                 call   0x3c4e90
3095e3  45 3b f7                       cmp    r14d,r15d
3095e6  75 0a                          jne    0x3095f2
3095e8  b9 01 00 00 00                 mov    ecx,0x1
3095ed  e8 1a f3 08 00                 call   0x39890c
3095f2  48 8d 4d f8                    lea    rcx,[rbp-0x8]
3095f6  f3 45 0f 58 e7                 addss  xmm12,xmm15
3095fb  e8 f4 2e fc ff                 call   0x2cc4f4
309600  48 8d 4d d8                    lea    rcx,[rbp-0x28]
309604  e8 eb 2e fc ff                 call   0x2cc4f4
309609  48 8d 4d 18                    lea    rcx,[rbp+0x18]
30960d  e8 e2 2e fc ff                 call   0x2cc4f4
309612  48 8d 4d b0                    lea    rcx,[rbp-0x50]
309616  e8 d9 2e fc ff                 call   0x2cc4f4
30961b  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
309620  e8 cf 2e fc ff                 call   0x2cc4f4
309625  ff c6                          inc    esi
309627  41 3b f4                       cmp    esi,r12d
30962a  0f 8c 2a fe ff ff              jl     0x30945a
309630  f3 0f 10 0d b0 68 0e 00        movss  xmm1,DWORD PTR [rip+0xe68b0]        # 0x3efee8 ; CONFIG V2.HotbarSize value(+0x48)
309638  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
30963f  41 0f 28 d4                    movaps xmm2,xmm12
309643  e8 f8 2c fc ff                 call   0x2cc340
309648  33 d2                          xor    edx,edx
30964a  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
309651  e8 16 26 09 00                 call   0x39bc6c
309656  b9 01 00 00 00                 mov    ecx,0x1
30965b  e8 0c f3 08 00                 call   0x39896c
309660  48 8d 4d 38                    lea    rcx,[rbp+0x38]
309664  e8 8b 2e fc ff                 call   0x2cc4f4
309669  e8 26 73 08 00                 call   0x390994
30966e  4c 8d 9c 24 50 02 00 00        lea    r11,[rsp+0x250]
309676  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
30967a  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
30967f  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
309684  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
309689  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
30968e  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
309693  45 0f 28 5b a0                 movaps xmm11,XMMWORD PTR [r11-0x60]
309698  45 0f 28 63 90                 movaps xmm12,XMMWORD PTR [r11-0x70]
30969d  45 0f 28 6b 80                 movaps xmm13,XMMWORD PTR [r11-0x80]
3096a2  45 0f 28 b3 70 ff ff ff        movaps xmm14,XMMWORD PTR [r11-0x90]
3096aa  45 0f 28 bb 60 ff ff ff        movaps xmm15,XMMWORD PTR [r11-0xa0]
3096b2  49 8b e3                       mov    rsp,r11
3096b5  41 5f                          pop    r15
3096b7  41 5e                          pop    r14
3096b9  41 5d                          pop    r13
3096bb  41 5c                          pop    r12
3096bd  5f                             pop    rdi
3096be  5e                             pop    rsi
3096bf  5d                             pop    rbp
3096c0  c3                             ret

; pdata function 0x35d5ac..0x3612f7 unwind=0x3d3854
35d5ac  48 8b c4                       mov    rax,rsp
35d5af  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
35d5b3  55                             push   rbp
35d5b4  56                             push   rsi
35d5b5  57                             push   rdi
35d5b6  41 54                          push   r12
35d5b8  41 55                          push   r13
35d5ba  41 56                          push   r14
35d5bc  41 57                          push   r15
35d5be  48 8d a8 28 fa ff ff           lea    rbp,[rax-0x5d8]
35d5c5  48 81 ec a0 06 00 00           sub    rsp,0x6a0
35d5cc  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
35d5d0  48 8d 0d 49 ef 09 00           lea    rcx,[rip+0x9ef49]        # 0x3fc520
35d5d7  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
35d5db  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
35d5e0  44 0f 29 48 88                 movaps XMMWORD PTR [rax-0x78],xmm9
35d5e5  44 0f 29 90 78 ff ff ff        movaps XMMWORD PTR [rax-0x88],xmm10
35d5ed  44 0f 29 98 68 ff ff ff        movaps XMMWORD PTR [rax-0x98],xmm11
35d5f5  44 0f 29 a0 58 ff ff ff        movaps XMMWORD PTR [rax-0xa8],xmm12
35d5fd  e8 fa 21 f9 ff                 call   0x2ef7fc
35d602  45 33 e4                       xor    r12d,r12d
35d605  41 bd 01 00 00 00              mov    r13d,0x1
35d60b  45 0f 57 d2                    xorps  xmm10,xmm10
35d60f  84 c0                          test   al,al
35d611  0f 84 b0 1b 00 00              je     0x35f1c7
35d617  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35d61e  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d625  e8 ca 38 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35d62a  48 8b c8                       mov    rcx,rax
35d62d  e8 32 ae f7 ff                 call   0x2d8464
35d632  8b 15 e0 20 09 00              mov    edx,DWORD PTR [rip+0x920e0]        # 0x3ef718 ; CONFIG K.addenemyvirtualkey value(+0x48)
35d638  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d63d  48 8b f8                       mov    rdi,rax
35d640  e8 0b fd ff ff                 call   0x35d350
35d645  48 8d 55 18                    lea    rdx,[rbp+0x18]
35d649  48 8b d8                       mov    rbx,rax
35d64c  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d653  e8 e4 4c ff ff                 call   0x35233c ; STRING getter=0x35233c Add Enemy (
35d658  48 8b c8                       mov    rcx,rax
35d65b  e8 d4 07 f7 ff                 call   0x2cde34
35d660  48 8b d0                       mov    rdx,rax
35d663  48 8d 4d d8                    lea    rcx,[rbp-0x28]
35d667  4c 8b c3                       mov    r8,rbx
35d66a  e8 6d d0 f8 ff                 call   0x2ea6dc
35d66f  48 8b d0                       mov    rdx,rax
35d672  48 8d 8d c0 04 00 00           lea    rcx,[rbp+0x4c0]
35d679  4c 8b c7                       mov    r8,rdi
35d67c  e8 b7 d6 f6 ff                 call   0x2cad38
35d681  48 8d 4d d8                    lea    rcx,[rbp-0x28]
35d685  e8 6a ee f6 ff                 call   0x2cc4f4
35d68a  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d68f  e8 60 ee f6 ff                 call   0x2cc4f4
35d694  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35d69b  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d6a2  e8 4d 38 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35d6a7  48 8b c8                       mov    rcx,rax
35d6aa  e8 b5 ad f7 ff                 call   0x2d8464
35d6af  8b 15 e3 21 09 00              mov    edx,DWORD PTR [rip+0x921e3]        # 0x3ef898 ; CONFIG K.addfriendvirtualkey value(+0x48)
35d6b5  48 8d 4d d8                    lea    rcx,[rbp-0x28]
35d6b9  48 8b f8                       mov    rdi,rax
35d6bc  e8 8f fc ff ff                 call   0x35d350
35d6c1  48 8d 55 18                    lea    rdx,[rbp+0x18]
35d6c5  48 8b d8                       mov    rbx,rax
35d6c8  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d6cf  e8 d0 78 ff ff                 call   0x354fa4 ; STRING getter=0x354fa4 Add Friend (
35d6d4  48 8b c8                       mov    rcx,rax
35d6d7  e8 18 af f7 ff                 call   0x2d85f4
35d6dc  48 8b d0                       mov    rdx,rax
35d6df  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d6e4  4c 8b c3                       mov    r8,rbx
35d6e7  e8 f0 cf f8 ff                 call   0x2ea6dc
35d6ec  48 8b d0                       mov    rdx,rax
35d6ef  48 8d 8d a0 04 00 00           lea    rcx,[rbp+0x4a0]
35d6f6  4c 8b c7                       mov    r8,rdi
35d6f9  e8 3a d6 f6 ff                 call   0x2cad38
35d6fe  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d703  e8 ec ed f6 ff                 call   0x2cc4f4
35d708  48 8d 4d d8                    lea    rcx,[rbp-0x28]
35d70c  e8 e3 ed f6 ff                 call   0x2cc4f4
35d711  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35d718  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d71f  e8 d0 37 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35d724  48 8b c8                       mov    rcx,rax
35d727  e8 38 ad f7 ff                 call   0x2d8464
35d72c  8b 15 f6 b5 09 00              mov    edx,DWORD PTR [rip+0x9b5f6]        # 0x3f8d28 ; CONFIG K.AmbientVirtualKey value(+0x48)
35d732  48 8d 4d d8                    lea    rcx,[rbp-0x28]
35d736  48 8b f8                       mov    rdi,rax
35d739  e8 12 fc ff ff                 call   0x35d350
35d73e  48 8d 55 50                    lea    rdx,[rbp+0x50]
35d742  48 8b d8                       mov    rbx,rax
35d745  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d74c  e8 db 9e ff ff                 call   0x35762c ; STRING getter=0x35762c Ambient (
35d751  48 8b c8                       mov    rcx,rax
35d754  e8 eb 05 f7 ff                 call   0x2cdd44
35d759  48 8b d0                       mov    rdx,rax
35d75c  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d761  4c 8b c3                       mov    r8,rbx
35d764  e8 73 cf f8 ff                 call   0x2ea6dc
35d769  48 8b d0                       mov    rdx,rax
35d76c  48 8d 8d 80 04 00 00           lea    rcx,[rbp+0x480]
35d773  4c 8b c7                       mov    r8,rdi
35d776  e8 bd d5 f6 ff                 call   0x2cad38
35d77b  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d780  e8 6f ed f6 ff                 call   0x2cc4f4
35d785  48 8d 4d d8                    lea    rcx,[rbp-0x28]
35d789  e8 66 ed f6 ff                 call   0x2cc4f4
35d78e  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35d795  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d79c  e8 53 37 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35d7a1  48 8b c8                       mov    rcx,rax
35d7a4  e8 bb ac f7 ff                 call   0x2d8464
35d7a9  8b 15 89 aa 07 00              mov    edx,DWORD PTR [rip+0x7aa89]        # 0x3d8238 ; CONFIG K.AutoFarmOreVirtual value(+0x48)
35d7af  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35d7b4  48 8b f8                       mov    rdi,rax
35d7b7  e8 94 fb ff ff                 call   0x35d350
35d7bc  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35d7c0  48 8b d8                       mov    rbx,rax
35d7c3  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d7ca  e8 41 af ff ff                 call   0x358710 ; STRING getter=0x358710 Auto Farm Ore (
35d7cf  48 8b c8                       mov    rcx,rax
35d7d2  e8 89 f9 f7 ff                 call   0x2dd160
35d7d7  48 8b d0                       mov    rdx,rax
35d7da  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d7df  4c 8b c3                       mov    r8,rbx
35d7e2  e8 f5 ce f8 ff                 call   0x2ea6dc
35d7e7  48 8b d0                       mov    rdx,rax
35d7ea  48 8d 8d 60 04 00 00           lea    rcx,[rbp+0x460]
35d7f1  4c 8b c7                       mov    r8,rdi
35d7f4  e8 3f d5 f6 ff                 call   0x2cad38
35d7f9  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d7fe  e8 f1 ec f6 ff                 call   0x2cc4f4
35d803  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35d808  e8 e7 ec f6 ff                 call   0x2cc4f4
35d80d  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35d814  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d81b  e8 d4 36 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35d820  48 8b c8                       mov    rcx,rax
35d823  e8 3c ac f7 ff                 call   0x2d8464
35d828  8b 15 5a 7d 08 00              mov    edx,DWORD PTR [rip+0x87d5a]        # 0x3e5588 ; CONFIG K.AutoLootKeyCode value(+0x48)
35d82e  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d833  48 8b f8                       mov    rdi,rax
35d836  e8 15 fb ff ff                 call   0x35d350
35d83b  48 8d 55 18                    lea    rdx,[rbp+0x18]
35d83f  48 8b d8                       mov    rbx,rax
35d842  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d849  e8 7e cd ff ff                 call   0x35a5cc ; STRING getter=0x35a5cc Auto Loot (
35d84e  48 8b c8                       mov    rcx,rax
35d851  e8 de 05 f7 ff                 call   0x2cde34
35d856  48 8b d0                       mov    rdx,rax
35d859  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35d85e  4c 8b c3                       mov    r8,rbx
35d861  e8 76 ce f8 ff                 call   0x2ea6dc
35d866  48 8b d0                       mov    rdx,rax
35d869  48 8d 8d 40 04 00 00           lea    rcx,[rbp+0x440]
35d870  4c 8b c7                       mov    r8,rdi
35d873  e8 c0 d4 f6 ff                 call   0x2cad38
35d878  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35d87d  e8 72 ec f6 ff                 call   0x2cc4f4
35d882  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d887  e8 68 ec f6 ff                 call   0x2cc4f4
35d88c  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35d893  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d89a  e8 55 36 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35d89f  48 8b c8                       mov    rcx,rax
35d8a2  e8 bd ab f7 ff                 call   0x2d8464
35d8a7  8b 15 cb 1b 09 00              mov    edx,DWORD PTR [rip+0x91bcb]        # 0x3ef478 ; CONFIG K.AutoCollect value(+0x48)
35d8ad  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d8b2  48 8b f8                       mov    rdi,rax
35d8b5  e8 96 fa ff ff                 call   0x35d350
35d8ba  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35d8be  48 8b d8                       mov    rbx,rax
35d8c1  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d8c8  e8 db 2c ff ff                 call   0x3505a8 ; STRING getter=0x3505a8 Auto Collect (
35d8cd  48 8b c8                       mov    rcx,rax
35d8d0  e8 97 ad f7 ff                 call   0x2d866c
35d8d5  48 8b d0                       mov    rdx,rax
35d8d8  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35d8dd  4c 8b c3                       mov    r8,rbx
35d8e0  e8 f7 cd f8 ff                 call   0x2ea6dc
35d8e5  48 8b d0                       mov    rdx,rax
35d8e8  48 8d 8d 00 05 00 00           lea    rcx,[rbp+0x500]
35d8ef  4c 8b c7                       mov    r8,rdi
35d8f2  e8 41 d4 f6 ff                 call   0x2cad38
35d8f7  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35d8fc  e8 f3 eb f6 ff                 call   0x2cc4f4
35d901  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d906  e8 e9 eb f6 ff                 call   0x2cc4f4
35d90b  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35d912  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d919  e8 d6 35 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35d91e  48 8b c8                       mov    rcx,rax
35d921  e8 3e ab f7 ff                 call   0x2d8464
35d926  8b 15 0c f8 09 00              mov    edx,DWORD PTR [rip+0x9f80c]        # 0x3fd138 ; CONFIG K.AutoStackKey value(+0x48)
35d92c  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d931  48 8b f8                       mov    rdi,rax
35d934  e8 17 fa ff ff                 call   0x35d350
35d939  48 8d 55 18                    lea    rdx,[rbp+0x18]
35d93d  48 8b d8                       mov    rbx,rax
35d940  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d947  e8 10 38 ff ff                 call   0x35115c ; STRING getter=0x35115c Auto Stack (
35d94c  48 8b c8                       mov    rcx,rax
35d94f  e8 a0 ac f7 ff                 call   0x2d85f4
35d954  48 8b d0                       mov    rdx,rax
35d957  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35d95c  4c 8b c3                       mov    r8,rbx
35d95f  e8 78 cd f8 ff                 call   0x2ea6dc
35d964  48 8b d0                       mov    rdx,rax
35d967  48 8d 8d 00 04 00 00           lea    rcx,[rbp+0x400]
35d96e  4c 8b c7                       mov    r8,rdi
35d971  e8 c2 d3 f6 ff                 call   0x2cad38
35d976  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35d97b  e8 74 eb f6 ff                 call   0x2cc4f4
35d980  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d985  e8 6a eb f6 ff                 call   0x2cc4f4
35d98a  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35d991  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d998  e8 57 35 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35d99d  48 8b c8                       mov    rcx,rax
35d9a0  e8 bf aa f7 ff                 call   0x2d8464
35d9a5  8b 15 2d 1b 09 00              mov    edx,DWORD PTR [rip+0x91b2d]        # 0x3ef4d8 ; CONFIG K.AutoWalkToMarkerVirtual value(+0x48)
35d9ab  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35d9b0  48 8b f8                       mov    rdi,rax
35d9b3  e8 98 f9 ff ff                 call   0x35d350
35d9b8  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35d9bc  48 8b d8                       mov    rbx,rax
35d9bf  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35d9c6  e8 69 3d ff ff                 call   0x351734 ; STRING getter=0x351734 Auto Walk Marker (
35d9cb  48 8b c8                       mov    rcx,rax
35d9ce  e8 c1 03 f7 ff                 call   0x2cdd94
35d9d3  48 8b d0                       mov    rdx,rax
35d9d6  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35d9db  4c 8b c3                       mov    r8,rbx
35d9de  e8 f9 cc f8 ff                 call   0x2ea6dc
35d9e3  48 8b d0                       mov    rdx,rax
35d9e6  48 8d 8d e0 03 00 00           lea    rcx,[rbp+0x3e0]
35d9ed  4c 8b c7                       mov    r8,rdi
35d9f0  e8 43 d3 f6 ff                 call   0x2cad38
35d9f5  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35d9fa  e8 f5 ea f6 ff                 call   0x2cc4f4
35d9ff  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35da04  e8 eb ea f6 ff                 call   0x2cc4f4
35da09  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35da10  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35da17  e8 d8 34 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35da1c  48 8b c8                       mov    rcx,rax
35da1f  e8 40 aa f7 ff                 call   0x2d8464
35da24  8b 15 ce 1b 09 00              mov    edx,DWORD PTR [rip+0x91bce]        # 0x3ef5f8 ; CONFIG K.CorpseLTWKey value(+0x48)
35da2a  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35da2f  48 8b f8                       mov    rdi,rax
35da32  e8 19 f9 ff ff                 call   0x35d350
35da37  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35da3b  48 8b d8                       mov    rbx,rax
35da3e  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35da45  e8 ca 41 ff ff                 call   0x351c14 ; STRING getter=0x351c14 Loot Through Walls (
35da4a  48 8b c8                       mov    rcx,rax
35da4d  e8 6a 2a fc ff                 call   0x3204bc
35da52  48 8b d0                       mov    rdx,rax
35da55  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35da5a  4c 8b c3                       mov    r8,rbx
35da5d  e8 7a cc f8 ff                 call   0x2ea6dc
35da62  48 8b d0                       mov    rdx,rax
35da65  48 8d 8d c0 03 00 00           lea    rcx,[rbp+0x3c0]
35da6c  4c 8b c7                       mov    r8,rdi
35da6f  e8 c4 d2 f6 ff                 call   0x2cad38
35da74  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35da79  e8 76 ea f6 ff                 call   0x2cc4f4
35da7e  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35da83  e8 6c ea f6 ff                 call   0x2cc4f4
35da88  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35da8f  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35da96  e8 59 34 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35da9b  48 8b c8                       mov    rcx,rax
35da9e  e8 c1 a9 f7 ff                 call   0x2d8464
35daa3  8b 15 ef 1a 09 00              mov    edx,DWORD PTR [rip+0x91aef]        # 0x3ef598 ; CONFIG K.AutoAuthVirtual value(+0x48)
35daa9  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35daae  48 8b f8                       mov    rdi,rax
35dab1  e8 9a f8 ff ff                 call   0x35d350
35dab6  48 8d 55 18                    lea    rdx,[rbp+0x18]
35daba  48 8b d8                       mov    rbx,rax
35dabd  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35dac4  e8 df 45 ff ff                 call   0x3520a8 ; STRING getter=0x3520a8 Auto Auth (
35dac9  48 8b c8                       mov    rcx,rax
35dacc  e8 63 03 f7 ff                 call   0x2cde34
35dad1  48 8b d0                       mov    rdx,rax
35dad4  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dad9  4c 8b c3                       mov    r8,rbx
35dadc  e8 fb cb f8 ff                 call   0x2ea6dc
35dae1  48 8b d0                       mov    rdx,rax
35dae4  48 8d 8d a0 03 00 00           lea    rcx,[rbp+0x3a0]
35daeb  4c 8b c7                       mov    r8,rdi
35daee  e8 45 d2 f6 ff                 call   0x2cad38
35daf3  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35daf8  e8 f7 e9 f6 ff                 call   0x2cc4f4
35dafd  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35db02  e8 ed e9 f6 ff                 call   0x2cc4f4
35db07  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35db0e  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35db15  e8 da 33 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35db1a  48 8b c8                       mov    rcx,rax
35db1d  e8 42 a9 f7 ff                 call   0x2d8464
35db22  8b 15 30 21 09 00              mov    edx,DWORD PTR [rip+0x92130]        # 0x3efc58 ; CONFIG K.battlemodevirtualkey value(+0x48)
35db28  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35db2d  48 8b f8                       mov    rdi,rax
35db30  e8 1b f8 ff ff                 call   0x35d350
35db35  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35db39  48 8b d8                       mov    rbx,rax
35db3c  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35db43  e8 50 4b ff ff                 call   0x352698 ; STRING getter=0x352698 Battle Mode (
35db48  48 8b c8                       mov    rcx,rax
35db4b  e8 38 f6 f7 ff                 call   0x2dd188
35db50  48 8b d0                       mov    rdx,rax
35db53  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35db58  4c 8b c3                       mov    r8,rbx
35db5b  e8 7c cb f8 ff                 call   0x2ea6dc
35db60  48 8b d0                       mov    rdx,rax
35db63  48 8d 8d 80 03 00 00           lea    rcx,[rbp+0x380]
35db6a  4c 8b c7                       mov    r8,rdi
35db6d  e8 c6 d1 f6 ff                 call   0x2cad38
35db72  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35db77  e8 78 e9 f6 ff                 call   0x2cc4f4
35db7c  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35db81  e8 6e e9 f6 ff                 call   0x2cc4f4
35db86  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35db8d  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35db94  e8 5b 33 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35db99  48 8b c8                       mov    rcx,rax
35db9c  e8 c3 a8 f7 ff                 call   0x2d8464
35dba1  8b 15 71 67 09 00              mov    edx,DWORD PTR [rip+0x96771]        # 0x3f4318 ; CONFIG K.CancelAllVirtualKey value(+0x48)
35dba7  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dbac  48 8b f8                       mov    rdi,rax
35dbaf  e8 9c f7 ff ff                 call   0x35d350
35dbb4  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35dbb8  48 8b d8                       mov    rbx,rax
35dbbb  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35dbc2  e8 1d 4f ff ff                 call   0x352ae4 ; STRING getter=0x352ae4 Cancel Craft (
35dbc7  48 8b c8                       mov    rcx,rax
35dbca  e8 9d aa f7 ff                 call   0x2d866c
35dbcf  48 8b d0                       mov    rdx,rax
35dbd2  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dbd7  4c 8b c3                       mov    r8,rbx
35dbda  e8 fd ca f8 ff                 call   0x2ea6dc
35dbdf  48 8b d0                       mov    rdx,rax
35dbe2  48 8d 8d 60 03 00 00           lea    rcx,[rbp+0x360]
35dbe9  4c 8b c7                       mov    r8,rdi
35dbec  e8 47 d1 f6 ff                 call   0x2cad38
35dbf1  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dbf6  e8 f9 e8 f6 ff                 call   0x2cc4f4
35dbfb  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dc00  e8 ef e8 f6 ff                 call   0x2cc4f4
35dc05  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35dc0c  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35dc13  e8 dc 32 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35dc18  48 8b c8                       mov    rcx,rax
35dc1b  e8 44 a8 f7 ff                 call   0x2d8464
35dc20  8b 15 d2 68 09 00              mov    edx,DWORD PTR [rip+0x968d2]        # 0x3f44f8 ; CONFIG K.DebugVirtualKey value(+0x48)
35dc26  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dc2b  48 8b f8                       mov    rdi,rax
35dc2e  e8 1d f7 ff ff                 call   0x35d350
35dc33  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35dc37  48 8b d8                       mov    rbx,rax
35dc3a  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35dc41  e8 66 52 ff ff                 call   0x352eac ; STRING getter=0x352eac Debug Camera (
35dc46  48 8b c8                       mov    rcx,rax
35dc49  e8 1e aa f7 ff                 call   0x2d866c
35dc4e  48 8b d0                       mov    rdx,rax
35dc51  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dc56  4c 8b c3                       mov    r8,rbx
35dc59  e8 7e ca f8 ff                 call   0x2ea6dc
35dc5e  48 8b d0                       mov    rdx,rax
35dc61  48 8d 8d 20 04 00 00           lea    rcx,[rbp+0x420]
35dc68  4c 8b c7                       mov    r8,rdi
35dc6b  e8 c8 d0 f6 ff                 call   0x2cad38
35dc70  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dc75  e8 7a e8 f6 ff                 call   0x2cc4f4
35dc7a  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dc7f  e8 70 e8 f6 ff                 call   0x2cc4f4
35dc84  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35dc8b  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35dc92  e8 5d 32 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35dc97  48 8b c8                       mov    rcx,rax
35dc9a  e8 c5 a7 f7 ff                 call   0x2d8464
35dc9f  8b 15 53 65 09 00              mov    edx,DWORD PTR [rip+0x96553]        # 0x3f41f8 ; CONFIG K.DemoRecordKey value(+0x48)
35dca5  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dcaa  48 8b f8                       mov    rdi,rax
35dcad  e8 9e f6 ff ff                 call   0x35d350
35dcb2  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
35dcb9  48 8b d8                       mov    rbx,rax
35dcbc  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35dcc3  e8 5c 55 ff ff                 call   0x353224 ; STRING getter=0x353224 Demo (
35dcc8  48 8b c8                       mov    rcx,rax
35dccb  e8 24 00 f7 ff                 call   0x2cdcf4
35dcd0  48 8b d0                       mov    rdx,rax
35dcd3  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dcd8  4c 8b c3                       mov    r8,rbx
35dcdb  e8 fc c9 f8 ff                 call   0x2ea6dc
35dce0  48 8b d0                       mov    rdx,rax
35dce3  48 8d 8d 40 03 00 00           lea    rcx,[rbp+0x340]
35dcea  4c 8b c7                       mov    r8,rdi
35dced  e8 46 d0 f6 ff                 call   0x2cad38
35dcf2  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dcf7  e8 f8 e7 f6 ff                 call   0x2cc4f4
35dcfc  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dd01  e8 ee e7 f6 ff                 call   0x2cc4f4
35dd06  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35dd0d  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35dd14  e8 db 31 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35dd19  48 8b c8                       mov    rcx,rax
35dd1c  e8 43 a7 f7 ff                 call   0x2d8464
35dd21  8b 15 11 1b 09 00              mov    edx,DWORD PTR [rip+0x91b11]        # 0x3ef838 ; CONFIG K.NoCollisionNoclipKey value(+0x48)
35dd27  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dd2c  48 8b f8                       mov    rdi,rax
35dd2f  e8 1c f6 ff ff                 call   0x35d350
35dd34  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35dd38  48 8b d8                       mov    rbx,rax
35dd3b  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35dd42  e8 a1 58 ff ff                 call   0x3535e8 ; STRING getter=0x3535e8 Disable Collision (
35dd47  48 8b c8                       mov    rcx,rax
35dd4a  e8 45 27 fc ff                 call   0x320494
35dd4f  48 8b d0                       mov    rdx,rax
35dd52  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dd57  4c 8b c3                       mov    r8,rbx
35dd5a  e8 7d c9 f8 ff                 call   0x2ea6dc
35dd5f  48 8b d0                       mov    rdx,rax
35dd62  48 8d 8d 20 03 00 00           lea    rcx,[rbp+0x320]
35dd69  4c 8b c7                       mov    r8,rdi
35dd6c  e8 c7 cf f6 ff                 call   0x2cad38
35dd71  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dd76  e8 79 e7 f6 ff                 call   0x2cc4f4
35dd7b  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dd80  e8 6f e7 f6 ff                 call   0x2cc4f4
35dd85  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35dd8c  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35dd93  e8 5c 31 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35dd98  48 8b c8                       mov    rcx,rax
35dd9b  e8 c4 a6 f7 ff                 call   0x2d8464
35dda0  8b 15 82 77 08 00              mov    edx,DWORD PTR [rip+0x87782]        # 0x3e5528 ; CONFIG K.despawnkeycode value(+0x48)
35dda6  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35ddab  48 8b f8                       mov    rdi,rax
35ddae  e8 9d f5 ff ff                 call   0x35d350
35ddb3  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35ddb7  48 8b d8                       mov    rbx,rax
35ddba  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35ddc1  e8 2a 5e ff ff                 call   0x353bf0 ; STRING getter=0x353bf0 Drop Container (
35ddc6  48 8b c8                       mov    rcx,rax
35ddc9  e8 e6 bd f8 ff                 call   0x2e9bb4
35ddce  48 8b d0                       mov    rdx,rax
35ddd1  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35ddd6  4c 8b c3                       mov    r8,rbx
35ddd9  e8 fe c8 f8 ff                 call   0x2ea6dc
35ddde  48 8b d0                       mov    rdx,rax
35dde1  48 8d 8d 00 03 00 00           lea    rcx,[rbp+0x300]
35dde8  4c 8b c7                       mov    r8,rdi
35ddeb  e8 48 cf f6 ff                 call   0x2cad38
35ddf0  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35ddf5  e8 fa e6 f6 ff                 call   0x2cc4f4
35ddfa  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35ddff  e8 f0 e6 f6 ff                 call   0x2cc4f4
35de04  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35de0b  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35de12  e8 dd 30 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35de17  48 8b c8                       mov    rcx,rax
35de1a  e8 45 a6 f7 ff                 call   0x2d8464
35de1f  8b 15 c3 77 08 00              mov    edx,DWORD PTR [rip+0x877c3]        # 0x3e55e8 ; CONFIG K.dropinvkeycode value(+0x48)
35de25  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35de2a  48 8b f8                       mov    rdi,rax
35de2d  e8 1e f5 ff ff                 call   0x35d350
35de32  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35de36  48 8b d8                       mov    rbx,rax
35de39  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35de40  e8 6b 61 ff ff                 call   0x353fb0 ; STRING getter=0x353fb0 Drop Inventory (
35de45  48 8b c8                       mov    rcx,rax
35de48  e8 67 bd f8 ff                 call   0x2e9bb4
35de4d  48 8b d0                       mov    rdx,rax
35de50  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35de55  4c 8b c3                       mov    r8,rbx
35de58  e8 7f c8 f8 ff                 call   0x2ea6dc
35de5d  48 8b d0                       mov    rdx,rax
35de60  48 8d 8d e0 02 00 00           lea    rcx,[rbp+0x2e0]
35de67  4c 8b c7                       mov    r8,rdi
35de6a  e8 c9 ce f6 ff                 call   0x2cad38
35de6f  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35de74  e8 7b e6 f6 ff                 call   0x2cc4f4
35de79  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35de7e  e8 71 e6 f6 ff                 call   0x2cc4f4
35de83  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35de8a  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35de91  e8 5e 30 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35de96  48 8b c8                       mov    rcx,rax
35de99  e8 c6 a5 f7 ff                 call   0x2d8464
35de9e  8b 15 54 1a 09 00              mov    edx,DWORD PTR [rip+0x91a54]        # 0x3ef8f8 ; CONFIG K.FastVirtualKey value(+0x48)
35dea4  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dea9  48 8b f8                       mov    rdi,rax
35deac  e8 9f f4 ff ff                 call   0x35d350
35deb1  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35deb5  48 8b d8                       mov    rbx,rax
35deb8  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35debf  e8 d8 64 ff ff                 call   0x35439c ; STRING getter=0x35439c Fast Speedhack (
35dec4  48 8b c8                       mov    rcx,rax
35dec7  e8 e8 bc f8 ff                 call   0x2e9bb4
35decc  48 8b d0                       mov    rdx,rax
35decf  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35ded4  4c 8b c3                       mov    r8,rbx
35ded7  e8 00 c8 f8 ff                 call   0x2ea6dc
35dedc  48 8b d0                       mov    rdx,rax
35dedf  48 8d 8d c0 02 00 00           lea    rcx,[rbp+0x2c0]
35dee6  4c 8b c7                       mov    r8,rdi
35dee9  e8 4a ce f6 ff                 call   0x2cad38
35deee  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35def3  e8 fc e5 f6 ff                 call   0x2cc4f4
35def8  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35defd  e8 f2 e5 f6 ff                 call   0x2cc4f4
35df02  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35df09  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35df10  e8 df 2f f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35df15  48 8b c8                       mov    rcx,rax
35df18  e8 47 a5 f7 ff                 call   0x2d8464
35df1d  8b 15 55 1b 09 00              mov    edx,DWORD PTR [rip+0x91b55]        # 0x3efa78 ; CONFIG K.FlyVirtualKey value(+0x48)
35df23  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35df28  48 8b f8                       mov    rdi,rax
35df2b  e8 20 f4 ff ff                 call   0x35d350
35df30  48 8d 55 50                    lea    rdx,[rbp+0x50]
35df34  48 8b d8                       mov    rbx,rax
35df37  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35df3e  e8 bd 67 ff ff                 call   0x354700 ; STRING getter=0x354700 Flyhack (
35df43  48 8b c8                       mov    rcx,rax
35df46  e8 f9 fd f6 ff                 call   0x2cdd44
35df4b  48 8b d0                       mov    rdx,rax
35df4e  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35df53  4c 8b c3                       mov    r8,rbx
35df56  e8 81 c7 f8 ff                 call   0x2ea6dc
35df5b  48 8b d0                       mov    rdx,rax
35df5e  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
35df65  4c 8b c7                       mov    r8,rdi
35df68  e8 cb cd f6 ff                 call   0x2cad38
35df6d  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35df72  e8 7d e5 f6 ff                 call   0x2cc4f4
35df77  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35df7c  e8 73 e5 f6 ff                 call   0x2cc4f4
35df81  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35df88  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35df8f  e8 60 2f f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35df94  48 8b c8                       mov    rcx,rax
35df97  e8 c8 a4 f7 ff                 call   0x2d8464
35df9c  8b 15 f6 a2 07 00              mov    edx,DWORD PTR [rip+0x7a2f6]        # 0x3d8298 ; CONFIG K.InteractiveVirtualKey value(+0x48)
35dfa2  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dfa7  48 8b f8                       mov    rdi,rax
35dfaa  e8 a1 f3 ff ff                 call   0x35d350
35dfaf  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35dfb3  48 8b d8                       mov    rbx,rax
35dfb6  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35dfbd  e8 ea 6b ff ff                 call   0x354bac ; STRING getter=0x354bac Interactive (
35dfc2  48 8b c8                       mov    rcx,rax
35dfc5  e8 be f1 f7 ff                 call   0x2dd188
35dfca  48 8b d0                       mov    rdx,rax
35dfcd  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dfd2  4c 8b c3                       mov    r8,rbx
35dfd5  e8 02 c7 f8 ff                 call   0x2ea6dc
35dfda  48 8b d0                       mov    rdx,rax
35dfdd  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
35dfe4  4c 8b c7                       mov    r8,rdi
35dfe7  e8 4c cd f6 ff                 call   0x2cad38
35dfec  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35dff1  e8 fe e4 f6 ff                 call   0x2cc4f4
35dff6  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35dffb  e8 f4 e4 f6 ff                 call   0x2cc4f4
35e000  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e007  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e00e  e8 e1 2e f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e013  48 8b c8                       mov    rcx,rax
35e016  e8 49 a4 f7 ff                 call   0x2d8464
35e01b  8b 15 77 1b 09 00              mov    edx,DWORD PTR [rip+0x91b77]        # 0x3efb98 ; CONFIG K.laddervirtualkey value(+0x48)
35e021  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e026  48 8b f8                       mov    rdi,rax
35e029  e8 22 f3 ff ff                 call   0x35d350
35e02e  48 8d 55 18                    lea    rdx,[rbp+0x18]
35e032  48 8b d8                       mov    rbx,rax
35e035  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e03c  e8 43 72 ff ff                 call   0x355284 ; STRING getter=0x355284 On Ladder (
35e041  48 8b c8                       mov    rcx,rax
35e044  e8 eb fd f6 ff                 call   0x2cde34
35e049  48 8b d0                       mov    rdx,rax
35e04c  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e051  4c 8b c3                       mov    r8,rbx
35e054  e8 83 c6 f8 ff                 call   0x2ea6dc
35e059  48 8b d0                       mov    rdx,rax
35e05c  48 8d 8d 60 02 00 00           lea    rcx,[rbp+0x260]
35e063  4c 8b c7                       mov    r8,rdi
35e066  e8 cd cc f6 ff                 call   0x2cad38
35e06b  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e070  e8 7f e4 f6 ff                 call   0x2cc4f4
35e075  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e07a  e8 75 e4 f6 ff                 call   0x2cc4f4
35e07f  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e086  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e08d  e8 62 2e f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e092  48 8b c8                       mov    rcx,rax
35e095  e8 ca a3 f7 ff                 call   0x2d8464
35e09a  8b 15 58 1b 09 00              mov    edx,DWORD PTR [rip+0x91b58]        # 0x3efbf8 ; CONFIG K.RecoilKey value(+0x48)
35e0a0  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e0a5  48 8b f8                       mov    rdi,rax
35e0a8  e8 a3 f2 ff ff                 call   0x35d350
35e0ad  48 8d 55 40                    lea    rdx,[rbp+0x40]
35e0b1  48 8b d8                       mov    rbx,rax
35e0b4  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e0bb  e8 f0 75 ff ff                 call   0x3556b0 ; STRING getter=0x3556b0 Recoil (
35e0c0  48 8b c8                       mov    rcx,rax
35e0c3  e8 c4 ba f8 ff                 call   0x2e9b8c
35e0c8  48 8b d0                       mov    rdx,rax
35e0cb  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e0d0  4c 8b c3                       mov    r8,rbx
35e0d3  e8 04 c6 f8 ff                 call   0x2ea6dc
35e0d8  48 8b d0                       mov    rdx,rax
35e0db  48 8d 8d 40 02 00 00           lea    rcx,[rbp+0x240]
35e0e2  4c 8b c7                       mov    r8,rdi
35e0e5  e8 4e cc f6 ff                 call   0x2cad38
35e0ea  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e0ef  e8 00 e4 f6 ff                 call   0x2cc4f4
35e0f4  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e0f9  e8 f6 e3 f6 ff                 call   0x2cc4f4
35e0fe  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e105  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e10c  e8 e3 2d f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e111  48 8b c8                       mov    rcx,rax
35e114  e8 4b a3 f7 ff                 call   0x2d8464
35e119  8b 15 59 16 09 00              mov    edx,DWORD PTR [rip+0x91659]        # 0x3ef778 ; CONFIG K.InfJumpVirtualKey value(+0x48)
35e11f  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e124  48 8b f8                       mov    rdi,rax
35e127  e8 24 f2 ff ff                 call   0x35d350
35e12c  48 8d 55 50                    lea    rdx,[rbp+0x50]
35e130  48 8b d8                       mov    rbx,rax
35e133  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e13a  e8 a5 78 ff ff                 call   0x3559e4 ; STRING getter=0x3559e4 Inf Jump (
35e13f  48 8b c8                       mov    rcx,rax
35e142  e8 0d bb f8 ff                 call   0x2e9c54
35e147  48 8b d0                       mov    rdx,rax
35e14a  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e14f  4c 8b c3                       mov    r8,rbx
35e152  e8 85 c5 f8 ff                 call   0x2ea6dc
35e157  48 8b d0                       mov    rdx,rax
35e15a  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
35e161  4c 8b c7                       mov    r8,rdi
35e164  e8 cf cb f6 ff                 call   0x2cad38
35e169  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e16e  e8 81 e3 f6 ff                 call   0x2cc4f4
35e173  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e178  e8 77 e3 f6 ff                 call   0x2cc4f4
35e17d  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e184  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e18b  e8 64 2d f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e190  48 8b c8                       mov    rcx,rax
35e193  e8 cc a2 f7 ff                 call   0x2d8464
35e198  8b 15 ba 14 09 00              mov    edx,DWORD PTR [rip+0x914ba]        # 0x3ef658 ; CONFIG K.CrouchKey value(+0x48)
35e19e  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e1a3  48 8b f8                       mov    rdi,rax
35e1a6  e8 a5 f1 ff ff                 call   0x35d350
35e1ab  48 8d 55 18                    lea    rdx,[rbp+0x18]
35e1af  48 8b d8                       mov    rbx,rax
35e1b2  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e1b9  e8 be 7b ff ff                 call   0x355d7c ; STRING getter=0x355d7c Crouching (
35e1be  48 8b c8                       mov    rcx,rax
35e1c1  e8 6e fc f6 ff                 call   0x2cde34
35e1c6  48 8b d0                       mov    rdx,rax
35e1c9  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e1ce  4c 8b c3                       mov    r8,rbx
35e1d1  e8 06 c5 f8 ff                 call   0x2ea6dc
35e1d6  48 8b d0                       mov    rdx,rax
35e1d9  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
35e1e0  4c 8b c7                       mov    r8,rdi
35e1e3  e8 50 cb f6 ff                 call   0x2cad38
35e1e8  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e1ed  e8 02 e3 f6 ff                 call   0x2cc4f4
35e1f2  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e1f7  e8 f8 e2 f6 ff                 call   0x2cc4f4
35e1fc  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e203  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e20a  e8 e5 2c f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e20f  48 8b c8                       mov    rcx,rax
35e212  e8 4d a2 f7 ff                 call   0x2d8464
35e217  8b 15 4b 72 08 00              mov    edx,DWORD PTR [rip+0x8724b]        # 0x3e5468 ; CONFIG K.UpgradeKey value(+0x48)
35e21d  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e222  48 8b f8                       mov    rdi,rax
35e225  e8 26 f1 ff ff                 call   0x35d350
35e22a  48 8d 55 50                    lea    rdx,[rbp+0x50]
35e22e  48 8b d8                       mov    rbx,rax
35e231  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e238  e8 53 7f ff ff                 call   0x356190 ; STRING getter=0x356190 Upgrade (
35e23d  48 8b c8                       mov    rcx,rax
35e240  e8 ff fa f6 ff                 call   0x2cdd44
35e245  48 8b d0                       mov    rdx,rax
35e248  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e24d  4c 8b c3                       mov    r8,rbx
35e250  e8 87 c4 f8 ff                 call   0x2ea6dc
35e255  48 8b d0                       mov    rdx,rax
35e258  48 8d 8d e0 01 00 00           lea    rcx,[rbp+0x1e0]
35e25f  4c 8b c7                       mov    r8,rdi
35e262  e8 d1 ca f6 ff                 call   0x2cad38
35e267  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e26c  e8 83 e2 f6 ff                 call   0x2cc4f4
35e271  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e276  e8 79 e2 f6 ff                 call   0x2cc4f4
35e27b  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e282  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e289  e8 66 2c f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e28e  48 8b c8                       mov    rcx,rax
35e291  e8 ce a1 f7 ff                 call   0x2d8464
35e296  8b 15 bc 5f 09 00              mov    edx,DWORD PTR [rip+0x95fbc]        # 0x3f4258 ; CONFIG K.UpgradeKey1 value(+0x48)
35e29c  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e2a1  48 8b f8                       mov    rdi,rax
35e2a4  e8 a7 f0 ff ff                 call   0x35d350
35e2a9  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35e2ad  48 8b d8                       mov    rbx,rax
35e2b0  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e2b7  e8 e0 84 ff ff                 call   0x35679c ; STRING getter=0x35679c Upgrade Debug(
35e2bc  48 8b c8                       mov    rcx,rax
35e2bf  e8 a8 a3 f7 ff                 call   0x2d866c
35e2c4  48 8b d0                       mov    rdx,rax
35e2c7  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e2cc  4c 8b c3                       mov    r8,rbx
35e2cf  e8 08 c4 f8 ff                 call   0x2ea6dc
35e2d4  48 8b d0                       mov    rdx,rax
35e2d7  48 8d 8d c0 01 00 00           lea    rcx,[rbp+0x1c0]
35e2de  4c 8b c7                       mov    r8,rdi
35e2e1  e8 52 ca f6 ff                 call   0x2cad38
35e2e6  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e2eb  e8 04 e2 f6 ff                 call   0x2cc4f4
35e2f0  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e2f5  e8 fa e1 f6 ff                 call   0x2cc4f4
35e2fa  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e301  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e308  e8 e7 2b f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e30d  48 8b c8                       mov    rcx,rax
35e310  e8 4f a1 f7 ff                 call   0x2d8464
35e315  8b 15 7d ee 09 00              mov    edx,DWORD PTR [rip+0x9ee7d]        # 0x3fd198 ; CONFIG K.pointvirtualkey value(+0x48)
35e31b  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e320  48 8b f8                       mov    rdi,rax
35e323  e8 28 f0 ff ff                 call   0x35d350
35e328  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35e32c  48 8b d8                       mov    rbx,rax
35e32f  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e336  e8 59 87 ff ff                 call   0x356a94 ; STRING getter=0x356a94 Point Of Interest (
35e33b  48 8b c8                       mov    rcx,rax
35e33e  e8 51 21 fc ff                 call   0x320494
35e343  48 8b d0                       mov    rdx,rax
35e346  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e34b  4c 8b c3                       mov    r8,rbx
35e34e  e8 89 c3 f8 ff                 call   0x2ea6dc
35e353  48 8b d0                       mov    rdx,rax
35e356  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
35e35d  4c 8b c7                       mov    r8,rdi
35e360  e8 d3 c9 f6 ff                 call   0x2cad38
35e365  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e36a  e8 85 e1 f6 ff                 call   0x2cc4f4
35e36f  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e374  e8 7b e1 f6 ff                 call   0x2cc4f4
35e379  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e380  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e387  e8 68 2b f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e38c  48 8b c8                       mov    rcx,rax
35e38f  e8 d0 a0 f7 ff                 call   0x2d8464
35e394  8b 15 be 61 09 00              mov    edx,DWORD PTR [rip+0x961be]        # 0x3f4558 ; CONFIG K.layermaskkey value(+0x48)
35e39a  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e39f  48 8b f8                       mov    rdi,rax
35e3a2  e8 a9 ef ff ff                 call   0x35d350
35e3a7  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35e3ab  48 8b d8                       mov    rbx,rax
35e3ae  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e3b5  e8 d2 89 ff ff                 call   0x356d8c ; STRING getter=0x356d8c Remove Layers (
35e3ba  48 8b c8                       mov    rcx,rax
35e3bd  e8 9e ed f7 ff                 call   0x2dd160
35e3c2  48 8b d0                       mov    rdx,rax
35e3c5  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e3ca  4c 8b c3                       mov    r8,rbx
35e3cd  e8 0a c3 f8 ff                 call   0x2ea6dc
35e3d2  48 8b d0                       mov    rdx,rax
35e3d5  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
35e3dc  4c 8b c7                       mov    r8,rdi
35e3df  e8 54 c9 f6 ff                 call   0x2cad38
35e3e4  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e3e9  e8 06 e1 f6 ff                 call   0x2cc4f4
35e3ee  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e3f3  e8 fc e0 f6 ff                 call   0x2cc4f4
35e3f8  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e3ff  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e406  e8 e9 2a f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e40b  48 8b c8                       mov    rcx,rax
35e40e  e8 51 a0 f7 ff                 call   0x2d8464
35e413  8b 15 af 70 08 00              mov    edx,DWORD PTR [rip+0x870af]        # 0x3e54c8 ; CONFIG K.ReplaceDoorKey value(+0x48)
35e419  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e41e  48 8b f8                       mov    rdi,rax
35e421  e8 2a ef ff ff                 call   0x35d350
35e426  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35e42a  48 8b d8                       mov    rbx,rax
35e42d  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e434  e8 63 8c ff ff                 call   0x35709c ; STRING getter=0x35709c Replace Door (
35e439  48 8b c8                       mov    rcx,rax
35e43c  e8 2b a2 f7 ff                 call   0x2d866c
35e441  48 8b d0                       mov    rdx,rax
35e444  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e449  4c 8b c3                       mov    r8,rbx
35e44c  e8 8b c2 f8 ff                 call   0x2ea6dc
35e451  48 8b d0                       mov    rdx,rax
35e454  48 8d 8d 60 01 00 00           lea    rcx,[rbp+0x160]
35e45b  4c 8b c7                       mov    r8,rdi
35e45e  e8 d5 c8 f6 ff                 call   0x2cad38
35e463  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e468  e8 87 e0 f6 ff                 call   0x2cc4f4
35e46d  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e472  e8 7d e0 f6 ff                 call   0x2cc4f4
35e477  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e47e  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e485  e8 6a 2a f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e48a  48 8b c8                       mov    rcx,rax
35e48d  e8 d2 9f f7 ff                 call   0x2d8464
35e492  8b 15 a0 10 09 00              mov    edx,DWORD PTR [rip+0x910a0]        # 0x3ef538 ; CONFIG K.ResetCraftingVirtual value(+0x48)
35e498  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e49d  48 8b f8                       mov    rdi,rax
35e4a0  e8 ab ee ff ff                 call   0x35d350
35e4a5  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35e4a9  48 8b d8                       mov    rbx,rax
35e4ac  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e4b3  e8 10 8f ff ff                 call   0x3573c8 ; STRING getter=0x3573c8 Reset Crafting (
35e4b8  48 8b c8                       mov    rcx,rax
35e4bb  e8 f4 b6 f8 ff                 call   0x2e9bb4
35e4c0  48 8b d0                       mov    rdx,rax
35e4c3  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e4c8  4c 8b c3                       mov    r8,rbx
35e4cb  e8 0c c2 f8 ff                 call   0x2ea6dc
35e4d0  48 8b d0                       mov    rdx,rax
35e4d3  48 8d 8d 40 01 00 00           lea    rcx,[rbp+0x140]
35e4da  4c 8b c7                       mov    r8,rdi
35e4dd  e8 56 c8 f6 ff                 call   0x2cad38
35e4e2  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e4e7  e8 08 e0 f6 ff                 call   0x2cc4f4
35e4ec  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e4f1  e8 fe df f6 ff                 call   0x2cc4f4
35e4f6  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e4fd  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e504  e8 eb 29 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e509  48 8b c8                       mov    rcx,rax
35e50c  e8 53 9f f7 ff                 call   0x2d8464
35e511  8b 15 01 15 09 00              mov    edx,DWORD PTR [rip+0x91501]        # 0x3efa18 ; CONFIG K.savehousevirtualkey value(+0x48)
35e517  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e51c  48 8b f8                       mov    rdi,rax
35e51f  e8 2c ee ff ff                 call   0x35d350
35e524  48 8d 55 18                    lea    rdx,[rbp+0x18]
35e528  48 8b d8                       mov    rbx,rax
35e52b  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e532  e8 85 92 ff ff                 call   0x3577bc ; STRING getter=0x3577bc Save Home (
35e537  48 8b c8                       mov    rcx,rax
35e53a  e8 f5 f8 f6 ff                 call   0x2cde34
35e53f  48 8b d0                       mov    rdx,rax
35e542  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e547  4c 8b c3                       mov    r8,rbx
35e54a  e8 8d c1 f8 ff                 call   0x2ea6dc
35e54f  48 8b d0                       mov    rdx,rax
35e552  48 8d 8d 20 01 00 00           lea    rcx,[rbp+0x120]
35e559  4c 8b c7                       mov    r8,rdi
35e55c  e8 d7 c7 f6 ff                 call   0x2cad38
35e561  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e566  e8 89 df f6 ff                 call   0x2cc4f4
35e56b  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e570  e8 7f df f6 ff                 call   0x2cc4f4
35e575  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e57c  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e583  e8 6c 29 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e588  48 8b c8                       mov    rcx,rax
35e58b  e8 d4 9e f7 ff                 call   0x2d8464
35e590  8b 15 22 14 09 00              mov    edx,DWORD PTR [rip+0x91422]        # 0x3ef9b8 ; CONFIG K.savedposvirtualkey value(+0x48)
35e596  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e59b  48 8b f8                       mov    rdi,rax
35e59e  e8 ad ed ff ff                 call   0x35d350
35e5a3  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35e5a7  48 8b d8                       mov    rbx,rax
35e5aa  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e5b1  e8 4a 94 ff ff                 call   0x357a00 ; STRING getter=0x357a00 Save Position (
35e5b6  48 8b c8                       mov    rcx,rax
35e5b9  e8 a2 eb f7 ff                 call   0x2dd160
35e5be  48 8b d0                       mov    rdx,rax
35e5c1  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e5c6  4c 8b c3                       mov    r8,rbx
35e5c9  e8 0e c1 f8 ff                 call   0x2ea6dc
35e5ce  48 8b d0                       mov    rdx,rax
35e5d1  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35e5d8  4c 8b c7                       mov    r8,rdi
35e5db  e8 58 c7 f6 ff                 call   0x2cad38
35e5e0  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e5e5  e8 0a df f6 ff                 call   0x2cc4f4
35e5ea  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e5ef  e8 00 df f6 ff                 call   0x2cc4f4
35e5f4  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e5fb  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e602  e8 ed 28 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e607  48 8b c8                       mov    rcx,rax
35e60a  e8 55 9e f7 ff                 call   0x2d8464
35e60f  8b 15 f3 6d 08 00              mov    edx,DWORD PTR [rip+0x86df3]        # 0x3e5408 ; CONFIG K.steallootkey value(+0x48)
35e615  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e61a  48 8b f8                       mov    rdi,rax
35e61d  e8 2e ed ff ff                 call   0x35d350
35e622  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35e626  48 8b d8                       mov    rbx,rax
35e629  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e630  e8 f3 95 ff ff                 call   0x357c28 ; STRING getter=0x357c28 Shopfront Stealer (
35e635  48 8b c8                       mov    rcx,rax
35e638  e8 57 1e fc ff                 call   0x320494
35e63d  48 8b d0                       mov    rdx,rax
35e640  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e645  4c 8b c3                       mov    r8,rbx
35e648  e8 8f c0 f8 ff                 call   0x2ea6dc
35e64d  48 8b d0                       mov    rdx,rax
35e650  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
35e657  4c 8b c7                       mov    r8,rdi
35e65a  e8 d9 c6 f6 ff                 call   0x2cad38
35e65f  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e664  e8 8b de f6 ff                 call   0x2cc4f4
35e669  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e66e  e8 81 de f6 ff                 call   0x2cc4f4
35e673  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e67a  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e681  e8 6e 28 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e686  48 8b c8                       mov    rcx,rax
35e689  e8 d6 9d f7 ff                 call   0x2d8464
35e68e  8b 15 c4 12 09 00              mov    edx,DWORD PTR [rip+0x912c4]        # 0x3ef958 ; CONFIG K.SlowVirtualKey value(+0x48)
35e694  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e699  48 8b f8                       mov    rdi,rax
35e69c  e8 af ec ff ff                 call   0x35d350
35e6a1  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35e6a5  48 8b d8                       mov    rbx,rax
35e6a8  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e6af  e8 dc 96 ff ff                 call   0x357d90 ; STRING getter=0x357d90 Slow Speedhack (
35e6b4  48 8b c8                       mov    rcx,rax
35e6b7  e8 f8 b4 f8 ff                 call   0x2e9bb4
35e6bc  48 8b d0                       mov    rdx,rax
35e6bf  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e6c4  4c 8b c3                       mov    r8,rbx
35e6c7  e8 10 c0 f8 ff                 call   0x2ea6dc
35e6cc  48 8b d0                       mov    rdx,rax
35e6cf  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
35e6d6  4c 8b c7                       mov    r8,rdi
35e6d9  e8 5a c6 f6 ff                 call   0x2cad38
35e6de  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e6e3  e8 0c de f6 ff                 call   0x2cc4f4
35e6e8  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e6ed  e8 02 de f6 ff                 call   0x2cc4f4
35e6f2  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e6f9  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e700  e8 ef 27 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e705  48 8b c8                       mov    rcx,rax
35e708  e8 57 9d f7 ff                 call   0x2d8464
35e70d  8b 15 a5 5b 09 00              mov    edx,DWORD PTR [rip+0x95ba5]        # 0x3f42b8 ; CONFIG K.SuicideVirtualKey value(+0x48)
35e713  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e718  48 8b f8                       mov    rdi,rax
35e71b  e8 30 ec ff ff                 call   0x35d350
35e720  48 8d 55 50                    lea    rdx,[rbp+0x50]
35e724  48 8b d8                       mov    rbx,rax
35e727  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e72e  e8 79 97 ff ff                 call   0x357eac ; STRING getter=0x357eac Suicide (
35e733  48 8b c8                       mov    rcx,rax
35e736  e8 09 f6 f6 ff                 call   0x2cdd44
35e73b  48 8b d0                       mov    rdx,rax
35e73e  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e743  4c 8b c3                       mov    r8,rbx
35e746  e8 91 bf f8 ff                 call   0x2ea6dc
35e74b  48 8b d0                       mov    rdx,rax
35e74e  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
35e755  4c 8b c7                       mov    r8,rdi
35e758  e8 db c5 f6 ff                 call   0x2cad38
35e75d  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e762  e8 8d dd f6 ff                 call   0x2cc4f4
35e767  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e76c  e8 83 dd f6 ff                 call   0x2cc4f4
35e771  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e778  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e77f  e8 70 27 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e784  48 8b c8                       mov    rcx,rax
35e787  e8 d8 9c f7 ff                 call   0x2d8464
35e78c  8b 15 a6 13 09 00              mov    edx,DWORD PTR [rip+0x913a6]        # 0x3efb38 ; CONFIG K.TeleportVirtualKey value(+0x48)
35e792  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e797  48 8b f8                       mov    rdi,rax
35e79a  e8 b1 eb ff ff                 call   0x35d350
35e79f  48 8d 55 50                    lea    rdx,[rbp+0x50]
35e7a3  48 8b d8                       mov    rbx,rax
35e7a6  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e7ad  e8 22 9b ff ff                 call   0x3582d4 ; STRING getter=0x3582d4 Teleport (
35e7b2  48 8b c8                       mov    rcx,rax
35e7b5  e8 9a b4 f8 ff                 call   0x2e9c54
35e7ba  48 8b d0                       mov    rdx,rax
35e7bd  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e7c2  4c 8b c3                       mov    r8,rbx
35e7c5  e8 12 bf f8 ff                 call   0x2ea6dc
35e7ca  48 8b d0                       mov    rdx,rax
35e7cd  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
35e7d4  4c 8b c7                       mov    r8,rdi
35e7d7  e8 5c c5 f6 ff                 call   0x2cad38
35e7dc  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e7e1  e8 0e dd f6 ff                 call   0x2cc4f4
35e7e6  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e7eb  e8 04 dd f6 ff                 call   0x2cc4f4
35e7f0  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e7f7  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e7fe  e8 f1 26 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e803  48 8b c8                       mov    rcx,rax
35e806  e8 59 9c f7 ff                 call   0x2d8464
35e80b  8b 15 e7 9a 07 00              mov    edx,DWORD PTR [rip+0x79ae7]        # 0x3d82f8 ; CONFIG K.LowVelocityVirtualKey value(+0x48)
35e811  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e816  48 8b f8                       mov    rdi,rax
35e819  e8 32 eb ff ff                 call   0x35d350
35e81e  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35e822  48 8b d8                       mov    rbx,rax
35e825  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e82c  e8 a7 9b ff ff                 call   0x3583d8 ; STRING getter=0x3583d8 Low Velocity (
35e831  48 8b c8                       mov    rcx,rax
35e834  e8 33 9e f7 ff                 call   0x2d866c
35e839  48 8b d0                       mov    rdx,rax
35e83c  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e841  4c 8b c3                       mov    r8,rbx
35e844  e8 93 be f8 ff                 call   0x2ea6dc
35e849  48 8b d0                       mov    rdx,rax
35e84c  48 8d 8d e0 04 00 00           lea    rcx,[rbp+0x4e0]
35e853  4c 8b c7                       mov    r8,rdi
35e856  e8 dd c4 f6 ff                 call   0x2cad38
35e85b  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e860  e8 8f dc f6 ff                 call   0x2cc4f4
35e865  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e86a  e8 85 dc f6 ff                 call   0x2cc4f4
35e86f  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e876  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e87d  e8 72 26 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e882  48 8b c8                       mov    rcx,rax
35e885  e8 da 9b f7 ff                 call   0x2d8464
35e88a  8b 15 68 e9 09 00              mov    edx,DWORD PTR [rip+0x9e968]        # 0x3fd1f8 ; CONFIG K.mountablekey value(+0x48)
35e890  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e895  48 8b f8                       mov    rdi,rax
35e898  e8 b3 ea ff ff                 call   0x35d350
35e89d  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35e8a1  48 8b d8                       mov    rbx,rax
35e8a4  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e8ab  e8 d4 9b ff ff                 call   0x358484 ; STRING getter=0x358484 Unlock Angles (
35e8b0  48 8b c8                       mov    rcx,rax
35e8b3  e8 a8 e8 f7 ff                 call   0x2dd160
35e8b8  48 8b d0                       mov    rdx,rax
35e8bb  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e8c0  4c 8b c3                       mov    r8,rbx
35e8c3  e8 14 be f8 ff                 call   0x2ea6dc
35e8c8  48 8b d0                       mov    rdx,rax
35e8cb  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35e8cf  4c 8b c7                       mov    r8,rdi
35e8d2  e8 61 c4 f6 ff                 call   0x2cad38
35e8d7  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e8dc  e8 13 dc f6 ff                 call   0x2cc4f4
35e8e1  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e8e6  e8 09 dc f6 ff                 call   0x2cc4f4
35e8eb  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e8f2  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e8f9  e8 f6 25 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e8fe  48 8b c8                       mov    rcx,rax
35e901  e8 5e 9b f7 ff                 call   0x2d8464
35e906  8b 15 ac 0d 09 00              mov    edx,DWORD PTR [rip+0x90dac]        # 0x3ef6b8 ; CONFIG K.zoomvirtualkey value(+0x48)
35e90c  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e911  48 8b f8                       mov    rdi,rax
35e914  e8 37 ea ff ff                 call   0x35d350
35e919  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
35e920  48 8b d8                       mov    rbx,rax
35e923  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e92a  e8 e1 9b ff ff                 call   0x358510 ; STRING getter=0x358510 Zoom (
35e92f  48 8b c8                       mov    rcx,rax
35e932  e8 bd f3 f6 ff                 call   0x2cdcf4
35e937  48 8b d0                       mov    rdx,rax
35e93a  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e93f  4c 8b c3                       mov    r8,rbx
35e942  e8 95 bd f8 ff                 call   0x2ea6dc
35e947  48 8b d0                       mov    rdx,rax
35e94a  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35e94e  4c 8b c7                       mov    r8,rdi
35e951  e8 e2 c3 f6 ff                 call   0x2cad38
35e956  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e95b  e8 94 db f6 ff                 call   0x2cc4f4
35e960  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e965  e8 8a db f6 ff                 call   0x2cc4f4
35e96a  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35e971  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e978  e8 77 25 f9 ff                 call   0x2f0ef4 ; STRING getter=0x2f0ef4 )
35e97d  48 8b c8                       mov    rcx,rax
35e980  e8 df 9a f7 ff                 call   0x2d8464
35e985  8b 15 4d 11 09 00              mov    edx,DWORD PTR [rip+0x9114d]        # 0x3efad8 ; CONFIG K.SpidermanVirtualKey value(+0x48)
35e98b  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e990  48 8b f8                       mov    rdi,rax
35e993  e8 b8 e9 ff ff                 call   0x35d350
35e998  48 8d 55 40                    lea    rdx,[rbp+0x40]
35e99c  48 8b d8                       mov    rbx,rax
35e99f  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35e9a6  e8 3d 9c ff ff                 call   0x3585e8 ; STRING getter=0x3585e8 Spider (
35e9ab  48 8b c8                       mov    rcx,rax
35e9ae  e8 d9 b1 f8 ff                 call   0x2e9b8c
35e9b3  48 8b d0                       mov    rdx,rax
35e9b6  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e9bb  4c 8b c3                       mov    r8,rbx
35e9be  e8 19 bd f8 ff                 call   0x2ea6dc
35e9c3  48 8b d0                       mov    rdx,rax
35e9c6  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35e9ca  4c 8b c7                       mov    r8,rdi
35e9cd  e8 66 c3 f6 ff                 call   0x2cad38
35e9d2  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35e9d7  e8 18 db f6 ff                 call   0x2cc4f4
35e9dc  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
35e9e1  e8 0e db f6 ff                 call   0x2cc4f4
35e9e6  f3 0f 10 0d 6e 98 f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff4986e]        # 0x2a825c ; f32=209
35e9ee  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35e9f5  0f 57 d2                       xorps  xmm2,xmm2
35e9f8  e8 43 d9 f6 ff                 call   0x2cc340
35e9fd  0f 57 d2                       xorps  xmm2,xmm2
35ea00  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35ea07  0f 57 c9                       xorps  xmm1,xmm1
35ea0a  e8 31 d9 f6 ff                 call   0x2cc340
35ea0f  f3 0f 10 15 75 ea 09 00        movss  xmm2,DWORD PTR [rip+0x9ea75]        # 0x3fd48c
35ea17  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
35ea1e  f3 0f 10 0d 62 ea 09 00        movss  xmm1,DWORD PTR [rip+0x9ea62]        # 0x3fd488 ; CONFIG V2.HotkeyPositions value(+0x48)
35ea26  48 8b d8                       mov    rbx,rax
35ea29  e8 12 d9 f6 ff                 call   0x2cc340
35ea2e  48 8b c8                       mov    rcx,rax
35ea31  41 8d 55 01                    lea    edx,[r13+0x1]
35ea35  4c 8b c3                       mov    r8,rbx
35ea38  e8 f7 cc 03 00                 call   0x39b734
35ea3d  44 38 25 80 bd 09 00           cmp    BYTE PTR [rip+0x9bd80],r12b        # 0x3fa7c4
35ea44  74 46                          je     0x35ea8c
35ea46  0f 57 d2                       xorps  xmm2,xmm2
35ea49  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35ea50  0f 57 c9                       xorps  xmm1,xmm1
35ea53  e8 e8 d8 f6 ff                 call   0x2cc340
35ea58  f3 0f 10 15 2c ea 09 00        movss  xmm2,DWORD PTR [rip+0x9ea2c]        # 0x3fd48c
35ea60  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
35ea67  f3 0f 10 0d 19 ea 09 00        movss  xmm1,DWORD PTR [rip+0x9ea19]        # 0x3fd488 ; CONFIG V2.HotkeyPositions value(+0x48)
35ea6f  48 8b d8                       mov    rbx,rax
35ea72  e8 c9 d8 f6 ff                 call   0x2cc340
35ea77  48 8b c8                       mov    rcx,rax
35ea7a  4c 8b c3                       mov    r8,rbx
35ea7d  41 8b d5                       mov    edx,r13d
35ea80  e8 af cc 03 00                 call   0x39b734
35ea85  44 88 25 38 bd 09 00           mov    BYTE PTR [rip+0x9bd38],r12b        # 0x3fa7c4
35ea8c  f3 0f 10 15 48 ea 09 00        movss  xmm2,DWORD PTR [rip+0x9ea48]        # 0x3fd4dc
35ea94  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35ea9b  f3 0f 10 0d 35 ea 09 00        movss  xmm1,DWORD PTR [rip+0x9ea35]        # 0x3fd4d8 ; CONFIG V2.HotkeySizeTest value(+0x48)
35eaa3  e8 98 d8 f6 ff                 call   0x2cc340
35eaa8  ba 02 00 00 00                 mov    edx,0x2
35eaad  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35eab4  e8 b7 cc 03 00                 call   0x39b770
35eab9  0f 57 d2                       xorps  xmm2,xmm2
35eabc  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35eac3  0f 57 c9                       xorps  xmm1,xmm1
35eac6  e8 75 d8 f6 ff                 call   0x2cc340
35eacb  48 8d 95 e8 05 00 00           lea    rdx,[rbp+0x5e8]
35ead2  b9 02 00 00 00                 mov    ecx,0x2
35ead7  e8 84 a1 03 00                 call   0x398c60
35eadc  0f 57 d2                       xorps  xmm2,xmm2
35eadf  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35eae6  0f 57 c9                       xorps  xmm1,xmm1
35eae9  e8 52 d8 f6 ff                 call   0x2cc340
35eaee  48 8d 95 e8 05 00 00           lea    rdx,[rbp+0x5e8]
35eaf5  b9 0e 00 00 00                 mov    ecx,0xe
35eafa  e8 61 a1 03 00                 call   0x398c60
35eaff  0f b6 1d 12 9d eb ff           movzx  ebx,BYTE PTR [rip+0xffffffffffeb9d12]        # 0x218818
35eb06  48 8d 55 d8                    lea    rdx,[rbp-0x28]
35eb0a  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35eb11  e8 3e 9d ff ff                 call   0x358854 ; STRING getter=0x358854 Feature Hotkeys
35eb16  48 8b c8                       mov    rcx,rax
35eb19  e8 42 e6 f7 ff                 call   0x2dd160
35eb1e  f7 db                          neg    ebx
35eb20  48 8b c8                       mov    rcx,rax
35eb23  45 1b c0                       sbb    r8d,r8d
35eb26  33 d2                          xor    edx,edx
35eb28  41 83 e0 fc                    and    r8d,0xfffffffc
35eb2c  41 81 c0 af 00 00 00           add    r8d,0xaf
35eb33  e8 6c e4 02 00                 call   0x38cfa4
35eb38  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
35eb3f  e8 28 39 03 00                 call   0x39246c
35eb44  48 8d 4d d0                    lea    rcx,[rbp-0x30]
35eb48  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
35eb4c  e8 1b 39 03 00                 call   0x39246c
35eb51  0f 28 ce                       movaps xmm1,xmm6
35eb54  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35eb5b  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
35eb60  e8 db d7 f6 ff                 call   0x2cc340
35eb65  f3 0f 10 85 e8 05 00 00        movss  xmm0,DWORD PTR [rbp+0x5e8]
35eb6d  b9 02 00 00 00                 mov    ecx,0x2
35eb72  f3 0f 10 8d ec 05 00 00        movss  xmm1,DWORD PTR [rbp+0x5ec]
35eb7a  f3 0f 11 05 06 e9 09 00        movss  DWORD PTR [rip+0x9e906],xmm0        # 0x3fd488 ; CONFIG V2.HotkeyPositions value(+0x48)
35eb82  f3 0f 11 0d 02 e9 09 00        movss  DWORD PTR [rip+0x9e902],xmm1        # 0x3fd48c
35eb8a  e8 dd 9d 03 00                 call   0x39896c
35eb8f  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
35eb96  e8 79 43 03 00                 call   0x392f14
35eb9b  48 8d 4d d0                    lea    rcx,[rbp-0x30]
35eb9f  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
35eba3  e8 6c 43 03 00                 call   0x392f14
35eba8  0f 28 ce                       movaps xmm1,xmm6
35ebab  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35ebb2  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
35ebb7  e8 84 d7 f6 ff                 call   0x2cc340
35ebbc  f3 0f 10 85 e8 05 00 00        movss  xmm0,DWORD PTR [rbp+0x5e8]
35ebc4  48 8d 8d a0 04 00 00           lea    rcx,[rbp+0x4a0]
35ebcb  f3 0f 10 8d ec 05 00 00        movss  xmm1,DWORD PTR [rbp+0x5ec]
35ebd3  44 8a 05 c7 0c 09 00           mov    r8b,BYTE PTR [rip+0x90cc7]        # 0x3ef8a1
35ebda  8a 15 a8 af 08 00              mov    dl,BYTE PTR [rip+0x8afa8]        # 0x3e9b88 ; CONFIG Bools.drawteam value(+0x48)
35ebe0  f3 0f 11 05 f0 e8 09 00        movss  DWORD PTR [rip+0x9e8f0],xmm0        # 0x3fd4d8 ; CONFIG V2.HotkeySizeTest value(+0x48)
35ebe8  f3 0f 11 0d ec e8 09 00        movss  DWORD PTR [rip+0x9e8ec],xmm1        # 0x3fd4dc
35ebf0  e8 7b d0 ff ff                 call   0x35bc70
35ebf5  44 8a 05 25 0b 09 00           mov    r8b,BYTE PTR [rip+0x90b25]        # 0x3ef721
35ebfc  48 8d 8d c0 04 00 00           lea    rcx,[rbp+0x4c0]
35ec03  8a 15 6f b5 08 00              mov    dl,BYTE PTR [rip+0x8b56f]        # 0x3ea178 ; CONFIG Bools.draweenemy value(+0x48)
35ec09  e8 62 d0 ff ff                 call   0x35bc70
35ec0e  44 8a 05 cc 0e 09 00           mov    r8b,BYTE PTR [rip+0x90ecc]        # 0x3efae1
35ec15  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35ec19  8a 15 29 46 09 00              mov    dl,BYTE PTR [rip+0x94629]        # 0x3f3248 ; CONFIG Bools.Spiderman value(+0x48)
35ec1f  e8 4c d0 ff ff                 call   0x35bc70
35ec24  44 8a 05 06 a1 09 00           mov    r8b,BYTE PTR [rip+0x9a106]        # 0x3f8d31
35ec2b  48 8d 8d 80 04 00 00           lea    rcx,[rbp+0x480]
35ec32  8a 15 60 9d 09 00              mov    dl,BYTE PTR [rip+0x99d60]        # 0x3f8998 ; CONFIG Bools.Ambient value(+0x48)
35ec38  e8 33 d0 ff ff                 call   0x35bc70
35ec3d  44 8a 05 fd 95 07 00           mov    r8b,BYTE PTR [rip+0x795fd]        # 0x3d8241
35ec44  48 8d 8d 60 04 00 00           lea    rcx,[rbp+0x460]
35ec4b  8a 15 e7 a9 08 00              mov    dl,BYTE PTR [rip+0x8a9e7]        # 0x3e9638 ; CONFIG Bools.AutoFarmOre value(+0x48)
35ec51  e8 1a d0 ff ff                 call   0x35bc70
35ec56  44 8a 05 34 69 08 00           mov    r8b,BYTE PTR [rip+0x86934]        # 0x3e5591
35ec5d  48 8d 8d 40 04 00 00           lea    rcx,[rbp+0x440]
35ec64  8a 15 ee 62 08 00              mov    dl,BYTE PTR [rip+0x862ee]        # 0x3e4f58 ; CONFIG Bools.autolootstuff value(+0x48)
35ec6a  e8 01 d0 ff ff                 call   0x35bc70
35ec6f  44 8a 05 0b 08 09 00           mov    r8b,BYTE PTR [rip+0x9080b]        # 0x3ef481
35ec76  48 8d 8d 00 05 00 00           lea    rcx,[rbp+0x500]
35ec7d  8a 15 d5 ac 08 00              mov    dl,BYTE PTR [rip+0x8acd5]        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
35ec83  e8 e8 cf ff ff                 call   0x35bc70
35ec88  44 8a 05 b2 e4 09 00           mov    r8b,BYTE PTR [rip+0x9e4b2]        # 0x3fd141
35ec8f  48 8d 8d 00 04 00 00           lea    rcx,[rbp+0x400]
35ec96  8a 15 fc da 09 00              mov    dl,BYTE PTR [rip+0x9dafc]        # 0x3fc798 ; CONFIG Bools.AutoStack value(+0x48)
35ec9c  e8 cf cf ff ff                 call   0x35bc70
35eca1  44 8a 05 59 09 09 00           mov    r8b,BYTE PTR [rip+0x90959]        # 0x3ef601
35eca8  48 8d 8d c0 03 00 00           lea    rcx,[rbp+0x3c0]
35ecaf  8a 15 d3 41 09 00              mov    dl,BYTE PTR [rip+0x941d3]        # 0x3f2e88 ; CONFIG Bools.VisualizeCorpse value(+0x48)
35ecb5  e8 b6 cf ff ff                 call   0x35bc70
35ecba  44 8a 05 20 08 09 00           mov    r8b,BYTE PTR [rip+0x90820]        # 0x3ef4e1
35ecc1  48 8d 8d e0 03 00 00           lea    rcx,[rbp+0x3e0]
35ecc8  8a 15 1a a9 08 00              mov    dl,BYTE PTR [rip+0x8a91a]        # 0x3e95e8 ; CONFIG Bools.AutoWalkMarker value(+0x48)
35ecce  e8 9d cf ff ff                 call   0x35bc70
35ecd3  44 8a 05 c7 08 09 00           mov    r8b,BYTE PTR [rip+0x908c7]        # 0x3ef5a1
35ecda  48 8d 8d a0 03 00 00           lea    rcx,[rbp+0x3a0]
35ece1  8a 15 71 4e 09 00              mov    dl,BYTE PTR [rip+0x94e71]        # 0x3f3b58 ; CONFIG Bools.autoauth value(+0x48)
35ece7  e8 84 cf ff ff                 call   0x35bc70
35ecec  44 8a 05 c5 6f 08 00           mov    r8b,BYTE PTR [rip+0x86fc5]        # 0x3e5cb8
35ecf3  48 8d 8d 80 03 00 00           lea    rcx,[rbp+0x380]
35ecfa  8a 15 98 b7 08 00              mov    dl,BYTE PTR [rip+0x8b798]        # 0x3ea498 ; CONFIG Bools.battlemode value(+0x48)
35ed00  e8 6b cf ff ff                 call   0x35bc70
35ed05  44 8a 05 15 56 09 00           mov    r8b,BYTE PTR [rip+0x95615]        # 0x3f4321
35ed0c  48 8d 8d 60 03 00 00           lea    rcx,[rbp+0x360]
35ed13  8a 15 5f 42 09 00              mov    dl,BYTE PTR [rip+0x9425f]        # 0x3f2f78 ; CONFIG Bools.CancleAll value(+0x48)
35ed19  e8 52 cf ff ff                 call   0x35bc70
35ed1e  44 8a 05 4c 71 08 00           mov    r8b,BYTE PTR [rip+0x8714c]        # 0x3e5e71
35ed25  48 8d 8d 20 04 00 00           lea    rcx,[rbp+0x420]
35ed2c  8a 15 66 45 09 00              mov    dl,BYTE PTR [rip+0x94566]        # 0x3f3298 ; CONFIG Bools.Adminmode value(+0x48)
35ed32  e8 39 cf ff ff                 call   0x35bc70
35ed37  44 8a 05 c3 54 09 00           mov    r8b,BYTE PTR [rip+0x954c3]        # 0x3f4201
35ed3e  48 8d 8d 40 03 00 00           lea    rcx,[rbp+0x340]
35ed45  8a 15 5d 44 09 00              mov    dl,BYTE PTR [rip+0x9445d]        # 0x3f31a8 ; CONFIG Bools.DemoRecord value(+0x48)
35ed4b  e8 20 cf ff ff                 call   0x35bc70
35ed50  44 8a 05 ea 0a 09 00           mov    r8b,BYTE PTR [rip+0x90aea]        # 0x3ef841
35ed57  48 8d 8d 20 03 00 00           lea    rcx,[rbp+0x320]
35ed5e  8a 15 24 37 09 00              mov    dl,BYTE PTR [rip+0x93724]        # 0x3f2488 ; CONFIG Bools.SmoothFlyhack value(+0x48)
35ed64  e8 07 cf ff ff                 call   0x35bc70
35ed69  44 8a 05 c1 67 08 00           mov    r8b,BYTE PTR [rip+0x867c1]        # 0x3e5531
35ed70  48 8d 8d 00 03 00 00           lea    rcx,[rbp+0x300]
35ed77  8a 15 0b 64 08 00              mov    dl,BYTE PTR [rip+0x8640b]        # 0x3e5188 ; CONFIG Bools.DespawnBox value(+0x48)
35ed7d  e8 ee ce ff ff                 call   0x35bc70
35ed82  44 8a 05 68 68 08 00           mov    r8b,BYTE PTR [rip+0x86868]        # 0x3e55f1
35ed89  48 8d 8d e0 02 00 00           lea    rcx,[rbp+0x2e0]
35ed90  8a 15 32 65 08 00              mov    dl,BYTE PTR [rip+0x86532]        # 0x3e52c8 ; CONFIG Bools.dropinv value(+0x48)
35ed96  e8 d5 ce ff ff                 call   0x35bc70
35ed9b  44 8a 05 5f 0b 09 00           mov    r8b,BYTE PTR [rip+0x90b5f]        # 0x3ef901
35eda2  48 8d 8d c0 02 00 00           lea    rcx,[rbp+0x2c0]
35eda9  8a 15 e9 b1 08 00              mov    dl,BYTE PTR [rip+0x8b1e9]        # 0x3e9f98 ; CONFIG Bools.AutoAdjustSpeed value(+0x48)
35edaf  e8 bc ce ff ff                 call   0x35bc70
35edb4  44 8a 05 a6 0b 09 00           mov    r8b,BYTE PTR [rip+0x90ba6]        # 0x3ef961
35edbb  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
35edc2  8a 15 d0 b1 08 00              mov    dl,BYTE PTR [rip+0x8b1d0]        # 0x3e9f98 ; CONFIG Bools.AutoAdjustSpeed value(+0x48)
35edc8  e8 a3 ce ff ff                 call   0x35bc70
35edcd  44 8a 05 ad 0c 09 00           mov    r8b,BYTE PTR [rip+0x90cad]        # 0x3efa81
35edd4  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
35eddb  8a 15 d7 47 09 00              mov    dl,BYTE PTR [rip+0x947d7]        # 0x3f35b8 ; CONFIG Bools.Flyhack value(+0x48)
35ede1  e8 8a ce ff ff                 call   0x35bc70
35ede6  44 8a 05 b4 94 07 00           mov    r8b,BYTE PTR [rip+0x794b4]        # 0x3d82a1
35eded  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
35edf4  8a 15 0e 4d 09 00              mov    dl,BYTE PTR [rip+0x94d0e]        # 0x3f3b08 ; CONFIG Bools.interactive value(+0x48)
35edfa  e8 71 ce ff ff                 call   0x35bc70
35edff  44 8a 05 9b 0d 09 00           mov    r8b,BYTE PTR [rip+0x90d9b]        # 0x3efba1
35ee06  48 8d 8d 60 02 00 00           lea    rcx,[rbp+0x260]
35ee0d  8a 15 55 4c 09 00              mov    dl,BYTE PTR [rip+0x94c55]        # 0x3f3a68 ; CONFIG Bools.ladder value(+0x48)
35ee13  e8 58 ce ff ff                 call   0x35bc70
35ee18  44 8a 05 e2 0d 09 00           mov    r8b,BYTE PTR [rip+0x90de2]        # 0x3efc01
35ee1f  48 8d 8d 40 02 00 00           lea    rcx,[rbp+0x240]
35ee26  8a 15 cc 43 09 00              mov    dl,BYTE PTR [rip+0x943cc]        # 0x3f31f8 ; CONFIG Bools.recoilmod value(+0x48)
35ee2c  e8 3f ce ff ff                 call   0x35bc70
35ee31  44 8a 05 49 09 09 00           mov    r8b,BYTE PTR [rip+0x90949]        # 0x3ef781
35ee38  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
35ee3f  8a 15 23 47 09 00              mov    dl,BYTE PTR [rip+0x94723]        # 0x3f3568 ; CONFIG Bools.InjJump value(+0x48)
35ee45  e8 26 ce ff ff                 call   0x35bc70
35ee4a  44 8a 05 10 08 09 00           mov    r8b,BYTE PTR [rip+0x90810]        # 0x3ef661
35ee51  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
35ee58  8a 15 5a 4c 09 00              mov    dl,BYTE PTR [rip+0x94c5a]        # 0x3f3ab8 ; CONFIG Bools.CrouchMode value(+0x48)
35ee5e  e8 0d ce ff ff                 call   0x35bc70
35ee63  44 8a 05 07 66 08 00           mov    r8b,BYTE PTR [rip+0x86607]        # 0x3e5471
35ee6a  48 8d 8d e0 01 00 00           lea    rcx,[rbp+0x1e0]
35ee71  8a 15 61 4a 09 00              mov    dl,BYTE PTR [rip+0x94a61]        # 0x3f38d8 ; CONFIG Bools.AutoUpgrade value(+0x48)
35ee77  e8 f4 cd ff ff                 call   0x35bc70
35ee7c  44 8a 05 de 53 09 00           mov    r8b,BYTE PTR [rip+0x953de]        # 0x3f4261
35ee83  48 8d 8d c0 01 00 00           lea    rcx,[rbp+0x1c0]
35ee8a  8a 15 98 4a 09 00              mov    dl,BYTE PTR [rip+0x94a98]        # 0x3f3928 ; CONFIG Bools.AutoUpgrade1 value(+0x48)
35ee90  e8 db cd ff ff                 call   0x35bc70
35ee95  44 8a 05 05 e3 09 00           mov    r8b,BYTE PTR [rip+0x9e305]        # 0x3fd1a1
35ee9c  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
35eea3  8a 15 8f d9 09 00              mov    dl,BYTE PTR [rip+0x9d98f]        # 0x3fc838 ; CONFIG Bools.pointofinterest value(+0x48)
35eea9  e8 c2 cd ff ff                 call   0x35bc70
35eeae  44 8a 05 ac 56 09 00           mov    r8b,BYTE PTR [rip+0x956ac]        # 0x3f4561
35eeb5  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
35eebc  8a 15 76 4e 09 00              mov    dl,BYTE PTR [rip+0x94e76]        # 0x3f3d38 ; CONFIG Bools.removelayer value(+0x48)
35eec2  e8 a9 cd ff ff                 call   0x35bc70
35eec7  44 8a 05 03 66 08 00           mov    r8b,BYTE PTR [rip+0x86603]        # 0x3e54d1
35eece  48 8d 8d 60 01 00 00           lea    rcx,[rbp+0x160]
35eed5  8a 15 fd 62 08 00              mov    dl,BYTE PTR [rip+0x862fd]        # 0x3e51d8 ; CONFIG Bools.AutoReplaceDoor value(+0x48)
35eedb  e8 90 cd ff ff                 call   0x35bc70
35eee0  44 8a 05 5a 06 09 00           mov    r8b,BYTE PTR [rip+0x9065a]        # 0x3ef541
35eee7  48 8d 8d 40 01 00 00           lea    rcx,[rbp+0x140]
35eeee  8a 15 34 40 09 00              mov    dl,BYTE PTR [rip+0x94034]        # 0x3f2f28 ; CONFIG Bools.NoCractTimer value(+0x48)
35eef4  e8 77 cd ff ff                 call   0x35bc70
35eef9  44 8a 05 21 0b 09 00           mov    r8b,BYTE PTR [rip+0x90b21]        # 0x3efa21
35ef00  48 8d 8d 20 01 00 00           lea    rcx,[rbp+0x120]
35ef07  8a 15 db ab 08 00              mov    dl,BYTE PTR [rip+0x8abdb]        # 0x3e9ae8 ; CONFIG Bools.savehouse value(+0x48)
35ef0d  e8 5e cd ff ff                 call   0x35bc70
35ef12  44 8a 05 a8 0a 09 00           mov    r8b,BYTE PTR [rip+0x90aa8]        # 0x3ef9c1
35ef19  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35ef20  8a 15 a2 b2 08 00              mov    dl,BYTE PTR [rip+0x8b2a2]        # 0x3ea1c8 ; CONFIG Bools.saveposition value(+0x48)
35ef26  e8 45 cd ff ff                 call   0x35bc70
35ef2b  44 8a 05 df 64 08 00           mov    r8b,BYTE PTR [rip+0x864df]        # 0x3e5411
35ef32  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
35ef39  8a 15 29 5f 08 00              mov    dl,BYTE PTR [rip+0x85f29]        # 0x3e4e68 ; CONFIG Bools.steallooot value(+0x48)
35ef3f  e8 2c cd ff ff                 call   0x35bc70
35ef44  44 8a 05 76 53 09 00           mov    r8b,BYTE PTR [rip+0x95376]        # 0x3f42c1
35ef4b  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
35ef52  8a 15 70 4a 09 00              mov    dl,BYTE PTR [rip+0x94a70]        # 0x3f39c8 ; CONFIG Bools.AutoSuicide value(+0x48)
35ef58  e8 13 cd ff ff                 call   0x35bc70
35ef5d  44 8a 05 dd 0b 09 00           mov    r8b,BYTE PTR [rip+0x90bdd]        # 0x3efb41
35ef64  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
35ef6b  8a 15 c7 48 09 00              mov    dl,BYTE PTR [rip+0x948c7]        # 0x3f3838 ; CONFIG Bools.teleport5m value(+0x48)
35ef71  e8 fa cc ff ff                 call   0x35bc70
35ef76  44 8a 05 84 93 07 00           mov    r8b,BYTE PTR [rip+0x79384]        # 0x3d8301
35ef7d  48 8d 8d e0 04 00 00           lea    rcx,[rbp+0x4e0]
35ef84  8a 15 7e 41 09 00              mov    dl,BYTE PTR [rip+0x9417e]        # 0x3f3108 ; CONFIG Bools.LowVelocity value(+0x48)
35ef8a  e8 e1 cc ff ff                 call   0x35bc70
35ef8f  44 8a 05 6b e2 09 00           mov    r8b,BYTE PTR [rip+0x9e26b]        # 0x3fd201
35ef96  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35ef9a  8a 15 08 d7 09 00              mov    dl,BYTE PTR [rip+0x9d708]        # 0x3fc6a8 ; CONFIG Bools.UnlockAngle value(+0x48)
35efa0  e8 cb cc ff ff                 call   0x35bc70
35efa5  44 8a 05 15 07 09 00           mov    r8b,BYTE PTR [rip+0x90715]        # 0x3ef6c1
35efac  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35efb0  8a 15 e2 aa 08 00              mov    dl,BYTE PTR [rip+0x8aae2]        # 0x3e9a98 ; CONFIG Bools.Zoom value(+0x48)
35efb6  e8 b5 cc ff ff                 call   0x35bc70
35efbb  48 8d 4d c8                    lea    rcx,[rbp-0x38]
35efbf  e8 14 34 03 00                 call   0x3923d8
35efc4  f3 0f 10 55 cc                 movss  xmm2,DWORD PTR [rbp-0x34]
35efc9  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35efd0  f3 0f 10 8d f0 05 00 00        movss  xmm1,DWORD PTR [rbp+0x5f0]
35efd8  e8 63 d3 f6 ff                 call   0x2cc340
35efdd  33 d2                          xor    edx,edx
35efdf  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
35efe6  e8 81 cc 03 00                 call   0x39bc6c
35efeb  e8 a4 19 03 00                 call   0x390994
35eff0  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35eff4  e8 fb d4 f6 ff                 call   0x2cc4f4
35eff9  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35effd  e8 f2 d4 f6 ff                 call   0x2cc4f4
35f002  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f006  e8 e9 d4 f6 ff                 call   0x2cc4f4
35f00b  48 8d 8d e0 04 00 00           lea    rcx,[rbp+0x4e0]
35f012  e8 dd d4 f6 ff                 call   0x2cc4f4
35f017  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
35f01e  e8 d1 d4 f6 ff                 call   0x2cc4f4
35f023  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
35f02a  e8 c5 d4 f6 ff                 call   0x2cc4f4
35f02f  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
35f036  e8 b9 d4 f6 ff                 call   0x2cc4f4
35f03b  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
35f042  e8 ad d4 f6 ff                 call   0x2cc4f4
35f047  48 8d 8d 00 01 00 00           lea    rcx,[rbp+0x100]
35f04e  e8 a1 d4 f6 ff                 call   0x2cc4f4
35f053  48 8d 8d 20 01 00 00           lea    rcx,[rbp+0x120]
35f05a  e8 95 d4 f6 ff                 call   0x2cc4f4
35f05f  48 8d 8d 40 01 00 00           lea    rcx,[rbp+0x140]
35f066  e8 89 d4 f6 ff                 call   0x2cc4f4
35f06b  48 8d 8d 60 01 00 00           lea    rcx,[rbp+0x160]
35f072  e8 7d d4 f6 ff                 call   0x2cc4f4
35f077  48 8d 8d 80 01 00 00           lea    rcx,[rbp+0x180]
35f07e  e8 71 d4 f6 ff                 call   0x2cc4f4
35f083  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
35f08a  e8 65 d4 f6 ff                 call   0x2cc4f4
35f08f  48 8d 8d c0 01 00 00           lea    rcx,[rbp+0x1c0]
35f096  e8 59 d4 f6 ff                 call   0x2cc4f4
35f09b  48 8d 8d e0 01 00 00           lea    rcx,[rbp+0x1e0]
35f0a2  e8 4d d4 f6 ff                 call   0x2cc4f4
35f0a7  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
35f0ae  e8 41 d4 f6 ff                 call   0x2cc4f4
35f0b3  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
35f0ba  e8 35 d4 f6 ff                 call   0x2cc4f4
35f0bf  48 8d 8d 40 02 00 00           lea    rcx,[rbp+0x240]
35f0c6  e8 29 d4 f6 ff                 call   0x2cc4f4
35f0cb  48 8d 8d 60 02 00 00           lea    rcx,[rbp+0x260]
35f0d2  e8 1d d4 f6 ff                 call   0x2cc4f4
35f0d7  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
35f0de  e8 11 d4 f6 ff                 call   0x2cc4f4
35f0e3  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
35f0ea  e8 05 d4 f6 ff                 call   0x2cc4f4
35f0ef  48 8d 8d c0 02 00 00           lea    rcx,[rbp+0x2c0]
35f0f6  e8 f9 d3 f6 ff                 call   0x2cc4f4
35f0fb  48 8d 8d e0 02 00 00           lea    rcx,[rbp+0x2e0]
35f102  e8 ed d3 f6 ff                 call   0x2cc4f4
35f107  48 8d 8d 00 03 00 00           lea    rcx,[rbp+0x300]
35f10e  e8 e1 d3 f6 ff                 call   0x2cc4f4
35f113  48 8d 8d 20 03 00 00           lea    rcx,[rbp+0x320]
35f11a  e8 d5 d3 f6 ff                 call   0x2cc4f4
35f11f  48 8d 8d 40 03 00 00           lea    rcx,[rbp+0x340]
35f126  e8 c9 d3 f6 ff                 call   0x2cc4f4
35f12b  48 8d 8d 20 04 00 00           lea    rcx,[rbp+0x420]
35f132  e8 bd d3 f6 ff                 call   0x2cc4f4
35f137  48 8d 8d 60 03 00 00           lea    rcx,[rbp+0x360]
35f13e  e8 b1 d3 f6 ff                 call   0x2cc4f4
35f143  48 8d 8d 80 03 00 00           lea    rcx,[rbp+0x380]
35f14a  e8 a5 d3 f6 ff                 call   0x2cc4f4
35f14f  48 8d 8d a0 03 00 00           lea    rcx,[rbp+0x3a0]
35f156  e8 99 d3 f6 ff                 call   0x2cc4f4
35f15b  48 8d 8d c0 03 00 00           lea    rcx,[rbp+0x3c0]
35f162  e8 8d d3 f6 ff                 call   0x2cc4f4
35f167  48 8d 8d e0 03 00 00           lea    rcx,[rbp+0x3e0]
35f16e  e8 81 d3 f6 ff                 call   0x2cc4f4
35f173  48 8d 8d 00 04 00 00           lea    rcx,[rbp+0x400]
35f17a  e8 75 d3 f6 ff                 call   0x2cc4f4
35f17f  48 8d 8d 00 05 00 00           lea    rcx,[rbp+0x500]
35f186  e8 69 d3 f6 ff                 call   0x2cc4f4
35f18b  48 8d 8d 40 04 00 00           lea    rcx,[rbp+0x440]
35f192  e8 5d d3 f6 ff                 call   0x2cc4f4
35f197  48 8d 8d 60 04 00 00           lea    rcx,[rbp+0x460]
35f19e  e8 51 d3 f6 ff                 call   0x2cc4f4
35f1a3  48 8d 8d 80 04 00 00           lea    rcx,[rbp+0x480]
35f1aa  e8 45 d3 f6 ff                 call   0x2cc4f4
35f1af  48 8d 8d a0 04 00 00           lea    rcx,[rbp+0x4a0]
35f1b6  e8 39 d3 f6 ff                 call   0x2cc4f4
35f1bb  48 8d 8d c0 04 00 00           lea    rcx,[rbp+0x4c0]
35f1c2  e8 2d d3 f6 ff                 call   0x2cc4f4
35f1c7  83 3d 1a df 09 00 02           cmp    DWORD PTR [rip+0x9df1a],0x2        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
35f1ce  41 0f 94 c7                    sete   r15b
35f1d2  44 88 bd e8 05 00 00           mov    BYTE PTR [rbp+0x5e8],r15b
35f1d9  75 0e                          jne    0x35f1e9
35f1db  e8 3c e1 ff ff                 call   0x35d31c
35f1e0  48 8b 48 18                    mov    rcx,QWORD PTR [rax+0x18]
35f1e4  e8 af 98 03 00                 call   0x398a98
35f1e9  e8 aa 2f 03 00                 call   0x392198
35f1ee  48 8b c8                       mov    rcx,rax
35f1f1  e8 9a 07 02 00                 call   0x37f990
35f1f6  44 38 25 1b 96 eb ff           cmp    BYTE PTR [rip+0xffffffffffeb961b],r12b        # 0x218818
35f1fd  0f 84 b6 20 00 00              je     0x3612b9
35f203  44 38 25 ed e2 09 00           cmp    BYTE PTR [rip+0x9e2ed],r12b        # 0x3fd4f7
35f20a  41 be 08 00 00 00              mov    r14d,0x8
35f210  75 43                          jne    0x35f255
35f212  44 38 25 e0 e2 09 00           cmp    BYTE PTR [rip+0x9e2e0],r12b        # 0x3fd4f9
35f219  75 3a                          jne    0x35f255
35f21b  44 38 25 d3 e2 09 00           cmp    BYTE PTR [rip+0x9e2d3],r12b        # 0x3fd4f5
35f222  75 31                          jne    0x35f255
35f224  44 38 25 cb e2 09 00           cmp    BYTE PTR [rip+0x9e2cb],r12b        # 0x3fd4f6
35f22b  75 28                          jne    0x35f255
35f22d  44 38 25 c4 e2 09 00           cmp    BYTE PTR [rip+0x9e2c4],r12b        # 0x3fd4f8
35f234  75 1f                          jne    0x35f255
35f236  44 38 25 bd e2 09 00           cmp    BYTE PTR [rip+0x9e2bd],r12b        # 0x3fd4fa
35f23d  75 16                          jne    0x35f255
35f23f  44 38 25 b5 e2 09 00           cmp    BYTE PTR [rip+0x9e2b5],r12b        # 0x3fd4fb
35f246  75 0d                          jne    0x35f255
35f248  44 38 25 a5 e2 09 00           cmp    BYTE PTR [rip+0x9e2a5],r12b        # 0x3fd4f4
35f24f  0f 84 36 0a 00 00              je     0x35fc8b
35f255  8b 05 ad e2 09 00              mov    eax,DWORD PTR [rip+0x9e2ad]        # 0x3fd508
35f25b  41 84 c5                       test   r13b,al
35f25e  0f 85 a8 00 00 00              jne    0x35f30c
35f264  41 0b c5                       or     eax,r13d
35f267  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35f26e  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35f275  89 05 8d e2 09 00              mov    DWORD PTR [rip+0x9e28d],eax        # 0x3fd508
35f27b  e8 b0 d4 f6 ff                 call   0x2cc730
35f280  48 8b c8                       mov    rcx,rax
35f283  e8 1c ea f6 ff                 call   0x2cdca4
35f288  48 8d 55 18                    lea    rdx,[rbp+0x18]
35f28c  48 8b f0                       mov    rsi,rax
35f28f  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
35f296  e8 d1 96 ff ff                 call   0x35896c ; STRING getter=0x35896c get_keyCode
35f29b  48 8b c8                       mov    rcx,rax
35f29e  e8 91 eb f6 ff                 call   0x2cde34
35f2a3  48 8d 55 50                    lea    rdx,[rbp+0x50]
35f2a7  48 8b f8                       mov    rdi,rax
35f2aa  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
35f2b1  e8 7a 96 ff ff                 call   0x358930 ; STRING getter=0x358930 UnityEngine
35f2b6  48 8b c8                       mov    rcx,rax
35f2b9  e8 76 eb f6 ff                 call   0x2cde34
35f2be  48 8d 55 68                    lea    rdx,[rbp+0x68]
35f2c2  48 8b d8                       mov    rbx,rax
35f2c5  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
35f2cc  e8 f7 95 ff ff                 call   0x3588c8 ; STRING getter=0x3588c8 Event
35f2d1  48 8b c8                       mov    rcx,rax
35f2d4  e8 03 92 f7 ff                 call   0x2d84dc
35f2d9  48 8b c8                       mov    rcx,rax
35f2dc  48 8b d3                       mov    rdx,rbx
35f2df  e8 40 4f fd ff                 call   0x334224
35f2e4  83 cb ff                       or     ebx,0xffffffff
35f2e7  48 8b c8                       mov    rcx,rax
35f2ea  44 8b c3                       mov    r8d,ebx
35f2ed  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
35f2f1  4c 8b ce                       mov    r9,rsi
35f2f4  48 8b d7                       mov    rdx,rdi
35f2f7  e8 b0 56 fd ff                 call   0x3349ac
35f2fc  48 8b 08                       mov    rcx,QWORD PTR [rax]
35f2ff  8b 05 03 e2 09 00              mov    eax,DWORD PTR [rip+0x9e203]        # 0x3fd508
35f305  48 89 0d f4 e1 09 00           mov    QWORD PTR [rip+0x9e1f4],rcx        # 0x3fd500
35f30c  a8 02                          test   al,0x2
35f30e  0f 85 a2 00 00 00              jne    0x35f3b6
35f314  83 c8 02                       or     eax,0x2
35f317  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
35f31e  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
35f325  89 05 dd e1 09 00              mov    DWORD PTR [rip+0x9e1dd],eax        # 0x3fd508
35f32b  e8 00 d4 f6 ff                 call   0x2cc730
35f330  48 8b c8                       mov    rcx,rax
35f333  e8 6c e9 f6 ff                 call   0x2cdca4
35f338  48 8d 55 70                    lea    rdx,[rbp+0x70]
35f33c  48 8b f0                       mov    rsi,rax
35f33f  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
35f344  e8 c3 96 ff ff                 call   0x358a0c ; STRING getter=0x358a0c get_current
35f349  48 8b c8                       mov    rcx,rax
35f34c  e8 e3 ea f6 ff                 call   0x2cde34
35f351  48 8d 55 28                    lea    rdx,[rbp+0x28]
35f355  48 8b f8                       mov    rdi,rax
35f358  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
35f35d  e8 76 96 ff ff                 call   0x3589d8 ; STRING getter=0x3589d8 UnityEngine
35f362  48 8b c8                       mov    rcx,rax
35f365  e8 ca ea f6 ff                 call   0x2cde34
35f36a  48 8d 55 60                    lea    rdx,[rbp+0x60]
35f36e  48 8b d8                       mov    rbx,rax
35f371  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
35f376  e8 45 96 ff ff                 call   0x3589c0 ; STRING getter=0x3589c0 Event
35f37b  48 8b c8                       mov    rcx,rax
35f37e  e8 59 91 f7 ff                 call   0x2d84dc
35f383  48 8b c8                       mov    rcx,rax
35f386  48 8b d3                       mov    rdx,rbx
35f389  e8 96 4e fd ff                 call   0x334224
35f38e  83 cb ff                       or     ebx,0xffffffff
35f391  48 8b c8                       mov    rcx,rax
35f394  44 8b c3                       mov    r8d,ebx
35f397  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
35f39b  4c 8b ce                       mov    r9,rsi
35f39e  48 8b d7                       mov    rdx,rdi
35f3a1  e8 06 56 fd ff                 call   0x3349ac
35f3a6  48 8b 08                       mov    rcx,QWORD PTR [rax]
35f3a9  8b 05 59 e1 09 00              mov    eax,DWORD PTR [rip+0x9e159]        # 0x3fd508
35f3af  48 89 0d 5a e1 09 00           mov    QWORD PTR [rip+0x9e15a],rcx        # 0x3fd510
35f3b6  a8 04                          test   al,0x4
35f3b8  0f 85 9e 00 00 00              jne    0x35f45c
35f3be  83 c8 04                       or     eax,0x4
35f3c1  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
35f3c6  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
35f3cb  89 05 37 e1 09 00              mov    DWORD PTR [rip+0x9e137],eax        # 0x3fd508
35f3d1  e8 5a d3 f6 ff                 call   0x2cc730
35f3d6  48 8b c8                       mov    rcx,rax
35f3d9  e8 c6 e8 f6 ff                 call   0x2cdca4
35f3de  48 8d 55 40                    lea    rdx,[rbp+0x40]
35f3e2  48 8b f0                       mov    rsi,rax
35f3e5  48 8d 4c 24 41                 lea    rcx,[rsp+0x41]
35f3ea  e8 6d 99 ff ff                 call   0x358d5c ; STRING getter=0x358d5c get_type
35f3ef  48 8b c8                       mov    rcx,rax
35f3f2  e8 95 a7 f8 ff                 call   0x2e9b8c
35f3f7  48 8d 55 34                    lea    rdx,[rbp+0x34]
35f3fb  48 8b f8                       mov    rdi,rax
35f3fe  48 8d 4c 24 41                 lea    rcx,[rsp+0x41]
35f403  e8 6c 96 ff ff                 call   0x358a74 ; STRING getter=0x358a74 UnityEngine
35f408  48 8b c8                       mov    rcx,rax
35f40b  e8 24 ea f6 ff                 call   0x2cde34
35f410  48 8d 55 d0                    lea    rdx,[rbp-0x30]
35f414  48 8b d8                       mov    rbx,rax
35f417  48 8d 4c 24 41                 lea    rcx,[rsp+0x41]
35f41c  e8 1f 96 ff ff                 call   0x358a40 ; STRING getter=0x358a40 Event
35f421  48 8b c8                       mov    rcx,rax
35f424  e8 b3 90 f7 ff                 call   0x2d84dc
35f429  48 8b c8                       mov    rcx,rax
35f42c  48 8b d3                       mov    rdx,rbx
35f42f  e8 f0 4d fd ff                 call   0x334224
35f434  48 8b c8                       mov    rcx,rax
35f437  4c 8b ce                       mov    r9,rsi
35f43a  83 c8 ff                       or     eax,0xffffffff
35f43d  48 8b d7                       mov    rdx,rdi
35f440  44 8b c0                       mov    r8d,eax
35f443  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
35f447  e8 60 55 fd ff                 call   0x3349ac
35f44c  48 8b 08                       mov    rcx,QWORD PTR [rax]
35f44f  8b 05 b3 e0 09 00              mov    eax,DWORD PTR [rip+0x9e0b3]        # 0x3fd508
35f455  48 89 0d bc e0 09 00           mov    QWORD PTR [rip+0x9e0bc],rcx        # 0x3fd518
35f45c  41 84 c6                       test   r14b,al
35f45f  75 26                          jne    0x35f487
35f461  4c 8b 05 a8 e0 09 00           mov    r8,QWORD PTR [rip+0x9e0a8]        # 0x3fd510
35f468  48 8d 15 b1 e0 09 00           lea    rdx,[rip+0x9e0b1]        # 0x3fd520
35f46f  48 8b 0d ea 69 07 00           mov    rcx,QWORD PTR [rip+0x769ea]        # 0x3d5e60
35f476  41 0b c6                       or     eax,r14d
35f479  45 33 c9                       xor    r9d,r9d
35f47c  89 05 86 e0 09 00              mov    DWORD PTR [rip+0x9e086],eax        # 0x3fd508
35f482  e8 9d c8 f6 ff                 call   0x2cbd24
35f487  48 8b 0d d2 69 07 00           mov    rcx,QWORD PTR [rip+0x769d2]        # 0x3d5e60
35f48e  48 8d 15 8b e0 09 00           lea    rdx,[rip+0x9e08b]        # 0x3fd520
35f495  e8 7e e5 f7 ff                 call   0x2dda18
35f49a  8b 0d 68 e0 09 00              mov    ecx,DWORD PTR [rip+0x9e068]        # 0x3fd508
35f4a0  48 8b f8                       mov    rdi,rax
35f4a3  f6 c1 10                       test   cl,0x10
35f4a6  75 26                          jne    0x35f4ce
35f4a8  4c 8b 05 69 e0 09 00           mov    r8,QWORD PTR [rip+0x9e069]        # 0x3fd518
35f4af  48 8d 15 4a e1 09 00           lea    rdx,[rip+0x9e14a]        # 0x3fd600
35f4b6  83 c9 10                       or     ecx,0x10
35f4b9  45 33 c9                       xor    r9d,r9d
35f4bc  89 0d 46 e0 09 00              mov    DWORD PTR [rip+0x9e046],ecx        # 0x3fd508
35f4c2  48 8b 0d 97 69 07 00           mov    rcx,QWORD PTR [rip+0x76997]        # 0x3d5e60
35f4c9  e8 56 c8 f6 ff                 call   0x2cbd24
35f4ce  48 8b 0d 8b 69 07 00           mov    rcx,QWORD PTR [rip+0x7698b]        # 0x3d5e60
35f4d5  48 8d 15 24 e1 09 00           lea    rdx,[rip+0x9e124]        # 0x3fd600
35f4dc  4c 8b c7                       mov    r8,rdi
35f4df  e8 18 c5 f6 ff                 call   0x2cb9fc
35f4e4  8b d8                          mov    ebx,eax
35f4e6  8b 05 1c e0 09 00              mov    eax,DWORD PTR [rip+0x9e01c]        # 0x3fd508
35f4ec  a8 20                          test   al,0x20
35f4ee  75 26                          jne    0x35f516
35f4f0  4c 8b 05 09 e0 09 00           mov    r8,QWORD PTR [rip+0x9e009]        # 0x3fd500
35f4f7  48 8d 15 e2 e1 09 00           lea    rdx,[rip+0x9e1e2]        # 0x3fd6e0
35f4fe  48 8b 0d 5b 69 07 00           mov    rcx,QWORD PTR [rip+0x7695b]        # 0x3d5e60
35f505  83 c8 20                       or     eax,0x20
35f508  45 33 c9                       xor    r9d,r9d
35f50b  89 05 f7 df 09 00              mov    DWORD PTR [rip+0x9dff7],eax        # 0x3fd508
35f511  e8 0e c8 f6 ff                 call   0x2cbd24
35f516  48 8b 0d 43 69 07 00           mov    rcx,QWORD PTR [rip+0x76943]        # 0x3d5e60
35f51d  48 8d 15 bc e1 09 00           lea    rdx,[rip+0x9e1bc]        # 0x3fd6e0
35f524  4c 8b c7                       mov    r8,rdi
35f527  e8 d0 c4 f6 ff                 call   0x2cb9fc
35f52c  8d 4b fc                       lea    ecx,[rbx-0x4]
35f52f  8b f8                          mov    edi,eax
35f531  41 3b cd                       cmp    ecx,r13d
35f534  0f 87 51 07 00 00              ja     0x35fc8b
35f53a  8b d0                          mov    edx,eax
35f53c  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35f540  e8 c7 de ff ff                 call   0x35d40c
35f545  8d 8f 00 ff ff ff              lea    ecx,[rdi-0x100]
35f54b  83 f9 09                       cmp    ecx,0x9
35f54e  76 17                          jbe    0x35f567
35f550  8d 4f d0                       lea    ecx,[rdi-0x30]
35f553  83 f9 09                       cmp    ecx,0x9
35f556  76 0f                          jbe    0x35f567
35f558  41 3b fe                       cmp    edi,r14d
35f55b  75 05                          jne    0x35f562
35f55d  83 fb 04                       cmp    ebx,0x4
35f560  74 05                          je     0x35f567
35f562  41 8a f4                       mov    sil,r12b
35f565  eb 03                          jmp    0x35f56a
35f567  41 8a f5                       mov    sil,r13b
35f56a  44 38 25 89 df 09 00           cmp    BYTE PTR [rip+0x9df89],r12b        # 0x3fd4fa
35f571  0f 84 15 01 00 00              je     0x35f68c
35f577  48 8d 15 2a de 09 00           lea    rdx,[rip+0x9de2a]        # 0x3fd3a8 ; CONFIG S.FavoriteInputText value(+0x48)
35f57e  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f582  e8 0d 4c f7 ff                 call   0x2d4194
35f587  48 8d 55 88                    lea    rdx,[rbp-0x78]
35f58b  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f58f  e8 00 4c f7 ff                 call   0x2d4194
35f594  41 3b fe                       cmp    edi,r14d
35f597  75 4e                          jne    0x35f5e7
35f599  83 fb 04                       cmp    ebx,0x4
35f59c  75 49                          jne    0x35f5e7
35f59e  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f5a2  e8 ed 90 f7 ff                 call   0x2d8694
35f5a7  84 c0                          test   al,al
35f5a9  0f 85 aa 00 00 00              jne    0x35f659
35f5af  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f5b3  e8 20 95 f7 ff                 call   0x2d8ad8
35f5b8  49 2b c5                       sub    rax,r13
35f5bb  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
35f5c0  4c 8b c8                       mov    r9,rax
35f5c3  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f5c7  45 33 c0                       xor    r8d,r8d
35f5ca  e8 c9 9e f7 ff                 call   0x2d9498
35f5cf  48 8b d0                       mov    rdx,rax
35f5d2  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f5d6  e8 09 56 f7 ff                 call   0x2d4be4
35f5db  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35f5e0  e8 0f cf f6 ff                 call   0x2cc4f4
35f5e5  eb 72                          jmp    0x35f659
35f5e7  48 8d 0d ba dd 09 00           lea    rcx,[rip+0x9ddba]        # 0x3fd3a8 ; CONFIG S.FavoriteInputText value(+0x48)
35f5ee  e8 e5 94 f7 ff                 call   0x2d8ad8
35f5f3  48 83 f8 28                    cmp    rax,0x28
35f5f7  73 60                          jae    0x35f659
35f5f9  83 ff 20                       cmp    edi,0x20
35f5fc  75 12                          jne    0x35f610
35f5fe  48 8d 15 97 8b f4 ff           lea    rdx,[rip+0xfffffffffff48b97]        # 0x2a819c
35f605  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f609  e8 9e e1 f6 ff                 call   0x2cd7ac
35f60e  eb 49                          jmp    0x35f659
35f610  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35f617  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35f61e  e8 55 97 ff ff                 call   0x358d78 ; STRING getter=0x358d78 None
35f623  48 8b c8                       mov    rcx,rax
35f626  e8 a1 e6 f6 ff                 call   0x2cdccc
35f62b  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35f62f  48 8b d8                       mov    rbx,rax
35f632  e8 b5 e1 f6 ff                 call   0x2cd7ec
35f637  48 8b c8                       mov    rcx,rax
35f63a  48 8b d3                       mov    rdx,rbx
35f63d  e8 1e b3 06 00                 call   0x3ca960
35f642  48 85 c0                       test   rax,rax
35f645  75 12                          jne    0x35f659
35f647  41 3b fe                       cmp    edi,r14d
35f64a  74 0d                          je     0x35f659
35f64c  48 8d 55 f8                    lea    rdx,[rbp-0x8]
35f650  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f654  e8 ab 85 f7 ff                 call   0x2d7c04
35f659  48 8d 55 88                    lea    rdx,[rbp-0x78]
35f65d  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f661  e8 ca f8 f6 ff                 call   0x2cef30
35f666  84 c0                          test   al,al
35f668  75 10                          jne    0x35f67a
35f66a  48 8d 0d 37 dd 09 00           lea    rcx,[rip+0x9dd37]        # 0x3fd3a8 ; CONFIG S.FavoriteInputText value(+0x48)
35f671  48 8d 55 a8                    lea    rdx,[rbp-0x58]
35f675  e8 aa 55 f7 ff                 call   0x2d4c24
35f67a  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f67e  e8 71 ce f6 ff                 call   0x2cc4f4
35f683  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f687  e9 f1 05 00 00                 jmp    0x35fc7d
35f68c  44 38 25 62 de 09 00           cmp    BYTE PTR [rip+0x9de62],r12b        # 0x3fd4f5
35f693  0f 84 fe 00 00 00              je     0x35f797
35f699  48 8d 35 28 dc 09 00           lea    rsi,[rip+0x9dc28]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
35f6a0  48 8b d6                       mov    rdx,rsi
35f6a3  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f6a7  e8 e8 4a f7 ff                 call   0x2d4194
35f6ac  48 8d 55 88                    lea    rdx,[rbp-0x78]
35f6b0  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f6b4  e8 db 4a f7 ff                 call   0x2d4194
35f6b9  41 3b fe                       cmp    edi,r14d
35f6bc  75 4e                          jne    0x35f70c
35f6be  83 fb 04                       cmp    ebx,0x4
35f6c1  75 49                          jne    0x35f70c
35f6c3  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f6c7  e8 c8 8f f7 ff                 call   0x2d8694
35f6cc  84 c0                          test   al,al
35f6ce  0f 85 a6 00 00 00              jne    0x35f77a
35f6d4  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f6d8  e8 fb 93 f7 ff                 call   0x2d8ad8
35f6dd  49 2b c5                       sub    rax,r13
35f6e0  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
35f6e5  4c 8b c8                       mov    r9,rax
35f6e8  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f6ec  45 33 c0                       xor    r8d,r8d
35f6ef  e8 a4 9d f7 ff                 call   0x2d9498
35f6f4  48 8b d0                       mov    rdx,rax
35f6f7  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f6fb  e8 e4 54 f7 ff                 call   0x2d4be4
35f700  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35f705  e8 ea cd f6 ff                 call   0x2cc4f4
35f70a  eb 6e                          jmp    0x35f77a
35f70c  48 8b ce                       mov    rcx,rsi
35f70f  e8 c4 93 f7 ff                 call   0x2d8ad8
35f714  48 83 f8 28                    cmp    rax,0x28
35f718  73 60                          jae    0x35f77a
35f71a  83 ff 20                       cmp    edi,0x20
35f71d  75 12                          jne    0x35f731
35f71f  48 8d 15 76 8a f4 ff           lea    rdx,[rip+0xfffffffffff48a76]        # 0x2a819c
35f726  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f72a  e8 7d e0 f6 ff                 call   0x2cd7ac
35f72f  eb 49                          jmp    0x35f77a
35f731  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35f738  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35f73f  e8 4c 96 ff ff                 call   0x358d90 ; STRING getter=0x358d90 None
35f744  48 8b c8                       mov    rcx,rax
35f747  e8 80 e5 f6 ff                 call   0x2cdccc
35f74c  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35f750  48 8b d8                       mov    rbx,rax
35f753  e8 94 e0 f6 ff                 call   0x2cd7ec
35f758  48 8b d3                       mov    rdx,rbx
35f75b  48 8b c8                       mov    rcx,rax
35f75e  e8 fd b1 06 00                 call   0x3ca960
35f763  48 85 c0                       test   rax,rax
35f766  75 12                          jne    0x35f77a
35f768  41 3b fe                       cmp    edi,r14d
35f76b  74 0d                          je     0x35f77a
35f76d  48 8d 55 f8                    lea    rdx,[rbp-0x8]
35f771  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f775  e8 8a 84 f7 ff                 call   0x2d7c04
35f77a  48 8d 55 88                    lea    rdx,[rbp-0x78]
35f77e  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f782  e8 a9 f7 f6 ff                 call   0x2cef30
35f787  84 c0                          test   al,al
35f789  0f 85 eb fe ff ff              jne    0x35f67a
35f78f  48 8b ce                       mov    rcx,rsi
35f792  e9 da fe ff ff                 jmp    0x35f671
35f797  44 38 25 59 dd 09 00           cmp    BYTE PTR [rip+0x9dd59],r12b        # 0x3fd4f7
35f79e  0f 84 e7 00 00 00              je     0x35f88b
35f7a4  48 8d 35 0d 4e 09 00           lea    rsi,[rip+0x94e0d]        # 0x3f45b8
35f7ab  48 8b d6                       mov    rdx,rsi
35f7ae  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f7b2  e8 dd 49 f7 ff                 call   0x2d4194
35f7b7  48 8d 55 a8                    lea    rdx,[rbp-0x58]
35f7bb  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f7bf  e8 d0 49 f7 ff                 call   0x2d4194
35f7c4  41 3b fe                       cmp    edi,r14d
35f7c7  75 4e                          jne    0x35f817
35f7c9  83 fb 04                       cmp    ebx,0x4
35f7cc  75 49                          jne    0x35f817
35f7ce  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f7d2  e8 bd 8e f7 ff                 call   0x2d8694
35f7d7  84 c0                          test   al,al
35f7d9  0f 85 8f 00 00 00              jne    0x35f86e
35f7df  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f7e3  e8 f0 92 f7 ff                 call   0x2d8ad8
35f7e8  49 2b c5                       sub    rax,r13
35f7eb  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
35f7f0  4c 8b c8                       mov    r9,rax
35f7f3  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f7f7  45 33 c0                       xor    r8d,r8d
35f7fa  e8 99 9c f7 ff                 call   0x2d9498
35f7ff  48 8b d0                       mov    rdx,rax
35f802  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f806  e8 d9 53 f7 ff                 call   0x2d4be4
35f80b  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35f810  e8 df cc f6 ff                 call   0x2cc4f4
35f815  eb 57                          jmp    0x35f86e
35f817  48 8b ce                       mov    rcx,rsi
35f81a  e8 b9 92 f7 ff                 call   0x2d8ad8
35f81f  48 83 f8 28                    cmp    rax,0x28
35f823  73 49                          jae    0x35f86e
35f825  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35f82c  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35f833  e8 8c 95 ff ff                 call   0x358dc4 ; STRING getter=0x358dc4 None
35f838  48 8b c8                       mov    rcx,rax
35f83b  e8 8c e4 f6 ff                 call   0x2cdccc
35f840  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35f844  48 8b d8                       mov    rbx,rax
35f847  e8 a0 df f6 ff                 call   0x2cd7ec
35f84c  48 8b c8                       mov    rcx,rax
35f84f  48 8b d3                       mov    rdx,rbx
35f852  e8 09 b1 06 00                 call   0x3ca960
35f857  48 85 c0                       test   rax,rax
35f85a  75 12                          jne    0x35f86e
35f85c  41 3b fe                       cmp    edi,r14d
35f85f  74 0d                          je     0x35f86e
35f861  48 8d 55 f8                    lea    rdx,[rbp-0x8]
35f865  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f869  e8 96 83 f7 ff                 call   0x2d7c04
35f86e  48 8d 55 a8                    lea    rdx,[rbp-0x58]
35f872  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f876  e8 b5 f6 f6 ff                 call   0x2cef30
35f87b  84 c0                          test   al,al
35f87d  0f 85 ed 03 00 00              jne    0x35fc70
35f883  48 8b ce                       mov    rcx,rsi
35f886  e9 dc 03 00 00                 jmp    0x35fc67
35f88b  44 38 25 62 dc 09 00           cmp    BYTE PTR [rip+0x9dc62],r12b        # 0x3fd4f4
35f892  74 61                          je     0x35f8f5
35f894  48 8d 35 9d da 09 00           lea    rsi,[rip+0x9da9d]        # 0x3fd338 ; CONFIG S.ConfigInputTest value(+0x48)
35f89b  48 8b d6                       mov    rdx,rsi
35f89e  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f8a2  e8 ed 48 f7 ff                 call   0x2d4194
35f8a7  48 8d 55 88                    lea    rdx,[rbp-0x78]
35f8ab  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f8af  e8 e0 48 f7 ff                 call   0x2d4194
35f8b4  41 3b fe                       cmp    edi,r14d
35f8b7  75 09                          jne    0x35f8c2
35f8b9  83 fb 04                       cmp    ebx,0x4
35f8bc  0f 84 01 fe ff ff              je     0x35f6c3
35f8c2  48 8b ce                       mov    rcx,rsi
35f8c5  e8 0e 92 f7 ff                 call   0x2d8ad8
35f8ca  48 83 f8 28                    cmp    rax,0x28
35f8ce  0f 83 a6 fe ff ff              jae    0x35f77a
35f8d4  83 ff 20                       cmp    edi,0x20
35f8d7  0f 84 42 fe ff ff              je     0x35f71f
35f8dd  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35f8e4  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35f8eb  e8 64 95 ff ff                 call   0x358e54 ; STRING getter=0x358e54 None
35f8f0  e9 4f fe ff ff                 jmp    0x35f744
35f8f5  44 38 25 ff db 09 00           cmp    BYTE PTR [rip+0x9dbff],r12b        # 0x3fd4fb
35f8fc  74 61                          je     0x35f95f
35f8fe  48 8d 35 13 db 09 00           lea    rsi,[rip+0x9db13]        # 0x3fd418 ; CONFIG S.SpoofedName value(+0x48)
35f905  48 8b d6                       mov    rdx,rsi
35f908  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f90c  e8 83 48 f7 ff                 call   0x2d4194
35f911  48 8d 55 88                    lea    rdx,[rbp-0x78]
35f915  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f919  e8 76 48 f7 ff                 call   0x2d4194
35f91e  41 3b fe                       cmp    edi,r14d
35f921  75 09                          jne    0x35f92c
35f923  83 fb 04                       cmp    ebx,0x4
35f926  0f 84 97 fd ff ff              je     0x35f6c3
35f92c  48 8b ce                       mov    rcx,rsi
35f92f  e8 a4 91 f7 ff                 call   0x2d8ad8
35f934  48 83 f8 28                    cmp    rax,0x28
35f938  0f 83 3c fe ff ff              jae    0x35f77a
35f93e  83 ff 20                       cmp    edi,0x20
35f941  0f 84 d8 fd ff ff              je     0x35f71f
35f947  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35f94e  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35f955  e8 92 95 ff ff                 call   0x358eec ; STRING getter=0x358eec None
35f95a  e9 e5 fd ff ff                 jmp    0x35f744
35f95f  44 38 25 90 db 09 00           cmp    BYTE PTR [rip+0x9db90],r12b        # 0x3fd4f6
35f966  0f 84 fa 00 00 00              je     0x35fa66
35f96c  48 8d 15 b5 4c 09 00           lea    rdx,[rip+0x94cb5]        # 0x3f4628
35f973  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35f977  e8 18 48 f7 ff                 call   0x2d4194
35f97c  48 8d 55 a8                    lea    rdx,[rbp-0x58]
35f980  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f984  e8 0b 48 f7 ff                 call   0x2d4194
35f989  41 3b fe                       cmp    edi,r14d
35f98c  75 4e                          jne    0x35f9dc
35f98e  83 fb 04                       cmp    ebx,0x4
35f991  75 49                          jne    0x35f9dc
35f993  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f997  e8 f8 8c f7 ff                 call   0x2d8694
35f99c  84 c0                          test   al,al
35f99e  0f 85 98 00 00 00              jne    0x35fa3c
35f9a4  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f9a8  e8 2b 91 f7 ff                 call   0x2d8ad8
35f9ad  49 2b c5                       sub    rax,r13
35f9b0  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
35f9b5  4c 8b c8                       mov    r9,rax
35f9b8  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f9bc  45 33 c0                       xor    r8d,r8d
35f9bf  e8 d4 9a f7 ff                 call   0x2d9498
35f9c4  48 8b d0                       mov    rdx,rax
35f9c7  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35f9cb  e8 14 52 f7 ff                 call   0x2d4be4
35f9d0  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35f9d5  e8 1a cb f6 ff                 call   0x2cc4f4
35f9da  eb 60                          jmp    0x35fa3c
35f9dc  48 8d 0d 45 4c 09 00           lea    rcx,[rip+0x94c45]        # 0x3f4628
35f9e3  e8 f0 90 f7 ff                 call   0x2d8ad8
35f9e8  48 83 f8 04                    cmp    rax,0x4
35f9ec  73 4e                          jae    0x35fa3c
35f9ee  40 84 f6                       test   sil,sil
35f9f1  74 49                          je     0x35fa3c
35f9f3  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35f9fa  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35fa01  e8 1a 95 ff ff                 call   0x358f20 ; STRING getter=0x358f20 None
35fa06  48 8b c8                       mov    rcx,rax
35fa09  e8 be e2 f6 ff                 call   0x2cdccc
35fa0e  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35fa12  48 8b d8                       mov    rbx,rax
35fa15  e8 d2 dd f6 ff                 call   0x2cd7ec
35fa1a  48 8b c8                       mov    rcx,rax
35fa1d  48 8b d3                       mov    rdx,rbx
35fa20  e8 3b af 06 00                 call   0x3ca960
35fa25  48 85 c0                       test   rax,rax
35fa28  75 12                          jne    0x35fa3c
35fa2a  41 3b fe                       cmp    edi,r14d
35fa2d  74 0d                          je     0x35fa3c
35fa2f  48 8d 55 f8                    lea    rdx,[rbp-0x8]
35fa33  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fa37  e8 c8 81 f7 ff                 call   0x2d7c04
35fa3c  48 8d 55 a8                    lea    rdx,[rbp-0x58]
35fa40  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fa44  e8 e7 f4 f6 ff                 call   0x2cef30
35fa49  84 c0                          test   al,al
35fa4b  0f 85 1f 02 00 00              jne    0x35fc70
35fa51  40 84 f6                       test   sil,sil
35fa54  0f 84 16 02 00 00              je     0x35fc70
35fa5a  48 8d 0d c7 4b 09 00           lea    rcx,[rip+0x94bc7]        # 0x3f4628
35fa61  e9 01 02 00 00                 jmp    0x35fc67
35fa66  44 38 25 8b da 09 00           cmp    BYTE PTR [rip+0x9da8b],r12b        # 0x3fd4f8
35fa6d  0f 84 fa 00 00 00              je     0x35fb6d
35fa73  48 8d 15 1e 4c 09 00           lea    rdx,[rip+0x94c1e]        # 0x3f4698
35fa7a  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35fa7e  e8 11 47 f7 ff                 call   0x2d4194
35fa83  48 8d 55 a8                    lea    rdx,[rbp-0x58]
35fa87  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fa8b  e8 04 47 f7 ff                 call   0x2d4194
35fa90  41 3b fe                       cmp    edi,r14d
35fa93  75 4e                          jne    0x35fae3
35fa95  83 fb 04                       cmp    ebx,0x4
35fa98  75 49                          jne    0x35fae3
35fa9a  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fa9e  e8 f1 8b f7 ff                 call   0x2d8694
35faa3  84 c0                          test   al,al
35faa5  0f 85 98 00 00 00              jne    0x35fb43
35faab  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35faaf  e8 24 90 f7 ff                 call   0x2d8ad8
35fab4  49 2b c5                       sub    rax,r13
35fab7  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
35fabc  4c 8b c8                       mov    r9,rax
35fabf  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fac3  45 33 c0                       xor    r8d,r8d
35fac6  e8 cd 99 f7 ff                 call   0x2d9498
35facb  48 8b d0                       mov    rdx,rax
35face  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fad2  e8 0d 51 f7 ff                 call   0x2d4be4
35fad7  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35fadc  e8 13 ca f6 ff                 call   0x2cc4f4
35fae1  eb 60                          jmp    0x35fb43
35fae3  48 8d 0d ae 4b 09 00           lea    rcx,[rip+0x94bae]        # 0x3f4698
35faea  e8 e9 8f f7 ff                 call   0x2d8ad8
35faef  48 83 f8 04                    cmp    rax,0x4
35faf3  73 4e                          jae    0x35fb43
35faf5  40 84 f6                       test   sil,sil
35faf8  74 49                          je     0x35fb43
35fafa  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35fb01  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35fb08  e8 6b 94 ff ff                 call   0x358f78 ; STRING getter=0x358f78 None
35fb0d  48 8b c8                       mov    rcx,rax
35fb10  e8 b7 e1 f6 ff                 call   0x2cdccc
35fb15  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35fb19  48 8b d8                       mov    rbx,rax
35fb1c  e8 cb dc f6 ff                 call   0x2cd7ec
35fb21  48 8b c8                       mov    rcx,rax
35fb24  48 8b d3                       mov    rdx,rbx
35fb27  e8 34 ae 06 00                 call   0x3ca960
35fb2c  48 85 c0                       test   rax,rax
35fb2f  75 12                          jne    0x35fb43
35fb31  41 3b fe                       cmp    edi,r14d
35fb34  74 0d                          je     0x35fb43
35fb36  48 8d 55 f8                    lea    rdx,[rbp-0x8]
35fb3a  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fb3e  e8 c1 80 f7 ff                 call   0x2d7c04
35fb43  48 8d 55 a8                    lea    rdx,[rbp-0x58]
35fb47  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fb4b  e8 e0 f3 f6 ff                 call   0x2cef30
35fb50  84 c0                          test   al,al
35fb52  0f 85 18 01 00 00              jne    0x35fc70
35fb58  40 84 f6                       test   sil,sil
35fb5b  0f 84 0f 01 00 00              je     0x35fc70
35fb61  48 8d 0d 30 4b 09 00           lea    rcx,[rip+0x94b30]        # 0x3f4698
35fb68  e9 fa 00 00 00                 jmp    0x35fc67
35fb6d  44 38 25 85 d9 09 00           cmp    BYTE PTR [rip+0x9d985],r12b        # 0x3fd4f9
35fb74  0f 84 08 01 00 00              je     0x35fc82
35fb7a  48 8d 15 d7 d6 09 00           lea    rdx,[rip+0x9d6d7]        # 0x3fd258 ; CONFIG S.BruteForceStart value(+0x48)
35fb81  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35fb85  e8 0a 46 f7 ff                 call   0x2d4194
35fb8a  48 8d 55 a8                    lea    rdx,[rbp-0x58]
35fb8e  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fb92  e8 fd 45 f7 ff                 call   0x2d4194
35fb97  41 3b fe                       cmp    edi,r14d
35fb9a  75 4e                          jne    0x35fbea
35fb9c  83 fb 04                       cmp    ebx,0x4
35fb9f  75 49                          jne    0x35fbea
35fba1  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fba5  e8 ea 8a f7 ff                 call   0x2d8694
35fbaa  84 c0                          test   al,al
35fbac  0f 85 98 00 00 00              jne    0x35fc4a
35fbb2  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fbb6  e8 1d 8f f7 ff                 call   0x2d8ad8
35fbbb  49 2b c5                       sub    rax,r13
35fbbe  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
35fbc3  4c 8b c8                       mov    r9,rax
35fbc6  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fbca  45 33 c0                       xor    r8d,r8d
35fbcd  e8 c6 98 f7 ff                 call   0x2d9498
35fbd2  48 8b d0                       mov    rdx,rax
35fbd5  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fbd9  e8 06 50 f7 ff                 call   0x2d4be4
35fbde  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
35fbe3  e8 0c c9 f6 ff                 call   0x2cc4f4
35fbe8  eb 60                          jmp    0x35fc4a
35fbea  48 8d 0d 67 d6 09 00           lea    rcx,[rip+0x9d667]        # 0x3fd258 ; CONFIG S.BruteForceStart value(+0x48)
35fbf1  e8 e2 8e f7 ff                 call   0x2d8ad8
35fbf6  48 83 f8 05                    cmp    rax,0x5
35fbfa  73 4e                          jae    0x35fc4a
35fbfc  40 84 f6                       test   sil,sil
35fbff  74 49                          je     0x35fc4a
35fc01  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35fc08  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35fc0f  e8 d4 93 ff ff                 call   0x358fe8 ; STRING getter=0x358fe8 None
35fc14  48 8b c8                       mov    rcx,rax
35fc17  e8 b0 e0 f6 ff                 call   0x2cdccc
35fc1c  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35fc20  48 8b d8                       mov    rbx,rax
35fc23  e8 c4 db f6 ff                 call   0x2cd7ec
35fc28  48 8b c8                       mov    rcx,rax
35fc2b  48 8b d3                       mov    rdx,rbx
35fc2e  e8 2d ad 06 00                 call   0x3ca960
35fc33  48 85 c0                       test   rax,rax
35fc36  75 12                          jne    0x35fc4a
35fc38  41 3b fe                       cmp    edi,r14d
35fc3b  74 0d                          je     0x35fc4a
35fc3d  48 8d 55 f8                    lea    rdx,[rbp-0x8]
35fc41  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fc45  e8 ba 7f f7 ff                 call   0x2d7c04
35fc4a  48 8d 55 a8                    lea    rdx,[rbp-0x58]
35fc4e  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fc52  e8 d9 f2 f6 ff                 call   0x2cef30
35fc57  84 c0                          test   al,al
35fc59  75 15                          jne    0x35fc70
35fc5b  40 84 f6                       test   sil,sil
35fc5e  74 10                          je     0x35fc70
35fc60  48 8d 0d f1 d5 09 00           lea    rcx,[rip+0x9d5f1]        # 0x3fd258 ; CONFIG S.BruteForceStart value(+0x48)
35fc67  48 8d 55 88                    lea    rdx,[rbp-0x78]
35fc6b  e8 b4 4f f7 ff                 call   0x2d4c24
35fc70  48 8d 4d 88                    lea    rcx,[rbp-0x78]
35fc74  e8 7b c8 f6 ff                 call   0x2cc4f4
35fc79  48 8d 4d a8                    lea    rcx,[rbp-0x58]
35fc7d  e8 72 c8 f6 ff                 call   0x2cc4f4
35fc82  48 8d 4d f8                    lea    rcx,[rbp-0x8]
35fc86  e8 69 c8 f6 ff                 call   0x2cc4f4
35fc8b  44 38 25 26 db 09 00           cmp    BYTE PTR [rip+0x9db26],r12b        # 0x3fd7b8
35fc92  0f 85 46 01 00 00              jne    0x35fdde
35fc98  48 8d 15 21 58 fd ff           lea    rdx,[rip+0xfffffffffffd5821]        # 0x3354c0
35fc9f  33 c9                          xor    ecx,ecx
35fca1  e8 1a 50 02 00                 call   0x384cc0
35fca6  48 8d 15 23 57 fd ff           lea    rdx,[rip+0xfffffffffffd5723]        # 0x3353d0
35fcad  33 c9                          xor    ecx,ecx
35fcaf  e8 0c 50 02 00                 call   0x384cc0
35fcb4  48 8d 15 21 57 fd ff           lea    rdx,[rip+0xfffffffffffd5721]        # 0x3353dc
35fcbb  33 c9                          xor    ecx,ecx
35fcbd  e8 fe 4f 02 00                 call   0x384cc0
35fcc2  48 8d 15 1f 57 fd ff           lea    rdx,[rip+0xfffffffffffd571f]        # 0x3353e8
35fcc9  41 8b cd                       mov    ecx,r13d
35fccc  e8 ef 4f 02 00                 call   0x384cc0
35fcd1  48 8d 15 1c 57 fd ff           lea    rdx,[rip+0xfffffffffffd571c]        # 0x3353f4
35fcd8  41 8b cd                       mov    ecx,r13d
35fcdb  e8 e0 4f 02 00                 call   0x384cc0
35fce0  48 8d 15 19 57 fd ff           lea    rdx,[rip+0xfffffffffffd5719]        # 0x335400
35fce7  41 8b cd                       mov    ecx,r13d
35fcea  e8 d1 4f 02 00                 call   0x384cc0
35fcef  48 8d 15 16 57 fd ff           lea    rdx,[rip+0xfffffffffffd5716]        # 0x33540c
35fcf6  41 8b cd                       mov    ecx,r13d
35fcf9  e8 c2 4f 02 00                 call   0x384cc0
35fcfe  48 8d 15 13 57 fd ff           lea    rdx,[rip+0xfffffffffffd5713]        # 0x335418
35fd05  41 8b cd                       mov    ecx,r13d
35fd08  e8 b3 4f 02 00                 call   0x384cc0
35fd0d  48 8d 15 10 57 fd ff           lea    rdx,[rip+0xfffffffffffd5710]        # 0x335424
35fd14  41 8b cd                       mov    ecx,r13d
35fd17  e8 a4 4f 02 00                 call   0x384cc0
35fd1c  48 8d 15 0d 57 fd ff           lea    rdx,[rip+0xfffffffffffd570d]        # 0x335430
35fd23  b9 02 00 00 00                 mov    ecx,0x2
35fd28  e8 93 4f 02 00                 call   0x384cc0
35fd2d  bb 03 00 00 00                 mov    ebx,0x3
35fd32  48 8d 15 03 57 fd ff           lea    rdx,[rip+0xfffffffffffd5703]        # 0x33543c
35fd39  8b cb                          mov    ecx,ebx
35fd3b  e8 80 4f 02 00                 call   0x384cc0
35fd40  48 8d 15 01 57 fd ff           lea    rdx,[rip+0xfffffffffffd5701]        # 0x335448
35fd47  8b cb                          mov    ecx,ebx
35fd49  e8 72 4f 02 00                 call   0x384cc0
35fd4e  48 8d 15 ff 56 fd ff           lea    rdx,[rip+0xfffffffffffd56ff]        # 0x335454
35fd55  8b cb                          mov    ecx,ebx
35fd57  e8 64 4f 02 00                 call   0x384cc0
35fd5c  48 8d 15 fd 56 fd ff           lea    rdx,[rip+0xfffffffffffd56fd]        # 0x335460
35fd63  8b cb                          mov    ecx,ebx
35fd65  e8 56 4f 02 00                 call   0x384cc0
35fd6a  48 8d 15 fb 56 fd ff           lea    rdx,[rip+0xfffffffffffd56fb]        # 0x33546c
35fd71  8b cb                          mov    ecx,ebx
35fd73  e8 48 4f 02 00                 call   0x384cc0
35fd78  48 8d 15 f9 56 fd ff           lea    rdx,[rip+0xfffffffffffd56f9]        # 0x335478
35fd7f  8d 4b 01                       lea    ecx,[rbx+0x1]
35fd82  e8 39 4f 02 00                 call   0x384cc0
35fd87  48 8d 15 f6 56 fd ff           lea    rdx,[rip+0xfffffffffffd56f6]        # 0x335484
35fd8e  8d 4b 01                       lea    ecx,[rbx+0x1]
35fd91  e8 2a 4f 02 00                 call   0x384cc0
35fd96  48 8d 15 f3 56 fd ff           lea    rdx,[rip+0xfffffffffffd56f3]        # 0x335490
35fd9d  8d 4b 02                       lea    ecx,[rbx+0x2]
35fda0  e8 1b 4f 02 00                 call   0x384cc0
35fda5  48 8d 15 f0 56 fd ff           lea    rdx,[rip+0xfffffffffffd56f0]        # 0x33549c
35fdac  8d 4b 02                       lea    ecx,[rbx+0x2]
35fdaf  e8 0c 4f 02 00                 call   0x384cc0
35fdb4  48 8d 15 ed 56 fd ff           lea    rdx,[rip+0xfffffffffffd56ed]        # 0x3354a8
35fdbb  8d 4b 02                       lea    ecx,[rbx+0x2]
35fdbe  e8 fd 4e 02 00                 call   0x384cc0
35fdc3  48 8d 15 ea 56 fd ff           lea    rdx,[rip+0xfffffffffffd56ea]        # 0x3354b4
35fdca  8d 4b 03                       lea    ecx,[rbx+0x3]
35fdcd  e8 ee 4e 02 00                 call   0x384cc0
35fdd2  e8 19 76 02 00                 call   0x3873f0
35fdd7  44 88 2d da d9 09 00           mov    BYTE PTR [rip+0x9d9da],r13b        # 0x3fd7b8
35fdde  44 38 25 d3 dc 09 00           cmp    BYTE PTR [rip+0x9dcd3],r12b        # 0x3fdab8
35fde5  4c 8d 35 1c c3 09 00           lea    r14,[rip+0x9c31c]        # 0x3fc108
35fdec  0f 85 be 00 00 00              jne    0x35feb0
35fdf2  49 8b ce                       mov    rcx,r14
35fdf5  41 8b dc                       mov    ebx,r12d
35fdf8  e8 97 51 00 00                 call   0x364f94
35fdfd  48 85 c0                       test   rax,rax
35fe00  0f 84 a3 00 00 00              je     0x35fea9
35fe06  89 1d f4 c2 09 00              mov    DWORD PTR [rip+0x9c2f4],ebx        # 0x3fc100
35fe0c  41 8b f4                       mov    esi,r12d
35fe0f  48 63 fb                       movsxd rdi,ebx
35fe12  48 8b d7                       mov    rdx,rdi
35fe15  49 8b ce                       mov    rcx,r14
35fe18  e8 93 69 fd ff                 call   0x3367b0
35fe1d  48 8b d7                       mov    rdx,rdi
35fe20  4c 63 f6                       movsxd r14,esi
35fe23  48 8d 0d de c2 09 00           lea    rcx,[rip+0x9c2de]        # 0x3fc108
35fe2a  89 70 70                       mov    DWORD PTR [rax+0x70],esi
35fe2d  e8 7e 69 fd ff                 call   0x3367b0
35fe32  48 8d 48 58                    lea    rcx,[rax+0x58]
35fe36  e8 8d 95 f7 ff                 call   0x2d93c8
35fe3b  49 3b c6                       cmp    rax,r14
35fe3e  76 1d                          jbe    0x35fe5d
35fe40  48 8b d7                       mov    rdx,rdi
35fe43  48 8d 0d be c2 09 00           lea    rcx,[rip+0x9c2be]        # 0x3fc108
35fe4a  e8 61 69 fd ff                 call   0x3367b0
35fe4f  49 8b d6                       mov    rdx,r14
35fe52  48 8d 48 58                    lea    rcx,[rax+0x58]
35fe56  e8 59 f9 f8 ff                 call   0x2ef7b4
35fe5b  ff 10                          call   QWORD PTR [rax]
35fe5d  4c 8d 35 a4 c2 09 00           lea    r14,[rip+0x9c2a4]        # 0x3fc108
35fe64  48 8b d7                       mov    rdx,rdi
35fe67  49 8b ce                       mov    rcx,r14
35fe6a  e8 41 69 fd ff                 call   0x3367b0
35fe6f  48 8b d7                       mov    rdx,rdi
35fe72  49 8b ce                       mov    rcx,r14
35fe75  41 03 f5                       add    esi,r13d
35fe78  44 89 60 70                    mov    DWORD PTR [rax+0x70],r12d
35fe7c  e8 2f 69 fd ff                 call   0x3367b0
35fe81  48 8d 48 40                    lea    rcx,[rax+0x40]
35fe85  e8 5e 95 f7 ff                 call   0x2d93e8
35fe8a  48 63 ce                       movsxd rcx,esi
35fe8d  48 3b c8                       cmp    rcx,rax
35fe90  76 80                          jbe    0x35fe12
35fe92  49 8b ce                       mov    rcx,r14
35fe95  41 03 dd                       add    ebx,r13d
35fe98  e8 f7 50 00 00                 call   0x364f94
35fe9d  48 63 cb                       movsxd rcx,ebx
35fea0  48 3b c8                       cmp    rcx,rax
35fea3  0f 82 5d ff ff ff              jb     0x35fe06
35fea9  44 89 25 50 c2 09 00           mov    DWORD PTR [rip+0x9c250],r12d        # 0x3fc100
35feb0  0f 57 d2                       xorps  xmm2,xmm2
35feb3  44 88 2d fe db 09 00           mov    BYTE PTR [rip+0x9dbfe],r13b        # 0x3fdab8
35feba  0f 57 c9                       xorps  xmm1,xmm1
35febd  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35fec4  e8 77 c4 f6 ff                 call   0x2cc340
35fec9  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35fed0  b9 02 00 00 00                 mov    ecx,0x2
35fed5  e8 86 8d 03 00                 call   0x398c60
35feda  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
35fee1  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35fee8  e8 8b 08 ff ff                 call   0x350778 ; STRING getter=0x350778 UI
35feed  48 8b c8                       mov    rcx,rax
35fef0  e8 ff 04 fc ff                 call   0x3203f4
35fef5  33 d2                          xor    edx,edx
35fef7  48 8b c8                       mov    rcx,rax
35fefa  44 8d 42 2b                    lea    r8d,[rdx+0x2b]
35fefe  e8 a1 d0 02 00                 call   0x38cfa4
35ff03  41 8b cd                       mov    ecx,r13d
35ff06  e8 61 8a 03 00                 call   0x39896c
35ff0b  e8 94 70 02 00                 call   0x386fa4
35ff10  e8 eb d2 ff ff                 call   0x35d200
35ff15  f3 0f 10 40 20                 movss  xmm0,DWORD PTR [rax+0x20]
35ff1a  0f 2e 05 0f dc f2 ff           ucomiss xmm0,DWORD PTR [rip+0xfffffffffff2dc0f]        # 0x28db30 ; f32=60
35ff21  7a 26                          jp     0x35ff49
35ff23  75 24                          jne    0x35ff49
35ff25  f3 0f 10 35 b3 8f ee ff        movss  xmm6,DWORD PTR [rip+0xffffffffffee8fb3]        # 0x248ee0 ; f32=100
35ff2d  e8 ce d2 ff ff                 call   0x35d200
35ff32  f3 0f 11 70 20                 movss  DWORD PTR [rax+0x20],xmm6
35ff37  f3 0f 10 35 a5 8f ee ff        movss  xmm6,DWORD PTR [rip+0xffffffffffee8fa5]        # 0x248ee4 ; f32=100
35ff3f  e8 bc d2 ff ff                 call   0x35d200
35ff44  f3 0f 11 70 24                 movss  DWORD PTR [rax+0x24],xmm6
35ff49  e8 b2 d2 ff ff                 call   0x35d200
35ff4e  f3 44 0f 10 1d fd d2 f2 ff     movss  xmm11,DWORD PTR [rip+0xfffffffffff2d2fd]        # 0x28d254 ; f32=1
35ff57  f3 44 0f 10 0d 54 32 f3 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff33254]        # 0x2931b4 ; f32=14
35ff60  41 0f 28 d3                    movaps xmm2,xmm11
35ff64  44 8a 0d 9a c1 09 00           mov    r9b,BYTE PTR [rip+0x9c19a]        # 0x3fc105
35ff6b  f3 0f 10 40 20                 movss  xmm0,DWORD PTR [rax+0x20]
35ff70  f3 0f 11 05 68 8f ee ff        movss  DWORD PTR [rip+0xffffffffffee8f68],xmm0        # 0x248ee0 ; f32=100
35ff78  f3 0f 10 48 24                 movss  xmm1,DWORD PTR [rax+0x24]
35ff7d  f3 0f 10 05 37 db 09 00        movss  xmm0,DWORD PTR [rip+0x9db37]        # 0x3fdabc
35ff85  f3 0f 11 0d 57 8f ee ff        movss  DWORD PTR [rip+0xffffffffffee8f57],xmm1        # 0x248ee4 ; f32=100
35ff8d  0f 57 c9                       xorps  xmm1,xmm1
35ff90  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
35ff97  e8 ac 5e fd ff                 call   0x335e48
35ff9c  f3 0f 10 25 44 8f ee ff        movss  xmm4,DWORD PTR [rip+0xffffffffffee8f44]        # 0x248ee8 ; f32=1
35ffa4  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35ffab  f3 0f 11 05 09 db 09 00        movss  DWORD PTR [rip+0x9db09],xmm0        # 0x3fdabc
35ffb3  0f 28 cc                       movaps xmm1,xmm4
35ffb6  f3 0f 59 0d 7a 32 f3 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff3327a]        # 0x293238 ; f32=230
35ffbe  0f 28 dc                       movaps xmm3,xmm4
35ffc1  f3 0f 59 1d 83 82 f4 ff        mulss  xmm3,DWORD PTR [rip+0xfffffffffff48283]        # 0x2a824c ; f32=104
35ffc9  0f 28 d4                       movaps xmm2,xmm4
35ffcc  f3 0f 59 15 38 8f ee ff        mulss  xmm2,DWORD PTR [rip+0xffffffffffee8f38]        # 0x248f0c ; f32=580
35ffd4  f3 0f 5c cb                    subss  xmm1,xmm3
35ffd8  f3 0f 59 c8                    mulss  xmm1,xmm0
35ffdc  f3 0f 10 05 24 8f ee ff        movss  xmm0,DWORD PTR [rip+0xffffffffffee8f24]        # 0x248f08 ; f32=850
35ffe4  f3 0f 59 c4                    mulss  xmm0,xmm4
35ffe8  f3 0f 58 c8                    addss  xmm1,xmm0
35ffec  e8 4f c3 f6 ff                 call   0x2cc340
35fff1  33 d2                          xor    edx,edx
35fff3  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
35fffa  e8 6d bc 03 00                 call   0x39bc6c
35ffff  48 8d 15 a2 d3 09 00           lea    rdx,[rip+0x9d3a2]        # 0x3fd3a8 ; CONFIG S.FavoriteInputText value(+0x48)
360006  48 8d 4d 88                    lea    rcx,[rbp-0x78]
36000a  e8 85 41 f7 ff                 call   0x2d4194
36000f  f3 0f 10 15 d1 8e ee ff        movss  xmm2,DWORD PTR [rip+0xffffffffffee8ed1]        # 0x248ee8 ; f32=1
360017  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
36001e  f3 0f 10 35 1e 82 f4 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff4821e]        # 0x2a8244 ; f32=56
360026  0f 57 c9                       xorps  xmm1,xmm1
360029  f3 0f 59 d6                    mulss  xmm2,xmm6
36002d  e8 0e c3 f6 ff                 call   0x2cc340
360032  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
360039  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360040  e8 c3 07 ff ff                 call   0x350808 ; STRING getter=0x350808 header
360045  48 8b c8                       mov    rcx,rax
360048  e8 a7 dc f6 ff                 call   0x2cdcf4
36004d  bb 80 00 00 00                 mov    ebx,0x80
360052  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
360059  44 8b cb                       mov    r9d,ebx
36005c  48 8b c8                       mov    rcx,rax
36005f  45 33 c0                       xor    r8d,r8d
360062  e8 15 e9 02 00                 call   0x38e97c
360067  48 8d 55 d8                    lea    rdx,[rbp-0x28]
36006b  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360072  e8 61 08 ff ff                 call   0x3508d8 ; STRING getter=0x3508d8 Rust Internal Pro
360077  48 8b c8                       mov    rcx,rax
36007a  e8 5d 9b f8 ff                 call   0x2e9bdc
36007f  48 8b d0                       mov    rdx,rax
360082  48 8d 4d f8                    lea    rcx,[rbp-0x8]
360086  e8 41 c2 f6 ff                 call   0x2cc2cc
36008b  48 8d 4d f8                    lea    rcx,[rbp-0x8]
36008f  e8 58 d7 f6 ff                 call   0x2cd7ec
360094  f3 44 0f 10 25 c3 31 f3 ff     movss  xmm12,DWORD PTR [rip+0xfffffffffff331c3]        # 0x293260 ; f32=-1
36009d  48 8d 4d d0                    lea    rcx,[rbp-0x30]
3600a1  48 8b d0                       mov    rdx,rax
3600a4  f3 44 0f 11 64 24 20           movss  DWORD PTR [rsp+0x20],xmm12
3600ab  45 33 c9                       xor    r9d,r9d
3600ae  45 33 c0                       xor    r8d,r8d
3600b1  e8 e6 f6 02 00                 call   0x38f79c
3600b6  f3 0f 10 0d 2a 8e ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee8e2a]        # 0x248ee8 ; f32=1
3600be  48 8d 4d c8                    lea    rcx,[rbp-0x38]
3600c2  0f 28 d1                       movaps xmm2,xmm1
3600c5  f3 0f 59 0d 0f 31 f3 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff3310f]        # 0x2931dc ; f32=28
3600cd  f3 0f 59 d6                    mulss  xmm2,xmm6
3600d1  f3 0f 58 08                    addss  xmm1,DWORD PTR [rax]
3600d5  e8 66 c2 f6 ff                 call   0x2cc340
3600da  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
3600e1  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3600e8  e8 ef 08 ff ff                 call   0x3509dc ; STRING getter=0x3509dc name
3600ed  48 8b c8                       mov    rcx,rax
3600f0  e8 d7 db f6 ff                 call   0x2cdccc
3600f5  48 8b c8                       mov    rcx,rax
3600f8  44 8b cb                       mov    r9d,ebx
3600fb  48 8d 55 c8                    lea    rdx,[rbp-0x38]
3600ff  45 33 c0                       xor    r8d,r8d
360102  e8 75 e8 02 00                 call   0x38e97c
360107  e8 c0 2d 03 00                 call   0x392ecc
36010c  48 8b 0d 15 5a 0a 00           mov    rcx,QWORD PTR [rip+0xa5a15]        # 0x405b28
360113  48 8b f0                       mov    rsi,rax
360116  f3 0f 10 0d ae e0 f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff2e0ae]        # 0x28e1cc ; f32=0.95
36011e  f3 0f 10 b1 e0 37 00 00        movss  xmm6,DWORD PTR [rcx+0x37e0]
360126  8d 4b 84                       lea    ecx,[rbx-0x7c]
360129  e8 6a 21 03 00                 call   0x392298
36012e  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360135  8b f8                          mov    edi,eax
360137  e8 d8 2d 03 00                 call   0x392f14
36013c  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
360143  48 8b d8                       mov    rbx,rax
360146  e8 ad 2d 03 00                 call   0x392ef8
36014b  48 8b d0                       mov    rdx,rax
36014e  48 8d 4d c8                    lea    rcx,[rbp-0x38]
360152  4c 8b c3                       mov    r8,rbx
360155  e8 7e f8 f8 ff                 call   0x2ef9d8
36015a  48 8d 4d d0                    lea    rcx,[rbp-0x30]
36015e  48 8b d8                       mov    rbx,rax
360161  e8 92 2d 03 00                 call   0x392ef8
360166  48 8b d0                       mov    rdx,rax
360169  c7 44 24 28 b0 00 00 00        mov    DWORD PTR [rsp+0x28],0xb0
360171  44 8b cf                       mov    r9d,edi
360174  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
36017a  4c 8b c3                       mov    r8,rbx
36017d  48 8b ce                       mov    rcx,rsi
360180  e8 bf 10 04 00                 call   0x3a1244
360185  e8 42 2d 03 00                 call   0x392ecc
36018a  48 8b 0d 97 59 0a 00           mov    rcx,QWORD PTR [rip+0xa5997]        # 0x405b28
360191  41 0f 28 cb                    movaps xmm1,xmm11
360195  4c 8b f0                       mov    r14,rax
360198  f3 0f 10 b1 e0 37 00 00        movss  xmm6,DWORD PTR [rcx+0x37e0]
3601a0  b9 06 00 00 00                 mov    ecx,0x6
3601a5  e8 ee 20 03 00                 call   0x392298
3601aa  0f 57 d2                       xorps  xmm2,xmm2
3601ad  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3601b4  0f 57 c9                       xorps  xmm1,xmm1
3601b7  8b f0                          mov    esi,eax
3601b9  e8 82 c1 f6 ff                 call   0x2cc340
3601be  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
3601c5  48 8b f8                       mov    rdi,rax
3601c8  e8 47 2d 03 00                 call   0x392f14
3601cd  48 8d 4d c8                    lea    rcx,[rbp-0x38]
3601d1  48 8b d8                       mov    rbx,rax
3601d4  e8 1f 2d 03 00                 call   0x392ef8
3601d9  48 8b d0                       mov    rdx,rax
3601dc  48 8d 4d d0                    lea    rcx,[rbp-0x30]
3601e0  4c 8b c3                       mov    r8,rbx
3601e3  e8 f0 f7 f8 ff                 call   0x2ef9d8
3601e8  48 8b d0                       mov    rdx,rax
3601eb  48 8d 4d 60                    lea    rcx,[rbp+0x60]
3601ef  4c 8b c7                       mov    r8,rdi
3601f2  e8 e1 f7 f8 ff                 call   0x2ef9d8
3601f7  f3 0f 10 0d 45 d9 f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff2d945]        # 0x28db44 ; f32=100
3601ff  48 8d 4d 68                    lea    rcx,[rbp+0x68]
360203  41 0f 28 d3                    movaps xmm2,xmm11
360207  48 8b f8                       mov    rdi,rax
36020a  e8 31 c1 f6 ff                 call   0x2cc340
36020f  48 8d 4d 34                    lea    rcx,[rbp+0x34]
360213  48 8b d8                       mov    rbx,rax
360216  e8 dd 2c 03 00                 call   0x392ef8
36021b  48 8b d0                       mov    rdx,rax
36021e  48 8d 4d 28                    lea    rcx,[rbp+0x28]
360222  4c 8b c3                       mov    r8,rbx
360225  e8 ba 65 fd ff                 call   0x3367e4
36022a  f3 44 0f 11 5c 24 30           movss  DWORD PTR [rsp+0x30],xmm11
360231  48 8b d0                       mov    rdx,rax
360234  c7 44 24 28 a0 00 00 00        mov    DWORD PTR [rsp+0x28],0xa0
36023c  44 8b ce                       mov    r9d,esi
36023f  4c 8b c7                       mov    r8,rdi
360242  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
360248  49 8b ce                       mov    rcx,r14
36024b  e8 f8 0e 04 00                 call   0x3a1148
360250  f3 0f 10 35 90 8c ee ff        movss  xmm6,DWORD PTR [rip+0xffffffffffee8c90]        # 0x248ee8 ; f32=1
360258  f3 41 0f 59 f1                 mulss  xmm6,xmm9
36025d  e8 82 2c 03 00                 call   0x392ee4
360262  0f 28 d0                       movaps xmm2,xmm0
360265  48 8b 05 bc 58 0a 00           mov    rax,QWORD PTR [rip+0xa58bc]        # 0x405b28
36026c  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360273  f3 0f 10 3d d5 cf f2 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff2cfd5]        # 0x28d250 ; f32=0.5
36027b  0f 28 ce                       movaps xmm1,xmm6
36027e  f3 0f 59 d7                    mulss  xmm2,xmm7
360282  f3 0f 10 80 30 3c 00 00        movss  xmm0,DWORD PTR [rax+0x3c30]
36028a  f3 0f 59 c7                    mulss  xmm0,xmm7
36028e  f3 0f 5c d0                    subss  xmm2,xmm0
360292  e8 a9 c0 f6 ff                 call   0x2cc340
360297  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
36029e  e8 15 b1 03 00                 call   0x39b3b8
3602a3  48 8d 4d f8                    lea    rcx,[rbp-0x8]
3602a7  e8 40 d5 f6 ff                 call   0x2cd7ec
3602ac  48 8b c8                       mov    rcx,rax
3602af  e8 dc 4b 06 00                 call   0x3c4e90
3602b4  e8 cf 07 03 00                 call   0x390a88
3602b9  0f 57 c9                       xorps  xmm1,xmm1
3602bc  0f 57 c0                       xorps  xmm0,xmm0
3602bf  e8 40 a9 03 00                 call   0x39ac04
3602c4  f3 0f 10 35 1c 8c ee ff        movss  xmm6,DWORD PTR [rip+0xffffffffffee8c1c]        # 0x248ee8 ; f32=1
3602cc  f3 0f 59 35 e8 2e f3 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff32ee8]        # 0x2931bc ; f32=16
3602d4  e8 0b 2c 03 00                 call   0x392ee4
3602d9  48 8b 05 48 58 0a 00           mov    rax,QWORD PTR [rip+0xa5848]        # 0x405b28
3602e0  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3602e7  0f 28 d0                       movaps xmm2,xmm0
3602ea  0f 28 ce                       movaps xmm1,xmm6
3602ed  f3 0f 59 d7                    mulss  xmm2,xmm7
3602f1  f3 0f 10 80 30 3c 00 00        movss  xmm0,DWORD PTR [rax+0x3c30]
3602f9  f3 0f 59 c7                    mulss  xmm0,xmm7
3602fd  f3 0f 5c d0                    subss  xmm2,xmm0
360301  e8 3a c0 f6 ff                 call   0x2cc340
360306  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
36030d  b9 0b 00 00 00                 mov    ecx,0xb
360312  e8 49 89 03 00                 call   0x398c60
360317  0f 57 c9                       xorps  xmm1,xmm1
36031a  b9 0d 00 00 00                 mov    ecx,0xd
36031f  e8 a4 89 03 00                 call   0x398cc8
360324  e8 0b 2c 03 00                 call   0x392f34
360329  0f 28 f0                       movaps xmm6,xmm0
36032c  e8 f3 20 03 00                 call   0x392424
360331  f3 0f 5c f0                    subss  xmm6,xmm0
360335  0f 28 c6                       movaps xmm0,xmm6
360338  e8 c7 b3 03 00                 call   0x39b704
36033d  bb 08 00 00 00                 mov    ebx,0x8
360342  0f 57 c9                       xorps  xmm1,xmm1
360345  8b cb                          mov    ecx,ebx
360347  e8 4c 1f 03 00                 call   0x392298
36034c  8b d0                          mov    edx,eax
36034e  8b cb                          mov    ecx,ebx
360350  e8 97 88 03 00                 call   0x398bec
360355  0f 57 c9                       xorps  xmm1,xmm1
360358  33 c9                          xor    ecx,ecx
36035a  e8 39 1f 03 00                 call   0x392298
36035f  8b d0                          mov    edx,eax
360361  33 c9                          xor    ecx,ecx
360363  e8 84 88 03 00                 call   0x398bec
360368  48 8d 4d 88                    lea    rcx,[rbp-0x78]
36036c  e8 67 87 f7 ff                 call   0x2d8ad8
360371  48 8d 4d 88                    lea    rcx,[rbp-0x78]
360375  48 8b f0                       mov    rsi,rax
360378  e8 6f d4 f6 ff                 call   0x2cd7ec
36037d  48 8d 55 a8                    lea    rdx,[rbp-0x58]
360381  48 8b f8                       mov    rdi,rax
360384  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
36038b  e8 04 07 ff ff                 call   0x350a94 ; STRING getter=0x350a94 Search for functions...
360390  48 8b c8                       mov    rcx,rax
360393  e8 4c 01 fc ff                 call   0x3204e4
360398  48 8d 55 40                    lea    rdx,[rbp+0x40]
36039c  48 8b d8                       mov    rbx,rax
36039f  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3603a6  e8 a9 06 ff ff                 call   0x350a54 ; STRING getter=0x350a54 ##search
3603ab  48 8b c8                       mov    rcx,rax
3603ae  e8 d9 97 f8 ff                 call   0x2e9b8c
3603b3  4c 89 64 24 30                 mov    QWORD PTR [rsp+0x30],r12
3603b8  48 8b c8                       mov    rcx,rax
3603bb  4c 89 64 24 28                 mov    QWORD PTR [rsp+0x28],r12
3603c0  4c 8b ce                       mov    r9,rsi
3603c3  4c 8b c7                       mov    r8,rdi
3603c6  c7 44 24 20 00 50 00 00        mov    DWORD PTR [rsp+0x20],0x5000
3603ce  48 8b d3                       mov    rdx,rbx
3603d1  e8 86 29 06 00                 call   0x3c2d5c
3603d6  e8 b1 3c 03 00                 call   0x39408c
3603db  bb 02 00 00 00                 mov    ebx,0x2
3603e0  88 05 14 d1 09 00              mov    BYTE PTR [rip+0x9d114],al        # 0x3fd4fa
3603e6  8b cb                          mov    ecx,ebx
3603e8  e8 1f 85 03 00                 call   0x39890c
3603ed  8b cb                          mov    ecx,ebx
3603ef  e8 78 85 03 00                 call   0x39896c
3603f4  e8 d3 2a 03 00                 call   0x392ecc
3603f9  41 0f 28 cb                    movaps xmm1,xmm11
3603fd  8d 4b 04                       lea    ecx,[rbx+0x4]
360400  4c 8b f0                       mov    r14,rax
360403  e8 90 1e 03 00                 call   0x392298
360408  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
36040f  8b f0                          mov    esi,eax
360411  e8 fe 2a 03 00                 call   0x392f14
360416  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
36041d  48 8b d8                       mov    rbx,rax
360420  e8 d3 2a 03 00                 call   0x392ef8
360425  48 8b d0                       mov    rdx,rax
360428  48 8d 4d 28                    lea    rcx,[rbp+0x28]
36042c  4c 8b c3                       mov    r8,rbx
36042f  e8 a4 f5 f8 ff                 call   0x2ef9d8
360434  48 8b f8                       mov    rdi,rax
360437  e8 a8 2a 03 00                 call   0x392ee4
36043c  f3 41 0f 5c c3                 subss  xmm0,xmm11
360441  0f 57 c9                       xorps  xmm1,xmm1
360444  48 8d 4d 34                    lea    rcx,[rbp+0x34]
360448  0f 28 d0                       movaps xmm2,xmm0
36044b  e8 f0 be f6 ff                 call   0x2cc340
360450  48 8d 4d c8                    lea    rcx,[rbp-0x38]
360454  48 8b d8                       mov    rbx,rax
360457  e8 9c 2a 03 00                 call   0x392ef8
36045c  48 8b d0                       mov    rdx,rax
36045f  48 8d 4d d0                    lea    rcx,[rbp-0x30]
360463  4c 8b c3                       mov    r8,rbx
360466  e8 6d f5 f8 ff                 call   0x2ef9d8
36046b  48 8b d0                       mov    rdx,rax
36046e  44 89 64 24 28                 mov    DWORD PTR [rsp+0x28],r12d
360473  44 8b ce                       mov    r9d,esi
360476  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
36047d  4c 8b c7                       mov    r8,rdi
360480  49 8b ce                       mov    rcx,r14
360483  e8 bc 0d 04 00                 call   0x3a1244
360488  48 8d 4d f8                    lea    rcx,[rbp-0x8]
36048c  e8 63 c0 f6 ff                 call   0x2cc4f4
360491  e8 f2 05 03 00                 call   0x390a88
360496  f3 0f 10 15 4a 8a ee ff        movss  xmm2,DWORD PTR [rip+0xffffffffffee8a4a]        # 0x248ee8 ; f32=1
36049e  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3604a5  f3 0f 59 15 9b 7d f4 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff47d9b]        # 0x2a8248 ; f32=57
3604ad  0f 57 c9                       xorps  xmm1,xmm1
3604b0  e8 8b be f6 ff                 call   0x2cc340
3604b5  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3604bc  e8 f7 ae 03 00                 call   0x39b3b8
3604c1  f3 0f 10 0d 1f 8a ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee8a1f]        # 0x248ee8 ; f32=1
3604c9  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
3604d0  0f 28 c1                       movaps xmm0,xmm1
3604d3  41 0f 28 d4                    movaps xmm2,xmm12
3604d7  f3 0f 59 0d 75 7d f4 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff47d75]        # 0x2a8254 ; f32=190
3604df  f3 0f 59 05 51 d6 f2 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff2d651]        # 0x28db38 ; f32=70
3604e7  f3 0f 5c c8                    subss  xmm1,xmm0
3604eb  f3 0f 59 0d c9 d5 09 00        mulss  xmm1,DWORD PTR [rip+0x9d5c9]        # 0x3fdabc
3604f3  f3 0f 58 c8                    addss  xmm1,xmm0
3604f7  e8 44 be f6 ff                 call   0x2cc340
3604fc  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
360503  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
36050a  e8 f5 05 ff ff                 call   0x350b04 ; STRING getter=0x350b04 navbar
36050f  48 8b c8                       mov    rcx,rax
360512  e8 dd d7 f6 ff                 call   0x2cdcf4
360517  bb 80 00 00 00                 mov    ebx,0x80
36051c  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
360523  44 8b cb                       mov    r9d,ebx
360526  48 8b c8                       mov    rcx,rax
360529  45 33 c0                       xor    r8d,r8d
36052c  e8 4b e4 02 00                 call   0x38e97c
360531  8b cb                          mov    ecx,ebx
360533  e8 b4 42 03 00                 call   0x3947ec
360538  88 05 c7 bb 09 00              mov    BYTE PTR [rip+0x9bbc7],al        # 0x3fc105
36053e  e8 89 29 03 00                 call   0x392ecc
360543  48 8b 0d de 55 0a 00           mov    rcx,QWORD PTR [rip+0xa55de]        # 0x405b28
36054a  48 8b f8                       mov    rdi,rax
36054d  f3 44 0f 10 81 e0 37 00 00     movss  xmm8,DWORD PTR [rcx+0x37e0]
360556  f3 0f 10 0d 7a 2b f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff32b7a]        # 0x2930d8 ; f32=0.9
36055e  8d 4b 84                       lea    ecx,[rbx-0x7c]
360561  e8 32 1d 03 00                 call   0x392298
360566  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
36056d  8b d8                          mov    ebx,eax
36056f  e8 84 29 03 00                 call   0x392ef8
360574  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
360578  e8 b7 29 03 00                 call   0x392f34
36057d  0f 28 f8                       movaps xmm7,xmm0
360580  48 8d 4d 28                    lea    rcx,[rbp+0x28]
360584  f3 0f 58 fe                    addss  xmm7,xmm6
360588  e8 6b 29 03 00                 call   0x392ef8
36058d  f3 0f 10 70 04                 movss  xmm6,DWORD PTR [rax+0x4]
360592  e8 4d 29 03 00                 call   0x392ee4
360597  f3 0f 58 f0                    addss  xmm6,xmm0
36059b  0f 28 cf                       movaps xmm1,xmm7
36059e  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3605a5  0f 28 d6                       movaps xmm2,xmm6
3605a8  e8 93 bd f6 ff                 call   0x2cc340
3605ad  48 8d 4d 34                    lea    rcx,[rbp+0x34]
3605b1  e8 42 29 03 00                 call   0x392ef8
3605b6  48 8b d0                       mov    rdx,rax
3605b9  c7 44 24 28 40 00 00 00        mov    DWORD PTR [rsp+0x28],0x40
3605c1  44 8b cb                       mov    r9d,ebx
3605c4  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
3605cb  4c 8d 85 f0 05 00 00           lea    r8,[rbp+0x5f0]
3605d2  48 8b cf                       mov    rcx,rdi
3605d5  e8 6a 0c 04 00                 call   0x3a1244
3605da  e8 ed 28 03 00                 call   0x392ecc
3605df  41 0f 28 cb                    movaps xmm1,xmm11
3605e3  b9 06 00 00 00                 mov    ecx,0x6
3605e8  4c 8b f0                       mov    r14,rax
3605eb  e8 a8 1c 03 00                 call   0x392298
3605f0  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3605f7  8b f0                          mov    esi,eax
3605f9  e8 16 29 03 00                 call   0x392f14
3605fe  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
360605  48 8b d8                       mov    rbx,rax
360608  e8 eb 28 03 00                 call   0x392ef8
36060d  48 8b d0                       mov    rdx,rax
360610  48 8d 4d 28                    lea    rcx,[rbp+0x28]
360614  4c 8b c3                       mov    r8,rbx
360617  e8 bc f3 f8 ff                 call   0x2ef9d8
36061c  48 8b f8                       mov    rdi,rax
36061f  e8 10 29 03 00                 call   0x392f34
360624  f3 41 0f 5c c3                 subss  xmm0,xmm11
360629  0f 57 d2                       xorps  xmm2,xmm2
36062c  48 8d 4d 34                    lea    rcx,[rbp+0x34]
360630  0f 28 c8                       movaps xmm1,xmm0
360633  e8 08 bd f6 ff                 call   0x2cc340
360638  48 8d 4d c8                    lea    rcx,[rbp-0x38]
36063c  48 8b d8                       mov    rbx,rax
36063f  e8 b4 28 03 00                 call   0x392ef8
360644  48 8b d0                       mov    rdx,rax
360647  48 8d 4d d0                    lea    rcx,[rbp-0x30]
36064b  4c 8b c3                       mov    r8,rbx
36064e  e8 85 f3 f8 ff                 call   0x2ef9d8
360653  48 8b d0                       mov    rdx,rax
360656  44 89 64 24 28                 mov    DWORD PTR [rsp+0x28],r12d
36065b  44 8b ce                       mov    r9d,esi
36065e  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
360665  4c 8b c7                       mov    r8,rdi
360668  49 8b ce                       mov    rcx,r14
36066b  e8 d4 0b 04 00                 call   0x3a1244
360670  f3 0f 10 0d 70 88 ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee8870]        # 0x248ee8 ; f32=1
360678  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
36067f  f3 41 0f 59 c9                 mulss  xmm1,xmm9
360684  0f 28 d1                       movaps xmm2,xmm1
360687  e8 b4 bc f6 ff                 call   0x2cc340
36068c  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360693  e8 20 ad 03 00                 call   0x39b3b8
360698  e8 f3 e5 02 00                 call   0x38ec90
36069d  f3 0f 10 0d 43 88 ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee8843]        # 0x248ee8 ; f32=1
3606a5  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3606ac  f3 44 0f 10 0d 2b db f2 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff2db2b]        # 0x28e1e0 ; f32=8
3606b5  0f 28 d1                       movaps xmm2,xmm1
3606b8  f3 0f 59 0d 5c d4 f2 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff2d45c]        # 0x28db1c ; f32=10
3606c0  f3 41 0f 59 d1                 mulss  xmm2,xmm9
3606c5  e8 76 bc f6 ff                 call   0x2cc340
3606ca  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
3606d1  41 be 0e 00 00 00              mov    r14d,0xe
3606d7  41 8b ce                       mov    ecx,r14d
3606da  e8 81 85 03 00                 call   0x398c60
3606df  48 8d 0d 22 ba 09 00           lea    rcx,[rip+0x9ba22]        # 0x3fc108
3606e6  41 8b dc                       mov    ebx,r12d
3606e9  e8 a6 48 00 00                 call   0x364f94
3606ee  48 85 c0                       test   rax,rax
3606f1  74 1e                          je     0x360711
3606f3  8b cb                          mov    ecx,ebx
3606f5  e8 36 91 02 00                 call   0x389830
3606fa  48 8d 0d 07 ba 09 00           lea    rcx,[rip+0x9ba07]        # 0x3fc108
360701  41 03 dd                       add    ebx,r13d
360704  e8 8b 48 00 00                 call   0x364f94
360709  48 63 cb                       movsxd rcx,ebx
36070c  48 3b c8                       cmp    rcx,rax
36070f  72 e2                          jb     0x3606f3
360711  41 8b cd                       mov    ecx,r13d
360714  e8 53 82 03 00                 call   0x39896c
360719  e8 de 07 03 00                 call   0x390efc
36071e  e8 65 03 03 00                 call   0x390a88
360723  0f 57 c9                       xorps  xmm1,xmm1
360726  0f 57 c0                       xorps  xmm0,xmm0
360729  e8 d6 a4 03 00                 call   0x39ac04
36072e  41 0f 28 d4                    movaps xmm2,xmm12
360732  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
360739  0f 57 c9                       xorps  xmm1,xmm1
36073c  e8 ff bb f6 ff                 call   0x2cc340
360741  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
360748  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
36074f  e8 48 04 ff ff                 call   0x350b9c ; STRING getter=0x350b9c main
360754  48 8b c8                       mov    rcx,rax
360757  e8 70 d5 f6 ff                 call   0x2cdccc
36075c  48 8b c8                       mov    rcx,rax
36075f  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
360766  41 b9 88 00 00 00              mov    r9d,0x88
36076c  45 33 c0                       xor    r8d,r8d
36076f  e8 08 e2 02 00                 call   0x38e97c
360774  e8 53 27 03 00                 call   0x392ecc
360779  48 8b 0d a8 53 0a 00           mov    rcx,QWORD PTR [rip+0xa53a8]        # 0x405b28
360780  ba 11 00 00 00                 mov    edx,0x11
360785  48 8b f8                       mov    rdi,rax
360788  f3 0f 10 81 d0 37 00 00        movss  xmm0,DWORD PTR [rcx+0x37d0]
360790  44 8d 4a ff                    lea    r9d,[rdx-0x1]
360794  f3 44 0f 10 81 e0 37 00 00     movss  xmm8,DWORD PTR [rcx+0x37e0]
36079d  44 8d 42 02                    lea    r8d,[rdx+0x2]
3607a1  f3 0f 59 05 a7 7a f4 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff47aa7]        # 0x2a8250 ; f32=155
3607a9  f3 0f 2c c8                    cvttss2si ecx,xmm0
3607ad  89 4c 24 20                    mov    DWORD PTR [rsp+0x20],ecx
3607b1  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3607b5  e8 5e ab f7 ff                 call   0x2db318
3607ba  48 8b c8                       mov    rcx,rax
3607bd  e8 4a f0 f8 ff                 call   0x2ef80c
3607c2  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
3607c9  8b d8                          mov    ebx,eax
3607cb  e8 28 27 03 00                 call   0x392ef8
3607d0  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
3607d4  e8 5b 27 03 00                 call   0x392f34
3607d9  0f 28 f8                       movaps xmm7,xmm0
3607dc  48 8d 4d 28                    lea    rcx,[rbp+0x28]
3607e0  f3 0f 58 fe                    addss  xmm7,xmm6
3607e4  e8 0f 27 03 00                 call   0x392ef8
3607e9  f3 0f 10 70 04                 movss  xmm6,DWORD PTR [rax+0x4]
3607ee  e8 f1 26 03 00                 call   0x392ee4
3607f3  f3 0f 58 f0                    addss  xmm6,xmm0
3607f7  0f 28 cf                       movaps xmm1,xmm7
3607fa  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360801  0f 28 d6                       movaps xmm2,xmm6
360804  e8 37 bb f6 ff                 call   0x2cc340
360809  48 8d 4d 34                    lea    rcx,[rbp+0x34]
36080d  e8 e6 26 03 00                 call   0x392ef8
360812  be 80 00 00 00                 mov    esi,0x80
360817  4c 8d 85 f0 05 00 00           lea    r8,[rbp+0x5f0]
36081e  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
360822  48 8b d0                       mov    rdx,rax
360825  44 8b cb                       mov    r9d,ebx
360828  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
36082f  48 8b cf                       mov    rcx,rdi
360832  e8 0d 0a 04 00                 call   0x3a1244
360837  48 8d 4d 88                    lea    rcx,[rbp-0x78]
36083b  e8 98 82 f7 ff                 call   0x2d8ad8
360840  48 85 c0                       test   rax,rax
360843  0f 85 41 03 00 00              jne    0x360b8a
360849  48 63 15 b0 b8 09 00           movsxd rdx,DWORD PTR [rip+0x9b8b0]        # 0x3fc100
360850  48 8d 0d b1 b8 09 00           lea    rcx,[rip+0x9b8b1]        # 0x3fc108
360857  e8 54 5f fd ff                 call   0x3367b0
36085c  48 8d 48 40                    lea    rcx,[rax+0x40]
360860  e8 3b 7e f7 ff                 call   0x2d86a0
360865  84 c0                          test   al,al
360867  0f 85 18 02 00 00              jne    0x360a85
36086d  0f 57 d2                       xorps  xmm2,xmm2
360870  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
360877  0f 57 c9                       xorps  xmm1,xmm1
36087a  e8 c1 ba f6 ff                 call   0x2cc340
36087f  48 8d 95 e8 05 00 00           lea    rdx,[rbp+0x5e8]
360886  41 8b ce                       mov    ecx,r14d
360889  e8 d2 83 03 00                 call   0x398c60
36088e  f3 0f 10 0d 62 b8 09 00        movss  xmm1,DWORD PTR [rip+0x9b862]        # 0x3fc0f8
360896  33 c9                          xor    ecx,ecx
360898  e8 2b 84 03 00                 call   0x398cc8
36089d  f3 0f 10 15 43 86 ee ff        movss  xmm2,DWORD PTR [rip+0xffffffffffee8643]        # 0x248ee8 ; f32=1
3608a5  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3608ac  f3 0f 59 15 3c 29 f3 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff3293c]        # 0x2931f0 ; f32=46
3608b4  0f 57 c9                       xorps  xmm1,xmm1
3608b7  e8 84 ba f6 ff                 call   0x2cc340
3608bc  48 8d 95 e8 05 00 00           lea    rdx,[rbp+0x5e8]
3608c3  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
3608ca  e8 51 03 ff ff                 call   0x350c20
3608cf  48 8b c8                       mov    rcx,rax
3608d2  e8 3d 2d f8 ff                 call   0x2e3614
3608d7  48 8b c8                       mov    rcx,rax
3608da  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
3608e1  44 8b ce                       mov    r9d,esi
3608e4  45 33 c0                       xor    r8d,r8d
3608e7  e8 90 e0 02 00                 call   0x38e97c
3608ec  e8 db 25 03 00                 call   0x392ecc
3608f1  f3 0f 10 0d b7 38 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff338b7]        # 0x2941b0 ; f32=0.6
3608f9  b9 04 00 00 00                 mov    ecx,0x4
3608fe  48 8b f0                       mov    rsi,rax
360901  e8 92 19 03 00                 call   0x392298
360906  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
36090d  8b f8                          mov    edi,eax
36090f  e8 00 26 03 00                 call   0x392f14
360914  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
36091b  48 8b d8                       mov    rbx,rax
36091e  e8 d5 25 03 00                 call   0x392ef8
360923  48 8b d0                       mov    rdx,rax
360926  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
36092d  4c 8b c3                       mov    r8,rbx
360930  e8 a3 f0 f8 ff                 call   0x2ef9d8
360935  48 8d 4d 28                    lea    rcx,[rbp+0x28]
360939  48 8b d8                       mov    rbx,rax
36093c  e8 b7 25 03 00                 call   0x392ef8
360941  48 8b d0                       mov    rdx,rax
360944  44 89 64 24 28                 mov    DWORD PTR [rsp+0x28],r12d
360949  44 8b cf                       mov    r9d,edi
36094c  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
360953  4c 8b c3                       mov    r8,rbx
360956  48 8b ce                       mov    rcx,rsi
360959  e8 e6 08 04 00                 call   0x3a1244
36095e  e8 69 25 03 00                 call   0x392ecc
360963  41 0f 28 cb                    movaps xmm1,xmm11
360967  b9 06 00 00 00                 mov    ecx,0x6
36096c  4c 8b f0                       mov    r14,rax
36096f  e8 24 19 03 00                 call   0x392298
360974  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
36097b  8b f0                          mov    esi,eax
36097d  e8 92 25 03 00                 call   0x392f14
360982  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360989  48 8b d8                       mov    rbx,rax
36098c  e8 67 25 03 00                 call   0x392ef8
360991  48 8b d0                       mov    rdx,rax
360994  48 8d 8d f8 05 00 00           lea    rcx,[rbp+0x5f8]
36099b  4c 8b c3                       mov    r8,rbx
36099e  e8 35 f0 f8 ff                 call   0x2ef9d8
3609a3  48 8b f8                       mov    rdi,rax
3609a6  e8 39 25 03 00                 call   0x392ee4
3609ab  f3 41 0f 5c c3                 subss  xmm0,xmm11
3609b0  0f 57 c9                       xorps  xmm1,xmm1
3609b3  48 8d 4d 28                    lea    rcx,[rbp+0x28]
3609b7  0f 28 d0                       movaps xmm2,xmm0
3609ba  e8 81 b9 f6 ff                 call   0x2cc340
3609bf  48 8d 4d 34                    lea    rcx,[rbp+0x34]
3609c3  48 8b d8                       mov    rbx,rax
3609c6  e8 2d 25 03 00                 call   0x392ef8
3609cb  48 8b d0                       mov    rdx,rax
3609ce  48 8d 4d c8                    lea    rcx,[rbp-0x38]
3609d2  4c 8b c3                       mov    r8,rbx
3609d5  e8 fe ef f8 ff                 call   0x2ef9d8
3609da  48 8b d0                       mov    rdx,rax
3609dd  44 89 64 24 28                 mov    DWORD PTR [rsp+0x28],r12d
3609e2  44 8b ce                       mov    r9d,esi
3609e5  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
3609ec  4c 8b c7                       mov    r8,rdi
3609ef  49 8b ce                       mov    rcx,r14
3609f2  e8 4d 08 04 00                 call   0x3a1244
3609f7  f3 0f 10 05 e9 84 ee ff        movss  xmm0,DWORD PTR [rip+0xffffffffffee84e9]        # 0x248ee8 ; f32=1
3609ff  f3 0f 59 05 1d d1 f2 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff2d11d]        # 0x28db24 ; f32=30
360a07  e8 04 aa 03 00                 call   0x39b410
360a0c  48 63 15 ed b6 09 00           movsxd rdx,DWORD PTR [rip+0x9b6ed]        # 0x3fc100
360a13  48 8d 0d ee b6 09 00           lea    rcx,[rip+0x9b6ee]        # 0x3fc108
360a1a  41 8b dc                       mov    ebx,r12d
360a1d  e8 8e 5d fd ff                 call   0x3367b0
360a22  48 8d 48 40                    lea    rcx,[rax+0x40]
360a26  e8 bd 89 f7 ff                 call   0x2d93e8
360a2b  48 85 c0                       test   rax,rax
360a2e  74 46                          je     0x360a76
360a30  8b cb                          mov    ecx,ebx
360a32  e8 79 89 02 00                 call   0x3893b0
360a37  f3 0f 10 0d a9 84 ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee84a9]        # 0x248ee8 ; f32=1
360a3f  0f 57 c0                       xorps  xmm0,xmm0
360a42  f3 0f 59 0d 8a 27 f3 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff3278a]        # 0x2931d4 ; f32=25
360a4a  e8 b5 a1 03 00                 call   0x39ac04
360a4f  48 63 15 aa b6 09 00           movsxd rdx,DWORD PTR [rip+0x9b6aa]        # 0x3fc100
360a56  48 8d 0d ab b6 09 00           lea    rcx,[rip+0x9b6ab]        # 0x3fc108
360a5d  41 03 dd                       add    ebx,r13d
360a60  e8 4b 5d fd ff                 call   0x3367b0
360a65  48 8d 48 40                    lea    rcx,[rax+0x40]
360a69  e8 7a 89 f7 ff                 call   0x2d93e8
360a6e  48 63 cb                       movsxd rcx,ebx
360a71  48 3b c8                       cmp    rcx,rax
360a74  72 ba                          jb     0x360a30
360a76  e8 0d 00 03 00                 call   0x390a88
360a7b  b9 02 00 00 00                 mov    ecx,0x2
360a80  e8 e7 7e 03 00                 call   0x39896c
360a85  f3 44 0f 5c 1d 6e b6 09 00     subss  xmm11,DWORD PTR [rip+0x9b66e]        # 0x3fc0fc
360a8e  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
360a95  f3 44 0f 59 1d 8e d0 f2 ff     mulss  xmm11,DWORD PTR [rip+0xfffffffffff2d08e]        # 0x28db2c ; f32=50
360a9e  e8 55 24 03 00                 call   0x392ef8
360aa3  f3 0f 10 70 04                 movss  xmm6,DWORD PTR [rax+0x4]
360aa8  e8 53 c7 ff ff                 call   0x35d200
360aad  f3 0f 10 80 04 01 00 00        movss  xmm0,DWORD PTR [rax+0x104]
360ab5  f3 0f 5c c6                    subss  xmm0,xmm6
360ab9  f3 41 0f 58 c3                 addss  xmm0,xmm11
360abe  e8 89 a9 03 00                 call   0x39b44c
360ac3  f3 0f 10 0d 31 b6 09 00        movss  xmm1,DWORD PTR [rip+0x9b631]        # 0x3fc0fc
360acb  33 c9                          xor    ecx,ecx
360acd  f3 0f 59 0d 23 b6 09 00        mulss  xmm1,DWORD PTR [rip+0x9b623]        # 0x3fc0f8
360ad5  e8 ee 81 03 00                 call   0x398cc8
360ada  f3 0f 10 0d 06 84 ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee8406]        # 0x248ee8 ; f32=1
360ae2  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
360ae9  f3 0f 59 0d 2f d0 f2 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff2d02f]        # 0x28db20 ; f32=20
360af1  0f 28 d1                       movaps xmm2,xmm1
360af4  e8 47 b8 f6 ff                 call   0x2cc340
360af9  48 8d 95 e8 05 00 00           lea    rdx,[rbp+0x5e8]
360b00  b9 02 00 00 00                 mov    ecx,0x2
360b05  e8 56 81 03 00                 call   0x398c60
360b0a  f3 0f 10 05 22 43 f3 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff34322]        # 0x294e34 ; f32=0.99
360b12  0f 2f 05 df b5 09 00           comiss xmm0,DWORD PTR [rip+0x9b5df]        # 0x3fc0f8
360b19  77 0e                          ja     0x360b29
360b1b  0f 2f 05 da b5 09 00           comiss xmm0,DWORD PTR [rip+0x9b5da]        # 0x3fc0fc
360b22  bb 80 00 01 00                 mov    ebx,0x10080
360b27  76 05                          jbe    0x360b2e
360b29  bb 88 00 01 00                 mov    ebx,0x10088
360b2e  41 0f 28 d4                    movaps xmm2,xmm12
360b32  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360b39  0f 57 c9                       xorps  xmm1,xmm1
360b3c  e8 ff b7 f6 ff                 call   0x2cc340
360b41  48 8d 95 e8 05 00 00           lea    rdx,[rbp+0x5e8]
360b48  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
360b4f  e8 10 01 ff ff                 call   0x350c64
360b54  48 8b c8                       mov    rcx,rax
360b57  e8 b8 2a f8 ff                 call   0x2e3614
360b5c  48 8b c8                       mov    rcx,rax
360b5f  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
360b66  44 8b cb                       mov    r9d,ebx
360b69  45 33 c0                       xor    r8d,r8d
360b6c  e8 0b de 02 00                 call   0x38e97c
360b71  e8 d6 7f 02 00                 call   0x388b4c
360b76  e8 0d ff 02 00                 call   0x390a88
360b7b  b9 02 00 00 00                 mov    ecx,0x2
360b80  e8 e7 7d 03 00                 call   0x39896c
360b85  e9 26 06 00 00                 jmp    0x3611b0
360b8a  f3 0f 10 0d 8e cf f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff2cf8e]        # 0x28db20 ; f32=20
360b92  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360b99  0f 28 d1                       movaps xmm2,xmm1
360b9c  e8 9f b7 f6 ff                 call   0x2cc340
360ba1  48 8b c8                       mov    rcx,rax
360ba4  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
360bab  e8 70 43 00 00                 call   0x364f20
360bb0  48 8b c8                       mov    rcx,rax
360bb3  e8 00 a8 03 00                 call   0x39b3b8
360bb8  e8 d3 e0 02 00                 call   0x38ec90
360bbd  48 8d 0d 2c 83 ee ff           lea    rcx,[rip+0xffffffffffee832c]        # 0x248ef0
360bc4  e8 f7 6d f7 ff                 call   0x2d79c0
360bc9  48 8d 0d 20 83 ee ff           lea    rcx,[rip+0xffffffffffee8320]        # 0x248ef0
360bd0  48 89 45 c8                    mov    QWORD PTR [rbp-0x38],rax
360bd4  4c 8b e8                       mov    r13,rax
360bd7  e8 9c 0d f7 ff                 call   0x2d1978
360bdc  4c 8b f0                       mov    r14,rax
360bdf  49 3b c5                       cmp    rax,r13
360be2  0f 84 b8 05 00 00              je     0x3611a0
360be8  48 8d 4d 88                    lea    rcx,[rbp-0x78]
360bec  e8 e7 7e f7 ff                 call   0x2d8ad8
360bf1  48 85 c0                       test   rax,rax
360bf4  0f 84 92 05 00 00              je     0x36118c
360bfa  4d 8d 7e 48                    lea    r15,[r14+0x48]
360bfe  41 8a f4                       mov    sil,r12b
360c01  49 8b cf                       mov    rcx,r15
360c04  e8 b7 6d f7 ff                 call   0x2d79c0
360c09  49 8b cf                       mov    rcx,r15
360c0c  4c 8b e0                       mov    r12,rax
360c0f  e8 64 0d f7 ff                 call   0x2d1978
360c14  48 8b f8                       mov    rdi,rax
360c17  49 3b c4                       cmp    rax,r12
360c1a  74 51                          je     0x360c6d
360c1c  41 bd 01 00 00 00              mov    r13d,0x1
360c22  48 8d 4d 88                    lea    rcx,[rbp-0x78]
360c26  e8 c1 cb f6 ff                 call   0x2cd7ec
360c2b  48 8b c8                       mov    rcx,rax
360c2e  e8 51 92 02 00                 call   0x389e84
360c33  48 8d 4f 20                    lea    rcx,[rdi+0x20]
360c37  48 8b d8                       mov    rbx,rax
360c3a  e8 ad cb f6 ff                 call   0x2cd7ec
360c3f  48 8b c8                       mov    rcx,rax
360c42  e8 3d 92 02 00                 call   0x389e84
360c47  48 8b c8                       mov    rcx,rax
360c4a  48 8b d3                       mov    rdx,rbx
360c4d  e8 0e 9d 06 00                 call   0x3ca960
360c52  48 85 c0                       test   rax,rax
360c55  40 0f b6 f6                    movzx  esi,sil
360c59  41 0f 45 f5                    cmovne esi,r13d
360c5d  48 81 c7 e0 00 00 00           add    rdi,0xe0
360c64  49 3b fc                       cmp    rdi,r12
360c67  75 b9                          jne    0x360c22
360c69  4c 8b 6d c8                    mov    r13,QWORD PTR [rbp-0x38]
360c6d  48 8d 4d 88                    lea    rcx,[rbp-0x78]
360c71  e8 76 cb f6 ff                 call   0x2cd7ec
360c76  48 8b c8                       mov    rcx,rax
360c79  e8 06 92 02 00                 call   0x389e84
360c7e  4d 8d 66 28                    lea    r12,[r14+0x28]
360c82  48 8b d8                       mov    rbx,rax
360c85  49 8b cc                       mov    rcx,r12
360c88  e8 5f cb f6 ff                 call   0x2cd7ec
360c8d  48 8b c8                       mov    rcx,rax
360c90  e8 ef 91 02 00                 call   0x389e84
360c95  48 8b c8                       mov    rcx,rax
360c98  48 8b d3                       mov    rdx,rbx
360c9b  e8 c0 9c 06 00                 call   0x3ca960
360ca0  48 85 c0                       test   rax,rax
360ca3  75 09                          jne    0x360cae
360ca5  40 84 f6                       test   sil,sil
360ca8  0f 84 db 04 00 00              je     0x361189
360cae  f3 0f 10 15 06 25 f3 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff32506]        # 0x2931bc ; f32=16
360cb6  48 8d 4d 28                    lea    rcx,[rbp+0x28]
360cba  0f 57 c9                       xorps  xmm1,xmm1
360cbd  e8 7e b6 f6 ff                 call   0x2cc340
360cc2  48 8b c8                       mov    rcx,rax
360cc5  48 8d 55 34                    lea    rdx,[rbp+0x34]
360cc9  e8 52 42 00 00                 call   0x364f20
360cce  48 8b d0                       mov    rdx,rax
360cd1  b9 0e 00 00 00                 mov    ecx,0xe
360cd6  e8 85 7f 03 00                 call   0x398c60
360cdb  f3 0f 10 35 05 82 ee ff        movss  xmm6,DWORD PTR [rip+0xffffffffffee8205]        # 0x248ee8 ; f32=1
360ce3  f3 41 0f 59 f1                 mulss  xmm6,xmm9
360ce8  e8 13 c5 ff ff                 call   0x35d200
360ced  48 8d 35 14 b4 09 00           lea    rsi,[rip+0x9b414]        # 0x3fc108
360cf4  48 8b ce                       mov    rcx,rsi
360cf7  f3 0f 58 b0 00 01 00 00        addss  xmm6,DWORD PTR [rax+0x100]
360cff  f3 0f 11 b0 00 01 00 00        movss  DWORD PTR [rax+0x100],xmm6
360d07  49 63 16                       movsxd rdx,DWORD PTR [r14]
360d0a  e8 a1 5a fd ff                 call   0x3367b0
360d0f  48 8d 48 20                    lea    rcx,[rax+0x20]
360d13  e8 d4 ca f6 ff                 call   0x2cd7ec
360d18  48 8b c8                       mov    rcx,rax
360d1b  e8 98 41 06 00                 call   0x3c4eb8
360d20  49 63 16                       movsxd rdx,DWORD PTR [r14]
360d23  48 8b ce                       mov    rcx,rsi
360d26  e8 85 5a fd ff                 call   0x3367b0
360d2b  48 8d 48 40                    lea    rcx,[rax+0x40]
360d2f  e8 b4 86 f7 ff                 call   0x2d93e8
360d34  48 85 c0                       test   rax,rax
360d37  0f 84 a7 00 00 00              je     0x360de4
360d3d  41 0f 28 cc                    movaps xmm1,xmm12
360d41  0f 57 c0                       xorps  xmm0,xmm0
360d44  e8 bb 9e 03 00                 call   0x39ac04
360d49  48 8d 0d 50 74 f4 ff           lea    rcx,[rip+0xfffffffffff47450]        # 0x2a81a0
360d50  e8 63 41 06 00                 call   0x3c4eb8
360d55  41 0f 28 cc                    movaps xmm1,xmm12
360d59  0f 57 c0                       xorps  xmm0,xmm0
360d5c  e8 a3 9e 03 00                 call   0x39ac04
360d61  41 0f 28 cb                    movaps xmm1,xmm11
360d65  b9 02 00 00 00                 mov    ecx,0x2
360d6a  e8 29 15 03 00                 call   0x392298
360d6f  bf 01 00 00 00                 mov    edi,0x1
360d74  8b d0                          mov    edx,eax
360d76  8b cf                          mov    ecx,edi
360d78  e8 6f 7e 03 00                 call   0x398bec
360d7d  49 63 16                       movsxd rdx,DWORD PTR [r14]
360d80  48 8b ce                       mov    rcx,rsi
360d83  49 63 5e 04                    movsxd rbx,DWORD PTR [r14+0x4]
360d87  e8 24 5a fd ff                 call   0x3367b0
360d8c  48 8b d3                       mov    rdx,rbx
360d8f  48 8d 48 40                    lea    rcx,[rax+0x40]
360d93  e8 88 3f f7 ff                 call   0x2d4d20
360d98  48 8b c8                       mov    rcx,rax
360d9b  e8 4c ca f6 ff                 call   0x2cd7ec
360da0  48 8b c8                       mov    rcx,rax
360da3  33 d2                          xor    edx,edx
360da5  e8 a6 0e 03 00                 call   0x391c50
360daa  49 63 16                       movsxd rdx,DWORD PTR [r14]
360dad  48 8b ce                       mov    rcx,rsi
360db0  48 8b d8                       mov    rbx,rax
360db3  e8 f8 59 fd ff                 call   0x3367b0
360db8  49 63 56 04                    movsxd rdx,DWORD PTR [r14+0x4]
360dbc  48 8d 48 40                    lea    rcx,[rax+0x40]
360dc0  e8 5b 3f f7 ff                 call   0x2d4d20
360dc5  48 8b c8                       mov    rcx,rax
360dc8  e8 1f ca f6 ff                 call   0x2cd7ec
360dcd  48 8b c8                       mov    rcx,rax
360dd0  45 33 c0                       xor    r8d,r8d
360dd3  48 8b d3                       mov    rdx,rbx
360dd6  e8 4d 41 06 00                 call   0x3c4f28
360ddb  8b cf                          mov    ecx,edi
360ddd  e8 2a 7b 03 00                 call   0x39890c
360de2  eb 05                          jmp    0x360de9
360de4  bf 01 00 00 00                 mov    edi,0x1
360de9  8b cf                          mov    ecx,edi
360deb  e8 7c 7b 03 00                 call   0x39896c
360df0  f3 0f 10 0d f0 80 ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee80f0]        # 0x248ee8 ; f32=1
360df8  48 8d 4d 40                    lea    rcx,[rbp+0x40]
360dfc  f3 0f 59 0d 68 74 f4 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff47468]        # 0x2a826c ; f32=-20
360e04  0f 57 d2                       xorps  xmm2,xmm2
360e07  e8 34 b5 f6 ff                 call   0x2cc340
360e0c  49 8b cc                       mov    rcx,r12
360e0f  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
360e13  e8 d4 c9 f6 ff                 call   0x2cd7ec
360e18  48 8b d0                       mov    rdx,rax
360e1b  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
360e20  e8 a7 b4 f6 ff                 call   0x2cc2cc
360e25  48 8d 55 70                    lea    rdx,[rbp+0x70]
360e29  48 8b d8                       mov    rbx,rax
360e2c  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360e33  e8 b8 00 ff ff                 call   0x350ef0 ; STRING getter=0x350ef0 ##search
360e38  48 8b c8                       mov    rcx,rax
360e3b  e8 4c 8d f8 ff                 call   0x2e9b8c
360e40  48 8b d0                       mov    rdx,rax
360e43  48 8b cb                       mov    rcx,rbx
360e46  e8 61 c9 f6 ff                 call   0x2cd7ac
360e4b  48 8b c8                       mov    rcx,rax
360e4e  e8 99 c9 f6 ff                 call   0x2cd7ec
360e53  49 8d 56 08                    lea    rdx,[r14+0x8]
360e57  48 8b d8                       mov    rbx,rax
360e5a  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
360e5f  e8 30 33 f7 ff                 call   0x2d4194
360e64  48 8b c8                       mov    rcx,rax
360e67  45 33 c9                       xor    r9d,r9d
360e6a  66 49 0f 7e f0                 movq   r8,xmm6
360e6f  48 8b d3                       mov    rdx,rbx
360e72  e8 79 3f 02 00                 call   0x384df0
360e77  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
360e7c  e8 73 b6 f6 ff                 call   0x2cc4f4
360e81  49 8b cf                       mov    rcx,r15
360e84  e8 ef 0a f7 ff                 call   0x2d1978
360e89  49 8b cf                       mov    rcx,r15
360e8c  48 8b f0                       mov    rsi,rax
360e8f  e8 2c 6b f7 ff                 call   0x2d79c0
360e94  48 89 45 60                    mov    QWORD PTR [rbp+0x60],rax
360e98  48 8b f8                       mov    rdi,rax
360e9b  48 3b f0                       cmp    rsi,rax
360e9e  0f 84 e0 02 00 00              je     0x361184
360ea4  4c 8d 7e 20                    lea    r15,[rsi+0x20]
360ea8  48 8d 4d 88                    lea    rcx,[rbp-0x78]
360eac  e8 3b c9 f6 ff                 call   0x2cd7ec
360eb1  48 8b c8                       mov    rcx,rax
360eb4  e8 cb 8f 02 00                 call   0x389e84
360eb9  49 8b cf                       mov    rcx,r15
360ebc  48 8b d8                       mov    rbx,rax
360ebf  e8 28 c9 f6 ff                 call   0x2cd7ec
360ec4  48 8b c8                       mov    rcx,rax
360ec7  e8 b8 8f 02 00                 call   0x389e84
360ecc  48 8b c8                       mov    rcx,rax
360ecf  48 8b d3                       mov    rdx,rbx
360ed2  e8 89 9a 06 00                 call   0x3ca960
360ed7  48 85 c0                       test   rax,rax
360eda  75 38                          jne    0x360f14
360edc  48 8d 4d 88                    lea    rcx,[rbp-0x78]
360ee0  e8 07 c9 f6 ff                 call   0x2cd7ec
360ee5  48 8b c8                       mov    rcx,rax
360ee8  e8 97 8f 02 00                 call   0x389e84
360eed  49 8b cc                       mov    rcx,r12
360ef0  48 8b d8                       mov    rbx,rax
360ef3  e8 f4 c8 f6 ff                 call   0x2cd7ec
360ef8  48 8b c8                       mov    rcx,rax
360efb  e8 84 8f 02 00                 call   0x389e84
360f00  48 8b c8                       mov    rcx,rax
360f03  48 8b d3                       mov    rdx,rbx
360f06  e8 55 9a 06 00                 call   0x3ca960
360f0b  48 85 c0                       test   rax,rax
360f0e  0f 84 55 02 00 00              je     0x361169
360f14  b2 01                          mov    dl,0x1
360f16  b9 00 08 00 00                 mov    ecx,0x800
360f1b  e8 24 7c 03 00                 call   0x398b44
360f20  48 8d 55 50                    lea    rdx,[rbp+0x50]
360f24  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360f2b  e8 dc ff fe ff                 call   0x350f0c ; STRING getter=0x350f0c checkbox
360f30  48 8b c8                       mov    rcx,rax
360f33  e8 54 8c f8 ff                 call   0x2e9b8c
360f38  48 8b d0                       mov    rdx,rax
360f3b  48 8b ce                       mov    rcx,rsi
360f3e  e8 f5 df f6 ff                 call   0x2cef38
360f43  84 c0                          test   al,al
360f45  74 38                          je     0x360f7f
360f47  49 8b cf                       mov    rcx,r15
360f4a  e8 9d c8 f6 ff                 call   0x2cd7ec
360f4f  4c 8b 8e 90 00 00 00           mov    r9,QWORD PTR [rsi+0x90]
360f56  48 8b c8                       mov    rcx,rax
360f59  4c 8b 86 88 00 00 00           mov    r8,QWORD PTR [rsi+0x88]
360f60  48 8d 05 c1 c3 f2 ff           lea    rax,[rip+0xfffffffffff2c3c1]        # 0x28d328
360f67  48 8b 56 40                    mov    rdx,QWORD PTR [rsi+0x40]
360f6b  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
360f70  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
360f75  e8 9a c1 05 00                 call   0x3bd114
360f7a  e9 e5 01 00 00                 jmp    0x361164
360f7f  48 8d 55 d0                    lea    rdx,[rbp-0x30]
360f83  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
360f8a  e8 99 ff fe ff                 call   0x350f28 ; STRING getter=0x350f28 combo
360f8f  48 8b c8                       mov    rcx,rax
360f92  e8 45 75 f7 ff                 call   0x2d84dc
360f97  48 8b d0                       mov    rdx,rax
360f9a  48 8b ce                       mov    rcx,rsi
360f9d  e8 96 df f6 ff                 call   0x2cef38
360fa2  84 c0                          test   al,al
360fa4  0f 84 88 00 00 00              je     0x361032
360faa  48 8d 4d a8                    lea    rcx,[rbp-0x58]
360fae  e8 a5 37 f7 ff                 call   0x2d4758
360fb3  48 8d 9e b8 00 00 00           lea    rbx,[rsi+0xb8]
360fba  48 8b cb                       mov    rcx,rbx
360fbd  e8 fe 69 f7 ff                 call   0x2d79c0
360fc2  48 8b cb                       mov    rcx,rbx
360fc5  48 8b f8                       mov    rdi,rax
360fc8  e8 ab 09 f7 ff                 call   0x2d1978
360fcd  48 8b d8                       mov    rbx,rax
360fd0  48 3b c7                       cmp    rax,rdi
360fd3  74 28                          je     0x360ffd
360fd5  48 8b cb                       mov    rcx,rbx
360fd8  e8 0f c8 f6 ff                 call   0x2cd7ec
360fdd  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
360fe4  48 89 85 f0 05 00 00           mov    QWORD PTR [rbp+0x5f0],rax
360feb  48 8d 4d a8                    lea    rcx,[rbp-0x58]
360fef  e8 c8 c5 f7 ff                 call   0x2dd5bc
360ff4  48 83 c3 20                    add    rbx,0x20
360ff8  48 3b df                       cmp    rbx,rdi
360ffb  75 d8                          jne    0x360fd5
360ffd  48 8d 55 a8                    lea    rdx,[rbp-0x58]
361001  48 8d 4d f8                    lea    rcx,[rbp-0x8]
361005  e8 6a 53 fd ff                 call   0x336374
36100a  49 8b cf                       mov    rcx,r15
36100d  48 8b d8                       mov    rbx,rax
361010  e8 d7 c7 f6 ff                 call   0x2cd7ec
361015  48 8b 56 48                    mov    rdx,QWORD PTR [rsi+0x48]
361019  48 8b c8                       mov    rcx,rax
36101c  4c 8b c3                       mov    r8,rbx
36101f  e8 c8 d2 05 00                 call   0x3be2ec
361024  48 8d 4d a8                    lea    rcx,[rbp-0x58]
361028  e8 8f a5 f7 ff                 call   0x2db5bc
36102d  e9 2e 01 00 00                 jmp    0x361160
361032  48 8d 55 18                    lea    rdx,[rbp+0x18]
361036  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
36103d  e8 fe fe fe ff                 call   0x350f40 ; STRING getter=0x350f40 slider_int
361042  48 8b c8                       mov    rcx,rax
361045  e8 0a 8c f8 ff                 call   0x2e9c54
36104a  48 8b d0                       mov    rdx,rax
36104d  48 8b ce                       mov    rcx,rsi
361050  e8 e3 de f6 ff                 call   0x2cef38
361055  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
36105c  84 c0                          test   al,al
36105e  74 45                          je     0x3610a5
361060  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
361067  e8 a8 71 ff ff                 call   0x358214 ; STRING getter=0x358214 %d
36106c  48 8b c8                       mov    rcx,rax
36106f  e8 18 74 f7 ff                 call   0x2d848c
361074  49 8b cf                       mov    rcx,r15
361077  48 8b d8                       mov    rbx,rax
36107a  e8 6d c7 f6 ff                 call   0x2cd7ec
36107f  44 8b 4e 54                    mov    r9d,DWORD PTR [rsi+0x54]
361083  48 8b c8                       mov    rcx,rax
361086  44 8b 46 50                    mov    r8d,DWORD PTR [rsi+0x50]
36108a  48 8b 56 48                    mov    rdx,QWORD PTR [rsi+0x48]
36108e  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
361096  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
36109b  e8 98 33 06 00                 call   0x3c4438
3610a0  e9 bf 00 00 00                 jmp    0x361164
3610a5  48 8d 95 20 05 00 00           lea    rdx,[rbp+0x520]
3610ac  e8 ab fe fe ff                 call   0x350f5c ; STRING getter=0x350f5c slider_float
3610b1  48 8b c8                       mov    rcx,rax
3610b4  e8 3b 75 f7 ff                 call   0x2d85f4
3610b9  48 8b d0                       mov    rdx,rax
3610bc  48 8b ce                       mov    rcx,rsi
3610bf  e8 74 de f6 ff                 call   0x2cef38
3610c4  48 8d 8d f0 05 00 00           lea    rcx,[rbp+0x5f0]
3610cb  84 c0                          test   al,al
3610cd  74 41                          je     0x361110
3610cf  48 8d 55 68                    lea    rdx,[rbp+0x68]
3610d3  e8 80 12 ff ff                 call   0x352358 ; STRING getter=0x352358 %.3f
3610d8  48 8b c8                       mov    rcx,rax
3610db  e8 0c 25 f8 ff                 call   0x2e35ec
3610e0  49 8b cf                       mov    rcx,r15
3610e3  48 8b d8                       mov    rbx,rax
3610e6  e8 01 c7 f6 ff                 call   0x2cd7ec
3610eb  f3 0f 10 5e 64                 movss  xmm3,DWORD PTR [rsi+0x64]
3610f0  48 8b c8                       mov    rcx,rax
3610f3  f3 0f 10 56 60                 movss  xmm2,DWORD PTR [rsi+0x60]
3610f8  48 8b 56 58                    mov    rdx,QWORD PTR [rsi+0x58]
3610fc  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
361104  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
361109  e8 e6 32 06 00                 call   0x3c43f4
36110e  eb 54                          jmp    0x361164
361110  48 8d 55 d8                    lea    rdx,[rbp-0x28]
361114  e8 67 fe fe ff                 call   0x350f80 ; STRING getter=0x350f80 multi_select
361119  48 8b c8                       mov    rcx,rax
36111c  e8 d3 74 f7 ff                 call   0x2d85f4
361121  48 8b d0                       mov    rdx,rax
361124  48 8b ce                       mov    rcx,rsi
361127  e8 0c de f6 ff                 call   0x2cef38
36112c  84 c0                          test   al,al
36112e  74 34                          je     0x361164
361130  48 8b be 98 00 00 00           mov    rdi,QWORD PTR [rsi+0x98]
361137  48 8d 96 a0 00 00 00           lea    rdx,[rsi+0xa0]
36113e  48 8d 4d f8                    lea    rcx,[rbp-0x8]
361142  e8 75 a1 f7 ff                 call   0x2db2bc
361147  49 8b cf                       mov    rcx,r15
36114a  48 8b d8                       mov    rbx,rax
36114d  e8 9a c6 f6 ff                 call   0x2cd7ec
361152  48 8b c8                       mov    rcx,rax
361155  4c 8b c7                       mov    r8,rdi
361158  48 8b d3                       mov    rdx,rbx
36115b  e8 b8 6b 02 00                 call   0x387d18
361160  48 8b 7d 60                    mov    rdi,QWORD PTR [rbp+0x60]
361164  e8 2b 77 03 00                 call   0x398894
361169  48 81 c6 e0 00 00 00           add    rsi,0xe0
361170  49 81 c7 e0 00 00 00           add    r15,0xe0
361177  48 3b f7                       cmp    rsi,rdi
36117a  0f 85 28 fd ff ff              jne    0x360ea8
361180  4c 8b 6d c8                    mov    r13,QWORD PTR [rbp-0x38]
361184  e8 c3 60 02 00                 call   0x38724c
361189  45 33 e4                       xor    r12d,r12d
36118c  49 83 c6 60                    add    r14,0x60
361190  4d 3b f5                       cmp    r14,r13
361193  0f 85 4f fa ff ff              jne    0x360be8
361199  44 8a bd e8 05 00 00           mov    r15b,BYTE PTR [rbp+0x5e8]
3611a0  e8 b3 3c 06 00                 call   0x3c4e58
3611a5  e8 52 fd 02 00                 call   0x390efc
3611aa  41 bd 01 00 00 00              mov    r13d,0x1
3611b0  e8 d3 f8 02 00                 call   0x390a88
3611b5  48 8d 4d 88                    lea    rcx,[rbp-0x78]
3611b9  e8 36 b3 f6 ff                 call   0x2cc4f4
3611be  e8 d1 f7 02 00                 call   0x390994
3611c3  48 63 1d 36 af 09 00           movsxd rbx,DWORD PTR [rip+0x9af36]        # 0x3fc100
3611ca  48 8d 0d 37 af 09 00           lea    rcx,[rip+0x9af37]        # 0x3fc108
3611d1  48 8b d3                       mov    rdx,rbx
3611d4  e8 d7 55 fd ff                 call   0x3367b0
3611d9  44 39 60 70                    cmp    DWORD PTR [rax+0x70],r12d
3611dd  0f 85 c7 00 00 00              jne    0x3612aa
3611e3  41 3b dd                       cmp    ebx,r13d
3611e6  0f 85 be 00 00 00              jne    0x3612aa
3611ec  44 38 25 11 af 09 00           cmp    BYTE PTR [rip+0x9af11],r12b        # 0x3fc104
3611f3  0f 85 b1 00 00 00              jne    0x3612aa
3611f9  0f 57 d2                       xorps  xmm2,xmm2
3611fc  48 8d 4d 40                    lea    rcx,[rbp+0x40]
361200  0f 57 c9                       xorps  xmm1,xmm1
361203  e8 38 b1 f6 ff                 call   0x2cc340
361208  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
36120f  48 8b f8                       mov    rdi,rax
361212  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
361219  e8 86 fd fe ff                 call   0x350fa4 ; STRING getter=0x350fa4 UI
36121e  48 8b c8                       mov    rcx,rax
361221  e8 ce f1 fb ff                 call   0x3203f4
361226  48 8b c8                       mov    rcx,rax
361229  e8 4a 0a 03 00                 call   0x391c78
36122e  48 8d 95 f8 05 00 00           lea    rdx,[rbp+0x5f8]
361235  48 8b d8                       mov    rbx,rax
361238  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
36123f  e8 78 fd fe ff                 call   0x350fbc ; STRING getter=0x350fbc UI
361244  48 8b c8                       mov    rcx,rax
361247  e8 a8 f1 fb ff                 call   0x3203f4
36124c  48 8b c8                       mov    rcx,rax
36124f  e8 24 0a 03 00                 call   0x391c78
361254  f3 0f 10 73 20                 movss  xmm6,DWORD PTR [rbx+0x20]
361259  48 8d 55 68                    lea    rdx,[rbp+0x68]
36125d  48 8d 8d e8 05 00 00           lea    rcx,[rbp+0x5e8]
361264  f3 0f 58 70 28                 addss  xmm6,DWORD PTR [rax+0x28]
361269  f3 0f 58 35 ab c8 f2 ff        addss  xmm6,DWORD PTR [rip+0xfffffffffff2c8ab]        # 0x28db1c ; f32=10
361271  e8 5e fd fe ff                 call   0x350fd4 ; STRING getter=0x350fd4 UI
361276  48 8b c8                       mov    rcx,rax
361279  e8 76 f1 fb ff                 call   0x3203f4
36127e  48 8b c8                       mov    rcx,rax
361281  e8 f2 09 03 00                 call   0x391c78
361286  0f 28 ce                       movaps xmm1,xmm6
361289  48 8d 4d c8                    lea    rcx,[rbp-0x38]
36128d  f3 0f 10 50 24                 movss  xmm2,DWORD PTR [rax+0x24]
361292  e8 a9 b0 f6 ff                 call   0x2cc340
361297  4c 8b c7                       mov    r8,rdi
36129a  48 8d 4d c8                    lea    rcx,[rbp-0x38]
36129e  33 d2                          xor    edx,edx
3612a0  e8 8f a4 03 00                 call   0x39b734
3612a5  e8 8e 3d 00 00                 call   0x365038
3612aa  e8 39 60 02 00                 call   0x3872e8
3612af  45 84 ff                       test   r15b,r15b
3612b2  74 05                          je     0x3612b9
3612b4  e8 63 75 03 00                 call   0x39881c
3612b9  4c 8d 9c 24 a0 06 00 00        lea    r11,[rsp+0x6a0]
3612c1  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
3612c5  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
3612ca  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
3612cf  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
3612d4  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
3612d9  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
3612de  45 0f 28 5b a0                 movaps xmm11,XMMWORD PTR [r11-0x60]
3612e3  45 0f 28 63 90                 movaps xmm12,XMMWORD PTR [r11-0x70]
3612e8  49 8b e3                       mov    rsp,r11
3612eb  41 5f                          pop    r15
3612ed  41 5e                          pop    r14
3612ef  41 5d                          pop    r13
3612f1  41 5c                          pop    r12
3612f3  5f                             pop    rdi
3612f4  5e                             pop    rsi
3612f5  5d                             pop    rbp
3612f6  c3                             ret

; pdata function 0x36f788..0x36f8b5 unwind=0x3d3fa4
36f788  40 53                          rex push rbx
36f78a  56                             push   rsi
36f78b  57                             push   rdi
36f78c  48 83 ec 50                    sub    rsp,0x50
36f790  48 8b 1d 61 08 09 00           mov    rbx,QWORD PTR [rip+0x90861]        # 0x3ffff8
36f797  0f 29 74 24 40                 movaps XMMWORD PTR [rsp+0x40],xmm6
36f79c  48 85 db                       test   rbx,rbx
36f79f  0f 84 03 01 00 00              je     0x36f8a8
36f7a5  e8 a2 16 f7 ff                 call   0x2e0e4c
36f7aa  84 c0                          test   al,al
36f7ac  0f 85 e1 00 00 00              jne    0x36f893
36f7b2  e8 e5 0e f7 ff                 call   0x2e069c
36f7b7  48 85 c0                       test   rax,rax
36f7ba  0f 84 d3 00 00 00              je     0x36f893
36f7c0  e8 57 60 fa ff                 call   0x31581c
36f7c5  48 8b cb                       mov    rcx,rbx
36f7c8  0f 28 f0                       movaps xmm6,xmm0
36f7cb  33 ff                          xor    edi,edi
36f7cd  e8 16 9c f6 ff                 call   0x2d93e8
36f7d2  48 85 c0                       test   rax,rax
36f7d5  0f 84 cd 00 00 00              je     0x36f8a8
36f7db  48 63 f7                       movsxd rsi,edi
36f7de  48 8b cb                       mov    rcx,rbx
36f7e1  48 8b d6                       mov    rdx,rsi
36f7e4  e8 6f 07 00 00                 call   0x36ff58
36f7e9  48 8b d0                       mov    rdx,rax
36f7ec  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36f7f1  e8 92 e7 ff ff                 call   0x36df88
36f7f6  f3 0f 10 4c 24 38              movss  xmm1,DWORD PTR [rsp+0x38]
36f7fc  0f 28 c6                       movaps xmm0,xmm6
36f7ff  f3 0f 10 15 41 d3 08 00        movss  xmm2,DWORD PTR [rip+0x8d341]        # 0x3fcb48 ; CONFIG F.raidtime value(+0x48)
36f807  f3 0f 5c c1                    subss  xmm0,xmm1
36f80b  0f 2f d0                       comiss xmm2,xmm0
36f80e  f3 0f 11 05 ea 07 09 00        movss  DWORD PTR [rip+0x907ea],xmm0        # 0x400000
36f816  76 1b                          jbe    0x36f833
36f818  0f 28 ce                       movaps xmm1,xmm6
36f81b  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36f820  e8 37 ed ff ff                 call   0x36e55c
36f825  f3 0f 10 4c 24 38              movss  xmm1,DWORD PTR [rsp+0x38]
36f82b  f3 0f 10 15 15 d3 08 00        movss  xmm2,DWORD PTR [rip+0x8d315]        # 0x3fcb48 ; CONFIG F.raidtime value(+0x48)
36f833  0f 28 c6                       movaps xmm0,xmm6
36f836  f3 0f 5c c1                    subss  xmm0,xmm1
36f83a  0f 2f c2                       comiss xmm0,xmm2
36f83d  76 32                          jbe    0x36f871
36f83f  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
36f844  48 8b cb                       mov    rcx,rbx
36f847  e8 44 85 f6 ff                 call   0x2d7d90
36f84c  48 8b c8                       mov    rcx,rax
36f84f  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
36f854  4c 8b c6                       mov    r8,rsi
36f857  e8 58 56 f6 ff                 call   0x2d4eb4
36f85c  48 8d 94 24 80 00 00 00        lea    rdx,[rsp+0x80]
36f864  48 8b cb                       mov    rcx,rbx
36f867  4c 8b 00                       mov    r8,QWORD PTR [rax]
36f86a  e8 3d 08 00 00                 call   0x3700ac
36f86f  ff cf                          dec    edi
36f871  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36f876  e8 21 e8 ff ff                 call   0x36e09c
36f87b  48 8b cb                       mov    rcx,rbx
36f87e  ff c7                          inc    edi
36f880  e8 63 9b f6 ff                 call   0x2d93e8
36f885  48 63 cf                       movsxd rcx,edi
36f888  48 3b c8                       cmp    rcx,rax
36f88b  0f 82 4a ff ff ff              jb     0x36f7db
36f891  eb 15                          jmp    0x36f8a8
36f893  48 8b cb                       mov    rcx,rbx
36f896  e8 4d 9b f6 ff                 call   0x2d93e8
36f89b  48 85 c0                       test   rax,rax
36f89e  74 08                          je     0x36f8a8
36f8a0  48 8b cb                       mov    rcx,rbx
36f8a3  e8 78 07 00 00                 call   0x370020
36f8a8  0f 28 74 24 40                 movaps xmm6,XMMWORD PTR [rsp+0x40]
36f8ad  48 83 c4 50                    add    rsp,0x50
36f8b1  5f                             pop    rdi
36f8b2  5e                             pop    rsi
36f8b3  5b                             pop    rbx
36f8b4  c3                             ret

; pdata function 0x37f918..0x37f98e unwind=0x3d24b8
37f918  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
37f91d  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
37f922  57                             push   rdi
37f923  48 83 ec 50                    sub    rsp,0x50
37f927  41 8b f8                       mov    edi,r8d
37f92a  8b da                          mov    ebx,edx
37f92c  48 8b f1                       mov    rsi,rcx
37f92f  e8 b8 de f4 ff                 call   0x2cd7ec
37f934  48 8b d0                       mov    rdx,rax
37f937  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
37f93c  e8 8b c9 f4 ff                 call   0x2cc2cc
37f941  89 5c 24 40                    mov    DWORD PTR [rsp+0x40],ebx
37f945  e8 d2 5e f9 ff                 call   0x31581c
37f94a  f3 0f 58 05 36 38 f1 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff13836]        # 0x293188 ; f32=6
37f952  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
37f957  89 7c 24 48                    mov    DWORD PTR [rsp+0x48],edi
37f95b  48 8d 0d 56 34 08 00           lea    rcx,[rip+0x83456]        # 0x402db8
37f962  f3 0f 11 44 24 44              movss  DWORD PTR [rsp+0x44],xmm0
37f968  e8 c3 03 00 00                 call   0x37fd30
37f96d  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
37f972  e8 8d cb f4 ff                 call   0x2cc504
37f977  48 8b ce                       mov    rcx,rsi
37f97a  48 8b 5c 24 60                 mov    rbx,QWORD PTR [rsp+0x60]
37f97f  48 8b 74 24 68                 mov    rsi,QWORD PTR [rsp+0x68]
37f984  48 83 c4 50                    add    rsp,0x50
37f988  5f                             pop    rdi
37f989  e9 66 cb f4 ff                 jmp    0x2cc4f4

