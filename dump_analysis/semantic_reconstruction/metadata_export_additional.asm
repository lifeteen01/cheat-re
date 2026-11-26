; pdata function 0x2cbef8..0x2cbfa1 unwind=0x3d2140
2cbef8  40 53                          rex push rbx
2cbefa  55                             push   rbp
2cbefb  56                             push   rsi
2cbefc  57                             push   rdi
2cbefd  48 83 ec 58                    sub    rsp,0x58
2cbf01  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2cbf06  e8 3d 05 00 00                 call   0x2cc448
2cbf0b  48 bd 15 1d 60 0e 56 46 2e ca  movabs rbp,0xca2e46560e601d15
2cbf15  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
2cbf1a  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cbf1f  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
2cbf23  e8 b8 04 00 00                 call   0x2cc3e0
2cbf28  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cbf2d  e8 0e 06 00 00                 call   0x2cc540
2cbf32  84 c0                          test   al,al
2cbf34  74 44                          je     0x2cbf7a
2cbf36  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cbf3b  e8 3c 2b 00 00                 call   0x2cea7c
2cbf40  8b d8                          mov    ebx,eax
2cbf42  85 c0                          test   eax,eax
2cbf44  74 34                          je     0x2cbf7a
2cbf46  48 8b cd                       mov    rcx,rbp
2cbf49  e8 ee 22 00 00                 call   0x2ce23c
2cbf4e  48 8b cd                       mov    rcx,rbp
2cbf51  8b f8                          mov    edi,eax
2cbf53  e8 e0 22 00 00                 call   0x2ce238
2cbf58  8b f0                          mov    esi,eax
2cbf5a  ff cb                          dec    ebx
2cbf5c  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cbf61  8b d3                          mov    edx,ebx
2cbf63  e8 98 27 00 00                 call   0x2ce700
2cbf68  48 8b c8                       mov    rcx,rax
2cbf6b  8b d7                          mov    edx,edi
2cbf6d  e8 8a 01 00 00                 call   0x2cc0fc
2cbf72  3b c6                          cmp    eax,esi
2cbf74  74 1d                          je     0x2cbf93
2cbf76  85 db                          test   ebx,ebx
2cbf78  75 e0                          jne    0x2cbf5a
2cbf7a  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2cbf7f  e8 0c 28 00 00                 call   0x2ce790
2cbf84  84 c0                          test   al,al
2cbf86  75 8d                          jne    0x2cbf15
2cbf88  33 c0                          xor    eax,eax
2cbf8a  48 83 c4 58                    add    rsp,0x58
2cbf8e  5f                             pop    rdi
2cbf8f  5e                             pop    rsi
2cbf90  5d                             pop    rbp
2cbf91  5b                             pop    rbx
2cbf92  c3                             ret
2cbf93  8b d3                          mov    edx,ebx
2cbf95  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cbf9a  e8 b9 17 00 00                 call   0x2cd758
2cbf9f  eb e9                          jmp    0x2cbf8a

; pdata function 0x2cbfa4..0x2cc04d unwind=0x3d2140
2cbfa4  40 53                          rex push rbx
2cbfa6  55                             push   rbp
2cbfa7  56                             push   rsi
2cbfa8  57                             push   rdi
2cbfa9  48 83 ec 58                    sub    rsp,0x58
2cbfad  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2cbfb2  e8 91 04 00 00                 call   0x2cc448
2cbfb7  48 bd ef 9a 7c 8d 55 3d c6 ab  movabs rbp,0xabc63d558d7c9aef
2cbfc1  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
2cbfc6  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cbfcb  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
2cbfcf  e8 0c 04 00 00                 call   0x2cc3e0
2cbfd4  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cbfd9  e8 62 05 00 00                 call   0x2cc540
2cbfde  84 c0                          test   al,al
2cbfe0  74 44                          je     0x2cc026
2cbfe2  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cbfe7  e8 90 2a 00 00                 call   0x2cea7c
2cbfec  8b d8                          mov    ebx,eax
2cbfee  85 c0                          test   eax,eax
2cbff0  74 34                          je     0x2cc026
2cbff2  48 8b cd                       mov    rcx,rbp
2cbff5  e8 42 22 00 00                 call   0x2ce23c
2cbffa  48 8b cd                       mov    rcx,rbp
2cbffd  8b f8                          mov    edi,eax
2cbfff  e8 34 22 00 00                 call   0x2ce238
2cc004  8b f0                          mov    esi,eax
2cc006  ff cb                          dec    ebx
2cc008  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cc00d  8b d3                          mov    edx,ebx
2cc00f  e8 ec 26 00 00                 call   0x2ce700
2cc014  48 8b c8                       mov    rcx,rax
2cc017  8b d7                          mov    edx,edi
2cc019  e8 de 00 00 00                 call   0x2cc0fc
2cc01e  3b c6                          cmp    eax,esi
2cc020  74 1d                          je     0x2cc03f
2cc022  85 db                          test   ebx,ebx
2cc024  75 e0                          jne    0x2cc006
2cc026  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2cc02b  e8 60 27 00 00                 call   0x2ce790
2cc030  84 c0                          test   al,al
2cc032  75 8d                          jne    0x2cbfc1
2cc034  33 c0                          xor    eax,eax
2cc036  48 83 c4 58                    add    rsp,0x58
2cc03a  5f                             pop    rdi
2cc03b  5e                             pop    rsi
2cc03c  5d                             pop    rbp
2cc03d  5b                             pop    rbx
2cc03e  c3                             ret
2cc03f  8b d3                          mov    edx,ebx
2cc041  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cc046  e8 0d 17 00 00                 call   0x2cd758
2cc04b  eb e9                          jmp    0x2cc036

; pdata function 0x2cc050..0x2cc0f9 unwind=0x3d2140
2cc050  40 53                          rex push rbx
2cc052  55                             push   rbp
2cc053  56                             push   rsi
2cc054  57                             push   rdi
2cc055  48 83 ec 58                    sub    rsp,0x58
2cc059  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2cc05e  e8 e5 03 00 00                 call   0x2cc448
2cc063  48 bd 9e 81 22 bf fb 9f c9 91  movabs rbp,0x91c99ffbbf22819e
2cc06d  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
2cc072  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cc077  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
2cc07b  e8 60 03 00 00                 call   0x2cc3e0
2cc080  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cc085  e8 b6 04 00 00                 call   0x2cc540
2cc08a  84 c0                          test   al,al
2cc08c  74 44                          je     0x2cc0d2
2cc08e  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cc093  e8 e4 29 00 00                 call   0x2cea7c
2cc098  8b d8                          mov    ebx,eax
2cc09a  85 c0                          test   eax,eax
2cc09c  74 34                          je     0x2cc0d2
2cc09e  48 8b cd                       mov    rcx,rbp
2cc0a1  e8 96 21 00 00                 call   0x2ce23c
2cc0a6  48 8b cd                       mov    rcx,rbp
2cc0a9  8b f8                          mov    edi,eax
2cc0ab  e8 88 21 00 00                 call   0x2ce238
2cc0b0  8b f0                          mov    esi,eax
2cc0b2  ff cb                          dec    ebx
2cc0b4  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cc0b9  8b d3                          mov    edx,ebx
2cc0bb  e8 40 26 00 00                 call   0x2ce700
2cc0c0  48 8b c8                       mov    rcx,rax
2cc0c3  8b d7                          mov    edx,edi
2cc0c5  e8 32 00 00 00                 call   0x2cc0fc
2cc0ca  3b c6                          cmp    eax,esi
2cc0cc  74 1d                          je     0x2cc0eb
2cc0ce  85 db                          test   ebx,ebx
2cc0d0  75 e0                          jne    0x2cc0b2
2cc0d2  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2cc0d7  e8 b4 26 00 00                 call   0x2ce790
2cc0dc  84 c0                          test   al,al
2cc0de  75 8d                          jne    0x2cc06d
2cc0e0  33 c0                          xor    eax,eax
2cc0e2  48 83 c4 58                    add    rsp,0x58
2cc0e6  5f                             pop    rdi
2cc0e7  5e                             pop    rsi
2cc0e8  5d                             pop    rbp
2cc0e9  5b                             pop    rbx
2cc0ea  c3                             ret
2cc0eb  8b d3                          mov    edx,ebx
2cc0ed  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2cc0f2  e8 61 16 00 00                 call   0x2cd758
2cc0f7  eb e9                          jmp    0x2cc0e2

; pdata function 0x2decb8..0x2ded61 unwind=0x3d2140
2decb8  40 53                          rex push rbx
2decba  55                             push   rbp
2decbb  56                             push   rsi
2decbc  57                             push   rdi
2decbd  48 83 ec 58                    sub    rsp,0x58
2decc1  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2decc6  e8 7d d7 fe ff                 call   0x2cc448
2deccb  48 bd 1c 39 e1 72 ef c8 82 53  movabs rbp,0x5382c8ef72e1391c
2decd5  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
2decda  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2decdf  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
2dece3  e8 f8 d6 fe ff                 call   0x2cc3e0
2dece8  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2deced  e8 4e d8 fe ff                 call   0x2cc540
2decf2  84 c0                          test   al,al
2decf4  74 44                          je     0x2ded3a
2decf6  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2decfb  e8 7c fd fe ff                 call   0x2cea7c
2ded00  8b d8                          mov    ebx,eax
2ded02  85 c0                          test   eax,eax
2ded04  74 34                          je     0x2ded3a
2ded06  48 8b cd                       mov    rcx,rbp
2ded09  e8 2e f5 fe ff                 call   0x2ce23c
2ded0e  48 8b cd                       mov    rcx,rbp
2ded11  8b f8                          mov    edi,eax
2ded13  e8 20 f5 fe ff                 call   0x2ce238
2ded18  8b f0                          mov    esi,eax
2ded1a  ff cb                          dec    ebx
2ded1c  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2ded21  8b d3                          mov    edx,ebx
2ded23  e8 d8 f9 fe ff                 call   0x2ce700
2ded28  48 8b c8                       mov    rcx,rax
2ded2b  8b d7                          mov    edx,edi
2ded2d  e8 ca d3 fe ff                 call   0x2cc0fc
2ded32  3b c6                          cmp    eax,esi
2ded34  74 1d                          je     0x2ded53
2ded36  85 db                          test   ebx,ebx
2ded38  75 e0                          jne    0x2ded1a
2ded3a  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2ded3f  e8 4c fa fe ff                 call   0x2ce790
2ded44  84 c0                          test   al,al
2ded46  75 8d                          jne    0x2decd5
2ded48  33 c0                          xor    eax,eax
2ded4a  48 83 c4 58                    add    rsp,0x58
2ded4e  5f                             pop    rdi
2ded4f  5e                             pop    rsi
2ded50  5d                             pop    rbp
2ded51  5b                             pop    rbx
2ded52  c3                             ret
2ded53  8b d3                          mov    edx,ebx
2ded55  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2ded5a  e8 f9 e9 fe ff                 call   0x2cd758
2ded5f  eb e9                          jmp    0x2ded4a

; heuristic leaf/code range 0x2cc164..0x2cc17c unwind=0x0
2cc164  e9 27 f8 ff ff                 jmp    0x2cb990
2cc169  cc                             int3
2cc16a  cc                             int3
2cc16b  cc                             int3
2cc16c  e9 43 f8 ff ff                 jmp    0x2cb9b4
2cc171  cc                             int3
2cc172  cc                             int3
2cc173  cc                             int3
2cc174  e9 5f f8 ff ff                 jmp    0x2cb9d8
2cc179  cc                             int3
2cc17a  cc                             int3
2cc17b  cc                             int3

; heuristic leaf/code range 0x2cc16c..0x2cc17c unwind=0x0
2cc16c  e9 43 f8 ff ff                 jmp    0x2cb9b4
2cc171  cc                             int3
2cc172  cc                             int3
2cc173  cc                             int3
2cc174  e9 5f f8 ff ff                 jmp    0x2cb9d8
2cc179  cc                             int3
2cc17a  cc                             int3
2cc17b  cc                             int3

; heuristic leaf/code range 0x2cc174..0x2cc17c unwind=0x0
2cc174  e9 5f f8 ff ff                 jmp    0x2cb9d8
2cc179  cc                             int3
2cc17a  cc                             int3
2cc17b  cc                             int3

; heuristic leaf/code range 0x2dee4c..0x2dee5c unwind=0x0
2dee4c  e9 ff f9 ff ff                 jmp    0x2de850
2dee51  cc                             int3
2dee52  cc                             int3
2dee53  cc                             int3
2dee54  45 33 c9                       xor    r9d,r9d
2dee57  e9 00 00 00 00                 jmp    0x2dee5c

