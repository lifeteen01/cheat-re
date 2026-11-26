; heuristic leaf/code range 0x334ff4..0x33502f unwind=0x0
334ff4  4c 8b c9                       mov    r9,rcx
334ff7  48 85 c9                       test   rcx,rcx
334ffa  74 33                          je     0x33502f
334ffc  48 85 d2                       test   rdx,rdx
334fff  74 38                          je     0x335039
335001  0f b6 02                       movzx  eax,BYTE PTR [rdx]
335004  44 0f b6 01                    movzx  r8d,BYTE PTR [rcx]
335008  44 2b c0                       sub    r8d,eax
33500b  75 1b                          jne    0x335028
33500d  41 8d 48 01                    lea    ecx,[r8+0x1]
335011  80 3a 00                       cmp    BYTE PTR [rdx],0x0
335014  74 12                          je     0x335028
335016  4c 03 c9                       add    r9,rcx
335019  48 03 d1                       add    rdx,rcx
33501c  0f b6 02                       movzx  eax,BYTE PTR [rdx]
33501f  45 0f b6 01                    movzx  r8d,BYTE PTR [r9]
335023  44 2b c0                       sub    r8d,eax
335026  74 e9                          je     0x335011
335028  45 85 c0                       test   r8d,r8d
33502b  0f 94 c0                       sete   al
33502e  c3                             ret

; pdata function 0x334660..0x3346e7 unwind=0x3d2040
334660  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
334665  57                             push   rdi
334666  48 83 ec 20                    sub    rsp,0x20
33466a  8b 05 e0 52 0c 00              mov    eax,DWORD PTR [rip+0xc52e0]        # 0x3f9950
334670  48 8b da                       mov    rbx,rdx
334673  48 8b f9                       mov    rdi,rcx
334676  a8 01                          test   al,0x1
334678  75 20                          jne    0x33469a
33467a  83 c8 01                       or     eax,0x1
33467d  89 05 cd 52 0c 00              mov    DWORD PTR [rip+0xc52cd],eax        # 0x3f9950
334683  e8 a4 f3 ff ff                 call   0x333a2c
334688  4c 8b c0                       mov    r8,rax
33468b  48 89 05 b6 52 0c 00           mov    QWORD PTR [rip+0xc52b6],rax        # 0x3f9948
334692  8b 05 b8 52 0c 00              mov    eax,DWORD PTR [rip+0xc52b8]        # 0x3f9950
334698  eb 07                          jmp    0x3346a1
33469a  4c 8b 05 a7 52 0c 00           mov    r8,QWORD PTR [rip+0xc52a7]        # 0x3f9948
3346a1  a8 02                          test   al,0x2
3346a3  75 1f                          jne    0x3346c4
3346a5  48 8b 0d b4 17 0a 00           mov    rcx,QWORD PTR [rip+0xa17b4]        # 0x3d5e60
3346ac  48 8d 15 ad 52 0c 00           lea    rdx,[rip+0xc52ad]        # 0x3f9960
3346b3  83 c8 02                       or     eax,0x2
3346b6  45 33 c9                       xor    r9d,r9d
3346b9  89 05 91 52 0c 00              mov    DWORD PTR [rip+0xc5291],eax        # 0x3f9950
3346bf  e8 60 76 f9 ff                 call   0x2cbd24
3346c4  48 8b 0d 95 17 0a 00           mov    rcx,QWORD PTR [rip+0xa1795]        # 0x3d5e60
3346cb  48 8d 15 8e 52 0c 00           lea    rdx,[rip+0xc528e]        # 0x3f9960
3346d2  4c 8b cb                       mov    r9,rbx
3346d5  4c 8b c7                       mov    r8,rdi
3346d8  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
3346dd  48 83 c4 20                    add    rsp,0x20
3346e1  5f                             pop    rdi
3346e2  e9 ad d9 f9 ff                 jmp    0x2d2094

; pdata function 0x335140..0x3351b8 unwind=0x3d2038
335140  40 53                          rex push rbx
335142  48 83 ec 20                    sub    rsp,0x20
335146  8b 05 e4 49 0c 00              mov    eax,DWORD PTR [rip+0xc49e4]        # 0x3f9b30
33514c  48 8b d9                       mov    rbx,rcx
33514f  a8 01                          test   al,0x1
335151  75 20                          jne    0x335173
335153  83 c8 01                       or     eax,0x1
335156  89 05 d4 49 0c 00              mov    DWORD PTR [rip+0xc49d4],eax        # 0x3f9b30
33515c  e8 ab 95 fb ff                 call   0x2ee70c
335161  4c 8b c0                       mov    r8,rax
335164  48 89 05 bd 49 0c 00           mov    QWORD PTR [rip+0xc49bd],rax        # 0x3f9b28
33516b  8b 05 bf 49 0c 00              mov    eax,DWORD PTR [rip+0xc49bf]        # 0x3f9b30
335171  eb 07                          jmp    0x33517a
335173  4c 8b 05 ae 49 0c 00           mov    r8,QWORD PTR [rip+0xc49ae]        # 0x3f9b28
33517a  a8 02                          test   al,0x2
33517c  75 1f                          jne    0x33519d
33517e  48 8b 0d db 0c 0a 00           mov    rcx,QWORD PTR [rip+0xa0cdb]        # 0x3d5e60
335185  48 8d 15 b4 49 0c 00           lea    rdx,[rip+0xc49b4]        # 0x3f9b40
33518c  83 c8 02                       or     eax,0x2
33518f  45 33 c9                       xor    r9d,r9d
335192  89 05 98 49 0c 00              mov    DWORD PTR [rip+0xc4998],eax        # 0x3f9b30
335198  e8 87 6b f9 ff                 call   0x2cbd24
33519d  48 8b 0d bc 0c 0a 00           mov    rcx,QWORD PTR [rip+0xa0cbc]        # 0x3d5e60
3351a4  48 8d 15 95 49 0c 00           lea    rdx,[rip+0xc4995]        # 0x3f9b40
3351ab  4c 8b c3                       mov    r8,rbx
3351ae  48 83 c4 20                    add    rsp,0x20
3351b2  5b                             pop    rbx
3351b3  e9 44 68 f9 ff                 jmp    0x2cb9fc

; pdata function 0x3345c4..0x33465d unwind=0x3d225c
3345c4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3345c9  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
3345ce  57                             push   rdi
3345cf  48 83 ec 30                    sub    rsp,0x30
3345d3  8b 05 c7 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5dc7]        # 0x3fa3a0
3345d9  41 8b d8                       mov    ebx,r8d
3345dc  48 8b fa                       mov    rdi,rdx
3345df  48 8b f1                       mov    rsi,rcx
3345e2  a8 01                          test   al,0x1
3345e4  75 20                          jne    0x334606
3345e6  83 c8 01                       or     eax,0x1
3345e9  89 05 b1 5d 0c 00              mov    DWORD PTR [rip+0xc5db1],eax        # 0x3fa3a0
3345ef  e8 48 f4 ff ff                 call   0x333a3c
3345f4  4c 8b c0                       mov    r8,rax
3345f7  48 89 05 9a 5d 0c 00           mov    QWORD PTR [rip+0xc5d9a],rax        # 0x3fa398
3345fe  8b 05 9c 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5d9c]        # 0x3fa3a0
334604  eb 07                          jmp    0x33460d
334606  4c 8b 05 8b 5d 0c 00           mov    r8,QWORD PTR [rip+0xc5d8b]        # 0x3fa398
33460d  a8 02                          test   al,0x2
33460f  75 1f                          jne    0x334630
334611  48 8b 0d 48 18 0a 00           mov    rcx,QWORD PTR [rip+0xa1848]        # 0x3d5e60
334618  48 8d 15 91 5d 0c 00           lea    rdx,[rip+0xc5d91]        # 0x3fa3b0
33461f  83 c8 02                       or     eax,0x2
334622  45 33 c9                       xor    r9d,r9d
334625  89 05 75 5d 0c 00              mov    DWORD PTR [rip+0xc5d75],eax        # 0x3fa3a0
33462b  e8 f4 76 f9 ff                 call   0x2cbd24
334630  48 8b 0d 29 18 0a 00           mov    rcx,QWORD PTR [rip+0xa1829]        # 0x3d5e60
334637  48 8d 15 72 5d 0c 00           lea    rdx,[rip+0xc5d72]        # 0x3fa3b0
33463e  4c 8b cf                       mov    r9,rdi
334641  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
334645  4c 8b c6                       mov    r8,rsi
334648  e8 3f e8 ff ff                 call   0x332e8c
33464d  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
334652  48 8b 74 24 48                 mov    rsi,QWORD PTR [rsp+0x48]
334657  48 83 c4 30                    add    rsp,0x30
33465b  5f                             pop    rdi
33465c  c3                             ret

; pdata function 0x334528..0x3345c2 unwind=0x3d225c
334528  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
33452d  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
334532  57                             push   rdi
334533  48 83 ec 30                    sub    rsp,0x30
334537  8b 05 73 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5d73]        # 0x3fa2b0
33453d  49 8b d8                       mov    rbx,r8
334540  48 8b fa                       mov    rdi,rdx
334543  48 8b f1                       mov    rsi,rcx
334546  a8 01                          test   al,0x1
334548  75 20                          jne    0x33456a
33454a  83 c8 01                       or     eax,0x1
33454d  89 05 5d 5d 0c 00              mov    DWORD PTR [rip+0xc5d5d],eax        # 0x3fa2b0
334553  e8 dc f4 ff ff                 call   0x333a34
334558  4c 8b c0                       mov    r8,rax
33455b  48 89 05 46 5d 0c 00           mov    QWORD PTR [rip+0xc5d46],rax        # 0x3fa2a8
334562  8b 05 48 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5d48]        # 0x3fa2b0
334568  eb 07                          jmp    0x334571
33456a  4c 8b 05 37 5d 0c 00           mov    r8,QWORD PTR [rip+0xc5d37]        # 0x3fa2a8
334571  a8 02                          test   al,0x2
334573  75 1f                          jne    0x334594
334575  48 8b 0d e4 18 0a 00           mov    rcx,QWORD PTR [rip+0xa18e4]        # 0x3d5e60
33457c  48 8d 15 3d 5d 0c 00           lea    rdx,[rip+0xc5d3d]        # 0x3fa2c0
334583  83 c8 02                       or     eax,0x2
334586  45 33 c9                       xor    r9d,r9d
334589  89 05 21 5d 0c 00              mov    DWORD PTR [rip+0xc5d21],eax        # 0x3fa2b0
33458f  e8 90 77 f9 ff                 call   0x2cbd24
334594  48 8b 0d c5 18 0a 00           mov    rcx,QWORD PTR [rip+0xa18c5]        # 0x3d5e60
33459b  48 8d 15 1e 5d 0c 00           lea    rdx,[rip+0xc5d1e]        # 0x3fa2c0
3345a2  4c 8b cf                       mov    r9,rdi
3345a5  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3345aa  4c 8b c6                       mov    r8,rsi
3345ad  e8 9e 74 f9 ff                 call   0x2cba50
3345b2  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
3345b7  48 8b 74 24 48                 mov    rsi,QWORD PTR [rsp+0x48]
3345bc  48 83 c4 30                    add    rsp,0x30
3345c0  5f                             pop    rdi
3345c1  c3                             ret

; pdata function 0x3344b0..0x334528 unwind=0x3d2038
3344b0  40 53                          rex push rbx
3344b2  48 83 ec 20                    sub    rsp,0x20
3344b6  8b 05 44 59 0c 00              mov    eax,DWORD PTR [rip+0xc5944]        # 0x3f9e00
3344bc  48 8b d9                       mov    rbx,rcx
3344bf  a8 01                          test   al,0x1
3344c1  75 20                          jne    0x3344e3
3344c3  83 c8 01                       or     eax,0x1
3344c6  89 05 34 59 0c 00              mov    DWORD PTR [rip+0xc5934],eax        # 0x3f9e00
3344cc  e8 3b f5 ff ff                 call   0x333a0c
3344d1  4c 8b c0                       mov    r8,rax
3344d4  48 89 05 1d 59 0c 00           mov    QWORD PTR [rip+0xc591d],rax        # 0x3f9df8
3344db  8b 05 1f 59 0c 00              mov    eax,DWORD PTR [rip+0xc591f]        # 0x3f9e00
3344e1  eb 07                          jmp    0x3344ea
3344e3  4c 8b 05 0e 59 0c 00           mov    r8,QWORD PTR [rip+0xc590e]        # 0x3f9df8
3344ea  a8 02                          test   al,0x2
3344ec  75 1f                          jne    0x33450d
3344ee  48 8b 0d 6b 19 0a 00           mov    rcx,QWORD PTR [rip+0xa196b]        # 0x3d5e60
3344f5  48 8d 15 14 59 0c 00           lea    rdx,[rip+0xc5914]        # 0x3f9e10
3344fc  83 c8 02                       or     eax,0x2
3344ff  45 33 c9                       xor    r9d,r9d
334502  89 05 f8 58 0c 00              mov    DWORD PTR [rip+0xc58f8],eax        # 0x3f9e00
334508  e8 17 78 f9 ff                 call   0x2cbd24
33450d  48 8b 0d 4c 19 0a 00           mov    rcx,QWORD PTR [rip+0xa194c]        # 0x3d5e60
334514  48 8d 15 f5 58 0c 00           lea    rdx,[rip+0xc58f5]        # 0x3f9e10
33451b  4c 8b c3                       mov    r8,rbx
33451e  48 83 c4 20                    add    rsp,0x20
334522  5b                             pop    rbx
334523  e9 d4 74 f9 ff                 jmp    0x2cb9fc

; pdata function 0x33479c..0x33480b unwind=0x3d2064
33479c  48 83 ec 28                    sub    rsp,0x28
3347a0  8b 05 ba 50 0c 00              mov    eax,DWORD PTR [rip+0xc50ba]        # 0x3f9860
3347a6  a8 01                          test   al,0x1
3347a8  75 20                          jne    0x3347ca
3347aa  83 c8 01                       or     eax,0x1
3347ad  89 05 ad 50 0c 00              mov    DWORD PTR [rip+0xc50ad],eax        # 0x3f9860
3347b3  e8 44 f2 ff ff                 call   0x3339fc
3347b8  4c 8b c0                       mov    r8,rax
3347bb  48 89 05 96 50 0c 00           mov    QWORD PTR [rip+0xc5096],rax        # 0x3f9858
3347c2  8b 05 98 50 0c 00              mov    eax,DWORD PTR [rip+0xc5098]        # 0x3f9860
3347c8  eb 07                          jmp    0x3347d1
3347ca  4c 8b 05 87 50 0c 00           mov    r8,QWORD PTR [rip+0xc5087]        # 0x3f9858
3347d1  a8 02                          test   al,0x2
3347d3  75 1f                          jne    0x3347f4
3347d5  48 8b 0d 84 16 0a 00           mov    rcx,QWORD PTR [rip+0xa1684]        # 0x3d5e60
3347dc  48 8d 15 8d 50 0c 00           lea    rdx,[rip+0xc508d]        # 0x3f9870
3347e3  83 c8 02                       or     eax,0x2
3347e6  45 33 c9                       xor    r9d,r9d
3347e9  89 05 71 50 0c 00              mov    DWORD PTR [rip+0xc5071],eax        # 0x3f9860
3347ef  e8 30 75 f9 ff                 call   0x2cbd24
3347f4  48 8b 0d 65 16 0a 00           mov    rcx,QWORD PTR [rip+0xa1665]        # 0x3d5e60
3347fb  48 8d 15 6e 50 0c 00           lea    rdx,[rip+0xc506e]        # 0x3f9870
334802  48 83 c4 28                    add    rsp,0x28
334806  e9 0d 92 fa ff                 jmp    0x2dda18

; pdata function 0x33480c..0x334893 unwind=0x3d2040
33480c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
334811  57                             push   rdi
334812  48 83 ec 20                    sub    rsp,0x20
334816  8b 05 d4 56 0c 00              mov    eax,DWORD PTR [rip+0xc56d4]        # 0x3f9ef0
33481c  48 8b da                       mov    rbx,rdx
33481f  48 8b f9                       mov    rdi,rcx
334822  a8 01                          test   al,0x1
334824  75 20                          jne    0x334846
334826  83 c8 01                       or     eax,0x1
334829  89 05 c1 56 0c 00              mov    DWORD PTR [rip+0xc56c1],eax        # 0x3f9ef0
33482f  e8 b0 f1 ff ff                 call   0x3339e4
334834  4c 8b c0                       mov    r8,rax
334837  48 89 05 aa 56 0c 00           mov    QWORD PTR [rip+0xc56aa],rax        # 0x3f9ee8
33483e  8b 05 ac 56 0c 00              mov    eax,DWORD PTR [rip+0xc56ac]        # 0x3f9ef0
334844  eb 07                          jmp    0x33484d
334846  4c 8b 05 9b 56 0c 00           mov    r8,QWORD PTR [rip+0xc569b]        # 0x3f9ee8
33484d  a8 02                          test   al,0x2
33484f  75 1f                          jne    0x334870
334851  48 8b 0d 08 16 0a 00           mov    rcx,QWORD PTR [rip+0xa1608]        # 0x3d5e60
334858  48 8d 15 a1 56 0c 00           lea    rdx,[rip+0xc56a1]        # 0x3f9f00
33485f  83 c8 02                       or     eax,0x2
334862  45 33 c9                       xor    r9d,r9d
334865  89 05 85 56 0c 00              mov    DWORD PTR [rip+0xc5685],eax        # 0x3f9ef0
33486b  e8 b4 74 f9 ff                 call   0x2cbd24
334870  48 8b 0d e9 15 0a 00           mov    rcx,QWORD PTR [rip+0xa15e9]        # 0x3d5e60
334877  48 8d 15 82 56 0c 00           lea    rdx,[rip+0xc5682]        # 0x3f9f00
33487e  4c 8b cb                       mov    r9,rbx
334881  4c 8b c7                       mov    r8,rdi
334884  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
334889  48 83 c4 20                    add    rsp,0x20
33488d  5f                             pop    rdi
33488e  e9 01 d8 f9 ff                 jmp    0x2d2094

; heuristic leaf/code range 0x3ca884..0x3ca8b2 unwind=0x0
3ca884  8a 02                          mov    al,BYTE PTR [rdx]
3ca886  45 33 c0                       xor    r8d,r8d
3ca889  38 01                          cmp    BYTE PTR [rcx],al
3ca88b  75 18                          jne    0x3ca8a5
3ca88d  4d 8d 0c 08                    lea    r9,[r8+rcx*1]
3ca891  41 80 39 00                    cmp    BYTE PTR [r9],0x0
3ca895  74 1b                          je     0x3ca8b2
3ca897  41 8a 44 10 01                 mov    al,BYTE PTR [r8+rdx*1+0x1]
3ca89c  49 ff c0                       inc    r8
3ca89f  41 38 41 01                    cmp    BYTE PTR [r9+0x1],al
3ca8a3  74 e8                          je     0x3ca88d
3ca8a5  41 0f be 04 08                 movsx  eax,BYTE PTR [r8+rcx*1]
3ca8aa  41 0f be 0c 10                 movsx  ecx,BYTE PTR [r8+rdx*1]
3ca8af  2b c1                          sub    eax,ecx
3ca8b1  c3                             ret

