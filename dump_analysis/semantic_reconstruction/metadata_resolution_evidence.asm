; pdata function 0x334224..0x334295 unwind=0x3d2130
334224  40 53                          rex push rbx
334226  55                             push   rbp
334227  56                             push   rsi
334228  57                             push   rdi
334229  48 83 ec 28                    sub    rsp,0x28
33422d  48 8b f2                       mov    rsi,rdx
334230  48 8b e9                       mov    rbp,rcx
334233  e8 64 05 00 00                 call   0x33479c
334238  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
33423d  48 c7 44 24 60 00 00 00 00     mov    QWORD PTR [rsp+0x60],0x0
334246  48 8b c8                       mov    rcx,rax
334249  e8 be 05 00 00                 call   0x33480c
33424e  33 db                          xor    ebx,ebx
334250  48 8b f8                       mov    rdi,rax
334253  48 39 5c 24 60                 cmp    QWORD PTR [rsp+0x60],rbx
334258  76 30                          jbe    0x33428a
33425a  48 63 cb                       movsxd rcx,ebx
33425d  48 8b 0c cf                    mov    rcx,QWORD PTR [rdi+rcx*8]
334261  e8 4a 02 00 00                 call   0x3344b0
334266  48 85 c0                       test   rax,rax
334269  74 13                          je     0x33427e
33426b  4c 8b c5                       mov    r8,rbp
33426e  48 8b d6                       mov    rdx,rsi
334271  48 8b c8                       mov    rcx,rax
334274  e8 af 02 00 00                 call   0x334528
334279  48 85 c0                       test   rax,rax
33427c  75 0e                          jne    0x33428c
33427e  ff c3                          inc    ebx
334280  48 63 c3                       movsxd rax,ebx
334283  48 3b 44 24 60                 cmp    rax,QWORD PTR [rsp+0x60]
334288  72 d0                          jb     0x33425a
33428a  33 c0                          xor    eax,eax
33428c  48 83 c4 28                    add    rsp,0x28
334290  5f                             pop    rdi
334291  5e                             pop    rsi
334292  5d                             pop    rbp
334293  5b                             pop    rbx
334294  c3                             ret

; pdata function 0x33416c..0x334202 unwind=0x3d2690
33416c  40 53                          rex push rbx
33416e  55                             push   rbp
33416f  56                             push   rsi
334170  57                             push   rdi
334171  41 56                          push   r14
334173  48 83 ec 30                    sub    rsp,0x30
334177  4c 8b f2                       mov    r14,rdx
33417a  41 8b f1                       mov    esi,r9d
33417d  49 8b d0                       mov    rdx,r8
334180  e8 9f 00 00 00                 call   0x334224
334185  83 bc 24 80 00 00 00 00        cmp    DWORD PTR [rsp+0x80],0x0
33418d  48 8b e8                       mov    rbp,rax
334190  48 8b c8                       mov    rcx,rax
334193  75 0d                          jne    0x3341a2
334195  44 8b c6                       mov    r8d,esi
334198  49 8b d6                       mov    rdx,r14
33419b  e8 24 04 00 00                 call   0x3345c4
3341a0  eb 50                          jmp    0x3341f2
3341a2  33 ff                          xor    edi,edi
3341a4  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
3341a9  eb 33                          jmp    0x3341de
3341ab  48 8b 4b 18                    mov    rcx,QWORD PTR [rbx+0x18]
3341af  49 8b d6                       mov    rdx,r14
3341b2  e8 cd 66 09 00                 call   0x3ca884
3341b7  85 c0                          test   eax,eax
3341b9  74 20                          je     0x3341db
3341bb  83 fe ff                       cmp    esi,0xffffffff
3341be  7e 10                          jle    0x3341d0
3341c0  48 8b cb                       mov    rcx,rbx
3341c3  e8 78 0f 00 00                 call   0x335140
3341c8  85 c0                          test   eax,eax
3341ca  78 04                          js     0x3341d0
3341cc  3b c6                          cmp    eax,esi
3341ce  75 0b                          jne    0x3341db
3341d0  3b bc 24 80 00 00 00           cmp    edi,DWORD PTR [rsp+0x80]
3341d7  7d 24                          jge    0x3341fd
3341d9  ff c7                          inc    edi
3341db  48 8b cd                       mov    rcx,rbp
3341de  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
3341e3  e8 78 04 00 00                 call   0x334660
3341e8  48 8b d8                       mov    rbx,rax
3341eb  48 85 c0                       test   rax,rax
3341ee  75 bb                          jne    0x3341ab
3341f0  33 c0                          xor    eax,eax
3341f2  48 83 c4 30                    add    rsp,0x30
3341f6  41 5e                          pop    r14
3341f8  5f                             pop    rdi
3341f9  5e                             pop    rsi
3341fa  5d                             pop    rbp
3341fb  5b                             pop    rbx
3341fc  c3                             ret
3341fd  48 8b c3                       mov    rax,rbx
334200  eb f0                          jmp    0x3341f2

; pdata function 0x334960..0x3349aa unwind=0x3d206c
334960  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
334965  57                             push   rdi
334966  48 83 ec 20                    sub    rsp,0x20
33496a  48 8b fa                       mov    rdi,rdx
33496d  48 8b d9                       mov    rbx,rcx
334970  48 85 c9                       test   rcx,rcx
334973  74 28                          je     0x33499d
334975  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
33497e  eb 0e                          jmp    0x33498e
334980  48 83 38 00                    cmp    QWORD PTR [rax],0x0
334984  74 05                          je     0x33498b
334986  48 39 38                       cmp    QWORD PTR [rax],rdi
334989  74 14                          je     0x33499f
33498b  48 8b cb                       mov    rcx,rbx
33498e  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
334993  e8 c8 fc ff ff                 call   0x334660
334998  48 85 c0                       test   rax,rax
33499b  75 e3                          jne    0x334980
33499d  33 c0                          xor    eax,eax
33499f  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
3349a4  48 83 c4 20                    add    rsp,0x20
3349a8  5f                             pop    rdi
3349a9  c3                             ret

; pdata function 0x3349ac..0x334a8d unwind=0x3d3734
3349ac  40 53                          rex push rbx
3349ae  56                             push   rsi
3349af  57                             push   rdi
3349b0  41 54                          push   r12
3349b2  41 56                          push   r14
3349b4  41 57                          push   r15
3349b6  48 83 ec 38                    sub    rsp,0x38
3349ba  4d 8b f9                       mov    r15,r9
3349bd  41 8b f8                       mov    edi,r8d
3349c0  4c 8b e2                       mov    r12,rdx
3349c3  48 8b f1                       mov    rsi,rcx
3349c6  48 85 c9                       test   rcx,rcx
3349c9  0f 84 a9 00 00 00              je     0x334a78
3349cf  48 c7 44 24 28 00 00 00 00     mov    QWORD PTR [rsp+0x28],0x0
3349d8  e9 85 00 00 00                 jmp    0x334a62
3349dd  48 8b 4b 18                    mov    rcx,QWORD PTR [rbx+0x18]
3349e1  49 8b d4                       mov    rdx,r12
3349e4  e8 0b 06 00 00                 call   0x334ff4
3349e9  84 c0                          test   al,al
3349eb  74 72                          je     0x334a5f
3349ed  85 ff                          test   edi,edi
3349ef  0f 88 93 00 00 00              js     0x334a88
3349f5  4d 85 ff                       test   r15,r15
3349f8  0f 84 8a 00 00 00              je     0x334a88
3349fe  4c 8b 73 28                    mov    r14,QWORD PTR [rbx+0x28]
334a02  48 8b cb                       mov    rcx,rbx
334a05  e8 36 07 00 00                 call   0x335140
334a0a  3b f8                          cmp    edi,eax
334a0c  7f 51                          jg     0x334a5f
334a0e  83 bc 24 90 00 00 00 00        cmp    DWORD PTR [rsp+0x90],0x0
334a16  7c 09                          jl     0x334a21
334a18  3b 84 24 90 00 00 00           cmp    eax,DWORD PTR [rsp+0x90]
334a1f  75 3e                          jne    0x334a5f
334a21  85 c0                          test   eax,eax
334a23  7e 0f                          jle    0x334a34
334a25  8d 04 7f                       lea    eax,[rdi+rdi*2]
334a28  c1 e0 03                       shl    eax,0x3
334a2b  48 98                          cdqe
334a2d  49 8b 44 06 e8                 mov    rax,QWORD PTR [r14+rax*1-0x18]
334a32  eb 17                          jmp    0x334a4b
334a34  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
334a39  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
334a3e  e8 fd f0 ff ff                 call   0x333b40 ; STRING getter=0x333b40 -
334a43  48 8b c8                       mov    rcx,rax
334a46  e8 19 3a fa ff                 call   0x2d8464
334a4b  48 85 c0                       test   rax,rax
334a4e  74 0f                          je     0x334a5f
334a50  49 8b d7                       mov    rdx,r15
334a53  48 8b c8                       mov    rcx,rax
334a56  e8 99 05 00 00                 call   0x334ff4
334a5b  84 c0                          test   al,al
334a5d  75 29                          jne    0x334a88
334a5f  48 8b ce                       mov    rcx,rsi
334a62  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
334a67  e8 f4 fb ff ff                 call   0x334660
334a6c  48 8b d8                       mov    rbx,rax
334a6f  48 85 c0                       test   rax,rax
334a72  0f 85 65 ff ff ff              jne    0x3349dd
334a78  33 c0                          xor    eax,eax
334a7a  48 83 c4 38                    add    rsp,0x38
334a7e  41 5f                          pop    r15
334a80  41 5e                          pop    r14
334a82  41 5c                          pop    r12
334a84  5f                             pop    rdi
334a85  5e                             pop    rsi
334a86  5b                             pop    rbx
334a87  c3                             ret
334a88  48 8b c3                       mov    rax,rbx
334a8b  eb ed                          jmp    0x334a7a

; pdata function 0x320b04..0x320b7c unwind=0x3d2038
320b04  40 53                          rex push rbx
320b06  48 83 ec 20                    sub    rsp,0x20
320b0a  8b 05 d8 51 0c 00              mov    eax,DWORD PTR [rip+0xc51d8]        # 0x3e5ce8
320b10  48 8b d9                       mov    rbx,rcx
320b13  a8 01                          test   al,0x1
320b15  75 20                          jne    0x320b37
320b17  83 c8 01                       or     eax,0x1
320b1a  89 05 c8 51 0c 00              mov    DWORD PTR [rip+0xc51c8],eax        # 0x3e5ce8
320b20  e8 e7 db fc ff                 call   0x2ee70c
320b25  4c 8b c0                       mov    r8,rax
320b28  48 89 05 b1 51 0c 00           mov    QWORD PTR [rip+0xc51b1],rax        # 0x3e5ce0
320b2f  8b 05 b3 51 0c 00              mov    eax,DWORD PTR [rip+0xc51b3]        # 0x3e5ce8
320b35  eb 07                          jmp    0x320b3e
320b37  4c 8b 05 a2 51 0c 00           mov    r8,QWORD PTR [rip+0xc51a2]        # 0x3e5ce0
320b3e  a8 02                          test   al,0x2
320b40  75 1f                          jne    0x320b61
320b42  48 8b 0d 17 53 0b 00           mov    rcx,QWORD PTR [rip+0xb5317]        # 0x3d5e60
320b49  48 8d 15 a0 51 0c 00           lea    rdx,[rip+0xc51a0]        # 0x3e5cf0
320b50  83 c8 02                       or     eax,0x2
320b53  45 33 c9                       xor    r9d,r9d
320b56  89 05 8c 51 0c 00              mov    DWORD PTR [rip+0xc518c],eax        # 0x3e5ce8
320b5c  e8 c3 b1 fa ff                 call   0x2cbd24
320b61  48 8b 0d f8 52 0b 00           mov    rcx,QWORD PTR [rip+0xb52f8]        # 0x3d5e60
320b68  48 8d 15 81 51 0c 00           lea    rdx,[rip+0xc5181]        # 0x3e5cf0
320b6f  4c 8b c3                       mov    r8,rbx
320b72  48 83 c4 20                    add    rsp,0x20
320b76  5b                             pop    rbx
320b77  e9 80 ae fa ff                 jmp    0x2cb9fc

; pdata function 0x2e3704..0x2e372a unwind=0x3d2038
2e3704  40 53                          rex push rbx
2e3706  48 83 ec 20                    sub    rsp,0x20
2e370a  48 8b d9                       mov    rbx,rcx
2e370d  e8 3e 04 00 00                 call   0x2e3b50
2e3712  84 c0                          test   al,al
2e3714  74 0b                          je     0x2e3721
2e3716  48 8b d3                       mov    rdx,rbx
2e3719  48 8b cb                       mov    rcx,rbx
2e371c  e8 0b fe ff ff                 call   0x2e352c
2e3721  48 8b c3                       mov    rax,rbx
2e3724  48 83 c4 20                    add    rsp,0x20
2e3728  5b                             pop    rbx
2e3729  c3                             ret

