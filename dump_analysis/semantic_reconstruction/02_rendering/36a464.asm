; pdata function 0x36a464..0x36ac75 unwind=0x3d3ee4
36a464  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
36a469  55                             push   rbp
36a46a  56                             push   rsi
36a46b  57                             push   rdi
36a46c  41 54                          push   r12
36a46e  41 55                          push   r13
36a470  41 56                          push   r14
36a472  41 57                          push   r15
36a474  48 8d ac 24 00 ff ff ff        lea    rbp,[rsp-0x100]
36a47c  48 81 ec 00 02 00 00           sub    rsp,0x200
36a483  33 f6                          xor    esi,esi
36a485  48 8b d1                       mov    rdx,rcx
36a488  89 b5 48 01 00 00              mov    DWORD PTR [rbp+0x148],esi
36a48e  e8 75 0a f6 ff                 call   0x2caf08
36a493  84 c0                          test   al,al
36a495  0f 84 bf 07 00 00              je     0x36ac5a
36a49b  48 8b ca                       mov    rcx,rdx
36a49e  e8 c1 f2 ff ff                 call   0x369764
36a4a3  48 8b c8                       mov    rcx,rax
36a4a6  48 8b f8                       mov    rdi,rax
36a4a9  e8 5a 0a f6 ff                 call   0x2caf08
36a4ae  84 c0                          test   al,al
36a4b0  0f 84 a4 07 00 00              je     0x36ac5a
36a4b6  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
36a4bb  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a4c2  e8 d9 d7 ff ff                 call   0x367ca0 ; STRING getter=0x367ca0 UnityEngine
36a4c7  48 8b c8                       mov    rcx,rax
36a4ca  e8 65 39 f6 ff                 call   0x2cde34
36a4cf  48 8d 55 cc                    lea    rdx,[rbp-0x34]
36a4d3  48 8b d8                       mov    rbx,rax
36a4d6  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a4dd  e8 1e d6 ff ff                 call   0x367b00 ; STRING getter=0x367b00 SkinnedMeshRenderer
36a4e2  48 8b c8                       mov    rcx,rax
36a4e5  e8 aa 5f fb ff                 call   0x320494
36a4ea  48 8b c8                       mov    rcx,rax
36a4ed  48 8b d3                       mov    rdx,rbx
36a4f0  e8 0f 9d fc ff                 call   0x334204
36a4f5  48 8b c8                       mov    rcx,rax
36a4f8  48 8b d0                       mov    rdx,rax
36a4fb  e8 08 0a f6 ff                 call   0x2caf08
36a500  84 c0                          test   al,al
36a502  0f 84 52 07 00 00              je     0x36ac5a
36a508  48 8b cf                       mov    rcx,rdi
36a50b  e8 ac ac fa ff                 call   0x3151bc
36a510  48 8b c8                       mov    rcx,rax
36a513  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
36a518  48 8b d0                       mov    rdx,rax
36a51b  e8 e8 09 f6 ff                 call   0x2caf08
36a520  84 c0                          test   al,al
36a522  0f 84 32 07 00 00              je     0x36ac5a
36a528  8b 42 18                       mov    eax,DWORD PTR [rdx+0x18]
36a52b  45 33 e4                       xor    r12d,r12d
36a52e  89 44 24 34                    mov    DWORD PTR [rsp+0x34],eax
36a532  85 c0                          test   eax,eax
36a534  0f 8e 20 07 00 00              jle    0x36ac5a
36a53a  42 8d 04 e5 00 00 00 00        lea    eax,[r12*8+0x0]
36a542  48 63 c8                       movsxd rcx,eax
36a545  48 8b 7c 0a 20                 mov    rdi,QWORD PTR [rdx+rcx*1+0x20]
36a54a  48 8b cf                       mov    rcx,rdi
36a54d  e8 b6 09 f6 ff                 call   0x2caf08
36a552  84 c0                          test   al,al
36a554  0f 84 f2 06 00 00              je     0x36ac4c
36a55a  48 8b cf                       mov    rcx,rdi
36a55d  e8 f2 61 00 00                 call   0x370754
36a562  48 8b c8                       mov    rcx,rax
36a565  4c 8b f0                       mov    r14,rax
36a568  e8 9b 09 f6 ff                 call   0x2caf08
36a56d  84 c0                          test   al,al
36a56f  0f 84 d2 06 00 00              je     0x36ac47
36a575  48 8d 55 7c                    lea    rdx,[rbp+0x7c]
36a579  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a580  e8 1b d9 ff ff                 call   0x367ea0 ; STRING getter=0x367ea0 UnityEngine
36a585  48 8b c8                       mov    rcx,rax
36a588  e8 a7 38 f6 ff                 call   0x2cde34
36a58d  48 8d 55 80                    lea    rdx,[rbp-0x80]
36a591  48 8b d8                       mov    rbx,rax
36a594  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a59b  e8 88 d8 ff ff                 call   0x367e28 ; STRING getter=0x367e28 Mesh
36a5a0  48 8b c8                       mov    rcx,rax
36a5a3  e8 24 37 f6 ff                 call   0x2cdccc
36a5a8  48 8b c8                       mov    rcx,rax
36a5ab  48 8b d3                       mov    rdx,rbx
36a5ae  e8 71 9c fc ff                 call   0x334224
36a5b3  48 8b c8                       mov    rcx,rax
36a5b6  4c 8b f8                       mov    r15,rax
36a5b9  e8 4a 09 f6 ff                 call   0x2caf08
36a5be  84 c0                          test   al,al
36a5c0  0f 84 81 06 00 00              je     0x36ac47
36a5c6  48 8d 55 f6                    lea    rdx,[rbp-0xa]
36a5ca  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a5d1  e8 36 d9 ff ff                 call   0x367f0c ; STRING getter=0x367f0c UnityEngine
36a5d6  48 8b c8                       mov    rcx,rax
36a5d9  e8 56 38 f6 ff                 call   0x2cde34
36a5de  48 8d 55 e0                    lea    rdx,[rbp-0x20]
36a5e2  48 8b d8                       mov    rbx,rax
36a5e5  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a5ec  e8 e7 d8 ff ff                 call   0x367ed8 ; STRING getter=0x367ed8 GameObject
36a5f1  48 8b c8                       mov    rcx,rax
36a5f4  e8 5b f6 f7 ff                 call   0x2e9c54
36a5f9  48 8b c8                       mov    rcx,rax
36a5fc  48 8b d3                       mov    rdx,rbx
36a5ff  e8 20 9c fc ff                 call   0x334224
36a604  48 8b c8                       mov    rcx,rax
36a607  48 8b d0                       mov    rdx,rax
36a60a  e8 f9 08 f6 ff                 call   0x2caf08
36a60f  84 c0                          test   al,al
36a611  0f 84 30 06 00 00              je     0x36ac47
36a617  48 8b ca                       mov    rcx,rdx
36a61a  e8 b5 0c 00 00                 call   0x36b2d4
36a61f  48 8b c8                       mov    rcx,rax
36a622  4c 8b e8                       mov    r13,rax
36a625  e8 de 08 f6 ff                 call   0x2caf08
36a62a  84 c0                          test   al,al
36a62c  0f 84 15 06 00 00              je     0x36ac47
36a632  48 8d 95 88 00 00 00           lea    rdx,[rbp+0x88]
36a639  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a640  e8 07 d9 ff ff                 call   0x367f4c ; STRING getter=0x367f4c Sussy Object
36a645  48 8b c8                       mov    rcx,rax
36a648  e8 a7 df f6 ff                 call   0x2d85f4
36a64d  48 8b c8                       mov    rcx,rax
36a650  e8 87 3f f6 ff                 call   0x2ce5dc
36a655  48 8b d0                       mov    rdx,rax
36a658  49 8b cd                       mov    rcx,r13
36a65b  e8 20 dc ff ff                 call   0x368280
36a660  49 8b cd                       mov    rcx,r13
36a663  e8 e0 8b 00 00                 call   0x373248
36a668  48 8b c8                       mov    rcx,rax
36a66b  48 8b d8                       mov    rbx,rax
36a66e  e8 95 08 f6 ff                 call   0x2caf08
36a673  84 c0                          test   al,al
36a675  0f 84 cc 05 00 00              je     0x36ac47
36a67b  48 8d 55 04                    lea    rdx,[rbp+0x4]
36a67f  49 8b ce                       mov    rcx,r14
36a682  e8 4d a1 00 00                 call   0x3747d4
36a687  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
36a68c  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
36a68f  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
36a693  89 4c 24 68                    mov    DWORD PTR [rsp+0x68],ecx
36a697  48 8b cb                       mov    rcx,rbx
36a69a  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
36a6a0  e8 9b aa 00 00                 call   0x375140
36a6a5  48 8d 55 cc                    lea    rdx,[rbp-0x34]
36a6a9  49 8b ce                       mov    rcx,r14
36a6ac  e8 f3 a3 00 00                 call   0x374aa4
36a6b1  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
36a6b6  48 8b cb                       mov    rcx,rbx
36a6b9  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
36a6bc  f3 0f 7f 44 24 70              movdqu XMMWORD PTR [rsp+0x70],xmm0
36a6c2  e8 b5 ab 00 00                 call   0x37527c
36a6c7  48 8d 55 10                    lea    rdx,[rbp+0x10]
36a6cb  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a6d2  e8 ed d8 ff ff                 call   0x367fc4 ; STRING getter=0x367fc4 UnityEngine
36a6d7  48 8b c8                       mov    rcx,rax
36a6da  e8 55 37 f6 ff                 call   0x2cde34
36a6df  48 8d 95 95 00 00 00           lea    rdx,[rbp+0x95]
36a6e6  48 8b d8                       mov    rbx,rax
36a6e9  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a6f0  e8 93 d8 ff ff                 call   0x367f88 ; STRING getter=0x367f88 MeshRenderer
36a6f5  48 8b c8                       mov    rcx,rax
36a6f8  e8 f7 de f6 ff                 call   0x2d85f4
36a6fd  48 8b d0                       mov    rdx,rax
36a700  4c 8b c3                       mov    r8,rbx
36a703  49 8b cd                       mov    rcx,r13
36a706  e8 f1 87 00 00                 call   0x372efc
36a70b  48 8b c8                       mov    rcx,rax
36a70e  48 89 44 24 40                 mov    QWORD PTR [rsp+0x40],rax
36a713  e8 f0 07 f6 ff                 call   0x2caf08
36a718  84 c0                          test   al,al
36a71a  0f 84 27 05 00 00              je     0x36ac47
36a720  48 8d 55 1c                    lea    rdx,[rbp+0x1c]
36a724  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a72b  e8 e8 d1 ff ff                 call   0x367918 ; STRING getter=0x367918 UnityEngine
36a730  48 8b c8                       mov    rcx,rax
36a733  e8 fc 36 f6 ff                 call   0x2cde34
36a738  48 8d 55 eb                    lea    rdx,[rbp-0x15]
36a73c  48 8b d8                       mov    rbx,rax
36a73f  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a746  e8 99 d1 ff ff                 call   0x3678e4 ; STRING getter=0x3678e4 MeshFilter
36a74b  48 8b c8                       mov    rcx,rax
36a74e  e8 01 f5 f7 ff                 call   0x2e9c54
36a753  48 8b d0                       mov    rdx,rax
36a756  4c 8b c3                       mov    r8,rbx
36a759  49 8b cd                       mov    rcx,r13
36a75c  e8 9b 87 00 00                 call   0x372efc
36a761  48 8b c8                       mov    rcx,rax
36a764  4c 8b f0                       mov    r14,rax
36a767  e8 9c 07 f6 ff                 call   0x2caf08
36a76c  84 c0                          test   al,al
36a76e  0f 84 d3 04 00 00              je     0x36ac47
36a774  49 8b cf                       mov    rcx,r15
36a777  e8 58 0b 00 00                 call   0x36b2d4
36a77c  48 8b c8                       mov    rcx,rax
36a77f  48 89 44 24 70                 mov    QWORD PTR [rsp+0x70],rax
36a784  48 8b d8                       mov    rbx,rax
36a787  e8 7c 07 f6 ff                 call   0x2caf08
36a78c  84 c0                          test   al,al
36a78e  0f 84 b3 04 00 00              je     0x36ac47
36a794  48 8d 55 b6                    lea    rdx,[rbp-0x4a]
36a798  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a79f  e8 ac d1 ff ff                 call   0x367950 ; STRING getter=0x367950 SussyMesh
36a7a4  48 8b c8                       mov    rcx,rax
36a7a7  e8 98 35 f6 ff                 call   0x2cdd44
36a7ac  48 8b c8                       mov    rcx,rax
36a7af  e8 28 3e f6 ff                 call   0x2ce5dc
36a7b4  48 8b d0                       mov    rdx,rax
36a7b7  48 8b cb                       mov    rcx,rbx
36a7ba  e8 b1 db ff ff                 call   0x368370
36a7bf  48 8b d3                       mov    rdx,rbx
36a7c2  48 8b cf                       mov    rcx,rdi
36a7c5  e8 16 d8 ff ff                 call   0x367fe0
36a7ca  48 8b d3                       mov    rdx,rbx
36a7cd  49 8b ce                       mov    rcx,r14
36a7d0  e8 c7 05 00 00                 call   0x36ad9c
36a7d5  48 8b 4c 24 40                 mov    rcx,QWORD PTR [rsp+0x40]
36a7da  e8 cd 67 00 00                 call   0x370fac
36a7df  48 8b c8                       mov    rcx,rax
36a7e2  48 89 44 24 40                 mov    QWORD PTR [rsp+0x40],rax
36a7e7  48 8b d8                       mov    rbx,rax
36a7ea  e8 19 07 f6 ff                 call   0x2caf08
36a7ef  84 c0                          test   al,al
36a7f1  0f 84 50 04 00 00              je     0x36ac47
36a7f7  48 8b cb                       mov    rcx,rbx
36a7fa  e8 85 66 00 00                 call   0x370e84
36a7ff  48 8b c8                       mov    rcx,rax
36a802  e8 01 07 f6 ff                 call   0x2caf08
36a807  84 c0                          test   al,al
36a809  0f 84 38 04 00 00              je     0x36ac47
36a80f  48 8b cb                       mov    rcx,rbx
36a812  e8 05 8e 00 00                 call   0x37361c
36a817  48 8b c8                       mov    rcx,rax
36a81a  48 8b f8                       mov    rdi,rax
36a81d  e8 e6 06 f6 ff                 call   0x2caf08
36a822  84 c0                          test   al,al
36a824  0f 84 1d 04 00 00              je     0x36ac47
36a82a  48 8d 95 e8 00 00 00           lea    rdx,[rbp+0xe8]
36a831  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a838  e8 53 d1 ff ff                 call   0x367990 ; STRING getter=0x367990 night.vision.goggles
36a83d  48 8b c8                       mov    rcx,rax
36a840  e8 77 5c fb ff                 call   0x3204bc
36a845  48 8d 95 c8 00 00 00           lea    rdx,[rbp+0xc8]
36a84c  48 8b cf                       mov    rcx,rdi
36a84f  48 8b d8                       mov    rbx,rax
36a852  83 ce 01                       or     esi,0x1
36a855  e8 be d5 f6 ff                 call   0x2d7e18
36a85a  48 8b c8                       mov    rcx,rax
36a85d  e8 8a 2f f6 ff                 call   0x2cd7ec
36a862  48 8b c8                       mov    rcx,rax
36a865  48 8b d3                       mov    rdx,rbx
36a868  e8 f3 00 06 00                 call   0x3ca960
36a86d  48 85 c0                       test   rax,rax
36a870  75 49                          jne    0x36a8bb
36a872  48 8d 55 c0                    lea    rdx,[rbp-0x40]
36a876  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a87d  e8 2a d1 ff ff                 call   0x3679ac ; STRING getter=0x3679ac hat.miner
36a882  48 8b c8                       mov    rcx,rax
36a885  e8 ba 34 f6 ff                 call   0x2cdd44
36a88a  48 8d 95 a8 00 00 00           lea    rdx,[rbp+0xa8]
36a891  48 8b cf                       mov    rcx,rdi
36a894  48 8b d8                       mov    rbx,rax
36a897  83 ce 02                       or     esi,0x2
36a89a  e8 79 d5 f6 ff                 call   0x2d7e18
36a89f  48 8b c8                       mov    rcx,rax
36a8a2  e8 45 2f f6 ff                 call   0x2cd7ec
36a8a7  48 8b c8                       mov    rcx,rax
36a8aa  48 8b d3                       mov    rdx,rbx
36a8ad  e8 ae 00 06 00                 call   0x3ca960
36a8b2  48 85 c0                       test   rax,rax
36a8b5  75 04                          jne    0x36a8bb
36a8b7  32 db                          xor    bl,bl
36a8b9  eb 02                          jmp    0x36a8bd
36a8bb  b3 01                          mov    bl,0x1
36a8bd  40 f6 c6 02                    test   sil,0x2
36a8c1  74 0f                          je     0x36a8d2
36a8c3  83 e6 fd                       and    esi,0xfffffffd
36a8c6  48 8d 8d a8 00 00 00           lea    rcx,[rbp+0xa8]
36a8cd  e8 22 1c f6 ff                 call   0x2cc4f4
36a8d2  48 8d 8d c8 00 00 00           lea    rcx,[rbp+0xc8]
36a8d9  83 e6 fe                       and    esi,0xfffffffe
36a8dc  e8 13 1c f6 ff                 call   0x2cc4f4
36a8e1  84 db                          test   bl,bl
36a8e3  0f 85 5e 03 00 00              jne    0x36ac47
36a8e9  48 63 0d 08 27 09 00           movsxd rcx,DWORD PTR [rip+0x92708]        # 0x3fcff8 ; CONFIG i.chamindexRecreation value(+0x48)
36a8f0  48 8d 1d 09 57 c9 ff           lea    rbx,[rip+0xffffffffffc95709]        # 0x0
36a8f7  4c 8b bc cb 88 5e 3e 00        mov    r15,QWORD PTR [rbx+rcx*8+0x3e5e88]
36a8ff  4d 85 ff                       test   r15,r15
36a902  0f 84 1d 03 00 00              je     0x36ac25
36a908  4c 8d 34 cd c0 5e 3e 00        lea    r14,[rcx*8+0x3e5ec0]
36a910  4c 03 f3                       add    r14,rbx
36a913  49 8b 06                       mov    rax,QWORD PTR [r14]
36a916  48 85 c0                       test   rax,rax
36a919  0f 85 7a 02 00 00              jne    0x36ab99
36a91f  85 c9                          test   ecx,ecx
36a921  0f 84 fb 01 00 00              je     0x36ab22
36a927  83 e9 01                       sub    ecx,0x1
36a92a  0f 84 a9 01 00 00              je     0x36aad9
36a930  83 e9 01                       sub    ecx,0x1
36a933  0f 84 54 01 00 00              je     0x36aa8d
36a939  83 e9 01                       sub    ecx,0x1
36a93c  0f 84 ff 00 00 00              je     0x36aa41
36a942  83 e9 01                       sub    ecx,0x1
36a945  0f 84 aa 00 00 00              je     0x36a9f5
36a94b  83 e9 01                       sub    ecx,0x1
36a94e  74 57                          je     0x36a9a7
36a950  83 f9 01                       cmp    ecx,0x1
36a953  0f 85 cc 02 00 00              jne    0x36ac25
36a959  48 8d 55 28                    lea    rdx,[rbp+0x28]
36a95d  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a964  e8 cb d3 ff ff                 call   0x367d34 ; STRING getter=0x367d34 UnityEngine
36a969  48 8b c8                       mov    rcx,rax
36a96c  e8 c3 34 f6 ff                 call   0x2cde34
36a971  48 8d 55 85                    lea    rdx,[rbp-0x7b]
36a975  48 8b f8                       mov    rdi,rax
36a978  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a97f  e8 90 d3 ff ff                 call   0x367d14 ; STRING getter=0x367d14 Shader
36a984  48 8b c8                       mov    rcx,rax
36a987  e8 68 33 f6 ff                 call   0x2cdcf4
36a98c  48 8d 95 50 01 00 00           lea    rdx,[rbp+0x150]
36a993  48 8b d8                       mov    rbx,rax
36a996  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a99d  e8 a2 6c f8 ff                 call   0x2f1644 ; STRING getter=0x2f1644 6
36a9a2  e9 c2 01 00 00                 jmp    0x36ab69
36a9a7  48 8d 55 34                    lea    rdx,[rbp+0x34]
36a9ab  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a9b2  e8 41 d3 ff ff                 call   0x367cf8 ; STRING getter=0x367cf8 UnityEngine
36a9b7  48 8b c8                       mov    rcx,rax
36a9ba  e8 75 34 f6 ff                 call   0x2cde34
36a9bf  48 8d 55 8c                    lea    rdx,[rbp-0x74]
36a9c3  48 8b f8                       mov    rdi,rax
36a9c6  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a9cd  e8 06 d3 ff ff                 call   0x367cd8 ; STRING getter=0x367cd8 Shader
36a9d2  48 8b c8                       mov    rcx,rax
36a9d5  e8 1a 33 f6 ff                 call   0x2cdcf4
36a9da  48 8d 95 58 01 00 00           lea    rdx,[rbp+0x158]
36a9e1  48 8b d8                       mov    rbx,rax
36a9e4  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36a9eb  e8 e8 6a f8 ff                 call   0x2f14d8 ; STRING getter=0x2f14d8 5
36a9f0  e9 74 01 00 00                 jmp    0x36ab69
36a9f5  48 8d 55 40                    lea    rdx,[rbp+0x40]
36a9f9  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aa00  e8 e3 d1 ff ff                 call   0x367be8 ; STRING getter=0x367be8 UnityEngine
36aa05  48 8b c8                       mov    rcx,rax
36aa08  e8 27 34 f6 ff                 call   0x2cde34
36aa0d  48 8d 55 93                    lea    rdx,[rbp-0x6d]
36aa11  48 8b f8                       mov    rdi,rax
36aa14  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aa1b  e8 a8 d1 ff ff                 call   0x367bc8 ; STRING getter=0x367bc8 Shader
36aa20  48 8b c8                       mov    rcx,rax
36aa23  e8 cc 32 f6 ff                 call   0x2cdcf4
36aa28  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
36aa2d  48 8b d8                       mov    rbx,rax
36aa30  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aa37  e8 ac 69 f8 ff                 call   0x2f13e8 ; STRING getter=0x2f13e8 4
36aa3c  e9 28 01 00 00                 jmp    0x36ab69
36aa41  48 8d 55 4c                    lea    rdx,[rbp+0x4c]
36aa45  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aa4c  e8 5b d1 ff ff                 call   0x367bac ; STRING getter=0x367bac UnityEngine
36aa51  48 8b c8                       mov    rcx,rax
36aa54  e8 db 33 f6 ff                 call   0x2cde34
36aa59  48 8d 55 9a                    lea    rdx,[rbp-0x66]
36aa5d  48 8b f8                       mov    rdi,rax
36aa60  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aa67  e8 20 d1 ff ff                 call   0x367b8c ; STRING getter=0x367b8c Shader
36aa6c  48 8b c8                       mov    rcx,rax
36aa6f  e8 80 32 f6 ff                 call   0x2cdcf4
36aa74  48 8d 54 24 2a                 lea    rdx,[rsp+0x2a]
36aa79  48 8b d8                       mov    rbx,rax
36aa7c  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aa83  e8 4c 61 f8 ff                 call   0x2f0bd4 ; STRING getter=0x2f0bd4 3
36aa88  e9 dc 00 00 00                 jmp    0x36ab69
36aa8d  48 8d 55 58                    lea    rdx,[rbp+0x58]
36aa91  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aa98  e8 d3 d0 ff ff                 call   0x367b70 ; STRING getter=0x367b70 UnityEngine
36aa9d  48 8b c8                       mov    rcx,rax
36aaa0  e8 8f 33 f6 ff                 call   0x2cde34
36aaa5  48 8d 55 a1                    lea    rdx,[rbp-0x5f]
36aaa9  48 8b f8                       mov    rdi,rax
36aaac  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aab3  e8 98 d0 ff ff                 call   0x367b50 ; STRING getter=0x367b50 Shader
36aab8  48 8b c8                       mov    rcx,rax
36aabb  e8 34 32 f6 ff                 call   0x2cdcf4
36aac0  48 8d 54 24 2c                 lea    rdx,[rsp+0x2c]
36aac5  48 8b d8                       mov    rbx,rax
36aac8  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aacf  e8 7c 67 f8 ff                 call   0x2f1250 ; STRING getter=0x2f1250 2
36aad4  e9 90 00 00 00                 jmp    0x36ab69
36aad9  48 8d 55 64                    lea    rdx,[rbp+0x64]
36aadd  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aae4  e8 4b d0 ff ff                 call   0x367b34 ; STRING getter=0x367b34 UnityEngine
36aae9  48 8b c8                       mov    rcx,rax
36aaec  e8 43 33 f6 ff                 call   0x2cde34
36aaf1  48 8d 55 a8                    lea    rdx,[rbp-0x58]
36aaf5  48 8b f8                       mov    rdi,rax
36aaf8  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36aaff  e8 18 cf ff ff                 call   0x367a1c ; STRING getter=0x367a1c Shader
36ab04  48 8b c8                       mov    rcx,rax
36ab07  e8 e8 31 f6 ff                 call   0x2cdcf4
36ab0c  48 8d 54 24 2e                 lea    rdx,[rsp+0x2e]
36ab11  48 8b d8                       mov    rbx,rax
36ab14  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36ab1b  e8 ac 65 f8 ff                 call   0x2f10cc ; STRING getter=0x2f10cc 1
36ab20  eb 47                          jmp    0x36ab69
36ab22  48 8d 55 70                    lea    rdx,[rbp+0x70]
36ab26  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36ab2d  e8 ce ce ff ff                 call   0x367a00 ; STRING getter=0x367a00 UnityEngine
36ab32  48 8b c8                       mov    rcx,rax
36ab35  e8 fa 32 f6 ff                 call   0x2cde34
36ab3a  48 8d 55 af                    lea    rdx,[rbp-0x51]
36ab3e  48 8b f8                       mov    rdi,rax
36ab41  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36ab48  e8 7b ce ff ff                 call   0x3679c8 ; STRING getter=0x3679c8 Shader
36ab4d  48 8b c8                       mov    rcx,rax
36ab50  e8 9f 31 f6 ff                 call   0x2cdcf4
36ab55  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
36ab5a  48 8b d8                       mov    rbx,rax
36ab5d  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36ab64  e8 9b 64 f8 ff                 call   0x2f1004 ; STRING getter=0x2f1004 0
36ab69  48 8b c8                       mov    rcx,rax
36ab6c  e8 f3 d8 f6 ff                 call   0x2d8464
36ab71  48 8b c8                       mov    rcx,rax
36ab74  e8 63 3a f6 ff                 call   0x2ce5dc
36ab79  4c 8b cf                       mov    r9,rdi
36ab7c  4c 8b c3                       mov    r8,rbx
36ab7f  48 8b d0                       mov    rdx,rax
36ab82  49 8b cf                       mov    rcx,r15
36ab85  e8 32 af 00 00                 call   0x375abc
36ab8a  49 89 06                       mov    QWORD PTR [r14],rax
36ab8d  48 8b c8                       mov    rcx,rax
36ab90  48 85 c0                       test   rax,rax
36ab93  0f 84 8c 00 00 00              je     0x36ac25
36ab99  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
36ab9e  48 8b d0                       mov    rdx,rax
36aba1  48 8b cb                       mov    rcx,rbx
36aba4  e8 33 65 00 00                 call   0x3710dc
36aba9  0f 10 05 88 20 08 00           movups xmm0,XMMWORD PTR [rip+0x82088]        # 0x3ecc38 ; CONFIG C.NonVisChamsColor value(+0x48)
36abb0  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
36abb5  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36abbc  66 0f 7f 44 24 40              movdqa XMMWORD PTR [rsp+0x40],xmm0
36abc2  e8 89 d1 ff ff                 call   0x367d50 ; STRING getter=0x367d50 _b
36abc7  48 8b c8                       mov    rcx,rax
36abca  e8 25 58 fb ff                 call   0x3203f4
36abcf  48 8b c8                       mov    rcx,rax
36abd2  e8 05 3a f6 ff                 call   0x2ce5dc
36abd7  48 8b d0                       mov    rdx,rax
36abda  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
36abdf  48 8b cb                       mov    rcx,rbx
36abe2  e8 7d 61 00 00                 call   0x370d64
36abe7  0f 10 05 ea 1f 08 00           movups xmm0,XMMWORD PTR [rip+0x81fea]        # 0x3ecbd8 ; CONFIG C.VisChamsColor value(+0x48)
36abee  48 8d 54 24 53                 lea    rdx,[rsp+0x53]
36abf3  48 8d 8d 48 01 00 00           lea    rcx,[rbp+0x148]
36abfa  66 0f 7f 44 24 40              movdqa XMMWORD PTR [rsp+0x40],xmm0
36ac00  e8 63 d1 ff ff                 call   0x367d68 ; STRING getter=0x367d68 _a
36ac05  48 8b c8                       mov    rcx,rax
36ac08  e8 e7 57 fb ff                 call   0x3203f4
36ac0d  48 8b c8                       mov    rcx,rax
36ac10  e8 c7 39 f6 ff                 call   0x2ce5dc
36ac15  48 8b d0                       mov    rdx,rax
36ac18  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
36ac1d  48 8b cb                       mov    rcx,rbx
36ac20  e8 3f 61 00 00                 call   0x370d64
36ac25  f3 0f 10 0d 2b 1e 09 00        movss  xmm1,DWORD PTR [rip+0x91e2b]        # 0x3fca58 ; CONFIG F.DestroyTimer value(+0x48)
36ac2d  49 8b cd                       mov    rcx,r13
36ac30  e8 e7 83 00 00                 call   0x37301c
36ac35  f3 0f 10 0d 1b 1e 09 00        movss  xmm1,DWORD PTR [rip+0x91e1b]        # 0x3fca58 ; CONFIG F.DestroyTimer value(+0x48)
36ac3d  48 8b 4c 24 70                 mov    rcx,QWORD PTR [rsp+0x70]
36ac42  e8 d5 83 00 00                 call   0x37301c
36ac47  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
36ac4c  41 ff c4                       inc    r12d
36ac4f  44 3b 64 24 34                 cmp    r12d,DWORD PTR [rsp+0x34]
36ac54  0f 8c e0 f8 ff ff              jl     0x36a53a
36ac5a  48 8b 9c 24 40 02 00 00        mov    rbx,QWORD PTR [rsp+0x240]
36ac62  48 81 c4 00 02 00 00           add    rsp,0x200
36ac69  41 5f                          pop    r15
36ac6b  41 5e                          pop    r14
36ac6d  41 5d                          pop    r13
36ac6f  41 5c                          pop    r12
36ac71  5f                             pop    rdi
36ac72  5e                             pop    rsi
36ac73  5d                             pop    rbp
36ac74  c3                             ret
