; pdata function 0x368a84..0x368b0f unwind=0x3d2038
368a84  40 53                          rex push rbx
368a86  48 83 ec 20                    sub    rsp,0x20
368a8a  48 8b d9                       mov    rbx,rcx
368a8d  e8 76 24 f6 ff                 call   0x2caf08
368a92  84 c0                          test   al,al
368a94  75 08                          jne    0x368a9e
368a96  33 c0                          xor    eax,eax
368a98  48 83 c4 20                    add    rsp,0x20
368a9c  5b                             pop    rbx
368a9d  c3                             ret
368a9e  8b 0d bc 60 09 00              mov    ecx,DWORD PTR [rip+0x960bc]        # 0x3feb60
368aa4  f6 c1 01                       test   cl,0x1
368aa7  75 20                          jne    0x368ac9
368aa9  4c 8b 05 50 e4 06 00           mov    r8,QWORD PTR [rip+0x6e450]        # 0x3d6f00
368ab0  83 c9 01                       or     ecx,0x1
368ab3  49 81 c0 00 3e f8 03           add    r8,0x3f83e00
368aba  89 0d a0 60 09 00              mov    DWORD PTR [rip+0x960a0],ecx        # 0x3feb60
368ac0  4c 89 05 91 60 09 00           mov    QWORD PTR [rip+0x96091],r8        # 0x3feb58
368ac7  eb 07                          jmp    0x368ad0
368ac9  4c 8b 05 88 60 09 00           mov    r8,QWORD PTR [rip+0x96088]        # 0x3feb58
368ad0  f6 c1 02                       test   cl,0x2
368ad3  75 1f                          jne    0x368af4
368ad5  83 c9 02                       or     ecx,0x2
368ad8  48 8d 15 91 60 09 00           lea    rdx,[rip+0x96091]        # 0x3feb70
368adf  89 0d 7b 60 09 00              mov    DWORD PTR [rip+0x9607b],ecx        # 0x3feb60
368ae5  45 33 c9                       xor    r9d,r9d
368ae8  48 8b 0d 71 d3 06 00           mov    rcx,QWORD PTR [rip+0x6d371]        # 0x3d5e60
368aef  e8 30 32 f6 ff                 call   0x2cbd24
368af4  48 8b 0d 65 d3 06 00           mov    rcx,QWORD PTR [rip+0x6d365]        # 0x3d5e60
368afb  48 8d 15 6e 60 09 00           lea    rdx,[rip+0x9606e]        # 0x3feb70
368b02  4c 8b c3                       mov    r8,rbx
368b05  48 83 c4 20                    add    rsp,0x20
368b09  5b                             pop    rbx
368b0a  e9 ed 2e f6 ff                 jmp    0x2cb9fc

; pdata function 0x37154c..0x3715d7 unwind=0x3d2038
37154c  40 53                          rex push rbx
37154e  48 83 ec 20                    sub    rsp,0x20
371552  48 8b d9                       mov    rbx,rcx
371555  e8 ae 99 f5 ff                 call   0x2caf08
37155a  84 c0                          test   al,al
37155c  75 08                          jne    0x371566
37155e  33 c0                          xor    eax,eax
371560  48 83 c4 20                    add    rsp,0x20
371564  5b                             pop    rbx
371565  c3                             ret
371566  8b 0d e4 f5 08 00              mov    ecx,DWORD PTR [rip+0x8f5e4]        # 0x400b50
37156c  f6 c1 01                       test   cl,0x1
37156f  75 20                          jne    0x371591
371571  4c 8b 05 88 59 06 00           mov    r8,QWORD PTR [rip+0x65988]        # 0x3d6f00
371578  83 c9 01                       or     ecx,0x1
37157b  49 81 c0 60 63 4d 04           add    r8,0x44d6360
371582  89 0d c8 f5 08 00              mov    DWORD PTR [rip+0x8f5c8],ecx        # 0x400b50
371588  4c 89 05 b9 f5 08 00           mov    QWORD PTR [rip+0x8f5b9],r8        # 0x400b48
37158f  eb 07                          jmp    0x371598
371591  4c 8b 05 b0 f5 08 00           mov    r8,QWORD PTR [rip+0x8f5b0]        # 0x400b48
371598  f6 c1 02                       test   cl,0x2
37159b  75 1f                          jne    0x3715bc
37159d  83 c9 02                       or     ecx,0x2
3715a0  48 8d 15 b9 f5 08 00           lea    rdx,[rip+0x8f5b9]        # 0x400b60
3715a7  89 0d a3 f5 08 00              mov    DWORD PTR [rip+0x8f5a3],ecx        # 0x400b50
3715ad  45 33 c9                       xor    r9d,r9d
3715b0  48 8b 0d a9 48 06 00           mov    rcx,QWORD PTR [rip+0x648a9]        # 0x3d5e60
3715b7  e8 68 a7 f5 ff                 call   0x2cbd24
3715bc  48 8b 0d 9d 48 06 00           mov    rcx,QWORD PTR [rip+0x6489d]        # 0x3d5e60
3715c3  48 8d 15 96 f5 08 00           lea    rdx,[rip+0x8f596]        # 0x400b60
3715ca  4c 8b c3                       mov    r8,rbx
3715cd  48 83 c4 20                    add    rsp,0x20
3715d1  5b                             pop    rbx
3715d2  e9 25 a4 f5 ff                 jmp    0x2cb9fc

; pdata function 0x36b938..0x36b99d unwind=0x3d2534
36b938  40 53                          rex push rbx
36b93a  48 83 ec 50                    sub    rsp,0x50
36b93e  48 8b d1                       mov    rdx,rcx
36b941  e8 c2 f5 f5 ff                 call   0x2caf08
36b946  84 c0                          test   al,al
36b948  74 4b                          je     0x36b995
36b94a  48 8b ca                       mov    rcx,rdx
36b94d  e8 62 0a 00 00                 call   0x36c3b4
36b952  48 8b c8                       mov    rcx,rax
36b955  48 8b d0                       mov    rdx,rax
36b958  e8 ab f5 f5 ff                 call   0x2caf08
36b95d  84 c0                          test   al,al
36b95f  74 34                          je     0x36b995
36b961  48 8b 5a 20                    mov    rbx,QWORD PTR [rdx+0x20]
36b965  48 8b cb                       mov    rcx,rbx
36b968  e8 9b f5 f5 ff                 call   0x2caf08
36b96d  84 c0                          test   al,al
36b96f  74 24                          je     0x36b995
36b971  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
36b976  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
36b97b  e8 00 fa ff ff                 call   0x36b380 ; STRING getter=0x36b380 ItemModProjectile, Assembly-CSharp
36b980  48 8b c8                       mov    rcx,rax
36b983  e8 84 67 fb ff                 call   0x32210c
36b988  48 8b d0                       mov    rdx,rax
36b98b  48 8b cb                       mov    rcx,rbx
36b98e  e8 59 4a 00 00                 call   0x3703ec
36b993  eb 02                          jmp    0x36b997
36b995  33 c0                          xor    eax,eax
36b997  48 83 c4 50                    add    rsp,0x50
36b99b  5b                             pop    rbx
36b99c  c3                             ret

; pdata function 0x371630..0x371685 unwind=0x3d2534
371630  40 53                          rex push rbx
371632  48 83 ec 50                    sub    rsp,0x50
371636  48 8b d1                       mov    rdx,rcx
371639  e8 ca 98 f5 ff                 call   0x2caf08
37163e  84 c0                          test   al,al
371640  74 3b                          je     0x37167d
371642  48 8b ca                       mov    rcx,rdx
371645  e8 02 ff ff ff                 call   0x37154c
37164a  48 8b c8                       mov    rcx,rax
37164d  48 8b d8                       mov    rbx,rax
371650  e8 b3 98 f5 ff                 call   0x2caf08
371655  84 c0                          test   al,al
371657  74 24                          je     0x37167d
371659  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
37165e  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
371663  e8 b0 fb ff ff                 call   0x371218 ; STRING getter=0x371218 ItemModProjectile, Assembly-CSharp
371668  48 8b c8                       mov    rcx,rax
37166b  e8 9c 0a fb ff                 call   0x32210c
371670  48 8b d0                       mov    rdx,rax
371673  48 8b cb                       mov    rcx,rbx
371676  e8 71 ed ff ff                 call   0x3703ec
37167b  eb 02                          jmp    0x37167f
37167d  33 c0                          xor    eax,eax
37167f  48 83 c4 50                    add    rsp,0x50
371683  5b                             pop    rbx
371684  c3                             ret

; pdata function 0x372abc..0x372b2f unwind=0x3d20e4
372abc  40 53                          rex push rbx
372abe  48 83 ec 40                    sub    rsp,0x40
372ac2  48 8b d1                       mov    rdx,rcx
372ac5  e8 3e 84 f5 ff                 call   0x2caf08
372aca  84 c0                          test   al,al
372acc  74 59                          je     0x372b27
372ace  4c 8b 42 20                    mov    r8,QWORD PTR [rdx+0x20]
372ad2  49 8b c8                       mov    rcx,r8
372ad5  e8 2e 84 f5 ff                 call   0x2caf08
372ada  84 c0                          test   al,al
372adc  74 49                          je     0x372b27
372ade  49 8b 48 10                    mov    rcx,QWORD PTR [r8+0x10]
372ae2  e8 21 84 f5 ff                 call   0x2caf08
372ae7  84 c0                          test   al,al
372ae9  74 3c                          je     0x372b27
372aeb  49 8b 48 10                    mov    rcx,QWORD PTR [r8+0x10]
372aef  e8 60 fc ff ff                 call   0x372754
372af4  48 8b c8                       mov    rcx,rax
372af7  48 8b d8                       mov    rbx,rax
372afa  e8 09 84 f5 ff                 call   0x2caf08
372aff  84 c0                          test   al,al
372b01  74 24                          je     0x372b27
372b03  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
372b08  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
372b0d  e8 62 fb ff ff                 call   0x372674 ; STRING getter=0x372674 Projectile, Assembly-CSharp
372b12  48 8b c8                       mov    rcx,rax
372b15  e8 6a da fa ff                 call   0x320584
372b1a  48 8b d0                       mov    rdx,rax
372b1d  48 8b cb                       mov    rcx,rbx
372b20  e8 13 db ff ff                 call   0x370638
372b25  eb 02                          jmp    0x372b29
372b27  33 c0                          xor    eax,eax
372b29  48 83 c4 40                    add    rsp,0x40
372b2d  5b                             pop    rbx
372b2e  c3                             ret

; pdata function 0x372b30..0x372ba3 unwind=0x3d2534
372b30  40 53                          rex push rbx
372b32  48 83 ec 50                    sub    rsp,0x50
372b36  48 8b d1                       mov    rdx,rcx
372b39  e8 ca 83 f5 ff                 call   0x2caf08
372b3e  84 c0                          test   al,al
372b40  74 59                          je     0x372b9b
372b42  4c 8b 42 20                    mov    r8,QWORD PTR [rdx+0x20]
372b46  49 8b c8                       mov    rcx,r8
372b49  e8 ba 83 f5 ff                 call   0x2caf08
372b4e  84 c0                          test   al,al
372b50  74 49                          je     0x372b9b
372b52  49 8b 48 10                    mov    rcx,QWORD PTR [r8+0x10]
372b56  e8 ad 83 f5 ff                 call   0x2caf08
372b5b  84 c0                          test   al,al
372b5d  74 3c                          je     0x372b9b
372b5f  49 8b 48 10                    mov    rcx,QWORD PTR [r8+0x10]
372b63  e8 ec fb ff ff                 call   0x372754
372b68  48 8b c8                       mov    rcx,rax
372b6b  48 8b d8                       mov    rbx,rax
372b6e  e8 95 83 f5 ff                 call   0x2caf08
372b73  84 c0                          test   al,al
372b75  74 24                          je     0x372b9b
372b77  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
372b7c  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
372b81  e8 0a fb ff ff                 call   0x372690 ; STRING getter=0x372690 ServerProjectile, Assembly-CSharp
372b86  48 8b c8                       mov    rcx,rax
372b89  e8 f6 f6 fb ff                 call   0x332284
372b8e  48 8b d0                       mov    rdx,rax
372b91  48 8b cb                       mov    rcx,rbx
372b94  e8 9f da ff ff                 call   0x370638
372b99  eb 02                          jmp    0x372b9d
372b9b  33 c0                          xor    eax,eax
372b9d  48 83 c4 50                    add    rsp,0x50
372ba1  5b                             pop    rbx
372ba2  c3                             ret

; pdata function 0x368100..0x36817a unwind=0x3d25f0
368100  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
368105  57                             push   rdi
368106  48 83 ec 50                    sub    rsp,0x50
36810a  48 8b fa                       mov    rdi,rdx
36810d  4c 8b c1                       mov    r8,rcx
368110  e8 f3 2d f6 ff                 call   0x2caf08
368115  84 c0                          test   al,al
368117  75 0a                          jne    0x368123
368119  48 8b ca                       mov    rcx,rdx
36811c  e8 9b fa 05 00                 call   0x3c7bbc
368121  eb 49                          jmp    0x36816c
368123  48 8d 54 24 3c                 lea    rdx,[rsp+0x3c]
368128  49 8b c8                       mov    rcx,r8
36812b  e8 dc 10 00 00                 call   0x36920c
368130  f3 0f 10 1d 1c 51 f2 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff2511c]        # 0x28d254 ; f32=1
368138  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
36813d  0f 57 d2                       xorps  xmm2,xmm2
368140  0f 57 c9                       xorps  xmm1,xmm1
368143  48 8b d8                       mov    rbx,rax
368146  e8 5d fa 05 00                 call   0x3c7ba8
36814b  4c 8d 44 24 20                 lea    r8,[rsp+0x20]
368150  48 8b d7                       mov    rdx,rdi
368153  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
368156  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
36815a  89 4c 24 28                    mov    DWORD PTR [rsp+0x28],ecx
36815e  48 8b cb                       mov    rcx,rbx
368161  f2 0f 11 44 24 20              movsd  QWORD PTR [rsp+0x20],xmm0
368167  e8 c8 76 f8 ff                 call   0x2ef834
36816c  48 8b 5c 24 60                 mov    rbx,QWORD PTR [rsp+0x60]
368171  48 8b c7                       mov    rax,rdi
368174  48 83 c4 50                    add    rsp,0x50
368178  5f                             pop    rdi
368179  c3                             ret

; pdata function 0x369164..0x3691be unwind=0x3d2038
369164  40 53                          rex push rbx
369166  48 83 ec 20                    sub    rsp,0x20
36916a  48 8b da                       mov    rbx,rdx
36916d  4c 8b c1                       mov    r8,rcx
369170  e8 93 1d f6 ff                 call   0x2caf08
369175  84 c0                          test   al,al
369177  74 34                          je     0x3691ad
369179  80 3d c8 ec 08 00 00           cmp    BYTE PTR [rip+0x8ecc8],0x0        # 0x3f7e48 ; CONFIG Bools.SpecialTeleport value(+0x48)
369180  49 8b c8                       mov    rcx,r8
369183  74 07                          je     0x36918c
369185  e8 c2 00 00 00                 call   0x36924c
36918a  eb 29                          jmp    0x3691b5
36918c  e8 07 01 00 00                 call   0x369298
369191  48 8b c8                       mov    rcx,rax
369194  4c 8b c0                       mov    r8,rax
369197  e8 6c 1d f6 ff                 call   0x2caf08
36919c  84 c0                          test   al,al
36919e  74 0d                          je     0x3691ad
3691a0  48 8b d3                       mov    rdx,rbx
3691a3  49 8b c8                       mov    rcx,r8
3691a6  e8 bd a8 00 00                 call   0x373a68
3691ab  eb 08                          jmp    0x3691b5
3691ad  48 8b cb                       mov    rcx,rbx
3691b0  e8 07 ea 05 00                 call   0x3c7bbc
3691b5  48 8b c3                       mov    rax,rbx
3691b8  48 83 c4 20                    add    rsp,0x20
3691bc  5b                             pop    rbx
3691bd  c3                             ret

; pdata function 0x369c1c..0x369cdc unwind=0x3d2348
369c1c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
369c21  57                             push   rdi
369c22  48 83 ec 30                    sub    rsp,0x30
369c26  48 8b da                       mov    rbx,rdx
369c29  48 8b f9                       mov    rdi,rcx
369c2c  e8 d7 12 f6 ff                 call   0x2caf08
369c31  84 c0                          test   al,al
369c33  75 0d                          jne    0x369c42
369c35  48 8b ca                       mov    rcx,rdx
369c38  e8 7f df 05 00                 call   0x3c7bbc
369c3d  e9 8c 00 00 00                 jmp    0x369cce
369c42  8b 0d 48 4c 09 00              mov    ecx,DWORD PTR [rip+0x94c48]        # 0x3fe890
369c48  f6 c1 01                       test   cl,0x1
369c4b  75 20                          jne    0x369c6d
369c4d  4c 8b 05 ac d2 06 00           mov    r8,QWORD PTR [rip+0x6d2ac]        # 0x3d6f00
369c54  83 c9 01                       or     ecx,0x1
369c57  49 81 c0 80 51 93 03           add    r8,0x3935180
369c5e  89 0d 2c 4c 09 00              mov    DWORD PTR [rip+0x94c2c],ecx        # 0x3fe890
369c64  4c 89 05 1d 4c 09 00           mov    QWORD PTR [rip+0x94c1d],r8        # 0x3fe888
369c6b  eb 07                          jmp    0x369c74
369c6d  4c 8b 05 14 4c 09 00           mov    r8,QWORD PTR [rip+0x94c14]        # 0x3fe888
369c74  f6 c1 02                       test   cl,0x2
369c77  75 1f                          jne    0x369c98
369c79  83 c9 02                       or     ecx,0x2
369c7c  48 8d 15 1d 4c 09 00           lea    rdx,[rip+0x94c1d]        # 0x3fe8a0
369c83  89 0d 07 4c 09 00              mov    DWORD PTR [rip+0x94c07],ecx        # 0x3fe890
369c89  45 33 c9                       xor    r9d,r9d
369c8c  48 8b 0d cd c1 06 00           mov    rcx,QWORD PTR [rip+0x6c1cd]        # 0x3d5e60
369c93  e8 8c 20 f6 ff                 call   0x2cbd24
369c98  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
369c9d  e8 1a df 05 00                 call   0x3c7bbc
369ca2  48 8b 0d b7 c1 06 00           mov    rcx,QWORD PTR [rip+0x6c1b7]        # 0x3d5e60
369ca9  4c 8d 44 24 20                 lea    r8,[rsp+0x20]
369cae  4c 8b cf                       mov    r9,rdi
369cb1  48 8d 15 e8 4b 09 00           lea    rdx,[rip+0x94be8]        # 0x3fe8a0
369cb8  e8 d7 83 f6 ff                 call   0x2d2094
369cbd  f2 0f 10 44 24 20              movsd  xmm0,QWORD PTR [rsp+0x20]
369cc3  8b 44 24 28                    mov    eax,DWORD PTR [rsp+0x28]
369cc7  f2 0f 11 03                    movsd  QWORD PTR [rbx],xmm0
369ccb  89 43 08                       mov    DWORD PTR [rbx+0x8],eax
369cce  48 8b c3                       mov    rax,rbx
369cd1  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
369cd6  48 83 c4 30                    add    rsp,0x30
369cda  5f                             pop    rdi
369cdb  c3                             ret

; pdata function 0x36924c..0x369296 unwind=0x3d2038
36924c  40 53                          rex push rbx
36924e  48 83 ec 20                    sub    rsp,0x20
369252  48 8b da                       mov    rbx,rdx
369255  48 8b d1                       mov    rdx,rcx
369258  e8 ab 1c f6 ff                 call   0x2caf08
36925d  84 c0                          test   al,al
36925f  74 24                          je     0x369285
369261  48 8b 92 e8 04 00 00           mov    rdx,QWORD PTR [rdx+0x4e8]
369268  48 8b ca                       mov    rcx,rdx
36926b  e8 98 1c f6 ff                 call   0x2caf08
369270  84 c0                          test   al,al
369272  74 11                          je     0x369285
369274  f2 0f 10 42 18                 movsd  xmm0,QWORD PTR [rdx+0x18]
369279  f2 0f 11 03                    movsd  QWORD PTR [rbx],xmm0
36927d  8b 42 20                       mov    eax,DWORD PTR [rdx+0x20]
369280  89 43 08                       mov    DWORD PTR [rbx+0x8],eax
369283  eb 08                          jmp    0x36928d
369285  48 8b cb                       mov    rcx,rbx
369288  e8 2f e9 05 00                 call   0x3c7bbc
36928d  48 8b c3                       mov    rax,rbx
369290  48 83 c4 20                    add    rsp,0x20
369294  5b                             pop    rbx
369295  c3                             ret

; pdata function 0x368b9c..0x368be6 unwind=0x3d2038
368b9c  40 53                          rex push rbx
368b9e  48 83 ec 20                    sub    rsp,0x20
368ba2  48 8b da                       mov    rbx,rdx
368ba5  48 8b d1                       mov    rdx,rcx
368ba8  e8 5b 23 f6 ff                 call   0x2caf08
368bad  84 c0                          test   al,al
368baf  74 24                          je     0x368bd5
368bb1  48 8b 92 e8 04 00 00           mov    rdx,QWORD PTR [rdx+0x4e8]
368bb8  48 8b ca                       mov    rcx,rdx
368bbb  e8 48 23 f6 ff                 call   0x2caf08
368bc0  84 c0                          test   al,al
368bc2  74 11                          je     0x368bd5
368bc4  f2 0f 10 42 30                 movsd  xmm0,QWORD PTR [rdx+0x30]
368bc9  f2 0f 11 03                    movsd  QWORD PTR [rbx],xmm0
368bcd  8b 42 38                       mov    eax,DWORD PTR [rdx+0x38]
368bd0  89 43 08                       mov    DWORD PTR [rbx+0x8],eax
368bd3  eb 08                          jmp    0x368bdd
368bd5  48 8b cb                       mov    rcx,rbx
368bd8  e8 df ef 05 00                 call   0x3c7bbc
368bdd  48 8b c3                       mov    rax,rbx
368be0  48 83 c4 20                    add    rsp,0x20
368be4  5b                             pop    rbx
368be5  c3                             ret

; pdata function 0x36b244..0x36b288 unwind=0x3d2038
36b244  40 53                          rex push rbx
36b246  48 83 ec 20                    sub    rsp,0x20
36b24a  48 8b d9                       mov    rbx,rcx
36b24d  e8 b6 fc f5 ff                 call   0x2caf08
36b252  84 c0                          test   al,al
36b254  74 2a                          je     0x36b280
36b256  48 8d 0d 53 ae 07 00           lea    rcx,[rip+0x7ae53]        # 0x3e60b0
36b25d  e8 b2 54 fb ff                 call   0x320714
36b262  84 c0                          test   al,al
36b264  75 1a                          jne    0x36b280
36b266  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
36b26b  48 89 5c 24 38                 mov    QWORD PTR [rsp+0x38],rbx
36b270  48 8d 0d 39 ae 07 00           lea    rcx,[rip+0x7ae39]        # 0x3e60b0
36b277  e8 1c c6 ff ff                 call   0x367898
36b27c  8a 00                          mov    al,BYTE PTR [rax]
36b27e  eb 02                          jmp    0x36b282
36b280  32 c0                          xor    al,al
36b282  48 83 c4 20                    add    rsp,0x20
36b286  5b                             pop    rbx
36b287  c3                             ret

; pdata function 0x36942c..0x3696e1 unwind=0x3d3e74
36942c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
369431  48 89 7c 24 18                 mov    QWORD PTR [rsp+0x18],rdi
369436  55                             push   rbp
369437  48 8b ec                       mov    rbp,rsp
36943a  48 83 ec 40                    sub    rsp,0x40
36943e  48 8b d1                       mov    rdx,rcx
369441  e8 c2 1a f6 ff                 call   0x2caf08
369446  84 c0                          test   al,al
369448  0f 84 80 02 00 00              je     0x3696ce
36944e  48 8b ca                       mov    rcx,rdx
369451  e8 ba f6 ff ff                 call   0x368b10
369456  48 8b c8                       mov    rcx,rax
369459  48 8b d0                       mov    rdx,rax
36945c  e8 a7 1a f6 ff                 call   0x2caf08
369461  84 c0                          test   al,al
369463  0f 84 65 02 00 00              je     0x3696ce
369469  48 8b 4a 38                    mov    rcx,QWORD PTR [rdx+0x38]
36946d  e8 96 1a f6 ff                 call   0x2caf08
369472  84 c0                          test   al,al
369474  0f 84 54 02 00 00              je     0x3696ce
36947a  48 8b 4a 38                    mov    rcx,QWORD PTR [rdx+0x38]
36947e  e8 d1 c5 f7 ff                 call   0x2e5a54
369483  48 8b c8                       mov    rcx,rax
369486  48 8b d0                       mov    rdx,rax
369489  e8 7a 1a f6 ff                 call   0x2caf08
36948e  84 c0                          test   al,al
369490  0f 84 38 02 00 00              je     0x3696ce
369496  48 8b ca                       mov    rcx,rdx
369499  e8 b6 ce f6 ff                 call   0x2d6354
36949e  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3694a2  48 8b d8                       mov    rbx,rax
3694a5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3694a9  e8 8e e5 ff ff                 call   0x367a3c ; STRING getter=0x367a3c AttackHelicopter
3694ae  48 8b c8                       mov    rcx,rax
3694b1  e8 fe 06 f8 ff                 call   0x2e9bb4
3694b6  48 bf 25 23 22 84 e4 9c f2 cb  movabs rdi,0xcbf29ce484222325
3694c0  48 8b c8                       mov    rcx,rax
3694c3  48 8b d7                       mov    rdx,rdi
3694c6  e8 81 c6 f7 ff                 call   0x2e5b4c
3694cb  48 3b d8                       cmp    rbx,rax
3694ce  0f 84 f0 01 00 00              je     0x3696c4
3694d4  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3694d8  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3694dc  e8 3f e7 ff ff                 call   0x367c20 ; STRING getter=0x367c20 Minicopter
3694e1  48 8b c8                       mov    rcx,rax
3694e4  e8 6b 07 f8 ff                 call   0x2e9c54
3694e9  48 8b c8                       mov    rcx,rax
3694ec  48 8b d7                       mov    rdx,rdi
3694ef  e8 58 c6 f7 ff                 call   0x2e5b4c
3694f4  48 3b d8                       cmp    rbx,rax
3694f7  0f 84 c7 01 00 00              je     0x3696c4
3694fd  48 8d 55 e0                    lea    rdx,[rbp-0x20]
369501  48 8d 4d 18                    lea    rcx,[rbp+0x18]
369505  e8 76 e8 ff ff                 call   0x367d80 ; STRING getter=0x367d80 ScrapTransportHelicopter
36950a  48 8b c8                       mov    rcx,rax
36950d  e8 fa 6f fb ff                 call   0x32050c
369512  48 8b c8                       mov    rcx,rax
369515  48 8b d7                       mov    rdx,rdi
369518  e8 2f c6 f7 ff                 call   0x2e5b4c
36951d  48 3b d8                       cmp    rbx,rax
369520  0f 84 9e 01 00 00              je     0x3696c4
369526  48 8d 55 e0                    lea    rdx,[rbp-0x20]
36952a  48 8d 4d 18                    lea    rcx,[rbp+0x18]
36952e  e8 0d e9 ff ff                 call   0x367e40 ; STRING getter=0x367e40 CH47Helicopter
369533  48 8b c8                       mov    rcx,rax
369536  e8 31 f1 f6 ff                 call   0x2d866c
36953b  48 8b c8                       mov    rcx,rax
36953e  48 8b d7                       mov    rdx,rdi
369541  e8 06 c6 f7 ff                 call   0x2e5b4c
369546  48 3b d8                       cmp    rbx,rax
369549  0f 84 75 01 00 00              je     0x3696c4
36954f  48 8d 55 e0                    lea    rdx,[rbp-0x20]
369553  48 8d 4d 18                    lea    rcx,[rbp+0x18]
369557  e8 60 e9 ff ff                 call   0x367ebc ; STRING getter=0x367ebc BasicCar
36955c  48 8b c8                       mov    rcx,rax
36955f  e8 28 06 f8 ff                 call   0x2e9b8c
369564  48 8b c8                       mov    rcx,rax
369567  48 8b d7                       mov    rdx,rdi
36956a  e8 dd c5 f7 ff                 call   0x2e5b4c
36956f  48 3b d8                       cmp    rbx,rax
369572  0f 84 4c 01 00 00              je     0x3696c4
369578  48 8d 55 18                    lea    rdx,[rbp+0x18]
36957c  48 8d 4d 18                    lea    rcx,[rbp+0x18]
369580  e8 6f e9 ff ff                 call   0x367ef4 ; STRING getter=0x367ef4 Bike
369585  48 8b c8                       mov    rcx,rax
369588  e8 3f 47 f6 ff                 call   0x2cdccc
36958d  48 8b c8                       mov    rcx,rax
369590  48 8b d7                       mov    rdx,rdi
369593  e8 b4 c5 f7 ff                 call   0x2e5b4c
369598  48 3b d8                       cmp    rbx,rax
36959b  0f 84 19 01 00 00              je     0x3696ba
3695a1  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3695a5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3695a9  e8 7a e9 ff ff                 call   0x367f28 ; STRING getter=0x367f28 MotorRowboat
3695ae  48 8b c8                       mov    rcx,rax
3695b1  e8 3e f0 f6 ff                 call   0x2d85f4
3695b6  48 8b c8                       mov    rcx,rax
3695b9  48 8b d7                       mov    rdx,rdi
3695bc  e8 8b c5 f7 ff                 call   0x2e5b4c
3695c1  48 3b d8                       cmp    rbx,rax
3695c4  0f 84 f0 00 00 00              je     0x3696ba
3695ca  48 8d 55 18                    lea    rdx,[rbp+0x18]
3695ce  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3695d2  e8 99 e9 ff ff                 call   0x367f70 ; STRING getter=0x367f70 Kayak
3695d7  48 8b c8                       mov    rcx,rax
3695da  e8 fd ee f6 ff                 call   0x2d84dc
3695df  48 8b c8                       mov    rcx,rax
3695e2  48 8b d7                       mov    rdx,rdi
3695e5  e8 62 c5 f7 ff                 call   0x2e5b4c
3695ea  48 3b d8                       cmp    rbx,rax
3695ed  0f 84 c7 00 00 00              je     0x3696ba
3695f3  48 8d 55 18                    lea    rdx,[rbp+0x18]
3695f7  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3695fb  e8 ac e9 ff ff                 call   0x367fac ; STRING getter=0x367fac RHIB
369600  48 8b c8                       mov    rcx,rax
369603  e8 c4 46 f6 ff                 call   0x2cdccc
369608  48 8b c8                       mov    rcx,rax
36960b  48 8b d7                       mov    rdx,rdi
36960e  e8 39 c5 f7 ff                 call   0x2e5b4c
369613  48 3b d8                       cmp    rbx,rax
369616  0f 84 9e 00 00 00              je     0x3696ba
36961c  48 8d 55 e0                    lea    rdx,[rbp-0x20]
369620  48 8d 4d 18                    lea    rcx,[rbp+0x18]
369624  e8 9f e2 ff ff                 call   0x3678c8 ; STRING getter=0x3678c8 VehicleModuleSeating
369629  48 8b c8                       mov    rcx,rax
36962c  e8 8b 6e fb ff                 call   0x3204bc
369631  48 8b c8                       mov    rcx,rax
369634  48 8b d7                       mov    rdx,rdi
369637  e8 10 c5 f7 ff                 call   0x2e5b4c
36963c  48 3b d8                       cmp    rbx,rax
36963f  74 79                          je     0x3696ba
369641  48 8d 55 e0                    lea    rdx,[rbp-0x20]
369645  48 8d 4d 18                    lea    rcx,[rbp+0x18]
369649  e8 b2 e2 ff ff                 call   0x367900 ; STRING getter=0x367900 VehicleModuleEngine
36964e  48 8b c8                       mov    rcx,rax
369651  e8 3e 6e fb ff                 call   0x320494
369656  48 8b c8                       mov    rcx,rax
369659  48 8b d7                       mov    rdx,rdi
36965c  e8 eb c4 f7 ff                 call   0x2e5b4c
369661  48 3b d8                       cmp    rbx,rax
369664  74 54                          je     0x3696ba
369666  48 8d 55 e0                    lea    rdx,[rbp-0x20]
36966a  48 8d 4d 18                    lea    rcx,[rbp+0x18]
36966e  e8 c1 e2 ff ff                 call   0x367934 ; STRING getter=0x367934 ModularCar
369673  48 8b c8                       mov    rcx,rax
369676  e8 d9 05 f8 ff                 call   0x2e9c54
36967b  48 8b c8                       mov    rcx,rax
36967e  48 8b d7                       mov    rdx,rdi
369681  e8 c6 c4 f7 ff                 call   0x2e5b4c
369686  48 3b d8                       cmp    rbx,rax
369689  74 2f                          je     0x3696ba
36968b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
36968f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
369693  e8 d4 e2 ff ff                 call   0x36796c ; STRING getter=0x36796c RidableHorse
369698  48 8b c8                       mov    rcx,rax
36969b  e8 54 ef f6 ff                 call   0x2d85f4
3696a0  48 8b c8                       mov    rcx,rax
3696a3  48 8b d7                       mov    rdx,rdi
3696a6  e8 a1 c4 f7 ff                 call   0x2e5b4c
3696ab  48 3b d8                       cmp    rbx,rax
3696ae  75 1e                          jne    0x3696ce
3696b0  f3 0f 10 05 28 4b f2 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff24b28]        # 0x28e1e0 ; f32=8
3696b8  eb 17                          jmp    0x3696d1
3696ba  f3 0f 10 05 12 9b f2 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff29b12]        # 0x2931d4 ; f32=25
3696c2  eb 0d                          jmp    0x3696d1
3696c4  f3 0f 10 05 60 44 f2 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff24460]        # 0x28db2c ; f32=50
3696cc  eb 03                          jmp    0x3696d1
3696ce  0f 57 c0                       xorps  xmm0,xmm0
3696d1  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
3696d6  48 8b 7c 24 60                 mov    rdi,QWORD PTR [rsp+0x60]
3696db  48 83 c4 40                    add    rsp,0x40
3696df  5d                             pop    rbp
3696e0  c3                             ret

; pdata function 0x32b308..0x32b3a6 unwind=0x3d2040
32b308  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32b30d  57                             push   rdi
32b30e  48 83 ec 20                    sub    rsp,0x20
32b312  8b f9                          mov    edi,ecx
32b314  e8 9b ff ff ff                 call   0x32b2b4
32b319  48 8b c8                       mov    rcx,rax
32b31c  48 8b d8                       mov    rbx,rax
32b31f  e8 e4 fb f9 ff                 call   0x2caf08
32b324  84 c0                          test   al,al
32b326  75 04                          jne    0x32b32c
32b328  33 c0                          xor    eax,eax
32b32a  eb 6f                          jmp    0x32b39b
32b32c  8b 0d e6 c4 0c 00              mov    ecx,DWORD PTR [rip+0xcc4e6]        # 0x3f7818
32b332  f6 c1 01                       test   cl,0x1
32b335  75 20                          jne    0x32b357
32b337  4c 8b 05 c2 bb 0a 00           mov    r8,QWORD PTR [rip+0xabbc2]        # 0x3d6f00
32b33e  83 c9 01                       or     ecx,0x1
32b341  49 81 c0 20 df 00 03           add    r8,0x300df20
32b348  89 0d ca c4 0c 00              mov    DWORD PTR [rip+0xcc4ca],ecx        # 0x3f7818
32b34e  4c 89 05 bb c4 0c 00           mov    QWORD PTR [rip+0xcc4bb],r8        # 0x3f7810
32b355  eb 07                          jmp    0x32b35e
32b357  4c 8b 05 b2 c4 0c 00           mov    r8,QWORD PTR [rip+0xcc4b2]        # 0x3f7810
32b35e  f6 c1 02                       test   cl,0x2
32b361  75 1f                          jne    0x32b382
32b363  83 c9 02                       or     ecx,0x2
32b366  48 8d 15 b3 c4 0c 00           lea    rdx,[rip+0xcc4b3]        # 0x3f7820
32b36d  89 0d a5 c4 0c 00              mov    DWORD PTR [rip+0xcc4a5],ecx        # 0x3f7818
32b373  45 33 c9                       xor    r9d,r9d
32b376  48 8b 0d e3 aa 0a 00           mov    rcx,QWORD PTR [rip+0xaaae3]        # 0x3d5e60
32b37d  e8 a2 09 fa ff                 call   0x2cbd24
32b382  48 8b 0d d7 aa 0a 00           mov    rcx,QWORD PTR [rip+0xaaad7]        # 0x3d5e60
32b389  48 8d 15 90 c4 0c 00           lea    rdx,[rip+0xcc490]        # 0x3f7820
32b390  44 8b cf                       mov    r9d,edi
32b393  4c 8b c3                       mov    r8,rbx
32b396  e8 2d fe ff ff                 call   0x32b1c8
32b39b  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
32b3a0  48 83 c4 20                    add    rsp,0x20
32b3a4  5f                             pop    rdi
32b3a5  c3                             ret

