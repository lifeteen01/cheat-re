; pdata function 0x369790..0x369c1b unwind=0x3d3e9c
369790  40 55                          rex push rbp
369792  53                             push   rbx
369793  56                             push   rsi
369794  57                             push   rdi
369795  41 54                          push   r12
369797  41 55                          push   r13
369799  41 56                          push   r14
36979b  41 57                          push   r15
36979d  48 8d 6c 24 e1                 lea    rbp,[rsp-0x1f]
3697a2  48 81 ec 88 00 00 00           sub    rsp,0x88
3697a9  4c 8b ea                       mov    r13,rdx
3697ac  48 8b f1                       mov    rsi,rcx
3697af  e8 54 17 f6 ff                 call   0x2caf08
3697b4  84 c0                          test   al,al
3697b6  0f 84 40 04 00 00              je     0x369bfc
3697bc  48 8b ce                       mov    rcx,rsi
3697bf  e8 d8 76 f7 ff                 call   0x2e0e9c
3697c4  84 c0                          test   al,al
3697c6  0f 84 30 04 00 00              je     0x369bfc
3697cc  48 8b ce                       mov    rcx,rsi
3697cf  e8 80 c2 f7 ff                 call   0x2e5a54
3697d4  48 8b c8                       mov    rcx,rax
3697d7  48 8b d0                       mov    rdx,rax
3697da  e8 29 17 f6 ff                 call   0x2caf08
3697df  84 c0                          test   al,al
3697e1  0f 84 15 04 00 00              je     0x369bfc
3697e7  48 8b ca                       mov    rcx,rdx
3697ea  e8 65 cb f6 ff                 call   0x2d6354
3697ef  48 8d 55 ff                    lea    rdx,[rbp-0x1]
3697f3  4c 8b f0                       mov    r14,rax
3697f6  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3697fa  e8 dd e2 ff ff                 call   0x367adc ; STRING getter=0x367adc ScientistNPC2
3697ff  48 8b c8                       mov    rcx,rax
369802  e8 81 39 f7 ff                 call   0x2dd188
369807  48 8b c8                       mov    rcx,rax
36980a  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
369814  e8 33 c3 f7 ff                 call   0x2e5b4c
369819  48 8d 4d b7                    lea    rcx,[rbp-0x49]
36981d  4c 8b f8                       mov    r15,rax
369820  e8 97 e3 05 00                 call   0x3c7bbc
369825  8b 05 ad 34 09 00              mov    eax,DWORD PTR [rip+0x934ad]        # 0x3fccd8 ; CONFIG i.BoneIndex1 value(+0x48)
36982b  ba 0b 00 00 00                 mov    edx,0xb
369830  8d 4a 04                       lea    ecx,[rdx+0x4]
369833  8d 5a 29                       lea    ebx,[rdx+0x29]
369836  8d 7a 23                       lea    edi,[rdx+0x23]
369839  44 8d 4a 06                    lea    r9d,[rdx+0x6]
36983d  44 8d 62 0a                    lea    r12d,[rdx+0xa]
369841  44 8d 42 03                    lea    r8d,[rdx+0x3]
369845  85 c0                          test   eax,eax
369847  75 7a                          jne    0x3698c3
369849  44 8d 42 2c                    lea    r8d,[rdx+0x2c]
36984d  4d 3b f7                       cmp    r14,r15
369850  48 8b ce                       mov    rcx,rsi
369853  44 0f 44 c2                    cmove  r8d,edx
369857  48 8d 55 c7                    lea    rdx,[rbp-0x39]
36985b  e8 88 f3 ff ff                 call   0x368be8
369860  44 8d 43 02                    lea    r8d,[rbx+0x2]
369864  4d 3b f7                       cmp    r14,r15
369867  8d 43 db                       lea    eax,[rbx-0x25]
36986a  48 8b ce                       mov    rcx,rsi
36986d  44 0f 44 c0                    cmove  r8d,eax
369871  48 8d 55 d7                    lea    rdx,[rbp-0x29]
369875  e8 6e f3 ff ff                 call   0x368be8
36987a  f3 0f 10 5d cf                 movss  xmm3,DWORD PTR [rbp-0x31]
36987f  48 8d 4d e7                    lea    rcx,[rbp-0x19]
369883  f3 0f 10 55 db                 movss  xmm2,DWORD PTR [rbp-0x25]
369888  f3 0f 10 4d c7                 movss  xmm1,DWORD PTR [rbp-0x39]
36988d  e8 16 e3 05 00                 call   0x3c7ba8
369892  f3 0f 10 15 fe 97 f2 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff297fe]        # 0x293098 ; f32=0.05
36989a  48 8d 4d f3                    lea    rcx,[rbp-0xd]
36989e  0f 57 db                       xorps  xmm3,xmm3
3698a1  0f 57 c9                       xorps  xmm1,xmm1
3698a4  48 8b d8                       mov    rbx,rax
3698a7  e8 fc e2 05 00                 call   0x3c7ba8
3698ac  4c 8b c0                       mov    r8,rax
3698af  48 8d 55 ff                    lea    rdx,[rbp-0x1]
3698b3  48 8b cb                       mov    rcx,rbx
3698b6  e8 4d 5e f7 ff                 call   0x2df708
3698bb  8d 5f 06                       lea    ebx,[rdi+0x6]
3698be  e9 ae 00 00 00                 jmp    0x369971
3698c3  83 f8 01                       cmp    eax,0x1
3698c6  75 0f                          jne    0x3698d7
3698c8  4d 3b f7                       cmp    r14,r15
3698cb  44 8b c3                       mov    r8d,ebx
3698ce  44 0f 44 c7                    cmove  r8d,edi
3698d2  e9 8e 00 00 00                 jmp    0x369965
3698d7  83 f8 02                       cmp    eax,0x2
3698da  75 0d                          jne    0x3698e9
3698dc  4d 3b f7                       cmp    r14,r15
3698df  44 8d 40 15                    lea    r8d,[rax+0x15]
3698e3  45 0f 44 c1                    cmove  r8d,r9d
3698e7  eb 7c                          jmp    0x369965
3698e9  83 f8 03                       cmp    eax,0x3
3698ec  75 0c                          jne    0x3698fa
3698ee  4d 3b f7                       cmp    r14,r15
3698f1  45 8b c4                       mov    r8d,r12d
3698f4  44 0f 44 c1                    cmove  r8d,ecx
3698f8  eb 6b                          jmp    0x369965
3698fa  83 f8 04                       cmp    eax,0x4
3698fd  75 04                          jne    0x369903
3698ff  33 d2                          xor    edx,edx
369901  eb 57                          jmp    0x36995a
369903  83 f8 05                       cmp    eax,0x5
369906  75 78                          jne    0x369980
369908  8b 05 aa 35 09 00              mov    eax,DWORD PTR [rip+0x935aa]        # 0x3fceb8 ; CONFIG i.firstpriority value(+0x48)
36990e  85 c0                          test   eax,eax
369910  75 0d                          jne    0x36991f
369912  33 d2                          xor    edx,edx
369914  4d 3b f7                       cmp    r14,r15
369917  0f 95 c2                       setne  dl
36991a  83 c2 2f                       add    edx,0x2f
36991d  eb 3b                          jmp    0x36995a
36991f  83 f8 01                       cmp    eax,0x1
369922  75 04                          jne    0x369928
369924  8b d7                          mov    edx,edi
369926  eb 32                          jmp    0x36995a
369928  83 f8 02                       cmp    eax,0x2
36992b  75 0c                          jne    0x369939
36992d  4d 3b f7                       cmp    r14,r15
369930  8d 50 14                       lea    edx,[rax+0x14]
369933  41 0f 44 d1                    cmove  edx,r9d
369937  eb 21                          jmp    0x36995a
369939  83 f8 03                       cmp    eax,0x3
36993c  75 0b                          jne    0x369949
36993e  4d 3b f7                       cmp    r14,r15
369941  41 8b d4                       mov    edx,r12d
369944  0f 44 d1                       cmove  edx,ecx
369947  eb 11                          jmp    0x36995a
369949  33 d2                          xor    edx,edx
36994b  83 f8 04                       cmp    eax,0x4
36994e  75 0a                          jne    0x36995a
369950  4d 3b f7                       cmp    r14,r15
369953  8d 50 10                       lea    edx,[rax+0x10]
369956  41 0f 44 d0                    cmove  edx,r8d
36995a  48 8b ce                       mov    rcx,rsi
36995d  e8 4e f3 ff ff                 call   0x368cb0
369962  44 8b c0                       mov    r8d,eax
369965  48 8d 55 ff                    lea    rdx,[rbp-0x1]
369969  48 8b ce                       mov    rcx,rsi
36996c  e8 77 f2 ff ff                 call   0x368be8
369971  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
369975  f2 0f 11 45 b7                 movsd  QWORD PTR [rbp-0x49],xmm0
36997a  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
36997d  89 45 bf                       mov    DWORD PTR [rbp-0x41],eax
369980  8b 0d 12 ab 08 00              mov    ecx,DWORD PTR [rip+0x8ab12]        # 0x3f4498 ; CONFIG K.SecondAimbotVirtualKey value(+0x48)
369986  b2 01                          mov    dl,0x1
369988  e8 bf c4 f7 ff                 call   0x2e5e4c
36998d  84 c0                          test   al,al
36998f  0f 84 a3 01 00 00              je     0x369b38
369995  8b 05 8d 33 09 00              mov    eax,DWORD PTR [rip+0x9338d]        # 0x3fcd28 ; CONFIG i.BoneIndexSecond value(+0x48)
36999b  85 c0                          test   eax,eax
36999d  0f 85 8e 00 00 00              jne    0x369a31
3699a3  8d 78 37                       lea    edi,[rax+0x37]
3699a6  4d 3b f7                       cmp    r14,r15
3699a9  44 8b c7                       mov    r8d,edi
3699ac  8d 47 d4                       lea    eax,[rdi-0x2c]
3699af  44 0f 44 c0                    cmove  r8d,eax
3699b3  48 8d 55 c7                    lea    rdx,[rbp-0x39]
3699b7  48 8b ce                       mov    rcx,rsi
3699ba  e8 29 f2 ff ff                 call   0x368be8
3699bf  8d 47 d8                       lea    eax,[rdi-0x28]
3699c2  4d 3b f7                       cmp    r14,r15
3699c5  44 8d 67 ff                    lea    r12d,[rdi-0x1]
3699c9  48 8b ce                       mov    rcx,rsi
3699cc  45 8b c4                       mov    r8d,r12d
3699cf  48 8d 55 d7                    lea    rdx,[rbp-0x29]
3699d3  44 0f 44 c0                    cmove  r8d,eax
3699d7  e8 0c f2 ff ff                 call   0x368be8
3699dc  f3 0f 10 5d cf                 movss  xmm3,DWORD PTR [rbp-0x31]
3699e1  48 8d 4d ff                    lea    rcx,[rbp-0x1]
3699e5  f3 0f 10 55 db                 movss  xmm2,DWORD PTR [rbp-0x25]
3699ea  f3 0f 10 4d c7                 movss  xmm1,DWORD PTR [rbp-0x39]
3699ef  e8 b4 e1 05 00                 call   0x3c7ba8
3699f4  f3 0f 10 15 9c 96 f2 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff2969c]        # 0x293098 ; f32=0.05
3699fc  48 8d 4d f3                    lea    rcx,[rbp-0xd]
369a00  0f 57 db                       xorps  xmm3,xmm3
369a03  0f 57 c9                       xorps  xmm1,xmm1
369a06  48 8b d8                       mov    rbx,rax
369a09  e8 9a e1 05 00                 call   0x3c7ba8
369a0e  4c 8b c0                       mov    r8,rax
369a11  48 8d 55 e7                    lea    rdx,[rbp-0x19]
369a15  48 8b cb                       mov    rcx,rbx
369a18  e8 eb 5c f7 ff                 call   0x2df708
369a1d  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
369a21  f2 0f 11 45 b7                 movsd  QWORD PTR [rbp-0x49],xmm0
369a26  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
369a29  89 4d bf                       mov    DWORD PTR [rbp-0x41],ecx
369a2c  e9 1a 01 00 00                 jmp    0x369b4b
369a31  83 f8 01                       cmp    eax,0x1
369a34  75 29                          jne    0x369a5f
369a36  4d 3b f7                       cmp    r14,r15
369a39  0f 44 df                       cmove  ebx,edi
369a3c  44 8b c3                       mov    r8d,ebx
369a3f  48 8d 55 ff                    lea    rdx,[rbp-0x1]
369a43  48 8b ce                       mov    rcx,rsi
369a46  e8 9d f1 ff ff                 call   0x368be8
369a4b  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
369a4f  f2 0f 11 45 b7                 movsd  QWORD PTR [rbp-0x49],xmm0
369a54  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
369a57  89 4d bf                       mov    DWORD PTR [rbp-0x41],ecx
369a5a  e9 e1 00 00 00                 jmp    0x369b40
369a5f  83 f8 02                       cmp    eax,0x2
369a62  75 10                          jne    0x369a74
369a64  4d 3b f7                       cmp    r14,r15
369a67  8d 48 0f                       lea    ecx,[rax+0xf]
369a6a  44 8d 40 15                    lea    r8d,[rax+0x15]
369a6e  44 0f 44 c1                    cmove  r8d,ecx
369a72  eb cb                          jmp    0x369a3f
369a74  83 f8 03                       cmp    eax,0x3
369a77  75 36                          jne    0x369aaf
369a79  4d 3b f7                       cmp    r14,r15
369a7c  8d 58 0c                       lea    ebx,[rax+0xc]
369a7f  44 0f 44 e3                    cmove  r12d,ebx
369a83  45 8b c4                       mov    r8d,r12d
369a86  48 8d 55 ff                    lea    rdx,[rbp-0x1]
369a8a  48 8b ce                       mov    rcx,rsi
369a8d  e8 56 f1 ff ff                 call   0x368be8
369a92  bf 37 00 00 00                 mov    edi,0x37
369a97  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
369a9b  f2 0f 11 45 b7                 movsd  QWORD PTR [rbp-0x49],xmm0
369aa0  44 8d 67 ff                    lea    r12d,[rdi-0x1]
369aa4  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
369aa7  89 4d bf                       mov    DWORD PTR [rbp-0x41],ecx
369aaa  e9 a1 00 00 00                 jmp    0x369b50
369aaf  83 f8 04                       cmp    eax,0x4
369ab2  75 12                          jne    0x369ac6
369ab4  33 d2                          xor    edx,edx
369ab6  48 8b ce                       mov    rcx,rsi
369ab9  e8 f2 f1 ff ff                 call   0x368cb0
369abe  44 8b c0                       mov    r8d,eax
369ac1  e9 79 ff ff ff                 jmp    0x369a3f
369ac6  83 f8 05                       cmp    eax,0x5
369ac9  75 6d                          jne    0x369b38
369acb  8b 05 37 34 09 00              mov    eax,DWORD PTR [rip+0x93437]        # 0x3fcf08 ; CONFIG i.secondpriority value(+0x48)
369ad1  85 c0                          test   eax,eax
369ad3  75 0e                          jne    0x369ae3
369ad5  33 ff                          xor    edi,edi
369ad7  4d 3b f7                       cmp    r14,r15
369ada  40 0f 95 c7                    setne  dil
369ade  83 c7 2f                       add    edi,0x2f
369ae1  eb 3e                          jmp    0x369b21
369ae3  83 f8 01                       cmp    eax,0x1
369ae6  74 39                          je     0x369b21
369ae8  83 f8 02                       cmp    eax,0x2
369aeb  75 0e                          jne    0x369afb
369aed  4d 3b f7                       cmp    r14,r15
369af0  8d 78 14                       lea    edi,[rax+0x14]
369af3  8d 48 0f                       lea    ecx,[rax+0xf]
369af6  0f 44 f9                       cmove  edi,ecx
369af9  eb 26                          jmp    0x369b21
369afb  83 f8 03                       cmp    eax,0x3
369afe  75 0e                          jne    0x369b0e
369b00  4d 3b f7                       cmp    r14,r15
369b03  8d 58 0c                       lea    ebx,[rax+0xc]
369b06  41 8b fc                       mov    edi,r12d
369b09  0f 44 fb                       cmove  edi,ebx
369b0c  eb 18                          jmp    0x369b26
369b0e  33 ff                          xor    edi,edi
369b10  83 f8 04                       cmp    eax,0x4
369b13  75 0c                          jne    0x369b21
369b15  8d 78 10                       lea    edi,[rax+0x10]
369b18  4d 3b f7                       cmp    r14,r15
369b1b  8d 47 fa                       lea    eax,[rdi-0x6]
369b1e  0f 44 f8                       cmove  edi,eax
369b21  bb 0f 00 00 00                 mov    ebx,0xf
369b26  8b d7                          mov    edx,edi
369b28  48 8b ce                       mov    rcx,rsi
369b2b  e8 80 f1 ff ff                 call   0x368cb0
369b30  44 8b c0                       mov    r8d,eax
369b33  e9 4e ff ff ff                 jmp    0x369a86
369b38  8b 4d bf                       mov    ecx,DWORD PTR [rbp-0x41]
369b3b  f2 0f 10 45 b7                 movsd  xmm0,QWORD PTR [rbp-0x49]
369b40  41 bc 36 00 00 00              mov    r12d,0x36
369b46  41 8d 7c 24 01                 lea    edi,[r12+0x1]
369b4b  bb 0f 00 00 00                 mov    ebx,0xf
369b50  80 3d 01 e5 06 00 00           cmp    BYTE PTR [rip+0x6e501],0x0        # 0x3d8058 ; CONFIG Bools.DoFatBulletHit value(+0x48)
369b57  0f 84 93 00 00 00              je     0x369bf0
369b5d  80 3d 64 e3 06 00 00           cmp    BYTE PTR [rip+0x6e364],0x0        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
369b64  0f 84 86 00 00 00              je     0x369bf0
369b6a  80 3d 07 e3 06 00 00           cmp    BYTE PTR [rip+0x6e307],0x0        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
369b71  74 7d                          je     0x369bf0
369b73  b8 0b 00 00 00                 mov    eax,0xb
369b78  48 8d 55 c7                    lea    rdx,[rbp-0x39]
369b7c  4d 3b f7                       cmp    r14,r15
369b7f  48 8b ce                       mov    rcx,rsi
369b82  0f 44 f8                       cmove  edi,eax
369b85  44 8b c7                       mov    r8d,edi
369b88  e8 5b f0 ff ff                 call   0x368be8
369b8d  4d 3b f7                       cmp    r14,r15
369b90  48 8d 55 d7                    lea    rdx,[rbp-0x29]
369b94  48 8b ce                       mov    rcx,rsi
369b97  44 0f 44 e3                    cmove  r12d,ebx
369b9b  45 8b c4                       mov    r8d,r12d
369b9e  e8 45 f0 ff ff                 call   0x368be8
369ba3  f3 0f 10 5d cf                 movss  xmm3,DWORD PTR [rbp-0x31]
369ba8  48 8d 4d ff                    lea    rcx,[rbp-0x1]
369bac  f3 0f 10 55 db                 movss  xmm2,DWORD PTR [rbp-0x25]
369bb1  f3 0f 10 4d c7                 movss  xmm1,DWORD PTR [rbp-0x39]
369bb6  e8 ed df 05 00                 call   0x3c7ba8
369bbb  f3 0f 10 15 d5 94 f2 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff294d5]        # 0x293098 ; f32=0.05
369bc3  48 8d 4d f3                    lea    rcx,[rbp-0xd]
369bc7  0f 57 db                       xorps  xmm3,xmm3
369bca  0f 57 c9                       xorps  xmm1,xmm1
369bcd  48 8b d8                       mov    rbx,rax
369bd0  e8 d3 df 05 00                 call   0x3c7ba8
369bd5  4c 8b c0                       mov    r8,rax
369bd8  48 8d 55 e7                    lea    rdx,[rbp-0x19]
369bdc  48 8b cb                       mov    rcx,rbx
369bdf  e8 24 5b f7 ff                 call   0x2df708
369be4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
369be8  f2 0f 11 45 b7                 movsd  QWORD PTR [rbp-0x49],xmm0
369bed  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
369bf0  f2 41 0f 11 45 00              movsd  QWORD PTR [r13+0x0],xmm0
369bf6  41 89 4d 08                    mov    DWORD PTR [r13+0x8],ecx
369bfa  eb 08                          jmp    0x369c04
369bfc  49 8b cd                       mov    rcx,r13
369bff  e8 b8 df 05 00                 call   0x3c7bbc
369c04  49 8b c5                       mov    rax,r13
369c07  48 81 c4 88 00 00 00           add    rsp,0x88
369c0e  41 5f                          pop    r15
369c10  41 5e                          pop    r14
369c12  41 5d                          pop    r13
369c14  41 5c                          pop    r12
369c16  5f                             pop    rdi
369c17  5e                             pop    rsi
369c18  5b                             pop    rbx
369c19  5d                             pop    rbp
369c1a  c3                             ret

; pdata function 0x2e0e9c..0x2e0ec9 unwind=0x3d2064
2e0e9c  48 83 ec 28                    sub    rsp,0x28
2e0ea0  4c 8b c1                       mov    r8,rcx
2e0ea3  e8 60 a0 fe ff                 call   0x2caf08
2e0ea8  84 c0                          test   al,al
2e0eaa  74 16                          je     0x2e0ec2
2e0eac  ba 48 00 00 00                 mov    edx,0x48
2e0eb1  49 8b c8                       mov    rcx,r8
2e0eb4  e8 83 df ff ff                 call   0x2dee3c
2e0eb9  48 83 38 00                    cmp    QWORD PTR [rax],0x0
2e0ebd  0f 95 c0                       setne  al
2e0ec0  eb 02                          jmp    0x2e0ec4
2e0ec2  32 c0                          xor    al,al
2e0ec4  48 83 c4 28                    add    rsp,0x28
2e0ec8  c3                             ret

; pdata function 0x36aec4..0x36af58 unwind=0x3d2040
36aec4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
36aec9  57                             push   rdi
36aeca  48 83 ec 20                    sub    rsp,0x20
36aece  40 8a fa                       mov    dil,dl
36aed1  48 8b d9                       mov    rbx,rcx
36aed4  e8 2f 00 f6 ff                 call   0x2caf08
36aed9  84 c0                          test   al,al
36aedb  74 6e                          je     0x36af4b
36aedd  84 d2                          test   dl,dl
36aedf  75 0c                          jne    0x36aeed
36aee1  48 8b cb                       mov    rcx,rbx
36aee4  e8 8f f2 ff ff                 call   0x36a178
36aee9  84 c0                          test   al,al
36aeeb  74 02                          je     0x36aeef
36aeed  b0 01                          mov    al,0x1
36aeef  80 3d 32 c5 07 00 00           cmp    BYTE PTR [rip+0x7c532],0x0        # 0x3e7428 ; CONFIG Bools.Scientist value(+0x48)
36aef6  75 04                          jne    0x36aefc
36aef8  84 c0                          test   al,al
36aefa  75 4f                          jne    0x36af4b
36aefc  48 8b cb                       mov    rcx,rbx
36aeff  e8 ac e4 ff ff                 call   0x3693b0
36af04  84 c0                          test   al,al
36af06  75 43                          jne    0x36af4b
36af08  40 84 ff                       test   dil,dil
36af0b  75 3a                          jne    0x36af47
36af0d  48 8b cb                       mov    rcx,rbx
36af10  e8 a3 fd ff ff                 call   0x36acb8
36af15  84 c0                          test   al,al
36af17  75 32                          jne    0x36af4b
36af19  38 05 99 36 09 00              cmp    BYTE PTR [rip+0x93699],al        # 0x3fe5b8 ; CONFIG Bools.aimwounded value(+0x48)
36af1f  75 0c                          jne    0x36af2d
36af21  48 8b cb                       mov    rcx,rbx
36af24  e8 5f 03 00 00                 call   0x36b288
36af29  84 c0                          test   al,al
36af2b  75 1e                          jne    0x36af4b
36af2d  33 d2                          xor    edx,edx
36af2f  48 8b cb                       mov    rcx,rbx
36af32  e8 d5 f2 ff ff                 call   0x36a20c
36af37  84 c0                          test   al,al
36af39  74 0c                          je     0x36af47
36af3b  80 3d f6 c3 07 00 00           cmp    BYTE PTR [rip+0x7c3f6],0x0        # 0x3e7338 ; CONFIG Bools.Sleepers value(+0x48)
36af42  0f 95 c0                       setne  al
36af45  eb 06                          jmp    0x36af4d
36af47  b0 01                          mov    al,0x1
36af49  eb 02                          jmp    0x36af4d
36af4b  32 c0                          xor    al,al
36af4d  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
36af52  48 83 c4 20                    add    rsp,0x20
36af56  5f                             pop    rdi
36af57  c3                             ret

; pdata function 0x2d9540..0x2d955b unwind=0x3d2038
2d9540  40 53                          rex push rbx
2d9542  48 83 ec 20                    sub    rsp,0x20
2d9546  f3 0f 5a c9                    cvtss2sd xmm1,xmm1
2d954a  48 8b d9                       mov    rbx,rcx
2d954d  e8 0a 00 00 00                 call   0x2d955c
2d9552  48 8b c3                       mov    rax,rbx
2d9555  48 83 c4 20                    add    rsp,0x20
2d9559  5b                             pop    rbx
2d955a  c3                             ret

; heuristic leaf/code range 0x2e3b58..0x2e3b81 unwind=0x0
2e3b58  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
2e3b5c  0f 57 c9                       xorps  xmm1,xmm1
2e3b5f  0f 2e c1                       ucomiss xmm0,xmm1
2e3b62  7a 1d                          jp     0x2e3b81
2e3b64  75 1b                          jne    0x2e3b81
2e3b66  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
2e3b6b  0f 2e c1                       ucomiss xmm0,xmm1
2e3b6e  7a 11                          jp     0x2e3b81
2e3b70  75 0f                          jne    0x2e3b81
2e3b72  f3 0f 10 41 08                 movss  xmm0,DWORD PTR [rcx+0x8]
2e3b77  0f 2e c1                       ucomiss xmm0,xmm1
2e3b7a  7a 05                          jp     0x2e3b81
2e3b7c  75 03                          jne    0x2e3b81
2e3b7e  b0 01                          mov    al,0x1
2e3b80  c3                             ret

; pdata function 0x2e1278..0x2e12df unwind=0x3d2040
2e1278  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2e127d  57                             push   rdi
2e127e  48 83 ec 20                    sub    rsp,0x20
2e1282  48 8b f9                       mov    rdi,rcx
2e1285  48 8b da                       mov    rbx,rdx
2e1288  48 8b ca                       mov    rcx,rdx
2e128b  e8 2c 69 0e 00                 call   0x3c7bbc
2e1290  48 8b cf                       mov    rcx,rdi
2e1293  e8 50 fc ff ff                 call   0x2e0ee8
2e1298  0f 57 c9                       xorps  xmm1,xmm1
2e129b  0f 2f c1                       comiss xmm0,xmm1
2e129e  76 25                          jbe    0x2e12c5
2e12a0  f3 0f 10 0f                    movss  xmm1,DWORD PTR [rdi]
2e12a4  f3 0f 5e c8                    divss  xmm1,xmm0
2e12a8  f3 0f 11 0b                    movss  DWORD PTR [rbx],xmm1
2e12ac  f3 0f 10 57 04                 movss  xmm2,DWORD PTR [rdi+0x4]
2e12b1  f3 0f 5e d0                    divss  xmm2,xmm0
2e12b5  f3 0f 11 53 04                 movss  DWORD PTR [rbx+0x4],xmm2
2e12ba  f3 0f 10 4f 08                 movss  xmm1,DWORD PTR [rdi+0x8]
2e12bf  f3 0f 5e c8                    divss  xmm1,xmm0
2e12c3  eb 07                          jmp    0x2e12cc
2e12c5  48 c7 03 00 00 00 00           mov    QWORD PTR [rbx],0x0
2e12cc  f3 0f 11 4b 08                 movss  DWORD PTR [rbx+0x8],xmm1
2e12d1  48 8b c3                       mov    rax,rbx
2e12d4  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2e12d9  48 83 c4 20                    add    rsp,0x20
2e12dd  5f                             pop    rdi
2e12de  c3                             ret

; heuristic leaf/code range 0x2df5b0..0x2df5d8 unwind=0x0
2df5b0  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
2df5b4  0f 2e 02                       ucomiss xmm0,DWORD PTR [rdx]
2df5b7  7a 1f                          jp     0x2df5d8
2df5b9  75 1d                          jne    0x2df5d8
2df5bb  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
2df5c0  0f 2e 42 04                    ucomiss xmm0,DWORD PTR [rdx+0x4]
2df5c4  7a 12                          jp     0x2df5d8
2df5c6  75 10                          jne    0x2df5d8
2df5c8  f3 0f 10 41 08                 movss  xmm0,DWORD PTR [rcx+0x8]
2df5cd  0f 2e 42 08                    ucomiss xmm0,DWORD PTR [rdx+0x8]
2df5d1  7a 05                          jp     0x2df5d8
2df5d3  75 03                          jne    0x2df5d8
2df5d5  b0 01                          mov    al,0x1
2df5d7  c3                             ret

; pdata function 0x2df6cc..0x2df705 unwind=0x3d2038
2df6cc  40 53                          rex push rbx
2df6ce  48 83 ec 20                    sub    rsp,0x20
2df6d2  f3 0f 10 59 08                 movss  xmm3,DWORD PTR [rcx+0x8]
2df6d7  48 8b da                       mov    rbx,rdx
2df6da  f3 0f 10 51 04                 movss  xmm2,DWORD PTR [rcx+0x4]
2df6df  f3 0f 10 09                    movss  xmm1,DWORD PTR [rcx]
2df6e3  48 8b ca                       mov    rcx,rdx
2df6e6  f3 41 0f 5c 58 08              subss  xmm3,DWORD PTR [r8+0x8]
2df6ec  f3 41 0f 5c 50 04              subss  xmm2,DWORD PTR [r8+0x4]
2df6f2  f3 41 0f 5c 08                 subss  xmm1,DWORD PTR [r8]
2df6f7  e8 ac 84 0e 00                 call   0x3c7ba8
2df6fc  48 8b c3                       mov    rax,rbx
2df6ff  48 83 c4 20                    add    rsp,0x20
2df703  5b                             pop    rbx
2df704  c3                             ret

; pdata function 0x2ed2b4..0x2ed301 unwind=0x3d2130
2ed2b4  40 53                          rex push rbx
2ed2b6  55                             push   rbp
2ed2b7  56                             push   rsi
2ed2b8  57                             push   rdi
2ed2b9  48 83 ec 28                    sub    rsp,0x28
2ed2bd  49 8b e8                       mov    rbp,r8
2ed2c0  48 8b da                       mov    rbx,rdx
2ed2c3  4c 8b c2                       mov    r8,rdx
2ed2c6  48 8b f9                       mov    rdi,rcx
2ed2c9  48 8b d1                       mov    rdx,rcx
2ed2cc  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
2ed2d1  e8 b2 0b ff ff                 call   0x2dde88
2ed2d6  84 c0                          test   al,al
2ed2d8  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
2ed2dd  48 8b f7                       mov    rsi,rdi
2ed2e0  4c 8b c7                       mov    r8,rdi
2ed2e3  48 8b d5                       mov    rdx,rbp
2ed2e6  48 0f 45 f3                    cmovne rsi,rbx
2ed2ea  e8 99 0b ff ff                 call   0x2dde88
2ed2ef  84 c0                          test   al,al
2ed2f1  48 0f 45 f5                    cmovne rsi,rbp
2ed2f5  48 8b c6                       mov    rax,rsi
2ed2f8  48 83 c4 28                    add    rsp,0x28
2ed2fc  5f                             pop    rdi
2ed2fd  5e                             pop    rsi
2ed2fe  5d                             pop    rbp
2ed2ff  5b                             pop    rbx
2ed300  c3                             ret

; heuristic leaf/code range 0x31a8e4..0x31a8ec unwind=0x0
31a8e4  e9 ff dc 0a 00                 jmp    0x3c85e8
31a8e9  cc                             int3
31a8ea  cc                             int3
31a8eb  cc                             int3

; heuristic leaf/code range 0x31a924..0x31a92c unwind=0x0
31a924  e9 83 dd 0a 00                 jmp    0x3c86ac
31a929  cc                             int3
31a92a  cc                             int3
31a92b  cc                             int3

; pdata function 0x31530c..0x315515 unwind=0x3d3000
31530c  48 8b c4                       mov    rax,rsp
31530f  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
315313  55                             push   rbp
315314  48 8d 68 a1                    lea    rbp,[rax-0x5f]
315318  48 81 ec e0 00 00 00           sub    rsp,0xe0
31531f  0f 29 70 e8                    movaps XMMWORD PTR [rax-0x18],xmm6
315323  48 8b d9                       mov    rbx,rcx
315326  0f 29 78 d8                    movaps XMMWORD PTR [rax-0x28],xmm7
31532a  48 8d 4d 97                    lea    rcx,[rbp-0x69]
31532e  44 0f 29 40 c8                 movaps XMMWORD PTR [rax-0x38],xmm8
315333  f3 44 0f 10 02                 movss  xmm8,DWORD PTR [rdx]
315338  44 0f 29 48 b8                 movaps XMMWORD PTR [rax-0x48],xmm9
31533d  41 0f 28 f8                    movaps xmm7,xmm8
315341  f3 44 0f 10 4a 04              movss  xmm9,DWORD PTR [rdx+0x4]
315347  44 0f 29 50 a8                 movaps XMMWORD PTR [rax-0x58],xmm10
31534c  45 0f 28 d1                    movaps xmm10,xmm9
315350  44 0f 29 58 98                 movaps XMMWORD PTR [rax-0x68],xmm11
315355  f3 44 0f 10 5a 0c              movss  xmm11,DWORD PTR [rdx+0xc]
31535b  44 0f 29 60 88                 movaps XMMWORD PTR [rax-0x78],xmm12
315360  41 0f 28 c3                    movaps xmm0,xmm11
315364  44 0f 29 6c 24 60              movaps XMMWORD PTR [rsp+0x60],xmm13
31536a  f3 44 0f 10 6a 08              movss  xmm13,DWORD PTR [rdx+0x8]
315370  44 0f 29 74 24 50              movaps XMMWORD PTR [rsp+0x50],xmm14
315376  45 0f 28 e5                    movaps xmm12,xmm13
31537a  f3 45 0f 59 d1                 mulss  xmm10,xmm9
31537f  45 0f 28 f0                    movaps xmm14,xmm8
315383  f3 45 0f 59 f0                 mulss  xmm14,xmm8
315388  41 0f 28 cd                    movaps xmm1,xmm13
31538c  f3 45 0f 59 e5                 mulss  xmm12,xmm13
315391  f3 45 0f 58 d6                 addss  xmm10,xmm14
315396  f3 41 0f 59 c3                 mulss  xmm0,xmm11
31539b  f3 41 0f 59 fb                 mulss  xmm7,xmm11
3153a0  f3 41 0f 59 c9                 mulss  xmm1,xmm9
3153a5  41 0f 28 f2                    movaps xmm6,xmm10
3153a9  f3 41 0f 58 f4                 addss  xmm6,xmm12
3153ae  f3 0f 5c f9                    subss  xmm7,xmm1
3153b2  f3 0f 58 f0                    addss  xmm6,xmm0
3153b6  e8 01 28 0b 00                 call   0x3c7bbc
3153bb  0f 28 ce                       movaps xmm1,xmm6
3153be  f3 0f 59 0d fa dc f7 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff7dcfa]        # 0x2930c0 ; f32=0.4995
3153c6  0f 2f f9                       comiss xmm7,xmm1
3153c9  76 29                          jbe    0x3153f4
3153cb  41 0f 28 c8                    movaps xmm1,xmm8
3153cf  41 0f 28 c1                    movaps xmm0,xmm9
3153d3  e8 d4 32 0b 00                 call   0x3c86ac
3153d8  f3 0f 58 c0                    addss  xmm0,xmm0
3153dc  c7 45 97 db 0f c9 3f           mov    DWORD PTR [rbp-0x69],0x3fc90fdb
3153e3  f3 0f 11 45 9b                 movss  DWORD PTR [rbp-0x65],xmm0
3153e8  c7 45 9f 00 00 00 00           mov    DWORD PTR [rbp-0x61],0x0
3153ef  e9 af 00 00 00                 jmp    0x3154a3
3153f4  f3 0f 59 35 5c de f7 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff7de5c]        # 0x293258 ; f32=-0.4995
3153fc  0f 2f f7                       comiss xmm6,xmm7
3153ff  76 1e                          jbe    0x31541f
315401  41 0f 28 c8                    movaps xmm1,xmm8
315405  41 0f 28 c1                    movaps xmm0,xmm9
315409  e8 9e 32 0b 00                 call   0x3c86ac
31540e  f3 0f 59 05 4e de f7 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff7de4e]        # 0x293264 ; f32=-2
315416  c7 45 97 db 0f c9 bf           mov    DWORD PTR [rbp-0x69],0xbfc90fdb
31541d  eb c4                          jmp    0x3153e3
31541f  f3 0f 10 35 2d 7e f7 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff77e2d]        # 0x28d254 ; f32=1
315427  f3 45 0f 58 db                 addss  xmm11,xmm11
31542c  41 0f 28 c5                    movaps xmm0,xmm13
315430  f3 45 0f 58 d2                 addss  xmm10,xmm10
315435  f3 41 0f 58 c5                 addss  xmm0,xmm13
31543a  41 0f 28 cb                    movaps xmm1,xmm11
31543e  f3 41 0f 59 c9                 mulss  xmm1,xmm9
315443  f3 41 0f 59 c0                 mulss  xmm0,xmm8
315448  f3 0f 58 c1                    addss  xmm0,xmm1
31544c  0f 28 ce                       movaps xmm1,xmm6
31544f  f3 41 0f 5c ca                 subss  xmm1,xmm10
315454  e8 53 32 0b 00                 call   0x3c86ac
315459  f3 0f 58 ff                    addss  xmm7,xmm7
31545d  f3 0f 11 45 9b                 movss  DWORD PTR [rbp-0x65],xmm0
315462  0f 28 c7                       movaps xmm0,xmm7
315465  e8 7a 54 00 00                 call   0x31a8e4
31546a  f3 45 0f 58 c0                 addss  xmm8,xmm8
31546f  f3 45 0f 59 dd                 mulss  xmm11,xmm13
315474  f3 45 0f 58 e6                 addss  xmm12,xmm14
315479  f3 0f 11 45 97                 movss  DWORD PTR [rbp-0x69],xmm0
31547e  f3 45 0f 59 c1                 mulss  xmm8,xmm9
315483  f3 45 0f 58 e4                 addss  xmm12,xmm12
315488  f3 45 0f 58 c3                 addss  xmm8,xmm11
31548d  f3 41 0f 5c f4                 subss  xmm6,xmm12
315492  41 0f 28 c0                    movaps xmm0,xmm8
315496  0f 28 ce                       movaps xmm1,xmm6
315499  e8 0e 32 0b 00                 call   0x3c86ac
31549e  f3 0f 11 45 9f                 movss  DWORD PTR [rbp-0x61],xmm0
3154a3  f3 0f 10 15 51 dd f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff7dd51]        # 0x2931fc ; f32=57.2958
3154ab  48 8d 55 b7                    lea    rdx,[rbp-0x49]
3154af  48 8d 4d 97                    lea    rcx,[rbp-0x69]
3154b3  e8 b4 a1 fc ff                 call   0x2df66c
3154b8  48 8d 55 a7                    lea    rdx,[rbp-0x59]
3154bc  48 8b cb                       mov    rcx,rbx
3154bf  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3154c3  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3154c6  f2 0f 11 45 a7                 movsd  QWORD PTR [rbp-0x59],xmm0
3154cb  89 45 af                       mov    DWORD PTR [rbp-0x51],eax
3154ce  e8 69 1b 00 00                 call   0x31703c
3154d3  44 0f 28 74 24 50              movaps xmm14,XMMWORD PTR [rsp+0x50]
3154d9  4c 8d 9c 24 e0 00 00 00        lea    r11,[rsp+0xe0]
3154e1  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
3154e6  48 8b c3                       mov    rax,rbx
3154e9  49 8b 5b 10                    mov    rbx,QWORD PTR [r11+0x10]
3154ed  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
3154f2  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
3154f7  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
3154fc  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
315501  45 0f 28 5b a0                 movaps xmm11,XMMWORD PTR [r11-0x60]
315506  45 0f 28 63 90                 movaps xmm12,XMMWORD PTR [r11-0x70]
31550b  45 0f 28 6b 80                 movaps xmm13,XMMWORD PTR [r11-0x80]
315510  49 8b e3                       mov    rsp,r11
315513  5d                             pop    rbp
315514  c3                             ret

; pdata function 0x36b758..0x36b938 unwind=0x3d3f38
36b758  48 8b c4                       mov    rax,rsp
36b75b  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
36b75f  48 89 68 18                    mov    QWORD PTR [rax+0x18],rbp
36b763  56                             push   rsi
36b764  57                             push   rdi
36b765  41 54                          push   r12
36b767  41 56                          push   r14
36b769  41 57                          push   r15
36b76b  48 81 ec b0 00 00 00           sub    rsp,0xb0
36b772  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
36b776  4c 8b c1                       mov    r8,rcx
36b779  e8 8a f7 f5 ff                 call   0x2caf08
36b77e  84 c0                          test   al,al
36b780  0f 84 8e 01 00 00              je     0x36b914
36b786  ba 90 00 00 00                 mov    edx,0x90
36b78b  49 8b c8                       mov    rcx,r8
36b78e  e8 a9 36 f7 ff                 call   0x2dee3c
36b793  4c 8b 30                       mov    r14,QWORD PTR [rax]
36b796  49 8b ce                       mov    rcx,r14
36b799  e8 6a f7 f5 ff                 call   0x2caf08
36b79e  84 c0                          test   al,al
36b7a0  0f 84 6e 01 00 00              je     0x36b914
36b7a6  45 8b 7e 18                    mov    r15d,DWORD PTR [r14+0x18]
36b7aa  45 85 ff                       test   r15d,r15d
36b7ad  0f 8e 61 01 00 00              jle    0x36b914
36b7b3  33 ff                          xor    edi,edi
36b7b5  0f 57 f6                       xorps  xmm6,xmm6
36b7b8  33 f6                          xor    esi,esi
36b7ba  49 bc 25 23 22 84 e4 9c f2 cb  movabs r12,0xcbf29ce484222325
36b7c4  49 8b 6e 10                    mov    rbp,QWORD PTR [r14+0x10]
36b7c8  48 8b cd                       mov    rcx,rbp
36b7cb  e8 38 f7 f5 ff                 call   0x2caf08
36b7d0  84 c0                          test   al,al
36b7d2  0f 84 ed 00 00 00              je     0x36b8c5
36b7d8  8d 04 f5 00 00 00 00           lea    eax,[rsi*8+0x0]
36b7df  48 63 c8                       movsxd rcx,eax
36b7e2  48 8b 6c 29 20                 mov    rbp,QWORD PTR [rcx+rbp*1+0x20]
36b7e7  48 8b cd                       mov    rcx,rbp
36b7ea  e8 19 f7 f5 ff                 call   0x2caf08
36b7ef  84 c0                          test   al,al
36b7f1  0f 84 ce 00 00 00              je     0x36b8c5
36b7f7  48 8b cd                       mov    rcx,rbp
36b7fa  e8 55 a2 f7 ff                 call   0x2e5a54
36b7ff  48 8b c8                       mov    rcx,rax
36b802  48 8b d0                       mov    rdx,rax
36b805  e8 fe f6 f5 ff                 call   0x2caf08
36b80a  84 c0                          test   al,al
36b80c  0f 84 b3 00 00 00              je     0x36b8c5
36b812  48 8b ca                       mov    rcx,rdx
36b815  e8 3a ab f6 ff                 call   0x2d6354
36b81a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
36b81f  48 8b d8                       mov    rbx,rax
36b822  48 8d 8c 24 e8 00 00 00        lea    rcx,[rsp+0xe8]
36b82a  e8 1d fb ff ff                 call   0x36b34c ; STRING getter=0x36b34c ProjectileWeaponMod
36b82f  48 8b c8                       mov    rcx,rax
36b832  e8 5d 4c fb ff                 call   0x320494
36b837  48 8b c8                       mov    rcx,rax
36b83a  49 8b d4                       mov    rdx,r12
36b83d  e8 0a a3 f7 ff                 call   0x2e5b4c
36b842  48 3b d8                       cmp    rbx,rax
36b845  75 7e                          jne    0x36b8c5
36b847  48 8b cd                       mov    rcx,rbp
36b84a  e8 cd 7d 00 00                 call   0x37361c
36b84f  48 8b c8                       mov    rcx,rax
36b852  4c 8b c0                       mov    r8,rax
36b855  e8 ae f6 f5 ff                 call   0x2caf08
36b85a  84 c0                          test   al,al
36b85c  74 67                          je     0x36b8c5
36b85e  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
36b863  49 8b c8                       mov    rcx,r8
36b866  e8 ad c5 f6 ff                 call   0x2d7e18
36b86b  48 8b c8                       mov    rcx,rax
36b86e  e8 79 1f f6 ff                 call   0x2cd7ec
36b873  48 8b c8                       mov    rcx,rax
36b876  e8 d9 aa f6 ff                 call   0x2d6354
36b87b  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36b880  48 8b d8                       mov    rbx,rax
36b883  e8 6c 0c f6 ff                 call   0x2cc4f4
36b888  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
36b88d  48 8d 8c 24 e8 00 00 00        lea    rcx,[rsp+0xe8]
36b895  e8 3e fb ff ff                 call   0x36b3d8 ; STRING getter=0x36b3d8 assets/prefabs/weapon mods/gascompressionoverdrive/gascompressionoverdrive.entity.prefab
36b89a  48 8b c8                       mov    rcx,rax
36b89d  e8 e2 0a 00 00                 call   0x36c384
36b8a2  48 8b c8                       mov    rcx,rax
36b8a5  49 8b d4                       mov    rdx,r12
36b8a8  e8 9f a2 f7 ff                 call   0x2e5b4c
36b8ad  80 bd 30 02 00 00 00           cmp    BYTE PTR [rbp+0x230],0x0
36b8b4  75 05                          jne    0x36b8bb
36b8b6  48 3b d8                       cmp    rbx,rax
36b8b9  75 0a                          jne    0x36b8c5
36b8bb  f3 0f 58 b5 48 02 00 00        addss  xmm6,DWORD PTR [rbp+0x248]
36b8c3  ff c7                          inc    edi
36b8c5  ff c6                          inc    esi
36b8c7  41 3b f7                       cmp    esi,r15d
36b8ca  0f 8c f4 fe ff ff              jl     0x36b7c4
36b8d0  f3 0f 10 0d 7c 19 f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff2197c]        # 0x28d254 ; f32=1
36b8d8  85 ff                          test   edi,edi
36b8da  74 0d                          je     0x36b8e9
36b8dc  66 0f 6e c7                    movd   xmm0,edi
36b8e0  0f 5b c0                       cvtdq2ps xmm0,xmm0
36b8e3  f3 0f 5e f0                    divss  xmm6,xmm0
36b8e7  eb 03                          jmp    0x36b8ec
36b8e9  0f 28 f1                       movaps xmm6,xmm1
36b8ec  80 3d f5 c3 06 00 00           cmp    BYTE PTR [rip+0x6c3f5],0x0        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
36b8f3  74 18                          je     0x36b90d
36b8f5  0f 2e 35 60 ce f3 ff           ucomiss xmm6,DWORD PTR [rip+0xfffffffffff3ce60]        # 0x2a875c ; f32=1.025
36b8fc  7a 0f                          jp     0x36b90d
36b8fe  75 0d                          jne    0x36b90d
36b900  f3 0f 5c 35 90 77 f2 ff        subss  xmm6,DWORD PTR [rip+0xfffffffffff27790]        # 0x293098 ; f32=0.05
36b908  0f 28 c6                       movaps xmm0,xmm6
36b90b  eb 0a                          jmp    0x36b917
36b90d  0f 2e f1                       ucomiss xmm6,xmm1
36b910  7a f6                          jp     0x36b908
36b912  75 f4                          jne    0x36b908
36b914  0f 57 c0                       xorps  xmm0,xmm0
36b917  4c 8d 9c 24 b0 00 00 00        lea    r11,[rsp+0xb0]
36b91f  49 8b 5b 30                    mov    rbx,QWORD PTR [r11+0x30]
36b923  49 8b 6b 40                    mov    rbp,QWORD PTR [r11+0x40]
36b927  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
36b92c  49 8b e3                       mov    rsp,r11
36b92f  41 5f                          pop    r15
36b931  41 5e                          pop    r14
36b933  41 5c                          pop    r12
36b935  5f                             pop    rdi
36b936  5e                             pop    rsi
36b937  c3                             ret

; pdata function 0x36b504..0x36b52e unwind=0x3d2064
36b504  48 83 ec 28                    sub    rsp,0x28
36b508  48 8b d1                       mov    rdx,rcx
36b50b  e8 f8 f9 f5 ff                 call   0x2caf08
36b510  84 c0                          test   al,al
36b512  75 05                          jne    0x36b519
36b514  0f 57 c0                       xorps  xmm0,xmm0
36b517  eb 10                          jmp    0x36b529
36b519  f3 0f 10 82 ac 03 00 00        movss  xmm0,DWORD PTR [rdx+0x3ac]
36b521  f3 0f 58 05 2b 1d f2 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff21d2b]        # 0x28d254 ; f32=1
36b529  48 83 c4 28                    add    rsp,0x28
36b52d  c3                             ret

