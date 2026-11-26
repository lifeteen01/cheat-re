31fa71 call   0x2cc4f4
31fa76 lea    rdx,[rbp+0x86e]
31fa7d lea    rcx,[rbp+0xa88]
31fa84 call   0x2f2df8 ; STRING getter=0x2f2df8 ScientistNPC2
31fa89 mov    rcx,rax
31fa8c call   0x2d861c
31fa91 mov    rcx,rax
31fa94 mov    rdx,r14
31fa97 call   0x2e5b4c
31fa9c cmp    rsi,rax
31fa9f jne    0x31faf7
31faa1 mov    rcx,QWORD PTR [rsp+0x20]
31faa6 lea    rdx,[rbp+0x218]
31faad mov    r8d,0x35
31fab3 call   0x368be8
31fab8 mov    rcx,QWORD PTR [rbp-0x50]
31fabc lea    rdx,[rbp+0x740]
31fac3 call   0x36ca34
31fac8 mov    rcx,rax
31facb lea    rdx,[rbp+0x218]
31fad2 call   0x2dff30
31fad7 movd   xmm1,DWORD PTR [rip+0xb86b9]        # 0x3d8198 ; CONFIG i.ScientistMaxDistance value(+0x48)
31fadf cvtdq2ps xmm1,xmm1
31fae2 comiss xmm1,xmm0
31fae5 jb     0x31faf7
31fae7 mov    rdx,QWORD PTR [rsp+0x20]
31faec mov    r8b,0x1
31faef mov    rcx,r13
31faf2 call   0x3177b4
31faf7 mov    eax,0x6
31fafc cmp    r12w,ax
31fb00 jne    0x31fdfb
31fb06 mov    rdx,QWORD PTR [rsp+0x20]
31fb0b cmp    rdx,r15
31fb0e je     0x31fdfb
31fb14 cmp    BYTE PTR [rip+0xb844d],dil        # 0x3d7f68 ; CONFIG Bools.SilentMeleePlayers value(+0x48)
31fb1b je     0x31fb84
31fb1d mov    rsi,QWORD PTR [rbp+0xc0]
31fb24 mov    rcx,rsi
31fb27 call   0x2caf08
31fb2c test   al,al
31fb2e je     0x31fb8b
31fb30 mov    rcx,rdx
31fb33 call   0x36a0e0
31fb38 test   al,al
31fb3a je     0x31fb71
31fb3c lea    rdx,[rbp+0x74c]
31fb43 mov    rcx,r15
31fb46 call   0x369164
31fb4b mov    rcx,QWORD PTR [rsp+0x20]
31fb50 lea    rdx,[rbp+0xf0]
31fb57 movsd  xmm0,QWORD PTR [rax]
31fb5b mov    eax,DWORD PTR [rax+0x8]
31fb5e movsd  QWORD PTR [rbp+0xf0],xmm0
31fb66 mov    DWORD PTR [rbp+0xf8],eax
31fb6c call   0x3666b0
31fb71 mov    rdx,QWORD PTR [rsp+0x20]
31fb76 cmp    rsi,rdx
31fb79 jne    0x31fb8b
31fb7b mov    QWORD PTR [rip+0xb773e],rdx        # 0x3d72c0
31fb82 jmp    0x31fb8b
31fb84 mov    QWORD PTR [rip+0xb7735],rdi        # 0x3d72c0
31fb8b mov    rcx,r13
31fb8e call   0x31787c
31fb93 mov    rcx,QWORD PTR [rsp+0x20]
31fb98 call   0x3693b0
31fb9d mov    rcx,QWORD PTR [rsp+0x20]
31fba2 mov    r12b,al
31fba5 call   0x368244
31fbaa mov    rcx,QWORD PTR [rsp+0x20]
31fbaf mov    bl,al
31fbb1 call   0x36b288
31fbb6 test   al,al
31fbb8 jne    0x31fbbe
31fbba test   bl,bl
31fbbc je     0x31fbcb
31fbbe cmp    BYTE PTR [rip+0xc7c73],dil        # 0x3e7838 ; CONFIG Bools.Wounded value(+0x48)
31fbc5 je     0x31fdfb
31fbcb mov    rcx,QWORD PTR [rsp+0x20]
31fbd0 call   0x36acb8
31fbd5 test   al,al
31fbd7 je     0x31fbe6
31fbd9 cmp    BYTE PTR [rip+0xc7a78],dil        # 0x3e7658 ; CONFIG Bools.SafeZone value(+0x48)
31fbe0 je     0x31fdfb
31fbe6 mov    rcx,QWORD PTR [rsp+0x20]
31fbeb xor    edx,edx
31fbed call   0x36a20c
31fbf2 test   al,al
31fbf4 je     0x31fc07
31fbf6 mov    rcx,QWORD PTR [rsp+0x20]
31fbfb call   0x36821c
31fc00 mov    r14b,0x1
31fc03 test   al,al
31fc05 je     0x31fc0a
31fc07 mov    r14b,dil
31fc0a mov    rcx,QWORD PTR [rsp+0x20]
31fc0f xor    edx,edx
31fc11 call   0x36a20c
31fc16 test   al,al
31fc18 je     0x31fc24
31fc1a mov    rcx,QWORD PTR [rsp+0x20]
31fc1f call   0x36821c
31fc24 mov    rcx,QWORD PTR [rsp+0x20]
31fc29 call   0x36a178
31fc2e mov    r15b,al
31fc31 test   al,al
31fc33 je     0x31fc3e
31fc35 cmp    BYTE PTR [rip+0xc77ec],dil        # 0x3e7428 ; CONFIG Bools.Scientist value(+0x48)
31fc3c jmp    0x31fc45
31fc3e cmp    BYTE PTR [rip+0xc7603],dil        # 0x3e7248 ; CONFIG Bools.PlayerESP value(+0x48)
31fc45 je     0x31fdf6
31fc4b mov    rcx,QWORD PTR [rsp+0x20]
31fc50 xor    edx,edx
31fc52 call   0x2cd32c
31fc57 mov    rcx,QWORD PTR [rsp+0x20]
31fc5c mov    rbx,rax
31fc5f call   0x36af58
31fc64 test   rbx,rbx
31fc67 je     0x31fc74
31fc69 cmp    rbx,QWORD PTR [rbp+0xb8]
31fc70 mov    bl,0x1
31fc72 je     0x31fc77
31fc74 mov    bl,dil
31fc77 mov    edi,DWORD PTR [rbp-0x5c]
31fc7a lea    rdx,[rsp+0x28]
31fc7f mov    rcx,QWORD PTR [rsp+0x20]
31fc84 xor    r8d,r8d
31fc87 or     edi,0x1
31fc8a call   0x369e70
31fc8f mov    rdx,rax
31fc92 lea    rcx,[rip+0xb75c7]        # 0x3d7260
31fc99 call   0x2df608
31fc9e cmp    DWORD PTR [rax+0x24],0x1
31fca2 je     0x31fcad
31fca4 test   bl,bl
31fca6 jne    0x31fcad
31fca8 xor    sil,sil
31fcab jmp    0x31fcb0
31fcad mov    sil,0x1
31fcb0 and    edi,0xfffffffe
31fcb3 lea    rcx,[rsp+0x28]
31fcb8 mov    DWORD PTR [rbp-0x5c],edi
31fcbb call   0x2cc4f4
31fcc0 mov    rcx,QWORD PTR [rsp+0x20]
31fcc5 lea    rdx,[rsp+0x28]
31fcca xor    r8d,r8d
31fccd call   0x369e70
31fcd2 mov    rdx,rax
31fcd5 lea    rcx,[rip+0xb7584]        # 0x3d7260
31fcdc call   0x2df608
31fce1 lea    rcx,[rsp+0x28]
31fce6 mov    edi,DWORD PTR [rax+0x24]
31fce9 call   0x2cc4f4
31fcee cmp    edi,0x2
31fcf1 jne    0x31fd15
31fcf3 xor    r8d,r8d
31fcf6 lea    rdx,[rbp+0x978]
31fcfd lea    rcx,[rip+0xd0a74]        # 0x3f0778 ; CONFIG VectorBools.EnemyOptions value(+0x48)
31fd04 call   0x2e98f0
31fd09 mov    rcx,rax
31fd0c call   0x2d4d70
31fd11 test   al,al
31fd13 jne    0x31fd22
31fd15 cmp    BYTE PTR [rip+0xc761c],0x0        # 0x3e7338 ; CONFIG Bools.Sleepers value(+0x48)
31fd1c jne    0x31fd22
31fd1e xor    bl,bl
31fd20 jmp    0x31fd24
31fd22 mov    bl,0x1
31fd24 cmp    edi,0x2
31fd27 jne    0x31fd4c
31fd29 lea    r8d,[rdi-0x1]
31fd2d lea    rdx,[rbp+0x988]
31fd34 lea    rcx,[rip+0xd0a3d]        # 0x3f0778 ; CONFIG VectorBools.EnemyOptions value(+0x48)
31fd3b call   0x2e98f0
31fd40 mov    rcx,rax
31fd43 call   0x2d4d70
31fd48 test   al,al
31fd4a jne    0x31fd59
31fd4c cmp    BYTE PTR [rip+0xc7685],0x0        # 0x3e73d8 ; CONFIG Bools.Dead value(+0x48)
31fd53 jne    0x31fd59
31fd55 xor    al,al
31fd57 jmp    0x31fd5b
31fd59 mov    al,0x1
31fd5b test   r12b,r12b
31fd5e je     0x31fd68
31fd60 test   al,al
31fd62 je     0x31fdf6
31fd68 test   r14b,r14b
31fd6b je     0x31fd75
31fd6d test   bl,bl
31fd6f je     0x31fdf6
31fd75 test   sil,sil
31fd78 je     0x31fd83
31fd7a cmp    BYTE PTR [rip+0xc9e07],0x0        # 0x3e9b88 ; CONFIG Bools.drawteam value(+0x48)
31fd81 je     0x31fdf6
31fd83 cmp    edi,0x2
31fd86 jne    0x31fd91
31fd88 cmp    BYTE PTR [rip+0xca3e9],0x0        # 0x3ea178 ; CONFIG Bools.draweenemy value(+0x48)
31fd8f je     0x31fdf6
31fd91 mov    rcx,QWORD PTR [rsp+0x20]
31fd96 lea    rdx,[rbp+0x288]
31fd9d mov    r8d,0x35
31fda3 call   0x368be8
31fda8 mov    rcx,QWORD PTR [rbp-0x50]
31fdac lea    rdx,[rbp+0x758]
31fdb3 call   0x36ca34
31fdb8 mov    rcx,rax
31fdbb lea    rdx,[rbp+0x288]
31fdc2 call   0x2dff30
31fdc7 test   r15b,r15b
31fdca je     0x31fdd6
31fdcc movd   xmm1,DWORD PTR [rip+0xb83c4]        # 0x3d8198 ; CONFIG i.ScientistMaxDistance value(+0x48)
31fdd4 jmp    0x31fdde
31fdd6 movd   xmm1,DWORD PTR [rip+0xb836a]        # 0x3d8148 ; CONFIG i.PlayerMaxDistance value(+0x48)
31fdde cvtdq2ps xmm1,xmm1
31fde1 comiss xmm0,xmm1
31fde4 ja     0x31fdf6
31fde6 mov    rdx,QWORD PTR [rsp+0x20]
31fdeb xor    r8d,r8d
31fdee mov    rcx,r13
31fdf1 call   0x3177b4
31fdf6 mov    r15,QWORD PTR [rsp+0x48]
31fdfb mov    eax,DWORD PTR [rbp+0xa98]
31fe01 mov    rbx,QWORD PTR [rbp+0xb0]
31fe08 inc    eax
31fe0a mov    edi,eax
31fe0c mov    DWORD PTR [rbp+0xa98],eax
