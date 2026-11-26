; pdata function 0x2d6520..0x2d65dc unwind=0x3d259c
2d6520  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2d6525  48 89 6c 24 18                 mov    QWORD PTR [rsp+0x18],rbp
2d652a  56                             push   rsi
2d652b  57                             push   rdi
2d652c  41 56                          push   r14
2d652e  48 83 ec 20                    sub    rsp,0x20
2d6532  48 8b e9                       mov    rbp,rcx
2d6535  48 8b f2                       mov    rsi,rdx
2d6538  48 8b ca                       mov    rcx,rdx
2d653b  33 ff                          xor    edi,edi
2d653d  e8 96 25 00 00                 call   0x2d8ad8
2d6542  48 8b d8                       mov    rbx,rax
2d6545  48 85 c0                       test   rax,rax
2d6548  74 23                          je     0x2d656d
2d654a  48 8b d7                       mov    rdx,rdi
2d654d  48 8b ce                       mov    rcx,rsi
2d6550  e8 77 e7 ff ff                 call   0x2d4ccc
2d6555  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2d655a  8a 10                          mov    dl,BYTE PTR [rax]
2d655c  e8 7f eb ff ff                 call   0x2d50e0
2d6561  84 c0                          test   al,al
2d6563  74 08                          je     0x2d656d
2d6565  48 ff c7                       inc    rdi
2d6568  48 3b fb                       cmp    rdi,rbx
2d656b  72 dd                          jb     0x2d654a
2d656d  48 8b ce                       mov    rcx,rsi
2d6570  e8 63 25 00 00                 call   0x2d8ad8
2d6575  48 8b d8                       mov    rbx,rax
2d6578  48 3b c7                       cmp    rax,rdi
2d657b  76 35                          jbe    0x2d65b2
2d657d  48 8d 53 ff                    lea    rdx,[rbx-0x1]
2d6581  48 8b ce                       mov    rcx,rsi
2d6584  e8 43 e7 ff ff                 call   0x2d4ccc
2d6589  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2d658e  8a 10                          mov    dl,BYTE PTR [rax]
2d6590  e8 4b eb ff ff                 call   0x2d50e0
2d6595  84 c0                          test   al,al
2d6597  75 11                          jne    0x2d65aa
2d6599  48 8d 53 ff                    lea    rdx,[rbx-0x1]
2d659d  48 8b ce                       mov    rcx,rsi
2d65a0  e8 27 e7 ff ff                 call   0x2d4ccc
2d65a5  80 38 2e                       cmp    BYTE PTR [rax],0x2e
2d65a8  75 08                          jne    0x2d65b2
2d65aa  48 ff cb                       dec    rbx
2d65ad  48 3b df                       cmp    rbx,rdi
2d65b0  77 cb                          ja     0x2d657d
2d65b2  48 2b df                       sub    rbx,rdi
2d65b5  4c 8b c7                       mov    r8,rdi
2d65b8  4c 8b cb                       mov    r9,rbx
2d65bb  48 8b d5                       mov    rdx,rbp
2d65be  48 8b ce                       mov    rcx,rsi
2d65c1  e8 d2 2e 00 00                 call   0x2d9498
2d65c6  48 8b 5c 24 48                 mov    rbx,QWORD PTR [rsp+0x48]
2d65cb  48 8b c5                       mov    rax,rbp
2d65ce  48 8b 6c 24 50                 mov    rbp,QWORD PTR [rsp+0x50]
2d65d3  48 83 c4 20                    add    rsp,0x20
2d65d7  41 5e                          pop    r14
2d65d9  5f                             pop    rdi
2d65da  5e                             pop    rsi
2d65db  c3                             ret

; pdata function 0x2d5b78..0x2d5be1 unwind=0x3d2054
2d5b78  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d5b7d  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2d5b82  57                             push   rdi
2d5b83  48 83 ec 20                    sub    rsp,0x20
2d5b87  48 8b f9                       mov    rdi,rcx
2d5b8a  e8 49 2f 00 00                 call   0x2d8ad8
2d5b8f  48 83 f8 04                    cmp    rax,0x4
2d5b93  72 3a                          jb     0x2d5bcf
2d5b95  48 8b cf                       mov    rcx,rdi
2d5b98  e8 3b 2f 00 00                 call   0x2d8ad8
2d5b9d  33 db                          xor    ebx,ebx
2d5b9f  48 8d 70 fc                    lea    rsi,[rax-0x4]
2d5ba3  48 8d 14 33                    lea    rdx,[rbx+rsi*1]
2d5ba7  48 8b cf                       mov    rcx,rdi
2d5baa  e8 1d f1 ff ff                 call   0x2d4ccc
2d5baf  8a 08                          mov    cl,BYTE PTR [rax]
2d5bb1  e8 5a 09 00 00                 call   0x2d6510
2d5bb6  48 8d 0d 73 78 fb ff           lea    rcx,[rip+0xfffffffffffb7873]        # 0x28d430
2d5bbd  3a 04 19                       cmp    al,BYTE PTR [rcx+rbx*1]
2d5bc0  75 0d                          jne    0x2d5bcf
2d5bc2  48 ff c3                       inc    rbx
2d5bc5  48 83 fb 04                    cmp    rbx,0x4
2d5bc9  72 d8                          jb     0x2d5ba3
2d5bcb  b0 01                          mov    al,0x1
2d5bcd  eb 02                          jmp    0x2d5bd1
2d5bcf  32 c0                          xor    al,al
2d5bd1  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d5bd6  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2d5bdb  48 83 c4 20                    add    rsp,0x20
2d5bdf  5f                             pop    rdi
2d5be0  c3                             ret

; pdata function 0x2d8fd4..0x2d8ff5 unwind=0x3d2038
2d8fd4  40 53                          rex push rbx
2d8fd6  48 83 ec 20                    sub    rsp,0x20
2d8fda  48 8b d9                       mov    rbx,rcx
2d8fdd  48 8b ca                       mov    rcx,rdx
2d8fe0  e8 bf 23 ff ff                 call   0x2cb3a4
2d8fe5  48 8b d0                       mov    rdx,rax
2d8fe8  48 8b cb                       mov    rcx,rbx
2d8feb  48 83 c4 20                    add    rsp,0x20
2d8fef  5b                             pop    rbx
2d8ff0  e9 a7 6d ff ff                 jmp    0x2cfd9c

; pdata function 0x2d480c..0x2d484b unwind=0x3d2038
2d480c  40 53                          rex push rbx
2d480e  48 83 ec 20                    sub    rsp,0x20
2d4812  89 11                          mov    DWORD PTR [rcx],edx
2d4814  49 8b c0                       mov    rax,r8
2d4817  48 8b d9                       mov    rbx,rcx
2d481a  4d 85 c0                       test   r8,r8
2d481d  75 17                          jne    0x2d4836
2d481f  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
2d4824  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
2d4829  e8 02 7f ff ff                 call   0x2cc730
2d482e  48 8b c8                       mov    rcx,rax
2d4831  e8 6e 94 ff ff                 call   0x2cdca4
2d4836  48 8d 4b 08                    lea    rcx,[rbx+0x8]
2d483a  48 8b d0                       mov    rdx,rax
2d483d  e8 8a 7a ff ff                 call   0x2cc2cc
2d4842  48 8b c3                       mov    rax,rbx
2d4845  48 83 c4 20                    add    rsp,0x20
2d4849  5b                             pop    rbx
2d484a  c3                             ret

; pdata function 0x2d5a18..0x2d5b33 unwind=0x3d2568
2d5a18  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d5a1d  55                             push   rbp
2d5a1e  56                             push   rsi
2d5a1f  57                             push   rdi
2d5a20  48 83 ec 50                    sub    rsp,0x50
2d5a24  e8 b3 8b ff ff                 call   0x2ce5dc
2d5a29  8b 0d 01 0d 10 00              mov    ecx,DWORD PTR [rip+0x100d01]        # 0x3d6730
2d5a2f  48 8b e8                       mov    rbp,rax
2d5a32  f6 c1 01                       test   cl,0x1
2d5a35  0f 85 ab 00 00 00              jne    0x2d5ae6
2d5a3b  83 c9 01                       or     ecx,0x1
2d5a3e  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
2d5a43  89 0d e7 0c 10 00              mov    DWORD PTR [rip+0x100ce7],ecx        # 0x3d6730
2d5a49  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
2d5a4e  e8 dd 6c ff ff                 call   0x2cc730
2d5a53  48 8b c8                       mov    rcx,rax
2d5a56  e8 49 82 ff ff                 call   0x2cdca4
2d5a5b  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
2d5a60  48 8b f0                       mov    rsi,rax
2d5a63  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
2d5a6b  e8 24 f9 ff ff                 call   0x2d5394 ; STRING getter=0x2d5394 DeleteFile
2d5a70  48 8b c8                       mov    rcx,rax
2d5a73  e8 54 2b 00 00                 call   0x2d85cc
2d5a78  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2d5a7d  48 8b f8                       mov    rdi,rax
2d5a80  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
2d5a88  e8 bb f7 ff ff                 call   0x2d5248 ; STRING getter=0x2d5248 System.IO
2d5a8d  48 8b c8                       mov    rcx,rax
2d5a90  e8 87 82 ff ff                 call   0x2cdd1c
2d5a95  48 8d 54 24 45                 lea    rdx,[rsp+0x45]
2d5a9a  48 8b d8                       mov    rbx,rax
2d5a9d  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
2d5aa5  e8 b2 f5 ff ff                 call   0x2d505c ; STRING getter=0x2d505c FileSystem
2d5aaa  48 8b c8                       mov    rcx,rax
2d5aad  e8 1a 2b 00 00                 call   0x2d85cc
2d5ab2  48 8b c8                       mov    rcx,rax
2d5ab5  48 8b d3                       mov    rdx,rbx
2d5ab8  e8 67 e7 05 00                 call   0x334224
2d5abd  41 83 c8 ff                    or     r8d,0xffffffff
2d5ac1  48 8b c8                       mov    rcx,rax
2d5ac4  4c 8b ce                       mov    r9,rsi
2d5ac7  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
2d5acc  48 8b d7                       mov    rdx,rdi
2d5acf  e8 d8 ee 05 00                 call   0x3349ac
2d5ad4  8b 0d 56 0c 10 00              mov    ecx,DWORD PTR [rip+0x100c56]        # 0x3d6730
2d5ada  4c 8b 00                       mov    r8,QWORD PTR [rax]
2d5add  4c 89 05 44 0c 10 00           mov    QWORD PTR [rip+0x100c44],r8        # 0x3d6728
2d5ae4  eb 07                          jmp    0x2d5aed
2d5ae6  4c 8b 05 3b 0c 10 00           mov    r8,QWORD PTR [rip+0x100c3b]        # 0x3d6728
2d5aed  f6 c1 02                       test   cl,0x2
2d5af0  75 1f                          jne    0x2d5b11
2d5af2  83 c9 02                       or     ecx,0x2
2d5af5  48 8d 15 44 0c 10 00           lea    rdx,[rip+0x100c44]        # 0x3d6740
2d5afc  89 0d 2e 0c 10 00              mov    DWORD PTR [rip+0x100c2e],ecx        # 0x3d6730
2d5b02  45 33 c9                       xor    r9d,r9d
2d5b05  48 8b 0d 54 03 10 00           mov    rcx,QWORD PTR [rip+0x100354]        # 0x3d5e60
2d5b0c  e8 13 62 ff ff                 call   0x2cbd24
2d5b11  48 8b 0d 48 03 10 00           mov    rcx,QWORD PTR [rip+0x100348]        # 0x3d5e60
2d5b18  48 8d 15 21 0c 10 00           lea    rdx,[rip+0x100c21]        # 0x3d6740
2d5b1f  4c 8b c5                       mov    r8,rbp
2d5b22  48 8b 5c 24 70                 mov    rbx,QWORD PTR [rsp+0x70]
2d5b27  48 83 c4 50                    add    rsp,0x50
2d5b2b  5f                             pop    rdi
2d5b2c  5e                             pop    rsi
2d5b2d  5d                             pop    rbp
2d5b2e  e9 c9 5e ff ff                 jmp    0x2cb9fc

