; pdata function 0x333804..0x3338ad unwind=0x3d2140
333804  40 53                          rex push rbx
333806  55                             push   rbp
333807  56                             push   rsi
333808  57                             push   rdi
333809  48 83 ec 58                    sub    rsp,0x58
33380d  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
333812  e8 31 8c f9 ff                 call   0x2cc448
333817  48 bd a8 f6 9d 8c d0 e9 d1 09  movabs rbp,0x9d1e9d08c9df6a8
333821  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
333826  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
33382b  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
33382f  e8 ac 8b f9 ff                 call   0x2cc3e0
333834  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333839  e8 02 8d f9 ff                 call   0x2cc540
33383e  84 c0                          test   al,al
333840  74 44                          je     0x333886
333842  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333847  e8 30 b2 f9 ff                 call   0x2cea7c
33384c  8b d8                          mov    ebx,eax
33384e  85 c0                          test   eax,eax
333850  74 34                          je     0x333886
333852  48 8b cd                       mov    rcx,rbp
333855  e8 e2 a9 f9 ff                 call   0x2ce23c
33385a  48 8b cd                       mov    rcx,rbp
33385d  8b f8                          mov    edi,eax
33385f  e8 d4 a9 f9 ff                 call   0x2ce238
333864  8b f0                          mov    esi,eax
333866  ff cb                          dec    ebx
333868  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
33386d  8b d3                          mov    edx,ebx
33386f  e8 8c ae f9 ff                 call   0x2ce700
333874  48 8b c8                       mov    rcx,rax
333877  8b d7                          mov    edx,edi
333879  e8 7e 88 f9 ff                 call   0x2cc0fc
33387e  3b c6                          cmp    eax,esi
333880  74 1d                          je     0x33389f
333882  85 db                          test   ebx,ebx
333884  75 e0                          jne    0x333866
333886  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
33388b  e8 00 af f9 ff                 call   0x2ce790
333890  84 c0                          test   al,al
333892  75 8d                          jne    0x333821
333894  33 c0                          xor    eax,eax
333896  48 83 c4 58                    add    rsp,0x58
33389a  5f                             pop    rdi
33389b  5e                             pop    rsi
33389c  5d                             pop    rbp
33389d  5b                             pop    rbx
33389e  c3                             ret
33389f  8b d3                          mov    edx,ebx
3338a1  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3338a6  e8 ad 9e f9 ff                 call   0x2cd758
3338ab  eb e9                          jmp    0x333896

; pdata function 0x333600..0x3336a9 unwind=0x3d2140
333600  40 53                          rex push rbx
333602  55                             push   rbp
333603  56                             push   rsi
333604  57                             push   rdi
333605  48 83 ec 58                    sub    rsp,0x58
333609  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
33360e  e8 35 8e f9 ff                 call   0x2cc448
333613  48 bd 22 31 8b 75 ab 0d ef 04  movabs rbp,0x4ef0dab758b3122
33361d  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
333622  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333627  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
33362b  e8 b0 8d f9 ff                 call   0x2cc3e0
333630  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333635  e8 06 8f f9 ff                 call   0x2cc540
33363a  84 c0                          test   al,al
33363c  74 44                          je     0x333682
33363e  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333643  e8 34 b4 f9 ff                 call   0x2cea7c
333648  8b d8                          mov    ebx,eax
33364a  85 c0                          test   eax,eax
33364c  74 34                          je     0x333682
33364e  48 8b cd                       mov    rcx,rbp
333651  e8 e6 ab f9 ff                 call   0x2ce23c
333656  48 8b cd                       mov    rcx,rbp
333659  8b f8                          mov    edi,eax
33365b  e8 d8 ab f9 ff                 call   0x2ce238
333660  8b f0                          mov    esi,eax
333662  ff cb                          dec    ebx
333664  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333669  8b d3                          mov    edx,ebx
33366b  e8 90 b0 f9 ff                 call   0x2ce700
333670  48 8b c8                       mov    rcx,rax
333673  8b d7                          mov    edx,edi
333675  e8 82 8a f9 ff                 call   0x2cc0fc
33367a  3b c6                          cmp    eax,esi
33367c  74 1d                          je     0x33369b
33367e  85 db                          test   ebx,ebx
333680  75 e0                          jne    0x333662
333682  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
333687  e8 04 b1 f9 ff                 call   0x2ce790
33368c  84 c0                          test   al,al
33368e  75 8d                          jne    0x33361d
333690  33 c0                          xor    eax,eax
333692  48 83 c4 58                    add    rsp,0x58
333696  5f                             pop    rdi
333697  5e                             pop    rsi
333698  5d                             pop    rbp
333699  5b                             pop    rbx
33369a  c3                             ret
33369b  8b d3                          mov    edx,ebx
33369d  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3336a2  e8 b1 a0 f9 ff                 call   0x2cd758
3336a7  eb e9                          jmp    0x333692

; pdata function 0x3330a0..0x333149 unwind=0x3d2140
3330a0  40 53                          rex push rbx
3330a2  55                             push   rbp
3330a3  56                             push   rsi
3330a4  57                             push   rdi
3330a5  48 83 ec 58                    sub    rsp,0x58
3330a9  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
3330ae  e8 95 93 f9 ff                 call   0x2cc448
3330b3  48 bd 73 3f 99 84 e3 3d c4 e3  movabs rbp,0xe3c43de384993f73
3330bd  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
3330c2  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3330c7  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
3330cb  e8 10 93 f9 ff                 call   0x2cc3e0
3330d0  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3330d5  e8 66 94 f9 ff                 call   0x2cc540
3330da  84 c0                          test   al,al
3330dc  74 44                          je     0x333122
3330de  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3330e3  e8 94 b9 f9 ff                 call   0x2cea7c
3330e8  8b d8                          mov    ebx,eax
3330ea  85 c0                          test   eax,eax
3330ec  74 34                          je     0x333122
3330ee  48 8b cd                       mov    rcx,rbp
3330f1  e8 46 b1 f9 ff                 call   0x2ce23c
3330f6  48 8b cd                       mov    rcx,rbp
3330f9  8b f8                          mov    edi,eax
3330fb  e8 38 b1 f9 ff                 call   0x2ce238
333100  8b f0                          mov    esi,eax
333102  ff cb                          dec    ebx
333104  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333109  8b d3                          mov    edx,ebx
33310b  e8 f0 b5 f9 ff                 call   0x2ce700
333110  48 8b c8                       mov    rcx,rax
333113  8b d7                          mov    edx,edi
333115  e8 e2 8f f9 ff                 call   0x2cc0fc
33311a  3b c6                          cmp    eax,esi
33311c  74 1d                          je     0x33313b
33311e  85 db                          test   ebx,ebx
333120  75 e0                          jne    0x333102
333122  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
333127  e8 64 b6 f9 ff                 call   0x2ce790
33312c  84 c0                          test   al,al
33312e  75 8d                          jne    0x3330bd
333130  33 c0                          xor    eax,eax
333132  48 83 c4 58                    add    rsp,0x58
333136  5f                             pop    rdi
333137  5e                             pop    rsi
333138  5d                             pop    rbp
333139  5b                             pop    rbx
33313a  c3                             ret
33313b  8b d3                          mov    edx,ebx
33313d  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333142  e8 11 a6 f9 ff                 call   0x2cd758
333147  eb e9                          jmp    0x333132

; pdata function 0x333350..0x3333f9 unwind=0x3d2140
333350  40 53                          rex push rbx
333352  55                             push   rbp
333353  56                             push   rsi
333354  57                             push   rdi
333355  48 83 ec 58                    sub    rsp,0x58
333359  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
33335e  e8 e5 90 f9 ff                 call   0x2cc448
333363  48 bd 99 9f 01 82 a9 9b b9 8f  movabs rbp,0x8fb99ba982019f99
33336d  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
333372  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333377  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
33337b  e8 60 90 f9 ff                 call   0x2cc3e0
333380  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333385  e8 b6 91 f9 ff                 call   0x2cc540
33338a  84 c0                          test   al,al
33338c  74 44                          je     0x3333d2
33338e  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333393  e8 e4 b6 f9 ff                 call   0x2cea7c
333398  8b d8                          mov    ebx,eax
33339a  85 c0                          test   eax,eax
33339c  74 34                          je     0x3333d2
33339e  48 8b cd                       mov    rcx,rbp
3333a1  e8 96 ae f9 ff                 call   0x2ce23c
3333a6  48 8b cd                       mov    rcx,rbp
3333a9  8b f8                          mov    edi,eax
3333ab  e8 88 ae f9 ff                 call   0x2ce238
3333b0  8b f0                          mov    esi,eax
3333b2  ff cb                          dec    ebx
3333b4  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3333b9  8b d3                          mov    edx,ebx
3333bb  e8 40 b3 f9 ff                 call   0x2ce700
3333c0  48 8b c8                       mov    rcx,rax
3333c3  8b d7                          mov    edx,edi
3333c5  e8 32 8d f9 ff                 call   0x2cc0fc
3333ca  3b c6                          cmp    eax,esi
3333cc  74 1d                          je     0x3333eb
3333ce  85 db                          test   ebx,ebx
3333d0  75 e0                          jne    0x3333b2
3333d2  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
3333d7  e8 b4 b3 f9 ff                 call   0x2ce790
3333dc  84 c0                          test   al,al
3333de  75 8d                          jne    0x33336d
3333e0  33 c0                          xor    eax,eax
3333e2  48 83 c4 58                    add    rsp,0x58
3333e6  5f                             pop    rdi
3333e7  5e                             pop    rsi
3333e8  5d                             pop    rbp
3333e9  5b                             pop    rbx
3333ea  c3                             ret
3333eb  8b d3                          mov    edx,ebx
3333ed  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3333f2  e8 61 a3 f9 ff                 call   0x2cd758
3333f7  eb e9                          jmp    0x3333e2

; pdata function 0x33314c..0x3331f5 unwind=0x3d2140
33314c  40 53                          rex push rbx
33314e  55                             push   rbp
33314f  56                             push   rsi
333150  57                             push   rdi
333151  48 83 ec 58                    sub    rsp,0x58
333155  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
33315a  e8 e9 92 f9 ff                 call   0x2cc448
33315f  48 bd 46 ee 5d c9 ef 80 8f ae  movabs rbp,0xae8f80efc95dee46
333169  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
33316e  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333173  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
333177  e8 64 92 f9 ff                 call   0x2cc3e0
33317c  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333181  e8 ba 93 f9 ff                 call   0x2cc540
333186  84 c0                          test   al,al
333188  74 44                          je     0x3331ce
33318a  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
33318f  e8 e8 b8 f9 ff                 call   0x2cea7c
333194  8b d8                          mov    ebx,eax
333196  85 c0                          test   eax,eax
333198  74 34                          je     0x3331ce
33319a  48 8b cd                       mov    rcx,rbp
33319d  e8 9a b0 f9 ff                 call   0x2ce23c
3331a2  48 8b cd                       mov    rcx,rbp
3331a5  8b f8                          mov    edi,eax
3331a7  e8 8c b0 f9 ff                 call   0x2ce238
3331ac  8b f0                          mov    esi,eax
3331ae  ff cb                          dec    ebx
3331b0  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3331b5  8b d3                          mov    edx,ebx
3331b7  e8 44 b5 f9 ff                 call   0x2ce700
3331bc  48 8b c8                       mov    rcx,rax
3331bf  8b d7                          mov    edx,edi
3331c1  e8 36 8f f9 ff                 call   0x2cc0fc
3331c6  3b c6                          cmp    eax,esi
3331c8  74 1d                          je     0x3331e7
3331ca  85 db                          test   ebx,ebx
3331cc  75 e0                          jne    0x3331ae
3331ce  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
3331d3  e8 b8 b5 f9 ff                 call   0x2ce790
3331d8  84 c0                          test   al,al
3331da  75 8d                          jne    0x333169
3331dc  33 c0                          xor    eax,eax
3331de  48 83 c4 58                    add    rsp,0x58
3331e2  5f                             pop    rdi
3331e3  5e                             pop    rsi
3331e4  5d                             pop    rbp
3331e5  5b                             pop    rbx
3331e6  c3                             ret
3331e7  8b d3                          mov    edx,ebx
3331e9  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3331ee  e8 65 a5 f9 ff                 call   0x2cd758
3331f3  eb e9                          jmp    0x3331de

; pdata function 0x3338b0..0x333959 unwind=0x3d2140
3338b0  40 53                          rex push rbx
3338b2  55                             push   rbp
3338b3  56                             push   rsi
3338b4  57                             push   rdi
3338b5  48 83 ec 58                    sub    rsp,0x58
3338b9  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
3338be  e8 85 8b f9 ff                 call   0x2cc448
3338c3  48 bd a7 cd a2 ee 2c 3a b0 00  movabs rbp,0xb03a2ceea2cda7
3338cd  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
3338d2  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3338d7  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
3338db  e8 00 8b f9 ff                 call   0x2cc3e0
3338e0  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3338e5  e8 56 8c f9 ff                 call   0x2cc540
3338ea  84 c0                          test   al,al
3338ec  74 44                          je     0x333932
3338ee  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3338f3  e8 84 b1 f9 ff                 call   0x2cea7c
3338f8  8b d8                          mov    ebx,eax
3338fa  85 c0                          test   eax,eax
3338fc  74 34                          je     0x333932
3338fe  48 8b cd                       mov    rcx,rbp
333901  e8 36 a9 f9 ff                 call   0x2ce23c
333906  48 8b cd                       mov    rcx,rbp
333909  8b f8                          mov    edi,eax
33390b  e8 28 a9 f9 ff                 call   0x2ce238
333910  8b f0                          mov    esi,eax
333912  ff cb                          dec    ebx
333914  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333919  8b d3                          mov    edx,ebx
33391b  e8 e0 ad f9 ff                 call   0x2ce700
333920  48 8b c8                       mov    rcx,rax
333923  8b d7                          mov    edx,edi
333925  e8 d2 87 f9 ff                 call   0x2cc0fc
33392a  3b c6                          cmp    eax,esi
33392c  74 1d                          je     0x33394b
33392e  85 db                          test   ebx,ebx
333930  75 e0                          jne    0x333912
333932  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
333937  e8 54 ae f9 ff                 call   0x2ce790
33393c  84 c0                          test   al,al
33393e  75 8d                          jne    0x3338cd
333940  33 c0                          xor    eax,eax
333942  48 83 c4 58                    add    rsp,0x58
333946  5f                             pop    rdi
333947  5e                             pop    rsi
333948  5d                             pop    rbp
333949  5b                             pop    rbx
33394a  c3                             ret
33394b  8b d3                          mov    edx,ebx
33394d  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333952  e8 01 9e f9 ff                 call   0x2cd758
333957  eb e9                          jmp    0x333942

; pdata function 0x2ee43c..0x2ee4e5 unwind=0x3d2140
2ee43c  40 53                          rex push rbx
2ee43e  55                             push   rbp
2ee43f  56                             push   rsi
2ee440  57                             push   rdi
2ee441  48 83 ec 58                    sub    rsp,0x58
2ee445  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2ee44a  e8 f9 df fd ff                 call   0x2cc448
2ee44f  48 bd f7 c5 bf f4 d0 78 c1 53  movabs rbp,0x53c178d0f4bfc5f7
2ee459  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
2ee45e  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2ee463  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
2ee467  e8 74 df fd ff                 call   0x2cc3e0
2ee46c  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2ee471  e8 ca e0 fd ff                 call   0x2cc540
2ee476  84 c0                          test   al,al
2ee478  74 44                          je     0x2ee4be
2ee47a  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2ee47f  e8 f8 05 fe ff                 call   0x2cea7c
2ee484  8b d8                          mov    ebx,eax
2ee486  85 c0                          test   eax,eax
2ee488  74 34                          je     0x2ee4be
2ee48a  48 8b cd                       mov    rcx,rbp
2ee48d  e8 aa fd fd ff                 call   0x2ce23c
2ee492  48 8b cd                       mov    rcx,rbp
2ee495  8b f8                          mov    edi,eax
2ee497  e8 9c fd fd ff                 call   0x2ce238
2ee49c  8b f0                          mov    esi,eax
2ee49e  ff cb                          dec    ebx
2ee4a0  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2ee4a5  8b d3                          mov    edx,ebx
2ee4a7  e8 54 02 fe ff                 call   0x2ce700
2ee4ac  48 8b c8                       mov    rcx,rax
2ee4af  8b d7                          mov    edx,edi
2ee4b1  e8 46 dc fd ff                 call   0x2cc0fc
2ee4b6  3b c6                          cmp    eax,esi
2ee4b8  74 1d                          je     0x2ee4d7
2ee4ba  85 db                          test   ebx,ebx
2ee4bc  75 e0                          jne    0x2ee49e
2ee4be  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2ee4c3  e8 c8 02 fe ff                 call   0x2ce790
2ee4c8  84 c0                          test   al,al
2ee4ca  75 8d                          jne    0x2ee459
2ee4cc  33 c0                          xor    eax,eax
2ee4ce  48 83 c4 58                    add    rsp,0x58
2ee4d2  5f                             pop    rdi
2ee4d3  5e                             pop    rsi
2ee4d4  5d                             pop    rbp
2ee4d5  5b                             pop    rbx
2ee4d6  c3                             ret
2ee4d7  8b d3                          mov    edx,ebx
2ee4d9  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2ee4de  e8 75 f2 fd ff                 call   0x2cd758
2ee4e3  eb e9                          jmp    0x2ee4ce

; heuristic leaf/code range 0x3344a0..0x3344a8 unwind=0x0
3344a0  48 8d 05 11 63 0c 00           lea    rax,[rip+0xc6311]        # 0x3fa7b8
3344a7  c3                             ret

; heuristic leaf/code range 0x334488..0x334490 unwind=0x0
334488  48 8d 05 f9 62 0c 00           lea    rax,[rip+0xc62f9]        # 0x3fa788
33448f  c3                             ret

; heuristic leaf/code range 0x334448..0x334450 unwind=0x0
334448  48 8d 05 41 63 0c 00           lea    rax,[rip+0xc6341]        # 0x3fa790
33444f  c3                             ret

; heuristic leaf/code range 0x334468..0x334470 unwind=0x0
334468  48 8d 05 f9 62 0c 00           lea    rax,[rip+0xc62f9]        # 0x3fa768
33446f  c3                             ret

; heuristic leaf/code range 0x334450..0x334458 unwind=0x0
334450  48 8d 05 09 63 0c 00           lea    rax,[rip+0xc6309]        # 0x3fa760
334457  c3                             ret

; heuristic leaf/code range 0x3344a8..0x3344b0 unwind=0x0
3344a8  48 8d 05 01 63 0c 00           lea    rax,[rip+0xc6301]        # 0x3fa7b0
3344af  c3                             ret

; heuristic leaf/code range 0x31a87c..0x31a884 unwind=0x0
31a87c  48 8d 05 e5 60 0d 00           lea    rax,[rip+0xd60e5]        # 0x3f0968
31a883  c3                             ret

